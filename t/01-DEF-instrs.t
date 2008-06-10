#!perl

use warnings;
use strict;
use CPU::Z80::Assembler;

use Test::More tests => 100;

is_deeply(z80asm('
    ORG 0x08
    DEFW $$
'), chr(8).chr(0), "ORG");
is_deeply(z80asm('
    ORG 0x08
    DEFW $$
    DEFW $$
'), chr(8).chr(0).chr(10).chr(0), '$$');





exit(0);
z80asm('
    ORG 0x08
      DEFT "flibertigibbet", 65, 0x42, 0b01000011
      DEFB 65
      DEFW 0x4243
      DEFW $org
      DEFW $$
      NOP
      DEFW $other
    $label = $$
    $other = (2 + $label)/2
      DEFW $other
      NOP
;      INC A
      DEFT "start", 1, 2, ;3
');
