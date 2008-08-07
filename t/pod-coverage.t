# $Id$
use strict;

$^W=1;

use Test::More;
eval "use Test::Pod::Coverage 1.00";
plan skip_all => "Test::Pod::Coverage 1.00 required for testing POD coverage" if $@;

plan tests => 4;
pod_coverage_ok("CPU::Z80::Assembler::Lexer");
pod_coverage_ok("CPU::Z80::Assembler::Macro");
pod_coverage_ok("CPU::Z80::Assembler::Parser");
pod_coverage_ok("CPU::Z80::Assembler");