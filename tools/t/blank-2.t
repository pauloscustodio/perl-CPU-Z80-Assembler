#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 13;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start
					NAME
			", ["\n"], '', 
			'sub {$_[0][0][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input)};
is $@, "Error: Parse error, expected NAME at EOF\n", "parse error";

ok $input = list_to_stream(
				[NAME => "a", $line],
			), "partial input";
eval {Parser::parse($input)};
is $@, "Error: Parse error, expected \"\\n\" at EOF\n", "parse error";

ok $input = list_to_stream(
				[NAME => "a", $line], 
				["\n" => "\n", $line],
			), "full input";
is Parser::parse($input), "a", "parse OK";

ok $input = list_to_stream(
				[NAME => "a", $line], 
				["\n" => "\n", $line],
				[NUMBER => 23, $line],
			), "extra input";
eval {Parser::parse($input)};
is $@, "f1.asm 3: Error: Parse error, expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
