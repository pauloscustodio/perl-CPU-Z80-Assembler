#!perl

# $Id$

my $REPEAT = 23;

print "\tORG 0\n\n";
print "; Source file compatible with CPU::Z80::Assembler 1.0 to benchmark\n";
print "; speed differences between different versions (about 64K of object code)\n";

print "\n";

my %seen;
my $label;
while(<>) {
	$_ = uc($_);				
	s/;\s[0-9A-F]{4}/; /;					
	
	s/((DJNZ|JR)\s+([A-Z]+,)?)\d+/$1\$\$+2/;
	
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
	
	next if $seen{$_}++;

	print "\n; ", "-"x70, "\n\n";

	$label++;
	print "\$s$label\n";	
	print "\tDJNZ \$s$label\n";
	for my $repeat (1..$REPEAT) {
		print;
	}
}
