use strict;
use warnings;

use HOP::Stream qw( head drop );

sub test_line { my($text, $line_nr, $file) = @_;
	our $stream;

	my $caller_line = (caller)[2];
	my $token = drop($stream);
	isa_ok $token, 'CPU::Z80::Assembler::Line';
	is $text, 		$token->text, 		"line $caller_line text";
	is $line_nr, 	$token->line_nr, 	"line $caller_line line_nr";
	is $file, 		$token->file, 		"line $caller_line file";
}

sub test_token_line { my($text, $line_nr, $file) = @_;
	our $stream;
	our $line;
	
	my $caller_line = (caller)[2];
	ok my $token = head($stream), "line $caller_line head";
	isa_ok $line = $token->line, 'CPU::Z80::Assembler::Line';
	
	is $line->text, 	$text, 		"line $caller_line text";
	is $line->line_nr, 	$line_nr, 	"line $caller_line line_nr";
	is $line->file, 	$file, 		"line $caller_line file";
}

sub test_token { my($type, $value) = @_;
	our $stream;
	our $line;
	
	my $caller_line = (caller)[2];
	ok my $token = drop($stream), "line $caller_line drop";
	
	is $token->type, 			$type,				"line $caller_line type";
	is $token->value, 			$value,				"line $caller_line value";
	is $token->line->text, 		$line->text, 		"line $caller_line text";
	is $token->line->line_nr, 	$line->line_nr, 	"line $caller_line line_nr";
	is $token->line->file, 		$line->file, 		"line $caller_line file";
}


sub test_eof {
	our $stream;
	
	my $caller_line = (caller)[2];
	is drop($stream), undef, "line $caller_line eof 1";	
	is drop($stream), undef, "line $caller_line eof 2";	
}

1;
