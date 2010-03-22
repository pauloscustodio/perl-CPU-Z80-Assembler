# $Id$

package CPU::Z80::Assembler::Stream;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Stream - Object to encapsulate an iterator to be able to unget

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;

our $VERSION = '2.08_01';

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Stream;
  my $stream = CPU::Z80::Assembler::Stream->new(@input)
  my $head = $stream->head;
  my $next = $stream->get;
  $stream->unget(@items);

=head1 DESCRIPTION

This module encapsulates an iterator function. An iterator function returns the
next element in the stream on each call, and returns undef on end of input.

The iterator can return a code reference - this new iterator is inserted at the 
head of the queue.

The object allows the user to peek the head element of the stream without consuming
it, or to get it and remove from the stream.

A list of objects can also be pushed back to the stream, to be retrieved in the
subsequent get() calls.

The input list to the constructor and to unget() contains either objects to be
retireved on each get() call, or code references to be called to extract the
next item from the stream.

=head1 EXPORTS

Nothing.

=head1 FUNCTIONS

=head2 new

Creates a new object ready to retrieve elements from the given input list.

=head2 head

Retrieves the element at the head of the stream, but keeps it in the stream to
be retrieved by the next get().

Returns undef if the stream is empty.

=cut

#------------------------------------------------------------------------------

sub head        	{ $_[0][0] }			# get head element
sub _set_head   	{ $_[0][0] = $_[1] }	# set head element

sub _queue      	{ $_[0][1] }			# rest of the queue

sub new {
    my($class, @input) = @_;
    my $self = bless [undef, \@input], $class;
    $self->_fill_head();
    $self;
}

#------------------------------------------------------------------------------
# retrieve the next element from the queue and fill the head
sub _fill_head {
    my($self) = @_;
	my $queue = $self->_queue;
    $self->_set_head(undef);                        # default : end of input
    for (;;) {
        return if !@$queue;                			# empty list
        my $head = $queue->[0];
        if (!defined $head) {
            shift @$queue;                 			# skip undef elements
        }
        elsif (ref($head) eq 'CODE') {              # CODE element : call iterator
			my $element = $head->();
			
			# if the iterator called unget() to insert some elements at the head of
			# the queue, then _fill_head() was called within and put the first of the
			# unget() elements in the head - put it back to the queue
			if (defined (my $new_head = $self->head)) {
				unshift @$queue, $new_head;
				$self->_set_head(undef);
			}
				
			if (!defined $element) {
                shift @$queue;             			# iterator exhausted, drop it
            }
			elsif (ref($element) eq 'CODE') {
				unshift @$queue, $element;			# insert sub-iterator at head of queue
			}
            else {                 					# got a next element
                $self->_set_head($element);         # leave ready for next get()
                return;        
            }
        }
        else {
            $self->_set_head($head);
            shift @$queue;                 			# drop element
            return;
        }
    }    
}

#------------------------------------------------------------------------------

=head2 get

Retrieves the element at the head of the stream and removes it from the stream.

Returns undef if the stream is empty

=cut

#------------------------------------------------------------------------------

sub get {
    my($self) = @_;
    my $element = $self->head;
    $self->_fill_head;
    return $element;
}

#------------------------------------------------------------------------------

=head2 unget

Pushes back a list of values and/or iterators to the stream, that will be retrieved
on the subsequent calls to get().

Can be called from within an iterator, to insert values that will be returned 
after the current call, e.g. calling from the iterator:

  $stream->unget(2..3); return 1;

will result in the stream 1,2,3 being returned from the stream.

=cut

#------------------------------------------------------------------------------

sub unget {
    my($self, @input) = @_;
	my $queue = $self->_queue;
	my $head = $self->head;
	unshift @$queue, $head if defined($head);
    unshift @$queue, @input;					# save current head
    $self->_fill_head;
}

#------------------------------------------------------------------------------

=head2 iterator

Return an iterator function that returns the next stream element on each call.

=cut

#------------------------------------------------------------------------------

sub iterator {
    my($self) = @_;
	return sub { $self->get };
}

#------------------------------------------------------------------------------

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
