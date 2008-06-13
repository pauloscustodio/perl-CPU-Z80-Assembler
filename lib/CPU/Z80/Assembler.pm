# $Id$

package CPU::Z80::Assembler;

use strict;
use warnings;

use vars qw($VERSION @EXPORT $verbose);

$VERSION = '1.0';

use Data::Dumper;
use base qw(Exporter);

@EXPORT = qw(z80asm);

my $i = 0; my %TABLE_R   = map { $_ => $i++ } (qw(B C D E H L (HL) A));
   $i = 0; my %TABLE_RP  = map { $_ => $i++ } (qw(BC DE HL SP));
              $TABLE_RP{'AF'} = $TABLE_RP{'SP'};
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
variable it will also spit out an assembler listing:

    $CPU::Z80::Assembler::verbose = 1;

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

=item ORG 0x4567

Tell the assembler to start building the code at this address.  Must
be the first instruction and can only appear once.  If absent,
defaults to 0x0000.  This value is available in an assembler label called
'org'.

=back

=head2 Mnemonics

Standard Z80 mnemonics are used.

=head2 RST vectors

The RST instruction takes as its parameter either the address to jump
to or the reset vector number - this is just the address / 8.

This means that, for example, RST 0x28 == RST 5.

=head2 DJNZ and JR

The DJNZ and JR instructions take an address as their destination,
not an offset.  If you need to use an offset, do sums on $$.  Note
that $$
is the address of the *current* instruction.  The offset needs to
be calculated from the address of the *next* instruction, which for
these instructions is always $$ + 2.

=head2 STOP

This extra instruction (which assembles to 0xDD 0xDD 0x00) is provided
for the convenience of those using the CPU::Emulator::Z80 module.

=head2 Labels

Labels are preceded by a dollar sign, must start with a letter or
underscore,
and consist solely of letters, underscores and numbers.  They default
to having the value of the address they are created at.  If you want
to assign
another value, then you can say:

    $label = 0x1234

You can use $$ to refer to the current address.  Mathemagical
operations are allowed too - the value is parsed as perl, and you
can refer to other labels as $name:

    $label      = $$ + 8
    $otherlabel = $label / 2 + 3

=head2 Macros

Macros are created thus.  This example creates an "instruction" called MAGIC
that takes three parameters:

    MACRO MAGIC param1, param2 {
	LD $param1, 0
	BIT $param2, L
	$label = 0x1234
        ... more real instructions go here.
    }

Within the macro, $param1, $param2 etc will be replaced with whatever
parameters you pass to the macro.  So, for example, this:

    MAGIC HL, 2

Is the same as:

    LD HL, 0
    BIT 2, L
    ...

Any labels that you define inside a macro are local to that macro.  Actually
they're not but they get renamed to $_macro_$$_... so that they
effectively *are* local.

=cut

my $pass = 0;
my $address = 0x0000;
my %labels = ();
my %macros = ();
my $code = '';
my $bytes_this_instr = 0;
my $maxaddr = 0x0000;
my $in_macro_definition = 0;

sub z80asm {
    my $source = shift;
    $address = 0x0000;
    $pass = shift || 1;
    %labels = (org => 0) if($pass == 1);
    %macros = ()         if($pass == 1);
    my @instructions = grep { $_ } map { s/^\s+|\s$//g; $_ } split(/[\r\n]+/, $source);
    my $startaddr = 0x0000;
    $maxaddr = 0x0000;
    $in_macro_definition = 0;
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
        _assemble_instr($instr);
    }
    z80asm($source, 2) if($pass == 1);
    return substr($code, $startaddr, 1 + $maxaddr - $startaddr);
    # return substr($code, 0, $maxaddr + 1);
}

sub _assemble_instr {
    my $instr = shift;
    my $start_of_macro = 0;
    if($pass == 2) {
        my $instr_to_print = $instr;
        substr($instr_to_print, 34) = ' ...'
            if(length($instr_to_print) > 37);
        printf("0x%04X: %-38s | ", $address, $instr_to_print)
            if($verbose);
        $bytes_this_instr = 0;
    }
    if($instr =~ /^macro\s+(.*)/i) {
	my $macro = $1;
        my($instr, $params) = split(/\s+/, $macro, 2);
	$in_macro_definition = uc($instr);
	$params ||= '';
	$params =~ s/\s*{.*//;
	my @params = split(/\s*,\s*/, $params);
	$macros{uc($instr)} = {
	    instrs => [],
	    params => \@params
	};
    } elsif($in_macro_definition) {
        if($instr =~ /^}/) {
	    $in_macro_definition = 0;
	} else {
	    push @{$macros{$in_macro_definition}->{instrs}}, $instr;
	}
    } elsif($instr =~ /^deft\s+(.*)/i) { # DEFT - don't uncomment
        my $data = $1;
        $data =~ /^(['"])(.*?)(\1)(\s*,\s*(.*))?/;
        die("Bad DEFT quoting ($1...$3)\n") unless($1 eq $3);
        my($text, $tail) = ($2, $5 || '');
        foreach my $c (split(//, $text)) {
            _write($address++, ord($c));
        }
        foreach(split(/\s*,\s*/, "$tail;")) {
            last if(/^;/);
            _write($address++, _to_number($_));
            last if(/;/);
        }
    } else {  # real instruction, defb, defw, macro or a label
        my $addr_at_start_of_instr = $address;
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
	    if(exists($macros{$instr})) {
	        $start_of_macro = 1;
                print "\n" if($verbose && $pass == 2);
	        $params ||= '';
		my %param_substitutions;
		@param_substitutions{
		    map { '\\$'.$_ } @{$macros{$instr}->{params}}
		} = split(/,/, $params);
		my @instrs = map {
		    my $instr = $_;
		    $instr =~ s/$_/$param_substitutions{$_}/g
		        foreach(keys %param_substitutions);
                    $instr =~ s/\$([_a-z])/\$_macro_${address}_$1/g;
		    $instr;
		} @{$macros{$instr}->{instrs}};
		foreach(@instrs) {
		    _assemble_instr($_);
		}
            } elsif($instr eq 'DEFB') {
                _write($address, _to_number($params));
                $address++; 
            } elsif($instr eq 'DEFW') {
                _write16($address, _to_number($params));
                $address += 2;
            }
            elsif($instr eq 'ADC')  { _ADC($params) }
            elsif($instr eq 'ADD')  { _ADD($params) }
            elsif($instr eq 'AND')  { _AND($params) }
            elsif($instr eq 'BIT')  { _BIT($params) }
            elsif($instr eq 'CALL') { _CALL($params) }
            elsif($instr eq 'CP')   { _CP($params) }
            elsif($instr eq 'DEC')  { _DEC($params) }
            elsif($instr eq 'DJNZ') { _DJNZ($params) }
            elsif($instr eq 'EX')   { _EX($params) }
            elsif($instr eq 'IM')   { _IM($params) }
            elsif($instr eq 'IN')   { _IN($params) }
            elsif($instr eq 'JP')   { _JP($params) }
            elsif($instr eq 'JR')   { _JR($params) }
            elsif($instr eq 'INC')  { _INC($params) }
            elsif($instr eq 'LD')   { _LD($params) }
            elsif($instr eq 'OR')   { _OR($params) }
            elsif($instr eq 'OUT')  { _OUT($params) }
            elsif($instr eq 'POP')  { _POP($params) }
            elsif($instr eq 'PUSH') { _PUSH($params) }
            elsif($instr eq 'RES')  { _RES($params) }
            elsif($instr eq 'RET')  { _RET($params) }
            elsif($instr eq 'RL')   { _RL($params) }
            elsif($instr eq 'RLC')  { _RLC($params) }
            elsif($instr eq 'RR')   { _RR($params) }
            elsif($instr eq 'RRC')  { _RRC($params) }
            elsif($instr eq 'RST')  { _RST($params) }
            elsif($instr eq 'SBC')  { _SBC($params) }
            elsif($instr eq 'SET')  { _SET($params) }
            elsif($instr eq 'SLA')  { _SLA($params) }
            elsif($instr eq 'SRA')  { _SRA($params) }
            elsif($instr eq 'SRL')  { _SRL($params) }
            elsif($instr eq 'STOP') { _STOP($params) }
            elsif($instr eq 'SUB')  { _SUB($params) }
            elsif($instr eq 'XOR')  { _XOR($params) }
            elsif($instr eq "CCF")  { _CCF() }
            elsif($instr eq "CPD")  { _CPD() }
            elsif($instr eq "CPDR") { _CPDR() }
            elsif($instr eq "CPI")  { _CPI() }
            elsif($instr eq "CPIR") { _CPIR() }
            elsif($instr eq "CPL")  { _CPL() }
            elsif($instr eq "DAA")  { _DAA() }
            elsif($instr eq "DI")   { _DI() }
            elsif($instr eq "EI")   { _EI() }
            elsif($instr eq "EXX")  { _EXX() }
            elsif($instr eq "HALT") { _HALT() }
            elsif($instr eq "IND")  { _IND() }
            elsif($instr eq "INDR") { _INDR() }
            elsif($instr eq "INI")  { _INI() }
            elsif($instr eq "INIR") { _INIR() }
            elsif($instr eq "LDD")  { _LDD() }
            elsif($instr eq "LDDR") { _LDDR() }
            elsif($instr eq "LDI")  { _LDI() }
            elsif($instr eq "LDIR") { _LDIR() }
            elsif($instr eq "NEG")  { _NEG() }
            elsif($instr eq "NOP")  { _NOP() }
            elsif($instr eq "OTDR") { _OTDR() }
            elsif($instr eq "OTIR") { _OTIR() }
            elsif($instr eq "OUTD") { _OUTD() }
            elsif($instr eq "OUTI") { _OUTI() }
            elsif($instr eq "RETI") { _RETI() }
            elsif($instr eq "RETN") { _RETN() }
            elsif($instr eq "RLA")  { _RLA() }
            elsif($instr eq "RLCA") { _RLCA() }
            elsif($instr eq "RLD")  { _RLD() }
            elsif($instr eq "RRA")  { _RRA() }
            elsif($instr eq "RRCA") { _RRCA() }
            elsif($instr eq "RRD")  { _RRD() }
            elsif($instr eq "SCF")  { _SCF() }

            else {
                no warnings;
                _die_unknown("$instr $params");
            }
            if($addr_at_start_of_instr == $address) {
                no warnings;
                die("Invalid instruction: $instr $params\n");
            }
        }
    }
    $maxaddr = $address - 1;
    print "\n" if($verbose && $pass == 2 && !$start_of_macro);
}

sub _ADC {
    my $params = shift;
    my($r1, $r2) = split(/,/, $params);
    if($r1 eq 'A') {
        if(exists($TABLE_R{$r2})) {
            _write($address, 0b10001000 + $TABLE_R{$r2});
            $address++;
        } elsif($r2 =~ /\((I[XY])(.*?)\)/) {
            _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
            _write($address + 1, 0x8E);
            _write($address + 2, _to_number($2));
            $address += 3;
        } else {
            _write($address,     0xCE);
            _write($address + 1, _to_number($r2));
            $address += 2;
        }
    } elsif($r1 eq 'HL') {
        _write($address, 0xED);
        _write($address + 1, 0x4A + ($TABLE_RP{$r2} << 4));
        $address += 2;
    }
}
sub _ADD {
    my $params = shift;
    my($r1, $r2) = split(/,/, $params);
    if($r1 eq 'A') {
        if(exists($TABLE_R{$r2})) {
            _write($address, 0b10000000 + $TABLE_R{$r2});
            $address++;
        } elsif($r2 =~ /\((I[XY])(.*?)\)/) {
            _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
            _write($address + 1, 0x86);
            _write($address + 2, _to_number($2));
            $address += 3;
        } else {
            _write($address,     0xC6);
            _write($address + 1, _to_number($r2));
            $address += 2;
        }
    } elsif($r1 =~ /^I[XY]$/) {
        local $TABLE_RP{$r1} = $TABLE_RP{'HL'};
        _write($address,     $r1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0b00001001 + ($TABLE_RP{$r2} << 4));
        $address += 2;
    } elsif($r1 eq 'HL') {
        _write($address, 0b00001001 + ($TABLE_RP{$r2} << 4));
        $address += 1;
    }
}
sub _AND {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address, 0b10100000 + $TABLE_R{$params});
        $address++;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
        _write($address + 1, 0xA6);
        _write($address + 2, _to_number($2));
        $address += 3;
    } else {
        _write($address,     0xE6);
        _write($address + 1, _to_number($params));
        $address += 2;
    }
}
sub _BIT {
    (my $params = shift) =~ /(.*),(.*)/;
    my($b, $r) = ($1, $2);
    if(exists($TABLE_R{$r})) {
        _write($address,     0xCB);
        _write($address + 1, 0b01000000 + ($b << 3) + $TABLE_R{$r});
        $address += 2;
    } elsif($r =~ /\((I[XY])(.*?)\)/) {
        _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0b01000000 + ($b << 3) + $TABLE_R{'(HL)'});
        $address += 4;
    }
}
sub _DEC {
    my $r = shift;
    if(exists($TABLE_R{$r})) {
        _write($address, 0x05 + ($TABLE_R{$r} << 3));
        $address++;
    } elsif(exists($TABLE_RP{$r})) {
        _write($address, 0x0B + ($TABLE_RP{$r} << 4));
        $address++;
    } elsif($r eq 'IX') {
        _write($address,     0xDD);
        _write($address + 1, 0x2B);
        $address += 2;
    } elsif($r eq 'IY') {
        _write($address,     0xFD);
        _write($address + 1, 0x2B);
        $address += 2;
    } elsif($r =~ /\((I[XY])(.*)\)/) {
        _write($address,     ($1 eq 'IX') ? 0xDD : 0xFD);
        _write($address + 1, 0x35);
        _write($address + 2, _to_number($2));
        $address += 3;
    }
}
sub _EX {
    (my $params = shift) =~ /(.*),(.*)/;
    my($r1, $r2) = ($1, $2);
    if($r1 eq '(SP)' && $r2 eq 'HL') {
        _write($address, 0xE3);
        $address++;
    } elsif($r1 eq '(SP)' && $r2 eq 'IX') {
        _write($address,     0xDD);
        _write($address + 1, 0xE3);
        $address += 2;
    } elsif($r1 eq '(SP)' && $r2 eq 'IY') {
        _write($address,     0xFD);
        _write($address + 1, 0xE3);
        $address += 2;
    } elsif($r1 eq "AF" && $r2 eq "AF'") {
        _write($address, 0x08);
        $address++;
    } elsif($r1 eq 'DE' && $r2 eq 'HL') {
        _write($address, 0xEB);
        $address++;
    }
}
sub _IM {
    my $mode = shift;
    _write($address,     0xED);
    _write($address + 1,
            $mode == 0 ? 0x46 :
            $mode == 1 ? 0x56 :
                         0x5E
    );
    $address += 2;
}
sub _IN {
    (my $params = shift) =~ /(.*),\((.*)\)/;
    if($2 eq 'C') {
        _write($address,     0xED);
        _write($address + 1, 0x40 + ($TABLE_R{$1} << 3));
        $address += 2;
    } else {
        _write($address,     0xDB);
        _write($address + 1, _to_number($2));
        $address += 2;
    }
}
sub _INC {
    my $r = shift;
    if(exists($TABLE_R{$r})) {
        _write($address, 0x04 + ($TABLE_R{$r} << 3));
        $address++;
    } elsif(exists($TABLE_RP{$r})) {
        _write($address, 0x03 + ($TABLE_RP{$r} << 4));
        $address++;
    } elsif($r eq 'IX') {
        _write($address,     0xDD);
        _write($address + 1, 0x23);
        $address += 2;
    } elsif($r eq 'IY') {
        _write($address,     0xFD);
        _write($address + 1, 0x23);
        $address += 2;
    } elsif($r =~ /\((I[XY])(.*)\)/) {
        _write($address,     ($1 eq 'IX') ? 0xDD : 0xFD);
        _write($address + 1, 0x34);
        _write($address + 2, _to_number($2));
        $address += 3;
    }
}
sub _RES {
    (my $params = shift) =~ /(.*),(.*)/;
    my($b, $r) = ($1, $2);
    if(exists($TABLE_R{$r})) {
        _write($address,     0xCB);
        _write($address + 1, 0b10000000 + ($b << 3) + $TABLE_R{$r});
        $address += 2;
    } elsif($r =~ /\((I[XY])(.*?)\)/) {
        _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0b10000000 + ($b << 3) + $TABLE_R{'(HL)'});
        $address += 4;
    }
}
sub _RET {
    my $c = shift;
    if($c) {
        _write($address, 0xC0 + ($TABLE_CC{$c} << 3));
    } else {
        _write($address, 0xC9);
    }
    $address += 1;
}
sub _RL {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address,     0xCB);
        _write($address + 1, 0x10 + $TABLE_R{$params});
        $address += 2;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0x16);
        $address += 4;
    }
}
sub _RLC {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address,     0xCB);
        _write($address + 1, 0x00 + $TABLE_R{$params});
        $address += 2;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0x06);
        $address += 4;
    }
}
sub _RR {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address,     0xCB);
        _write($address + 1, 0x18 + $TABLE_R{$params});
        $address += 2;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0x1E);
        $address += 4;
    }
}
sub _RRC {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address,     0xCB);
        _write($address + 1, 0x08 + $TABLE_R{$params});
        $address += 2;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0x0E);
        $address += 4;
    }
}
sub _RST {
    my $r = _to_number(shift);
    if($r / 0x08 == int($r / 0x08)) {
        _write($address, 0xC7 + $r);
        $address++;
    } else {
        _write($address, 0xC7 + 8 * $r);
        $address++;
    }
}
sub _SBC {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address, 0x98 + $TABLE_R{$params});
        $address += 1;
    } elsif($params =~ /(.*),(.*)/) {
        my($r1, $r2) = ($1, $2);
        if($r1 eq 'A' && $r2 =~ /\((I[XY])(.*?)\)/) {
            _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
            _write($address + 1, 0x9E);
            _write($address + 2, _to_number($2));
            $address += 3;
        } elsif($r1 eq 'A') {
            _write($address,     0xDE);
            _write($address + 1, _to_number($r2));
            $address += 2;
        } elsif(exists($TABLE_RP{$r2}) && $r1 eq 'HL') {
            _write($address    , 0xED);
            _write($address + 1, 0x42 + ($TABLE_RP{$r2} << 4));
            $address += 2;
        }
    }
}
sub _SET {
    (my $params = shift) =~ /(.*),(.*)/;
    my($b, $r) = ($1, $2);
    if(exists($TABLE_R{$r})) {
        _write($address,     0xCB);
        _write($address + 1, 0b11000000 + ($b << 3) + $TABLE_R{$r});
        $address += 2;
    } elsif($r =~ /\((I[XY])(.*?)\)/) {
        _write($address, ($1 eq 'IX') ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0b11000000 + ($b << 3) + $TABLE_R{'(HL)'});
        $address += 4;
    }
}
sub _CALL {
    my $params = shift;
    if($params =~ /(.*),(.*)/) {
        (my $cond, $params) = ($1, $2);
        _write($address, 0xC4 + ($TABLE_CC{$cond} << 3));
    } else {
        _write($address, 0xCD);
    }
    _write16($address + 1, _to_number($params));
    $address += 3;
}
sub _JP {
    my $params = shift;
    if($params eq '(HL)') {
        _write($address, 0xE9);
        $address++;
    } elsif($params eq '(IX)') {
        _write($address,     0xDD);
        _write($address + 1, 0xE9);
        $address += 2;
    } elsif($params eq '(IY)') {
        _write($address,     0xFD);
        _write($address + 1, 0xE9);
        $address += 2;
    } elsif($params =~ /(.*),(.*)/) {
        (my $cond, $params) = ($1, $2);
        _write($address, 0xC2 + ($TABLE_CC{$cond} << 3));
        _write16($address + 1, _to_number($params));
        $address += 3;
    } else {
        _write($address, 0xC3);
        _write16($address + 1, _to_number($params));
        $address += 3;
    }
}
sub _JR {
    my $params = shift;
    if($params =~ /(.*),(.*)/) {
        _write($address,     0x20 + ($TABLE_CC{$1} << 3));
        _write($address + 1, _to_number($2) - $address - 2);
        $address += 2;
    } else {
        _write($address,     0x18);
        _write($address + 1, _to_number($params) - $address - 2);
        $address += 2;
    }
}
sub _DJNZ {
    my $target = shift;
    _write($address,     0x10);
    _write($address + 1, _to_number($target) - $address - 2);
    $address += 2;
}
sub _LD {
    (my $params = shift) =~ /(.*),(.*)/;
    my($r1, $r2) = ($1, $2);
    if(exists($TABLE_R{$r1})) {                # target 8bit reg
        if(exists($TABLE_R{$r2})) {
            _write($address, 0b01000000 +
                             ($TABLE_R{$r1} << 3) +
                             $TABLE_R{$r2});
            $address++;
        } elsif($r1 eq 'A' && $r2 eq 'I') {
            _write($address,     0xED);
            _write($address + 1, 0x57);
            $address += 2;
        } elsif($r2 =~ /\((.*)\)/) {
            $r2 = $1;
            if($r2 eq 'BC') {
                _write($address, 0x0A);
                $address++;
            } elsif($r2 eq 'DE') {
                _write($address, 0x1A);
                $address++;
            } elsif($r2 =~ /(I[XY])(.*)/) {
                my($idx, $offset) = ($1, $2);
                _write($address,     ($idx eq 'IX') ? 0xDD : 0xFD);
                _write($address + 1, 0x46 + ($TABLE_R{$r1} << 3));
                _write($address + 2, _to_number($offset));
                $address += 3;
            } else {
                _write($address,       0x3A);
                _write16($address + 1, _to_number($r2));
                $address += 3;
            }
        } else {
            _write($address,     0x06 + ($TABLE_R{$r1} << 3));
            _write($address + 1, _to_number($r2));
            $address += 2;
        }
    } elsif(                                   # target 16bit reg
        $r1 eq 'IX' || $r1 eq 'IY' ||
        exists($TABLE_RP{$r1})
    ) {
        if($r1 eq 'SP') {
            if($r2 eq 'HL') {
                _write($address, 0xF9);
                $address++;
            } elsif($r2 =~ /I[XY]/) {
                _write($address,     ($r2 eq 'IX') ? 0xDD : 0xFD);
                _write($address + 1, 0xF9);
                $address += 2;
            } elsif($r2 =~ /\((.*)\)/) {
                _write($address,       0xED);
                _write($address + 1,   0x7B);
                _write16($address + 2, _to_number($1));
                $address += 4;
            } else {
                _write($address,       0x31);
                _write16($address + 1, _to_number($r2));
                $address += 3;
            }
        } else {
            if($r1 eq 'HL' && $r2 =~ /\((.*)\)/) {
                _write($address,       0x2A);
                _write16($address + 1, _to_number($1));
                $address += 3;
            } elsif($r1 eq 'HL') {
                _write($address,       0x21);
                _write16($address + 1, _to_number($r2));
                $address += 3;
            } elsif($r1 =~ /I[XY]/ && $r2 =~ /\((.*)\)/) {
                _write($address, ($r1 eq 'IX') ? 0xDD : 0xFD);
                _write($address + 1,   0x2A);
                _write16($address + 2, _to_number($1));
                $address += 4;
            } elsif($r1 =~ /I[XY]/) {
                _write($address, ($r1 eq 'IX') ? 0xDD : 0xFD);
                _write($address + 1,   0x21);
                _write16($address + 2, _to_number($r2));
                $address += 4;
            } elsif($r1 eq 'BC' && $r2 =~ /\((.*)\)/) {
                _write($address,       0xED);
                _write($address + 1,   0x4B);
                _write16($address + 2, _to_number($1));
                $address += 4;
            } elsif($r1 eq 'BC') {
                _write($address,       0x01);
                _write16($address + 1, _to_number($r2));
                $address += 3;
            } elsif($r1 eq 'DE' && $r2 =~ /\((.*)\)/) {
                _write($address,       0xED);
                _write($address + 1,   0x5B);
                _write16($address + 2, _to_number($1));
                $address += 4;
            } elsif($r1 eq 'DE') {
                _write($address,       0x11);
                _write16($address + 1, _to_number($r2));
                $address += 3;
            }
        }
    } elsif($r1 eq '(BC)' && $r2 eq 'A') {
        _write($address, 0x02);
        $address++;
    } elsif($r1 eq '(DE)' && $r2 eq 'A') {
        _write($address, 0x12);
        $address++;
    } elsif($r1 =~ /\((I[XY])(.*)\)/) {
        my($idx, $offset) = ($1, $2);
        _write($address, ($idx eq 'IX') ? 0xDD : 0xFD);
        if(exists($TABLE_R{$r2})) {
            _write($address + 1, 0x70 + $TABLE_R{$r2});
            _write($address + 2, _to_number($offset));
            $address += 3;
        } elsif(exists($TABLE_RP{$r2})) { # FIXME
        } else {
            _write($address + 1, 0x36);
            _write($address + 2, _to_number($offset));
            $address += 3;
        }
    } elsif($r1 =~ /\((.*)\)/) {               # target (addr)
        my $target = $1;
        if($r2 eq 'A') {
            _write($address,       0x32);
            _write16($address + 1, _to_number($target));
            $address += 3;
        } elsif($r2 eq 'HL') {
            _write($address,       0x22);
            _write16($address + 1, _to_number($target));
            $address += 3;
        } elsif($r2 eq 'IX') {
            _write($address,       0xDD);
            _write($address + 1,   0x22);
            _write16($address + 2, _to_number($target));
            $address += 4;
        } elsif($r2 eq 'IY') {
            _write($address,       0xFD);
            _write($address + 1,   0x22);
            _write16($address + 2, _to_number($target));
            $address += 4;
        } elsif(exists($TABLE_RP{$r2})) {
            _write($address,       0xED);
            _write($address + 1,   0x43 + ($TABLE_RP{$r2} << 4));
            _write16($address + 2, _to_number($target));
            $address += 4;
        }
    } elsif($r1 eq 'I' && $r2 eq 'A') {
        _write($address,     0xED);
        _write($address + 1, 0x47);
        $address += 2;
    }
}
sub _CP {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address, 0b10111000 + $TABLE_R{$params});
        $address += 1;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0b10111110);
        _write($address + 2, _to_number($2));
        $address += 3;
    } else {
        _write($address,     0b11111110);
        _write($address + 1, _to_number($params));
        $address += 2;
    }
}
sub _OR {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address, 0b10110000 + $TABLE_R{$params});
        $address += 1;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0b10110110);
        _write($address + 2, _to_number($2));
        $address += 3;
    } else {
        _write($address,     0b11110110);
        _write($address + 1, _to_number($params));
        $address += 2;
    }
}
sub _OUT {
    (my $params = shift) =~ /\((.*)\),(.*)/;
    if($1 eq 'C') {
        _write($address,     0xED);
        _write($address + 1, 0x41 + ($TABLE_R{$2} << 3));
        $address += 2;
    } else {
        _write($address,     0xD3);
        _write($address + 1, _to_number($1));
        $address += 2;
    }
}
sub _POP {
    my $params = shift;
    if(exists($TABLE_RP{$params})) {
        _write($address, 0b11000001 + ($TABLE_RP{$params} << 4));
        $address += 1;
    } elsif($params =~ /^I[XY]$/) {
        _write($address,     $params eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0b11000001 + ($TABLE_RP{'HL'} << 4));
        $address += 2;
    }
}
sub _PUSH {
    my $params = shift;
    if(exists($TABLE_RP{$params})) {
        _write($address, 0b11000101 + ($TABLE_RP{$params} << 4));
        $address += 1;
    } elsif($params =~ /^I[XY]$/) {
        _write($address,     $params eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0b11000101 + ($TABLE_RP{'HL'} << 4));
        $address += 2;
    }
}
sub _SLA {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address    , 0xCB);
        _write($address + 1, 0x20 + $TABLE_R{$params});
        $address += 2;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0x26);
        $address += 4;
    }
}
sub _SRA {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address    , 0xCB);
        _write($address + 1, 0x28 + $TABLE_R{$params});
        $address += 2;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0xCB);
        _write($address + 2, _to_number($2));
        _write($address + 3, 0x2E);
        $address += 4;
    }
}
sub _SRL {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address    , 0xCB);
        _write($address + 1, 0x38 + $TABLE_R{$params});
        $address += 2;
    }
}
sub _STOP {
    _write16($address, 0xDDDD);
    _write($address + 2, 0x00);
    $address +=3;
}
sub _SUB {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address, 0x90 + $TABLE_R{$params});
        $address += 1;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0x96);
        _write($address + 2, _to_number($2));
        $address += 3;
    } else {
        _write($address,     0xD6);
        _write($address + 1, _to_number($params));
        $address += 2;
    }
}
sub _XOR {
    my $params = shift;
    if(exists($TABLE_R{$params})) {
        _write($address, 0b10101000 + $TABLE_R{$params});
        $address += 1;
    } elsif($params =~ /\((I[XY])(.*?)\)/) {
        _write($address,     $1 eq 'IX' ? 0xDD : 0xFD);
        _write($address + 1, 0b10101110);
        _write($address + 2, _to_number($2));
        $address += 3;
    } else {
        _write($address,     0b11101110);
        _write($address + 1, _to_number($params));
        $address += 2;
    }
}
sub _CCF {
    _write($address++, 0x3F);
}
sub _CPD {
    _write($address++, 0xED);
    _write($address++, 0xA9);
}
sub _CPDR {
    _write($address++, 0xED);
    _write($address++, 0xB9);
}
sub _CPI {
    _write($address++, 0xED);
    _write($address++, 0xA1);
}
sub _CPIR {
    _write($address++, 0xED);
    _write($address++, 0xB1);
}
sub _CPL {
    _write($address++, 0x2F);
}
sub _DAA {
    _write($address++, 0x27);
}
sub _DI {
    _write($address++, 0xF3);
}
sub _EI {
    _write($address++, 0xFB);
}
sub _EXX {
    _write($address++, 0xD9);
}
sub _HALT {
    _write($address++, 0x76);
}
sub _IND {
    _write($address++, 0xED);
    _write($address++, 0xAA);
}
sub _INDR {
    _write($address++, 0xED);
    _write($address++, 0xBA);
}
sub _INI {
    _write($address++, 0xED);
    _write($address++, 0xA2);
}
sub _INIR {
    _write($address++, 0xED);
    _write($address++, 0xB2);
}
sub _LDD {
    _write($address++, 0xED);
    _write($address++, 0xA8);
}
sub _LDDR {
    _write($address++, 0xED);
    _write($address++, 0xB8);
}
sub _LDI {
    _write($address++, 0xED);
    _write($address++, 0xA0);
}
sub _LDIR {
    _write($address++, 0xED);
    _write($address++, 0xB0);
}
sub _NEG {
    _write($address++, 0xED);
    _write($address++, 0x44);
}
sub _NOP {
    _write($address++, 0x00);
}
sub _OTDR {
    _write($address++, 0xED);
    _write($address++, 0xBB);
}
sub _OTIR {
    _write($address++, 0xED);
    _write($address++, 0xB3);
}
sub _OUTD {
    _write($address++, 0xED);
    _write($address++, 0xAB);
}
sub _OUTI {
    _write($address++, 0xED);
    _write($address++, 0xA3);
}
sub _RETI {
    _write($address++, 0xED);
    _write($address++, 0x4D);
}
sub _RETN {
    _write($address++, 0xED);
    _write($address++, 0x45);
}
sub _RLA {
    _write($address++, 0x17);
}
sub _RLCA {
    _write($address++, 0x07);
}
sub _RLD {
    _write($address++, 0xED);
    _write($address++, 0x6F);
}
sub _RRA {
    _write($address++, 0x1F);
}
sub _RRCA {
    _write($address++, 0x0F);
}
sub _RRD {
    _write($address++, 0xED);
    _write($address++, 0x67);
}
sub _SCF {
    _write($address++, 0x37);
}
sub _die_unknown {
    die(sprintf("unknown instruction near 0x%04X: %s\n", $address, $_[0]));
}
sub _write {
    my($address, $byte) = @_;
    $bytes_this_instr++;
    $byte &= 0xFF;
    substr($code, $address, 1) = chr($byte);
    print "\n".(' ' x 47).'| ' if($verbose && $pass == 2 && $bytes_this_instr && !($bytes_this_instr % 10));
    printf("%02X ", $byte) if($verbose && $pass == 2);
}
sub _write16 {
    my($address, $word) = @_;
    _write($address,     $word & 0xFF);
    _write($address + 1, ($word & 0xFF00) >> 8);
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
