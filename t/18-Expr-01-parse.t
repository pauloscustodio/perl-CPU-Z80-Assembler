#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 201;
use_ok 'HOP::Stream', 'list_to_stream';
use_ok 'CPU::Z80::Assembler::Expr';
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Lexer';
require_ok 't/test_utils.pl';

my $warn; 
$SIG{__WARN__} = sub {$warn = shift};
END { is $warn, undef, "no warnings"; }

# construct
isa_ok		my $line = CPU::Z80::Assembler::Line->new(
						text => "hello\n", line_nr => 10, file => "f.asm" ),
			'CPU::Z80::Assembler::Line';

isa_ok		my $expr = CPU::Z80::Assembler::Expr->new(line => $line),
			'CPU::Z80::Assembler::Expr';
is_deeply	$expr->child,	[], 	"no children";
is			$expr->line->text, 		"hello\n", 	"line text";
is			$expr->line->line_nr, 	10, 		"line line_nr";
is			$expr->line->file, 		"f.asm", 	"line file";
is			$expr->evaluate, 0,			"empty expression is 0";

# parse
our $stream;
$stream = z80lexer(
'#line 1 "FILE"
2+3:');
test_token_line("2+3:\n", 1, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"2+3:\n", 	"line text";
is			$expr->line->line_nr, 	1,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token(":", ":");
$stream = list_to_stream(@{$expr->child});
test_token('NUMBER', 2);
test_token("+", "+");
test_token('NUMBER', 3);
test_eof();
is			$expr->evaluate, 2+3,		"eval expression";


$stream = z80lexer(
'#line 2 "FILE"
4+5');
test_token_line("4+5\n", 2, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"4+5\n", 	"line text";
is			$expr->line->line_nr, 	2,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token("\n", "\n");
$stream = list_to_stream(@{$expr->child});
test_token('NUMBER', 4);
test_token("+", "+");
test_token('NUMBER', 5);
test_eof();
is			$expr->evaluate, 4+5,		"eval expression";

$stream = z80lexer(
'#line 3 "FILE"
6+7)
');
test_token_line("6+7)\n", 3, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"6+7)\n", 	"line text";
is			$expr->line->line_nr, 	3,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token(")", ")");
$stream = list_to_stream(@{$expr->child});
test_token('NUMBER', 6);
test_token("+", "+");
test_token('NUMBER', 7);
test_eof();
is			$expr->evaluate, 6+7,		"eval expression";

$stream = z80lexer(
'#line 3 "FILE"
6+7]
');
test_token_line("6+7]\n", 3, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"6+7]\n", 	"line text";
is			$expr->line->line_nr, 	3,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token("]", "]");
$stream = list_to_stream(@{$expr->child});
test_token('NUMBER', 6);
test_token("+", "+");
test_token('NUMBER', 7);
test_eof();
is			$expr->evaluate, 6+7,		"eval expression";

$stream = z80lexer(
'#line 3 "FILE"
6+7,
');
test_token_line("6+7,\n", 3, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"6+7,\n", 	"line text";
is			$expr->line->line_nr, 	3,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token(",", ",");
$stream = list_to_stream(@{$expr->child});
test_token('NUMBER', 6);
test_token("+", "+");
test_token('NUMBER', 7);
test_eof();
is			$expr->evaluate, 6+7,		"eval expression";

$stream = undef;
eval {$expr->parse($stream)};
is $@, "Error: Parse error, expected one of (\"(\" NAME NUMBER STRING) at EOF\n", "expression not found";
is			$expr->evaluate, 0,			"eval expression";


$stream = z80lexer(
'#line 4 "FILE"
,
');
eval {$expr->parse($stream)};
is $@, "FILE 4: Error: Parse error, expected one of (\"(\" NAME NUMBER STRING) at \",\"\n", "expression not found";
is			$expr->evaluate, 0,			"eval expression";


$stream = z80lexer('(6]');
eval {$expr->parse($stream)};
is $@, "input 1: Error: Parse error, expected \")\" at \"]\"\n", "Unbalanced parentheses";
is			$expr->evaluate, 0,			"eval expression";


$stream = z80lexer('(6');
eval {$expr->parse($stream)};
is $@, "input 1: Error: Parse error, expected \")\" at \"\\n\"\n", "Unbalanced parentheses";
is			$expr->evaluate, 0,			"eval expression";


