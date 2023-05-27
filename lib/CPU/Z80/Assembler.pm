# $Id$

package CPU::Z80::Assembler;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler - a Z80 assembler

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;

use Asm::Preproc;
use Asm::Preproc::Lexer;
use CPU::Z80::Assembler::Program;
use CPU::Z80::Assembler::List;

use Text::Tabs; 						# imports expand(), unexpand()
use Regexp::Trie;

use vars qw(@EXPORT $verbose);

our $VERSION = '2.24';
our $verbose;
our $fill_byte = 0xFF;

use base qw(Exporter);

@EXPORT = qw(z80asm z80asm_file z80preprocessor z80lexer);

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler;

  $CPU::Z80::Assembler::verbose = 1;
  $CPU::Z80::Assembler::fill_byte = 0xFF;
  $binary = z80asm(q{
      ORG 0x1000
      LD A, 1
      ...
  });
  $binary = z80asm_file($asm_file);
  $binary = z80asm(@asm_lines);
  $binary = z80asm('#include <file.asm>');
  open($fh, $file); $binary = z80asm(sub {<$fh>});

  $lines  = z80preprocessor(@asm_lines); $line  = $lines->next;
  $tokens = z80lexer(@asm_lines);        $token = $tokens->next;

=head1 DESCRIPTION

This module provides functions to assemble a set of Z80 assembly instructions
given as a list or as an iterator, or a Z80 assembly source file.

=head1 EXPORTS

All functions are exported by default.

=head1 FUNCTIONS

=head2 z80asm

This function takes as parameter a list of either text lines to parse, 
or iterators that return text lines to parse.

The list is passed to C<z80lexer>, that in turn calls C<z80preprocessor> to 
handle file includes, and then splits the input into tokens.

The stream of tokens is passed on to L<CPU:Z80::Assembler::Parser|CPU:Z80::Assembler::Parser> that parses the 
input and generates the object image in L<CPU::Z80::Assembler::Program|CPU::Z80::Assembler::Program>. 
Assembly macro expansion is handled at this stage by L<CPU::Z80::Assembler::Macro|CPU::Z80::Assembler::Macro>.

The assembly program is composed by a list of L<CPU::Z80::Assembler::Segment|CPU::Z80::Assembler::Segment>, each 
representing one named section of code. Each segment is composed by a list of L<CPU::Z80::Assembler::Opcode|CPU::Z80::Assembler::Opcode>, each representing one assembly instruction.

The output object code is returned as a string.

If the $CPU::Z80::Assembler::verbose variable is set, an output listing is generated 
by L<CPU::Z80::Assembler::List|CPU::Z80::Assembler::List> on standard output.

Assembly is done in five steps:

=over 4

=item 1

input is preprocessed, scanned and split into tokens

=item 2

tokens are parsed and converted to lists of opcodes

=item 3

addresses for each opcode are allocated

=item 4

relative jumps are checked for out-of-range jumps and replaced by absolute
jumps if needed

=item 5

object code is generated for each opcode, computing all expressions used; the expressions are 
represented by L<CPU::Z80::Assembler::Expr|CPU::Z80::Assembler::Expr>.

=back

=cut

#------------------------------------------------------------------------------
sub z80asm {
	my(@input) = @_;
	my $list_output = ($CPU::Z80::Assembler::verbose) ? 
					CPU::Z80::Assembler::List->new(
										input => \@input, 
										output => \*STDOUT) :
					undef;
	my $program = CPU::Z80::Assembler::Program->new();
	my $token_stream = z80lexer(@input);
	$program->parse($token_stream);
	my $bytes = $program->bytes($list_output);
	$list_output->flush() if $list_output;
	return $bytes;
}
#------------------------------------------------------------------------------

=head2 z80asm_file

This function takes as argument a Z80 assembly source file name and returns
the binary object code string.

=cut

#------------------------------------------------------------------------------
sub z80asm_file {
	my($file) = @_;
	return z80asm("#include <$file>");
}
#------------------------------------------------------------------------------

=head2 z80preprocessor

This function takes as parameter a list of either text lines to parse, 
or iterators that return text lines to parse.

The list is passed to the L<Asm::Preproc|Asm::Preproc> that takes care
of file includes and handles the %line and #line lines generated by external 
preprocessors like cpp or nasm. 

The result is a
L<Iterator::Simple::Lookahead|Iterator::Simple::Lookahead> 
of L<Asm::Preproc::Line|Asm::Preproc::Line> objects that contain each of 
the input lines of the input.

=cut

#------------------------------------------------------------------------------

sub z80preprocessor { 
	my(@input) = @_;
	my $pp = Asm::Preproc->new;
	$pp->include_list(@input);
	
	# create a new stream to handle "INCLUDE" statement
	return Iterator::Simple::Lookahead->new( 
		sub {
			while (1) {
				my $line = $pp->getline
					or return undef;			# end of input
				
				# handle "INCLUDE"
				if ($line->text =~ /^\s*(include\s+.*)/i) {
					$pp->include_list("%$1");	# handle %include...
					next;						# get next line
				}
				else {
					return $line;
				}
			}
		}
	);	
}

#------------------------------------------------------------------------------

=head2 z80lexer

This function takes as parameter a list of either text lines to parse, 
or iterators that return text lines to parse.

It calls C<z80preprocessor> to split the input into a 
L<Iterator::Simple::Lookahead|Iterator::Simple::Lookahead>
of L<Asm::Preproc::Line|Asm::Preproc::Line> objects representing the source
lines of the Z80 assembly language program.

It returns a stream of L<Asm::Preproc::Token|Asm::Preproc::Token> objects for
each assembly token in the input.

Each token contains a type string, a value and a 
L<Asm::Preproc::Line|Asm::Preproc::Line> object pointing at the input line
where the token was found.

=cut

#------------------------------------------------------------------------------
# Keywords and composed symbols
my %KEYWORDS;
for (split(" ", "
				a adc add af af' and b bc bit c call ccf cp cpd cpdr cpi cpir 
				cpl d daa de dec di djnz e ei equ ex exx h halt hl im 
				in inc ind indr ini inir ix iy jp jr l ld ldd lddr ldi ldir m 
				nc neg nop nz or otdr otir out outd outi p pe po pop push 
				res ret reti retn rl rla rlc rlca rld rr rra rrc rrca rrd rst 
				sbc scf set sla sll sli sp sra srl sub xor z
				ixh ixl iyh iyl hx lx hy ly xh xl yh yl i r f
				org stop defb defw deft defm defmz defm7 macro endm
			")) {
	$KEYWORDS{$_}++;
}
my $SYMBOLS_RE = _regexp("
				<< >> == != >= <= 
			");

#------------------------------------------------------------------------------
# lexer
my $expand_escapes = sub {
	local $_ = shift;
	my $out = '';
	
	# remove quotes
	s/^(['"])(.*)\1$/$2/ or die;
	
	while (! /\G \z/gcx) {
		if    (/\G \\   ([0-7]{1,3}) /gcx) 		{ $out .= chr(oct($1)); }
		elsif (/\G \\ x ([0-9a-f]{1,2}) /gcxi)	{ $out .= chr(hex($1)); }
		elsif (/\G \\ a   /gcx)					{ $out .= "\a"; }
		elsif (/\G \\ b   /gcx)					{ $out .= "\b"; }
		elsif (/\G \\ e   /gcx)					{ $out .= "\e"; }
		elsif (/\G \\ f   /gcx)					{ $out .= "\f"; }
		elsif (/\G \\ n   /gcx)					{ $out .= "\n"; }
		elsif (/\G \\ r   /gcx)					{ $out .= "\r"; }
		elsif (/\G \\ t   /gcx)					{ $out .= "\t"; }
		elsif (/\G \\ v   /gcx)					{ $out .= "\x0B"; }
		elsif (/\G \\ '   /gcx)					{ $out .= "'"; }
		elsif (/\G \\ "   /gcx)					{ $out .= '"'; }
		elsif (/\G \\ \\  /gcx)					{ $out .= "\\"; }
		elsif (/\G \\ (.) /gcx)					{ $out .= $1; }
		elsif (/\G \\     /gcx)					{ $out .= "\\"; }
		elsif (/\G (.)    /gcx)					{ $out .= $1; }
		else { die; }
	}
	
	return $out;
};
	
my $lexer = Asm::Preproc::Lexer->new;
$lexer->make_lexer(
	
	# ignore comments and blanks except newline
	COMMENT	=> qr/ ; .* /ix,			undef,		
	BLANKS	=> qr/ [\t\f\r ]+ /ix,		undef,

	# newline
	NEWLINE	=> qr/ \n /ix,				sub {["\n", "\n"]},

	# string - return without quotes
	# Sequence (?|...) not recognized in regex in Perl 5.8
	STRING	=> qr/ (?: \" (?: \\. | [^\\\"] )* \" 
					 | \' (?: \\. | [^\\\'] )* \' ) /ix,
										sub {[$_[0], $expand_escapes->($_[1])]},	
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
	$this_lexer->from( $input );		# define lexer input stream
	
	return $this_lexer;
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
sub z80lexer {
	my(@input) = @_;
	return _lexer_stream(z80preprocessor(@input));
}
#------------------------------------------------------------------------------

=head1 SCRIPTS

=head2 z80masm

  z80masm sourcefile [destfile]

The L<z80masm|z80masm> program, installed as part of this module, calls 
the z80asm_file() function to assemble an input source file, generates
an output binary file, and produce an assembly listing on standard output.

=cut

#------------------------------------------------------------------------------

=head1 SYNTAX

=head2 Input line format

Instructions are written in ASCII text. 
Opcodes are separated by new-line or colon C<:> characters. 
Comments start with C<;>. 
Lines starting with C<#> are ignored, to handle files generated by pre-processors.

    ; comment beginning with ;
    # comment beginning with # as first char on a line
    [LABEL [:]] INSTRUCTION [: INSTRUCTION ...] [; optional comments]
    LABEL [:]
    LABEL = EXPRESSION [; ...]

=head2 Preprocessing

See L<Asm::Preproc|Asm::Preproc>.

=head2 Tokens

The following tokens are returned by the stream:

=head3 reserved words

  Asm::Preproc::Token('word', 'word', $line)

All the reserved words and symbols are returned in lower case letters.

=head3 strings

  Asm::Preproc::Token(STRING => $string, $line)

Single- or double-quoted strings are accepted. 
The quote character cannot be used inside the string.
The returned string has the quotes stripped. 

=head3 identifiers

  Asm::Preproc::Token(NAME => $name, $line)

The program identifiers must start with a letter or underscore,
and consist solely of letters, underscores and numbers. There is a special case
C<$> identifier that represents the current location counter.

Identifiers are returned with case preserved, i.e. the assembler is case-sensitive 
for labels and case-insensitive for assembly reserved words.

=head3 numbers

  Asm::Preproc::Token(NUMBER => $decimal_number, $line)

Numbers are converted to decimal base from one of the following formats:

=over 4

=item *

Decimal numbers are sequences of the digits 0..9, e.g. 159.

=item *

Hexadecimal number are sequences of the digits 0..9 and letters A..F, 
prefixed by one of C<0x>, C<$> or C<#>; 
or prefixed by a zero digit, if the number starts by a letter,
and suffixed by a C<H> character, e.g. 0xFA21, 0FA21H, 10H, $FA21, #FA21.

=item *

Binary numbers are sequences of the digits 0..1, 
prefixed by one of C<0b> or C<%>; or suffixed by C<B>, 
e.g. 0b10, 10B, %10.

=back

=head2 Z80 assembly

See L<Asm::Z80::Table|Asm::Z80::Table> for all allowed Z80 instructions, including
the undocumented Z80 opcodes and composed instructions.

=head3 relative jumps

The DJNZ and JR instructions take an address as their destination,
not an offset.  If you need to use an offset, do sums on $.  Note
that $
is the address of the *current* instruction.  The offset needs to
be calculated from the address of the *next* instruction, which for
these instructions is always $ + 2.

A relative jump instruction can always be used. The assembler automatically 
replaces it with an absolute jump if the distance is too far, or if the given 
flag is not available, e.g. C<jr po,NN>. 
A C<djnz NN> instruction is converted to C<dec b:jp nz,NN> if the distance is too far.

=head3 stop

This extra instruction (which assembles to 0xDD 0xDD 0x00) is provided
for the convenience of those using the L<CPU::Emulator::Z80> module.

=head2 Pseudo-instructions

=head3 defb

Accepts a list of expressions, and evaluates each as a byte to load to the 
object file.

=head3 defw

Accepts a list of expressions, and evaluates each as a 16-bit word to load to the 
object file, in little-endian order.

=head3 defm, deft

Accepts a list of literal strings, either single- or double-quoted.
The quoted text can not include the quotes surrounding it or newlines.
The characters are loaded to the object file.

=head3 defmz

Same as C<defm>, but appends a zero byte as string terminator after each string.

=head3 defm7

Same as C<defm>, but "inverts" (i.e. bit 7 set) the last character of the string, 
as string terminator.

=head3 equ, =

Labels are created having the value of the address they are created at.

Alternatively labels may be assigned expressions by using C<equ> or C<=>. The 
expressions use the Perl operators and can refer to other labels by name, even 
if they are defined further on the file. The C<$> can be used in the expression
to represent the current location counter.

  label      = $ + 8
  otherlabel = label / 2 + 3

=head3 org

Tell the assembler to start building the code at this address.
If it is not the first instruction of the assembly, the gap to the previous 
location counter is filled with C<$CPU::Z80::Assembler::fill_byte>.
If absent, defaults to 0x0000.

=head3 include

Recursively include another file at the current source file.

=head2 Macros

Macros are supported. See L<CPU::Z80::Assembler::Macro|CPU::Z80::Assembler::Macro> for details.

=head1 BUGS and FEEDBACK

We welcome feedback about our code, including constructive criticism.
Bug reports should be made using L<http://rt.cpan.org/>.

=head1 SEE ALSO

L<CPU::Z80::Assembler::Macro|CPU::Z80::Assembler::Macro>
L<CPU::Z80::Assembler::Parser|CPU::Z80::Assembler::Parser>
L<CPU::Emulator::Z80|CPU::Emulator::Z80>

=head1 AUTHORS, COPYRIGHT and LICENCE

Copyright (c) 2008-2009, 
David Cantrell E<lt>F<david@cantrell.org.uk>E<gt>,
Paulo Custodio E<lt>F<pscust@cpan.org>E<gt>

This software is free-as-in-speech software, and may be used,
distributed, and modified under the terms of either the GNU
General Public Licence version 2 or the Artistic Licence.  It's
up to you which one you use.  The full text of the licences can
be found in the files GPL2.txt and ARTISTIC.txt, respectively.

The Spectrum 48K ROM used in the test scripts is Copyright by Amstrad. 
Amstrad have kindly given their permission for the
redistribution of their copyrighted material but retain that copyright
(see L<http://www.worldofspectrum.org/permits/amstrad-roms.txt>).

=head1 CONSPIRACY

This software is also free-as-in-mason.

=cut

#------------------------------------------------------------------------------

1;
