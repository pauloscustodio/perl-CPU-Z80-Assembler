#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 17;
use Data::Dump 'pp';

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

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

ok $input = list_to_stream(
				[NAME => "a", $line], 
			), "name";
is_deeply Parser::parse($input), [
				[NAME => "a", $line],
			], "parse ok";

ok $input = list_to_stream(
				["+"  => "+", $line], 
				[NAME => "a", $line], 
			), "+name";
is_deeply Parser::parse($input), [
				["+"  => "+", $line], 
				[NAME => "a", $line], 
			], "parse ok";

ok $input = list_to_stream(
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
			), "+-name";
is_deeply Parser::parse($input), [
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
			], "parse ok";

ok $input = list_to_stream(
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NUMBER => 1, $line], 
			), "+-name+-number";
is_deeply Parser::parse($input), [
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NUMBER => 1, $line], 
			], "parse ok";

ok $input = list_to_stream(
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NUMBER => 1, $line], 
				["*"  => "*", $line], 
				["-"  => "-", $line], 
				[NAME => "b", $line], 
			), "+-name+-number*-name";
is_deeply Parser::parse($input), [
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NUMBER => 1, $line], 
				["*"  => "*", $line], 
				["-"  => "-", $line], 
				[NAME => "b", $line], 
			], "parse ok";

ok $input = list_to_stream(
				["("  => "(", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NUMBER => 1, $line], 
				["*"  => "*", $line], 
				["-"  => "-", $line], 
				[NAME => "b", $line], 
				[")"  => ")", $line], 
			), "+-name+-number*-name";
is_deeply Parser::parse($input), [
				["("  => "(", $line], 
				["-"  => "-", $line], 
				[NAME => "a", $line], 
				["+"  => "+", $line], 
				["-"  => "-", $line], 
				[NUMBER => 1, $line], 
				["*"  => "*", $line], 
				["-"  => "-", $line], 
				[NAME => "b", $line], 
				[")"  => ")", $line], 
			], "parse ok";
