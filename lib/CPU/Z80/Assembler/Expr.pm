# $Id$

package CPU::Z80::Assembler::Expr;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Expr - Represents one assembly expression to be computed at link time

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;
use 5.008;

our $VERSION = '2.05_01';

use HOP::Stream qw( drop head );
use CPU::Z80::Assembler::Line;
use CPU::Z80::Assembler::Lexer;
use CPU::Z80::Assembler::Parser;

use base 'CPU::Z80::Assembler::Node';

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Expr;
  my $node = CPU::Z80::Assembler::Expr->new();
  $input = $expr->parse($input)
  $input = $expr->parse_optional($input)
  $new_expr = $expr->build($expr_text)
  $value = $expr->evaluate($address, \%symbol_table)

=head1 DESCRIPTION

This module defines the class that represents one assembly expression to be
computed at link time. It extends the class L<CPU::Z80::Assembler::Node>.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object, see L<Class::Class>.

=head2 child

List of tokens composing the expression.

=head2 line

Get/set the line - text, file name and line number where the token was read.

=cut

#------------------------------------------------------------------------------

=head2 parse

  $input = $expr->parse($input)

Receives a stream of tokens as argument and tries to parse an expression from the
stream. Returns the stream pointing to the first token after the expression and
sets the child element of the node to the list of tokens in the expression.

Dies if the expression cannot be parsed.

=cut

#------------------------------------------------------------------------------

sub parse {	my($self, $input) = @_;
	return $self->_parse($input, 0);
}

#------------------------------------------------------------------------------

=head2 parse_optional

  $input = $expr->parse_optional($input)

Same as C<parse>, but returns an expression of C<0> if the expression cannot be
parsed.

=cut

#------------------------------------------------------------------------------

sub parse_optional { my($self, $input) = @_;
	return $self->_parse($input, 1);
}

#------------------------------------------------------------------------------

sub _parse {
	my($self, $input, $optional) = @_;
	
	# init expr
	@{$self->child} = ();
	$self->line(CPU::Z80::Assembler::Line->new());
	
	# line for error messages
	my $head = head($input);
	my $line = ($head && $head->line) ?
				$head->line :
				CPU::Z80::Assembler::Line->new();
	
	my @tokens;
	my @parens;			# list of closing parens waited for
	while (my $token = head($input)) {
		my $type = $token->type;
		if (statement_end($type) ||
		    (!@parens && argument_end($type))) {
			last;
		}
		elsif ($type eq '(' ) {
			push(@parens, ')');
		}
		elsif ($type eq '[') {
			push(@parens, ']');
		}
		elsif ($type eq ')' || $type eq ']') {
			last if !@parens;
			$line->error("Unbalanced parentheses")
				if pop(@parens) ne $type;
		}
		push(@tokens, $token);
		drop($input);
	}
	$line->error("Unbalanced parentheses") if @parens;
	if (! @tokens) {
		$line->error("Expression not found") unless $optional;	
		@tokens = (CPU::Z80::Assembler::Token->new(
								type => 'NUMBER',
								value => 0,
								line => $line));
	}
	
	# set expression and return
	@{$self->child} = @tokens;
	$self->line($line);
	return $input;
}

#------------------------------------------------------------------------------

=head2 build

  $new_expr = $expr->build($expr_text)

Build and return a new expresion object with an expression based on the current
object. The expression is passed as a string and is lexed by L<CPU::Z80::Assembler::Lexer>.
The special token '{}' is used to refer to this expression.

For example, to return a new expression object that, when evaluated, gives the double
of the current expression object:

  my $new_expr = $expr->build("2*{}");

=cut

#------------------------------------------------------------------------------

sub build {	my($self, $expr_text) = @_;
	my $line = $self->line;
	my $new_expr = ref($self)->new(line => $line);
	my $token_stream = z80lexer($expr_text);
	while (my $token = drop($token_stream)) {
		if ($token->type eq '{') {
			(head($token_stream) && drop($token_stream)->type eq '}')
				or die "unmatched {}";
				
			# refer to this expression
			push(@{$new_expr->child},
				CPU::Z80::Assembler::Token->new(
								type => 'EXPR',
								value => $self,
								line => $line));
		}
		else {
			$token->line($line);
			push(@{$new_expr->child}, $token);
		}
	}
	$new_expr;
}

#------------------------------------------------------------------------------

=head2 evaluate

  $value = $expr->evaluate($address, $symbol_table)

Computes the value of the expression, as found at the given address and looking
up any referenced symbols from the given symbol table.

The address is used to evaluate the value of '$'.

The symbol table is a hash of symbol names to values. The value is either a
scalar value that is used directly in the expression, or a reference to a
sub-expression that is computed recursively by calling its C<evaluate> method.

Exits with a fatal error if the expression cannot be evaluated (circular reference,
undefined symbol or mathematical error).

=cut

#------------------------------------------------------------------------------

sub evaluate { my($self, $address, $symbol_table, $seen) = @_;
	$seen ||= {};								# to detect circular references
	my @code;
	for my $token (@{$self->child}) {
		my($type, $value) = ($token->type, $token->value);
		if ($type eq "NUMBER") {
			push(@code, $value);
		}
		elsif ($type eq "NAME") {
			if ($value eq '$') {
				push(@code, $address);
			}
			else {
				my $expr = $symbol_table->{$value};
				my $expr_value;
				
				defined($expr) or
					$self->line->error("Symbol '$value' not defined");
				if (ref($expr)) {					# compute sub-expression first
					$seen->{$value}++ and
						$self->line->error("Circular reference computing '$value'");
					$expr_value = $expr->evaluate($address, $symbol_table, $seen);
				}
				else {
					$expr_value = $expr;
				}				
				push(@code, $expr_value);
			}
		}
		elsif ($type eq "STRING") {
			$self->line->warning("Expression $value: extra bytes ignored")
				if length($value) > 2+2;
			$value = substr($value, 1, length($value)-2) . "\0\0";
			my @bytes = map {ord($_)} split(//, $value);
			my $value = $bytes[0] + ($bytes[1] << 8);
			push(@code, $value);
		}
		elsif ($type eq "EXPR") {
			my $expr_value = $value->evaluate($address, $symbol_table, $seen);
			push(@code, $expr_value);
		}
		else {
			$type =~ /^[a-z_]/ and		# reserved word
				$self->line->error("Expression '$type': syntax error");
			push(@code, $type);
		}
	}
	return 0 if !@code;
	my $code = join(" ", @code);
	my $value = eval $code;
	if ($@) {
		$@ =~ s/ at .*//;
		$self->line->error("Expression '$code': $@");
	}

	return $value;
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Line>
L<CPU::Z80::Assembler::Node>
L<Class::Class>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

1;
