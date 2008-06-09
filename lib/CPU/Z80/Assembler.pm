# $Id$

package CPU::Z80::Assembler;

use strict;
use warnings;

use vars qw($VERSION @EXPORT);

my $verbose = 0;
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
returns the assembled version as a string.  If you set the C<$verbose>
package variable it will also spit out an assembler listing.

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
            printf("0x%04X: %-38s |\n", $address, $instr_to_print)
	        if($verbose);
        }
    }
    foreach my $instr (@instructions) {
        if($pass == 2) {
            my $instr_to_print = $instr;
            substr($instr_to_print, 34) = ' ...'
                if(length($instr_to_print) > 37);
            printf("0x%04X: %-38s | ", $address, $instr_to_print)
	        if($verbose);
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
                }
                elsif($instr eq 'DEFW') {
                    _write16($address, _to_number($params));
                    $address += 2;
		}
                # DJNZ
                # PUSH
                # ADC, ADD, AND, BIT, DEC, INC
                # OUT, POP, RES, RET, RLC, RRC, RST,
                # SBC, SET, SLA, SLL, SLI, SRA, SRL, SUB, XOR, ORG,
                # CP, EX, IM, IN, JP, JR, LD, OR, RL, RR
		elsif($instr eq 'ADC') {
                    my($r1, $r2) = split(/,/, $params);
    		    if($r1 eq 'A') {
		    } elsif($r1 eq 'HL') {
		        _write($address, 0xED);
			$r2 eq 'BC' ? _write($address + 1, 0x4A) :
			$r2 eq 'DE' ? _write($address + 1, 0x5A) :
			$r2 eq 'HL' ? _write($address + 1, 0x6A) :
			$r2 eq 'SP' ? _write($address + 1, 0x7A) :
			              _die_unknown("$instr $params");
                        $address += 2;
		    }
		}
                elsif($instr eq 'CALL') {
                    if($params =~ /(.*),(.*)/) {
                        my($cond, $params) = ($1, $2);
                        _write($address, 0xC4 + $TABLE_CC{$cond} << 3);
                    } else {
                        _write($address, 0xCD);
                    }
                    _write16($address + 1, _to_number($params));
                    $address += 3;
                }
                elsif($instr eq 'CCF') {
                    _write($address++, 0x3F);
                }
                elsif($instr eq 'CPD') {
                    _write($address++, 0xED);
                    _write($address++, 0xA9);
                }
                elsif($instr eq 'CPDR') {
                    _write($address++, 0xED);
                    _write($address++, 0xB9);
                }
                elsif($instr eq 'CPI') {
                    _write($address++, 0xED);
                    _write($address++, 0xA1);
                }
                elsif($instr eq 'CPIR') {
                    _write($address++, 0xED);
                    _write($address++, 0xB1);
                }
                elsif($instr eq 'CPL') {
                    _write($address++, 0x2F);
                }
                elsif($instr eq 'DAA') {
                    _write($address++, 0x27);
                }
                elsif($instr eq 'DI') {
                    _write($address++, 0xF3);
                }
                elsif($instr eq 'EI') {
                    _write($address++, 0xFB);
                }
                elsif($instr eq 'EXX') {
                    _write($address++, 0xD9);
                }
                elsif($instr eq 'HALT') {
                    _write($address++, 0x76);
                }
                elsif($instr eq 'IND') {
                    _write($address++, 0xED);
                    _write($address++, 0xAA);
                }
                elsif($instr eq 'INDR') {
                    _write($address++, 0xED);
                    _write($address++, 0xBA);
                }
                elsif($instr eq 'INI') {
                    _write($address++, 0xED);
                    _write($address++, 0xA2);
                }
                elsif($instr eq 'INIR') {
                    _write($address++, 0xED);
                    _write($address++, 0xB2);
                }
                elsif($instr eq 'LDD') {
                    _write($address++, 0xED);
                    _write($address++, 0xA8);
                }
                elsif($instr eq 'LDDR') {
                    _write($address++, 0xED);
                    _write($address++, 0xB8);
                }
                elsif($instr eq 'LDI') {
                    _write($address++, 0xED);
                    _write($address++, 0xA0);
                }
                elsif($instr eq 'LDIR') {
                    _write($address++, 0xED);
                    _write($address++, 0xB0);
                }
                elsif($instr eq 'NEG') {
                    _write($address++, 0xED);
                    _write($address++, 0x44);
                }
                elsif($instr eq 'NOP') {
                    _write($address++, 0x00);
                }
                elsif($instr eq 'OTDR') {
                    _write($address++, 0xED);
                    _write($address++, 0xBB);
                }
                elsif($instr eq 'OTIR') {
                    _write($address++, 0xED);
                    _write($address++, 0xB3);
                }
                elsif($instr eq 'OUTD') {
                    _write($address++, 0xED);
                    _write($address++, 0xAB);
                }
                elsif($instr eq 'OUTI') {
                    _write($address++, 0xED);
                    _write($address++, 0xA3);
                }
                elsif($instr eq 'RETI') {
                    _write($address++, 0xED);
                    _write($address++, 0x4D);
                }
                elsif($instr eq 'RETN') {
                    _write($address++, 0xED);
                    _write($address++, 0x45);
                }
                elsif($instr eq 'RLA') {
                    _write($address++, 0x17);
                }
                elsif($instr eq 'RLCA') {
                    _write($address++, 0x07);
                }
                elsif($instr eq 'RLD') {
                    _write($address++, 0xED);
                    _write($address++, 0x6F);
                }
                elsif($instr eq 'RRA') {
                    _write($address++, 0x1F);
                }
                elsif($instr eq 'RRCA') {
                    _write($address++, 0x0F);
                }
                elsif($instr eq 'RRD') {
                    _write($address++, 0xED);
                    _write($address++, 0x67);
                }
                elsif($instr eq 'SCF') {
                    _write($address++, 0x37);
                }
                else {
		    no warnings;
                    _die_unknown("$instr $params\n");
                }
            }
        }
        $maxaddr = $address - 1;
        print "\n" if($verbose && $pass == 2)
    }
    z80asm($source, 2) if($pass == 1);
    return substr($code, $startaddr, 1 + $maxaddr - $startaddr);
    # return substr($code, 0, $maxaddr + 1);
}

sub _die_unknown {
    die(sprintf("unknown instruction near 0x%04X: %s\n", $address, $_[0]));
}
sub _write {
    my($address, $byte) = @_;
    $bytes_this_instr++;
    substr($code, $address, 1) = chr($byte & 0xFF);
    print "\n".(' ' x 47).'| ' if($verbose && $pass == 2 && $bytes_this_instr && !($bytes_this_instr % 10));
    printf("%02X ", $byte) if($verbose && $pass == 2);
}
sub _write16 {
    my($address, $word) = @_;
    _write($address, $word & 0xFF);
    _write($address, ($word & 0xFF00) >> 8);
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
