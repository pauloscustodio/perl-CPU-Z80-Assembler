#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 23;

use_ok 'Asm::Preproc::Stream';
use_ok 'Asm::Preproc::Line';
use_ok 'Asm::Preproc::Token';
use_ok 'ParserGenerator';

unlink 'Parser.pm';

isa_ok my $g = ParserGenerator->new(), 'ParserGenerator';
$g->add_rule("num", "NUMBER", 'sub {$_[0][0][1]}');
$g->add_rule("start", "[num]+", ";", '', 'sub {$_[0]}');
$g->start_rule("start");
$g->write('Parser', 'Parser.pm');
use_ok 'Parser';

isa_ok my $line = Asm::Preproc::Line->new("text\n", "f1.asm", 3), 
		'Asm::Preproc::Line';

my $input;
isa_ok $input = Asm::Preproc::Stream->new(),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected NUMBER at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "error: expected \";\" at EOF\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Asm::Preproc::Stream';
is_deeply Parser::parse($input), [10, 
				Asm::Preproc::Token->new(";"	=> ";",	$line)], 
			"parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line),
				Asm::Preproc::Token->new(NUMBER	=> 11,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Asm::Preproc::Stream';
is_deeply Parser::parse($input), [10, 11, 
				Asm::Preproc::Token->new(";"	=> ";",	$line)], 
			"parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line),
				Asm::Preproc::Token->new(NUMBER	=> 11,	$line),
				Asm::Preproc::Token->new(NUMBER	=> 12,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Asm::Preproc::Stream';
is_deeply Parser::parse($input), [10, 11, 12, 
				Asm::Preproc::Token->new(";"	=> ";",	$line)], 
			"parse OK";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line),
				Asm::Preproc::Token->new(NUMBER	=> 11,	$line),
				Asm::Preproc::Token->new(NUMBER	=> 12,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line),
				Asm::Preproc::Token->new("."	=> ".",	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at \".\"\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(";"	=> ";",	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected NUMBER at \";\"\n", "parse error";

isa_ok $input = Asm::Preproc::Stream->new(
				Asm::Preproc::Token->new(NUMBER	=> 10,	$line),
				Asm::Preproc::Token->new(";"	=> ";",	$line),
				Asm::Preproc::Token->new("."	=> ".",	$line)),
 			'Asm::Preproc::Stream';
eval {Parser::parse($input)};
is $@, "f1.asm(3) : error: expected EOF at \".\"\n", "parse error";

# clean-up
unlink 'Parser.pm' unless $ENV{DEBUG};
