#!perl

# $Id$

use strict;
use warnings;
use CPU::Z80::Assembler;

use Test::More tests => 4765;

#$CPU::Z80::Assembler::verbose = 1;

ok	open(my $fh, 't/test_z80.asm'), "open t/test_z80.asm";
while (<$fh>) {
	next unless /^(.*)\s*;\s*([0-9a-f]{4})\s+([0-9a-f\s]+)/i;
	my($code, $address, $expectedbytes) = ($1, $2, $3);
    my $expectedbinary = join(
        '',
        map {
            chr(eval "0x$_")
        } split(" ", $expectedbytes)
    );
    my $binary = eval { z80asm("\nORG 0x$address\n$code\n") };
		is $@, "", 
			"eval   $code";
		is hexdump($binary), hexdump($expectedbinary), 
			"result $code";
}

sub hexdump {
	return join(' ', map { sprintf("0x%02X", ord($_)) } split(//, shift));
}
