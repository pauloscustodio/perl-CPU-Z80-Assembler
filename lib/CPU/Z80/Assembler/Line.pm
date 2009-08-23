# $Id$

package CPU::Z80::Assembler::Line;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Line - One line of text retrieved from the input

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_04';

use Data::Dump 'dump';

#use Class::Struct (
#		text	=> '$',		# text from the line
#		line_nr	=> '$',		# line within ...
#		file	=> '$',		# ... the file
#);
# Faster than Class::Struct
sub new { my($class, %args) = @_;
	return bless [$args{text}, $args{line_nr}, $args{file}], $class;
}
sub text    { defined($_[1]) ? $_[0][0] = $_[1] : $_[0][0] }
sub line_nr { defined($_[1]) ? $_[0][1] = $_[1] : $_[0][1] }
sub file    { defined($_[1]) ? $_[0][2] = $_[1] : $_[0][2] }

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Line;
  my $line1 = CPU::Z80::Assembler::Line->new(
                  text    => $text,
                  line_nr => $line_nr,
                  file    => $file );
  my $line2 = $line->clone;
  if ($line1 == $line2) {...}
  if ($line1 != $line2) {...}
  $line1->error($message);
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

=cut

#------------------------------------------------------------------------------

=head2 clone

Creates an identical copy as a new object.

=cut

#------------------------------------------------------------------------------

sub clone {
	my($self) = @_;
	return ref($self)->new(
		text 	=> $self->text,
		line_nr	=> $self->line_nr,
		file	=> $self->file);
}

#------------------------------------------------------------------------------

=head2 as_string

  print $self->as_string;
  print "$self";

Converts to string, for debug purposes. Overloads the double-quote operator.

=cut

#------------------------------------------------------------------------------

sub as_string { my($self) = @_;
	my @x = ($self->text, $self->line_nr, $self->file);
	return dump(\@x);	
}

use overload
	'""' 	=> \&as_string,
	'bool'	=> sub {$_[0]},		# avoid as_string to be called in bool and numeric
	'0+'	=> sub {$_[0]};		# context

#------------------------------------------------------------------------------

=head2 is_equal

  if ($self == $other) { ... }

Compares two line objects. Overloads the '==' operator.

=cut

sub is_equal { my($self, $other) = @_;
	no warnings 'uninitialized';
	return $self->text    eq $other->text    &&
		   $self->line_nr == $other->line_nr &&
		   $self->file    eq $other->file;
}

use overload '==' => \&is_equal;

#------------------------------------------------------------------------------

=head2 is_different

  if ($self != $other) { ... }

Compares two line objects. Overloads the '!=' operator.

=cut

#------------------------------------------------------------------------------

sub is_different { my($self, $other) = @_;
	return ! $self->is_equal($other);
}

use overload '!=' => \&is_different;

#------------------------------------------------------------------------------

=head2 error

Dies with the given error message, indicating the place in the input source file
where the error occured as "FILE(LINE) : error ...".

=cut

#------------------------------------------------------------------------------

sub error { 
	my($self, $error_msg) = @_;
	die $self->_error_msg("error", $error_msg);
}

#------------------------------------------------------------------------------

=head2 warning

Warns with the given error message, indicating the place in the input source file
where the error occured as "FILE(LINE) : warning ...".

=cut

#------------------------------------------------------------------------------

sub warning { my($self, $error_msg) = @_;
	warn $self->_error_msg("warning", $error_msg);
}

#------------------------------------------------------------------------------
# error message for error() and warning()
sub _error_msg { my($self, $type, $error_msg) = @_;
	defined($error_msg) or $error_msg = ""; 
	$error_msg =~ s/\s+$//;
	
	my $text = $self->text; 
	defined($text) or $text = ""; 
	$text =~ s/\s+$//;
	
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

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<Class::Struct>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
