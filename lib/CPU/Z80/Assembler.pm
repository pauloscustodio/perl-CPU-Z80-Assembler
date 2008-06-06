# $Id$

package CPU::Z80::Assembler;

use strict;
use warnings;

use vars qw($VERSION @EXPORT);

$VERSION = '1.0';

use Data::Dumper;
use base qw(Exporter);

@EXPORT = qw(z80asm);

my $i = 0; my %TABLE_R   = map { $_ => $i++ } (qw(B C D E H L (HL) A));
   $i = 0; my %TABLE_RP  = map { $_ => $i++ } (qw(BC DE HL SP));
   $i = 0; my %TABLE_RP2 = map { $_ => $i++ } (qw(BC DE HL AF));
   $i = 0; my %TABLE_CC  = map { $_ => $i++ } (qw(NZ Z NC C PO PE P M));

=head1 NAME

CPU::Z80::Assembler - a Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler;

    my $binary = z80asm(q{
        ORG 0x1000
        LD A, 1
        ...
    });

=head1 DESCRIPTION

This module provides a single subroutine which implements a Z80
assembler.

=head1 EXPORTS

By default the 'z80asm' subroutine is exported.  To disable that, do:

    use CPU::Z80::Assembler ();

=head1 FUNCTIONS

=head2 z80asm

This takes one parameter, a string of Z80 assembler source.  It
returns the assembled version as a string, with any gaps padded
with NULLs if necessary.

=head1 SYNTAX

Instructions are seperated by new lines, and have the following
format.  They must be ASCII:

    INSTRUCTION [; optional comments]

or
    $label [= ...] [; ...]

=head2 Numbers

Numbers can be supplied in either decimal, hexadecimal, or binary.
Hex numbers have a leading 0x, binary numbers have a leading 0b.

=head2 Pseudo-instructions

=over

=item DEFB 0x12

A byte of data

=item DEFW 0x1234

A 16-bit word of data, in little-endian order.  So the
example would actually insert 0x34 followed by 0x12.

=item DEFT "literal text", 0x00

A literal string, either single- or double-quoted.  Can optionally be
followed by a comma-seperated list of bytes.  Quoted text can not
include the quotes surrounding it or newlines.

NB because the parser is stupid, you can't have a comment on the
same line as a DEFT

=item ORG 0x4567

Tell the assembler to start building the code at this address.  Must
be the first instruction and can only appear once.  If absent,
defaults to 0x0000.  This value is available in an assembler label called
'org'.

=back

=head2 Mnemonics

Standard Z80 mnemonics are used.  The high and low halfs of the
IX and IY registers are called HIX, LIX, HIY and HIY.

=head2 Labels

Labels are preceded by a dollar sign, must start with a letter or underscore,
and consist solely of letters, underscores and numbers.  They default
to having the value of the address they are at.  If you want to assign
another value, then you can say:

    $label = 0x1234

You can use $$ to refer to the current address.  Mathemagical
operations are allowed too - the value is parsed as perl, and you
can refer to other labels as $name:

    $label      = $$ + 8
    $otherlabel = $label / 2 + 3

=cut

my $address = 0x0000;
my $pass = 0;
my %labels = (org => 0);
my $code = '';
my $bytes_this_instr = 0;

sub z80asm {
    my $source = shift;
    $pass = shift;
    $pass ||= 1;
    my @instructions = grep { $_ } map { s/^\s+|\s$//g; $_ } split(/[\r\n]+/, $source);
    my $startaddr = 0x0000;
    my $maxaddr = 0x0000;
    $code = chr(0) x 65536;

    if($instructions[0] =~ /^org\s+(.*)/i) {
        $labels{org} = $address = $startaddr = _to_number($1);
        shift(@instructions);
        if($pass == 2) {
            my $instr_to_print = "ORG $1";
            substr($instr_to_print, 34) = ' ...'
                if(length($instr_to_print) > 37);
            printf("0x%04X: %-38s |\n", $address, $instr_to_print);
        }
    }
    foreach my $instr (@instructions) {
        if($pass == 2) {
            my $instr_to_print = $instr;
            substr($instr_to_print, 34) = ' ...'
                if(length($instr_to_print) > 37);
            printf("0x%04X: %-38s | ", $address, $instr_to_print);
            $bytes_this_instr = 0;
        }
        if($instr =~ /^deft\s+(.*)/i) { # DEFT - don't uncomment
            my $data = $1;
            $data =~ /^(['"])(.*?)(\1)(\s*,\s*(.*))?/;
            die("Bad DEFT quoting ($1...$3)\n") unless($1 eq $3);
            my($text, $tail) = ($2, $5);
            foreach my $c (split(//, $text)) {
                _write($address++, ord($c));
            }
            foreach(split(/\s*,\s*/, $tail)) {
                last if(/^;/);
                _write($address++, _to_number($_));
                last if(/;/);
            }
        } else {  # real instruction or a label
            $instr =~ s/\s*;.*//; # de-comment
            if(!$instr) {
                # do nothing
            } elsif($instr =~ /^\$([_a-z]\w*)\s*((=)\s*(.*))?$/) { # label
                my($label, $value) = ($1, $4);
                if($3) {
                    $value = _to_number($value);
                } else {
                    $value = $address;
                }
                $labels{$label} = $value;
            } else {
                my $params;
                ($instr, $params) = split(/\s+/, $instr, 2);
                $instr = uc($instr);
                $params =~ s/\s//g if($params);
                
                if($instr eq 'DEFB') {
                    _write($address++, _to_number($params));
                } elsif($instr eq 'DEFW') {
                    _write($address, _to_number($params) & 0xFF);
                    _write($address + 1, (_to_number($params) >> 8) & 0xFF);
                    $address += 2;
		} elsif($instr eq 'CALL') {

		 # CALL, CPDR, CPIR, DJNZ, HALT, INDR, INIR, LDDR, LDIR, OTDR, OTIR, OUTD,
		 # OUTI, PUSH, RETI, RETN, RLCA, RRCA,
		 # ADC, ADD, AND, BIT, CCF, CPD, CPI, CPL, DAA, DEC, EQU, EXX, INC, IND, INI,
		 # LDD, LDI, NEG, OUT, POP, RES, RET, RLA, RLC, RLD, RRA, RRC, RRD, RST,
		 # SBC, SCF, SET, SLA, SLL, SLI, SRA, SRL, SUB, XOR, ORG,
		 # CP, DI, EI, EX, IM, IN, JP, JR, LD, OR, RL, RR
                } elsif($instr eq 'NOP') {
                    _write($address++, 0);
                } elsif($instr eq 'EX' && uc($params) eq "AF,AF'") {
                    _write($address++, 0b00001000);
                } elsif($instr eq 'DJNZ') {
                    _write($address, 0b00010000);
                    die("DJNZ doesn't yet insert address");
                    $address += 2;
                } elsif($instr eq 'JR' && $params !~ /,/) {
                    _write($address, 0b00011000);
                    die("JR doesn't yet insert address");
                    $address += 2;

                } elsif($instr eq 'DEC') {
                     if(exists($TABLE_R{$params})) {
                         _write($address++, 0b00000101 + ($TABLE_R{$params} << 3));
                     } elsif(exists($TABLE_RP{$params})) {
                         _write($address++, 0b00001011 + ($TABLE_R{$params} << 4));
                     } elsif($params =~ /^\(I([XY])\+(.*)\)$/) {
                         _write($address, ($1 eq 'X' ? 0xDD : 0xFD));
                         _write($address + 1, 0x35);
                         _write($address + 2, _to_number($2));
                         $address += 3;
                     } else { die "DEC $params ??\n"; }
                 } elsif($instr eq 'INC') {
                     if(exists($TABLE_R{$params})) {
                         _write($address++, 0b00000100 + ($TABLE_R{$params} << 3));
                     } elsif(exists($TABLE_RP{$params})) {
                         _write($address++, 0b00000011 + ($TABLE_R{$params} << 4));
                     } elsif($params =~ /^\(I([XY])\+(.*)\)$/) {
                         _write($address, ($1 eq 'X' ? 0xDD : 0xFD));
                         _write($address + 1, 0x34);
                         _write($address + 2, _to_number($2));
                         $address += 3;
                     } else { die "INC $params ??\n"; }
                 }
                 else {
                    die("$instr $params not yet handled\n");
                }
            }
        }
        $maxaddr = $address - 1;
        print "\n" if($pass == 2);
    }
    z80asm($source, 2) if($pass == 1);
    # return substr($code, $startaddr, 1 + $maxaddr - $startaddr);
    return substr($code, 0, $maxaddr + 1);
}

sub _write {
    my($address, $byte) = @_;
    $bytes_this_instr++;
    substr($code, $address, 1) = chr($byte & 0xFF);
    # printf("%02X ", $byte) if($pass == 2 && $bytes_this_instr < 10);
    # print "..." if($pass == 2 && $bytes_this_instr == 10);
    print "\n".(' ' x 47).'| ' if($pass == 2 && $bytes_this_instr && !($bytes_this_instr % 10));
    printf("%02X ", $byte) if($pass == 2);
}

sub _to_number {
    my $number = shift;
    $number =~ s/\s*;.*//;

    $number =~ s/\$\$/$address/;
    $number =~ s/\$$_/$labels{$_}/
        foreach (keys %labels);
    if($pass == 2 && $number =~ /\$(\w+)/) {
        die("Unknown label \$$1 in $number\n")
    }
    $number = eval "0 + ($number)";

    # if($number =~ /^0[xb]/) {       # hex or binary
    #     $number = oct($number);
    # } elsif($number eq '$$') {
    #     $number = _to_number($address);
    # } elsif($number !~ /^-?\d+$/) { # not a decimal int, must be a label
    #     die("$number isn't a valid label")
    #         unless($number =~ /^[_a-z]\w*$/i);
    #     if(!exists($labels{$number})) {  # if the label doesn't exist
    #         $labels{$number} = 0         # create it
    #     }
    #     $number = $labels{$number};
    # }
    $number || 0;
}

1;
