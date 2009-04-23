#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 354;

use_ok	'CPU::Z80::Assembler::Lexer';
use_ok	'HOP::Stream', 'drop', 'head';

require 't/test_utils.pl';
our $stream;


isa_ok	$stream = z80lexer("%include 't/include3.z80'\n"),
		'HOP::Stream';

test_token_line(	"\tLD B,1\n", 1, 't/include3.z80');
test_token(	"ld", 		"ld");
test_token(	"b",  		"b");
test_token(	",",  		",");
test_token(	"NUMBER",  	"1");
test_token(	"\n", 		"\n");

test_token_line(	"\tLD A,1\n", 1, 't/include2.z80');
test_token(	"ld", 		"ld");
test_token(	"a",  		"a");
test_token(	",",  		",");
test_token(	"NUMBER",  	"1");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 1, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 2, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"\tLD A,3\n", 3, 't/include2.z80');
test_token(	"ld", 		"ld");
test_token(	"a",  		"a");
test_token(	",",  		",");
test_token(	"NUMBER",  	"3");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 1, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 2, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"\tLD A,5\n", 5, 't/include2.z80');
test_token(	"ld", 		"ld");
test_token(	"a",  		"a");
test_token(	",",  		",");
test_token(	"NUMBER",  	"5");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 1, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 2, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"\tLD A,7\n", 7, 't/include2.z80');
test_token(	"ld", 		"ld");
test_token(	"a",  		"a");
test_token(	",",  		",");
test_token(	"NUMBER",  	"7");
test_token(	"\n", 		"\n");

test_token_line(	"\tLD B,3\n", 3, 't/include3.z80');
test_token(	"ld", 		"ld");
test_token(	"b",  		"b");
test_token(	",",  		",");
test_token(	"NUMBER",  	"3");
test_token(	"\n", 		"\n");

test_eof();


isa_ok	$stream = z80lexer("%include 't/include.z80'"),
		'HOP::Stream';

test_token_line(	"NOP\n", 1, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_token_line(	"NOP\n", 2, 't/include.z80');
test_token(	"nop", 		"nop");
test_token(	"\n", 		"\n");

test_eof();
