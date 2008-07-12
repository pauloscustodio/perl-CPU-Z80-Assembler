#!perl

# $Id$

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose =1;

use Test::More tests => 31;

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

is_deeply(z80asm("DEFT ''\nDEFT 'text'"), "text", "DEFT ''");
is_deeply(z80asm("DEFT 'text'"), "text", "DEFT 'text'");
is_deeply(z80asm("DEFT 'text';cock"), "text", "DEFT 'text';comment");
is_deeply(z80asm('DEFT "text", 0x45'), "text".chr(0x45), 'DEFT "text", byte');
is_deeply(z80asm("DEFT 'text', 0x45"), "text".chr(0x45), "DEFT 'text', byte");
is_deeply(z80asm("DEFT 'te;xt'"), "te;xt", "DEFT 'te;xt'");

is_deeply(z80asm("DEFM ''\nDEFM 'text'"), "text", "DEFM ''");
is_deeply(z80asm("DEFM 'text'"), "text", "DEFM 'text'");
is_deeply(z80asm("DEFM 'text';cock"), "text", "DEFM 'text';comment");
is_deeply(z80asm('DEFM "text", 0x45'), "text".chr(0x45), 'DEFM "text", byte');
is_deeply(z80asm("DEFM 'text', 0x45"), "text".chr(0x45), "DEFM 'text', byte");
is_deeply(z80asm("DEFM 'te;xt'"), "te;xt", "DEFM 'te;xt'");

is_deeply(z80asm("ORG 0x1234\nDEFW \$\$"),
          chr(0x34).chr(0x12),
          'DEFW $$');
is_deeply(z80asm("ORG 0x4567\nDEFW \$\$ + 2"),
          chr(0x69).chr(0x45),
          'DEFW $$+2');
is_deeply(z80asm("\$hlagh = 0x27\nDEFB \$hlagh"),
          chr(0x27),
          'DEFB $label');

is	z80asm(" ORG 0x1234 : DEFW \$,\$,\$ : DEFW \$,\$,\$ "), 
	"\x34\x12\x34\x12\x34\x12\x3A\x12\x3A\x12\x3A\x12", "\$ invariant";

is 	z80asm(" DEFB 'hello',0x20,'worl','c'+1 "), "hello world", "mixed text and expressions";
is 	z80asm(" DEFB 'hello',0x20,'worl',1+'c' "), "hello world", "mixed text and expressions";
is 	z80asm(" DEFT 'hello',0x20,'worl','c'+1 "), "hello world", "mixed text and expressions";
is 	z80asm(" DEFT 'hello',0x20,'worl',1+'c' "), "hello world", "mixed text and expressions";
is 	z80asm(" DEFB ('hello'*2) & 0xFF "), chr( ( ( ord('h') + (ord('e')<<8) ) * 2 ) & 0xFF ), 
												"compute with strings";
