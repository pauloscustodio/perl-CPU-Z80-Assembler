#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 53;

use_ok	'CPU::Z80::Assembler::Lexer';
use_ok	'CPU::Z80::Assembler::Stream';

require_ok 't/test_utils.pl';
our $stream;


isa_ok	$stream = z80lexer("23;comment\n"),
		'CPU::Z80::Assembler::Stream';

test_token_line(	"23;comment\n", 1, undef);
test_token(	"NUMBER",  	"23");
test_token(	"\n", 		"\n");
test_eof();


isa_ok	$stream = z80lexer("23;comment"),
		'CPU::Z80::Assembler::Stream';

test_token_line(	"23;comment\n", 1, undef);
test_token(	"NUMBER",  	"23");
test_token(	"\n", 		"\n");
test_eof();


is		z80lexer("#define 23")->get, undef, "end of input";
is		z80lexer(" #define 23")->get, undef, "end of input";
is		z80lexer(" # define 23")->get, undef, "end of input";

is		z80lexer("#define 23\n")->get, undef, "end of input";
is		z80lexer(" #define 23\n")->get, undef, "end of input";
is		z80lexer(" # define 23\n")->get, undef, "end of input";

is		z80lexer("#define 23\n\n")->get, undef, "end of input";
