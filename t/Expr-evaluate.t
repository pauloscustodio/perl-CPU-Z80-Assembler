#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 51;
use_ok 'CPU::Z80::Assembler::Expr';
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Lexer';
use_ok 'CPU::Z80::Assembler::Stream';
require_ok 't/test_utils.pl';

our $stream;

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


isa_ok		my $dollar = CPU::Z80::Assembler::Expr->new,
			'CPU::Z80::Assembler::Expr';
$stream = z80lexer('$');
ok 			$stream = $dollar->parse($stream), "parse expr";
is			$dollar->evaluate(0), 0, "eval";
is			$dollar->evaluate(1), 1, "eval";
is			$dollar->evaluate(11), 11, "eval";

$stream = z80lexer('10+$');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate(0), 10, "eval";
is			$expr->evaluate(1), 11, "eval";
is			$expr->evaluate(11), 21, "eval";

my %symbols = ( va => 51, vb => $dollar, vc => $expr );

$stream = z80lexer('10+va');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate(0, \%symbols), 61, "eval";
is			$expr->evaluate(1, \%symbols), 61, "eval";

$stream = z80lexer('10+vb');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate(0, \%symbols), 10, "eval";
is			$expr->evaluate(1, \%symbols), 11, "eval";

$stream = z80lexer('""');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate, 0, "eval";

$stream = z80lexer("''");
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate, 0, "eval";

$stream = z80lexer('"A"');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate, ord('A'), "eval";

$stream = z80lexer('"AZ"');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$expr->evaluate, ord('A') + (ord('Z') << 8), "eval";

$stream = z80lexer('"AZY"');
ok 			$stream = $expr->parse($stream), "parse expr";
is			$warn, undef, "no warnings";
is			$expr->evaluate, ord('A') + (ord('Z') << 8), "eval";
is			$warn, "\t\"AZY\"\ninput(1) : warning: Expression AZY: extra bytes ignored\n", "warning";
$warn = undef;

$stream = z80lexer('10+vc');
ok 			$stream = $expr->parse($stream), "parse expr";
eval {$expr->evaluate(0, \%symbols)};
is			$@, "\t10+vc\ninput(1) : error: Circular reference computing 'vc'\n",
			"circular reference";

$stream = z80lexer('10+vd');
ok 			$stream = $expr->parse($stream), "parse expr";
eval {$expr->evaluate(0, \%symbols)};
is			$@, "\t10+vd\ninput(1) : error: Symbol 'vd' not defined\n",
			"undefined";

$stream = z80lexer('10/(51-va)');
ok 			$stream = $expr->parse($stream), "parse expr";
eval {$expr->evaluate(0, \%symbols)};
is			$@, "\t10/(51-va)\ninput(1) : error: Expression '10 / ( 51 - 51 )': Illegal division by zero\n",
			"division by zero";

$stream = z80lexer('10+');
eval { $expr->parse($stream) };
is			$@, "\t10+\ninput(1) : error: expected one of (\"(\" NAME NUMBER STRING) at \"\\n\"\n",
			"syntax error";

$stream = z80lexer('10+hl');
eval { $expr->parse($stream) };
is			$@, "\t10+hl\ninput(1) : error: expected one of (\"(\" NAME NUMBER STRING) at hl\n",
			"syntax error";

