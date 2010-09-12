#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 15;

use_ok 'CPU::Z80::Assembler::Token';
use_ok 'Asm::Preproc::Stream';
use_ok 'Asm::Preproc::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start", "NAME", ["\n"], '', 'sub {$_[0][0][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;
isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected \"\\n\" at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "\n", value => "\n", line => $line),
			),
 			'Asm::Preproc::Stream';
is Parser::parse($input), "a", "parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "\n", value => "\n", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 23, line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
