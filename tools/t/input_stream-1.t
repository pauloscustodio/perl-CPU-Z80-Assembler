#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 11;

use_ok 'HOP::Stream', qw( node drop list_to_stream );
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';

# insert the number just read in the input stream as name
$g->prolog('use HOP::Stream qw( node );');
$g->add_rule('const
					NUMBER',
					'sub {
						$_[INPUT] = node([NAME => "v".$_[ARGS][0][VALUE], ["text\n", 3, "f1.asm"]],
										 $_[INPUT]);
						undef;
					}');
$g->add_rule('start 
					[const] NAME', '', 
					'sub {$_[ARGS]}');
$g->start_rule('start');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

ok my $line = ["text\n", 3, "f1.asm"], "dummy line";

my $input;
ok $input = list_to_stream(), "empty input";
eval {Parser::parse($input)};
is $@, "Error: Parse error, expected NUMBER at EOF\n", "parse error";

ok $input = list_to_stream(
				[NUMBER => 10, $line], 
			), "full input";
is_deeply Parser::parse($input), [
				[NAME => "v10", $line], 
			], "parse OK";

ok $input = list_to_stream(
				[NUMBER => 10, $line], 
				[NAME => "a", $line], 
			), "extra input";
eval {Parser::parse($input)};
is $@, "f1.asm 3: Error: Parse error, expected EOF at NAME\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
