#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 9;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start", "", 'sub {1}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
ok $input = list_to_stream(), "empty input";
is Parser::parse($input), 1, "null stream OK";

ok $input = list_to_stream([NUMBER => 10, $line]), "not empty input";
eval {Parser::parse($input)};
is $@, "f1.asm 3: Error: Parse error, expected EOF at NUMBER\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
