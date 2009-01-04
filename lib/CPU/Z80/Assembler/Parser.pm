# $Id$

# Join assembly tokens into instructions

package CPU::Z80::Assembler::Parser;

use strict;
use warnings;
use 5.008;

use Data::Dump 'dump';
use HOP::Stream ':all';

use CPU::Z80::Assembler::ParserTable;

our $VERSION = '2.03';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80parser eval_expr);

#------------------------------------------------------------------------------
# LOOKUP-TABLES
# 	The order is important: an instruction is only loaded if not yet defined
#	Lookup table of all assembly instructions recognized by the assembler
#	Sequence is indexed by a sequence of token labels, followed by "" as the 
#	last key. The value is a fucntion with the signature:
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
				my $name = $token->[1];				# label name

				# skip optional ':'
				while (($token = head($input)) &&
						$token->[0] eq ':') {
					drop($input);
				}

				# if next token is '=', get the expression
				# else label is '$'
				$token = head($input);
				if ($token && $token->[0] eq '=') {
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
				my($label, $value) = @$token;
				if (exists $table->{$label}) {
					$table = $table->{$label};				# advance table
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
					die "Cannot parse at $label\n";
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
		my $label = $token->[0];
		if (exists($STMT_END{$label}) || 
			($label eq "," && $parens == 0)) {
			last;
		}
		elsif ($label eq '(' || $label eq '[') {
			$parens++;
		}
		elsif ($label eq ')' || $label eq ']') {
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
		if ($size == 1 && $token->[0] eq 'STRING' && ! tail($expr)) {
													# expression is a single string -> decode bytes
			my $text = substr($token->[1], 1, length($token->[1]) - 2);
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
		if (exists($STMT_END{$token->[0]})) {
			drop($input);
			last;									
		}
		elsif ($token->[0] eq ',') {				# list continues
			drop($input);
		}
		else {
			die "Unexpected ",$token->[0]," in list\n";
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
		my($label, $value) = @$token;
		if ($label eq "NUMBER") {
			push(@code, $value);
		}
		elsif ($label eq "NAME") {
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
		elsif ($label eq "STRING") {
			$value = substr($value, 1, length($value)-2) . "\0\0";
			my @bytes = map {ord($_)} split(//, $value);	
			my $value = $bytes[0] + ($bytes[1] << 8);
			push(@code, $value);
		}
		else {
			die "Expression '$label' cannot be evaluated\n" if $label =~ /^[a-z_]\w*/;	
			push(@code, $label);
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
	if (!defined($token) || exists($STMT_END{$token->[0]})) {
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
#	The result stream contains the LINE tokens returned by _line_stream() 
#   followed by all the assembled instructions in the given line
# 	An instruction is defined as:
#	[ "OPCODE", byte, byte ]	        --  for a 2 byte instruction without 
#										 	expressions
#   [ "OPCODE", byte, [type, expr] ]	-- 	for a 2 byte instruction
#											type = "sb" for signed byte, 
#											"ub" for unsigned byte
#   [ "OPCODE", byte, [type, expr], [] ]
#                                       -- 	for a 3 byte instruction
#											type = "w" for word
#	Other tokens returned:
#	["LINE", "The complete line to be parsed\n", 1, "file.asm"]
#	["ORG", address]
#	["LABEL", name]						-- define label at current location
#	["LABEL", name, expr]				-- define label as expression
sub z80parser {
	my($input) = @_;
	my $line;									# last LINE token
	
	return iterator_to_stream sub {
		for(;;) {
			my $token = head($input);
			defined($token) or return undef;	# end of file
			if (exists $STMT_END{$token->[0]}) {
				drop($input);
				if ($token->[0] eq "LINE") {
					$line = $token;
					return $line;
				}
			}
			else {
				($token, $input) = eval { _lookup_table($input) };
				if ($@ || !$token) {
					chomp($@);
					die("\n",
						(defined($line) ? 
							"\t".$line->[1]."\n".
							($line->[3] ? $line->[3] : "IN").
							"(".$line->[2].") : " : ""),
						"Error: ",
						($@ ? $@ : "cannot parse"),
						"\n");
				}
				elsif (@$token) {					# not []
					return $token;
				}
			}
		}
	};
}

1;
