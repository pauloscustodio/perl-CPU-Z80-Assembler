#!perl

use warnings;
use strict;

use Test::More tests => 111;

use Data::Dump 'dump';

use_ok	'CPU::Z80::Assembler::Lexer';
use_ok	'HOP::Stream', 'drop', 'show';

isa_ok	my $s = z80lexer(<DATA>), 'HOP::Stream';

is_deeply	drop($s), ["LINE", "macro m1 {\n", 1, undef], "token";
is_deeply	drop($s), ["LINE", "  ld a,1 : ld b,2\n", 2, undef], "token";
is_deeply	drop($s), ["LINE", "}\n", 3, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  nop\n", 4, undef], "token";
is_deeply	drop($s), ["nop", "nop"], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  m1\n", 5, undef], "token";

is_deeply	drop($s), ["LINE", "macro m1 {\n", 1, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  ld a,1 : ld b,2\n", 2, undef], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["a", "a"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 1], "token";
is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["b", "b"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 2], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "}\n", 3, undef], "token";

is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  nop : m1 : nop : m1 : nop\n", 6, undef], "token";
is_deeply	drop($s), ["nop", "nop"], "token";
is_deeply	drop($s), [":", ":"], "token";

is_deeply	drop($s), ["LINE", "macro m1 {\n", 1, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  ld a,1 : ld b,2\n", 2, undef], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["a", "a"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 1], "token";
is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["b", "b"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 2], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "}\n", 3, undef], "token";

is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["nop", "nop"], "token";
is_deeply	drop($s), [":", ":"], "token";

is_deeply	drop($s), ["LINE", "macro m1 {\n", 1, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  ld a,1 : ld b,2\n", 2, undef], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["a", "a"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 1], "token";
is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["b", "b"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 2], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "}\n", 3, undef], "token";

is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["nop", "nop"], "token";
is_deeply	drop($s), ["\n", "\n"], "token";

is_deeply	drop($s), ["LINE", "macro m2 x y { ld x,y }\n", 7, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "  m2 a,{2,3} : nop : m2 a+{2,3},{{2}}\n", 8, undef], "token";

is_deeply	drop($s), ["LINE", "macro m2 x y { ld x,y }\n", 7, undef], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["a", "a"], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 2], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 3], "token";

is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["nop", "nop"], "token";
is_deeply	drop($s), [":", ":"], "token";

is_deeply	drop($s), ["LINE", "macro m2 x y { ld x,y }\n", 7, undef], "token";
is_deeply	drop($s), ["ld", "ld"], "token";
is_deeply	drop($s), ["a", "a"], "token";
is_deeply	drop($s), ["+", "+"], "token";
is_deeply	drop($s), ["NUMBER", 2], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["NUMBER", 3], "token";
is_deeply	drop($s), [",", ","], "token";
is_deeply	drop($s), ["{", "{"], "token";
is_deeply	drop($s), ["NUMBER", 2], "token";
is_deeply	drop($s), ["}", "}"], "token";

is_deeply	drop($s), ["\n", "\n"], "token";

is_deeply	drop($s), ["LINE", "macro m3 x,y\n", 9, undef], "token";
is_deeply	drop($s), ["LINE", "L1 jr x : jr y : L2 jp L3\n", 10, undef], "token";
is_deeply	drop($s), ["LINE", "endm\n", 11, undef], "token";

is_deeply	drop($s), ["\n", "\n"], "token";

is_deeply	drop($s), ["LINE", "  m3 L1,L3\n", 12, undef], "token";

is_deeply	drop($s), ["LINE", "macro m3 x,y\n", 9, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "L1 jr x : jr y : L2 jp L3\n", 10, undef], "token";
is_deeply	drop($s), ["NAME", "_macro_6_L1"], "token";
is_deeply	drop($s), ["jr", "jr"], "token";
is_deeply	drop($s), ["NAME", "_macro_6_L1"], "token";
is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["jr", "jr"], "token";
is_deeply	drop($s), ["NAME", "L3"], "token";
is_deeply	drop($s), [":", ":"], "token";
is_deeply	drop($s), ["NAME", "_macro_6_L2"], "token";
is_deeply	drop($s), ["jp", "jp"], "token";
is_deeply	drop($s), ["NAME", "L3"], "token";
is_deeply	drop($s), ["\n", "\n"], "token";
is_deeply	drop($s), ["LINE", "endm\n", 11, undef], "token";
is_deeply	drop($s), ["\n", "\n"], "token";

is			drop($s), undef, "eoi";
is			drop($s), undef, "eoi";

#show($s,10); die dump($s),"\n";

__DATA__
macro m1 {
  ld a,1 : ld b,2
}
  nop
  m1
  nop : m1 : nop : m1 : nop
macro m2 x y { ld x,y }
  m2 a,{2,3} : nop : m2 a+{2,3},{{2}}
macro m3 x,y
L1 jr x : jr y : L2 jp L3
endm
  m3 L1,L3
