#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 25;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("name		NAME	", 	'', 'sub {$_[ARGS][0][1]}');
$g->add_rule("number	NUMBER	", 	'', 'sub {$_[ARGS][0][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
my $user;

ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input)};
is $@, "Error: Parse error, expected NAME at EOF\n", "parse error";

ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input, $user, "name")};
is $@, "Error: Parse error, expected NAME at EOF\n", "parse error";

ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input, $user, "number")};
is $@, "Error: Parse error, expected NUMBER at EOF\n", "parse error";

ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input, $user, "norule")};
like $@, qr/rule 'norule' not found/, "parse error";


ok $input = list_to_stream(
				[NAME => "a", $line],
			), "name input";
is Parser::parse($input), "a", "parse OK";

ok $input = list_to_stream(
				[NAME => "a", $line],
			), "name input";
is Parser::parse($input, $user, "name"), "a", "parse OK";

ok $input = list_to_stream(
				[NAME => "a", $line],
			), "name input";
eval {Parser::parse($input, $user, "number")};
is $@, "f1.asm 3: Error: Parse error, expected NUMBER at NAME\n", "parse error";


ok $input = list_to_stream(
				[NUMBER => 24, $line],
			), "number input";
eval {Parser::parse($input)};
is $@, "f1.asm 3: Error: Parse error, expected NAME at NUMBER\n", "parse error";

ok $input = list_to_stream(
				[NUMBER => 24, $line],
			), "number input";
eval {Parser::parse($input, $user, "name")};
is $@, "f1.asm 3: Error: Parse error, expected NAME at NUMBER\n", "parse error";

ok $input = list_to_stream(
				[NUMBER => 24, $line],
			), "number input";
is Parser::parse($input, $user, "number"), 24, "parse OK";


# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
