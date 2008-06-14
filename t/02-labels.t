#!perl

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose = 1;

use Test::More tests => 3;

is_deeply(z80asm('
    ORG 0x08
    DEFW $org
    DEFW $org
'), chr(8).chr(0).chr(8).chr(0), "ORG");
is_deeply(z80asm('
    ORG 0x08
    DEFW $$
    DEFW $$
'), chr(8).chr(0).chr(10).chr(0), '$$');

is_deeply(z80asm('
    ORG 0x08
    DEFW $forward
    $forward = 0x6789
'), chr(0x89).chr(0x67), "forward definition");
