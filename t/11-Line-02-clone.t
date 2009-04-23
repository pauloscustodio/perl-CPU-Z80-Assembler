#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 16;
use_ok 'CPU::Z80::Assembler::Line';

my $line;
my $line2;

isa_ok 	$line = CPU::Z80::Assembler::Line->new(
								file => "f1", text => "text\n", line_nr => 3 ),
		'CPU::Z80::Assembler::Line';
is		$line->text, 	"text\n", 	"text";
is		$line->line_nr, 3, 			"line_nr";
is		$line->file, 	"f1", 		"file";
is		"$line", '["text\\n", 3, "f1"]', "string";

isa_ok	$line2 = $line->clone,
		'CPU::Z80::Assembler::Line';
is		$line2->text, 	"text\n", 	"text";
is		$line2->line_nr, 3,			"line_nr";
is		$line2->file, 	"f1", 		"file";

$line->text(undef);
$line->line_nr(undef);
$line->file(undef);

is		$line->text, 	undef, 		"no text";
is		$line->line_nr, undef, 		"no line_nr";
is		$line->file, 	undef, 		"no file";

is		$line2->text, 	"text\n", 	"text";
is		$line2->line_nr, 3,			"line_nr";
is		$line2->file, 	"f1", 		"file";

