#!perl

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose =1;

use Test::More tests => 100;

is_deeply(z80asm('DEFB 0x45'),       chr(0x45), 'hex  DEFB');
is_deeply(z80asm('DEFB 69'),         chr(0x45), 'dec  DEFB');
is_deeply(z80asm('DEFB 0b01000101'), chr(0x45), 'bin  DEFB');
is_deeply(z80asm('DEFB 0105'),       chr(0x45), 'oct  DEFB');
is_deeply(z80asm('DEFB 68+1'),       chr(0x45), 'calc DEFB');

is_deeply(z80asm('DEFW 0x4645'),             chr(0x45).chr(0x46), 'hex  DEFW');
is_deeply(z80asm('DEFW 17989'),              chr(0x45).chr(0x46), 'dec  DEFW');
is_deeply(z80asm('DEFW 0b0100011001000101'), chr(0x45).chr(0x46), 'bin  DEFB');
is_deeply(z80asm('DEFW 043105'),             chr(0x45).chr(0x46), 'oct  DEFB');
is_deeply(z80asm('DEFW 17988+1'),            chr(0x45).chr(0x46), 'calc DEFW');

is_deeply(z80asm('DEFT "text", 0x45'), "text".chr(0x45), 'DEFT "text", byte');
is_deeply(z80asm("DEFT 'text', 0x45"), "text".chr(0x45), "DEFT 'text', byte");
