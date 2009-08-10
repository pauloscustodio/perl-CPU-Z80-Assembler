#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 28;
use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Parser';
use_ok 'CPU::Z80::Assembler::Lexer';
require_ok 't/test_utils.pl';

# _check_end
our $stream;
is CPU::Z80::Assembler::Parser::_check_end($stream), undef, "empty input";

$stream = z80lexer(
'#line 1 "FILE"
nop:ccf
');

eval {CPU::Z80::Assembler::Parser::_check_end($stream)};
is $@, "\tnop:ccf\nFILE(1) : error: End of statement expected\n", "_check_end not end";

test_token_line("nop:ccf\n", 1, "FILE");
test_token("nop", "nop");

ok $stream = CPU::Z80::Assembler::Parser::_check_end($stream), "get :";
test_token("ccf", "ccf");

is $stream = CPU::Z80::Assembler::Parser::_check_end($stream), undef, "get \\n";
test_eof();
