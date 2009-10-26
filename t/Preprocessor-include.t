#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 81;
use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Preprocessor';
use_ok 'CPU::Z80::Assembler::Stream';

require_ok 't/test_utils.pl';
our $stream;


isa_ok	$stream = z80preprocessor('include "t/data/include.z80"'),
		'CPU::Z80::Assembler::Stream';

test_line(	"NOP\n", 		1, 	't/data/include.z80');
test_line(	"NOP\n", 		2, 	't/data/include.z80');
test_eof();


eval {	$stream = z80preprocessor('include "NOFILE"') };
is		$@, "\tinclude \"NOFILE\"\ninput(1) : error: open NOFILE: No such file or directory\n", "include NOFILE";

isa_ok	$stream = z80preprocessor('include "t/data/include3.z80"'),
		'CPU::Z80::Assembler::Stream';

test_line(	"\tLD B,1\n", 	1,	't/data/include3.z80');
test_line(	"\tLD A,1\n", 	1, 	't/data/include2.z80');
test_line(	"NOP\n",		1, 	't/data/include.z80');
test_line(	"NOP\n", 		2, 	't/data/include.z80');
test_line(	"\tLD A,3\n", 	3, 	't/data/include2.z80');
test_line(	"NOP\n", 		1, 	't/data/include.z80');
test_line(	"NOP\n", 		2, 	't/data/include.z80');
test_line(	"\tLD A,5\n", 	5, 	't/data/include2.z80');
test_line(	"NOP\n", 		1, 	't/data/include.z80');
test_line(	"NOP\n", 		2, 	't/data/include.z80');
test_line(	"\tLD A,7\n", 	7, 	't/data/include2.z80');
test_line(	"\tLD B,3\n", 	3, 	't/data/include3.z80');
test_eof();


isa_ok	$stream = z80preprocessor("%include 't/data/include.z80'"),
		'CPU::Z80::Assembler::Stream';

test_line(	"NOP\n", 		1, 	't/data/include.z80');
test_line(	"NOP\n", 		2, 	't/data/include.z80');
test_eof();
