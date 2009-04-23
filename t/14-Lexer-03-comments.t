#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 62;

use_ok	'CPU::Z80::Assembler::Lexer';
use_ok	'HOP::Stream', 'drop', 'head';

require 't/test_utils.pl';
our $stream;


isa_ok	$stream = z80lexer("23;comment\n"),
		'HOP::Stream';

test_token_line(	"23;comment\n", 1, undef);
test_token(	"NUMBER",  	"23");
test_token(	"\n", 		"\n");
test_eof();


isa_ok	$stream = z80lexer("23;comment"),
		'HOP::Stream';

test_token_line(	"23;comment\n", 1, undef);
test_token(	"NUMBER",  	"23");
test_token(	"\n", 		"\n");
test_eof();


is		$stream = z80lexer("#define 23"), undef, "end of input";
is		$stream = z80lexer(" #define 23"), undef, "end of input";
is		$stream = z80lexer(" # define 23"), undef, "end of input";

is		$stream = z80lexer("#define 23\n"), undef, "end of input";
is		$stream = z80lexer(" #define 23\n"), undef, "end of input";
is		$stream = z80lexer(" # define 23\n"), undef, "end of input";

isa_ok	$stream = z80lexer("#define 23\n\n"),
		'HOP::Stream';

test_token_line(	"\n", 2, undef);
test_token(	"\n", 		"\n");

test_eof();
