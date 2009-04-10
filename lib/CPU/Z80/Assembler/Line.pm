# $Id$

# One line of text retrieved from the input

package CPU::Z80::Assembler::Line;

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_01';

use Data::Dump 'dump';

warn "replace by []";
use Class::Struct 'CPU::Z80::Assembler::Line::Data' => {
		text	=> '$',		# text from the line
		line_nr	=> '$',		# line within ...
		file	=> '$',		# ... the file
};
use base qw( CPU::Z80::Assembler::Line::Data Clone );

#------------------------------------------------------------------------------
sub as_string { my($self) = @_;
	my @x = ($self->text, $self->line_nr, $self->file);
	return dump(\@x);	
}
use overload '""' => \&as_string;

#------------------------------------------------------------------------------
sub is_equal { my($self, $other) = @_;
	no warnings 'uninitialized';
	return $self->text    eq $other->text    &&
		   $self->line_nr == $other->line_nr &&
		   $self->file    eq $other->file;
}
use overload '==' => \&is_equal;

#------------------------------------------------------------------------------
sub is_different { my($self, $other) = @_;
	return ! $self->is_equal($other);
}
use overload '!=' => \&is_different;

#------------------------------------------------------------------------------
sub fatal_error { my($self, $error_msg) = @_;
	die $self->_error_msg("error", $error_msg);
}

#------------------------------------------------------------------------------
sub warning { my($self, $error_msg) = @_;
	warn $self->_error_msg("warning", $error_msg);
}

#------------------------------------------------------------------------------
# error message for fatal_error() and warning()
sub _error_msg { my($self, $type, $error_msg) = @_;
	defined($error_msg) or $error_msg = ""; 
	chomp($error_msg);
	
	my $text = $self->text; 
	defined($text) or $text = ""; 
	chomp($text);
	
	my $file = $self->file;
	my $line_nr = $self->line_nr;
	
	my $file_pos =
		(defined($file) ? $file : $line_nr ? "input" : "").
		($line_nr ? "($line_nr)" : "");
	$file_pos and $file_pos .= " : ";
	
	return ($text ne "" ? "\t$text\n" : "").
		$file_pos.
		$type.
		($error_msg ? ": $error_msg" : "").
		"\n";
}

1;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Line - One line of text retrieved from the input

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Line;
  my $line1 = CPU::Z80::Assembler::Line->new(
                  text    => $text,
                  line_nr => $line_nr,
                  file    => $file );
  my $line2 = $line->clone;
  if ($line1 == $line2) {...}
  if ($line1 != $line2) {...}
  $line1->fatal_error($message);
  $line2->warning($message);

=head1 DESCRIPTION

This module defines the data structure to represent one line of input text to be assembled.
The object is created by L<Class::Struct> and contains
the actual text from the line and the file name and line number where
the text was retrieved. This information is used for error messages.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Struct>.

=head2 text

Get/set the text - text read from the file.

=head2 line_nr

Get/set the line_nr - line where text was read from.

=head2 file

Get/set the file - name of the file where the text was read from.

=head2 clone

Creates an identical copy as a new object.

=head2 as_string

Converts to string, for debug purposes. Overloads the double-quote operator.

=head2 is_equal

Compares two line objects. Overloads the '==' operator.

=head2 is_different

Compares two line objects. Overloads the '!=' operator.

=head2 fatal_error

Dies with an error message pointing at the line object as "FILE(LINE) : error ...".

=head2 warning

Warns an error message pointing at the line object as "FILE(LINE) : warning ...".

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<Class::Struct>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut
