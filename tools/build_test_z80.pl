#!perl

#------------------------------------------------------------------------------
# $Id$
# Build all CPU::Z80::Assembler instructions, ready to assemble by 
# sjasmplus (http://sjasmplus.sourceforge.net/)

use strict;
use warnings;

use AsmTable;

#------------------------------------------------------------------------------
# write all available instructions
my $address;
sub show_instr {
	my($args, $bytes) = @_;
	
	my $opcode = shift(@$args);
	my @args = grep {$_ ne ""} @$args;
	my @bytes = @$bytes;
	
	if ("@args" =~ /(\bNN?\b|\bNN?\d+|\bDIS\b|\bDIS\d+)/) {
		my $found = $1;
		for (   -0x8000, 
				-0x80, -1, 
				0, 0x7F, 
				0xFF, 
				0x7FFF, 0xFFFF) {
			my $value = $_;	# allow modification below
			next if (($found =~ /DIS/ || $opcode =~ /jr|djnz/i) && ($value < -0x80 || $value > 0x7F));
			next if ($found =~ /^N\d*$/                         && ($value < -0x80 || $value > 0xFF));
			$value += $address + 2 if $opcode =~ /jr|djnz/i;
			$value-- if ($value == 127 && "@args" =~ /bc|de|hl/i && $found =~ /DIS/);

			my @args_copy = @args; 
			my @bytes_copy = @bytes;
			for (@args_copy, @bytes_copy) {
				s/${found}h/ ($value >> 8          ) & 0xFF /ge;
				s/${found}l/ ($value               ) & 0xFF /ge;
				s/${found}o/ ($value - $address - 2) & 0xFF /ge;
				s/$found/$value/g;
			}
			for (@args_copy) {
				s/(i[xy])\+0\b/$1/ig;
			}
			show_instr([$opcode, @args_copy], [@bytes_copy]);
		}
		return;
	}

	my $asm = sprintf("%8s%-5s%-19s",
					  "",
					  $opcode, 
					  join("", @args));

	print $asm, sprintf("; %04X %s\n",  
					  $address, 
					  join(" ", map {sprintf("%02X", eval "(0+$_) & 0xFF")} @bytes)); 
	$address += @bytes;
	
	# upper case
	$args[-1] += 2 if $opcode =~ /jr|djnz/i;	# new instruction 2 bytes further down
	$asm = uc(sprintf("%8s%-5s%-19s",
						  "",
						  $opcode, 
					  	  join("", @args)));
					  	  
	print $asm, sprintf("; %04X %s\n",  
					  $address, 
					  join(" ", map {sprintf("%02X", eval "(0+$_) & 0xFF")} @bytes)); 
	$address += @bytes;
	
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
	show_instrs(asm_table->{asm});
}

write_asm;
