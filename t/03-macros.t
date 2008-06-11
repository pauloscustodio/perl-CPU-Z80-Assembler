#!perl

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose =1;

use Test::More tests => 2;

ok(
    z80asm('
        : MUL8x8        ; takes three reg parms, multiplies 2 and 3,
                        ; putting result into 1
          PUSH HL
          PUSH AF
          PUSH BC
          PUSH DE
          LD B, $_2
          LD E, $_3
          LD HL, 0
          LD D, 0
        $mulloop
          ADD HL, DE
          DJNZ $mulloop
          POP DE
          POP BC
          POP AF
          POP HL
          JR $mulexit
        $mulstore
          DEFW 0
        $mulexit
          LD $_1, ($mulstore)
        :
        MUL8x8 HL, C, E
    ') == z80asm('
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
          POP DE
          POP BC
          POP AF
          POP HL
          JR $mulexit
        $mulstore
          DEFW 0
        $mulexit
          LD HL, ($mulstore)
    '),
    'Macros work'
);
ok(
    z80asm('
        : HLAGH
          LD A,A
        $label
          DEFW $label
        :
        HLAGH
        HLAGH
    ') == z80asm('
          LD A,A
        $label1
          DEFW $label1
          LD A,A
        $label2
          DEFW $label2
    '),
    'And can use the same labels without squishing each other'
);
