# $Id$
use strict;

$^W=1;

use Test::More;
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD coverage" if $@;

plan tests => 8;
pod_coverage_ok();

#pod_coverage_ok("CPU::Z80::Assembler::Line");
#pod_coverage_ok("CPU::Z80::Assembler::Token");
#pod_coverage_ok("CPU::Z80::Assembler::Lexer");
#pod_coverage_ok("CPU::Z80::Assembler::Macro");
#pod_coverage_ok("CPU::Z80::Assembler::Parser");
#pod_coverage_ok("CPU::Z80::Assembler::Node");
#pod_coverage_ok("CPU::Z80::Assembler::Expr");
#pod_coverage_ok("CPU::Z80::Assembler");
