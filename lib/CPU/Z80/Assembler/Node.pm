# $Id$

# Base class for one node of the parse tree

package CPU::Z80::Assembler::Parser::Node;

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_01';

use CPU::Z80::Assembler::Line;

use Class::Struct 'CPU::Z80::Assembler::Parser::Node::Data' => {
		children	=> '@',		# list of children of this node
		line 		=> 'CPU::Z80::Assembler::Line',
								# line where tokens found
};
use base qw( CPU::Z80::Assembler::Parser::Node::Data );

1;


#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Parser::Node - Base class for one node of the parse tree

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Parser::Node;
  my $node = CPU::Z80::Assembler::Parser::Node->new(
					children => \@children,
                    line  => CPU::Z80::Assembler::Line->new(...));

=head1 DESCRIPTION

This module defines the base class for the nodes of the parse tree.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Struct>.

=head2 children

Get/set the children node list.

=head2 line

Get/set the line - text, file name and line number where the token was read.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<Class::Struct>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut
