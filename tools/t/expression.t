#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 19;
use Data::Dump 'pp';

use_ok 'Iterator::Simple::Lookahead';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;

# expression grammar
$g->add_rule('unop', 
					['-', '+', '!', '~'], 
					'sub {$_[ARGS][0]}');
$g->add_rule('binop', 
					['*', '/', '%', 
					 '+', '-', 
					 '<<', '>>', 
					 '<', '>', '<=', '>=', 
					 '==', '!=', 
					 '&', '|', '^', 
					 '&&', '||'], 
					'sub {$_[ARGS][0]}');
$g->add_rule('term
					[unop]*', ['NUMBER', 'NAME'],
					'sub {$_[ARGS]}');
$g->add_rule('term
					[unop]* ( [expr] )',
					'sub {
						[ @{$_[ARGS]}[0 .. $#{$_[ARGS]} - 3], 	# unop*
						  $_[ARGS][-3],							# (
						  @{$_[ARGS][-2]},						# [expr]
						  $_[ARGS][-1],							# )
						]
					}');
$g->add_rule('term2
					[binop] [term]',
					'sub {[$_[ARGS][0], @{$_[ARGS][1]}]}');
$g->add_rule('expr
					[term] [term2]*',
					'sub {
						my @ret;
						for (@{$_[ARGS]}) {
							push(@ret, @$_);
						}
						\@ret;
					}');

# test
$g->start_rule('expr');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
			),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new(NAME	=> "a",	$line),
			], "parse ok";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
			),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
			], "parse ok";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
			),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
			], "parse ok";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NUMBER	=> 1,	$line), 
			),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NUMBER	=> 1,	$line), 
			], "parse ok";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NUMBER	=> 1,	$line), 
				Asm::Preproc::Token->new("*"	=> "*",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "b",	$line), 
			),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NUMBER	=> 1,	$line), 
				Asm::Preproc::Token->new("*"	=> "*",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "b",	$line), 
			], "parse ok";

isa_ok $input = Iterator::Simple::Lookahead->new(
				Asm::Preproc::Token->new("("	=> "(",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NUMBER	=> 1,	$line), 
				Asm::Preproc::Token->new("*"	=> "*",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "b",	$line), 
				Asm::Preproc::Token->new(")"	=> ")",	$line), 
			),
 			'Iterator::Simple::Lookahead';
is_deeply Parser::parse($input), [
				Asm::Preproc::Token->new("("	=> "(",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "a",	$line), 
				Asm::Preproc::Token->new("+"	=> "+",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NUMBER	=> 1,	$line), 
				Asm::Preproc::Token->new("*"	=> "*",	$line), 
				Asm::Preproc::Token->new("-"	=> "-",	$line), 
				Asm::Preproc::Token->new(NAME	=> "b",	$line), 
				Asm::Preproc::Token->new(")"	=> ")",	$line), 
			], "parse ok";
