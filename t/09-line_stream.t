#!perl

# $Id$

use warnings;
use strict;

use Test::More tests => 34;

use Data::Dump 'dump';

use_ok 'CPU::Z80::Assembler::Lexer';
use_ok 'HOP::Stream', 'drop', 'list_to_stream';

isa_ok	my $input_strm = list_to_stream(
			"li", "ne 1, no", " file\n",
			"line 2, no file\nline 3, no file\n%li",
			"ne 1+1 file", ".asm\nfile.asm:1: line",
			" 1\nfile.asm:2: line 2\n#li",
			"ne 8 \"z.asm\"\n",
			"z.asm:8: line 8\nz.asm:9: line 9"), 
		'HOP::Stream';

isa_ok	my $strm = CPU::Z80::Assembler::Lexer::_line_stream($input_strm),
		'HOP::Stream';

is_deeply	drop($strm), ['LINE', "line 1, no file\n", 1, undef], 			"null:1";
is			drop($strm), "line 1, no file\n",								"text";
is_deeply	drop($strm), ['LINE', "line 2, no file\n", 2, undef], 			"null:2";
is			drop($strm), "line 2, no file\n", 								"text";
is_deeply	drop($strm), ['LINE', "line 3, no file\n", 3, undef],			"null:3";
is			drop($strm), "line 3, no file\n", 								"text";
is_deeply	drop($strm), ['LINE', "file.asm:1: line 1\n", 1, "file.asm"],	"file.asm:1";
is			drop($strm), "file.asm:1: line 1\n", 							"text";
is_deeply	drop($strm), ['LINE', "file.asm:2: line 2\n", 2, "file.asm"],	"file.asm:2";
is			drop($strm), "file.asm:2: line 2\n", 							"text";
is_deeply	drop($strm), ['LINE', "z.asm:8: line 8\n", 8, "z.asm"],			"file.asm:8";
is			drop($strm), "z.asm:8: line 8\n", 								"text";
is_deeply	drop($strm), ['LINE', "z.asm:9: line 9", 9, "z.asm"],			"file.asm:9";
is			drop($strm), "z.asm:9: line 9", 								"text";
is 			drop($strm), undef, "empty list";
is 			drop($strm), undef, "empty list";


isa_ok	$input_strm = list_to_stream(
			"li", "ne 1, no", " file\n"), 
		'HOP::Stream';

isa_ok	$strm = CPU::Z80::Assembler::Lexer::_line_stream($input_strm),
		'HOP::Stream';

is_deeply	drop($strm), ['LINE', "line 1, no file\n", 1, undef], 			"null:1";
is			drop($strm), "line 1, no file\n",								"text";
is 			drop($strm), undef, "empty list";
is 			drop($strm), undef, "empty list";


isa_ok	$input_strm = list_to_stream(
			"li", "ne 1, no", " file\nline 2", ", no file"), 
		'HOP::Stream';

isa_ok	$strm = CPU::Z80::Assembler::Lexer::_line_stream($input_strm),
		'HOP::Stream';

is_deeply	drop($strm), ['LINE', "line 1, no file\n", 1, undef], 			"null:1";
is			drop($strm), "line 1, no file\n",								"text";
is_deeply	drop($strm), ['LINE', "line 2, no file", 2, undef], 			"null:2";
is			drop($strm), "line 2, no file", 								"text";
is 			drop($strm), undef, "empty list";
is 			drop($strm), undef, "empty list";
