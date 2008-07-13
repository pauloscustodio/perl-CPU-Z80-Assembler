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

$VERSION = '2.00';

use base qw(Exporter);

@EXPORT = qw(z80asm);

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
