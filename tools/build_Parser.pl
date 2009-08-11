#!perl

# $Id$

# Build parser table for CPU::Z80::Assembler::Parser.pm

use strict;
use warnings;

use AsmTable;
use Data::Dump 'dump';
use lib 'Parser';
use ParserGenerator;
use File::Basename;

#------------------------------------------------------------------------------
@ARGV==2 or die "Usage: ",basename($0)," MODULE FILE.pm\n";
my($MODULE, $FILE) = @ARGV;

#------------------------------------------------------------------------------
# Load table with instructions
my $g = ParserGenerator->new;

$g->prolog('
#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Parser - Parser for the Z80 assembler

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Parser;
  z80parser($input, $program);
  error_at($token, $message)
  warning_at($token, $message);

=head1 DESCRIPTION

This module converts an input stream of tokens returned by the
L<CPU::Z80::Assembler::Lexer> to a binary object code that is returned in the
passed L<CPU::Z80::Assembler::Program> object.

=head1 EXPORTS

By default z80parser, error_at and warning_at subroutines are exported.

=head1 FUNCTIONS

=head2 z80parser

This function is just a wrapper around the parse function.
It takes as parameter a stream of assembly tokens as returned by the 
lexer and a L<CPU::Z80::Assembler::Program> object to collect the 
object code.

The assembly program is parsed and loaded into L<CPU::Z80::Assembler::Program>.

=cut

#------------------------------------------------------------------------------

use CPU::Z80::Assembler::Expr;
use CPU::Z80::Assembler::Opcode;
use CPU::Z80::Assembler::Token;
use HOP::Stream qw( node );

our $VERSION = "<VERSION>";

use base "Exporter";
our @EXPORT = qw( z80parser error_at warning_at );

');

$g->epilog('

sub z80parser { parse(@_) }

#------------------------------------------------------------------------------
# add opcode
sub _add_opcode {
	my($args, $program, $input, @bytes) = @_;
	if (@bytes) {
		my $opcode = CPU::Z80::Assembler::Opcode->new(
									child 	=> \@bytes,
									line	=> $args->[0][LINE]);
		$program->add($opcode);
	}
	return undef;
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler::Lexer>
L<CPU::Z80::Assembler::Program>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

');

# end of statement
$g->add_rule('end', 
					[':', "\n"], 
					'sub {undef}');				# check for end of statement

# expression operators
$g->add_rule('unop', 
					['-', '+', '!', '~'], 
					'sub {$_[ARGS][0]}');
$g->add_rule('binop', 
					['*', '/', '%', 
					 '+', '-', 
					 '<<', '>>', 
					 '<', '>', '<=', '>=', 
					 '==', '!=', 
					 '&', '|', '^', 
					 '&&', '||'], 
					'sub {$_[ARGS][0]}');

# expression terms					
$g->add_rule('term
					[unop]*', ['NUMBER', 'NAME', 'STRING'],
					'sub {$_[ARGS]}');
$g->add_rule('term
					[unop]* ( [expr] )',
					'sub {
						[ @{$_[ARGS]}[0 .. $#{$_[ARGS]} - 3], 	# unop*
						  $_[ARGS][-3],							# (
						  @{$_[ARGS][-2]},						# [expr]
						  $_[ARGS][-1],							# )
						]
					}');
$g->add_rule('term2
					[binop] [term]',
					'sub {[$_[ARGS][0], @{$_[ARGS][1]}]}');

# expression
$g->add_rule('expr
					[term] [term2]*',
					'sub {										# flat the input lists
						my @ret;
						for (@{$_[ARGS]}) {
							push(@ret, @$_);
						}
						\@ret;
					}');

# expression list
$g->add_rule('expr2
					, [expr]',
					'sub { $_[ARGS][1] }');

$g->add_rule('expr_list
					[expr] [expr2]*',
					'sub { $_[ARGS] }');

# expression for (ix+DIS)
$g->add_rule('expr_DIS
					[expr]',
					'sub {
						return CPU::Z80::Assembler::Expr->new(
									child 	=> $_[ARGS][0],
									line	=> $_[ARGS][0][0][LINE],
									type	=> "sb");
					}');

# expression for (ix-DIS)
$g->add_rule('expr_NDIS
					[expr_DIS]',
					'sub {
						return $_[ARGS][0]->build("-{}");
					}');

# expression for ld a,N
$g->add_rule('expr_N
					[expr]',
					'sub {
						return CPU::Z80::Assembler::Expr->new(
									child 	=> $_[ARGS][0],
									line	=> $_[ARGS][0][0][LINE],
									type	=> "ub");
					}');

# expression for DEFB N,N,...
$g->add_rule('expr_list_N
					[expr_list]',
					'sub {			# return list of N expressions
						my @ret;
						for (@{$_[ARGS][0]}) {
							push(@ret, CPU::Z80::Assembler::Expr->new(
									child 	=> $_,
									line	=> $_[ARGS][0][0][0][LINE],
									type	=> "ub"));
						}
						\@ret;
					}');

# expression for ld bc,NN
$g->add_rule('expr_NN
					[expr]',
					'sub {
						return CPU::Z80::Assembler::Expr->new(
									child 	=> $_[ARGS][0],
									line	=> $_[ARGS][0][0][LINE],
									type	=> "w");
					}');

# expression for DEFW NN,NN,...
$g->add_rule('expr_list_NN
					[expr_list]',
					'sub {			# return list of NN expressions
						my @ret;
						for (@{$_[ARGS][0]}) {
							push(@ret, 
									CPU::Z80::Assembler::Expr->new(
												child 	=> $_,
												line	=> $_[ARGS][0][0][0][LINE],
												type	=> "w"),
									undef,		# placeholder for second byte
								);
						}
						\@ret;
					}');

# expression org N, value is returned
$g->add_rule('expr_const
					[expr]',
					'sub {
						my $expr = CPU::Z80::Assembler::Expr->new(
									child 	=> $_[ARGS][0],
									line	=> $_[ARGS][0][0][LINE]);
						return $expr->evaluate();
					}');

# expression for bit N, set, res, im, rst -> encoded value pushed back to input stream
$g->add_rule('inline_const
					[expr]',
					# compute expression and push result into input stream as next token
					'sub {
						my $expr = CPU::Z80::Assembler::Expr->new(
									child 	=> $_[ARGS][0],
									line	=> $_[ARGS][0][0][LINE]);
						my $value = $expr->evaluate();
						$_[INPUT] = node(	CPU::Z80::Assembler::Token->new(
														type	=> $value,
														value 	=> $value,
														line 	=> $expr->line,
											),
											$_[INPUT]);
						return 0;	# return dummy value to keep index into values correct
					}');

# text expressions - STRING / NUMBER : return list of byte values left to right
$g->add_rule('expr_text_string
					STRING',
					'sub { 
						my @bytes = map {ord($_)} split(//, $_[ARGS][0][VALUE]);
						return \@bytes;
					}');

$g->add_rule('expr_text_number
					NUMBER',
					'sub {
						my @bytes;
						my $value = eval($_[ARGS][0][VALUE]); $@ and die $@;
						while ($value) {
							unshift(@bytes, $value & 0xFF);
							$value >>= 8;
						}
						return \@bytes;
					}');

$g->add_rule('cont_expr_N
					[binop] [expr_N]',
					'sub { $_[ARGS] }');

$g->add_rule('expr_text',
					['[expr_text_string]', '[expr_text_number]'], '[cont_expr_N]?',
					'sub { 
						my @bytes = @{ $_[ARGS][0] };
						
						if ( @{ $_[ARGS] } > 1 ) {
							my $last = pop(@bytes) || 0;			# last byte
							
							my $binop = $_[ARGS][1][0][TYPE];		# operator
							my $expr =  $_[ARGS][1][1]->build("$last $binop {}");
							
							return [ @bytes, $expr ];					
						}
						else {
							return \@bytes;
						}
					}');
					
$g->add_rule('expr_text2
					, [expr_text]',
					'sub { $_[ARGS][1] }');
					
$g->add_rule('expr_list_text
					[expr_text] [expr_text2]*',
					'sub { 
						my @bytes;
						for (@{$_[ARGS]}) {
							push @bytes, @$_;
						}
						return \@bytes;
					}');

# opcodes
$g->add_rule('opcode
					[end]', 
					'sub {undef}');

$g->add_rule('opcode',
					['defb', 'db'], '[expr_list_N] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode',
					['defw', 'dw'], '[expr_list_NN] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode',
					['defm', 'deft'], '[expr_list_text] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode
					org [expr_const]', 
					'sub {$_[PROG]->org($_[ARGS][1])}');

# labels
$g->add_rule('def_label
					= [expr_NN] [end]',
					'sub { $_[ARGS][1] }');

$g->add_rule('opcode
					NAME [def_label]?',
					'sub {
						my $name = $_[ARGS][0][VALUE];
						if ( @{$_[ARGS]} > 1 ) {	# NAME = expr
							my $expr = $_[ARGS][1];
							$_[PROG]->symbols->{$name} = $expr;
						}
						else {						# NAME label
													# define a dummy opcode that returns address
							my $opcode = CPU::Z80::Assembler::Opcode->new(
												child 	=> [],
												line	=> $_[ARGS][0][LINE]);
							$_[PROG]->add($opcode);
							$_[PROG]->symbols->{$name} = $opcode;
						}
						undef;
					}');


load_table(asm_table->{asm});


# program
$g->add_rule('program', '[opcode]*', '', 'sub {undef}');
$g->start_rule('program');

$g->write($MODULE, $FILE);

#------------------------------------------------------------------------------
sub load_table {
	my($in, @keys) = @_;
	
	if (ref($in) eq 'HASH') {
		for my $key (sort keys %$in) {
			load_table($in->{$key}, @keys, $key);
		}
	}
	elsif (ref($in) eq 'ARRAY') {
		add_parser_rules(@keys, $in);
	}
	else {
		die;
	}
}

#------------------------------------------------------------------------------
# add_parser_rules : convert an assembly language instruction into a parser statement 
sub add_parser_rules {
	my(@keys) = @_;

	# fill in the DIS expressions for the case "ld (ix),bc", which is translated to
	# "ld (ix),c : ld (ix+1),b"
	my %expr = (
		"DIS"		=> 0,
		"NDIS"		=> 0,
		"DIS+0x01"	=> 1,
		"NDIS+0x01"	=> 1,
	); 

	@keys = grep {$_ ne ""} @keys;
	splice(@keys, -1, 0, '[end]');

	for (my $i = 0; $i < @keys; $i++) {
		if ($keys[$i] eq "N") {
			# N
			$keys[$i] = '[expr_N]';
			$expr{N} = '$_[ARGS]['.$i.']';
		}
		elsif ($keys[$i] eq "NN") {
			# NN
			$keys[$i] = '[expr_NN]';
			$expr{NNl} = '$_[ARGS]['.$i.']';
			$expr{NNh} = 'undef';
			$expr{NNo} = '$_[ARGS]['.$i.']->build(\'{}-$-2\', type => "sb")';
		}
		elsif ($keys[$i] eq "DIS") {
			# DIS
			$keys[$i] = '[expr_DIS]';
			$expr{DIS} = '$_[ARGS]['.$i.']';
			$expr{"DIS+0x01"} = '$_[ARGS]['.$i.']->build(\'{}+1\')';
		}
		elsif ($keys[$i] eq "NDIS") {
			# NDIS
			$keys[$i] = '[expr_NDIS]';
			$expr{NDIS} = '$_[ARGS]['.$i.']';
			$expr{"NDIS+0x01"} = '$_[ARGS]['.$i.']->build(\'{}+1\')';
		}
		elsif ($keys[$i] =~ /^\d+$/) {
			# inline const - insert parser to get expression, compute value and insert
			# value in input stream

			splice(@keys, $i, 0, '[inline_const]');
			$i++; # skip number on next loop
		}			
	}
	
	for ($keys[-1]) {
		$_ = dump($_);
		s/([\[\s,])(\d+)([\]\s,])/$1.sprintf("0x%02X", $2).$3/ge;
		s/"(DIS|DIS\+0x01|NDIS|NDIS\+0x01|N|NNl|NNh|NNo)"/$expr{$1}/g;
		s/^\[//; s/\]$//;		# transform array ref into array
		$_ = 'sub {_add_opcode(@_, '.$_.'); }';
	}
	
	$g->add_rule('opcode', @keys);
}
