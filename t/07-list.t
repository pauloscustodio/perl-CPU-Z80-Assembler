#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 11;
use File::Slurp;
use File::Spec;

my $infile =  't/07-list.asm';
my $outfile = 't/07-list.o';
my $lstfile = 't/07-list.lst';

my $SRC = "
; comment
macro M1 {
	inc hl
	dec de
}
	org 0x100
	M1
	ld a,1 : ld b,2 : call 0x200 : call 0x1234 ; comment
	M1
";

my $LST = 
"0x0000:                                        | 
0x0000: ; comment                              | 
0x0000: macro M1 {                             | 
0x0000:         inc hl                         | 
0x0000:         dec de                         | 
0x0000: }                                      | 
0x0000:         org 0x100                      | 
0x0100:         M1                             | 
0x0100: macro M1 {                             | 
0x0100:         inc hl                         | 23 
0x0101:         dec de                         | 1B 
0x0102: }                                      | 
0x0102:         ld a,1 : ld b,2 : call 0x2 ... | 3E 01 06 02 CD 00 02 CD 34 
                                               | 12 
0x010C:         M1                             | 
0x010C: macro M1 {                             | 
0x010C:         inc hl                         | 23 
0x010D:         dec de                         | 1B 
0x010E: }                                      | 
";

my $OBJ = join("", map {chr(hex($_))} split(" ", "
			23 1B 3E 01 06 02 CD 00 02 CD 34 12 23 1B
"));


	write_file($infile, $SRC);
	unlink $outfile, $lstfile;
ok 	-f $infile, "$infile exists";
ok	! -f $outfile, "$outfile should not exist";
ok	! -f $lstfile, "$lstfile should not exist";

is	system($^X." -I".File::Spec->catfile("blib", "lib")." ". 
			         File::Spec->catfile("blib", "script", "z80masm")." ".
			         $infile." ".
			         $outfile." > ".$lstfile), 0, 
	"z80masm $infile $outfile > $lstfile";
ok 	-f $outfile, "$outfile exists";
ok 	-f $lstfile, "$lstfile exists";

is 	read_file($lstfile), $LST, "$lstfile OK";

is 	hexdump(read_file($outfile, binmode => ':raw')), 
	hexdump($OBJ), "$outfile OK";

	unlink($infile, $outfile, $lstfile) 
		if (read_file($lstfile) eq $LST && 
			read_file($outfile, binmode => ':raw') eq $OBJ);

ok	! -f $infile, "$infile deleted";
ok	! -f $outfile, "$outfile deleted";	
ok	! -f $lstfile, "$lstfile deleted";	

sub hexdump {
	return join(' ', map { sprintf("0x%02X", ord($_)) } split(//, shift));
}
