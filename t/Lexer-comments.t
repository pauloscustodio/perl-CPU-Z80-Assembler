#!perl

# $Id$

use warnings;
use strict;

use Test::More;

use_ok	'CPU::Z80::Assembler';
use_ok	'Asm::Preproc::Stream';

require_ok 't/test_utils.pl';
our $stream;


isa_ok	$stream = z80lexer("23;comment\n"),
		'Asm::Preproc::Stream';

test_token_line(	"23;comment\n", 1, "-");
test_token(	"NUMBER",  	"23");
test_token(	"\n", 		"\n");
test_eof();


isa_ok	$stream = z80lexer("23;comment"),
		'Asm::Preproc::Stream';

test_token_line(	"23;comment\n", 1, "-");
test_token(	"NUMBER",  	"23");
test_token(	"\n", 		"\n");
test_eof();


is		z80lexer("#define 23")->get, undef, "end of input";
is		z80lexer(" #define 23")->get, undef, "end of input";
is		z80lexer(" # define 23")->get, undef, "end of input";

is		z80lexer("#define 23\n")->get, undef, "end of input";
is		z80lexer(" #define 23\n")->get, undef, "end of input";
is		z80lexer(" # define 23\n")->get, undef, "end of input";

done_testing();