#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 29;

use_ok 'CPU::Z80::Assembler::Program';
use_ok 'CPU::Z80::Assembler::Line';
require_ok 't/test_utils.pl';

isa_ok		my $program = CPU::Z80::Assembler::Program->new(),
			'CPU::Z80::Assembler::Program';

isa_ok my $line1 = CPU::Z80::Assembler::Line->new(
									text 	=> "s1:\n",
									line_nr => 1, 
									file 	=> "f.asm"),
			'CPU::Z80::Assembler::Line';
$program->add_label("s1", $line1);

isa_ok 	$program->symbols->{s1}, 				'CPU::Z80::Assembler::Opcode';
is		$program->symbols->{s1}->line->text, 	"s1:\n",	"text";
is		$program->symbols->{s1}->line->line_nr, 1,			"line_nr";
is		$program->symbols->{s1}->line->file, 	"f.asm",	"file";

$program->add_opcodes(opcodes('A', 2));

isa_ok my $line5a = CPU::Z80::Assembler::Line->new(
									text 	=> "s1:\n",
									line_nr => 5, 
									file 	=> "f.asm"),
			'CPU::Z80::Assembler::Line';
eval {$program->add_label("s1", $line5a)};
is $@, "\ts1:\nf.asm(5) : error: duplicate label definition\n", "duplicate label";

isa_ok my $line5b = CPU::Z80::Assembler::Line->new(
									text 	=> "s5:\n",
									line_nr => 5, 
									file 	=> "f.asm"),
			'CPU::Z80::Assembler::Line';
$program->add_label("s5", $line5b);

isa_ok 	$program->symbols->{s5}, 				'CPU::Z80::Assembler::Opcode';
is		$program->symbols->{s5}->line->text, 	"s5:\n",	"text";
is		$program->symbols->{s5}->line->line_nr, 5,			"line_nr";
is		$program->symbols->{s5}->line->file, 	"f.asm",	"file";


is		$program->bytes, "ABC", "bytes";
is		$program->symbols->{s1}->evaluate, 0,	"label value";
is		$program->symbols->{s5}->evaluate, 3,	"label value";
