#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 59;
use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Preprocessor';
use_ok 'CPU::Z80::Assembler::Stream';

require_ok 't/test_utils.pl';
our $stream;

isa_ok	my $input_strm = CPU::Z80::Assembler::Stream->new(
			"line 1, no file\n",
			"line 2, no file\n",
			"line 3, no file\n",
			"%line 1+1 file.asm\n",
			"file.asm:1: line 1\n",
			"file.asm:2: line 2\n",
			"#line 8 \"z.asm\"\n",
			"z.asm:8: line 8\n",
			"z.asm:9: line 9\n"), 
		'CPU::Z80::Assembler::Stream';

isa_ok	$stream = CPU::Z80::Assembler::Preprocessor::_line_stream($input_strm),
		'CPU::Z80::Assembler::Stream';

test_line(	"line 1, no file\n", 		1, 	undef);
test_line(	"line 2, no file\n", 		2, 	undef);
test_line(	"line 3, no file\n", 		3, 	undef);
test_line(	"file.asm:1: line 1\n", 	1, 	"file.asm");
test_line(	"file.asm:2: line 2\n", 	2, 	"file.asm");
test_line(	"z.asm:8: line 8\n", 		8, 	"z.asm");
test_line(	"z.asm:9: line 9\n",		9, 	"z.asm");
test_eof();


isa_ok	$input_strm = CPU::Z80::Assembler::Stream->new(
			"line 1, no file\n"), 
		'CPU::Z80::Assembler::Stream';

isa_ok	$stream = CPU::Z80::Assembler::Preprocessor::_line_stream($input_strm),
		'CPU::Z80::Assembler::Stream';

test_line(	"line 1, no file\n", 		1, 	undef);
test_eof();


isa_ok	$input_strm = CPU::Z80::Assembler::Stream->new(
			"line 1, no file\n",
			"line 2, no file\n"), 
		'CPU::Z80::Assembler::Stream';

isa_ok	$stream = CPU::Z80::Assembler::Preprocessor::_line_stream($input_strm),
		'CPU::Z80::Assembler::Stream';

test_line(	"line 1, no file\n", 		1, 	undef);
test_line(	"line 2, no file\n",		2, 	undef);
test_eof();
