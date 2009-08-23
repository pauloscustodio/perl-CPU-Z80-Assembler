#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 23;
use_ok 'CPU::Z80::Assembler::Program';

isa_ok my $program = CPU::Z80::Assembler::Program->new,
		'CPU::Z80::Assembler::Program';

my @segment;
is scalar(@{$program->child}), 1, "start with one segment";
is $program->child->[0]->name, "", "empty name";
is $program->child->[0], $program->cur_segment, "empty name";

isa_ok $segment[0] = $program->cur_segment, 'CPU::Z80::Assembler::Segment';
is $segment[0]->name, "", "empty name";
is_deeply $program->child, \@segment, "list of segments ok";
is $program->cur_segment, $segment[0], "same segment";

isa_ok $segment[1] = $program->cur_segment("CODE"), 'CPU::Z80::Assembler::Segment';
is $segment[1]->name, "CODE", "name";
is_deeply $program->child, \@segment, "list of segments ok";
is $program->cur_segment, $segment[1], "same segment";

isa_ok $segment[2] = $program->cur_segment("DATA"), 'CPU::Z80::Assembler::Segment';
is $segment[2]->name, "DATA", "name";
is_deeply $program->child, \@segment, "list of segments ok";
is $program->cur_segment, $segment[2], "same segment";

is $program->cur_segment(""), $segment[0], "reuse segment";
is_deeply $program->child, \@segment, "list of segments ok";

is $program->cur_segment("CODE"), $segment[1], "reuse segment";
is_deeply $program->child, \@segment, "list of segments ok";

is $program->cur_segment("DATA"), $segment[2], "reuse segment";
is_deeply $program->child, \@segment, "list of segments ok";

