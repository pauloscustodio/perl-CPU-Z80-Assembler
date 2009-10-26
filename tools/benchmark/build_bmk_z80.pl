#!perl

# $Id$

my $REPEAT = 1; # 16;

print "\tORG 0\n\n";
print "; Source file compatible with CPU::Z80::Assembler 1.0 to benchmark\n";
print "; speed differences between different versions\n";

print "\n";

#my %seen;
my $label;
my $address = 0;
while(<>) {
	$_ = uc($_);				
	
	next if /[\[\]]/;			
	next if /HX|HY|XH|YH|LX|LY|XL|YL/;
	next if /EX\s+AF(,AF)?\s+/;
	next if /EXA/;
	next if /\((IX|IY)\)/ && ! /JP/;
	next if /JP\s+(HL|IX|IY)/;
	next if /\((IX|IY|HL)/ && /BC|DE|HL/;
	next if /\bR\b/;
	next if /,.*,/;
	next if /(RL|RR|RLC|RRC|SLA|SRA)\s+(BC|DE|HL)/;
	next if /(RL|RR|RLC|RRC|SLA|SRA)\s+\((IX|IY).*,/;
	next if /SLI|SLL/;
	next if /SUB\s+HL/;
	next if /IN\s+F/;
	next if /OUT.*0/;
	next if /RST\s+(\d+)/ && $1 > 0 && $1 < 8;
	next if /LD\s+(BC|DE|HL|IX|IY),(BC|DE|HL|IX|IY)/;
	next if /(LDI|LDD)\s+\S/;
	next if /ORG/;
	next if /ADC\s+A,-/;
	
#	next if $seen{$_}++;

	print "\n; ", "-"x70, "\n\n";

	$label++;
	print "\$s$label\n";
	printf(" " x 8 . "%-24s; %04X 10 FE\n", "DJNZ \$s$label", $address);
	$address += 2;

	for my $repeat (1..$REPEAT) {
		# DJNZ|JR -> jump back 2+2*repeat bytes to label
		my $jump = sprintf("%02X", 0xFE - 2*$repeat);
		s/( (DJNZ|JR) \s+ ([A-Z]+,)? ) (\d+|\$\w+) ( \s+ ; \s+ [0-9A-F]{4} \s+ [0-9A-F]{2}) .*/$1\$s$label$5 $jump/ix;
		
		s/;\s[0-9A-F]{4}/sprintf("; %04X", $address)/e;
		/; [0-9A-F]{4}\s+([0-9A-F\s]+)/ or die;
		my @bytes = split(" ", $1);
		$address += @bytes;
		print;
	}
}
