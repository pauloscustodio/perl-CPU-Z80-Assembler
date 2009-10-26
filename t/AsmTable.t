#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 13;

use_ok 'CPU::Z80::Assembler::AsmTable';

is_deeply 
	asm_table()->{asm}{"adc"}{"a"}{","}{"("}{"hl"}{")"}{""},
	[0x8E];
is_deeply 
	asm_table()->{disasm}{0x8E}{""},
	["adc", "a", ",", "(", "hl", ")"];

is_deeply 
	asm_table()->{asm}{"adc"}{"a"}{","}{"N"}{""},
	[0xCE, "N"];
is_deeply 
	asm_table()->{disasm}{0xCE}{"N"}{""},
	["adc", "a", ",", "N"];
	
is_deeply 
	asm_table()->{asm}{"call"}{"NN"}{""},
	[0xCD, "NNl", "NNh"];
is_deeply 
	asm_table()->{disasm}{0xCD}{"NNl"}{"NNh"}{""},
	["call", "NN"];
	
is_deeply 
	asm_table()->{asm}{"jr"}{"NN"}{""},
	[0x18, "NNo"];
is_deeply 
	asm_table()->{disasm}{0x18}{"NNo"}{""},
	["jr", "NN"];
	
is_deeply 
	asm_table()->{asm}{"adc"}{"a"}{","}{"("}{"ix"}{"+"}{"DIS"}{")"}{""},
	[0xDD, 0x8E, "DIS"];
is_deeply 
	asm_table()->{disasm}{0xDD}{0x8E}{"DIS"}{""},
	["adc", "a", ",", "(", "ix", "+", "DIS", ")"];
	
is_deeply 
	asm_table()->{asm}{"adc"}{"a"}{","}{"("}{"ix"}{"-"}{"NDIS"}{")"}{""},
	[0xDD, 0x8E, "NDIS"];
is_deeply 
	asm_table()->{disasm}{0xDD}{0x8E}{"NDIS"}{""},
	["adc", "a", ",", "(", "ix", "-", "NDIS", ")"];
