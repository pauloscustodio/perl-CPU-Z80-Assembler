#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 24;
use_ok 'CPU::Z80::Assembler::Segment';
use_ok 'CPU::Z80::Assembler::Expr';
use_ok 'CPU::Z80::Assembler::Opcode';
use_ok 'CPU::Z80::Assembler::Lexer';

our $stream;
my %symbols = ( va => 51 );

isa_ok		my $expr = CPU::Z80::Assembler::Expr->new(type => "w"),
			'CPU::Z80::Assembler::Expr';

$stream = z80lexer('$+va');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate(10,\%symbols), 10+51, "eval expr";


isa_ok		my $segment = CPU::Z80::Assembler::Segment->new(name => "CODE"),
			'CPU::Z80::Assembler::Segment';
is_deeply	$segment->child,	[], 	"no children";


$segment->push_child(CPU::Z80::Assembler::Opcode->new(child => [1,2,3]));
$segment->push_child(CPU::Z80::Assembler::Opcode->new(child => [4,$expr,undef]));
$segment->push_child(CPU::Z80::Assembler::Opcode->new(child => [5,6,7]));

eval {$segment->size};
like		$@, qr/^size not computed yet at/, "invalid size";

$segment->address(undef);
$segment->link;
is			$segment->address, 0, "allocated address";
is			$segment->child->[0]->address, 0, "allocated address";
is			$segment->child->[1]->address, 3, "allocated address";
is			$segment->child->[2]->address, 6, "allocated address";
is			$segment->size, 9, "size";

$symbols{va} = 51;
is 			$segment->bytes(\%symbols), "\x01\x02\x03\x04".chr(3+51).chr(0)."\x05\x06\x07",
			"bytes";

$symbols{va} = 11;
is 			$segment->bytes(\%symbols), "\x01\x02\x03\x04".chr(3+11).chr(0)."\x05\x06\x07",
			"bytes";

$segment->address(10);
$segment->link;
is			$segment->address, 10, "allocated address";
is			$segment->child->[0]->address, 10, "allocated address";
is			$segment->child->[1]->address, 13, "allocated address";
is			$segment->child->[2]->address, 16, "allocated address";
is			$segment->size, 9, "size";

$symbols{va} = 51;
is 			$segment->bytes(\%symbols), "\x01\x02\x03\x04".chr(13+51).chr(0)."\x05\x06\x07",
			"bytes";

$symbols{va} = 11;
is 			$segment->bytes(\%symbols), "\x01\x02\x03\x04".chr(13+11).chr(0)."\x05\x06\x07",
			"bytes";
