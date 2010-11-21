#!perl

#------------------------------------------------------------------------------
# $Id$
# Build all CPU::Z80::Assembler instructions, ready to assemble by 
# sjasmplus (http://sjasmplus.sourceforge.net/)

use strict;
use warnings;

use Asm::Z80::Table;

#------------------------------------------------------------------------------
# write all available instructions
my $address;
my %seen;
sub show_instr {
	my($args, $bytes) = @_;
	
	my $opcode = shift(@$args);
	my @args = grep {$_ ne ""} @$args;
	my @bytes = @$bytes;
	
	my $instr = $opcode." ".join("", @args);
	if ("@args" =~ /(\bNN?\b|\bNN?\d+|\bDIS\b|\bDIS\d+|\bNDIS\b)/) {
		my $found = $1;
		my @values;
		if ($opcode =~ /jr|djnz/i) {
			@values = ( -128, -127,
						-2, 0,
						1, 126, 127 );
			@values = ($values[-1]) if $seen{VALUE}{JR}++;
		}
		elsif ($found =~ /NDIS|DIS/) {
			my $max = ("@args" =~ /bc|de|hl/i) ? 126 : 127;
			@values = ( "+-128", "-128", "+-127", "-127", "+-1", "-1", 
						"+-0", "-0", "+0", "", 
						"+1", "+".($max-1), "+".$max );
			@values = ($values[-1]) if $seen{VALUE}{DIS}++;
			@args = grep {! /^[+-]$/} @args;		# +/- included in value
		}
		elsif ($found =~ /^N\d*$/) {
			@values = ( -128, -127,
						-2, -1, 0,
						1, 126, 127,
						128, 129, 254, 255 );
			@values = ($values[-1]) if $seen{VALUE}{N}++;
		}
		else {
			@values = ( -0x8000, -0x7FFF, -0x80, -1, 
						0, 1, 0x7F, 0x80, 0xFF, 0x100, 0x7FFF, 
						0x8000, 0xFFFE, 0xFFFF);
			@values = ($values[-1]) if $seen{VALUE}{NN}++;
		}
		for my $value (@values) {
			$value += $address + 2 if $opcode =~ /jr|djnz/i;

			# need to copy @args and @bytes, to be able to compute for next $value
			my @args_copy = @args; 
			my @bytes_copy = @bytes;
			for (@args_copy) {				# use original form in args
				s/$found/$value/g;
			}
			$value ||= 0;
			$value = eval($value) if $value =~ /\D/; die $@ if $@;
			for (@bytes_copy) {				# use numeric value in bytes
				s/${found}h/ 		($value >> 8          ) & 0xFF /ge;
				s/${found}l/ 		($value               ) & 0xFF /ge;
				s/${found}o/ 		($value - $address - 2) & 0xFF /ge;
				s/${found}\+0x01/	($value + 1           ) & 0xFF /ge;
				s/${found}/  		($value               ) & 0xFF /ge;
			}
			show_instr([$opcode, @args_copy], [@bytes_copy]);
		}
		return;
	}

	# handle case of "ld (ix),a" -> need to define DIS
	my @bytes_copy = @bytes;
	for (@bytes_copy) {	
		s/DIS\+1/1/g;
		s/DIS/0/g;
	}
	
	my $asm = sprintf("%8s%-5s%-19s",
					  "",
					  $opcode, 
					  join("", @args));

	print $asm, sprintf("; %04X %s\n",  
					  $address, 
					  join(" ", map {sprintf("%02X", eval "(0+$_) & 0xFF")} @bytes_copy)); 
	$address += @bytes_copy;
	
	# upper case, unless all keywords have been seen in upper case
	my $need_print;
	for ($opcode, @args) {
		$need_print++ if (uc($_) ne $_ && ! $seen{UC}{$_}++);
	}
	if ($need_print) {
		# Relative Jump -> new instruction 2 bytes further down
		$args[-1] += 2 if $opcode =~ /jr|djnz/i;	
		
		$asm = uc(sprintf("%8s%-5s%-19s",
							  "",
							  $opcode, 
							  join("", @args)));

		print $asm, sprintf("; %04X %s\n",  
						  $address, 
						  join(" ", map {sprintf("%02X", eval "(0+$_) & 0xFF")} @bytes_copy)); 
		$address += @bytes_copy;
	}
}
sub show_instrs {
	my($table, @previous) = @_;
	if (ref($table) eq "ARRAY") {
		show_instr(\@previous, $table);
	}
	else {
		for my $key (sort keys %$table) {
			show_instrs($table->{$key}, @previous, $key);
		}
	}
}

#------------------------------------------------------------------------------
# write asm file with all instruction
sub write_asm {
	print "        org 0\n";
	$address = 0;
	show_instrs(Asm::Z80::Table->asm_table);
}

write_asm;
