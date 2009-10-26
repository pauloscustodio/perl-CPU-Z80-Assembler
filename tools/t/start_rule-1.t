#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 27;

use_ok 'CPU::Z80::Assembler::Stream';
use_ok 'CPU::Z80::Assembler::Token';
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("name		NAME	", 	'', 'sub {$_[ARGS][0][1]}');
$g->add_rule("number	NUMBER	", 	'', 'sub {$_[ARGS][0][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = CPU::Z80::Assembler::Line->new(
								text => "text\n", line_nr => 3, file => "f1.asm"), 
		'CPU::Z80::Assembler::Line';

my $input;
my $user;

isa_ok $input = CPU::Z80::Assembler::Stream->new(),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input, $user, "name")};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input, $user, "number")};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input, $user, "norule")};
like $@, qr/rule 'norule' not found/, "parse error";


isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
is Parser::parse($input), "a", "parse OK";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
is Parser::parse($input, $user, "name"), "a", "parse OK";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input, $user, "number")};
is $@, "\ttext\nf1.asm(3) : error: expected NUMBER at NAME\n", "parse error";


isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 24, line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "\ttext\nf1.asm(3) : error: expected NAME at NUMBER\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 24, line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input, $user, "name")};
is $@, "\ttext\nf1.asm(3) : error: expected NAME at NUMBER\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 24, line => $line),
			),
 			'CPU::Z80::Assembler::Stream';
is Parser::parse($input, $user, "number"), 24, "parse OK";


# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
