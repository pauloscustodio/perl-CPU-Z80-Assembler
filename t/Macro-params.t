#!perl

# $Id$

use warnings;
use strict;
use CPU::Z80::Assembler;
$CPU::Z80::Assembler::verbose = 1 if $ENV{DEBUG};

use Test::More tests => 15;

my($bin1, $bin2);

ok $bin1 = z80asm('
MACRO HLAGH {
  DEFW $rr
  LD A, 0
$rr
}
HLAGH
'), "Macro without parameters";
ok $bin2 = z80asm('
  DEFW $rr
  LD A, 0
$rr
'), "expanded macro";
is $bin1, $bin2, "macro expansion OK";


ok $bin1 = z80asm('
MACRO HLAGH $r {
  DEFW $rr
  LD A, $r
$rr
}
HLAGH C
'), "Macro parameter names don't clash with labels that start with them";
ok $bin2 = z80asm('
  DEFW $rr
  LD A, C
$rr
'), "expanded macro";
is $bin1, $bin2, "macro expansion OK";


ok $bin1 = z80asm('
MACRO HLAGH $r1,$r2 {
  DEFW $rr
  LD $r1, $r2
$rr
}
HLAGH A, C
'), "Macro with 2 parameters";
ok $bin2 = z80asm('
  DEFW $rr
  LD A, C
$rr
'), "expanded macro";
is $bin1, $bin2, "macro expansion OK";


ok $bin1 = z80asm('
MACRO HLAGH $r1,$r2,$r3 {
  DEFW $rr
  LD $r1, $r2
  LD $r2, $r3
$rr
}
HLAGH A, C, D
'), "Macro with 3 parameters";
ok $bin2 = z80asm('
  DEFW $rr
  LD A, C
  LD C, D
$rr
'), "expanded macro";
is $bin1, $bin2, "macro expansion OK";


ok $bin1 = z80asm('
MACRO HLAGH $r1 {
  LD $r1
}
HLAGH { A, C }
'), "Braces in macro argument";
ok $bin2 = z80asm('
  LD A, C
'), "expanded macro";
is $bin1, $bin2, "macro expansion OK";


