# $Id$

# Instruction parser for the Z80 assembler

package CPU::Z80::Assembler::Parser;

use strict;
use warnings;
use 5.008;

use Data::Dump 'dump';
use HOP::Stream qw( drop head iterator_to_stream list_to_stream tail );

use CPU::Z80::Assembler::ParserTable;

our $VERSION = '2.05_01';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80parser eval_expr);

#------------------------------------------------------------------------------
# LOOKUP-TABLES
# 	The order is important: an instruction is only loaded if not yet defined
#	Lookup table of all assembly instructions recognized by the assembler
#	Sequence is indexed by a sequence of token labels, followed by "" as the 
#	last key. The value is a function with the signature:
#		($parsed, $input) = f($input, $start, @expr)
#	$input is the current stream position after the recognized tokens
#	$start is the stream position at the start of the instruction
#	@expr are all the expressions parsed, as streams.
#	Functions die with error message on parse failure, error will be caught
#	to explain where the error occured.
my %STMT_END; 	for ("\n", "LINE", ":") { $STMT_END{$_}++ }
my $TABLE = 	CPU::Z80::Assembler::ParserTable::_parser_table();

#------------------------------------------------------------------------------
# Pseudo-instructions
_add_table('org', 'EXPR', 'END',
			sub {
				my($input, $start, $expr) = @_;
				return (["ORG", $expr], $input);
			});

_add_table('defb', 					
			sub { 
				my($input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, 1);
				return (["OPCODE", @$bytes], $input);
			});

_add_table('defw', 					
			sub { 
				my($input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, 2);
				return (["OPCODE", @$bytes], $input);
			});

_add_table('deft', 					
			sub { 
				my($input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, 1);
				return (["OPCODE", @$bytes], $input);
			});

_add_table('defm', 					
			sub { 
				my($input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, 1);
				return (["OPCODE", @$bytes], $input);
			});

_add_table('NAME',					
			sub {
				my($input, $start) = @_;
				my $token = head($start) or die;	# must be 'NAME'
				my $name = $token->value;				# label name

				# skip optional ':'
				while (($token = head($input)) &&
						$token->type eq ':') {
					drop($input);
				}

				# if next token is '=', get the expression
				# else label is '$'
				$token = head($input);
				if ($token && $token->type eq '=') {
					drop($input);					# skip '='
					(my $expr, $input) = _parse_expr($input);
					$input = _check_end($input);
					return (["LABEL", $name, $expr], $input);
				}
				else {
					return (["LABEL", $name], $input);
				}
			});

#dump($TABLE);

#------------------------------------------------------------------------------
# _add_table(@tokens, sub{})
#	Creates a new table entry, only if not yet defined
sub _add_table {
	my(@tokens) = @_;
	my $sub = pop(@tokens);
	return if grep {!defined($_)} @tokens;
	my $code = '$TABLE->'.join('', map {'{'.dump($_).'}'} @tokens, "").' ||= $sub';
	eval $code; $@ and die "$code: $@";
}

#------------------------------------------------------------------------------
# ($parsed, $input) = _lookup_table($input)
# 	Lookup current token from $TABLE
# 	If found, call sub to convert args to token, return token and new stream pointer
# 	If not found, or error parsing an expression, die
sub _lookup_table {
	my($input) = @_;

	my $start = $input;
	my @expr;
	my $table = $TABLE;
	for(;;) {										# each token
		if (exists $table->{""}) {					# end of entry
			return $table->{""}->($input, $start, @expr);
		}
		else {
			my $token = head($input);
			if ($token) {
				my($type, $value) = ($token->type, $token->value);
				if (exists $table->{$type}) {
					$table = $table->{$type};				# advance table
					drop($input);							# advance stream
				}
				elsif (exists $table->{"EXPR"}) {			# parse expression
					$table = $table->{"EXPR"};				# advance table
					(my $expr, $input) = _parse_expr($input);
					push(@expr, $expr);
				}
				elsif (exists $table->{"OPTEXPR"}) {		# parse expression
					$table = $table->{"OPTEXPR"};			# advance table
					(my $expr, $input) = _parse_expr($input, 1); # optional
					push(@expr, $expr);
				}
				elsif (exists $table->{"CEXPR"}) {			# constant expression
					$table = $table->{"CEXPR"};				# advance table
					(my $expr, $input) = _parse_expr($input);
					my $value = eval_expr($expr, 0, {});
					push(@expr, $value);
				}
				elsif (exists $table->{"END"}) {			# check end of statement
					$table = $table->{"END"};				# advance table
					$input = _check_end($input);
				}
				else {
					die "Cannot parse at $type\n";
				}
			}
			else {											# at end of file
				if (exists $table->{"END"}) {				# check end of statement
					$table = $table->{"END"};				# advance table
				}
				else {
					die "Unexpected end of file\n";
				}
			}
		}
	}
}

#------------------------------------------------------------------------------
# ($expr, $input) = _parse_expr($input, $optional)
#	Parse an expression from $input, advance $input to first token after 
#	expression. Returns stream with a copy of the tokens composing the expression.
# 	Dies if the expression cannot be parsed.
#	If $optional, then return 0 if expression cannot be parsed
sub _parse_expr {
	my($input, $optional) = @_;
	my @tokens;
	
	my $parens = 0;
	while (my $token = head($input)) {
		my $type = $token->type;
		if (exists($STMT_END{$type}) || 
			($type eq "," && $parens == 0)) {
			last;
		}
		elsif ($type eq '(' || $type eq '[') {
			$parens++;
		}
		elsif ($type eq ')' || $type eq ']') {
			last if $parens < 1;
			$parens--;
		}
		push(@tokens, $token);
		drop($input);
	}
	die "Unbalanced parentheses\n" if $parens > 0;
	if (! @tokens) {
		die "Expression not found\n" unless $optional;	
		@tokens = ([NUMBER => 0]);
	}
	
	# advance input, return expression
	my $expr = list_to_stream(@tokens);
	return ($expr, $input);
}

#------------------------------------------------------------------------------
# ([@bytes], $input) = _parse_def($input, $size)
#	Parse a DEFB, DEFW or DEFT instruction, $size is 1 for DEFB, DEFT and 2 for DEFW
#	Return @bytes to be used directly in the OPCODE token, i.e. one element per byte,
#	[] for an empty placeholder, [type, expr] for an expression
sub _parse_def {
	my($input, $size) = @_;
	
	my @bytes;
	my $expr;
	my $token;
	for(;;) {
		# get expression
		eval { ($expr, $input) = _parse_expr($input) };
		die $@ if $@;								# expression not found
	
		$token = head($expr) or die;				# token must exist
		if ($size == 1 && $token->type eq 'STRING' && ! tail($expr)) {
													# expression is a single string -> decode bytes
			my $text = substr($token->value, 1, length($token->value) - 2);
													# remove quotes
			my @text = map {ord($_)} split(//, $text);
			push(@bytes, @text);
		}
		elsif ($size == 1) {
			push(@bytes, ["ub", $expr]);
		}
		elsif ($size == 2) {
			push(@bytes, ["w", $expr], []);
		}
		else {
			die;									# not reached
		}
		
		# if ",", get next expression; if END, finish; else error
		$token = head($input) or last;				# end of list
		if (exists($STMT_END{$token->type})) {
			drop($input);
			last;									
		}
		elsif ($token->type eq ',') {				# list continues
			drop($input);
		}
		else {
			die "Unexpected ",$token->type," in list\n";
		}
	}
	return (\@bytes, $input);
}

#------------------------------------------------------------------------------
# $value = eval_expr($expr, $address, $symbol_table)
#	Evaluate an expression as returned by _parse_expr(), given the current
#	address ($) and the hashref labels => values.
# 	Dies if the expression cannot be evaluated, or label undefined.
sub eval_expr {
	my($expr, $address, $symbol_table, $seen) = @_;
	
	$seen ||= {};								# to detect circular references
	$symbol_table->{'$'} = $address;			# update '$' value
	my @code;
	while (my $token = drop($expr)) {
		my($type, $value) = ($token->type, $token->value);
		if ($type eq "NUMBER") {
			push(@code, $value);
		}
		elsif ($type eq "NAME") {
			my $expr = $symbol_table->{$value};
			my $expr_value;
			
			die "Symbol $value not defined" unless defined($expr);
			if (ref($expr)) {					# compute sub-expression first
				die "Circular reference computing expression\n" if $seen->{$value}++;
				$expr_value = eval_expr($expr, $address, $symbol_table, $seen);
			}
			else {
				$expr_value = $expr;
			}				
			push(@code, $expr_value);
		}
		elsif ($type eq "STRING") {
			$value = substr($value, 1, length($value)-2) . "\0\0";
			my @bytes = map {ord($_)} split(//, $value);	
			my $value = $bytes[0] + ($bytes[1] << 8);
			push(@code, $value);
		}
		else {
			die "Expression '$type' cannot be evaluated\n" if $type =~ /^[a-z_]\w*/;	
			push(@code, $type);
		}
	}
	my $code = "0 + ( ".join(" ", @code)." )";
	my $value = eval $code;
	if ($@) {
		chomp($@);
		die "Expression '$code' cannot be evaluated: $@\n";
	}
	return $value;
}

#------------------------------------------------------------------------------
# $input = _check_end($input)
# asserts that the current token is the end of statement,
# dies if not; advances input pointer
sub _check_end {
	my($input) = @_;
	
	my $token = head($input);
	if (!defined($token) || exists($STMT_END{$token->type})) {
		drop($input);
	}
	else {
		die "End of statement expected\n";
	}
	return $input;
}
			
#------------------------------------------------------------------------------
# z80parser(INPUT)
# 	INPUT is a stream of tokens, as returned by z80lexer()
#	The result stream contains the assembled instructions as
#	CPI::Z80::Assembler::Token, with the following types:
#	[ "OPCODE", byte, byte ]	        --  for a 2 byte instruction without 
#										 	expressions
#   [ "OPCODE", byte, [type, expr] ]	-- 	for a 2 byte instruction
#											type = "sb" for signed byte, 
#											"ub" for unsigned byte
#   [ "OPCODE", byte, [type, expr], [] ]
#                                       -- 	for a 3 byte instruction
#											type = "w" for word
#	Other tokens returned:
#	["ORG", address]
#	["LABEL", name]						-- define label at current location
#	["LABEL", name, expr]				-- define label as expression
sub z80parser {
	my($input) = @_;
	
	return iterator_to_stream sub {
		for(;;) {
			my $token = head($input);
			defined($token) or return undef;	# end of file
			if (exists $STMT_END{$token->type}) {
				drop($input);
			}
			else {
				my $err_line = $token->line or die;
				($token, $input) = eval { _lookup_table($input) };
				if ($@ || !$token) {
					$err_line->fatal_error($@ ? $@ : "cannot parse");
				}
				elsif (@$token) {					# not []
					return $token;
				}
			}
		}
	};
}

1;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Parser - Instruction parser for the Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Parser;
    use HOP::Stream 'drop';

    my $stream = z80parser($z80lexer);
    my $value = eval_expr($expr, $address, \%symbol_table)

=head1 DESCRIPTION

This module transforms the sequence of tokens retrieved from L<CPU::Z80::Assembler::Lexer>
into a sequence of decoded assembly instructions.

=head1 EXPORTS

By default the 'z80parser' and 'eval_expr' subroutines are exported.
To disable that, do:

    use CPU::Z80::Assembler::Parser ();

=head1 FUNCTIONS

=head2 z80parser

This takes as parameter a L<HOP::Stream> as returned by z80lexer, and returns a L<HOP::Stream>
with the tokes described below.

=head2 eval_expr

This takes as parameter an expression as a L<HOP::Stream> of tokens, the current address
of the expression (to evaluate the '$' expression) and a reference to a hash with 
all defined symbols. Each symbol may be either a scalar value, or an expression.
The eval_expr function evaluates recursively all the sub-expressions and returns 
the value. It dies if any used label is not defined, or if there is a circular
reference.

=head1 TOKENS

The following tokens are returned by the stream:

    ["org", address]

Translation of an ORG instruction with the address argument.

    ["LABEL", name]

Defines the label with the given name at the current location.

    ["LABEL", name, expr]

Defines the label with the given name as the result of evaluating the given
expression. The expression is only evaluated on pass 2, after all labels are
defined.

An expression is a HOP::Stream containing all the tokens of the expression.

    ["OPCODE", byte, [type, expr] ]

Defines an assembled opcode with the list of bytes to load to the object code.

The bytes that need to be computed as the result of an expression evaluation
are returned as a pair [type, expression], where type is:

=over 4

=item "sb"

for signed byte;

=item "ub" 

for unsigned byte; 

=item "w" 

for word. When a "w" expression is used, the "OPCODE" token includes an empty 
array ref, so that the size of the instruction 
matches the size of the token array minus 1.

=back

An expression is a L<HOP::Stream> containing all the tokens of the expression.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<HOP::Stream>
L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Lexer>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut
