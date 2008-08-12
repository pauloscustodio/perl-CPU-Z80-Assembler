#!perl

# $Id$
# Benchmark speed of assembly

use strict;
use warnings;

use CPU::Z80::Assembler;
use Digest::MD5 qw(md5_hex);
use File::Basename;
use File::Copy;
use File::Slurp;
use Time::HiRes qw(time);

use constant { REPEAT => 10, BMK_FILE => basename($0,".pl").".txt" };

$|=1;

my $asm_file = shift;
@ARGV==0 && $asm_file or die "Usage: ",basename($0)," ASM_FILE\n";
-f $asm_file or die "File $asm_file not found\n";
my $obj_file = basename($asm_file, ".asm").".obj";
my $lst_file = basename($asm_file, ".asm").".lst";

my $version = $CPU::Z80::Assembler::VERSION;
my $digest = "$asm_file-".md5_hex(read_file($asm_file)).":z80masm-$version";

print "Benchmark CPU::Z80::Assembler $digest\n";

my $t1 = time;
for (1 .. REPEAT) {
	print "z80masm $asm_file - $_ / ", REPEAT, "\r";
	system "perl -S z80masm $asm_file $obj_file > $lst_file";
}
my $t2 = time;
my $time = ($t2-$t1)/REPEAT;
print "\nTotal time per run: $time s\n";

# replace benchmark value
my %bmk;
for (read_file(BMK_FILE, err_mode => 'quiet')) {
	next if /^\s*\#/;
	next if /^\s*$/;
	
	my($key, $value) = split(' ', $_);
	$bmk{$key} = $value;
}

print "Replace ",$bmk{$digest}," by ",$time,"\n" if $bmk{$digest};
$bmk{$digest} = $time;

my @out = ("# ".sprintf("%-*s", length($digest)-2, "asm_file_MD5:z80masm_version").
		   "\tassemble_time_seconds\n");
for (sort keys %bmk) {
	push(@out, $_."\t".$bmk{$_}."\n");
}
write_file(BMK_FILE, {atomic => 1}, @out);
