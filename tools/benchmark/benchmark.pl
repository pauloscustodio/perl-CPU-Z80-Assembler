#!perl

# $Id$
# Benchmark speed of assembly

use strict;
use warnings;

use File::Basename;
use Time::HiRes qw(time);
use File::Slurp;

my $USAGE = "Usage: ".basename($0)." KEY [ ENV=VALUE... ] COMMAND\n";

my($name, @command) = @ARGV;
$name && @command or die $USAGE;
my $bmk_file = basename($0,".pl")."_".$name.".txt";

# setup environment
while (@command && $command[0] =~ /^(\w+)=(.*)/) {
	$ENV{$1} = $2;
	shift @command;
}
@command or die $USAGE;

# benchmark
my $t1 = time;
print "@command\n";
system(@command) and die "Command failed\n";
my $t2 = time;
my $time = ($t2-$t1);

# replace benchmark value
my($avg_time, $total_time, $count, $read_name, @read_command) 
	= split(" ", read_file($bmk_file, err_mode => 'quiet') || "");
$total_time += $time;
$count++;
$avg_time = $total_time/$count;
write_file($bmk_file, {atomic => 1}, 
	join("\t", $avg_time, $total_time, $count, $name, @command));

print STDERR sprintf("This run time: %5.3f s\n".
					 "Average time:  %5.3f s\n".
					 "Count: %d\n", 
					 $time, $avg_time, $count);
