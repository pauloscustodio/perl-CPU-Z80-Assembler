#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 13;

use_ok 'CPU::Z80::Assembler::Token';
use_ok 'Asm::Preproc::Stream';
use_ok 'Asm::Preproc::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

# insert the number just read in the input stream as name
$g->prolog('use Asm::Preproc::Stream;');
$g->add_rule('const
					NUMBER',
					'sub {
						$_[INPUT]->unget(CPU::Z80::Assembler::Token->new(
										type  => "NAME",
										value => "v".$_[ARGS][0]->value,
										line  => Asm::Preproc::Line->new("text\n", "f1.asm", 3)));
						undef;
					}');
$g->add_rule('start 
					[const] NAME', '', 
					'sub {$_[ARGS]}');
$g->start_rule('start');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;
isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line), 
			),
 			'Asm::Preproc::Stream';
is_deeply Parser::parse($input), [
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "v10", line => $line), 
			], "parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line), 
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
			),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at NAME\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
