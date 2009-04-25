# $Id$

package CPU::Z80::Assembler::Segment;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Segment - Represents one segment of assembly opcodes

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_02';

use base 'CPU::Z80::Assembler::Node';
our %MEMBERS = (
			name	=> '$',		# name of the segment
			address	=> '$',		# start address of segment
);

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Segment;
  my $segment = CPU::Z80::Assembler::Segment->new(
					name => $name,
					address => 0,
					child => [$opcode, ...]);
  $segment->link;
  my $size = $segment->size;
  my $bytes = $segment->bytes(\%symbols);

=head1 DESCRIPTION

This module defines the class that represents one continuous segment of assembly 
instruction opcodes L<CPU::Z80::Assembler::Opcode>.

This class extends the class L<CPU::Z80::Assembler::Node>.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Class>.

=head2 child

Each child is one L<CPU::Z80::Assembler::Opcode> object.

=head2 name

Get/set of segment name.

=head2 address

Get/set of base address of the segment.

=cut

#------------------------------------------------------------------------------

=head2 link

  $segment->link;

Allocate addresses for all child opcodes, starting at the segment C<address>, if
defined by a "org" instruction, or at 0.

=cut

#------------------------------------------------------------------------------

sub link { my($self) = @_;
	my $address = defined($self->address) ? $self->address : 0;
	$self->address($address);
	
	for my $opcode (@{$self->child}) {
		$opcode->address($address);
		$address += $opcode->size;
	}
}

#------------------------------------------------------------------------------

=head2 size

  my $size = $segment->size;

Returns the size of the segment. This value is filled by the C<link>
method, the function dies if the size is not yet defined.

=cut

#------------------------------------------------------------------------------

sub size { my($self) = @_;
	defined($self->address) or die "size not computed yet";
	
	return 0 if scalar(@{$self->child}) == 0;
	
	my $last_opcode = $self->child->[-1];
	defined($last_opcode->address) or die "size not computed yet";
	
	return $last_opcode->address + $last_opcode->size - $self->address;
}

#------------------------------------------------------------------------------

=head2 bytes

  $segment->bytes(\%symbols);

Computes the bytes of each opcode, and concatenates them together. Returns the
complete object code.

=cut

#------------------------------------------------------------------------------

sub bytes { my($self, $symbols) = @_;
	my $bytes = "";
	my $address = $self->address;
	$symbols->{org} = $address; 	# NOTE: is the org label realy needed? Of which segment?
	for my $opcode (@{$self->child}) {
		$opcode->address($address);
		$bytes .= $opcode->bytes($address, $symbols);
		$address += $opcode->size;
	}
	return $bytes;
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<CPU::Z80::Assembler::Opcode>
L<CPU::Z80::Assembler::Node>
L<Class::Class>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
