# $Id$

package CPU::Z80::Assembler::Preprocessor;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Preprocessor - Preprocessor for the Z80 assembler

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;

use CPU::Z80::Assembler::Line;
use CPU::Z80::Assembler::Stream;

our $VERSION = '2.07';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80preprocessor);

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Preprocessor;

  open($fh, $file1) or die;
  my $stream = z80preprocessor("#include 'file2'\n", sub {<$fh>});
  my $line = $stream->get;

=head1 DESCRIPTION

This module provides a preprocessor to handle file includes. It
is called by L<CPU::Z80::Assembler::Lexer> to retrieve each line
of input to scan.

=head1 EXPORTS

By default the 'z80preprocessor' subroutine is exported.

=head1 FUNCTIONS

=cut

#------------------------------------------------------------------------------
# _input_stream(LIST)
#	LIST is either a list of text strings to parse, or code references of
#	iterators that return text strings to parse.
#	Returns Stream to get each string.
# 	Assumes that the iterator returns always one line at a time, and no text
# 	line is split in different list elements (performance).
sub _input_stream {	
	my(@input) = @_;
	
	# replace each text string in input by iterator to return each complete line
	for (@input) {
		if (!ref($_)) {
			my @lines = split(/\n/, $_);
			$_ = sub { shift(@lines) }; 
		}
	}
	my $lines_strm = CPU::Z80::Assembler::Stream->new(@input);
	
	# create a stream that always appends a \n to the end, removing any \r
	my $cannon_lines_strm = CPU::Z80::Assembler::Stream->new(
				sub {
					my $line = $lines_strm->get;
					defined($line) or return undef;
					for ($line) {
						s/\r//g;				# in case Windows file is processed in Unix
						/\n$/ or $_ .= "\n";	# add newline if missing
					}
					return $line;
				});
	return $cannon_lines_strm;
}

#------------------------------------------------------------------------------
# _line_stream(INPUT)
#	INPUT is a Stream of complete text lines
# 	Returns a Stream of CPU::Z80::Assembler::Line objects
#	containing lines to be parsed.
#	Parses pre-processor-style line position information:
#		%line 1+1 FILE
#		#line 1 "FILE"
# 	Parses include statements, FILE is enclosed in '', "" or <>
#		%include FILE
#		#include FILE
#		INCLUDE  FILE
#	File is included in the stream after the newline.
sub _line_stream {
	my($input) = @_;
	my($line_nr, $line_inc) = (1, 1);
	my $file;
	my $stream = CPU::Z80::Assembler::Stream->new(
		sub {
			my $line;
			# process all preprocessor lines
			for(;;) {
				$line = $input->get;
				return undef unless defined($line);			# end of input
				last unless $line =~ /^ \s* ( [\#\%] | include ) /ix;
															# not preprocessor 

				# %line n+m file
				if ($line =~ /^ \s* \%line \s+ (\d+) \+ (\d+) \s+ (\S*) /ix) {
					($line_nr, $line_inc, $file) = ($1, $2, $3);
				}
				# #line n "file"
				elsif ($line =~ /^ \s* \#line \s+ (\d+) \s+ \" ([^\"\n]+) \" /ix) {
					($line_nr, $line_inc, $file) = ($1, 1, $2);
				}
				# include | #include | %include file
				elsif ($line =~ /^ \s* [\#\%]? include \s+ 
								   (< [^>\n]+ > | \' [^\'\n]+ \' | \" [^\"\n]+ \") /ix) {
					# open the file
					my $inc_file = substr($1, 1, length($1)-2);	# remove quotes

					# insert the stream before $input
					open(my $fh, $inc_file) 
						or CPU::Z80::Assembler::Line->new(
									text 	=> $line,
									line_nr => $line_nr, 
									file 	=> $file,
								)->error("open $inc_file: $!");
					$line_nr += $line_inc;
					
					# create a new stream; need to call _input_stream
					# to handle \r\n on Unix machines
					my $old_input = $input;
					$input = CPU::Z80::Assembler::Stream->new(
									"%line 1+1 $inc_file\n",
									_input_stream(sub { <$fh> })->iterator,
									defined($file) ? "%line $line_nr+$line_inc $file\n" : (),
									sub { $old_input->get },
								);
				}
				# # | %
				else {
					$line_nr += $line_inc;		# ignore other # or % lines
				}
			}
			# $line is ready to be returned
			my $this_line_nr = $line_nr;
			$line_nr += $line_inc;
			return CPU::Z80::Assembler::Line->new(
									text 	=> $line,
									line_nr => $this_line_nr, 
									file 	=> $file,
								);
		
		});
	return $stream;
}
			
#------------------------------------------------------------------------------

=head2 z80preprocessor

This takes as parameter a list of either text lines to parse, 
or iterators that return text lines to parse.

The result is a L<CPU::Z80::Assembler::Stream> of L<CPU::Z80::Assembler::Line> 
objects that contain each of the input lines of the input.

=cut

#------------------------------------------------------------------------------

sub z80preprocessor { my(@input) = @_;
	return _line_stream(_input_stream(@input));
}

#------------------------------------------------------------------------------


=head1 PREPROCESSING

The following preprocessor-like lines are processed:

  %line N+M FILE

nasm-like line directive, telling that the next input line is 
line N from file FILE, 
followed by lines N+M, N+2*M, ... 
This information is used to generate error messages.
Usefull to assemble a file preprocessed by nasm.

  #line N "FILE"

cpp-like line directive, telling that the next input line is 
line N from file FILE, 
followed by lines N+1, N+2, ... 
This information is used to generate error messages.
Usefull to assemble a file preprocessed by cpp.

  include 'FILE'
  include "FILE"
  include <FILE>
  %include ...
  #include ...

nasm/cpp-like include directive, asking to insert the contents 
of the given file in the input stream. The preprocessor inserts 
%line directives to synchronize file positions before and 
after the file inclusion.

The easiest form to ask z80asm to assemble a file is to write:

  z80asm("include 'FILE'");

All the other preprocessor-like lines are ignored, i.e. lines starting with '#' or '%'.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<CPU::Z80::Assembler::Lexer>
L<CPU::Z80::Assembler::Stream>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
