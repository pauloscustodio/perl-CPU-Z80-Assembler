#!perl

#------------------------------------------------------------------------------
# $Id$
# Build parser table for CPU::Z80::Assembler::Parser.pm
# Needs sjasmplus (http://sjasmplus.sourceforge.net/) to validate assembled code

use strict;
use warnings;

use AsmTable;
use Data::Dump 'dump';

#------------------------------------------------------------------------------
# write parse table with all instruction

sub instr {
	my($args, $bytes, $next_expr) = @_;

	$next_expr ||= 2;	# first expression is $_[2]
	my %expr;
	
	# get @args, converting expressions
	my @args;
	for (@$args) {
		next if $_ eq "";
		if ($_ eq "N") {
			$expr{$_} = '["ub", $_['.($next_expr++).']]';
			$_ = "EXPR";
		}
		elsif ($_ eq "DIS") {
			pop(@args) eq "+" or die;		# remove '+' from '+DIS'

			$expr{$_} = '["sb", $_['.($next_expr).']]';

			# compute "(expr) + 1"
			$expr{$_."+0x01"} = '["sb", append('.
											'list_to_stream(["(","("]), '.
											'$_['.($next_expr).'], '.
											'list_to_stream([")",")"]), '.
											'list_to_stream(["+","+"]), '.
											'list_to_stream(["NUMBER",1])'.										
											')]';
			$_ = "EXPR";
			$next_expr++;
		}	
		elsif ($_ eq "NN") {
			$expr{$_."l"} = '["w", $_['.($next_expr).']]';
			$expr{$_."h"} = '[]';
			
			# compute "(expr) - $ - 2"
			$expr{$_."o"} = '["sb", append('.
								'list_to_stream(["(","("]), '.
								'$_['.($next_expr).'], '.
								'list_to_stream([")",")"], '.
											   '["-","-"], ["NAME","\$"], '.
											   '["-","-"], ["NUMBER",2])'.										
							')]';

			$_ = "EXPR";
			$next_expr++;
		}
		push(@args, $_);
	}
	push(@args, 'END', '');

	# map @bytes, including expressions
	my @bytes;
	for (@$bytes) {
		if (defined $expr{$_}) {
			$_ = $expr{$_};
		}
		else {
			$_ = sprintf("0x%02X", $_);
		}
		push(@bytes, $_);
	}
	$bytes = join(', ', @bytes);

	return  '$table->'.join('', (map {'{'.dump($_).'}'} @args)).
			' ||= '.
			'sub {(["OPCODE", '.$bytes.'], $_[0])};'."\n";
}

sub write_table {
	my($table, $cexpr_key, $cexpr, $next_expr, @previous) = @_;
	if (ref($table) eq "ARRAY") {
		my $instr = instr(\@previous, $table, $next_expr);
		
		if (defined($cexpr_key)) {				# load CEXPR
			my($key, $sub) = split(/\s*\|\|\=\s*/, $instr);
			$key =~ s/\{$cexpr_key\}/{"CEXPR"}/;
			$cexpr->{$key}{$cexpr_key} = $sub;
		}
		else {
			print $instr;
		}
	}
	else {
		# first dump the non-CEXPR
		for my $key (sort keys %$table) {
			next if $key =~ /^\d+$/;
			write_table($table->{$key}, $cexpr_key, $cexpr, $next_expr, @previous, $key);
		}

		# then collect all CEXPR and dump then groupped
		$cexpr = {};
		$next_expr = 3;							# consume first expression
		for my $key (sort keys %$table) {
			next unless $key =~ /^\d+$/;
			$cexpr_key = $key;
			write_table($table->{$key}, $cexpr_key, $cexpr, $next_expr, @previous, $key);
		}
			
		# dump select statement
		for my $key (sort keys %$cexpr) {
			my $value = $cexpr->{$key};
			print $key,' ||= sub { ',
				  'my $lu = ',dump_sub_hash($value),
				  'defined($lu->{$_[2]}) ? '.
						'$lu->{$_[2]}->(@_) : '.
						'die("Value $_[2] is not allowed\\n");',
				  "};\n";
		}
	}
}

sub dump_sub_hash {
	my($h) = @_;
	my $ret = "{\n";
	for my $key (sort keys %$h) {
		my $value = $h->{$key};
		chomp($value);
		$value =~ s/;.*//;
		$ret .= $key." => ".$value.", \n";
	}
	$ret .= "}; ";
	$ret;
}


print 
'# Generated file, do not edit
# $Id$
package CPU::Z80::Assembler::ParserTable;

use HOP::Stream qw(append list_to_stream);

#------------------------------------------------------------------------------
# LOOKUP-TABLES
# 	The order is important: an instruction is only loaded if not yet defined
#	Lookup table of all assembly instructions recognized by the assembler
#	Sequence is indexed by a sequence of token labels, followed by "" as the 
#	last key. The value is a fucntion with the signature:
#		($parsed, $input) = f($input, $start, @expr)
#	$input is the current stream position after the recognized tokens
#	$start is the stream position at the start of the instruction
#	@expr are all the expressions parsed, as streams.
#	Functions die with error message on parse failure, error will be caught
#	to explain where the error occured.

sub _parser_table {
my $table;
';

write_table(asm_table->{asm});

print 
'$table;
}
1;
';
