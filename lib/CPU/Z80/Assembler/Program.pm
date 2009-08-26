# $Id$

package CPU::Z80::Assembler::Program;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Program - Represents one assembly program

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.006;

our $VERSION = '2.05_05';

use CPU::Z80::Assembler::Parser;
use CPU::Z80::Assembler::Segment;
use CPU::Z80::Assembler::Expr;
use Data::Dump 'dump';

use Class::Struct 'CPU::Z80::Assembler::Program::Data' => [
		child			=> '@',		# list of children of this node
		symbols 		=> '%',		# map name => Node with evaluate() method
		segment_map		=> '%',		# map name => segment in child
		_cur_segment	=> 'CPU::Z80::Assembler::Segment',
									# segment we are now adding code to
		macros			=> '%',		# list of defined macros
];

use base 'CPU::Z80::Assembler::Program::Data';

sub new { my($class, @init) = @_;
	my $self = $class->SUPER::new(@init);
	$self->cur_segment("");			# define new empty segment
	return $self;
}

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Program;
  my $program = CPU::Z80::Assembler::Program->new(
					symbols => {});
  $program->parse($input);
  $program->link;
  my $bytes = $program->bytes;

=head1 DESCRIPTION

This module defines the class that represents one assembly program composed of
L<CPU::Z80::Assembler::Segment>.

This class extends the class L<CPU::Z80::Assembler::Node>.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Struct>.

=head2 child

Each child is one L<CPU::Z80::Assembler::Segment> object, in the order found in the
program.

=head2 symbols

Hash of all symbols defined in the program. The key is the symbol name, and 
the value is either a scalar for a constant, a L<CPU::Z80::Assembler::Expr> for 
an expression, or a L<CPU::Z80::Assembler::Opcode> for a label.

=head2 segment_map

Hash to map segment names to the segment objects in the child array.

=head2 macros

Hash of macro names to L<CPU::Z80::Assembler::Macro> objects for all defined macros.

=cut

#------------------------------------------------------------------------------

=head2 cur_segment

  my $segment = $program->cur_segment();
  my $segment = $program->cur_segment($segment_name);

Get/Set the current segment with the given name.

The C<cur_segment> is changed to point to the segment with the given name. 
If it does not exist, it is created and added to the child array.

=cut

#------------------------------------------------------------------------------

sub cur_segment { my($self, $segment_name) = @_;
	if (defined($segment_name)) {
		# set
		if (! exists $self->segment_map->{$segment_name} ) {
			# new segment
			my $segment = CPU::Z80::Assembler::Segment->new(name => $segment_name);
			push(@{$self->child}, $segment);
			$self->segment_map->{$segment_name} = $segment;
		}
		$self->_cur_segment($self->segment_map->{$segment_name});
		return $self->_cur_segment;
	}
	else {
		# get
		return $self->_cur_segment;
	}
}

#------------------------------------------------------------------------------

=head2 parse

  $program->parse($input);

Parse the assembly program and collect the opcodes into the object. $input is
a stream of tokens as retrieved by L<CPU::Z80::Assembler::Lexer> C<z80lexer>.

=cut

#------------------------------------------------------------------------------

sub parse { my($self, $input) = @_;
	z80parser($input, $self);
}

#------------------------------------------------------------------------------

=head2 org

  $program->org($address, $token);

Changes the start address of the current segment. It is a fatal error to try to 
change the address after some opcodes have been compiled.

$token is the location of the ORG instruction used for error messages.

=cut

#------------------------------------------------------------------------------

sub org { my($self, $address, $token) = @_;
	$self->cur_segment->org($address, $token);
}

#------------------------------------------------------------------------------

=head2 add

  $program->add(@opcodes);

Adds the opcodes to the current segment.

=cut

#------------------------------------------------------------------------------

sub add { my($self, @opcodes) = @_;
	$self->cur_segment->add(@opcodes);
}

#------------------------------------------------------------------------------

=head2 link

  $program->link;

Resolve all labels and build object code.

=cut

#------------------------------------------------------------------------------

sub link { my($self) = @_;
	my $address = 0;
	for my $segment (@{$self->child}) {
		defined($segment->address) or $segment->address($address);
		$segment->link;
		$address += $segment->size;
	}
}

#------------------------------------------------------------------------------

=head2 bytes

  $bytes = $program->bytes($list_output);

Computes the bytes of each segment, and concatenates them together. Returns the
complete object code.

$list_output is an optional L<CPU::Z80::Assembler::List> object to dump the assembly
listing to.

=cut

#------------------------------------------------------------------------------

sub bytes { my($self, $list_output) = @_;
	my $bytes = "";
	for my $segment (@{$self->child}) {
		$bytes .= $segment->bytes($self->symbols, $list_output);
	}
	return $bytes;
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Segment>
L<CPU::Z80::Assembler::Parser>
L<Class::Struct>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
