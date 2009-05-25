#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 7;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

# test wrong parsers
my $g;

isa_ok 	$g = ParserGenerator->new(), 'ParserGenerator';
		$g->add_rule(qw( start NUMBER = NAME sub{1} ));
		$g->add_rule(qw( start NUMBER = NUMBER sub{2} ));

isa_ok 	$g = ParserGenerator->new(), 'ParserGenerator';
		$g->add_rule(qw( start NUMBER sub{1} ));
eval { 	$g->add_rule(qw( start NUMBER = NAME sub{1} )); };
like 	$@, qr/^\Qleaf and node at (start : NUMBER) at/, "leaf and number";

isa_ok 	$g = ParserGenerator->new(), 'ParserGenerator';
		$g->add_rule(qw( start NUMBER sub{1} ));
eval { 	$g->add_rule(qw( start NUMBER sub{1} )); };
like 	$@, qr/^\Qleaf not unique at (start : NUMBER) at/, "leaf and number";
