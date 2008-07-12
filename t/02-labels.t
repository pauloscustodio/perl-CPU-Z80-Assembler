#!perl

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose = 1;

use Test::More tests => 4;

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

is	z80asm('
		ORG 0x08
		DEFW $a, $b, $c
	$a = 2*$b
	$b = 3*$c
	$c:	DEFW $a, $b, $c
		'), "\x54\x00\x2A\x00\x0E\x00\x54\x00\x2A\x00\x0E\x00", "expression as foward reference";
