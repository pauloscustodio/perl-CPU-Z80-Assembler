#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 9;

use_ok 'CPU::Z80::Assembler::Stream';
use_ok 'CPU::Z80::Assembler::Token';
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule('start', '', 'sub {1}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

my $token = undef; 

eval {Parser::_expected_error_at($token, 0)};
is $@, "error: expected start at EOF\n", "undef token";

$token = CPU::Z80::Assembler::Token->new(
							type 	=> 'NUMBER', 
							value 	=> 10, 
							line 	=> undef);

eval {Parser::_expected_error_at($token, 0)};
is $@, "error: expected start at NUMBER\n", "undef token";

$token = CPU::Z80::Assembler::Token->new(
							type 	=> 'NUMBER',
							value	=> 10, 
							line 	=> CPU::Z80::Assembler::Line->new(
												text 	=> "text\n", 
												line_nr	=> 3, 
												file 	=> "f1.asm"));

eval {Parser::_expected_error_at ($token, 0)};
is $@, "\ttext\nf1.asm(3) : error: expected start at NUMBER\n", "undef token";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
