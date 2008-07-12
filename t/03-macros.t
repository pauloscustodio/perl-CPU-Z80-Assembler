#!perl

# $Id$

use warnings;
use strict;
use CPU::Z80::Assembler;
$CPU::Z80::Assembler::verbose = 1;

use Test::More tests => 3;

ok(
    z80asm('
        MACRO HLAGH r {
          $rr
          DEFW 0
          LD A, $r
        }
        HLAGH C
    '),
    "Macro parameter names don't clash with labels that start with them"
);
ok(
    z80asm('
        MACRO MUL8x8 target, r1, r2 {   ; takes three reg parms, multiplies r1
	  PUSH HL                       ; and r2 with result into target
          PUSH AF
          PUSH BC
          PUSH DE
          LD B, $r1
          LD E, $r2
          LD HL, 0
          LD D, 0
        $mulloop
          ADD HL, DE
          DJNZ $mulloop
	  LD ($mulstore), HL
          JR $mulexit
        $mulstore
          DEFW 0
        $mulexit
          POP DE
          POP BC
          POP AF
          POP HL
          LD $target, ($mulstore)
        }
        MUL8x8 HL, C, E
    ') eq z80asm('
          PUSH HL
          PUSH AF
          PUSH BC
          PUSH DE
          LD B, C
          LD E, E
          LD HL, 0
          LD D, 0
        $mulloop
          ADD HL, DE
          DJNZ $mulloop
	  LD ($mulstore), HL
          JR $mulexit
        $mulstore
          DEFW 0
        $mulexit
          POP DE
          POP BC
          POP AF
          POP HL
          LD HL, ($mulstore)
    '),
    'Macros work'
);
ok(
    z80asm('
        MACRO HLAGH {
          LD A,A
        $label
          DEFW $label
        }
        HLAGH
        HLAGH
    ') eq z80asm('
          LD A,A
          DEFW $$
          LD A,A
          DEFW $$
    '),
    'And can use the same labels without squishing each other'
);
