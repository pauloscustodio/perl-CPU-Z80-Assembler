#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 416;

use_ok	'CPU::Z80::Assembler::Lexer';
use_ok	'HOP::Stream', 'drop';

#------------------------------------------------------------------------------
# test TOKENS
#------------------------------------------------------------------------------

isa_ok	my $s = z80lexer("%line 1+1 DATA\n", sub {<DATA>}),
		'HOP::Stream';

use Data::Dump 'dump'; print dump($s),"\n";
is_deeply	drop($s), ["LINE", "a adc add af af' af' and b bc bit c call ccf cp cpd cpdr cpi cpir \n", 1, "DATA"], "Line token";
is_deeply	drop($s), ["a", "a"], "a token";
is_deeply	drop($s), ["adc", "adc"], "adc token";
is_deeply	drop($s), ["add", "add"], "add token";
is_deeply	drop($s), ["af", "af"], "af token";
is_deeply	drop($s), ["af'", "af'"], "af' token";
is_deeply	drop($s), ["af'", "af'"], "af' token";
is_deeply	drop($s), ["and", "and"], "and token";
is_deeply	drop($s), ["b", "b"], "b token";
is_deeply	drop($s), ["bc", "bc"], "bc token";
is_deeply	drop($s), ["bit", "bit"], "bit token";
is_deeply	drop($s), ["c", "c"], "c token";
is_deeply	drop($s), ["call", "call"], "call token";
is_deeply	drop($s), ["ccf", "ccf"], "ccf token";
is_deeply	drop($s), ["cp", "cp"], "cp token";
is_deeply	drop($s), ["cpd", "cpd"], "cpd token";
is_deeply	drop($s), ["cpdr", "cpdr"], "cpdr token";
is_deeply	drop($s), ["cpi", "cpi"], "cpi token";
is_deeply	drop($s), ["cpir", "cpir"], "cpir token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "cpl d daa de dec di djnz e ei ex exx h halt hl i im \n", 2, "DATA"], "Line token";
is_deeply	drop($s), ["cpl", "cpl"], "cpl token";
is_deeply	drop($s), ["d", "d"], "d token";
is_deeply	drop($s), ["daa", "daa"], "daa token";
is_deeply	drop($s), ["de", "de"], "de token";
is_deeply	drop($s), ["dec", "dec"], "dec token";
is_deeply	drop($s), ["di", "di"], "di token";
is_deeply	drop($s), ["djnz", "djnz"], "djnz token";
is_deeply	drop($s), ["e", "e"], "e token";
is_deeply	drop($s), ["ei", "ei"], "ei token";
is_deeply	drop($s), ["ex", "ex"], "ex token";
is_deeply	drop($s), ["exx", "exx"], "exx token";
is_deeply	drop($s), ["h", "h"], "h token";
is_deeply	drop($s), ["halt", "halt"], "halt token";
is_deeply	drop($s), ["hl", "hl"], "hl token";
is_deeply	drop($s), ["i", "i"], "i token";
is_deeply	drop($s), ["im", "im"], "im token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "in inc ind indr ini inir ix iy jp jr l ld ldd lddr ldi ldir m \n", 3, "DATA"], "Line token";
is_deeply	drop($s), ["in", "in"], "in token";
is_deeply	drop($s), ["inc", "inc"], "inc token";
is_deeply	drop($s), ["ind", "ind"], "ind token";
is_deeply	drop($s), ["indr", "indr"], "indr token";
is_deeply	drop($s), ["ini", "ini"], "ini token";
is_deeply	drop($s), ["inir", "inir"], "inir token";
is_deeply	drop($s), ["ix", "ix"], "ix token";
is_deeply	drop($s), ["iy", "iy"], "iy token";
is_deeply	drop($s), ["jp", "jp"], "jp token";
is_deeply	drop($s), ["jr", "jr"], "jr token";
is_deeply	drop($s), ["l", "l"], "l token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["ldd", "ldd"], "ldd token";
is_deeply	drop($s), ["lddr", "lddr"], "lddr token";
is_deeply	drop($s), ["ldi", "ldi"], "ldi token";
is_deeply	drop($s), ["ldir", "ldir"], "ldir token";
is_deeply	drop($s), ["m", "m"], "m token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "nc neg nop nz or otdr otir out outd outi p pe po pop push \n", 4, "DATA"], "Line token";
is_deeply	drop($s), ["nc", "nc"], "nc token";
is_deeply	drop($s), ["neg", "neg"], "neg token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["nz", "nz"], "nz token";
is_deeply	drop($s), ["or", "or"], "or token";
is_deeply	drop($s), ["otdr", "otdr"], "otdr token";
is_deeply	drop($s), ["otir", "otir"], "otir token";
is_deeply	drop($s), ["out", "out"], "out token";
is_deeply	drop($s), ["outd", "outd"], "outd token";
is_deeply	drop($s), ["outi", "outi"], "outi token";
is_deeply	drop($s), ["p", "p"], "p token";
is_deeply	drop($s), ["pe", "pe"], "pe token";
is_deeply	drop($s), ["po", "po"], "po token";
is_deeply	drop($s), ["pop", "pop"], "pop token";
is_deeply	drop($s), ["push", "push"], "push token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "res ret reti retn rl rla rlc rlca rld rr rra rrc rrca rrd rst \n", 5, "DATA"], "Line token";
is_deeply	drop($s), ["res", "res"], "res token";
is_deeply	drop($s), ["ret", "ret"], "ret token";
is_deeply	drop($s), ["reti", "reti"], "reti token";
is_deeply	drop($s), ["retn", "retn"], "retn token";
is_deeply	drop($s), ["rl", "rl"], "rl token";
is_deeply	drop($s), ["rla", "rla"], "rla token";
is_deeply	drop($s), ["rlc", "rlc"], "rlc token";
is_deeply	drop($s), ["rlca", "rlca"], "rlca token";
is_deeply	drop($s), ["rld", "rld"], "rld token";
is_deeply	drop($s), ["rr", "rr"], "rr token";
is_deeply	drop($s), ["rra", "rra"], "rra token";
is_deeply	drop($s), ["rrc", "rrc"], "rrc token";
is_deeply	drop($s), ["rrca", "rrca"], "rrca token";
is_deeply	drop($s), ["rrd", "rrd"], "rrd token";
is_deeply	drop($s), ["rst", "rst"], "rst token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "sbc scf set sla sp sra srl sub xor z\n", 6, "DATA"], "Line token";
is_deeply	drop($s), ["sbc", "sbc"], "sbc token";
is_deeply	drop($s), ["scf", "scf"], "scf token";
is_deeply	drop($s), ["set", "set"], "set token";
is_deeply	drop($s), ["sla", "sla"], "sla token";
is_deeply	drop($s), ["sp", "sp"], "sp token";
is_deeply	drop($s), ["sra", "sra"], "sra token";
is_deeply	drop($s), ["srl", "srl"], "srl token";
is_deeply	drop($s), ["sub", "sub"], "sub token";
is_deeply	drop($s), ["xor", "xor"], "xor token";
is_deeply	drop($s), ["z", "z"], "z token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "<< >> == != >= <= < > = ! ( ) + - * / % , :\n", 7, "DATA"], "Line token";
is_deeply	drop($s), ["<<", "<<"], "<< token";
is_deeply	drop($s), [">>", ">>"], ">> token";
is_deeply	drop($s), ["==", "=="], "== token";
is_deeply	drop($s), ["!=", "!="], "!= token";
is_deeply	drop($s), [">=", ">="], ">= token";
is_deeply	drop($s), ["<=", "<="], "<= token";
is_deeply	drop($s), ["<", "<"], "< token";
is_deeply	drop($s), [">", ">"], "> token";
is_deeply	drop($s), ["=", "="], "= token";
is_deeply	drop($s), ["!", "!"], "! token";
is_deeply	drop($s), ["(", "("], "( token";
is_deeply	drop($s), [")", ")"], ") token";
is_deeply	drop($s), ["+", "+"], "+ token";
is_deeply	drop($s), ["-", "-"], "- token";
is_deeply	drop($s), ["*", "*"], "* token";
is_deeply	drop($s), ["/", "/"], "/ token";
is_deeply	drop($s), ["%", "%"], "% token";
is_deeply	drop($s), [",", ","], ", token";
is_deeply	drop($s), [":", ":"], ": token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "ixh ixl iyh iyl f\n", 8, "DATA"], "Line token";
is_deeply	drop($s), ["ixh", "ixh"], "ixh token";
is_deeply	drop($s), ["ixl", "ixl"], "ixl token";
is_deeply	drop($s), ["iyh", "iyh"], "iyh token";
is_deeply	drop($s), ["iyl", "iyl"], "iyl token";
is_deeply	drop($s), ["f", "f"], "f token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "org stop defb defw deft defm\n", 9, "DATA"], "Line token";
is_deeply	drop($s), ["org", "org"], "org token";
is_deeply	drop($s), ["stop", "stop"], "stop token";
is_deeply	drop($s), ["defb", "defb"], "defb token";
is_deeply	drop($s), ["defw", "defw"], "defw token";
is_deeply	drop($s), ["deft", "deft"], "deft token";
is_deeply	drop($s), ["defm", "defm"], "defm token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "A ADC ADD AF AF' AF' AND B BC BIT C CALL CCF CP CPD CPDR CPI CPIR \n", 10, "DATA"], "Line token";
is_deeply	drop($s), ["a", "a"], "a token";
is_deeply	drop($s), ["adc", "adc"], "adc token";
is_deeply	drop($s), ["add", "add"], "add token";
is_deeply	drop($s), ["af", "af"], "af token";
is_deeply	drop($s), ["af'", "af'"], "af' token";
is_deeply	drop($s), ["af'", "af'"], "af' token";
is_deeply	drop($s), ["and", "and"], "and token";
is_deeply	drop($s), ["b", "b"], "b token";
is_deeply	drop($s), ["bc", "bc"], "bc token";
is_deeply	drop($s), ["bit", "bit"], "bit token";
is_deeply	drop($s), ["c", "c"], "c token";
is_deeply	drop($s), ["call", "call"], "call token";
is_deeply	drop($s), ["ccf", "ccf"], "ccf token";
is_deeply	drop($s), ["cp", "cp"], "cp token";
is_deeply	drop($s), ["cpd", "cpd"], "cpd token";
is_deeply	drop($s), ["cpdr", "cpdr"], "cpdr token";
is_deeply	drop($s), ["cpi", "cpi"], "cpi token";
is_deeply	drop($s), ["cpir", "cpir"], "cpir token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "CPL D DAA DE DEC DI DJNZ E EI EX EXX H HALT HL I IM \n", 11, "DATA"], "Line token";
is_deeply	drop($s), ["cpl", "cpl"], "cpl token";
is_deeply	drop($s), ["d", "d"], "d token";
is_deeply	drop($s), ["daa", "daa"], "daa token";
is_deeply	drop($s), ["de", "de"], "de token";
is_deeply	drop($s), ["dec", "dec"], "dec token";
is_deeply	drop($s), ["di", "di"], "di token";
is_deeply	drop($s), ["djnz", "djnz"], "djnz token";
is_deeply	drop($s), ["e", "e"], "e token";
is_deeply	drop($s), ["ei", "ei"], "ei token";
is_deeply	drop($s), ["ex", "ex"], "ex token";
is_deeply	drop($s), ["exx", "exx"], "exx token";
is_deeply	drop($s), ["h", "h"], "h token";
is_deeply	drop($s), ["halt", "halt"], "halt token";
is_deeply	drop($s), ["hl", "hl"], "hl token";
is_deeply	drop($s), ["i", "i"], "i token";
is_deeply	drop($s), ["im", "im"], "im token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "IN INC IND INDR INI INIR IX IY JP JR L LD LDD LDDR LDI LDIR M \n", 12, "DATA"], "Line token";
is_deeply	drop($s), ["in", "in"], "in token";
is_deeply	drop($s), ["inc", "inc"], "inc token";
is_deeply	drop($s), ["ind", "ind"], "ind token";
is_deeply	drop($s), ["indr", "indr"], "indr token";
is_deeply	drop($s), ["ini", "ini"], "ini token";
is_deeply	drop($s), ["inir", "inir"], "inir token";
is_deeply	drop($s), ["ix", "ix"], "ix token";
is_deeply	drop($s), ["iy", "iy"], "iy token";
is_deeply	drop($s), ["jp", "jp"], "jp token";
is_deeply	drop($s), ["jr", "jr"], "jr token";
is_deeply	drop($s), ["l", "l"], "l token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["ldd", "ldd"], "ldd token";
is_deeply	drop($s), ["lddr", "lddr"], "lddr token";
is_deeply	drop($s), ["ldi", "ldi"], "ldi token";
is_deeply	drop($s), ["ldir", "ldir"], "ldir token";
is_deeply	drop($s), ["m", "m"], "m token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NC NEG NOP NZ OR OTDR OTIR OUT OUTD OUTI P PE PO POP PUSH \n", 13, "DATA"], "Line token";
is_deeply	drop($s), ["nc", "nc"], "nc token";
is_deeply	drop($s), ["neg", "neg"], "neg token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["nz", "nz"], "nz token";
is_deeply	drop($s), ["or", "or"], "or token";
is_deeply	drop($s), ["otdr", "otdr"], "otdr token";
is_deeply	drop($s), ["otir", "otir"], "otir token";
is_deeply	drop($s), ["out", "out"], "out token";
is_deeply	drop($s), ["outd", "outd"], "outd token";
is_deeply	drop($s), ["outi", "outi"], "outi token";
is_deeply	drop($s), ["p", "p"], "p token";
is_deeply	drop($s), ["pe", "pe"], "pe token";
is_deeply	drop($s), ["po", "po"], "po token";
is_deeply	drop($s), ["pop", "pop"], "pop token";
is_deeply	drop($s), ["push", "push"], "push token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "RES RET RETI RETN RL RLA RLC RLCA RLD RR RRA RRC RRCA RRD RST \n", 14, "DATA"], "Line token";
is_deeply	drop($s), ["res", "res"], "res token";
is_deeply	drop($s), ["ret", "ret"], "ret token";
is_deeply	drop($s), ["reti", "reti"], "reti token";
is_deeply	drop($s), ["retn", "retn"], "retn token";
is_deeply	drop($s), ["rl", "rl"], "rl token";
is_deeply	drop($s), ["rla", "rla"], "rla token";
is_deeply	drop($s), ["rlc", "rlc"], "rlc token";
is_deeply	drop($s), ["rlca", "rlca"], "rlca token";
is_deeply	drop($s), ["rld", "rld"], "rld token";
is_deeply	drop($s), ["rr", "rr"], "rr token";
is_deeply	drop($s), ["rra", "rra"], "rra token";
is_deeply	drop($s), ["rrc", "rrc"], "rrc token";
is_deeply	drop($s), ["rrca", "rrca"], "rrca token";
is_deeply	drop($s), ["rrd", "rrd"], "rrd token";
is_deeply	drop($s), ["rst", "rst"], "rst token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "SBC SCF SET SLA SP SRA SRL SUB XOR Z\n", 15, "DATA"], "Line token";
is_deeply	drop($s), ["sbc", "sbc"], "sbc token";
is_deeply	drop($s), ["scf", "scf"], "scf token";
is_deeply	drop($s), ["set", "set"], "set token";
is_deeply	drop($s), ["sla", "sla"], "sla token";
is_deeply	drop($s), ["sp", "sp"], "sp token";
is_deeply	drop($s), ["sra", "sra"], "sra token";
is_deeply	drop($s), ["srl", "srl"], "srl token";
is_deeply	drop($s), ["sub", "sub"], "sub token";
is_deeply	drop($s), ["xor", "xor"], "xor token";
is_deeply	drop($s), ["z", "z"], "z token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "IXH IXL IYH IYL F\n", 16, "DATA"], "Line token";
is_deeply	drop($s), ["ixh", "ixh"], "ixh token";
is_deeply	drop($s), ["ixl", "ixl"], "ixl token";
is_deeply	drop($s), ["iyh", "iyh"], "iyh token";
is_deeply	drop($s), ["iyl", "iyl"], "iyl token";
is_deeply	drop($s), ["f", "f"], "f token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "ORG STOP DEFB DEFW DEFT DEFM\n", 17, "DATA"], "Line token";
is_deeply	drop($s), ["org", "org"], "org token";
is_deeply	drop($s), ["stop", "stop"], "stop token";
is_deeply	drop($s), ["defb", "defb"], "defb token";
is_deeply	drop($s), ["defw", "defw"], "defw token";
is_deeply	drop($s), ["deft", "deft"], "deft token";
is_deeply	drop($s), ["defm", "defm"], "defm token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "'unclosed string ; \n", 18, "DATA"], "Line token";
is_deeply	drop($s), ["'", "'"], "' token";
is_deeply	drop($s), ["NAME", "unclosed"], "Name token";
is_deeply	drop($s), ["NAME", "string"], "Name token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\"unclosed string ; \n", 19, "DATA"], "Line token";
is_deeply	drop($s), ["\"", "\""], "\" token";
is_deeply	drop($s), ["NAME", "unclosed"], "Name token";
is_deeply	drop($s), ["NAME", "string"], "Name token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "'clo;sed' \"string\" 'with''quote' \"and\"\"quote\" ; comment '\n", 20, "DATA"], "Line token";
is_deeply	drop($s), ["STRING", "'clo;sed'"], "String token";
is_deeply	drop($s), ["STRING", "\"string\""], "String token";
is_deeply	drop($s), ["STRING", "'with'"], "String token";
is_deeply	drop($s), ["STRING", "'quote'"], "String token";
is_deeply	drop($s), ["STRING", "\"and\""], "String token";
is_deeply	drop($s), ["STRING", "\"quote\""], "String token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "Identifier INDENTIFIER indentifier \$Identifier \$INDENTIFIER \$indentifier \n", 21, "DATA"], "Line token";
is_deeply	drop($s), ["NAME", "Identifier"], "Name token";
is_deeply	drop($s), ["NAME", "INDENTIFIER"], "Name token";
is_deeply	drop($s), ["NAME", "indentifier"], "Name token";
is_deeply	drop($s), ["NAME", "Identifier"], "Name token";
is_deeply	drop($s), ["NAME", "INDENTIFIER"], "Name token";
is_deeply	drop($s), ["NAME", "indentifier"], "Name token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\$cpl \$d \$daa \$de \$dec \$di \$djnz \$e \$ei \$ex \$exx \$h \$halt \$hl \$i \$im \$ \$\$\n", 22, "DATA"], "Line token";
is_deeply	drop($s), ["NAME", "cpl"], "Name token";
is_deeply	drop($s), ["NAME", "d"], "Name token";
is_deeply	drop($s), ["NAME", "daa"], "Name token";
is_deeply	drop($s), ["NAME", "de"], "Name token";
is_deeply	drop($s), ["NAME", "dec"], "Name token";
is_deeply	drop($s), ["NAME", "di"], "Name token";
is_deeply	drop($s), ["NAME", "djnz"], "Name token";
is_deeply	drop($s), ["NAME", "e"], "Name token";
is_deeply	drop($s), ["NAME", "ei"], "Name token";
is_deeply	drop($s), ["NAME", "ex"], "Name token";
is_deeply	drop($s), ["NAME", "exx"], "Name token";
is_deeply	drop($s), ["NAME", "h"], "Name token";
is_deeply	drop($s), ["NAME", "halt"], "Name token";
is_deeply	drop($s), ["NAME", "hl"], "Name token";
is_deeply	drop($s), ["NAME", "i"], "Name token";
is_deeply	drop($s), ["NAME", "im"], "Name token";
is_deeply	drop($s), ["NAME", "\$"], "Name token";
is_deeply	drop($s), ["NAME", "\$"], "Name token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", " cplx dy daaz det _012\n", 23, "DATA"], "Line token";
is_deeply	drop($s), ["NAME", "cplx"], "Name token";
is_deeply	drop($s), ["NAME", "dy"], "Name token";
is_deeply	drop($s), ["NAME", "daaz"], "Name token";
is_deeply	drop($s), ["NAME", "det"], "Name token";
is_deeply	drop($s), ["NAME", "_012"], "Name token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "0 1 0xAF 0xaf 0x100 0b01 0b10 0afh 0110b 0AFH 0110B\n", 24, "DATA"], "Line token";
is_deeply	drop($s), ["NUMBER", "0"], "Number token";
is_deeply	drop($s), ["NUMBER", "1"], "Number token";
is_deeply	drop($s), ["NUMBER", "0xAF"], "Number token";
is_deeply	drop($s), ["NUMBER", "0xaf"], "Number token";
is_deeply	drop($s), ["NUMBER", "0x100"], "Number token";
is_deeply	drop($s), ["NUMBER", "0b01"], "Number token";
is_deeply	drop($s), ["NUMBER", "0b10"], "Number token";
is_deeply	drop($s), ["NUMBER", "0x0af"], "Number token";
is_deeply	drop($s), ["NUMBER", "0b0110"], "Number token";
is_deeply	drop($s), ["NUMBER", "0x0AF"], "Number token";
is_deeply	drop($s), ["NUMBER", "0b0110"], "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is			drop($s), undef, "end of input";
is			drop($s), undef, "end of input";

#------------------------------------------------------------------------------
# test INCLUDE
#------------------------------------------------------------------------------

isa_ok	$s = z80lexer("%include 't/include3.z80'\n"),
		'HOP::Stream';
is_deeply	drop($s), ["LINE", "\tLD B,1\n", 1, 't/include3.z80'], "Line token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["b",  "b"],  "b token";
is_deeply	drop($s), [",",  ","],  ", token";
is_deeply	drop($s), ["NUMBER",  "1"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\tLD A,1\n", 1, 't/include2.z80'], "Line token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["a",  "a"],  "a token";
is_deeply	drop($s), [",",  ","],  ", token";
is_deeply	drop($s), ["NUMBER",  "1"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 1, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 2, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\tLD A,3\n", 3, 't/include2.z80'], "Line token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["a",  "a"],  "a token";
is_deeply	drop($s), [",",  ","],  ", token";
is_deeply	drop($s), ["NUMBER",  "3"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 1, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 2, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\tLD A,5\n", 5, 't/include2.z80'], "Line token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["a",  "a"],  "a token";
is_deeply	drop($s), [",",  ","],  ", token";
is_deeply	drop($s), ["NUMBER",  "5"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 1, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 2, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\tLD A,7\n", 7, 't/include2.z80'], "Line token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["a",  "a"],  "a token";
is_deeply	drop($s), [",",  ","],  ", token";
is_deeply	drop($s), ["NUMBER",  "7"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "\tLD B,3\n", 3, 't/include3.z80'], "Line token";
is_deeply	drop($s), ["ld", "ld"], "ld token";
is_deeply	drop($s), ["b",  "b"],  "b token";
is_deeply	drop($s), [",",  ","],  ", token";
is_deeply	drop($s), ["NUMBER",  "3"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is			drop($s), undef, "end of input";
is			drop($s), undef, "end of input";


isa_ok	$s = z80lexer("%include 't/include.z80'"),
		'HOP::Stream';

is_deeply	drop($s), ["LINE", "NOP\n", 1, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is_deeply	drop($s), ["LINE", "NOP\n", 2, 't/include.z80'], "Line token";
is_deeply	drop($s), ["nop", "nop"], "nop token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";

is			drop($s), undef, "end of input";
is			drop($s), undef, "end of input";


#------------------------------------------------------------------------------
# test comments
#------------------------------------------------------------------------------

isa_ok	$s = z80lexer("23;comment\n"),
		'HOP::Stream';
is_deeply	drop($s), ["LINE", "23;comment\n", 1, undef], "Line token";
is_deeply	drop($s), ["NUMBER",  "23"],  "Number token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";
is			drop($s), undef, "end of input";
is			drop($s), undef, "end of input";


isa_ok	$s = z80lexer("23;comment"),
		'HOP::Stream';
is_deeply	drop($s), ["LINE", "23;comment", 1, undef], "Line token";
is_deeply	drop($s), ["NUMBER",  "23"],  "Number token";
is			drop($s), undef, "end of input";
is			drop($s), undef, "end of input";


is		$s = z80lexer("#define 23"), undef, "end of input";
is		$s = z80lexer(" #define 23"), undef, "end of input";
is		$s = z80lexer(" # define 23"), undef, "end of input";

is		$s = z80lexer("#define 23\n"), undef, "end of input";
is		$s = z80lexer(" #define 23\n"), undef, "end of input";
is		$s = z80lexer(" # define 23\n"), undef, "end of input";

isa_ok	$s = z80lexer("#define 23\n\n"),
		'HOP::Stream';
is_deeply	drop($s), ["LINE", "\n", 2, undef], "Line token";
is_deeply	drop($s), ["\n", "\n"], "\\n token";
is			drop($s), undef, "end of input";
is			drop($s), undef, "end of input";


__DATA__
a adc add af af' af' and b bc bit c call ccf cp cpd cpdr cpi cpir 
cpl d daa de dec di djnz e ei ex exx h halt hl i im 
in inc ind indr ini inir ix iy jp jr l ld ldd lddr ldi ldir m 
nc neg nop nz or otdr otir out outd outi p pe po pop push 
res ret reti retn rl rla rlc rlca rld rr rra rrc rrca rrd rst 
sbc scf set sla sp sra srl sub xor z
<< >> == != >= <= < > = ! ( ) + - * / % , :
ixh ixl iyh iyl f
org stop defb defw deft defm
A ADC ADD AF AF' AF' AND B BC BIT C CALL CCF CP CPD CPDR CPI CPIR 
CPL D DAA DE DEC DI DJNZ E EI EX EXX H HALT HL I IM 
IN INC IND INDR INI INIR IX IY JP JR L LD LDD LDDR LDI LDIR M 
NC NEG NOP NZ OR OTDR OTIR OUT OUTD OUTI P PE PO POP PUSH 
RES RET RETI RETN RL RLA RLC RLCA RLD RR RRA RRC RRCA RRD RST 
SBC SCF SET SLA SP SRA SRL SUB XOR Z
IXH IXL IYH IYL F
ORG STOP DEFB DEFW DEFT DEFM
'unclosed string ; 
"unclosed string ; 
'clo;sed' "string" 'with''quote' "and""quote" ; comment '
Identifier INDENTIFIER indentifier $Identifier $INDENTIFIER $indentifier 
$cpl $d $daa $de $dec $di $djnz $e $ei $ex $exx $h $halt $hl $i $im $ $$
 cplx dy daaz det _012
0 1 0xAF 0xaf 0x100 0b01 0b10 0afh 0110b 0AFH 0110B
