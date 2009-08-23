#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 13;

use_ok 'CPU::Z80::Assembler::Stream';
use_ok 'CPU::Z80::Assembler::Token';
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

# insert the number just read in the input stream as name
$g->prolog('use CPU::Z80::Assembler::Stream;');
$g->add_rule('const
					NUMBER',
					'sub {
						$_[INPUT]->unget(CPU::Z80::Assembler::Token->new(
										type  => "NAME",
										value => "v".$_[ARGS][0]->value,
										line  => CPU::Z80::Assembler::Line->new(
													text	=> "text\n", 
													line_nr	=> 3, 
													file 	=> "f1.asm")));
						undef;
					}');
$g->add_rule('start 
					[const] NAME', '', 
					'sub {$_[ARGS]}');
$g->start_rule('start');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = CPU::Z80::Assembler::Line->new(
								text => "text\n", line_nr => 3, file => "f1.asm"), 
		'CPU::Z80::Assembler::Line';

my $input;
isa_ok $input = CPU::Z80::Assembler::Stream->new(),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line), 
			),
 			'CPU::Z80::Assembler::Stream';
is_deeply Parser::parse($input), [
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "v10", line => $line), 
			], "parse OK";

isa_ok $input = CPU::Z80::Assembler::Stream->new(
				CPU::Z80::Assembler::Token->new(type => 'NUMBER', value => 10, line => $line), 
				CPU::Z80::Assembler::Token->new(type => 'NAME', value => "a", line => $line), 
			),
 			'CPU::Z80::Assembler::Stream';
eval {Parser::parse($input)};
is $@, "\ttext\nf1.asm(3) : error: expected EOF at NAME\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
