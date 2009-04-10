# $Id$

# One token retrieved from the input

package CPU::Z80::Assembler::Token;

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_01';

use Data::Dump 'dump';
use CPU::Z80::Assembler::Line;

warn "replace by []";
use Class::Struct 'CPU::Z80::Assembler::Token::Data' => {
		type 	=> '$',		# type of token
		value 	=> '$',		# token attribute
		line 	=> 'CPU::Z80::Assembler::Line',
							# line where token found
};
use base qw( CPU::Z80::Assembler::Token::Data Clone );

#------------------------------------------------------------------------------
sub as_string { my($self) = @_;
	return "[".dump($self->type).", ".dump($self->value).", ".
			(defined($self->line) ? $self->line->as_string : "undef")."]";	
}
use overload '""' => \&as_string;

1;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Token - One token retrieved from the input

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Token;
    my $token = CPU::Z80::Assembler::Token->new(
                    type  => $type,
                    value => $value,
                    line  => CPU::Z80::Assembler::Line->new(...));
    my $token2 = $token->clone;

=head1 DESCRIPTION

This module defines the data structure to represent one token of input text to be assembled,
as retrived by the lexer.
The object is created by L<Class::Struct> and contains
the token type and value, and the input line where it was found in the input.
The input line is used for error messages.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Struct>.

=head2 type

Get/set the type - type of token.

=head2 value

Get/set the value - value of token.

=head2 line

Get/set the line - text, file name and line number where the token was read.

=head2 clone

Creates an identical copy as a new object.

=head2 as_string

Converts to string, for debug purposes. Overloads the double-quote operator.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<Class::Struct>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut
