# $Id$

package CPU::Z80::Assembler::Program;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Program - Represents one assembly program

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_02';

use CPU::Z80::Assembler::Segment;
use CPU::Z80::Assembler::Parser;
use CPU::Z80::Assembler::Expr;
use HOP::Stream qw( drop head );
use Data::Dump 'dump';

use base 'CPU::Z80::Assembler::Node';
our %MEMBERS = (
		symbols 		=> '%',		# map name => Node with evaluate() method
		segment_map		=> '%',		# map name => segment in child
		_cur_segment	=> 'CPU::Z80::Assembler::Segment',
									# segment we are now adding code to
);

sub initialize { my($self) = @_;
	$self->cur_segment("");			# define new empty segment
	return $self;
}

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Program;
  my $program = CPU::Z80::Assembler::Program->new(
					symbols => {});
  $program->parse($input);
  $program->link;
  my $bytes = $program->bytes;

=head1 DESCRIPTION

This module defines the class that represents one assembly program composed of
L<CPU::Z80::Assembler::Segment>.

This class extends the class L<CPU::Z80::Assembler::Node>.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Class>.

=head2 child

Each child is one L<CPU::Z80::Assembler::Segment> object, in the order found in the
program.

=head2 symbols

Hash of all symbols defined in the program. The key is the symbol name, and 
the value is either a scalar for a constant, a L<CPU::Z80::Assembler::Expr> for 
an expression, or a L<CPU::Z80::Assembler::Opcode> for a label.

=head2 segment_map

Hash to map segment names to the segment objects in the child array.

=cut

#------------------------------------------------------------------------------

=head2 cur_segment

  my $segment = $program->cur_segment();
  my $segment = $program->cur_segment($segment_name);

Get/Set the current segment with the given name.

The C<cur_segment> is changed to point to the segment with the given name. 
If it does not exist, it is created and added to the child array.

=cut

#------------------------------------------------------------------------------

sub cur_segment { my($self, $segment_name) = @_;
	if (defined($segment_name)) {
		# set
		if (! exists $self->segment_map->{$segment_name} ) {
			# new segment
			my $segment = CPU::Z80::Assembler::Segment->new(name => $segment_name);
			$self->push_child($segment);
			$self->segment_map->{$segment_name} = $segment;
		}
		$self->_cur_segment($self->segment_map->{$segment_name});
		return $self->_cur_segment;
	}
	else {
		# get
		return $self->_cur_segment;
	}
}

#------------------------------------------------------------------------------
# $input = _check_end($input)
# asserts that the current token is the end of statement,
# dies if not; advances input pointer
sub _check_end {
	my($input) = @_;
	
	my $token = head($input);
	if (!defined($token) || statement_end($token->type)) {
		drop($input);
	}
	else {
		$token->line->error("End of statement expected");
	}
	return $input;
}

#------------------------------------------------------------------------------
# LOOKUP-TABLES
# 	The order is important: an instruction is only loaded if not yet defined
#	Lookup table of all assembly instructions recognized by the assembler
#	Sequence is indexed by a sequence of token labels, followed by "" as the 
#	last key. The value is a function with the signature:
#		($parsed, $input) = f($input, $start, @expr)
#	$input is the current stream position after the recognized tokens
#	$start is the stream position at the start of the instruction
#	@expr are all the expressions parsed, as streams.
#	Functions die with error message on parse failure, error will be caught
#	to explain where the error occured.
use CPU::Z80::Assembler::ParserTable;
my $TABLE =	CPU::Z80::Assembler::ParserTable::_parser_table();

#------------------------------------------------------------------------------
# Pseudo-instructions
_add_table('org', 'CEXPR', 'END',
			sub {
				my($self, $input, $start, $value) = @_;
				if (@{$self->cur_segment->child}) {
					head($start)->line->error("ORG must be the first intruction");
					die; # not reached
				}
				$self->cur_segment->address($value);
				return (undef, $input);
			});

_add_table('defb', 					
			sub { 
				my($self, $input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, $start, 1);
				return (CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => $bytes),
						$input);
			});

_add_table('defw', 					
			sub { 
				my($self, $input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, $start, 2);
				return (CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => $bytes),
						$input);
			});

_add_table('deft', 					
			sub { 
				my($self, $input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, $start, 1);
				return (CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => $bytes),
						$input);
			});

_add_table('defm', 					
			sub { 
				my($self, $input, $start) = @_;
				(my $bytes, $input) = _parse_def($input, $start, 1);
				return (CPU::Z80::Assembler::Opcode->new(
							line => head($start)->line,
							child => $bytes),
						$input);
			});

_add_table('NAME',					
			sub {
				my($self, $input, $start) = @_;
				my $token = head($start) or die;	# must be 'NAME'
				my $name = $token->value;			# label name

				# skip optional ':'
				while (($token = head($input)) &&
						$token->type eq ':') {
					drop($input);
				}

				# if next token is '=', get the expression
				# else label is '$'
				$token = head($input);
				if ($token && $token->type eq '=') {
					drop($input);					# skip '='
					my $expr = CPU::Z80::Assembler::Expr->new(line => head($start)->line);
					$input = $expr->parse($input);
					$input = _check_end($input);
					$self->symbols->{$name} = $expr;
					return (undef, $input);
				}
				else {
					# create empty opcode
					my $opcode = CPU::Z80::Assembler::Opcode->new(line => head($start)->line);
					$self->symbols->{$name} = $opcode;
					return ($opcode, $input);
				}
			});

#------------------------------------------------------------------------------
# _add_table(@tokens, sub{})
#	Creates a new table entry, only if not yet defined
sub _add_table {
	my(@tokens) = @_;
	my $sub = pop(@tokens);
	my $code = '$TABLE->'.join('', map {'{'.dump($_).'}'} @tokens, "").' ||= $sub';
	eval $code; $@ and die "$code: $@";
}

#------------------------------------------------------------------------------
# ($parsed, $input) = $self->_lookup_table($input)
# 	Lookup current token from $TABLE
# 	If found, call sub to convert args to token, return token and new stream pointer
# 	If not found, or error parsing an expression, die
sub _lookup_table {	my($self, $input) = @_;
	my $start = $input;
	my @expr;
	my $table = $TABLE;
	for(;;) {										# each token
		if (exists $table->{""}) {					# end of entry
			return $table->{""}->($self, $input, $start, @expr);
		}
		else {
			my $token = head($input);
			if ($token) {
				my($type, $value) = ($token->type, $token->value);
				if (exists $table->{$type}) {
					$table = $table->{$type};				# advance table
					drop($input);							# advance stream
				}
				elsif (exists $table->{"EXPR"}) {			# parse expression
					$table = $table->{"EXPR"};				# advance table
					my $expr = CPU::Z80::Assembler::Expr->new();
					$input = $expr->parse($input);
					push(@expr, $expr);
				}
				elsif (exists $table->{"OPTEXPR"}) {		# parse expression
					$table = $table->{"OPTEXPR"};			# advance table
					my $expr = CPU::Z80::Assembler::Expr->new();
					$input = $expr->parse_optional($input);
					push(@expr, $expr);
				}
				elsif (exists $table->{"CEXPR"}) {			# constant expression
					$table = $table->{"CEXPR"};				# advance table
					my $expr = CPU::Z80::Assembler::Expr->new();
					$input = $expr->parse($input);
					my $value = $expr->evaluate($expr, 0, {});
					push(@expr, $value);
				}
				elsif (exists $table->{"END"}) {			# check end of statement
					$table = $table->{"END"};				# advance table
					$input = _check_end($input);
				}
				else {
					$start->line->error("Cannot parse at $type");
				}
			}
			else {											# at end of file
				if (exists $table->{"END"}) {				# check end of statement
					$table = $table->{"END"};				# advance table
				}
				else {
					$start->line->error("Unexpected end of file");
				}
			}
		}
	}
}


#------------------------------------------------------------------------------
# ([@bytes], $input) = _parse_def($input, $start, $size)
#	Parse a DEFB, DEFW or DEFT instruction, $size is 1 for DEFB, DEFT and 2 for DEFW
#	Return @bytes to be used directly in the OPCODE token, i.e. one element per byte,
#	[] for an empty placeholder, [type, expr] for an expression
sub _parse_def {
	my($input, $start, $size) = @_;
	
	my $err_line = head($start)->line;

	my @bytes;
	my $token;
	for(;;) {
		# get expression
		my $expr = CPU::Z80::Assembler::Expr->new(line => $err_line);
		$input = $expr->parse($input);
	
		$token = $expr->child->[0] or die;			# token must exist
		if ($size == 1 && $token->type eq 'STRING' &&
		    scalar(@{$expr->child}) == 1) {
													# expression is a single string -> decode bytes
			my $text = substr($token->value, 1, length($token->value) - 2);
													# remove quotes
			my @text = map {ord($_)} split(//, $text);
			push(@bytes, @text);
		}
		elsif ($size == 1) {
			$expr->type("ub");
			push(@bytes, $expr);
		}
		elsif ($size == 2) {
			$expr->type("w");
			push(@bytes, $expr, undef);
		}
		else {
			$err_line->error("Cannot parse argument at ".$token->type);
			die; # not reached
		}
		
		# if ",", get next expression; if END, finish; else error
		$token = head($input) or last;				# end of list
		if (statement_end($token->type)) {
			drop($input);
			last;									
		}
		elsif ($token->type eq ',') {				# list continues
			drop($input);
		}
		else {
			err_line->error("Unexpected ".$token->type." in list");
			die; # not reached
		}
	}
	return (\@bytes, $input);
}

#------------------------------------------------------------------------------

=head2 parse

  $program->parse($input);

Parse the assembly program and collect the opcodes into the object. $input is
a stream of tokens as retrieved by L<CPU::Z80::Assembler::Lexer> C<z80lexer>.

=cut

#------------------------------------------------------------------------------

sub parse { my($self, $input) = @_;
	while (my $token = head($input)) {
		if (statement_end($token->type)) {
			drop($input);
		}
		else {
			my $err_line = $token->line or die;
			(my $opcode, $input) = eval { $self->_lookup_table($input) };
			if ($@) {
				$err_line->error($@);
				die; # not reached
			}
			elsif ($opcode) {
				$self->cur_segment->push_child($opcode);
			}
		}
	}
}

#------------------------------------------------------------------------------

=head2 link

  $program->link;

Resolve all labels and build object code.

=cut

#------------------------------------------------------------------------------

sub link { my($self) = @_;
	my $address = 0;
	for my $segment (@{$self->child}) {
		defined($segment->address) or $segment->address($address);
		$segment->link;
		$address += $segment->size;
	}
}

#------------------------------------------------------------------------------

=head2 bytes

  $bytes = $program->bytes;

Computes the bytes of each segment, and concatenates them together. Returns the
complete object code.

=cut

#------------------------------------------------------------------------------

sub bytes { my($self) = @_;
	my $bytes = "";
	for my $segment (@{$self->child}) {
		$bytes .= $segment->bytes($self->symbols);
	}
	return $bytes;
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<CPU::Z80::Assembler::Segment>
L<CPU::Z80::Assembler::ode>
L<Class::Class>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;

