#!perl

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose =1;

use Test::More tests => 5;

is	z80asm('
	ORG 0x1234
; Test ORG as first instruction
$start
	JP $start
'),
	"\xC3\x34\x12", "ORG as first instruction";

is	z80asm('
; Test ORG as not first instruction
	ORG 0x1234
$start
	JP $start
'),
	"\xC3\x34\x12", "ORG as second instruction";

eval { z80asm('
	NOP
; Test ORG after some code
	ORG 0x1234
$start
	JP $start
') };
like	$@, qr/ORG cannot change address/, "ORG must be first instruction";

is	z80asm('
	ORG 0x10
	DEFB 0x30, 0x31, 0x32, 0x33, 0x34
	ORG 0x15
	DEFB 0x35, 0x36, 0x37, 0x38, 0x39
	'), "\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39",
	"Re-org with same address";

eval { z80asm('
	ORG 0x10
	DEFB 0x30, 0x31, 0x32, 0x33, 0x34
	ORG 0x16
	DEFB 0x35, 0x36, 0x37, 0x38, 0x39
	') };
like $@, qr/ORG cannot change address/, "Re-org with different address";

