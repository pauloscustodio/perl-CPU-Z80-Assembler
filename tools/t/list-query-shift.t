#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 21;

use_ok 'Iterator::Simple::Lookahead';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("num", "NUMBER", 'sub {$_[0][0][1]}');
$g->add_rule("start", "[num]?", ";", '', 'sub {$_[0][0]}');
$g->start_rule("start");
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;
isa_ok $input = Iterator::Simple::Lookahead->new(),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "error: expected \";\" at EOF\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "error: expected \";\" at EOF\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), 10, "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NUMBER	=> 11,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), 11, "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NUMBER	=> 11,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line),
				Asm::Preproc::Token->new("."	=> ".",	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at \".\"\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), 
				Asm::Preproc::Token->new(";"	=> ";",	$line), 
			"parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(";"	=> ";",	$line),
				Asm::Preproc::Token->new("."	=> ".",	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at \".\"\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};

