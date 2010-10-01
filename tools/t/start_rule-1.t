#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 27;

use_ok 'Asm::Preproc::Stream';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("name		NAME	", 	'', 'sub {$_[ARGS][0][1]}');
$g->add_rule("number	NUMBER	", 	'', 'sub {$_[ARGS][0][1]}');
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;
my $user;

isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input, $user, "name")};
is $@, "error: expected NAME at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input, $user, "number")};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input, $user, "norule")};
like $@, qr/rule 'norule' not found/, "parse error";


isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line)),
 			'Asm::Preproc::Stream';
is Parser::parse($input), "a", "parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line)),
 			'Asm::Preproc::Stream';
is Parser::parse($input, $user, "name"), "a", "parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NAME	=> "a",	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input, $user, "number")};
is $@, "f1.asm(3) : error: expected NUMBER at NAME\n", "parse error";


isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 24,	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected NAME at NUMBER\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 24,	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input, $user, "name")};
is $@, "f1.asm(3) : error: expected NAME at NUMBER\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 24,	$line)),
 			'Asm::Preproc::Stream';
is Parser::parse($input, $user, "number"), 24, "parse OK";


# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
