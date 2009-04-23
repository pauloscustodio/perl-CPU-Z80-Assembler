# $Id$

# Instruction parser for the Z80 assembler

package CPU::Z80::Assembler::Parser;

use strict;
use warnings;
use 5.008;

use Data::Dump 'dump';
use HOP::Stream qw( drop head iterator_to_stream list_to_stream tail );

our $VERSION = '2.05_01';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80parser eval_expr statement_end argument_end);

#dump($TABLE);

#------------------------------------------------------------------------------
# _add_table(@tokens, sub{})
#	Creates a new table entry, only if not yet defined
sub _add_table {
	my(@tokens) = @_;
	my $sub = pop(@tokens);
	return if grep {!defined($_)} @tokens;
	my $code = '$TABLE->'.join('', map {'{'.dump($_).'}'} @tokens, "").' ||= $sub';
#	eval $code; $@ and die "$code: $@";
}

#------------------------------------------------------------------------------
sub statement_end {	return $_[0] eq "\n" || $_[0] eq ":" }
sub argument_end  {	return $_[0] eq "\n" || $_[0] eq ":" || $_[0] eq "," }
#------------------------------------------------------------------------------

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
  if (statement_end($type)) {...}
  if (argument_end($type)) {...}

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

=head2 statement_end

Returns true if the given token type is one of the accepted tokens to end a statement
(new-line or colon).

=head2 argument_end

Returns true if the given token type is one of the accepted tokens to end a statement
argument (new-line, comma or colon).

head1 TOKENS

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
