#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 11;
use_ok 'CPU::Z80::Assembler::Line';

my $line;
isa_ok 	$line = CPU::Z80::Assembler::Line->new(),
		'CPU::Z80::Assembler::Line';
is		$line->text, 	undef, 		"no text";
is		$line->line_nr, undef, 		"no line_nr";
is		$line->file, 	undef, 		"no file";

is		"$line", '[undef, undef, undef]', "string";


isa_ok 	$line = CPU::Z80::Assembler::Line->new( 
									file => "f1", text => "text\n", line_nr => 3 ),
		'CPU::Z80::Assembler::Line';
is		$line->text, 	"text\n", 	"text";
is		$line->line_nr, 3, 			"line_nr";
is		$line->file, 	"f1", 		"file";

is		"$line", '["text\\n", 3, "f1"]', "string";


