#!perl

# $Id$

use strict;
use warnings;

use Test::More tests => 28;
use_ok 'CPU::Z80::Assembler::Line';
use_ok 'CPU::Z80::Assembler::Token';

my $warn; 
$SIG{__WARN__} = sub {$warn = shift};
END { is $warn, undef, "no warnings"; }

my $token;

sub test_error { 
	my($error_msg, $expected_error, $expected_warning) = @_;
	my $line_nr = (caller)[2];
	my $test_name = "[line $line_nr]";
		
	eval {	$token->error($error_msg) };
	is		$@, $expected_error, "$test_name die()";
	
			$warn = "";
			$token->warning($error_msg);
	is 		$warn, $expected_warning, "$test_name warning()";
	$warn = undef;
}

isa_ok 	$token = CPU::Z80::Assembler::Token->new(),
		'CPU::Z80::Assembler::Token';

test_error(undef, "error: at EOF\n", "warning: at EOF\n");
test_error("test error", "error: test error at EOF\n", "warning: test error at EOF\n");
test_error("test error\n", "error: test error at EOF\n", "warning: test error at EOF\n");

$token->line->text("\tnop\n");
$token->line->file("f1.asm");
$token->line->line_nr(10);

test_error(undef, 
			"\t\tnop\nf1.asm(10) : error: at EOF\n", 
			"\t\tnop\nf1.asm(10) : warning: at EOF\n");
test_error("test error", 
			"\t\tnop\nf1.asm(10) : error: test error at EOF\n", 
			"\t\tnop\nf1.asm(10) : warning: test error at EOF\n");
test_error("test error\n", 
			"\t\tnop\nf1.asm(10) : error: test error at EOF\n", 
			"\t\tnop\nf1.asm(10) : warning: test error at EOF\n");

$token->type("\n");
test_error(undef, 
			"\t\tnop\nf1.asm(10) : error: at \"\\n\"\n", 
			"\t\tnop\nf1.asm(10) : warning: at \"\\n\"\n");
test_error("test error", 
			"\t\tnop\nf1.asm(10) : error: test error at \"\\n\"\n", 
			"\t\tnop\nf1.asm(10) : warning: test error at \"\\n\"\n");
test_error("test error\n", 
			"\t\tnop\nf1.asm(10) : error: test error at \"\\n\"\n", 
			"\t\tnop\nf1.asm(10) : warning: test error at \"\\n\"\n");

$token->type("hl");
test_error(undef, 
			"\t\tnop\nf1.asm(10) : error: at hl\n", 
			"\t\tnop\nf1.asm(10) : warning: at hl\n");
test_error("test error", 
			"\t\tnop\nf1.asm(10) : error: test error at hl\n", 
			"\t\tnop\nf1.asm(10) : warning: test error at hl\n");
test_error("test error\n", 
			"\t\tnop\nf1.asm(10) : error: test error at hl\n", 
			"\t\tnop\nf1.asm(10) : warning: test error at hl\n");
