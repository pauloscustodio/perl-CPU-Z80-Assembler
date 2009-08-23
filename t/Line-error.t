#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 21;
use_ok 'CPU::Z80::Assembler::Line';

my $warn; 
$SIG{__WARN__} = sub {$warn = shift};
END { is $warn, undef, "no warnings"; }

my $line;

sub test_error { 
	my($error_msg, $expected_error, $expected_warning) = @_;
	my $line_nr = (caller)[2];
	my $test_name = "[line $line_nr]";
		
	eval {	$line->error($error_msg) };
	is		$@, $expected_error, "$test_name die()";
	
			$warn = "";
			$line->warning($error_msg);
	is 		$warn, $expected_warning, "$test_name warning()";
	$warn = undef;
}

	
isa_ok 	$line = CPU::Z80::Assembler::Line->new(),
		'CPU::Z80::Assembler::Line';

test_error(undef, "error\n", "warning\n");
test_error("test error", "error: test error\n", "warning: test error\n");
test_error("test error\n", "error: test error\n", "warning: test error\n");

$line->text("");
test_error("test error", "error: test error\n", "warning: test error\n");

$line->text("0");
test_error("test error", "\t0\nerror: test error\n", "\t0\nwarning: test error\n");

$line->text("this line");
test_error("test error","\tthis line\nerror: test error\n", "\tthis line\nwarning: test error\n");

$line->line_nr(1);
test_error("test error","\tthis line\ninput(1) : error: test error\n", "\tthis line\ninput(1) : warning: test error\n");

$line->file("f1.asm");
test_error("test error","\tthis line\nf1.asm(1) : error: test error\n", "\tthis line\nf1.asm(1) : warning: test error\n");

$line->line_nr(0);
test_error("test error","\tthis line\nf1.asm : error: test error\n", "\tthis line\nf1.asm : warning: test error\n");
