# $Id$

package CPU::Z80::Assembler::Lexer;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Lexer - Scanner for the Z80 assembler

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;

use Asm::Preproc::Lexer;
use Asm::Preproc::Stream;
use CPU::Z80::Assembler::Macro;
use CPU::Z80::Assembler::Preprocessor;
use Regexp::Trie;

our $VERSION = '2.12';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80lexer);

#------------------------------------------------------------------------------

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Lexer;

    open($fh, $file1) or die;
    my $stream = z80lexer(sub {<$fh>}, "#include 'file2'");

=head1 DESCRIPTION

This module provides a scanner to split the input source into 
tokens for the assembler. The scanner calls z80preprocessor from 
L<CPU::Z80::Assembler::Preprocessor|CPU::Z80::Assembler::Preprocessor> to handle file includes, and 
L<CPU::Z80::Assembler::Macro|CPU::Z80::Assembler::Macro> to handle macro pre-processing

The tokens are returned as a L<Asm::Preproc::Stream|Asm::Preproc::Stream> 
of L<Asm::Preproc::Token|Asm::Preproc::Token>. 
The tokens returned from the scanner 
are already the result of file inclusion and macro expansion.

=head1 EXPORTS

By default the 'z80lexer' subroutine is exported.

=head1 FUNCTIONS

=cut

#------------------------------------------------------------------------------
# Keywords and composed symbols
my %KEYWORDS;
for (split(" ", "
				a adc add af af' and b bc bit c call ccf cp cpd cpdr cpi cpir 
				cpl d daa de dec di djnz e ei equ ex exx exa h halt hl im 
				in inc ind indr ini inir ix iy jp jr l ld ldd lddr ldi ldir m 
				nc neg nop nz or otdr otir out outd outi p pe po pop push 
				res ret reti retn rl rla rlc rlca rld rr rra rrc rrca rrd rst 
				sbc scf set sla sll sli sp sra srl sub xor z
				ixh ixl iyh iyl hx lx hy ly xh xl yh yl i r f
				org stop defb db defw dw deft dt defm dm macro endm
			")) {
	$KEYWORDS{$_}++;
}
my $SYMBOLS_RE = _regexp("
				<< >> == != >= <= 
			");

#------------------------------------------------------------------------------
# lexer
my $lexer = Asm::Preproc::Lexer->new(
	
	# ignore comments and blanks except newline
	COMMENT	=> qr/ ; .* /ix,			undef,		
	BLANKS	=> qr/ [\t\f\r ]+ /ix,		undef,

	# newline
	NEWLINE	=> qr/ \n /ix,				sub {["\n", "\n"]},

	# string - return without quotes
	# Sequence (?|...) not recognized in regex in Perl 5.8
	STRING	=> qr/ (?: ' [^']* '
					 | " [^"]* " ) /ix,	sub {[$_[0], 
											substr($_[1], 1, length($_[1])-2)]},
	
	# numbers
	NUMBER	=> qr/ ( \d [0-9a-f]+ ) h \b /ix,
										sub {[$_[0], oct("0x".$1)]},

	NUMBER	=> qr/ [\$\#] ( [0-9a-f]+ ) \b /ix,
										sub {[$_[0], oct("0x".$1)]},
										
	NUMBER	=> qr/ ( [01]+ ) b \b /ix,	sub {[$_[0], oct("0b".$1)]},
										
	NUMBER	=> qr/ % ( [01]+ ) \b /ix,	sub {[$_[0], oct("0b".$1)]},
										
	NUMBER	=> qr/ 0x [0-9a-f]+ | 0b [01]+ \b /ix,
										sub {[$_[0], oct(lc($_[1]))]},
										
	NUMBER	=> qr/ \d+ \b /ix,			sub {[$_[0], 0+$_[1]]},
										
	# name or keyword, after numbers because of $FF syntax
	NAME	=> qr/ af' | [a-z_]\w* | \$ /ix,
										sub { my($t, $v) = @_;
											my $k = lc($v);
											$KEYWORDS{$k} ? [$k, $k] : [$t, $v];
										},
										
	# symbols
	SYMBOL	=> qr/ $SYMBOLS_RE | . /ix,	sub {[$_[1], $_[1]]},

);										
	
#------------------------------------------------------------------------------
# _lexer_stream(INPUT)
# 	INPUT is a Stream of $line = Asm::Preproc::Line,
#	as returned by z80preprocessor()
#	The result Stream contains CPU::Z80::Assembler:Token objects
#	with token type, value, and the line where found
#	Reserved words are returned with type = value in lower case.
sub _lexer_stream {
	my($input) = @_;
	my $this_lexer = $lexer->clone;		# compile $lexer only once
	$this_lexer->input( $input );		# define our input stream
	
	return $this_lexer->stream;
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

=head2 z80lexer

This takes as parameter a list of either text lines to parse, 
or iterators that return text lines to parse.

The result is a L<Asm::Preproc::Stream|Asm::Preproc::Stream> of 
L<Asm::Preproc::Token|Asm::Preproc::Token> 
objects that contain each of the input tokens of the input.

Each token contains a type string, a value and a 
L<Asm::Preproc::Line|Asm::Preproc::Line> object pointing at the input line
where the token was found.

=cut

#------------------------------------------------------------------------------

sub z80lexer {
	my(@input) = @_;
	return _lexer_stream(z80preprocessor(@input));
}

#------------------------------------------------------------------------------

=head1 TOKENS

The following tokens are returned by the stream:

    type => 'reserved', value => reserved, line => ...

All the reserved words and symbols are returned in lower case letters, e.g. (type => "nop", value => "nop"), or 
(type => "+", value => "+").

    type => "STRING", value => $string, line => ...

Single or double quoted strings are returned, without the quotes. The quote character cannot be used inside the string.

    type => "NAME", value => $name, line => ...

All program identifiers, including '$'. 
The case is preserved, i.e. case-sensitive for labels, 
insensitive for assembly reserved words.

    type => "NUMBER", value => $number, line => ...

Numbers are returned either in decimal, hexadecimal in the form 0x****, or binary in the form 
0b****. The other forms are converted to these base forms.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler|CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler|CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Macro|CPU::Z80::Assembler::Macro>
L<Asm::Preproc|Asm::Preproc>
L<Asm::Preproc::Stream|Asm::Preproc::Stream>
L<Asm::Preproc::Line|Asm::Preproc::Line>
L<Asm::Preproc::Token|Asm::Preproc::Token>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler|CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
