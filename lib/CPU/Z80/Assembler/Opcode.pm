# $Id$

package CPU::Z80::Assembler::Opcode;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Opcode - Represents one assembly expression to be computed at link time

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.006;

our $VERSION = '2.05_05';

use Class::Struct (
		child	=> '@',		# list of children of this node
		line 	=> 'CPU::Z80::Assembler::Line',
							# line where tokens found
		address	=> '$',		# address where loaded
);

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Opcode;
  my $opcode = CPU::Z80::Assembler::Opcode->new(
					address => 0,
					line => $line,
					child => [byte, byte, ["type", $expr]]);
  my $value = $opcode->evaluate;
  $bytes = $opcode->bytes($address, \%symbol_table);
  my $size = $opcode->size;

=head1 DESCRIPTION

This module defines the class that represents one assembly instruction to be
added to the object code. The instruction can contain references to
L<CPU::Z80::Assembler::Expr> expressions that are computed at link time.

This class extends the class L<CPU::Z80::Assembler::Node>.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object.

=head2 address

Address where this opcode is loaded, computed at link time.

=head2 child

The number of children is the number of bytes stored in the object code for
this instruction.

Each child is either a scalar containing the byte value to be added to the object code,
or a L<CPU::Z80::Assembler::Expr> expression to be evaluated at link time. In case
of a word expression, then a special undef value is used as a placeholder to keep
the C<child> list the correct size.

=head2 line

Get/set the line - text, file name and line number where the token was read.

=cut

#------------------------------------------------------------------------------

=head2 evaluate

  $value = $opcode->evaluate

Called when opcode is referred to by a label, returns the opcode address.

=cut

#------------------------------------------------------------------------------

sub evaluate { my($self) = @_;
	return $self->address;
}

#------------------------------------------------------------------------------

=head2 bytes

  $bytes = $opcode->bytes($address, \%symbol_table);

Computes all the expressions in C<child> and returns the bytes string
with the result object code.

=cut

#------------------------------------------------------------------------------

sub bytes { my($self, $address, $symbol_table) = @_;
	my $bytes = "";
	for my $expr (@{$self->child}) {
		if (! defined($expr)) {
			# skip undefined values - used as placeholder for the second byte of a word
		}
		elsif (ref($expr)) {
			$bytes .= $expr->bytes($address, $symbol_table);
		}
		else {
			$bytes .= pack("C", $expr & 0xFF);
		}
	}
	return $bytes;
}

#------------------------------------------------------------------------------

=head2 size

  $size = $opcode->size;

Return the number of bytes that this opcode will generate.

=cut

#------------------------------------------------------------------------------

sub size { my($self) = @_;
	return scalar(@{$self->child});
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<CPU::Z80::Assembler::ode>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;

