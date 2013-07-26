#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 23;

use_ok 'Iterator::Simple::Lookahead';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("expr", "NAME", "=", "NUMBER", 'sub {$_[0][2][1]}');
$g->add_rule("expr", "NAME", "=", "NAME", 'sub {$_[0][2][1]}');
$g->add_rule("start", "[expr]", '', 'sub {$_[0][0]}');
$g->start_rule("start");
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;
isa_ok $input = Iterator::Simple::Lookahead->new(),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "error: expected \"=\" at EOF\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("="	=> "=",	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "error: expected one of (NAME NUMBER) at EOF\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("="	=> "=",	$line),
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), 10, "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("="	=> "=",	$line),
				Asm::Preproc::Token->new(NUMBER	=> 22,	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), 22, "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("="	=> "=",	$line),
				Asm::Preproc::Token->new(NAME	=> "a",	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), "a", "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("="	=> "=",	$line),
				Asm::Preproc::Token->new(NAME	=> "b",	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), "b", "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("="	=> "=",	$line),
				Asm::Preproc::Token->new(NUMBER	=> 22,	$line),
				Asm::Preproc::Token->new(NUMBER	=> 23,	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
