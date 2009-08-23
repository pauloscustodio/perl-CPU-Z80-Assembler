#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 34;
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Token';

my $token;
isa_ok 	$token = CPU::Z80::Assembler::Token->new(),
		'CPU::Z80::Assembler::Token';
is		$token->type,  			undef, "no type";
is		$token->value, 			undef, "no value";
isa_ok	$token->line,			'CPU::Z80::Assembler::Line';
is		$token->line->text, 	undef, "no line text";
is		$token->line->line_nr, 	undef, "no line line_nr";
is		$token->line->file, 	undef, "no line file";
is		"$token", '[undef, undef, [undef, undef, undef]]', "string";

my $line;
isa_ok	$line = CPU::Z80::Assembler::Line->new(
						text => "hello\n", line_nr => 10, file => "f.asm" ),
		'CPU::Z80::Assembler::Line';

isa_ok 	$token = CPU::Z80::Assembler::Token->new(
						type => "WORD", value => "hello", line => $line ),
		'CPU::Z80::Assembler::Token';
is		$token->type,  			"WORD", 	"type";
is		$token->value, 			"hello", 	"value";
is		$token->line->text, 	"hello\n", 	"line text";
is		$token->line->line_nr, 	10, 		"line line_nr";
is		$token->line->file, 	"f.asm", 	"line file";
is		"$token", '["WORD", "hello", ["hello\\n", 10, "f.asm"]]', "string";

my $token2;
isa_ok	$token2 = $token->clone,
		'CPU::Z80::Assembler::Token';
is		$token2->type,  		"WORD", 	"type";
is		$token2->value, 		"hello", 	"value";
is		$token2->line->text, 	"hello\n", 	"line text";
is		$token2->line->line_nr, 10, 		"line line_nr";
is		$token2->line->file, 	"f.asm", 	"line file";

$token->type('');
$token->value('');
$token->line->text('');
$token->line->line_nr('');
$token->line->file('');

is		$token2->type,  		"WORD", 	"type";
is		$token2->value, 		"hello", 	"value";
is		$token2->line->text, 	"hello\n", 	"line text";
is		$token2->line->line_nr, 10, 		"line line_nr";
is		$token2->line->file, 	"f.asm", 	"line file";

is		$token->type,  			'', "no type";
is		$token->value, 			'', "no value";
is		$token->line->text, 	'', 	"no line text";
is		$token->line->line_nr, 	'', "no line line_nr";
is		$token->line->file, 	'', 	"no line file";
