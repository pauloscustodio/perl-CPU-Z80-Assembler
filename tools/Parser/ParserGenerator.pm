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
	my $action = pop(@tokens);

	# expand tokens
	for (my $i = 0; $i < @tokens; $i++) {
		next if ref($tokens[$i]) || $tokens[$i] eq '';	# alternation or EOF
		splice(@tokens, $i, 1, split(' ', $tokens[$i]));
	}
	
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
				$self->add_rule(@tokens[0 .. $i-1], $key, @tokens[$i+1 .. $#tokens],
								$action);
			}
			return;
		}
		# transform [xxx]+ -> [xxx] [xxx]*
		elsif ($token =~ /^ ( \[ .* \] ) \+ $/x) {
			$self->add_rule(@tokens[0 .. $i-1], $1, $1.'*', @tokens[$i+1 .. $#tokens],
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
		my $id = scalar(keys %{$self->actions});
		my $name = "action_".$id;

		for ($action) {
			my($lead_space) = /^(\t+)/m;
			s/^\s*sub\s*\{\s*/# $comment\nsub $name {\n\t/;
			$lead_space and s/^$lead_space/\t/gm;
			s/\s*\}\s*$/\n}\n/;
		}
		
		$self->actions->{$cannon_action} = [ $id, $action ];
	}
	return "\\&action_".$self->actions->{$cannon_action}[0];
}	

#------------------------------------------------------------------------------
# write the parser module
sub write {
	my($self, $name, $file) = @_;
	
	$name or croak "ParserGenerator::write: name not defined";
	$file or croak "ParserGenerator::write: file not defined";

	my $table = $self->_table_dump;
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

	print dump($self),"\n" if $ENV{DEBUG};

	my $start_state = 0;
	if (defined($self->start_rule) && exists($self->tree->{$self->start_rule})) {
		$start_state = $self->tree->{$self->start_rule}{__state__};
	}
	
	my $ret = 'our $start_state = '.$start_state.";\n".
				 'our @state_table = ('."\n";
	for my $i (0 .. $#{$self->state_table}) {
		$ret .= "\t# " . $self->state_table->[$i]{__comment__} . "\n" .
				"\t{\n"; 
		
		for my $key (sort keys %{$self->state_table->[$i]}) {
			next if $key =~ /^(__.*__|\[.*\][?*]?)$/;
			
			my $value = $self->state_table->[$i]{$key};
			$value = $value->{__state__} if ref($value) eq 'HASH';
			
			my $key_text = ($key =~ /^\w+$/) ? $key : dump($key);
			$ret .= sprintf("\t\t%-16s", $key_text) 
				  . "=> " . $value . ",\n";
		}
		
		$ret .= "\t},\n";
	}
	$ret .= ");\n";
	
	# dump actions
	for (sort {$a->[0] <=> $b->[0]} values %{$self->actions}) {
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
	$tree->{'__state__'} = $id;
	$tree->{'__comment__'} = 
			"[" . $id . "] " .
			($id ?
				_format_token($path[0]) . " : " .
					join(" ", map {_format_token($_)} @path[1 .. $#path ]) :
				"");
	$self->state_table->[$id] = $tree;
	
	for (sort keys %$tree) {
		next if /^__.*__$/;
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
					next if $subrule_key =~ /^(__.*__|\[.*\][?*]?)$/;
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
					if (ref($next_state) eq 'HASH') {		# create set of rules for next state
						while (my($next_state_key, $next_state_value) = each %$next_state) {
							next if $next_state_key =~ /^(__.*__|\[.*\][?*]?)$/;
							
							my $next_state_text = ref($next_state_value) eq 'HASH' ? 
											$next_state_value->{__state__} : 
											$next_state_value;
							if ($state->{$next_state_key}) {
								die if $state->{$next_state_key} ne $next_state_text;
							}
							else {
								$state->{$next_state_key} = $next_state_text;
								$changed++;
							}
						}
					}
					else {									# create <ELSE> rule to end this rule
						if ($state->{'<ELSE>'}) {
							die if $state->{'<ELSE>'} ne $next_state;
						}
						else {
							$state->{'<ELSE>'} = $next_state;
							$changed++;
						}
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
use HOP::Stream qw( drop head );

use constant {
	TYPE => 0, VALUE => 1, LINE => 2,		# to decode a token
	TEXT => 0, LINE_NR => 1, FILE => 2,		# to decode a line
	ARGS => 0, PROG => 1,					# to decode args in parser functions
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
# $result = parse($input, $user)
#	$input is a stream of [TYPE, VALUE, [TEXT, LINE_NR, FILE]]
#	$user is a user pointer passed back to every parse function
#	Returns the result of the last parse function on a successful parse,
#	or dies with an error otherwise
sub parse {
	my($input, $user) = @_;

	# current state
	my $state = $start_state;
	my @values = ();
	
	# return stack of states
	my @stack = ();					# store: [$state, @values]

	# only get next token after a drop
	my $token = head($input);
	my $entry;
	for(;;) {
		my $found_else;
		if ($entry ||=  $state_table[$state]{($token ? $token->[TYPE] : "")}) {
			; # entry exists, found token
		}
		elsif ($entry ||= $state_table[$state]{"<ELSE>"}) {
			$found_else++;
		}
		else {
			_expected_error_at($token, $state);
		}
		
		if (ref($entry) eq 'ARRAY') {					# call sub-rule
			my($next_state, $return_state) = @$entry;
			push(@stack, [ $return_state, @values ]);	# return data
			($state, $entry, @values) = ($next_state);	# call
		}
		else {											# accept token
			$state = $entry;
			
			if (!$found_else) {
				push(@values, $token) if $token;		# add token to
														# values
				drop($input);
				($token, $entry) = (head($input), undef);
														# and get next,
														# undef entry
			}
			
			while (ref($state) eq 'CODE') {				# return from
														# sub-rules 
				my $value = eval { $state->([@values], $user) };
				$@ and error_at($token, "Parse error, $@");
				
				return $value if (!$token && !@stack);	# END OF PARSE
				
				my $top = pop(@stack) 
					or error_at($token, "Parse error, expected EOF");
				($state, @values) = @$top;
				push(@values, $value) if defined($value);
			}
		}
	}
}

#------------------------------------------------------------------------------
# Dies with an error message pointing at the line ot the given token
sub error_at { 
	my($token, $message) = @_;
	die _error_message($token, "Error", $message);
}

#------------------------------------------------------------------------------
# Warns an error message pointing at the line object as "FILE(LINE) : warning ...".
sub warning_at { 
	my($token, $message) = @_;
	warn _error_message($token, "Warning", $message);
}


#------------------------------------------------------------------------------
# error message for error_at() and warning_at()
sub _error_message { 
	my($token, $type, $message) = @_;
	
	$message ||= ""; chomp($message);
	my $file_pos = ($token && $token->[LINE]) ? 
					($token->[LINE][FILE] || "input")." ".($token->[LINE][LINE_NR] || "").": " :
					"";
	my $line_pos = " at "._format_token($token ? $token->[TYPE] : "");
	
	return $file_pos.$type.": ".$message.$line_pos."\n";
}

#------------------------------------------------------------------------------
# expected error
sub _expected_error_at { 
	my($token, $state) = @_;
	
	my @expected = keys %{$state_table[$state]};
	for (@expected) {
		$_ = _format_token($_);
	}
	@expected = sort @expected;
	
	error_at($token, 
			"Parse error, expected ".
			(scalar(@expected) == 1 ? "@expected" : "one of (@expected)"));
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
