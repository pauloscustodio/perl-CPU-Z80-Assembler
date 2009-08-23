#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 19;

use_ok 'CPU::Z80::Assembler::Stream';
use_ok 'CPU::Z80::Assembler::Token';
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start", "NAME", "=", "NUMBER", '', 'sub {$_[0][2][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = CPU::Z80::Assembler::Line->new(
								text => "text\n", line_nr => 3, file => "f1.asm"), 
		'CPU::Z80::Assembler::Line';

my $input;
isa_ok $input = CPU::Z80::Assembler::Stream->new(),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "error: expected \"=\" at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line)
			),
 			'CPU::Z80::Assembler::Stream';
is Parser::parse($input), 10, "parse OK";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 22, line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
is Parser::parse($input), 22, "parse OK";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 22, line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 23, line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "\ttext\nf1.asm(3) : error: expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
