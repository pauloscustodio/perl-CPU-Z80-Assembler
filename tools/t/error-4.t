#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 7;

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
eval { $g->write('Parser', 'Parser.pm') };
like $@, qr/^ParserGenerator::write: start state not found/, "no name";

ok ! -f 'Parser.pm', "created no file";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
