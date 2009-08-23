#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 15;
use_ok 'CPU::Z80::Assembler::Stream';

my $s;

# new without arguments

isa_ok	$s = CPU::Z80::Assembler::Stream->new(),
		'CPU::Z80::Assembler::Stream';

is	$s->head,		undef, 	"head";
is 	$s->get,		undef, 	"get";
is	$s->head,		undef, 	"head";

$s->unget(1..3);

is	$s->head,		1, 		"head";
is 	$s->get,		1, 		"get";

is	$s->head,		2, 		"head";
is 	$s->get,		2, 		"get";

is	$s->head,		3, 		"head";
is 	$s->get,		3, 		"get";

is	$s->head,		undef,	"head";
is 	$s->get,		undef,	"get";

is	$s->head,		undef,	"head";
is 	$s->get,		undef,	"get";
