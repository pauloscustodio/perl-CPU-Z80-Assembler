#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 13;

use_ok 'HOP::Stream', qw( node drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

# check input stream after sucessful parse
isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start", "NAME", 'sub {$_[ARGS][0][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input)};
is $@, "Error: Parse error, expected NAME at EOF\n", "parse error";

ok $input = list_to_stream(
				[NAME => "a", $line],
			), "full input";
is Parser::parse($input), "a", "parse OK";
is $input, undef, "empty stream";

ok $input = list_to_stream(
				[NAME => "a", $line],
				[NAME => "b", $line],
			), "full input";
is Parser::parse($input), "a", "parse OK";
is_deeply $input, list_to_stream(
				[NAME => "b", $line],
			), "not empty stream";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
