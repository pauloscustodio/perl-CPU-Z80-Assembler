# Generated file, do not edit
# $Id$
package CPU::Z80::Assembler::ParserTable;

our $VERSION = '2.05_01';

use CPU::Z80::Assembler::Opcode;
use CPU::Z80::Assembler::Expr;
use HOP::Stream qw( head );

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
$table->{"adc"}{"a"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8E ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCE, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8E ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8F ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x88 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x89 ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8A ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8B ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8C ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"a"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x8D ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"hl"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x4A ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"hl"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x5A ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"hl"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"adc"}{"hl"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x7A ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x86 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x86, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x86, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC6, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x86 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x86, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x86, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x87 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x80 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x81 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x82 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x83 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x84 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"a"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x85 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"hl"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x09 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"hl"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x19 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"hl"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x29 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"hl"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x39 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"ix"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x09 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"ix"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x19 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"ix"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x29 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"ix"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x39 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"iy"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x09 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"iy"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x19 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"iy"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x29 ]);
			return ($opcode, $input);
		};
$table->{"add"}{"iy"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x39 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA6 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE6, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA6 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA7 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA0 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA1 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA2 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA3 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA4 ]);
			return ($opcode, $input);
		};
$table->{"and"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xA5 ]);
			return ($opcode, $input);
		};
$table->{"bit"}{"CEXPR"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x56 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x66 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6E ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x76 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x4E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x56 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x5E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x66 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x6E ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x76 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x7E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x4E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x56 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x5E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x66 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x6E ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x76 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x7E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x56 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x66 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6E ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x76 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x4E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x56 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x5E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x66 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x6E ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x76 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x7E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x4E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x56 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x5E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x66 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x6E ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x76 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x7E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x47 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4F ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x57 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5F ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x67 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6F ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x77 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7F ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x40 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x48 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x50 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x58 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x60 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x68 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x70 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x78 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x41 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x49 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x51 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x59 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x61 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x69 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x71 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x79 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x42 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4A ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x52 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5A ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x62 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6A ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x72 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7A ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x43 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4B ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x53 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5B ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x63 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6B ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x73 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7B ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x44 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4C ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x54 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5C ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x64 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6C ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x74 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7C ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"bit"}{"CEXPR"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x45 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x4D ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x55 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x5D ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x65 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x6D ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x75 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x7D ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"call"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCD, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"c"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDC, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"m"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFC, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"nc"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD4, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"nz"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC4, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"p"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF4, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"pe"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xEC, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"po"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE4, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"call"}{"z"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCC, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ccf"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3F ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBE ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFE, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBE ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBF ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB8 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB9 ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBA ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBB ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBC ]);
			return ($opcode, $input);
		};
$table->{"cp"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xBD ]);
			return ($opcode, $input);
		};
$table->{"cpd"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xA9 ]);
			return ($opcode, $input);
		};
$table->{"cpdr"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xB9 ]);
			return ($opcode, $input);
		};
$table->{"cpi"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xA1 ]);
			return ($opcode, $input);
		};
$table->{"cpir"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xB1 ]);
			return ($opcode, $input);
		};
$table->{"cpl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2F ]);
			return ($opcode, $input);
		};
$table->{"daa"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x27 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x35 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x35, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x35, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x35 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x35, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x35, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x05 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0B ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x15 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1B ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2B ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3B ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"dec"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"di"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF3 ]);
			return ($opcode, $input);
		};
$table->{"djnz"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x10, 
										$expr[0]->build("{}-\$-2", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ei"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFB ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"("}{"sp"}{")"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE3 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"("}{"sp"}{")"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE3 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"("}{"sp"}{")"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE3 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"["}{"sp"}{"]"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE3 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"["}{"sp"}{"]"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE3 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"["}{"sp"}{"]"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE3 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"af"}{","}{"af"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x08 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"af"}{","}{"af'"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x08 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"af"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x08 ]);
			return ($opcode, $input);
		};
$table->{"ex"}{"de"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xEB ]);
			return ($opcode, $input);
		};
$table->{"exa"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x08 ]);
			return ($opcode, $input);
		};
$table->{"exx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD9 ]);
			return ($opcode, $input);
		};
$table->{"halt"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x76 ]);
			return ($opcode, $input);
		};
$table->{"im"}{"CEXPR"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xED, 0x46 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xED, 0x56 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xED, 0x5E ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"in"}{"a"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDB, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"a"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x78 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"a"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDB, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"a"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x78 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"b"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x40 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"b"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x40 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"c"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x48 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"c"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x48 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"d"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x50 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"d"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x50 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"e"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x58 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"e"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x58 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"f"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x70 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"f"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x70 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"h"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"h"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"l"}{","}{"("}{"c"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"in"}{"l"}{","}{"["}{"c"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x34 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x34, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x34, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x34 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x34, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x34, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x04 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x03 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x14 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x13 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x23 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x33 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"inc"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"ind"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xAA ]);
			return ($opcode, $input);
		};
$table->{"indr"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xBA ]);
			return ($opcode, $input);
		};
$table->{"ini"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xA2 ]);
			return ($opcode, $input);
		};
$table->{"inir"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xB2 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"("}{"ix"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"("}{"iy"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC3, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"["}{"ix"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"["}{"iy"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"c"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDA, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE9 ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"m"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFA, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"nc"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD2, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"nz"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC2, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"p"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF2, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"pe"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xEA, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"po"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE2, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jp"}{"z"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCA, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"jr"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x18, 
										$expr[0]->build("{}-\$-2", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"jr"}{"c"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x38, 
										$expr[0]->build("{}-\$-2", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"jr"}{"nc"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x30, 
										$expr[0]->build("{}-\$-2", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"jr"}{"nz"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x20, 
										$expr[0]->build("{}-\$-2", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"jr"}{"z"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x28, 
										$expr[0]->build("{}-\$-2", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x32, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x43, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x53, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x22, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x22, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x22, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"EXPR"}{")"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x73, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"bc"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x02 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"de"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x12 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x36, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x77 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x70 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x23, 0x70, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x72 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x23, 0x72, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x74 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"hl"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x75 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x77, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x70, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x72, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x74, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x77, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x70, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x72, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x74, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x32, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x43, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x53, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x22, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x22, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x22, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"EXPR"}{"]"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x73, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"bc"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x02 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"de"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x12 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x36, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x77 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x70 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x23, 0x70, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x72 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x23, 0x72, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x74 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"hl"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x75 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x77, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x70, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x72, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x74, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x77, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x70, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x72, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x74, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"("}{"bc"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"("}{"de"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x3A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"["}{"bc"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"["}{"de"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x78 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x79 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"i"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x57 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"r"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x5F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"a"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x46 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x06, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x46 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x47 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x40 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x41 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x42 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x43 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"b"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x4B, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x23, 0x46, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x46, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x46, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x01, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x4B, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x23, 0x46, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x46, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x46, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x40, 0x49 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x42, 0x4B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x44, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x44, 0xDD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"bc"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x44, 0xFD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x48 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x49 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"c"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x56 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x16, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x56 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x57 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x50 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x51 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x52 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x53 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x54 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"d"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x55 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x5B, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x23, 0x56, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x56, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x56, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x11, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x5B, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x23, 0x56, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x56, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x56, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x50, 0x59 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x52, 0x5B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x54, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x54, 0xDD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"de"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x54, 0xFD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x58 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x59 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"e"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x66 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x66 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"h"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x66, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x66, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x21, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x66, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x66, 
										$expr[0]->build("{}+1", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x60, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x62, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x64, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE5, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hl"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE5, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hx"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"hy"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"i"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x47 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x21, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x69, 0xDD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6B, 0xDD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE5, 0xDD, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6D, 0xDD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ix"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE5, 0xDD, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixh"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ixl"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x21, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2A, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x69, 0xFD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6B, 0xFD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE5, 0xFD, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE5, 0xFD, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iy"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6D, 0xFD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyh"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"iyl"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6E ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"l"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"lx"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"ly"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"r"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x4F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"sp"}{","}{"("}{"EXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x7B, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"sp"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x31, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"sp"}{","}{"["}{"EXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x7B, 
										$expr[0]->build("{}", type => "w"),
										undef
									  ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"sp"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF9 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"sp"}{","}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xF9 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"sp"}{","}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xF9 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xh"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"xl"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x26, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x60 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x63 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x64 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yh"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x65 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x2E, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x68 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6A ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6B ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6C ]);
			return ($opcode, $input);
		};
$table->{"ld"}{"yl"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6D ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"bc"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x02, 0x0B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"de"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x12, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x36, 
										$expr[0]->build("{}", type => "ub"),
									 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x77, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x70, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x72, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x74, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"hl"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x75, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xA8 ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"bc"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x02, 0x0B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"de"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x12, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x36, 
										$expr[0]->build("{}", type => "ub"),
									 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x77, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x70, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x72, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x74, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"hl"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x75, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"("}{"bc"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0A, 0x0B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"("}{"de"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1A, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"["}{"bc"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0A, 0x0B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"["}{"de"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1A, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"a"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"b"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x46, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"b"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"b"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"b"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x46, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"b"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"b"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"c"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"c"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"c"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"c"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"c"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"c"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"d"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x56, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"d"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"d"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"d"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x56, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"d"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"d"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"e"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"e"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"e"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"e"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"e"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"e"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"h"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x66, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"h"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"h"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"h"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x66, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"h"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"h"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"l"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"l"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"l"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"l"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6E, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"l"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"ldd"}{"l"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"lddr"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xB8 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"bc"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x02, 0x03 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"de"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x12, 0x13 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x36, 
										$expr[0]->build("{}", type => "ub"),
									 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x77, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x70, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x23, 0x70, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x72, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x23, 0x72, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x74, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"hl"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x75, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xA0 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"bc"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x02, 0x03 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"de"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x12, 0x13 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x36, 
										$expr[0]->build("{}", type => "ub"),
									 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x77, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x70, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x23, 0x70, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x71, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x72, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x23, 0x72, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x73, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x74, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"hl"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x75, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x36, 
										$expr[0]->build("{}", type => "sb"),
									 
										$expr[1]->build("{}", type => "ub"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x77, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x70, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x71, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x72, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x73, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x74, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x75, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"("}{"bc"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0A, 0x03 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"("}{"de"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1A, 0x13 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"["}{"bc"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0A, 0x03 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"["}{"de"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1A, 0x13 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x7E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"a"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x7E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"b"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x46, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"b"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"b"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"b"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x46, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"b"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"b"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"bc"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x23, 0x46, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"bc"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"bc"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"bc"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x23, 0x46, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"bc"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"bc"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x46, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"c"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"c"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"c"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"c"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x4E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"c"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"c"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x4E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"d"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x56, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"d"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"d"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"d"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x56, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"d"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"d"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"de"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x23, 0x56, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"de"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"de"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"de"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x23, 0x56, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"de"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"de"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x56, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"e"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"e"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"e"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"e"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x5E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"e"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"e"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x5E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"h"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x66, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"h"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"h"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"h"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x66, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"h"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"h"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"hl"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"hl"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"hl"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23, 0xDD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"hl"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23, 0xFD, 0x66, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"l"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"l"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"l"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"l"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x6E, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"l"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xDD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldi"}{"l"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x6E, 
										$expr[0]->build("{}", type => "sb"),
									 0xFD, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"ldir"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xB0 ]);
			return ($opcode, $input);
		};
$table->{"neg"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x44 ]);
			return ($opcode, $input);
		};
$table->{"nop"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x00 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB6 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF6, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB6 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB6, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB7 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB0 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB1 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB2 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB3 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB4 ]);
			return ($opcode, $input);
		};
$table->{"or"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xB5 ]);
			return ($opcode, $input);
		};
$table->{"otdr"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xBB ]);
			return ($opcode, $input);
		};
$table->{"otir"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xB3 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"EXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD3, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"CEXPR"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xED, 0x71 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x79 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x41 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x49 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x51 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x59 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"("}{"c"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"EXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD3, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"CEXPR"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xED, 0x71 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x79 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x41 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x49 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x51 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x59 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x61 ]);
			return ($opcode, $input);
		};
$table->{"out"}{"["}{"c"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x69 ]);
			return ($opcode, $input);
		};
$table->{"outd"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xAB ]);
			return ($opcode, $input);
		};
$table->{"outi"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0xA3 ]);
			return ($opcode, $input);
		};
$table->{"pop"}{"af"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF1 ]);
			return ($opcode, $input);
		};
$table->{"pop"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC1 ]);
			return ($opcode, $input);
		};
$table->{"pop"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD1 ]);
			return ($opcode, $input);
		};
$table->{"pop"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"pop"}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"pop"}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE1 ]);
			return ($opcode, $input);
		};
$table->{"push"}{"af"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF5 ]);
			return ($opcode, $input);
		};
$table->{"push"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC5 ]);
			return ($opcode, $input);
		};
$table->{"push"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD5 ]);
			return ($opcode, $input);
		};
$table->{"push"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE5 ]);
			return ($opcode, $input);
		};
$table->{"push"}{"ix"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xE5 ]);
			return ($opcode, $input);
		};
$table->{"push"}{"iy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xE5 ]);
			return ($opcode, $input);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x86 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x96 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x87 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8F ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x97 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9F ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x80 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x88 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x90 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x98 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x81 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x89 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x91 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x99 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x82 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8A ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x92 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9A ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x83 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8B ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x93 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9B ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x84 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8C ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x94 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9C ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x85 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8D ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x95 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9D ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAD ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x86 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x96 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x87 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8F ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x97 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9F ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x80 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x88 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x90 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x98 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x81 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x89 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x91 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x99 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x82 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8A ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x92 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9A ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x83 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8B ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x93 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9B ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x84 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8C ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x94 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9C ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x85 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8D ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x95 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9D ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAD ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x86 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x96 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x86 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x96 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x87 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8F ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x97 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9F ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x80 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x88 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x90 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x98 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x81 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x89 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x91 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x99 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x82 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8A ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x92 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9A ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x83 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8B ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x93 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9B ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x84 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8C ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x94 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9C ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x85 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8D ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x95 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9D ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAD ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x86 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x96 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x87 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8F ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x97 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9F ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x80 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x88 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x90 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x98 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x81 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x89 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x91 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x99 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x82 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8A ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x92 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9A ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x83 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8B ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x93 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9B ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x84 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8C ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x94 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9C ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x85 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8D ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x95 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9D ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAD ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x86 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x8E ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x96 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0x9E ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xA6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xAE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xB6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xBE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x87 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8F ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x97 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9F ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x80 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x88 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x90 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x98 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x81 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x89 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x91 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x99 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x82 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8A ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x92 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9A ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x83 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8B ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x93 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9B ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x84 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8C ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x94 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9C ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"res"}{"CEXPR"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x85 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x8D ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x95 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0x9D ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xA5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xAD ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xB5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xBD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"ret"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC9 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD8 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"m"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF8 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"nc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD0 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"nz"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC0 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"p"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xF0 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"pe"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE8 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"po"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xE0 ]);
			return ($opcode, $input);
		};
$table->{"ret"}{"z"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xC8 ]);
			return ($opcode, $input);
		};
$table->{"reti"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x4D ]);
			return ($opcode, $input);
		};
$table->{"retn"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x45 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x16 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x17 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x10 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x11 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x12 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x13 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x14 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x15 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x16 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x17 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x10 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x11 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x12 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x13 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x14 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x15 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x16 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x16 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x17 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x10 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x11 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x12 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x13 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x14 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x15 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x16 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x17 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x10 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x11 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x12 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x13 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x14 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x15 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x16 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x17 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x10 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x11, 0xCB, 0x10 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x11 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x12 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x13, 0xCB, 0x12 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x13 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x14 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x15, 0xCB, 0x14 ]);
			return ($opcode, $input);
		};
$table->{"rl"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x15 ]);
			return ($opcode, $input);
		};
$table->{"rla"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x17 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x06 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x07 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x00 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x01 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x02 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x03 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x04 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x05 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x06 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x07 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x00 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x01 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x02 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x03 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x04 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x05 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x06 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x06 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x07 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x00 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x01 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x02 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x03 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x04 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x05 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x06 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x07 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x00 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x01 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x02 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x03 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x04 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x05 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x06 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x07 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x00 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x01 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x02 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x03 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x04 ]);
			return ($opcode, $input);
		};
$table->{"rlc"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x05 ]);
			return ($opcode, $input);
		};
$table->{"rlca"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x07 ]);
			return ($opcode, $input);
		};
$table->{"rld"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x6F ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1E ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1F ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x18 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x19 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1A ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1B ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1C ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1D ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1E ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1F ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x18 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x19 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1A ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1B ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1C ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1D ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1E ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1E ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1F ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x18 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x19 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1A ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1B ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1C ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1D ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1E ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1F ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x18 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x19 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1A ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1B ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1C ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1D ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x1E ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1F ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x18 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x18, 0xCB, 0x19 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x19 ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1A ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1A, 0xCB, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1C ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1C, 0xCB, 0x1D ]);
			return ($opcode, $input);
		};
$table->{"rr"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x1D ]);
			return ($opcode, $input);
		};
$table->{"rra"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x1F ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0E ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0F ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x08 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x09 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0A ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0B ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0C ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0D ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0E ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0F ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x08 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x09 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0A ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0B ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0C ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0D ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0E ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0E ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0F ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x08 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x09 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0A ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0B ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0C ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0D ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0E ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0F ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x08 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x09 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0A ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0B ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0C ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0D ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x0E ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0F ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x08 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x09 ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0A ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0B ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0C ]);
			return ($opcode, $input);
		};
$table->{"rrc"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x0D ]);
			return ($opcode, $input);
		};
$table->{"rrca"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x0F ]);
			return ($opcode, $input);
		};
$table->{"rrd"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x67 ]);
			return ($opcode, $input);
		};
$table->{"rst"}{"CEXPR"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xC7 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCF ]);
						return ($opcode, $input);
					}, 
					16 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xD7 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xD7 ]);
						return ($opcode, $input);
					}, 
					24 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDF ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDF ]);
						return ($opcode, $input);
					}, 
					32 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xE7 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xE7 ]);
						return ($opcode, $input);
					}, 
					40 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xEF ]);
						return ($opcode, $input);
					}, 
					48 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xF7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xEF ]);
						return ($opcode, $input);
					}, 
					56 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xF7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFF ]);
						return ($opcode, $input);
					}, 
					8 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"sbc"}{"a"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9E ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDE, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9E ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9E, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9F ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x98 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x99 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9A ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9B ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9C ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"a"}{","}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x9D ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"hl"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x42 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"hl"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x52 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"hl"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"sbc"}{"hl"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xED, 0x72 ]);
			return ($opcode, $input);
		};
$table->{"scf"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x37 ]);
			return ($opcode, $input);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC6 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCE ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD6 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDE ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xEE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC7 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCF ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD7 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDF ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC0 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC8 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD0 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD8 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC1 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC9 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD1 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD9 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC2 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCA ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD2 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDA ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC3 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCB ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD3 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDB ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC4 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCC ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD4 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDC ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC5 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCD ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD5 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDD ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xED ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC6 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCE ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD6 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDE ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC7 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCF ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD7 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDF ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC0 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC8 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD0 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD8 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC1 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC9 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD1 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD9 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC2 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCA ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD2 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDA ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC3 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCB ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD3 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDB ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC4 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCC ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD4 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDC ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC5 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCD ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD5 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDD ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xED ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC6 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCE ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD6 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDE ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC6 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCE ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD6 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDE ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xEE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC7 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCF ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD7 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDF ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC0 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC8 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD0 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD8 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC1 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC9 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD1 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD9 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC2 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCA ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD2 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDA ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC3 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCB ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD3 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDB ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC4 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCC ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD4 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDC ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC5 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCD ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD5 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDD ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xED ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC6 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCE ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD6 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDE ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xDD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC7 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCF ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD7 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDF ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC0 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC8 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD0 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD8 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC1 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC9 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD1 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD9 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC2 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCA ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD2 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDA ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC3 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCB ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD3 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDB ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC4 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCC ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD4 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDC ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC5 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCD ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD5 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDD ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xED ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xC6 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xCE ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xD6 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xDE ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xE6 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xEE ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xF6 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xFD, 0xCB, 
													$expr[1]->build("{}", type => "sb"),
												 0xFE ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"a"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC7 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCF ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD7 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDF ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE7 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xEF ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF7 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFF ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"b"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC0 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC8 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD0 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD8 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE0 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE8 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF0 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF8 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"c"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC1 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC9 ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD1 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD9 ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE1 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE9 ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF1 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF9 ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"d"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC2 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCA ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD2 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDA ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE2 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xEA ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF2 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFA ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"e"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC3 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCB ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD3 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDB ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE3 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xEB ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF3 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFB ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"h"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC4 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCC ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD4 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDC ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE4 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xEC ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF4 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFC ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"set"}{"CEXPR"}{","}{"l"}{"END"}{""}	= 
		sub {
			my($self, $input, $start, @expr) = @_;
			my $lu = {
					0 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xC5 ]);
						return ($opcode, $input);
					}, 
					1 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xCD ]);
						return ($opcode, $input);
					}, 
					2 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xD5 ]);
						return ($opcode, $input);
					}, 
					3 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xDD ]);
						return ($opcode, $input);
					}, 
					4 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xE5 ]);
						return ($opcode, $input);
					}, 
					5 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xED ]);
						return ($opcode, $input);
					}, 
					6 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xF5 ]);
						return ($opcode, $input);
					}, 
					7 => 			
					sub { 
						my($self, $input, $start, @expr) = @_;
						my $opcode = CPU::Z80::Assembler::Opcode->new(
										line => head($start)->line,
										child => [ 0xCB, 0xFD ]);
						return ($opcode, $input);
					}, 
			}; 
			defined($lu->{$expr[0]}) 
				or head($start)->line->error("Value $expr[0] is not allowed\n");
			return $lu->{$expr[0]}->($self, $input, $start, @expr);
		};
$table->{"sla"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x26 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x27 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x20 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x21 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x22 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x23 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x24 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x25 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x26 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x27 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x20 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x21 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x22 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x23 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x24 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x25 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x26 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x26 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x27 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x20 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x21 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x22 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x23 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x24 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x25 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x26 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x27 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x20 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x21 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x22 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x23 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x24 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x25 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x26 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x27 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x20 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x21, 0xCB, 0x10 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x21 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x22 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x23, 0xCB, 0x12 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x23 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x24 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x29 ]);
			return ($opcode, $input);
		};
$table->{"sla"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x25 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x31, 0xCB, 0x10 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x33, 0xCB, 0x12 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x35, 0xCB, 0x14 ]);
			return ($opcode, $input);
		};
$table->{"sli"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x36 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x37 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x30 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x31, 0xCB, 0x10 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x31 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x32 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x33, 0xCB, 0x12 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x33 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x34 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x35, 0xCB, 0x14 ]);
			return ($opcode, $input);
		};
$table->{"sll"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x35 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2E ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2F ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x28 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x29 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2A ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2B ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2C ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2D ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2E ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2F ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x28 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x29 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2A ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2B ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2C ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2D ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2E ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2E ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2F ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x28 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x29 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2A ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2B ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2C ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2D ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2E ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2F ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x28 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x29 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2A ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2B ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2C ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2D ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x2E ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2F ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x28 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x28, 0xCB, 0x19 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x29 ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2A ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2A, 0xCB, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2B ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2C ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2C, 0xCB, 0x1D ]);
			return ($opcode, $input);
		};
$table->{"sra"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x2D ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3E ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3F ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x38 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x39 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3A ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3B ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3C ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3D ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3E ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3F ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x38 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x39 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3A ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3B ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3C ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3D ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3E ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3E ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3F ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x38 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x39 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3A ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3B ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3C ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3D ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3E ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3F ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x38 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x39 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3A ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3B ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3C ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{","}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3D ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xCB, 
										$expr[0]->build("{}", type => "sb"),
									 0x3E ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3F ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x38 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x38, 0xCB, 0x19 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x39 ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3A ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3A, 0xCB, 0x1B ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3B ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3C ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3C, 0xCB, 0x1D ]);
			return ($opcode, $input);
		};
$table->{"srl"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xCB, 0x3D ]);
			return ($opcode, $input);
		};
$table->{"stop"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xDD, 0x00 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x96 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x96, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x96, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xD6, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x96 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x96, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x96, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x97 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x90 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x91 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x92 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x93 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"hl"}{","}{"bc"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB7, 0xED, 0x42 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"hl"}{","}{"de"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB7, 0xED, 0x52 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"hl"}{","}{"hl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB7, 0xED, 0x62 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"hl"}{","}{"sp"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xB7, 0xED, 0x72 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x95 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x95 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0x95 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x95 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x95 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0x95 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x94 ]);
			return ($opcode, $input);
		};
$table->{"sub"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0x95 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"("}{"hl"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAE ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"("}{"ix"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"("}{"iy"}{"OPTEXPR"}{")"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"EXPR"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xEE, 
										$expr[0]->build("{}", type => "ub")
									 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"["}{"hl"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAE ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"["}{"ix"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"["}{"iy"}{"OPTEXPR"}{"]"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAE, 
										$expr[0]->build("{}", type => "sb")
									 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"a"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAF ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"b"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA8 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"c"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xA9 ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"d"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAA ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"e"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAB ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"h"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"hx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"hy"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"ixh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"ixl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAD ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"iyh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"iyl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAD ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"l"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xAD ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"lx"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAD ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"ly"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAD ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"xh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"xl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xDD, 0xAD ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"yh"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAC ]);
			return ($opcode, $input);
		};
$table->{"xor"}{"yl"}{"END"}{""}	= 
		sub { 
			my($self, $input, $start, @expr) = @_;
			my $opcode = CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => [ 0xFD, 0xAD ]);
			return ($opcode, $input);
		};
$table;
}
1;
