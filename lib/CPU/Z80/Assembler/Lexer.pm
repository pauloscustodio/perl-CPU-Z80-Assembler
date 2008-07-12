# $Id$

# Split assembly into tokens

package CPU::Z80::Assembler::Lexer;

use strict;
use warnings;
use 5.008;

use CPU::Z80::Assembler::Macro;
use HOP::Stream ':all';
use Regexp::Trie;

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80lexer);

#------------------------------------------------------------------------------
# _input_stream(LIST)
#	LIST is either a list of text strings to parse, or code references of
#	iterators that return text strings to parse.
#	Returns HOP::Stream to get each string.
sub _input_stream {
	my(@input) = @_;
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
# 	Returns a HOP::Stream of complete text lines to be parsed (as scalar), 
# 	preceded by file position information (as array ref).
#	Parses pre-processor-style line position information:
#		%line 1+1 FILE
#		#line 1 "FILE"
#	E.g., returns sequence:
#		["LINE", "The complete line to be parsed\n", 1, "file.asm"]
#		"The complete line to be parsed\n"
#		["LINE", 2, "file.asm", "Second line\n"]
#		"Second line\n"
# 	Parses include statements, FILE is enclosed in '', "" or <>
#		%include FILE
#		#include FILE
#		INCLUDE  FILE
#	File is included in the stream, and ["LINE" ...] tokens are inserted to
# 	synchronize file position.
sub _line_stream {
	my($input) = @_;
	my $buf = "";
	my($line_nr, $line_inc) = (1, 1);
	my $file;
		
	# line stream
	my $line_promise; # to be used recursively
	$line_promise = promise {
		my $line;
		while ( ! defined($line) ) {						# wait for one non-preprocessor line
			while ( ! defined($line) ) {					# wait for one complete line
				if ($buf =~ / \G (.* \n) /gcx) {
					$line = $1;								# complete line found
				}				
				else {										# no \n in input
					$buf = substr($buf, pos($buf)||0);		# ditch parsed text

					my $next = drop($input);				# next text block
					if (! defined($next) ) {				# end of input
						return undef if $buf eq ""; 		# no more input, no buffer
						$line = $buf; $buf = ""; last;		# return current buffer
					}
					$buf .= $next;
				}		
			}
			
			# we have either one complte line with a final \n, or the last chars of the input without \n
			if ($line =~ /^ \s* \%line \s+ (\d+) \+ (\d+) \s+ (\S*) /ix) {
				($line_nr, $line_inc, $file) = ($1, $2, $3);
				$line = undef;								# continue 
			}
			elsif ($line =~ /^ \s* \#line \s+ (\d+) \s+ \" ([^\"\n]+) \" /ix) {
				($line_nr, $line_inc, $file) = ($1, 1, $2);
				$line = undef;								# continue 
			}
			elsif ($line =~ /^ \s* [\#\%]? include \s+ 
							   (< [^>\n]+ > | \' [^\'\n]+ \' | \" [^\"\n]+ \") /ix) {
				# open the file
				my $inc_file = substr($1, 1, length($1)-2);	# remove quotes
				$line = undef;								# continue 

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
			elsif ($line =~ /^ \s* [\#\%] /ix) {
				$line_nr += $line_inc;						# ignore other # or % lines
				$line = undef;								# continue 
			}
			else {
				# OK, end loop
			}
		}
		my $this_line_nr = $line_nr;
		$line_nr += $line_inc;
		return node(	["LINE", $line, $this_line_nr, $file],
			   node(	$line,
						promise { $line_promise->() } ));
	};
	return $line_promise->();
}		

#------------------------------------------------------------------------------
# _lexer_stream(INPUT)
# 	INPUT is a HOP::Stream of lines, as returned by _line_stream()
#	The result HOP::Stream contains the LINE tokens returned by _line_stream() 
#   followed by all the tokens of the line as ["LABEL", value]
#	Reserved words are returned as [word, word], in lower case.
my $KEYWORD_RE = do {
	my $rt = Regexp::Trie->new;
	for (split(" ","
				a adc add af af' and b bc bit c call ccf cp cpd cpdr cpi cpir 
				cpl d daa de dec di djnz e ei equ ex exx h halt hl i im 
				in inc ind indr ini inir ix iy jp jr l ld ldd lddr ldi ldir m 
				nc neg nop nz or otdr otir out outd outi p pe po pop push 
				res ret reti retn rl rla rlc rlca rld rr rra rrc rrca rrd rst 
				sbc scf set sla sp sra srl sub xor z
				ixh ixl iyh iyl f
				org stop defb defw deft defm macro endm
			")) {
		$rt->add($_);
	}
	$rt->_regexp;					# case-insensitive
};
my $SYMBOLS_RE = do {
	my $rt = Regexp::Trie->new;
	for (split(" ","
				<< >> == != >= <= 
			")) {
		$rt->add($_);
	}
	$rt->_regexp;					# case-insensitive
};
sub _lexer_stream {
	my($input) = @_;
	my $line;
	
	return iterator_to_stream sub {
		for(;;) {
			if ( !defined($line) ||
			     $line =~ / \G \z /gcix) {			# line consumed, get next
				$line = drop($input);				# and loop back
				defined($line) or return undef;		# end of input
				if (ref($line)) {
					my $ret = $line; $line = undef;
					return $ret;					# received token
				}
			}
			$line =~ / \G ; .* /gcix				# ignore comments
			    						and next;
			$line =~ / \G (\n) /gcix				# comment / newline
			    						and return [$1, $1];
			$line =~ / \G [\t\f\r ]+ /gcix
			    						and next;	# ignore blanks, except newline
			$line =~ / \G ( \' [^\']* \' | \" [^\"]* \" ) /gcix			
						 				and return ["STRING", $1];
			$line =~ / \G ( af\' | $KEYWORD_RE \b | $SYMBOLS_RE ) /gcix
										and return [lc($1), lc($1)];
			$line =~ / \G \$? ( [a-z_] \w* | \$ ) /gcix
										and return ["NAME", $1];
			$line =~ / \G ( \d [0-9a-f]+ ) h \b /gcix			
						 				and return ["NUMBER", "0x".$1];
			$line =~ / \G ( [01]+ ) b \b /gcix			
						 				and return ["NUMBER", "0b".$1];
			$line =~ / \G ( \d+ | 0x [0-9a-f]+ | 0b [01]+ ) \b /gcix			
						 				and return ["NUMBER", $1];
			$line =~ / \G (.) /gcix					# catch all
										and return [$1, $1];	
		}
	};
}

#------------------------------------------------------------------------------
# z80lexer(LIST)
#	LIST a list of either text strings to parse, or code references of
#	iterators that return text strings to parse.
# 	To get line number information for error messages, supply a preprocessor-like
#	line, e.g.
#		open(my $fh, $file) or die;		# open file for reading
#		my $iter = sub {<$fh>};			# iterator to read a line at a time
#		my $stream = z80lexer("#line 1 \"$file\"\n", $iter);
#										# lexer will spit ["LINE", ...] tokens with the
#										# file name information
#	Returns HOP::Stream to lexer tokens
sub z80lexer {
	my(@input) = @_;

	my $input_stream = 	_input_stream(@input);
	my $line_stream =	_line_stream($input_stream);
	my $lexer_stream = 	_lexer_stream($line_stream);
	my $macro_stream =	z80pp($lexer_stream);
	
	return $macro_stream;
}

1;

__END__


=head1 NAME

CPU::Z80::Assembler::Lexer - Scanner for the Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Lexer;
    use HOP::Stream 'drop';

    open($fh, $file1) or die;
    my $stream = z80lexer("#include 'file2'\n", sub {<$fh>});

=head1 DESCRIPTION

This module provides a scanner to split the input source into tokens for the
assembler.

=head1 EXPORTS

By default the 'z80lexer' subroutine is exported.  To disable that, do:

    use CPU::Z80::Assembler::Lexer ();

=head1 FUNCTIONS

=head2 z80lexer

This takes as parameter a list of either text strings to parse, or iterators that return 
text strings to parse.

The result is a HOP::Stream that retrieves the next lexical token by each drop($stream).

=head1 Preprocessing

The following preprocessor-like lines are processed by the lexer:

	%line N+M FILE

nasm-like line directive, telling that the next input line is line N from file FILE, 
followed by lines N+M, N+2*M, ... This information is used to generate error messages.
Usefull to assemble a file preprocessed by nasm.

	#line N "FILE"

cpp-like line directive, telling that the next input line is line N from file FILE, 
followed by lines N+1, N+2, ... This information is used to generate error messages.
Usefull to assemble a file preprocessed by cpp.

	include 'FILE'
	include "FILE"
	include <FILE>
	%include ...
	#include ...
	
nasm/cpp-like include directive, asking to insert the contents of the given file 
in the input stream. The Lexer inserts %line directives to synchronize file positions
before and after the file inclusion.

The easiest form to ask z80asm to assemble a file is to write:

	z80asm("include 'FILE'");

All the other preprocessor-like lines are ignored, i.e. lines starting with '#' or '%'.

=head1 TOKENS

The following tokens are returned by the stream:

	["LINE", $line_text, $line_nr, $file]

Indicates that the next tokens belong to the given file, and line number, and contains the 
whole line text. This token is usefull to remember the current location in the source 
file, to show in listings or error messages.

	[reserved, reserved]
	
All the reserved words and symbols are returned in lower case letters, e.g. ["nop", "nop"], or 
["+", "+"].

	["STRING", $string]
	
Single or double quoted strings are returned, including the quotes. The quote character cannot be
used inside the string.

	["NAME", $name]
	
All program identifiers, including '$'. The case is preserved, i.e. case-sensitive for labels, 
insensitive for assembly reserved words.

	["NUMBER", $number]
	
Numbers are returned either in decimal, hexadecimal in the form 0x****, or binary in the form 
0b****. The forms 0****H is replaced into 0x****, and the form 0****B into 0b****.

=head1 BUGS and FEEDBACK

I welcome feedback about my code, including constructive criticism.
Bug reports should be made using L<http://rt.cpan.org/>.

=head1 SEE ALSO

L<HOP::Stream>
L<CPU::Z80::Assembler>

=head1 AUTHOR, COPYRIGHT and LICENCE

Copyright 2008 David Cantrell, Paulo Custodio

This software is free-as-in-speech software, and may be used,
distributed, and modified under the terms of either the GNU
General Public Licence version 2 or the Artistic Licence.  It's
up to you which one you use.  The full text of the licences can
be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=head1 CONSPIRACY

This software is also free-as-in-mason.

=cut
