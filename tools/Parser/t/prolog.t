#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 5;

use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->prolog('our $COUNT;');
$g->epilog('$COUNT++;');
$g->add_rule("start", "NAME", "=", "NUMBER", 'sub {$_[0][2][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

is $Parser::COUNT, 1, "prolog and epilog OK";
is $Parser::COUNT, 1, "prolog and epilog OK"; # use twice to avoid Name "Parser::COUNT" used only once

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
