# $Id$

# Scanner for the Z80 assembler

package CPU::Z80::Assembler::Lexer;

use strict;
use warnings;
use 5.008;

use CPU::Z80::Assembler::Line;
use CPU::Z80::Assembler::Token;
use CPU::Z80::Assembler::Macro;
use CPU::Z80::Assembler::Preprocessor;
use HOP::Stream qw( append drop iterator_to_stream node promise );
use Regexp::Trie;

our $VERSION = '2.05_02';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80lexer);

#------------------------------------------------------------------------------
# Keywords and composed symbols
my $KEYWORD_RE = _regexp("
				a adc add af af' and b bc bit c call ccf cp cpd cpdr cpi cpir 
				cpl d daa de dec di djnz e ei equ ex exx exa h halt hl im 
				in inc ind indr ini inir ix iy jp jr l ld ldd lddr ldi ldir m 
				nc neg nop nz or otdr otir out outd outi p pe po pop push 
				res ret reti retn rl rla rlc rlca rld rr rra rrc rrca rrd rst 
				sbc scf set sla sll sli sp sra srl sub xor z
				ixh ixl iyh iyl hx lx hy ly xh xl yh yl i r f
				org stop defb defw deft defm macro endm
			");
my $SYMBOLS_RE = _regexp("
				<< >> == != >= <= 
			");

#------------------------------------------------------------------------------
# _lexer_stream(INPUT)
# 	INPUT is a HOP::Stream of $line = CPU::Z80::Assembler::Line,
#	as returned by z80preprocessor()
#	The result HOP::Stream contains CPU::Z80::Assembler:Token objects
#	with token type, value, and the line where found
#	Reserved words are returned with type = value in lower case.
sub _lexer_stream {
	my($input) = @_;
	my $line;
	my $text = "";
	
	return iterator_to_stream sub {
		for(;;) {
			if ( $text =~ / \G \z /gcix) {			# line consumed, get next
				$line = drop($input);				# and loop back
				defined($line) or return undef;		# end of input
				$text = $line->text;
			}
			$text =~ / \G ; .* /gcix				# ignore comments
			    and next;
			$text =~ / \G (\n) /gcix				# comment / newline
			    and return CPU::Z80::Assembler::Token->new(
											type  => $1,
											value => $1,
											line  => $line );
			$text =~ / \G [\t\f\r ]+ /gcix
			    and next;							# ignore blanks, except newline
			$text =~ / \G ( \' [^\']* \' | \" [^\"]* \" ) /gcix			
				and return CPU::Z80::Assembler::Token->new(
											type  => "STRING",
											value => $1,
											line  => $line );
			$text =~ / \G ( af\' | $KEYWORD_RE \b | $SYMBOLS_RE ) /gcix
				and return CPU::Z80::Assembler::Token->new(
											type  => lc($1),
											value => lc($1),
											line  => $line );
			$text =~ / \G \$? ( [a-z_] \w* | \$ ) /gcix
				and return CPU::Z80::Assembler::Token->new(
											type  => "NAME",
											value => $1,
											line  => $line );
			$text =~ / \G ( \d [0-9a-f]+ ) h \b /gcix			
				and return CPU::Z80::Assembler::Token->new(
											type  => "NUMBER",
											value => "0x".$1,
											line  => $line );
			$text =~ / \G ( [01]+ ) b \b /gcix			
				and return CPU::Z80::Assembler::Token->new(
											type  => "NUMBER",
											value => "0b".$1,
											line  => $line );
			$text =~ / \G ( \d+ | 0x [0-9a-f]+ | 0b [01]+ ) \b /gcix			
				and return CPU::Z80::Assembler::Token->new(
											type  => "NUMBER",
											value => $1,
											line  => $line );
			$text =~ / \G (.) /gcix					# catch all
				and return CPU::Z80::Assembler::Token->new(
											type  => $1,
											value => $1,
											line  => $line );	
		}
	};
}

#------------------------------------------------------------------------------
# _regexp(LIST)
#	Return a regexp to match any of the strings included in LIST, as blank separated
#	tokens
sub _regexp { my(@strings) = @_;
	my $rt = Regexp::Trie->new;
	for (@strings) {
		for (split(" ", $_)) {
			$rt->add($_);
		}
	}
	return $rt->_regexp;				# case-insensitive
}

#------------------------------------------------------------------------------
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
	return z80macro(_lexer_stream(z80preprocessor(@input)));
}

1;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Lexer - Scanner for the Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Lexer;
    use HOP::Stream 'drop';

    open($fh, $file1) or die;
    my $stream = z80lexer("#include 'file2'\n", sub {<$fh>});

=head1 DESCRIPTION

This module provides a scanner to split the input source into 
tokens for the assembler. The scanner calls z80preprocessor from 
L<CPU::Z80::Assembler::Preprocessor> to handle file includes, and 
L<CPU::Z80::Assembler::Macro> to handle macro pre-processing

The tokens returned from the scanner are already the result of 
file inclusion and macro expansion.

=head1 EXPORTS

By default the 'z80lexer' subroutine is exported.  To disable that, do:

    use CPU::Z80::Assembler::Lexer ();

=head1 FUNCTIONS

=head2 z80lexer

This takes as parameter a list of either text strings to parse, 
or iterators that return text strings to parse.

The result is a L<HOP::Stream> of L<CPU::Z80::Assembler::Token> 
objects that contain each of the input tokens of the input.

Each token contains a type string, a value and a 
L<CPU::Z80::Assembler::Line> object pointing at the input line
where the token was found.

=head1 TOKENS

The following tokens are returned by the stream:

    type => reserved, value => reserved, line => ...

All the reserved words and symbols are returned in lower case letters, e.g. (type => "nop", value => "nop"), or 
(type => "+", value => "+").

    type => "STRING", value => $string, line => ...

Single or double quoted strings are returned, including the quotes. The quote character cannot be used inside the string.

    type => "NAME", value => $name, line => ...

All program identifiers, including '$'. 
The case is preserved, i.e. case-sensitive for labels, 
insensitive for assembly reserved words.

    type => "NUMBER", value => $number, line => ...

Numbers are returned either in decimal, hexadecimal in the form 0x****, or binary in the form 
0b****. 
The forms 0****H is replaced into 0x****, and the form 0****B into 0b****.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<HOP::Stream>
L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<CPU::Z80::Assembler::Token>
L<CPU::Z80::Assembler::Preprocessor>
L<CPU::Z80::Assembler::Macro>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut


