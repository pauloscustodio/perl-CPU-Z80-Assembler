#!perl

# $Id$

use warnings;
use strict;
use CPU::Z80::Assembler;
# $CPU::Z80::Assembler::verbose =1;

use Test::More tests => 66;

my $warn; 
$SIG{__WARN__} = sub {$warn = shift};
END { is $warn, undef, "no warnings"; }

is 	z80asm('DEFB 0x45'),       chr(0x45), 'hex  DEFB';
is 	z80asm('DEFB 69'),         chr(0x45), 'dec  DEFB';
is 	z80asm('DEFB 0b01000101'), chr(0x45), 'bin  DEFB';
is 	z80asm('DEFB 0105'),       chr(0x45), 'oct  DEFB';
is 	z80asm('DEFB 68+1'),       chr(0x45), 'calc DEFB';

is 	z80asm('DB 0x45'),       chr(0x45), 'hex  DEFB';
is 	z80asm('DB 69'),         chr(0x45), 'dec  DEFB';
is 	z80asm('DB 0b01000101'), chr(0x45), 'bin  DEFB';
is 	z80asm('DB 0105'),       chr(0x45), 'oct  DEFB';
is 	z80asm('DB 68+1'),       chr(0x45), 'calc DEFB';

is 	z80asm('DEFW 0x4645'),             	chr(0x45).chr(0x46), 'hex  DEFW';
is 	z80asm('DEFW 17989'),              	chr(0x45).chr(0x46), 'dec  DEFW';
is 	z80asm('DEFW 0b0100011001000101'), 	chr(0x45).chr(0x46), 'bin  DEFB';
is 	z80asm('DEFW 043105'),             	chr(0x45).chr(0x46), 'oct  DEFB';
is 	z80asm('DEFW 17988+1'),            	chr(0x45).chr(0x46), 'calc DEFW';

is 	z80asm('DW 0x4645'),             	chr(0x45).chr(0x46), 'hex  DEFW';
is 	z80asm('DW 17989'),              	chr(0x45).chr(0x46), 'dec  DEFW';
is 	z80asm('DW 0b0100011001000101'), 	chr(0x45).chr(0x46), 'bin  DEFB';
is 	z80asm('DW 043105'),             	chr(0x45).chr(0x46), 'oct  DEFB';
is 	z80asm('DW 17988+1'),            	chr(0x45).chr(0x46), 'calc DEFW';

is 	z80asm("DEFT ''\nDEFT 'text'"), 	"text", "DEFT ''";
is 	z80asm("DEFT 'text'"), 				"text", "DEFT 'text'";
is 	z80asm("DEFT 'text';cock"), 		"text", "DEFT 'text';comment";
is 	z80asm('DEFT "text", 0x45'), 		"text".chr(0x45), 'DEFT "text", byte';
is 	z80asm("DEFT 'text', 0x45"), 		"text".chr(0x45), "DEFT 'text', byte";
is 	z80asm("DEFT 'te;xt'"), 			"te;xt", "DEFT 'te;xt'";

is 	z80asm("DEFM ''\nDEFM 'text'"), 	"text", "DEFM ''";
is 	z80asm("DEFM 'text'"), 				"text", "DEFM 'text'";
is 	z80asm("DEFM 'text';cock"), 		"text", "DEFM 'text';comment";
is 	z80asm('DEFM "text", 0x45'), 		"text".chr(0x45), 'DEFM "text", byte';
is 	z80asm("DEFM 'text', 0x45"), 		"text".chr(0x45), "DEFM 'text', byte";
is 	z80asm("DEFM 'te;xt'"), 			"te;xt", "DEFM 'te;xt'";

is	z80asm("DEFM 0x12345678+0x12,0x12345678"), 
										"\x12\x34\x56".chr(0x78+0x12)."\x12\x34\x56\x78", 
										"DEFM long number";

is	z80asm("DEFM 'hello'+0x12,'world'"), 	"hell".chr(ord('o')+0x12)."world", "DEFM compute strings";
is	z80asm("DEFM ''+0x12,''"), 				chr(0x12), "DEFM compute empty strings";

is	z80asm("ORG 0x1234 : DEFM 0x12345678+(\$ & 0xFF),0x12345678"), "\x12\x34\x56".chr(0x78+0x34)."\x12\x34\x56\x78", "DEFM long number with expression";

is 	z80asm("DEFM 'hd'+1,'k'+1,'k'+1,'o'"),	"hello", "multiple DEFM expressions";

is 	z80asm("ORG 0x1234\nDEFW \$"),
          chr(0x34).chr(0x12),
          'DEFW $';
is 	z80asm("ORG 0x4567\nDEFW \$ + 2"),
          chr(0x69).chr(0x45),
          'DEFW $+2';
is 	z80asm("hlagh = 0x27\nDEFB hlagh"),
          chr(0x27),
          'DEFB label';

is	z80asm(" ORG 0x1234 : DEFW \$,\$,\$ : DEFW \$,\$,\$ "), 
	"\x34\x12\x34\x12\x34\x12\x3A\x12\x3A\x12\x3A\x12", "\$ invariant";

is	$warn, undef, "no warnings";

is 	z80asm("DEFB 'hello',0x20,'worl','c'+1"), "h wd", "mixed text and expressions";
is	$warn, "-(1) : warning: value 0x6F77 truncated to 0x77\n", "warning - value trucated";
$warn = undef;

is 	z80asm(" DEFT 'hello',0x20,'worl','c'+1 "), "hello world", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm("DEFB 'hello',0x20,'worl','c'+1"), "h wd", "mixed text and expressions";
is	$warn, "-(1) : warning: value 0x6F77 truncated to 0x77\n", "warning - value trucated";
$warn = undef;

is 	z80asm(" DEFT 'hello',0x20,'worl',1+'c' "), "hello world", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm("DEFB 'hello worlc'+1"), "i", "mixed text and expressions";
is	$warn, "-(1) : warning: value 0x6569 truncated to 0x69\n", "warning - value trucated";
$warn = undef;

is 	z80asm(" DEFT 'hello worlc'+1 "), "hello world", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm(" DEFB 'c'+1 "), "d", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm(" DEFT 'c'+1 "), "d", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm(" DEFB ''+1 "), "\x01", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm(" DEFT ''+1 "), "\x01", "mixed text and expressions";
is	$warn, undef, "no warnings";

is 	z80asm("DEFB ('hello'*2) & 0xFF "), chr( ( ( ord('h') + (ord('e')<<8) ) * 2 ) & 0xFF ), 
												"compute with strings";
is 	$warn, "-(1) : warning: Expression hello: extra bytes ignored\n", "warning";
$warn = undef;

is	$warn, undef, "no warnings";
