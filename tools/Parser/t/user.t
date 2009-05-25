#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 11;

use_ok 'HOP::Stream', qw( drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("start", "NUMBER", 'sub {$_[1]{NUMBER} = $_[0][0][1]; undef}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
my $user = {};
ok $input = list_to_stream(
				[NUMBER => 10, $line]
			), "full input";
is Parser::parse($input, $user), undef, "parse OK";
is $user->{NUMBER}, 10, "user called";

ok $input = list_to_stream(
				[NUMBER => 11, $line]
			), "full input";
is Parser::parse($input, $user), undef, "parse OK";
is $user->{NUMBER}, 11, "user called";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
