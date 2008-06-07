#!perl

use strict;
use warnings;
use CPU::Z80::Assembler;

use Test::More tests => 692;

open(OPCODES, 't/opcodes.txt') || die("Can't read opcodes.txt\n");
my @codes = map { $_ =~ s/^\s+|\s+$//g; $_ } grep { /\S/ } <OPCODES>;
close(OPCODES);

foreach my $code (@codes) {
    (my $expectedbytes = $code) =~ s/^.*;\s+//;
    my $expectedbinary = join(
        '',
        map {
            chr(eval "0x$_")
        } split(/\s+/, $expectedbytes)
    );
    my $binary = eval { z80asm("ORG 0x6789\n$code"); };
    ok($binary eq $expectedbinary, $code);
}
