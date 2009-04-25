# $Id$

package CPU::Z80::Assembler;

use strict;
use warnings;
use 5.008;

use CPU::Z80::Assembler::Lexer;
use CPU::Z80::Assembler::Parser;
use CPU::Z80::Assembler::Program;

use Data::Dump qw( dump );
use HOP::Stream qw( drop head );
use Text::Tabs; 						# imports expand(), unexpand()

use vars qw(@EXPORT $verbose);

our $VERSION = '2.05_02';

use base qw(Exporter);

@EXPORT = qw(z80asm);

my $pass = 0;
my $address = 0x0000;
my %labels = ();
my $code = '';
my $bytes_this_instr = 0;
my $startaddr = 0x0000;
my $maxaddr = 0x0000;
my @warnings;

sub z80asm {
	my(@input) = @_;
	my $token_stream = z80lexer(@input);
	my $program = CPU::Z80::Assembler::Program->new();
	$program->parse($token_stream);
	$program->link;
	my $bytes = $program->bytes;
	return $bytes;
}

sub old_z80asm {
    my $source = z80parser(z80lexer(@_));		# input stream

	# initialize
	%labels = (org => 0);
	$code = chr(0) x 65536;

    for ($pass = 1; $pass <= 2; $pass++) {
		my $input = $source;		# input tokens twice
		
		# initialize
	    $address = $startaddr = $maxaddr = 0x0000;
		
		my $line;								# last line processed
		while (my $token = head($input)) {
			$line = $token->line;
			my $instr_to_print = expand($line->text);			
			if ($verbose && $pass == 2) {
				$instr_to_print =~ s/\s+$//;
				substr($instr_to_print, 34) = ' ...'
					if(length($instr_to_print) > 37);
				printf("0x%04X: %-38s | ", $address, $instr_to_print);
			}

			# process all instructions in same line
			$bytes_this_instr = 0;
			while (($token = head($input)) && $token->line == $line) {
				@warnings = ();
				eval { $input = _assemble_instr($input) };
				if ($@) {					# Semantic error 
					$line->error($@);
					die; # unreached
				}
				for (@warnings) {			# Warnings
					$line->warning($_);
				}
			}
			if ($verbose && $pass == 2) {
				print "\n";
			}
		}
    }
    return substr($code, $startaddr, $maxaddr - $startaddr);
}

my %assemble_table = (
	OPCODE	=> \&_OPCODE,
	LABEL	=> \&_LABEL,
	ORG		=> \&_ORG,
);

sub _assemble_instr {
	my($input) = @_;

    my $token = drop($input) or return undef;
    my($type, $value) = @$token;

	my $handler = $assemble_table{$type};
	if (defined($handler) && ref($handler) eq "CODE") {
		$handler->($token);
	}
	else {
		die(sprintf("Invalid instruction near 0x%04X: %s\n", 
					$address, $type));
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
					push(@warnings, "Signed byte $value out of range\n")
						if ($value >= 0x80 || $value < -0x80);
					push(@computed, $value & 0xFF);
				}
				elsif ($type eq "ub") {
					push(@warnings, "Unsigned byte $value out of range\n")
						if ($value >= 0x100 || $value < -0x80);
					push(@computed, $value & 0xFF);
				}
				elsif ($type eq "w") {
					push(@warnings, "Word $value out of range\n")
						if ($value >= 0x10000 || $value < -0x8000);
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
	my($type, $name, $expr) = @$token;
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

#------------------------------------------------------------------------------

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

z80asm calls internally L<CPU::Z80::Assembler::Lexer> to 
split the input source into tokens, and L<CPU::Z80::Assembler::Parser>
to translate the assembly instructions into sequences of bytes.

L<CPU::Z80::Assembler::Lexer> in turn, calls L<CPU::Z80::Assembler::Macro> 
to handle macro expansion.

=head1 SYNTAX

Instructions are separated by new lines or colons ':', and have the following
format, in ASCII.  Comments start with ';'. Lines starting with '#' are ignored, to handle files generated by pre-processors.

    ; comment beginning with ;
    # comment beginning with # as first char on a line
    [LABEL [:]] INSTRUCTION [: INSTRUCTION ...] [; optional comments]
    LABEL [:]
    LABEL = EXPRFESSION [; ...]

See L<CPU::Z80::Assembler::Lexer> for details on the allowed source file tokens.

=head2 Numbers

Numbers can be supplied in either decimal, hexadecimal, or binary. Numbers must start with a digit 0 to 9.
Hex numbers have a leading 0x (0x****) or a trailing H (0****H). Binary numbers have a leading 0b (0b****) or a trailing B (****B).

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
are not yet supported.

=head2 RST vectors

The RST instruction takes as its parameter either the address to jump
to or the reset vector number - this is just the address / 8.

This means that, for example, RST 0x28 == RST 5.

=head2 DJNZ and JR

The DJNZ and JR instructions take an address as their destination,
not an offset.  If you need to use an offset, do sums on $.  Note
that $
is the address of the *current* instruction.  The offset needs to
be calculated from the address of the *next* instruction, which for
these instructions is always $ + 2.

=head2 STOP

This extra instruction (which assembles to 0xDD 0xDD 0x00) is provided
for the convenience of those using the CPU::Emulator::Z80 module.

=head2 Labels

Labels may be preceded by a dollar sign '$', must start with a letter or
underscore,
and consist solely of letters, underscores and numbers.  They default
to having the value of the address they are created at.  If you want
to assign
another value, then you can say:

    label = 0x1234

You can use $ to refer to the current address.  Mathemagical
operations are allowed too - the value is parsed as perl, and you
can refer to other labels as their name:

    label      = $ + 8
    otherlabel = label / 2 + 3

=head2 Macros

Macros are supported. See L<CPU::Z80::Assembler::Macro> for details.

=head1 BUGS and FEEDBACK

The "unofficial" instructions are supported but need to be tested.

We welcome feedback about our code, including constructive criticism.
Bug reports should be made using L<http://rt.cpan.org/>.

=head1 SEE ALSO

L<CPU::Z80::Assembler::Lexer>
L<CPU::Z80::Assembler::Macro>
L<CPU::Z80::Assembler::Parser>
L<CPU::Emulator::Z80>

=head1 AUTHORS, COPYRIGHT and LICENCE

Copyright (c) 2008-2009, 
David Cantrell E<lt>F<david@cantrell.org.uk>E<gt>,
Paulo Custodio E<lt>F<pscust@cpan.org>E<gt>

This software is free-as-in-speech software, and may be used,
distributed, and modified under the terms of either the GNU
General Public Licence version 2 or the Artistic Licence.  It's
up to you which one you use.  The full text of the licences can
be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=head1 CONSPIRACY

This software is also free-as-in-mason.

=cut
