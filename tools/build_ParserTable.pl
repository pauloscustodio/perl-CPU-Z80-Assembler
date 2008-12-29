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
# Create parser table : key is '$table->{"jr"}...', value is 'sub {(["OPCODE"...}'
# The order is important: an instruction is only loaded if not yet defined
my %parser_table;

sub add_parser_table {
	my($key, $value) = @_;
	defined $parser_table{$key} 
		and die "$key multiply defined: ",$parser_table{$key}," and ",$value,"\n";
	$parser_table{$key} = $value;
}
sub change_parser_table {
	my($key, $value) = @_;
	$parser_table{$key} = $value;
}
sub get_parser_table {
	my($key) = @_;
	defined($key) or return \%parser_table;
	
	defined $parser_table{$key} 
		or die "$key not defined\n";
	return $parser_table{$key};
}
sub print_parser_table {
	for (sort keys %parser_table) {
		print $_,"\t= ",$parser_table{$_},";\n";
	}
}

#------------------------------------------------------------------------------
# return ($key, $sub) for the given instruction @args and @bytes, computes
# expressions
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
			$_ = "OPTEXPR";
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

	my $key = '$table->'.join('', (map {'{'.dump($_).'}'} @args));
	my $sub = 'sub {(["OPCODE", '.$bytes.'], $_[0])}';
	
	return ($key, $sub);
}

#------------------------------------------------------------------------------
# Recursive function to load a sub-tree of instructions starting at $table
sub load_table {
	my($table, $cexpr_key, $cexpr, $next_expr, @previous) = @_;
	if (ref($table) eq "ARRAY") {
		my($key, $sub) = instr(\@previous, $table, $next_expr);
		
		if (defined($cexpr_key)) {				# load CEXPR
			$key =~ s/\{$cexpr_key\}/{"CEXPR"}/;
			$cexpr->{$key}{$cexpr_key} = $sub;
		}
		else {
			add_parser_table($key, $sub);
		}
	}
	else {
		# first dump the non-CEXPR
		for my $key (sort keys %$table) {
			next if $key =~ /^\d+$/;
			load_table($table->{$key}, $cexpr_key, $cexpr, $next_expr, @previous, $key);
		}

		# then collect all CEXPR and dump then groupped
		$cexpr = {};
		$next_expr = 3;							# consume first expression
		for my $key (sort keys %$table) {
			next unless $key =~ /^\d+$/;
			$cexpr_key = $key;
			load_table($table->{$key}, $cexpr_key, $cexpr, $next_expr, @previous, $key);
		}
			
		# dump select statement
		for my $key (sort keys %$cexpr) {
			my $value = $cexpr->{$key};
			my $sub = 'sub { '.
				  'my $lu = '.dump_sub_hash($value).
				  'defined($lu->{$_[2]}) ? '.
						'$lu->{$_[2]}->(@_) : '.
						'die("Value $_[2] is not allowed\\n");}';
			add_parser_table($key, $sub);
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

#------------------------------------------------------------------------------
# Convert the jr/djnz instructions from ["OPCODE", byte, ["sb", expr]] into 
# ["JR", target_expr, [["OPCODE", jr_instr], ["OPCODE", jp_instr]]]
sub load_jr_instr {
	while (my($key, $value) = each %{get_parser_table()}) {
		if ($key =~ /"jr"/) {
			my $jr_value = $value;
			(my $jp_key = $key) =~ s/"jr"/"jp"/;
			my $jp_value = get_parser_table($jp_key);
			
			for ($jr_value, $jp_value) {
				s/^sub \{\(//;
				s/, \$_\[0\]\)\}$//;
			}
			my $new_value = 'sub {(["JR", $_[2], '.
							'['.$jr_value.','.
							' '.$jp_value.']], $_[0])}';
			change_parser_table($key, $new_value);
		}
		elsif ($key =~ /"djnz"/) {
			my $djnz_value = $value;
			(my $dec_key = $key) =~ s/"djnz"\}\{"EXPR"/"dec"}{"b"/;
			my $dec_value = get_parser_table($dec_key);
			(my $jp_key = $key) =~ s/"djnz"/"jp"}{"nz"}{","/;
			my $jp_value = get_parser_table($jp_key);
			
			for ($djnz_value, $dec_value, $jp_value) {
				s/^sub \{\(//;
				s/, \$_\[0\]\)\}$//;
			}
			$dec_value =~ s/\["OPCODE", (0x[0-9A-F]+)\]/$1/ or die $dec_value;
			$jp_value =~  s/("OPCODE", )/$1$dec_value, / or die $jp_value;

			my $new_value = 'sub {(["JR", $_[2], '.
							'['.$djnz_value.','.
							' '.$jp_value.']], $_[0])}';
			change_parser_table($key, $new_value);
		}
	}
}


#------------------------------------------------------------------------------
# Generate output
print 
'# Generated file, do not edit
# $Id$
package CPU::Z80::Assembler::ParserTable;

use HOP::Stream qw(append list_to_stream);

#------------------------------------------------------------------------------
# LOOKUP-TABLES
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

load_table(asm_table->{asm});
#load_jr_instr();
print_parser_table();

print 
'$table;
}
1;
';
