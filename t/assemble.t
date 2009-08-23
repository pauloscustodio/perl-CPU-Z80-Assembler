#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 7;
use File::Slurp;
use File::Spec;

my $infile =  't/data/test_z80.asm';
my $bmkfile = 't/data/test_z80.obj';
my $outfile = 't/test_z80.o';

	unlink $outfile;
ok 	-f $infile, "$infile exists";
ok 	-f $bmkfile, "$bmkfile exists";
ok	! -f $outfile, "$outfile does not exist";
is	system($^X, '-I'.File::Spec->catfile("blib", "lib"), 
			         File::Spec->catfile("blib", "script", "z80masm"),
			         $infile, $outfile), 0, 
	"z80masm $infile $outfile";
ok 	-f $outfile, "$outfile exists";
ok 	read_file($outfile, binmode => ':raw') eq
	read_file($bmkfile, binmode => ':raw'), "$outfile eq $bmkfile";
	unlink $outfile;
ok	! -f $outfile, "$outfile deleted";	
