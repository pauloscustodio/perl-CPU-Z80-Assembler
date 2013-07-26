#------------------------------------------------------------------------------
# $Id$
# Module to create a recursive descent parser with an engine based 
# on a compile-time state machine

package ParserGenerator;

use strict;
use warnings;

use Carp;
use Data::Dump 'dump';
use File::Slurp;

use Class::Struct (
	tree		=> '%',	# parse tree
						# first level are the rule names
						# each node is a HASH with the map token => next node
						# or a scalar with the rule action as a string
	state_table => '@',	# map state ID to state hash in tree
	actions		=> '%',	# map func text => [ sub id, sub text ]
	start_rule	=> '$',	# name start rule
	prolog		=> '$',	# code to include near the beginning of the file
	epilog		=> '$',	# code to include at the end of the file
);

#------------------------------------------------------------------------------
# add_rule(name, token, "[subrule]", ..., "sub { action }")
#	name and token can be give as one string with the names split by blanks
sub add_rule {
	my($self, @tokens) = @_;		# $tokens[0] = $name
	
	@tokens or croak "add_rule : missing arguments";
	my $action = pop(@tokens);

	# expand tokens - split by blanks
	for (my $i = 0; $i < @tokens; $i++) {
		next if ref($tokens[$i]) || $tokens[$i] eq '';	# alternation or EOF
		splice(@tokens, $i, 1, split(' ', $tokens[$i]));
	}
	
	@tokens >= 2 or croak "add_rule : missing arguments";
	$self->_add_rule(@tokens, $action);
}

# workhorse of add_rule, does not split the strings passed as tokens
sub _add_rule {
	my($self, @tokens) = @_;		# $tokens[0] = $name
	my $action = pop(@tokens);

	# define start rule
	my $name = $tokens[0];
	if (! defined $self->start_rule) {
		$self->start_rule($name);	# start rule is first defined rule
	}

	my $tree = $self->tree;
	for my $i (0 .. $#tokens) {
		my $token = $tokens[$i];
		
		# accept list of alternative tokens [token,token,...]
		if (ref($token) eq 'ARRAY') {
			for my $key (@$token) {
				$self->_add_rule(@tokens[0 .. $i-1], $key, @tokens[$i+1 .. $#tokens],
								$action);
			}
			return;
		}
		# transform [xxx]+ -> [xxx] [xxx]*
		elsif ($token =~ /^ ( \[ .* \] ) \+ $/x) {
			$self->_add_rule(@tokens[0 .. $i-1], $1, $1.'*', @tokens[$i+1 .. $#tokens],
							$action);
			return;
		}
		# normal rule : add to tree
		else {
			my $comment = "$name : ".join(" ", 
										map {_format_token($_)} 
										@tokens[1 .. $i]);		# $token[0] is $name
			if ($i != $#tokens) {		# not leaf node
				croak "leaf and node at ($comment)" 
					if (exists($tree->{$token}) && ref($tree->{$token}) ne 'HASH');
				$tree->{$token} ||= {};
				$tree = $tree->{$token};
			}
			else {						# leaf node
				croak "leaf not unique at ($comment)"
					if (exists($tree->{$token}));
				$tree->{$token} = $self->add_action($action, $comment);
			}
		}
	}
}

#------------------------------------------------------------------------------
# add_action()
#	Create a new action or re-use an existing one. An action has to start by 
#	'sub {'; a new sequential name is created and a reference to the name is 
#	returned : "\&action_XX"
sub add_action {
	my($self, $action, $comment) = @_;
	(my $cannon_action = $action) =~ s/\s+//g;
	if (!$self->actions->{$cannon_action}) {
		my $comment_word = (split(" ", $comment))[0];
		$comment_word =~ s/\W/_/g;
		my $id = $comment_word."_".scalar(keys %{$self->actions});
		my $name = "_action_".$id;

		for ($action) {
			my($lead_space) = /^(\t+)/m;
			s/^\s*sub\s*\{\s*/# $comment\nsub $name {\n\t/;
			$lead_space and s/^$lead_space/\t/gm;
			s/\s*\}\s*$/\n}\n/;
		}
		
		$self->actions->{$cannon_action} = [ $id, $action ];
	}
	return "\\&_action_".$self->actions->{$cannon_action}[0];
}	

#------------------------------------------------------------------------------
# write the parser module
sub write {
	my($self, $name, $file) = @_;
	
	$name or croak "ParserGenerator::write: name not defined";
	$file or croak "ParserGenerator::write: file not defined";

	my $table = eval { $self->_table_dump };
	$@ and croak "ParserGenerator::write: $@";
	
	my @text = <DATA>;
	for (@text) {
		s/<PROLOG>/$self->prolog || ""/ge;
		s/<EPILOG>/$self->epilog || ""/ge;
		s/<NAME>/$name/g;
		s/<TABLE>/$table/;
	}
	write_file($file, {atomic => 1}, \@text);
}

#------------------------------------------------------------------------------
# dump the state table
sub _table_dump {
	my($self) = @_;

	$self->state_table([]);
	$self->_decorate_tree($self->tree);
	$self->_expand_calls;

	#print dump($self),"\n" if $ENV{DEBUG};

	my $start_state = 0;
	if (defined($self->start_rule) && exists($self->tree->{$self->start_rule})) {
		$start_state = $self->tree->{$self->start_rule}{__state__};
	}
	else {
		die "start state not found\n";
	}
	
	my $ret = 'our $start_state = '.$start_state.";\n".
				 'our @state_table = ('."\n";
	for my $i (0 .. $#{$self->state_table}) {
		$ret .= "\t# " . $self->state_table->[$i]{__comment__} . "\n" .
				"\t{ "; 
		
		for my $key (sort keys %{$self->state_table->[$i]}) {
			next if $key =~ /^(__(comment|state)__|\[.*\][?*]?)$/;
			
			my $value = $self->state_table->[$i]{$key};
			$value = $value->{__state__} if ref($value) eq 'HASH';
			
			my $key_text = ($key =~ /^\w+$/) ? $key : dump($key);
# TRY TO OPTIMIZE
#			$ret .= sprintf("\t\t%-16s", $key_text) 
#				  . "=> " . $value . ",\n";
			$ret .= "$key_text => $value, ";
		}
		
		$ret .= "},\n";
	}
	$ret .= ");\n";
	
	# dump actions
	for (sort {$a->[0] cmp $b->[0]} values %{$self->actions}) {
		$ret .= $_->[1];
	}
	
	return $ret;
}

#------------------------------------------------------------------------------
# recursive function to decorate the tree with __state__ and __comment__ keys
# and build @state_table list
sub _decorate_tree {
	my($self, $tree, @path) = @_;

	my $id = scalar(@{$self->state_table});
	$tree->{__state__} = $id;
	$tree->{__comment__} = 
			"[" . $id . "] " .
			($id ?
				_format_token($path[0]) . " : " .
					join(" ", map {_format_token($_)} @path[1 .. $#path ]) :
				"");
	$self->state_table->[$id] = $tree;
	
	for (sort keys %$tree) {
		next if /^__(comment|state)__$/;
		$self->_decorate_tree($tree->{$_}, @path, $_) if ref($tree->{$_}) eq 'HASH';
	}
}

#------------------------------------------------------------------------------
# expand [rule] calls into start_set(rule) => [ rule_id, next_state ]
#	Search for all sub-rule calls, and add each of the first tokens of the subrule
#	to the call. Repeat until no more rules added, to cope with follow sets being
# 	computed after being looked up
sub _expand_calls {
	my($self) = @_;
	
	# repeat until no more follow tokens added
	# Example : A B[?*] C
	my $changed;
	do {
		$changed = 0;

		# check all states in turn
		for my $state (@{$self->state_table}) {
			while (my($token, $next_state) = each %$state) {
				next unless my($subrule_name, $quant) = $token =~ /^ \[ (.*) \] ([?*])? $/x;
				
				my $next_state_text = ref($next_state) eq 'HASH' ? 
											$next_state->{__state__} : 
											$next_state;
				
				my $subrule = $self->tree->{$subrule_name} 
					or croak("ParserGenerator::_expand_calls: rule '$subrule_name' not found\n");
				ref($subrule) eq 'HASH' or die;
				
				# call subrule on each of the subrule follow set
				# Example : add all 'follow(B) -> call B' to current rule
				for my $subrule_key (keys %$subrule) {
					next if $subrule_key =~ /^(__(comment|state)__|\[.*\][?*]?)$/;
					my $text = "[ ".$subrule->{__state__}.", ".
									(($quant||"") eq '*' ? 
											$state->{__state__} :	# loop on a '*'
											$next_state_text		# else, next state
									)." ]";
					if ($state->{$subrule_key}) {
						die if $state->{$subrule_key} ne $text;
					}
					else {
						$state->{$subrule_key} = $text;								
						$changed++;
					}
				}
				
				# call next rule on the next rule follow set
				# Example : add all 'follow(C) -> end' to end current rule
				if (defined($quant)) {
					if ($state->{__else__}) {
						die if $state->{__else__} ne $next_state_text;
					}
					else {
						$state->{__else__} = $next_state_text;
						$changed++;
					}
				}
			}		
		}
	} while ($changed);
}


#------------------------------------------------------------------------------
# format a token (copied at the end of the file)
sub _format_token {
	my($token) = @_;
	return "" 			if !defined($token);
	return "EOF" 		if $token eq "";
	return dump($token) if $token =~ /\W/;
	return $token;
}

1;
		
#------------------------------------------------------------------------------
# template code for grammmar parser
__DATA__
#------------------------------------------------------------------------------
# $Id$
# Parser '<NAME>' generated by ParserGenerator.pm

package <NAME>;

use strict;
use warnings;

use Data::Dump 'dump';
use Iterator::Simple::Lookahead;
use Asm::Preproc::Token;
use Carp;

use constant {
	ARGS => 0, PROG => 1, INPUT => 2,		# to decode args in parser functions
};

<PROLOG>

#------------------------------------------------------------------------------
# Parsing state machine
# Each state hash has:
# 	terminal => (state ID), for a shift
# 	terminal => [ (subrule ID), (next state ID) ], for a sub-rule followed by a shift
# 	terminal => [ (subrule ID), sub{} ], for a sub-rule followed by an accept
# 	terminal => sub{}, for an accept
# Each sub{} is called with $sub->($args, $user); 
# $args is [] of all parsed elements
# $user is the user pointer passed to parse()
<TABLE>

#------------------------------------------------------------------------------

=head2 parse

  $result = parse($input, $user, $start_rule)

This function receives the input token stream (L<Iterator::Simple::Lookahead|Iterator::Simple::Lookahead>), 
a user pointer and an optional start rule number. 

It parses the input stream, leaving the stream at the first unparsed
token, and returns the parse value - the result of the action function for the 
start rule.

The function dies with an error message indicating the input that cannot be parsed in 
case of a parse error.

$input is a stream of tokens, each token is a L<Asm::Preproc::Token|Asm::Preproc::Token> with 
the token type, the token value and the input source line
where the token was read.

The input source line is a L<Asm::Preproc::Line|Asm::Preproc::Line> with the text of the 
whole input source line, the line number and the source file name. 
This is used at error messages.

$user is a user pointer that is passed back at each action function.

$start_rule is an optional alternative start rule ID.

=cut

#------------------------------------------------------------------------------

sub parse {
	my($input, $user, $start_rule) = @_;

	# current state
	my $state;
	if (defined($start_rule)) {
		$state = $state_table[0]{$start_rule}
					or croak "rule '$start_rule' not found";
	}
	else {
		$state = $start_state
					or croak "start state not found";
	}
	my @values = ();
	
	# return stack of states
	my @stack = ();					# store: [$state, @values]

	# fetch token only after drop and after calling parser rules
	my $token = $input->peek;
	for(;;) {
		my($entry, $found_else);
		if ($entry =  $state_table[$state]{($token ? $token->type : "")}) {
			# entry exists, found token
		}
		elsif ($entry = $state_table[$state]{__else__}) {
			$found_else++;
		}
		else {
			_expected_error_at($token, $state);
		}
		
		if (ref($entry) eq 'ARRAY') {					# call sub-rule
			my($next_state, $return_state) = @$entry;
			push(@stack, [ $return_state, @values ]);	# return data
			($state, @values) = ($next_state);			# call
		}
		else {											# accept token
			$state = $entry;
			
			if (!$found_else) {
				push(@values, $token) if $token;		# add token to values
				$input->next;							# drop value
				$token = $input->peek;					# and get next token
			}

			while (ref($state) eq 'CODE') {				# return from sub-rules 
				my $value = $state->([@values], $user, $input);
				$token = $input->peek;					# in case $input was changed

				if ( ! @stack ) {						# END OF PARSE
					return $value;
				}
				
				my $top = pop(@stack);
				($state, @values) = @$top;
				push(@values, $value) if defined($value);
			}
		}
	}
}

#------------------------------------------------------------------------------
# expected error at given stream position
sub _expected_error_at { 
	my($token, $state) = @_;
	
	my @expected = sort map {_format_token($_)} keys %{$state_table[$state]};
	Asm::Preproc::Token->error_at(
			$token,
			"expected ".
			(scalar(@expected) == 1 ? "@expected" : "one of (@expected)")
		);
}

#------------------------------------------------------------------------------
# format a token 
sub _format_token {
	my($token) = @_;
	return "EOF" if $token eq "";
	return dump($token) if $token =~ /\W/;
	return $token;
}

<EPILOG>

1;
