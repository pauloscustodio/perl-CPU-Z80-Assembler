#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 29;

use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Lexer';
use_ok 'HOP::Stream', 'drop';

is	my $i = CPU::Z80::Assembler::Lexer::_input_stream(), undef, 'empty stream';
is drop($i), undef, "empty list";
is drop($i), undef, "empty list";

isa_ok	$i = CPU::Z80::Assembler::Lexer::_input_stream(1..3),  
		'HOP::Stream';
is drop($i), "1", "scalar list";
is drop($i), "2", "scalar list";
is drop($i), "3", "scalar list";
is drop($i), undef, "empty list";
is drop($i), undef, "empty list";

my @list = (1..3);
isa_ok	$i = CPU::Z80::Assembler::Lexer::_input_stream(sub {shift(@list)}),  
		'HOP::Stream';
is drop($i), "1", "scalar list";
is drop($i), "2", "scalar list";
is drop($i), "3", "scalar list";
is drop($i), undef, "empty list";
is drop($i), undef, "empty list";

@list = (1..3);
isa_ok	$i = CPU::Z80::Assembler::Lexer::_input_stream(4..6,sub {shift(@list)},7..9),  
		'HOP::Stream';
is drop($i), "4", "scalar list";
is drop($i), "5", "scalar list";
is drop($i), "6", "scalar list";
is drop($i), "1", "scalar list";
is drop($i), "2", "scalar list";
is drop($i), "3", "scalar list";
is drop($i), "7", "scalar list";
is drop($i), "8", "scalar list";
is drop($i), "9", "scalar list";
is drop($i), undef, "empty list";
is drop($i), undef, "empty list";

