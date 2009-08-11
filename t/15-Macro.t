#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 579;
use Data::Dump 'dump';

use_ok	'CPU::Z80::Assembler::Lexer';
use_ok	'HOP::Stream', 'head', 'drop', 'show';

require 't/test_utils.pl';
our $stream;

isa_ok	$stream = z80lexer(<DATA>), 'HOP::Stream';

test_token_line("macro m1 {\n", 1, undef);
test_token(	"\n", "\n");

test_token_line("  ld a,1 : ld b,2\n", 2, undef);
test_token(	"\n", "\n");

test_token_line("}\n", 3, undef);
test_token(	"\n", "\n");

test_token_line("  nop\n", 4, undef);
test_token(	"nop", "nop");
test_token(	"\n", "\n");

test_token_line("  m1\n", 5, undef);
test_token(	"\n", "\n");
test_token(	"ld", "ld");
test_token(	"a", "a");
test_token(	",", ",");
test_token(	"NUMBER", 1);
test_token(	":", ":");
test_token(	"ld", "ld");
test_token(	"b", "b");
test_token(	",", ",");
test_token(	"NUMBER", 2);
test_token(	"\n", "\n");

test_token_line("  m1\n", 5, undef);
test_token(	"\n", "\n");

test_token_line("  nop : m1 : nop : m1 : nop\n", 6, undef);
test_token(	"nop", "nop");
test_token(	":", ":");

test_token(	"\n", "\n");
test_token(	"ld", "ld");
test_token(	"a", "a");
test_token(	",", ",");
test_token(	"NUMBER", 1);
test_token(	":", ":");
test_token(	"ld", "ld");
test_token(	"b", "b");
test_token(	",", ",");
test_token(	"NUMBER", 2);
test_token(	"\n", "\n");

test_token(	":", ":");
test_token(	"nop", "nop");
test_token(	":", ":");

test_token(	"\n", "\n");
test_token(	"ld", "ld");
test_token(	"a", "a");
test_token(	",", ",");
test_token(	"NUMBER", 1);
test_token(	":", ":");
test_token(	"ld", "ld");
test_token(	"b", "b");
test_token(	",", ",");
test_token(	"NUMBER", 2);
test_token(	"\n", "\n");

test_token(	":", ":");
test_token(	"nop", "nop");
test_token(	"\n", "\n");

test_token_line("macro m2 x y { ld x,y }\n", 7, undef);
test_token(	"\n", "\n");

test_token_line("  m2 a,{2,3} : nop : m2 a+{2,3},{{2}}\n", 8, undef);

test_token(	"ld", "ld");
test_token(	"a", "a");
test_token(	",", ",");
test_token(	"NUMBER", 2);
test_token(	",", ",");
test_token(	"NUMBER", 3);

test_token(	":", ":");
test_token(	"nop", "nop");
test_token(	":", ":");

test_token(	"ld", "ld");
test_token(	"a", "a");
test_token(	"+", "+");
test_token(	"NUMBER", 2);
test_token(	",", ",");
test_token(	"NUMBER", 3);
test_token(	",", ",");
test_token(	"{", "{");
test_token(	"NUMBER", 2);
test_token(	"}", "}");

test_token(	"\n", "\n");

test_token_line("macro m3 x,y\n", 9, undef);
test_token(	"\n", "\n");

test_token_line("L1 jr x : jr y : L2 jp L3\n", 10, undef);
test_token(	"\n", "\n");

test_token_line("endm\n", 11, undef);
test_token(	"\n", "\n");

test_token_line("  m3 L1,L3\n", 12, undef);
test_token(	"\n", "\n");

test_token(	"NAME", "_macro_6_L1");
test_token(	"jr", "jr");
test_token(	"NAME", "_macro_6_L1");
test_token(	":", ":");
test_token(	"jr", "jr");
test_token(	"NAME", "L3");
test_token(	":", ":");
test_token(	"NAME", "_macro_6_L2");
test_token(	"jp", "jp");
test_token(	"NAME", "L3");
test_token(	"\n", "\n");

test_token_line("  m3 L1,L3\n", 12, undef);
test_token(	"\n", "\n");

test_eof();

#DEBUG: show($stream,5); die dump($stream),"\n";

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
