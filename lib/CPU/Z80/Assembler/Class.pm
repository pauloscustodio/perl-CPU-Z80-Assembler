# $Id$

package CPU::Z80::Assembler::Class;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Class - Plugin replacement to Class::Class

=head1 DESCRIPTION

This module is a temporary plugin replacement to L<Class::Class>,
until RT #42710 (Calling DESTROY on parent classes which might not be defined)
is fixed.

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_01';

use base 'Class::Class';

sub DESTROY ($) {}
sub Pragmatic::DESTROY ($) {}

#------------------------------------------------------------------------------

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
