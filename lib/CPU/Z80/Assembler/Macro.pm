# $Id$

# Implement the z80masm macro processor

package CPU::Z80::Assembler::Macro;

use strict;
use warnings;
use 5.008;

use HOP::Stream ':all';

our $VERSION = '2.01_02';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80pp);

my %STMT_END; 	for ("\n", "LINE", ":"     ) { $STMT_END{$_}++ }
my %ARG_END; 	for ("\n", "LINE", ":", ",") { $ARG_END{$_}++ }

#------------------------------------------------------------------------------
use Class::Struct 'CPU::Z80::Assembler::MacroDef' => [
	name	=> '$',			# macro name
	params 	=> '@',			# list of macro parameter names
	locals	=> '%',			# list of macro local labels
	tokens	=> '$',			# stream of macro tokens
];

#------------------------------------------------------------------------------
# ($macro, $input) = _define_macro($input, $last_line)
#	Parse macro definition, return the macro definition and contents
#	Leave the $input at a stream containing all seen LINE tokens during the 
#	macro definition
sub _define_macro {
	my($input, $last_line) = @_;
	my $macro = CPU::Z80::Assembler::MacroDef->new;
	
	# get macro name
	my $token;
	($token = head($input)) && $token->[0] eq 'NAME'
		or die "Macro name needed\n";
	$macro->name( $token->[1] );
	drop($input);
	
	# get macro parameters
	while (($token = head($input)) && $token->[0] eq 'NAME') {
		push(@{$macro->params}, $token->[1]);		# store param name
		drop($input);
		if (($token = head($input)) && $token->[0] eq ',') {
			drop($input);							# eat comma
		}
	}

	# skip {
	my $opened_brace;
	($token = head($input)) 
		or die "Macro body needed\n";	
	if ($token->[0] eq '{') {
		drop($input);
		$opened_brace++;
	}
	elsif (exists($STMT_END{$token->[0]})) {
		# OK, macro body follows on next line
	}
	else {
		die "Unexpected '",$token->[0],"'\n";
	}
		
	# retrieve tokens
	my @macro_tokens;
	my @line_tokens;
	my $parens = 0;
	my $last_stmt_end = 1;							# last statement finished
	
	# include LINE of macro definition
	push(@macro_tokens, $last_line) if $last_line;		
	
	while ($token = head($input)) {
		my $label = $token->[0];
		if ($label eq "LINE") {
			push(@macro_tokens, $token);
			push(@line_tokens, $token);
			drop($input);
		}
		elsif ($label eq '{') {
			$parens++;
			push(@macro_tokens, $token);
			drop($input);
		}
		elsif ($label eq 'endm') {
			drop($input);							# skip delimiter
			last;
		}
		elsif ($label eq '}') {
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
		elsif ($label eq "NAME" && $last_stmt_end) {
			$macro->locals->{$token->[1]}++;
			push(@macro_tokens, $token);
			drop($input);
		}
		else {
			push(@macro_tokens, $token);
			drop($input);
		}
		$last_stmt_end = exists($STMT_END{$token->[0]});
	}
	die "Macro body not finished\n" unless $token;
	die "Unmatched braces\n" if $parens != 0;
	
	# macro contents and line tokens as streams
	$macro->tokens( list_to_stream(@macro_tokens) );
	my $line_stream =  list_to_stream(@line_tokens);

	# prepend all seen LINE tokens in input
	$input = append( $line_stream, $input );
	
	return ($macro, $input);
}

#------------------------------------------------------------------------------
# $stream = _expand_macro($macro, $args, $instance)
#	Return a stream that returns the tokens of the expanded macro
# 	Renames defined labels
sub _expand_macro {
	my($macro, $args, $instance) = @_;

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
			if ($token->[0] eq 'NAME') {
				my $name = $token->[1];
				if (exists $params{$name}) {
					$input = append($params{$name}, $input);
					# get next token
				}
				elsif (exists $macro->locals->{$name}) {
					my $new_token = ['NAME', "_macro_".$instance."_".$name];
					return node($new_token, promise { $expand_stream->() });
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
		my $label = $token->[0];
		if (exists($ARG_END{$label}) && $parens == 0) {
			last;
		}
		elsif ($label eq '{') {
			$parens++;
			push(@sequence, $token) if $opened_brace++;
			drop($input);
		}
		elsif ($label eq '}') {
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
		my $token = head($input) or last;			# end of line
		last if exists($STMT_END{$token->[0]});		# end of args
		
		(my $arg, $input) = _extract_argument($input);
		push(@args, $arg);
		
		if (($token = head($input)) && $token->[0] eq ',') {
			drop($input);							# eat comma
		}
		else {
			last;
		}
	}
	return (\@args, $input);
}

#------------------------------------------------------------------------------
# z80pp(INPUT)
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
sub z80pp {
	my($input) = @_;
	
	my $instance;
	my %macros;
	my $last_line;						# last LINE token received
	
	my $expand_promise;					# to be used recursively
	$expand_promise = sub {
		for(;;) {
			my $token = drop($input) or return undef;
			my $label = $token->[0];
			if ($label eq "LINE") {
				$last_line = $token;	# save for later
				return node($token, promise { $expand_promise->() });
			}
			elsif ($label eq 'macro') {
				(my $macro, $input) = _define_macro($input, $last_line);
				my $name = $macro->name;
				die "Error: macro $name redefined\n" if exists $macros{$name};
				$macros{$name} = $macro;
				# get next token
			}
			elsif ($label eq 'NAME' && exists $macros{$token->[1]}) {
				(my $args, $input) = _macro_arguments($input);
				my $expanded = _expand_macro($macros{$token->[1]}, $args, ++$instance);
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
