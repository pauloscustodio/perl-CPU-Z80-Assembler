# $Id$

package CPU::Z80::Assembler;

use strict;
use warnings;
use 5.008;

use CPU::Z80::Assembler::Lexer;
use CPU::Z80::Assembler::Parser;
use Data::Dump qw( dump );
use HOP::Stream ':all';
use Text::Tabs;

use vars qw($VERSION @EXPORT $verbose);

$VERSION = '1.03a';

use base qw(Exporter);

@EXPORT = qw(z80asm);


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

or
    # comment beginning with # as first char on a line

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

=item INCLUDE "filename"

Include another file.  This is not recursive.  If you want recursion,
use the C pre-processor.

=back

=head2 Mnemonics

Standard Z80 mnemonics are used.  The "unofficial" Z80 instructions
are not yet implemented.

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
that takes two parameters:

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

See the test suite for examples.

=cut

my $pass = 0;
my $address = 0x0000;
my %labels = ();
my %macros = ();
my $code = '';
my $bytes_this_instr = 0;
my $startaddr = 0x0000;
my $maxaddr = 0x0000;

sub z80asm {
    my $source = z80parser(z80lexer(@_));		# input stream

	# initialize
	%labels = (org => 0);
	%macros = ();
	$code = chr(0) x 65536;

    for ($pass = 1; $pass <= 2; $pass++) {
		my $input = $source;		# input tokens twice
		
		# initialize
	    $address = $startaddr = $maxaddr = 0x0000;
		
		my $line;								# last LINE token, for error messages
		while (my $token = head($input)) {
			# LINE token
			my $instr_to_print = "";			
			if ($token->[0] eq "LINE") {
				$line = drop($input);			# LINE token, for error messages
				$instr_to_print = expand($line->[1]);
			}
			if ($verbose && $pass == 2) {
				$instr_to_print =~ s/\s+$//;
				substr($instr_to_print, 34) = ' ...'
					if(length($instr_to_print) > 37);
				printf("0x%04X: %-38s | ", $address, $instr_to_print);
			}

			# process all instructions in LINE
			$bytes_this_instr = 0;
			while (($token = head($input)) && $token->[0] ne "LINE") {
				eval { $input = _assemble_instr($input) };
				if ($@) {						# Semantic error
					chomp($@);
					die("\n",
						(defined($line) ? 
							"\t".$line->[1]."\n".
							($line->[3] ? $line->[3] : "IN").
							"(".$line->[2].") : " : ""),
						"Error: $@\n");
				}
			}
			if ($verbose && $pass == 2) {
				print "\n";
			}
		}
    }
    return substr($code, $startaddr, $maxaddr - $startaddr);
}

sub _assemble_instr {
	my($input) = @_;

    my $token = drop($input) or return undef;
    my($label, $value) = @$token;
    
    my $start_of_macro = 0;

	if    ($label eq "OPCODE") {		_OPCODE($token) }
	elsif ($label eq "LABEL") {			_LABEL($token) }
	elsif ($label eq "org") {			_ORG($token) }
	else {
		die(sprintf("Invalid instruction near 0x%04X: %s\n", 
					$address, $label));
    }
    $maxaddr = $address;
    return $input;
}

sub _OPCODE {								# [OPCODE, byte, byte, ...]
	my($token) = @_;
	my @bytes = @$token; shift @bytes;		# drop OPCODE

	# compute expressions only on pass 2
	if ($pass != 2) {
		$address += scalar(@bytes);
	}
	else {
		my @computed;
		for (@bytes) {
			if (ref($_)) {					# [] for empty placeholder, [type, expr] for expression
				next unless @$_;
				my($type, $expr) = @$_;
				my $value = eval_expr($expr, $address, \%labels);
				if ($type eq "sb") {
					die "Signed byte $value out of range\n" if ($value >= 0x80 || $value < -0x80);
					push(@computed, $value & 0xFF);
				}
				elsif ($type eq "ub") {
					die "Unsigned byte $value out of range\n" if ($value >= 0x100 || $value < 0);
					push(@computed, $value & 0xFF);
				}
				elsif ($type eq "w") {
					die "Word $value out of range\n" if ($value >= 0x10000 || $value < -0x8000);
					push(@computed, $value & 0xFF, ($value >> 8) & 0xFF);
				}
				else {
					die "unknown type $type";
				}
			}
			else {
				push(@computed, $_ & 0xFF);
			}
		}
		# modify $address only once, so that expressions with '$' use the address of start of instruction
		$address = _write($address, @computed);
	}
}

sub _ORG {
	my($token) = @_;
	my $expr = $token->[1];
	my $value = eval_expr($expr, $address, \%labels);
	if ($address == $startaddr) {
		$labels{org} = $address = $startaddr = $value;
	}
	elsif ($value != $address) {
		die "ORG cannot change address\n";
	}
	else {
		# OK
	}
}

sub _LABEL {
	my($token) = @_;
	my($label, $name, $expr) = @$token;
	if ($expr) {
		$labels{$name} = $expr;				# LABEL = EXPRESSION --> save expression
	}
	else {
		$labels{$name} = $address;			# LABEL: --> save address
	}
}

#------------------------------------------------------------------------------
# $address = _write($address, @bytes)
#	Write bytes, return new address
sub _write {
    my($address, @bytes) = @_;
    for my $byte (@bytes) {
		$bytes_this_instr++;
		if ($pass == 2) {
			$byte &= 0xFF;
			substr($code, $address, 1) = chr($byte);
			if ($verbose) {
				print "\n".(' ' x 47).'| ' if ($bytes_this_instr && !($bytes_this_instr % 10));
				printf("%02X ", $byte);
			}
		}
		$address++;
	}
	return $address;
}

1;

=head1 BUGS and FEEDBACK

The "unofficial" instructions aren't supported.

I welcome feedback about my code, including constructive criticism.
Bug reports should be made using L<http://rt.cpan.org/> or by email.

=head1 SEE ALSO

L<HOP::Stream>
L<CPU::Emulator::Z80>

=head1 THANKS TO

Paulo Custodio for numerous bugfixes

=head1 CVS

L<http://drhyde.cvs.sourceforge.net/drhyde/perlmodules/CPU-Z80-Assembler/>

=head1 AUTHOR, COPYRIGHT and LICENCE

Copyright 2008 David Cantrell E<lt>F<david@cantrell.org.uk>E<gt>

This software is free-as-in-speech software, and may be used,
distributed, and modified under the terms of either the GNU
General Public Licence version 2 or the Artistic Licence.  It's
up to you which one you use.  The full text of the licences can
be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=head1 CONSPIRACY

This software is also free-as-in-mason.

=cut
