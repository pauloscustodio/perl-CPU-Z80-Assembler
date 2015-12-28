#!perl

# $Id$

# Build parser table for CPU::Z80::Assembler::Parser.pm

use strict;
use warnings;

use Asm::Z80::Table;
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

$g->prolog(q{
our $VERSION = '2.15';

use CPU::Z80::Assembler;
use CPU::Z80::Assembler::Expr;
use CPU::Z80::Assembler::Macro;
use CPU::Z80::Assembler::Opcode;
use CPU::Z80::Assembler::JumpOpcode;
use Asm::Preproc::Token;

use base "Exporter";
our @EXPORT = qw( z80parser );

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Parser - Parser for the Z80 assembler

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Parser;
  z80parser($input, $program);

=head1 DESCRIPTION

This module converts an input stream of tokens returned by the
L<CPU::Z80::Assembler|CPU::Z80::Assembler> C<z80lexer> to a binary object code
that is returned in the
passed L<CPU::Z80::Assembler::Program|CPU::Z80::Assembler::Program> object.

=head1 EXPORTS

By default the z80parser subroutines is exported.

=head1 FUNCTIONS

=head2 z80parser

This function is just a wrapper around the parse function.
It takes as parameter a stream of assembly tokens as returned by the 
lexer and a L<CPU::Z80::Assembler::Program|CPU::Z80::Assembler::Program> object to collect the 
object code.

The assembly program is parsed and loaded into L<CPU::Z80::Assembler::Program|CPU::Z80::Assembler::Program>.

=cut

#------------------------------------------------------------------------------

});

$g->epilog(q{

sub z80parser { parse(@_) }

#------------------------------------------------------------------------------
# add opcode
sub _add_opcode {
	my($args, $program, $input, @bytes) = @_;
	if (@bytes) {
		my $opcode = CPU::Z80::Assembler::Opcode->new(
									child 	=> \@bytes,
									line	=> $args->[0]->line);
		$program->add_opcodes($opcode);
	}
	return undef;
}

sub _add_jump_opcode {
	my($args, $program, $input, @opcodes) = @_;
	if (@opcodes) {
		my $opcode_short = CPU::Z80::Assembler::Opcode->new(
									child 	=> $opcodes[0],
									line	=> $args->[0]->line);
		my $opcode_long = CPU::Z80::Assembler::Opcode->new(
									child 	=> $opcodes[1],
									line	=> $args->[0]->line);
		my $opcode = CPU::Z80::Assembler::JumpOpcode->new(
									short_jump	=> $opcode_short,
									long_jump	=> $opcode_long);
		$program->add_opcodes($opcode);
	}
	return undef;
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler|CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler|CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Program|CPU::Z80::Assembler::Program>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler|CPU::Z80::Assembler>.

=cut

});

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
									line	=> $_[ARGS][0][0]->line,
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
									line	=> $_[ARGS][0][0]->line,
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
									line	=> $_[ARGS][0][0][0]->line,
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
									line	=> $_[ARGS][0][0]->line,
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
												line	=> $_[ARGS][0][0][0]->line,
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
									line	=> $_[ARGS][0][0]->line);
						return $expr->evaluate();
					}');

# expression for bit N, set, res, im, rst -> encoded value pushed back to input stream
$g->add_rule('inline_const
					[expr]',
					# compute expression and push result into input stream as next token
					'sub {
						my $expr = CPU::Z80::Assembler::Expr->new(
									child 	=> $_[ARGS][0],
									line	=> $_[ARGS][0][0]->line);
						my $value = $expr->evaluate();
						$_[INPUT]->unget(Asm::Preproc::Token->new($value,
																  $value,
																  $expr->line));
						return 0;	# return dummy value to keep index into values correct
					}');

# text expressions - STRING / NUMBER : return list of byte values left to right
$g->add_rule('expr_text_string
					STRING',
					'sub { 
						my @bytes = map {ord($_)} split(//, $_[ARGS][0]->value);
						return \@bytes;
					}');

$g->add_rule('expr_text_number
					NUMBER',
					'sub {
						my @bytes;
						my $value = eval($_[ARGS][0]->value); $@ and die $@; # ASSERT
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
							
							my $binop = $_[ARGS][1][0]->type;		# operator
							my $expr =  $_[ARGS][1][1]->build("$last $binop {}");
							
							return [ @bytes, $expr ];					
						}
						else {
							return \@bytes;
						}
					}');
					
$g->add_rule('expr_textz',
					'[expr_text]',
					'sub {
						my @bytes = ( @{ $_[ARGS][0] }, 0 );
						return \@bytes;
					}');
					
$g->add_rule('expr_text7',
					'[expr_text]',
					'sub {
						my @bytes = ( @{ $_[ARGS][0] } );
						my $last = pop(@bytes) || 0;
						
						if (ref $last) {		# is expression
							push @bytes, $last->build("{} | 0x80");
						}
						else {					# is literal
							push @bytes, $last | 0x80;
						}
						
						return \@bytes;
					}');
					
$g->add_rule('expr_text2
					, [expr_text]',
					'sub { $_[ARGS][1] }');
					
$g->add_rule('expr_textz_2
					, [expr_textz]',
					'sub { $_[ARGS][1] }');
					
$g->add_rule('expr_text7_2
					, [expr_text7]',
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

$g->add_rule('expr_list_textz
					[expr_textz] [expr_textz_2]*',
					'sub { 
						my @bytes;
						for (@{$_[ARGS]}) {
							push @bytes, @$_;
						}
						return \@bytes;
					}');

$g->add_rule('expr_list_text7
					[expr_text7] [expr_text7_2]*',
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
					['defb'], '[expr_list_N] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode',
					['defw'], '[expr_list_NN] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode',
					['defm', 'deft'], '[expr_list_text] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode',
					['defmz'], '[expr_list_textz] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode',
					['defm7'], '[expr_list_text7] [end]',
					'sub {
						_add_opcode(@_, @{$_[ARGS][1]});
					}');

$g->add_rule('opcode
					org [expr_const]', 
					'sub {$_[PROG]->org($_[ARGS][1])}');

# labels
$g->add_rule('def_label',
					['=','equ'],'[expr_NN] [end]',
					'sub { $_[ARGS][1] }');

$g->add_rule('opcode
					NAME [def_label]?',
					'sub {
						my $name = $_[ARGS][0]->value;
						if ( @{$_[ARGS]} > 1 ) {	# NAME = expr
							my $expr = $_[ARGS][1];
							$_[PROG]->symbols->{$name} = $expr;
						}
						elsif (exists $_[PROG]->macros->{$name}) {
													# MACRO call
							$_[PROG]->macros->{$name}->expand_macro($_[INPUT]);
						}
						else {						# NAME label
							$_[PROG]->add_label($name, $_[ARGS][0]->line);
						}
						undef;
					}');

# macro definition
$g->add_rule('macro_arg
					NAME 
					',
					'sub { 
						$_[ARGS][0]->value }');

$g->add_rule('macro_arg2
					, NAME 
					',
					'sub { 
						$_[ARGS][1]->value }');

$g->add_rule('macro_args
					[macro_arg] [macro_arg2]*
					',
					'sub { 
						$_[ARGS] }');

$g->add_rule('macro_args_optional
					[macro_args]?
					',
					'sub { 
						defined($_[ARGS][0]) ? $_[ARGS][0] : [] }');

$g->add_rule('macro_body',
					['{', ':', "\n"],
					'sub {
						$_[INPUT]->unget($_[ARGS][0]);		# push back starting token
						my $macro = CPU::Z80::Assembler::Macro->new();
						$macro->parse_body($_[INPUT]);
						return $macro;
					}');

$g->add_rule('macro
					macro NAME [macro_args_optional] [macro_body]
					',
					'sub {
						my $name = $_[ARGS][1]->value;
						exists $_[PROG]->macros->{$name}
							and $_[ARGS][1]->error("macro $name redefined");

						my $macro = $_[ARGS][3];
						$macro->name(   $name );
						$macro->params( $_[ARGS][2] );
						$_[PROG]->macros->{$name} = $macro;
					}');

$g->add_rule('opcode
					[macro] [end]',
					'sub {undef}');

load_table(Asm::Z80::Table->asm_table);


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
		"DIS+1"		=> 1,
		"NDIS+1"	=> 1,
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
			$expr{"DIS+1"} = '$_[ARGS]['.$i.']->build(\'{}+1\')';
		}
		elsif ($keys[$i] eq "NDIS") {
			# NDIS
			$keys[$i] = '[expr_NDIS]';
			$expr{NDIS} = '$_[ARGS]['.$i.']';
			$expr{"NDIS+1"} = '$_[ARGS]['.$i.']->build(\'{}+1\')';
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
		s/([\[\s,])(\d+)([\]\s,])/$1._hex($2).$3/ge;
		s/"(DIS|DIS\+1|NDIS|NDIS\+1|N|NNl|NNh|NNo)"/$expr{$1}/g;
		s/^\[//; s/\]$//;		# transform array ref into array
		
		if ($keys[0] =~ /DJNZ/i) {
			# jump opcode : short : DJNZ; long : DEC B:JP NZ
			$_ = 'sub {_add_jump_opcode(@_, ['.$_.'], '.
							'['.
							_hex(Asm::Z80::Table->asm_table->{dec}{b}{""}[0]).', '.
							_hex(Asm::Z80::Table->asm_table->{jp}{nz}{','}{NN}{""}[0]).', '.
							$expr{NNl}.', '.$expr{NNh}.']); }';
		}
		elsif ($keys[0] =~ /JR/i) {
			if ($keys[1] =~ /^\w+$/) {		# JR FLAG,NN
				$_ = 'sub {_add_jump_opcode(@_, ['.$_.'], '.
							'['.
							_hex(Asm::Z80::Table->asm_table->{jp}{$keys[1]}{','}{NN}{""}[0]).', '.
							$expr{NNl}.', '.$expr{NNh}.']); }';
			}
			else {							# JR NN
				$_ = 'sub {_add_jump_opcode(@_, ['.$_.'], '.
							'['.
							_hex(Asm::Z80::Table->asm_table->{jp}{NN}{""}[0]).', '.
							$expr{NNl}.', '.$expr{NNh}.']); }';
			}
		}
		else {
			$_ = 'sub {_add_opcode(@_, '.$_.'); }';
		}
	}
	
 	$g->add_rule('opcode', @keys);
}

sub _hex {
	my(@n) = @_;
	return join(", ", 
				map {sprintf("0x%02X", $_)} @n);
}
