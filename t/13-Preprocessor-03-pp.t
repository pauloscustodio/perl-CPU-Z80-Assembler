#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 34;
use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Preprocessor';
use_ok 'HOP::Stream', 'drop', 'list_to_stream';

require 't/test_utils.pl';
our $stream;

isa_ok	$stream = z80preprocessor(
			"li", "ne 1, no", " file\n",
			"line 2, no file\nline 3, no file\n%li",
			"ne 1+1 file", ".asm\nfile.asm:1: line",
			" 1\nfile.asm:2: line 2\n#li",
			"ne 8 \"z.asm\"\n",
			"z.asm:8: line 8\nz.asm:9: line 9"),
		'HOP::Stream';

test_line(	"line 1, no file\n", 		1, 	undef);
test_line(	"line 2, no file\n", 		2, 	undef);
test_line(	"line 3, no file\n", 		3, 	undef);
test_line(	"file.asm:1: line 1\n", 	1, 	"file.asm");
test_line(	"file.asm:2: line 2\n", 	2, 	"file.asm");
test_line(	"z.asm:8: line 8\n", 		8, 	"z.asm");
test_line(	"z.asm:9: line 9\n",		9, 	"z.asm");
test_eof();
