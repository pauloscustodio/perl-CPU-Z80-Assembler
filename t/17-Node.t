#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 15;
use_ok 'CPU::Z80::Assembler::Node';
use_ok 'CPU::Z80::Assembler::Line';

isa_ok		my $node = CPU::Z80::Assembler::Node->new(),
			'CPU::Z80::Assembler::Node';
is_deeply	$node->child,	[], 	"no children";
is			$node->line->text, 		undef, 	"no line";
is			$node->line->line_nr, 	undef, 	"no line";
is			$node->line->file, 		undef, 	"no line";

isa_ok		my $line = CPU::Z80::Assembler::Line->new(
						text => "hello\n", line_nr => 10, file => "f.asm" ),
			'CPU::Z80::Assembler::Line';

$node->line($line);
is			$node->line->text, 		"hello\n", 	"line text";
is			$node->line->line_nr, 	10, 		"line line_nr";
is			$node->line->file, 		"f.asm", 	"line file";

$node->push_child(1);
is_deeply	$node->child,	[1], 	"children";

$node->push_child(2,3);
is_deeply	$node->child,	[1,2,3],"children";

$node->set_child(3,2,1);
is_deeply	$node->child,	[3,2,1],"children";

$node->set_child();
is_deeply	$node->child,	[],		"children";
