#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 13;
use_ok 'CPU::Z80::Assembler::Stream';

my $s;

# iterator

isa_ok	$s = CPU::Z80::Assembler::Stream->new(1..3),
		'CPU::Z80::Assembler::Stream';

is ref(my $it = $s->iterator), 'CODE', "iterator is code ref";

is	$s->head,		1, 		"head";
is 	$it->(), 		1, 		"iterator get";

is	$s->head,		2, 		"head";
is 	$it->(), 		2, 		"iterator get";

is	$s->head,		3, 		"head";
is 	$it->(), 		3, 		"iterator get";

is	$s->head,		undef,	"head";
is 	$s->get,		undef,	"get";

is	$s->head,		undef,	"head";
is 	$s->get,		undef,	"get";
