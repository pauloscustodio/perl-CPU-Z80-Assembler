#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 9;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

# no name / no file
isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

eval { $g->write() };
like $@, qr/^ParserGenerator::write: name not defined/, "no name";

eval { $g->write('Parser') };
like $@, qr/^ParserGenerator::write: file not defined/, "no file";

# empty ParserGenerator
$g->write('Parser', 'Parser.pm');
ok -f 'Parser.pm', "created file";

# create a parser
use_ok 'Parser';

ok my $input = list_to_stream(), "empty input";

eval {Parser::parse($input)};
is $@, "Error: Parse error, expected one of () at EOF\n", "parsed empty stream";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
