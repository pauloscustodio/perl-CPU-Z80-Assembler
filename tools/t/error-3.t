#!perl

# $Id$

use strict;
use warnings;

use Test::More;

use_ok 'ParserGenerator';

unlink 'Parser.pm';
my $warn; $SIG{__WARN__} = sub {$warn = shift};

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

# empty rule
eval { $g->add_rule() };
like $@, qr/add_rule : missing arguments/, "no rule name, no dependents, no action";

eval { $g->add_rule("start") };
like $@, qr/add_rule : missing arguments/, "no dependents, no action";

eval { $g->add_rule("start", "sub{1}") };
like $@, qr/add_rule : missing arguments/, "no dependents";

$g->add_rule("start", "", "sub{1}");

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};


done_testing();
