#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 18;
use_ok 'CPU::Z80::Assembler::Stream';

my $s;
my @d1 = (4..6);
my @d2 = (1..3);

# iterator

isa_ok	$s = CPU::Z80::Assembler::Stream->new(sub {shift @d1}),
		'CPU::Z80::Assembler::Stream';

is	$s->head,		4, 		"head";
is 	$s->get,		4, 		"get";

is	$s->head,		5, 		"head";
is 	$s->get,		5, 		"get";

$s->unget(sub {shift @d2});

is	$s->head,		1, 		"head";
is 	$s->get,		1, 		"get";

is	$s->head,		2, 		"head";
is 	$s->get,		2, 		"get";

is	$s->head,		3, 		"head";
is 	$s->get,		3, 		"get";

is	$s->head,		6, 		"head";
is 	$s->get,		6, 		"get";

is	$s->head,		undef,	"head";
is 	$s->get,		undef,	"get";

is	$s->head,		undef,	"head";
is 	$s->get,		undef,	"get";

