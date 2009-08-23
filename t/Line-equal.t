#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 23;
use_ok 'CPU::Z80::Assembler::Line';

my($line1, $line2);

sub is_equal {
	my $line = "(line ". (caller)[2] .")";
	ok	  $line1 == $line2,  "  == $line";
	ok	!($line1 != $line2), "! != $line";
}

sub is_different {
	my $line = "(line ". (caller)[2] .")";
	ok	  $line1 != $line2,  "  != $line";
	ok	!($line1 == $line2), "! == $line";
}


isa_ok 	$line1 = CPU::Z80::Assembler::Line->new(),
		'CPU::Z80::Assembler::Line';
isa_ok 	$line2 = CPU::Z80::Assembler::Line->new(),
		'CPU::Z80::Assembler::Line';

is_equal;

$line1->text("hello");
is_different;
$line2->text("hello world");
is_different;
$line1->text("hello world");
is_equal;

$line1->line_nr(11);
is_different;
$line2->line_nr(12);
is_different;
$line1->line_nr(12);
is_equal;

$line1->file("hello");
is_different;
$line2->file("hello world");
is_different;
$line1->file("hello world");
is_equal;

