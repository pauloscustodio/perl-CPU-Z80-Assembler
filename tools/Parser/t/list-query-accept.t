#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 11;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("num", "NUMBER", 'sub {$_[1][0][1]}');
$g->add_rule("start", "[num]?", 'sub {$_[1]}');
$g->start_rule("start");
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
ok $input = list_to_stream(), "empty input";
is_deeply Parser::parse($input), [], "parse OK";

ok $input = list_to_stream(
				[NUMBER => 10, $line],
			), "full input";
is_deeply Parser::parse($input), [10], "parse OK";

ok $input = list_to_stream(
				[NUMBER => 10, $line],
				[NUMBER => 11, $line],
			), "extra input";
eval {Parser::parse($input)};
is $@, "f1.asm 3: Error: Parse error, expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
