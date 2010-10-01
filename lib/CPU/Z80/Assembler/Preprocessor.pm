# $Id$

package CPU::Z80::Assembler::Preprocessor;

#------------------------------------------------------------------------------

=head1 NAME

CPU::Z80::Assembler::Preprocessor - Preprocessor for the Z80 assembler

=cut

#------------------------------------------------------------------------------

use strict;
use warnings;

use Asm::Preproc;
use Asm::Preproc::Line;
use Asm::Preproc::Stream;

our $VERSION = '2.11';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80preprocessor);

#------------------------------------------------------------------------------

=head1 SYNOPSIS

  use CPU::Z80::Assembler::Preprocessor;

  open($fh, $file1) or die;
  my $stream = z80preprocessor("#include 'file2'\n", sub {<$fh>});
  my $line = $stream->get;

=head1 DESCRIPTION

This module provides a preprocessor to handle file includes. It
is called by L<CPU::Z80::Assembler::Lexer|CPU::Z80::Assembler::Lexer> to retrieve each line
of input to scan.

It is a simple wrapper around L<Asm::Preproc|Asm::Preproc> - please look up
to check for preprocessor syntax.

=head1 EXPORTS

By default the 'z80preprocessor' subroutine is exported.

=head1 FUNCTIONS

=head2 z80preprocessor

This takes as parameter a list of either text lines to parse, 
or iterators that return text lines to parse.

The result is a L<Asm::Preproc::Stream|Asm::Preproc::Stream> of L<Asm::Preproc::Line|Asm::Preproc::Line> 
objects that contain each of the input lines of the input.

=cut

#------------------------------------------------------------------------------

sub z80preprocessor { 
	my(@input) = @_;
	my $pp = Asm::Preproc->new;
	$pp->include_list(@input);
	
	# create a new stream to handle "INCLUDE" statement
	return Asm::Preproc::Stream->new( 
		sub {
			while (1) {
				my $line = $pp->getline
					or return undef;			# end of input
				
				# handle "INCLUDE"
				if ($line->text =~ /^\s*(include\s+.*)/i) {
					$pp->include_list("%$1");	# handle %include...
					next;						# get next line
				}
				else {
					return $line;
				}
			}
		}
	);	
}

#------------------------------------------------------------------------------

=head1 PREPROCESSING

See L<Asm::Preproc|Asm::Preproc>.

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler|CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler|CPU::Z80::Assembler>
L<CPU::Z80::Assembler::Lexer|CPU::Z80::Assembler::Lexer>
L<Asm::Preproc::Stream|Asm::Preproc::Stream>
L<Asm::Preproc::Line|Asm::Preproc::Line>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler|CPU::Z80::Assembler>.

=cut

#------------------------------------------------------------------------------

1;
