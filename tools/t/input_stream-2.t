#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 15;

use_ok 'Iterator::Simple::Lookahead';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

# check input stream after sucessful parse
isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start", "NAME", 'sub {$_[ARGS][0][1]}');
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
is Parser::parse($input), "a", "parse OK";
is $input->peek, undef, "empty stream";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line),
				Asm::Preproc::Token->new(NAME	=> "b",	$line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), "a", "parse OK";
is_deeply $input, Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "b",	$line)), 
			"not empty stream";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
