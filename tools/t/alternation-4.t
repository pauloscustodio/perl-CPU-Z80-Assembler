#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 13;

use_ok 'Iterator::Simple::Lookahead';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("name", "NAME", 'sub {$_[0][0][1]}');
$g->add_rule("start", "[name]", '', 'sub {$_[0][0]}');
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
				Asm::Preproc::Token->new(NAME	=> "a", $line)),
 			'Iterator::Simple::Lookahead';
is Parser::parse($input), "a", "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a", $line), 
				Asm::Preproc::Token->new("="	=> "=", $line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at \"=\"\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
