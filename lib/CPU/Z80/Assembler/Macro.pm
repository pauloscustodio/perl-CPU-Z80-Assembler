# $Id$

# Macro pre-processor for the Z80 assembler

package CPU::Z80::Assembler::Macro;

use strict;
use warnings;
use 5.008;

use CPU::Z80::Assembler::Token;
use CPU::Z80::Assembler::Parser;
use HOP::Stream qw( append drop head list_to_stream node promise );

our $VERSION = '2.05_03';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80macro);

#------------------------------------------------------------------------------
use Class::Struct 'CPU::Z80::Assembler::MacroDef' => [
	name	=> '$',			# macro name
	params 	=> '@',			# list of macro parameter names
	locals	=> '%',			# list of macro local labels
	tokens	=> '$',			# stream of macro tokens
];

#------------------------------------------------------------------------------
# ($macro, $input) = _define_macro($input)
#	Parse macro definition, return the macro definition and contents
sub _define_macro {
	my($input) = @_;
	my $macro = CPU::Z80::Assembler::MacroDef->new;
	
	# get macro name
	my $token;
	($token = head($input)) && $token->type eq 'NAME'
		or die "Macro name needed\n";
	$macro->name( $token->value );
	drop($input);
	
	# get macro parameters
	while (($token = head($input)) && $token->type eq 'NAME') {
		push(@{$macro->params}, $token->value);		# store param name
		drop($input);
		if (($token = head($input)) && $token->type eq ',') {
			drop($input);							# eat comma
		}
	}

	# skip {
	my $opened_brace;
	($token = head($input)) 
		or die "Macro body needed\n";	
	if ($token->type eq '{') {
		drop($input);
		$opened_brace++;
	}
	elsif ($token->type =~ /^[:\n]$/) {
		# OK, macro body follows on next line
	}
	else {
		die "Unexpected '",$token->type,"'\n";
	}
		
	# retrieve tokens
	my @macro_tokens;
	my @line_tokens;
	my $parens = 0;
	my $last_stmt_end = 1;							# last statement finished

	while ($token = head($input)) {
		my $type = $token->type;
		if ($type eq '{') {
			$parens++;
			push(@macro_tokens, $token);
			drop($input);
		}
		elsif ($type eq 'endm') {
			drop($input);							# skip delimiter
			last;
		}
		elsif ($type eq '}') {
			if ($parens > 0) {
				$parens--;
				push(@macro_tokens, $token);
				drop($input);
			}
			else {
				drop($input) if $opened_brace;		# skip delimiter
				last;
			}
		}
		elsif ($type eq "NAME" && $last_stmt_end) {
			$macro->locals->{$token->value}++;
			push(@macro_tokens, $token);
			drop($input);
		}
		else {
			push(@macro_tokens, $token);
			push(@line_tokens,  $token) if $type eq "\n";	# save new-lines for listing
			drop($input);
		}
		$last_stmt_end = ($token->type =~ /^[:\n]$/);
	}
	die "Macro body not finished\n" unless $token;
	die "Unmatched braces\n" if $parens != 0;
	
	# macro contents and line tokens as streams
	$macro->tokens( list_to_stream(@macro_tokens) );
	my $line_stream = list_to_stream(@line_tokens);

	# prepend all seen LINE tokens in input
	$input = append( $line_stream, $input );

	return ($macro, $input);
}

#------------------------------------------------------------------------------
# $stream = _expand_macro($macro, $args, $instance, $line)
#	Return a stream that returns the tokens of the expanded macro
# 	Renames defined labels
# 	Locates all tokens on the line of the macro invocation
sub _expand_macro {
	my($macro, $args, $instance, $line) = @_;

	# compute parameter expansion
	my @params = @{$macro->params};
	my @args = @$args;
	my %params;
	for (0 .. $#params) {
		$params{shift(@params)} = shift(@args);
	}
	die "Too many arguments to macro\n" if @args;
	
	# compute token expansion
	my $expand_stream;
	my $input = $macro->tokens;
	$expand_stream = promise {
		for(;;) {
			my $token = drop($input) or return undef;		# end of expansion
			$token = $token->clone;							# make a copy
			$token->line($line);							# set the line of invocation
			if ($token->type eq 'NAME') {
				my $name = $token->value;
				if (exists $params{$name}) {
					$input = append($params{$name}, $input);
					# get next token
				}
				elsif (exists $macro->locals->{$name}) {
					$token->value("_macro_".$instance."_".$name);
					return node($token, promise { $expand_stream->() });
				}
				else {
					return node($token, promise { $expand_stream->() });
				}
			}
			else {
				return node($token, promise { $expand_stream->() });
			}
		}
	};
	return $expand_stream->();
}

#------------------------------------------------------------------------------
# ($sequence, $input) = _extract_argument($input)
#	Extract the sequence of input tokens from $input into $sequence up to and
#	not including the delimiter token
sub _extract_argument {
	my($input) = @_;
	my $token;	

	# retrieve tokens
	my @sequence;
	my $parens = 0;
	my $opened_brace;
	while ($token = head($input)) {
		my $type = $token->type;
		if ($type =~ /^[:\n,]$/ && $parens == 0) {
			last;
		}
		elsif ($type eq '{') {
			$parens++;
			push(@sequence, $token) if $opened_brace++;
			drop($input);
		}
		elsif ($type eq '}') {
			if ($parens > 0) {
				$parens--;
				push(@sequence, $token) if --$opened_brace;
				drop($input);
			}
			else {
				drop($input) if $opened_brace;		# skip delimiter
				last;
			}
		}
		else {
			push(@sequence, $token);
			drop($input);
		}
	}
	die "Unmatched braces\n" if $parens != 0;

	my $sequence = list_to_stream(@sequence);
	return ($sequence, $input);
}

#------------------------------------------------------------------------------
# ($args, $input) = _macro_arguments($input)
#	Get the comma-delimited tokens into the @$args array of streams
sub _macro_arguments {
	my($input) = @_;
	my @args;
	for(;;) {
		my $token = head($input) or last;				# end of line
		last if $token->type =~ /^[:\n]$/;				# end of args
		
		(my $arg, $input) = _extract_argument($input);
		push(@args, $arg);
		
		if (($token = head($input)) && $token->type eq ',') {
			drop($input);							# eat comma
		}
		else {
			last;
		}
	}
	return (\@args, $input);
}

#------------------------------------------------------------------------------
# z80macro(INPUT)
# 	INPUT is a HOP::Stream of lexical tokens, as returned by _lexer_stream()
#	The result HOP::Stream does not contain macro definitions, and contains 
#	all the expanded macro instantiations.
#	The macro syntax is:
#		MACRO name param1, param2, param3 {
#			macro statements
#		}
#	or:
#		MACRO name param1, param2, param3
#			macro statements
#		ENDM
# 	The macro call is coded as:
#		name value1,value2,value3
#	which is expanded to all the macro statements, with param* replaced by value*
sub z80macro {
	my($input) = @_;
	
	my $instance;
	my %macros;
	
	my $expand_promise;					# to be used recursively
	$expand_promise = sub {
		for(;;) {
			my $token = drop($input) or return undef;
			my $type = $token->type;
			if ($type eq 'macro') {
				(my $macro, $input) = _define_macro($input);
				my $name = $macro->name;
				die "Error: macro $name redefined\n" if exists $macros{$name};
				$macros{$name} = $macro;
				# get next token
			}
			elsif ($type eq 'NAME' && exists $macros{$token->value}) {
				(my $args, $input) = _macro_arguments($input);
				my $expanded = _expand_macro($macros{$token->value},
											$args,
											++$instance,
											$token->line);
				$input = append($expanded, $input);
				# get next token
			}
			else {
				return node($token, promise { $expand_promise->() });
			}
		}
	};
	return $expand_promise->();
}

1;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Macro - Macro pre-processor for the Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Macro;
    use HOP::Stream;

    my $pp_stream = z80macro($token_stream);

=head1 DESCRIPTION

This module provides a macro pre-processor to parse macro definition statements,
and expand macro calls in the token stream. Both the input and output streams
are L<HOP::Stream> objects returning sequences of tokens as defined 
in L<CPU::Z80::Assembler::Lexer>.

=head1 EXPORTS

By default the 'z80macro' subroutine is exported.  To disable that, do:

    use CPU::Z80::Assembler::Macro ();

=head1 FUNCTIONS

=head2 z80macro

Takes a L<HOP::Stream> object as input. The stream returns lexical tokens on each 
HOP::Stream::drop() call, as defined in L<CPU::Z80::Assembler::Lexer>.

The output stream contains the same input tokens, except that macro definitions are
slurped and not output, and macro invocations on the input are replaced by the
macro expansion on the output. During the macro expansion, the formal parameters of 
the definition are replaced by the actual arguments, and the defined labels are
renamed to a unique name to allow multiple expansions of the same macro.

=head1 SYNTAX

=head2 Macros

Macros are created thus.  This example creates an "instruction" called MAGIC
that takes two parameters:

    MACRO MAGIC param1, param2 {
        LD param1, 0
        BIT param2, L
        label = 0x1234
        ... more real instructions go here.
    }

Within the macro, param1, param2 etc will be replaced with whatever
parameters you pass to the macro.  So, for example, this:

    MAGIC HL, 2

Is the same as:

    LD HL, 0
    BIT 2, L
    ...

Any labels that you define inside a macro are local to that macro.  Actually
they're not but they get renamed to _macro_NN_... so that they
effectively *are* local.

There is an alternative syntax, for compatibility with other assemblers, with exactly the
same effect.

    MACRO MAGIC param1 param2
        LD param1, 0
        BIT param2, L
        label = 0x1234
        ... more real instructions go here.
    ENDM

A ',' can be passed as part of a macro argument, by enclosing the arguments between {braces}.

    MACRO PAIR x {
        LD x
    }
    PAIR {A,B}

expands to:

    LD A,B

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<HOP::Stream>
L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Lexer>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

