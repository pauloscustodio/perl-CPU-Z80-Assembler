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

# insert the number just read in the input stream as name
$g->prolog('use Iterator::Simple::Lookahead;');
$g->add_rule('const
					NUMBER',
					'sub {
						$_[INPUT]->unget(Asm::Preproc::Token->new(
										NAME => "v".$_[ARGS][0]->value,
										Asm::Preproc::Line->new(
													"text\n", "f1.asm", 3)));
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
isa_ok $input = Iterator::Simple::Lookahead->new(),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line)),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new(NAME	=> "v10",	$line), 
			], "parse OK";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line)),
 			'Iterator::Simple::Lookahead';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at NAME\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
