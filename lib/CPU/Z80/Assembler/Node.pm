# $Id$

package CPU::Z80::Assembler::Node;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Node - Base class for one node of the parse tree

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_01';

use CPU::Z80::Assembler::Line;

use base 'CPU::Z80::Assembler::Class';
our %MEMBERS = (
		child	=> '@',				# list of children of this node
		line 	=> 'CPU::Z80::Assembler::Line',
									# line where tokens found
);

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Node;
  my $node = CPU::Z80::Assembler::Node->new(
					child => \@child,
                    line  => CPU::Z80::Assembler::Line->new(...));

=head1 DESCRIPTION

This module defines the base class for the nodes of the parse tree.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Class>.

=head2 child

Get/set the child node list.

=head2 line

Get/set the line - text, file name and line number where the token was read.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<Class::Class>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
