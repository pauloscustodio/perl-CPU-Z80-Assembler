#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 408;
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

# parse / parse_optional
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
'#line 1 "FILE"
2+3:');
test_token_line("2+3:\n", 1, "FILE");
ok $stream = $expr->parse_optional($stream), "parse expr";
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

$stream = z80lexer(
'#line 3 "FILE"
(6+7,2),
');
test_token_line("(6+7,2),\n", 3, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"(6+7,2),\n", "line text";
is			$expr->line->line_nr, 	3,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token(",", ",");
$stream = list_to_stream(@{$expr->child});
test_token("(", "(");
test_token('NUMBER', 6);
test_token("+", "+");
test_token('NUMBER', 7);
test_token(",", ",");
test_token('NUMBER', 2);
test_token(")", ")");
test_eof();

$stream = z80lexer(
'#line 3 "FILE"
(6+[7],2),
');
test_token_line("(6+[7],2),\n", 3, "FILE");
ok $stream = $expr->parse($stream), "parse expr";
is			$expr->line->text, 		"(6+[7],2),\n", "line text";
is			$expr->line->line_nr, 	3,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token(",", ",");
$stream = list_to_stream(@{$expr->child});
test_token("(", "(");
test_token('NUMBER', 6);
test_token("+", "+");
test_token("[", "[");
test_token('NUMBER', 7);
test_token("]", "]");
test_token(",", ",");
test_token('NUMBER', 2);
test_token(")", ")");
test_eof();

$stream = undef;
eval {$expr->parse($stream)};
is $@, "error: Expression not found\n", "expression not found";
is			$expr->evaluate, 0,			"eval expression";

is $expr->parse_optional($stream), undef, "optional expr at eof";
$stream = list_to_stream(@{$expr->child});
test_token_line(undef, undef, undef);
test_token('NUMBER', 0);
test_eof();
is			$expr->evaluate, 0,			"eval expression";

$stream = z80lexer(
'#line 4 "FILE"
,
');
eval {$expr->parse($stream)};
is $@, "\t,\nFILE(4) : error: Expression not found\n", "expression not found";
is			$expr->evaluate, 0,			"eval expression";

test_token_line(",\n", 4, "FILE");
ok $stream = $expr->parse_optional($stream), "parse expr";
is			$expr->line->text, 		",\n", 		"line text";
is			$expr->line->line_nr, 	4,	 		"line line_nr";
is			$expr->line->file, 		"FILE", 	"line file";
test_token(",", ",");
$stream = list_to_stream(@{$expr->child});
test_token('NUMBER', 0);
test_eof();
is			$expr->evaluate, 0,			"eval expression";

$stream = z80lexer('(6]');
eval {$expr->parse($stream)};
is $@, "\t(6]\ninput(1) : error: Unbalanced parentheses\n", "Unbalanced parentheses";
is			$expr->evaluate, 0,			"eval expression";

$stream = z80lexer('[6)');
eval {$expr->parse($stream)};
is $@, "\t[6)\ninput(1) : error: Unbalanced parentheses\n", "Unbalanced parentheses";
is			$expr->evaluate, 0,			"eval expression";

$stream = z80lexer('[(6)');
eval {$expr->parse($stream)};
is $@, "\t[(6)\ninput(1) : error: Unbalanced parentheses\n", "Unbalanced parentheses";
is			$expr->evaluate, 0,			"eval expression";

