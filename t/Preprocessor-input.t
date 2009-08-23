#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 31;

use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Preprocessor';

isa_ok	my $i = CPU::Z80::Assembler::Preprocessor::_input_stream(),
		'CPU::Z80::Assembler::Stream';
is $i->get, undef, "empty list";
is $i->get, undef, "empty list";

isa_ok	$i = CPU::Z80::Assembler::Preprocessor::_input_stream(1..3,"4\r\r\n5\r\r\n6\r"),  
		'CPU::Z80::Assembler::Stream';
is $i->get, "1\n", "scalar list";
is $i->get, "2\n", "scalar list";
is $i->get, "3\n", "scalar list";
is $i->get, "4\n", "scalar list";
is $i->get, "5\n", "scalar list";
is $i->get, "6\n", "scalar list";
is $i->get, undef, "empty list";
is $i->get, undef, "empty list";

my @list = (1..3);
isa_ok	$i = CPU::Z80::Assembler::Preprocessor::_input_stream(sub {shift(@list)}),  
		'CPU::Z80::Assembler::Stream';
is $i->get, "1\n", "scalar list";
is $i->get, "2\n", "scalar list";
is $i->get, "3\n", "scalar list";
is $i->get, undef, "empty list";
is $i->get, undef, "empty list";

@list = (1..3);
isa_ok	$i = CPU::Z80::Assembler::Preprocessor::_input_stream(4..6,sub {shift(@list)},7..9),  
		'CPU::Z80::Assembler::Stream';
is $i->get, "4\n", "scalar list";
is $i->get, "5\n", "scalar list";
is $i->get, "6\n", "scalar list";
is $i->get, "1\n", "scalar list";
is $i->get, "2\n", "scalar list";
is $i->get, "3\n", "scalar list";
is $i->get, "7\n", "scalar list";
is $i->get, "8\n", "scalar list";
is $i->get, "9\n", "scalar list";
is $i->get, undef, "empty list";
is $i->get, undef, "empty list";

