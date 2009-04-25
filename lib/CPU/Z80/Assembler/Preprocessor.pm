# $Id$

# Preprocessor for the Z80 assembler

package CPU::Z80::Assembler::Preprocessor;

use strict;
use warnings;
use 5.008;

use CPU::Z80::Assembler::Line;
use HOP::Stream qw( append drop iterator_to_stream node promise );

our $VERSION = '2.05_02';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80preprocessor);

#------------------------------------------------------------------------------
# _input_stream(LIST)
#	LIST is either a list of text strings to parse, or code references of
#	iterators that return text strings to parse.
#	Returns HOP::Stream to get each string.
sub _input_stream {	my(@input) = @_;
	return iterator_to_stream sub {
		for (;;) {
			return undef unless @input;		# end of list
			my $elem = ((ref($input[0])||"") eq "CODE") ?
						$input[0]->() : shift(@input);
			return $elem if defined($elem);
			shift(@input);				# end of this iterator
		}
	};
}

#------------------------------------------------------------------------------
# _line_stream(INPUT)
#	INPUT is a HOP::Stream of text blocks
# 	Returns a HOP::Stream of CPU::Z80::Assembler::Line objects
#	containing complete text lines to be parsed.
#	Parses pre-processor-style line position information:
#		%line 1+1 FILE
#		#line 1 "FILE"
# 	Parses include statements, FILE is enclosed in '', "" or <>
#		%include FILE
#		#include FILE
#		INCLUDE  FILE
#	File is included in the stream after the newline.
sub _line_stream { my($input) = @_;
	my $buf = "";
	my($line_nr, $line_inc) = (1, 1);
	my $file;

	# line stream
	my $line_promise; # to be used recursively
	$line_promise = promise {
		my $line;
		while ( ! defined($line) ) {					# wait for one
														# non-preprocessor line
			while ( ! defined($line) ) {				# wait for one complete line
				if ($buf =~ / \G (.* \n) /gcx) {
					$line = $1;							# complete line found
				}				
				else {									# no \n in input
					$buf = substr($buf, pos($buf)||0);	# ditch parsed text

					my $next = drop($input);			# next text block
					if (! defined($next) ) {			# end of input
						return undef if $buf eq ""; 	# no more input, no buffer
						$line = $buf; $buf = ""; last;	# return current buffer
					}
					$buf .= $next;
				}		
			}
			
			# we have either one complete line with a final \n,
			# or the last chars of the input without \n
			
			# %line n+m file
			if ($line =~ /^ \s* \%line \s+ (\d+) \+ (\d+) \s+ (\S*) /ix) {
				($line_nr, $line_inc, $file) = ($1, $2, $3);
				$line = undef;							# continue 
			}
			# #line n "file"
			elsif ($line =~ /^ \s* \#line \s+ (\d+) \s+ \" ([^\"\n]+) \" /ix) {
				($line_nr, $line_inc, $file) = ($1, 1, $2);
				$line = undef;							# continue 
			}
			# include | #include | %include file
			elsif ($line =~ /^ \s* [\#\%]? include \s+ 
							   (< [^>\n]+ > | \' [^\'\n]+ \' | \" [^\"\n]+ \") /ix) {
				# open the file
				my $inc_file = substr($1, 1, length($1)-2);	# remove quotes
				$line = undef;							# continue 

				# insert the stream before $input
				open(my $fh, $inc_file) or die "Open $inc_file: $!\n";
				$line_nr += $line_inc;
				$input = append( _input_stream( "%line 1+1 $inc_file\n",
												sub {<$fh>},
												defined($file) ?
													"%line $line_nr+$line_inc $file\n" :
													() ),
								$input );
			}
			# # | %
			elsif ($line =~ /^ \s* [\#\%] /ix) {
				$line_nr += $line_inc;		# ignore other # or % lines
				$line = undef;				# continue 
			}
			else {
				# OK, end loop
			}
		}
		my $this_line_nr = $line_nr;
		$line_nr += $line_inc;
		for ($line) {
			s/\r//g;						# in case Windows file is processed in Unix
			/\n$/ or $_ .= "\n";			# add newline if missing
		}
		return node(	CPU::Z80::Assembler::Line->new(
								text => $line,
								line_nr => $this_line_nr, file => $file ),
						promise { $line_promise->() } );
	};
	return $line_promise->();
}		

#------------------------------------------------------------------------------
# z80preprocessor(LIST)
#	LIST is either a list of text strings to parse, or code references of
#	iterators that return text strings to parse.
# 	Returns a HOP::Stream of CPU::Z80::Assembler::Line objects
#	containing complete text lines to be parsed.
sub z80preprocessor { my(@input) = @_;
	return _line_stream(_input_stream(@input));
}

1;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Preprocessor - Preprocessor for the Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Preprocessor;
    use HOP::Stream 'drop';

    open($fh, $file1) or die;
    my $stream = z80preprocessor("#include 'file2'\n", sub {<$fh>});
    my $line = drop($stream);

=head1 DESCRIPTION

This module provides a preprocessor to handle file includes. It
is called by L<CPU::Z80::Assembler::Lexer> to retrieve each line
of input to scan.

=head1 EXPORTS

By default the 'z80preprocessor' subroutine is exported.  
To disable that, do:

    use CPU::Z80::Assembler::Preprocessor ();

=head1 FUNCTIONS

=head2 z80preprocessor

This takes as parameter a list of either text strings to parse, 
or iterators that return text strings to parse.

The result is a L<HOP::Stream> of L<CPU::Z80::Assembler::Line> 
objects that contain each of the input lines of the input.

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
L<HOP::Stream>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

