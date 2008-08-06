#!perl

#------------------------------------------------------------------------------
# Assemble with sjasmplus and compare result of our internal assembly
# with the output of sjasmplus

use strict;
use warnings;

#------------------------------------------------------------------------------
# Build input file for sjasmplus
sub build_input {
	my($asm_file, $asm_input_file) = @_;

	print "$asm_file -> $asm_input_file\n";
	
	open(my $in, $asm_file) or die "open $asm_file: $!\n";
	open(my $out, ">", $asm_input_file) or die "write $asm_input_file: $!\n";
	
	print $out "
	MACRO stop
	db 0xDD, 0xDD, 0x00
	ENDM
	
	MACRO STOP
	db 0xDD, 0xDD, 0x00
	ENDM
	
";
	# convert rst x --> rst x*8 (x in 1..7)
	while(<$in>) {
		s/(rst\s+)(\d+)(\s\s)/ $2 < 8 && $2 > 0 ? $1."8*".$2 : $1.$2.$3 /gie;
		print $out $_;
	}
}	

#------------------------------------------------------------------------------
# Assemble the given file
sub assemble { 
	my($asm_file, $lst_file, $obj_file) = @_;
	
	my $cmd = "sjasmplus --reversepop --lst=$lst_file --raw=$obj_file $asm_file";
	print "$cmd\n";
	
	system $cmd
		and die "Sjasmplus failed\n";
}

#------------------------------------------------------------------------------
# Revert output file from sjasmplus
sub build_output {
	my($lst_output_file, $lst_file) = @_;
	
	print "$lst_output_file -> $lst_file\n";
	
	open(my $in, $lst_output_file) or die "open $lst_output_file: $!\n";
	open(my $out, ">", $lst_file) or die "write $lst_file: $!\n";
	
	# convert rst x*8 --> rst x
	while(<$in>) {
		next if /MACRO/../ENDM/;
		s/(rst\s+)8\*(\d+)/$1$2  /gi;
		print $out $_;
	}
}

#------------------------------------------------------------------------------
# Compare assembled file by sjasmplus with our encoded bytes
sub compare_assembly {
	my($lst_file) = @_;

	print "Check $lst_file\n";
	
	open(my $fh, $lst_file) or die "Open $lst_file: $!\n";
	while (<$fh>) {
		if (/^\s* \d+ \s+ ([0-9A-F]{4} \s ([0-9A-F]{2} \s?)* ) \s+ \w+ .* ; \s+ ([0-9A-F ]+) \s* $/x) {
			my($a, $b) = ($1, $3);
			if ($a =~ /^\s*[0-9A-F]{4}\s*$/) {			# bytes on next line
				$_ = <$fh>;
				/^\s* \d+ \s+ ([0-9A-F]{4} \s ([0-9A-F]{2} \s?)+ )/x or die "cannot parse: $_";
				$a = $1;
			}
			for ($a, $b) { s/\s+//g }
			die "Wrong assembly, '$a' ne '$b' at: $_" unless $a eq $b;
		}
		elsif (/^ \s* \d+ \s+ [0-9A-F]+ 
				  ( ~ .* |
					\s+ (org \s+ [0-9A-F]+ | macro .* | endm)? 
			      ) \s* $/ix) {
			;
		}
		else {
			die "Cannot parse: $_";
		}
	}
}

@ARGV==1 or die "assemble FILE_BASE\n";
my $file = shift; $file =~ s/\..*//;

build_input("$file.asm", "$file.sj.asm");
assemble("$file.sj.asm", "$file.sj.lst", "$file.obj");
build_output("$file.sj.lst", "$file.lst");
compare_assembly("$file.lst");
