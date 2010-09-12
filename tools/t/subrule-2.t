#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 25;

use_ok 'CPU::Z80::Assembler::Token';
use_ok 'Asm::Preproc::Stream';
use_ok 'Asm::Preproc::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("expr", "NAME", "=", "NUMBER", 'sub {$_[0][2][1]}');
$g->add_rule("expr", "NAME", "=", "NAME", 'sub {$_[0][2][1]}');
$g->add_rule("start", "[expr]", ";", "[expr]", '', 'sub {[$_[0][0], $_[0][2]]}');
$g->start_rule("start");
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
is $@, "error: expected \"=\" at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected one of (NAME NUMBER) at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected \";\" at EOF\n", "parse error";
			
isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line),
				CPU::Z80::Assembler::Token->new(type => ";", value => ";", line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NAME at EOF\n", "parse error";
			
isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line),
				CPU::Z80::Assembler::Token->new(type => ";", value => ";", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected \"=\" at EOF\n", "parse error";
			
isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line),
				CPU::Z80::Assembler::Token->new(type => ";", value => ";", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "b", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected one of (NAME NUMBER) at EOF\n", "parse error";
			
isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line),
				CPU::Z80::Assembler::Token->new(type => ";", value => ";", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "b", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "c", line => $line), 
			),
 			'Asm::Preproc::Stream';
is_deeply Parser::parse($input), [10, "c"], "parse OK";
			
isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line),
				CPU::Z80::Assembler::Token->new(type => ";", value => ";", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "b", line => $line), 
				CPU::Z80::Assembler::Token->new(type => "=", value => "=", line => $line),
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "c", line => $line), 
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 23, line => $line),
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
