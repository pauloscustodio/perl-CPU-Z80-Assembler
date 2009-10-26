#!perl

# $Id$
# Build all CPU::Z80::Assembler instructions
# Needs sjasmplus (http://sjasmplus.sourceforge.net/) to validate assembled code

use strict;
use warnings;

use Data::Dump 'dump';
use File::Basename;
use Iterator::Array::Jagged;
use List::MoreUtils 'first_index';

#------------------------------------------------------------------------------
# generated table
my $table = {};

#------------------------------------------------------------------------------
# Load table
sub load_table { my($line_iter) = @_;

	while ($_ = $line_iter->()) {
		s/\s*\#.*//; s/^\s+//; s/\s+$//;
		next unless /\S/;
		last if /__END__/;
		chomp;

		my($instr, $bytes) = split(/\s*=>\s*/, $_);
		my @instr_tmpl = split(/\s+|\s*,\s*/, $instr);
		my @bytes_tmpl = split(' ', $bytes);

		# convert each operand to a list of [index, value]
		for (@instr_tmpl) {
			if (s/^<(.*)>$/$1/) {
				my @list = split(/\./, $_);
				$_ = [ grep {$_->[1] ne ""} map {[$_, $list[$_]]} 0 .. $#list ];
			}
			else {
				$_ = [[0, $_]];
			}
		}
		
		# iterate through lists
		my $instr_iter = Iterator::Array::Jagged->new(data => \@instr_tmpl);
		while (my @set = $instr_iter->next) {
			# compute instr and bytes
			my @value = map {$_->[0]} @set;
			my @instr = map {$_->[1]} @set;

			my @bytes = @bytes_tmpl;	# make a copy, so that @bytes remains intact
			for (@bytes) {
				s/<(\d)(:(\d))?>/ $value[ $1 ] << ($3 || 0) /ge;
				if (! /(NN?|DIS)\d*/) {
					$_ = eval $_; $@ and die $@;
				}
			}
			
			# add "," tokens, and split arguments by tokens
			for (my $i = 2; $i < @instr; $i += 2) {
				splice(@instr, $i, 0, ",");
			}
			for (my $i = 0; $i < @instr; $i++) {
				next if $instr[$i] =~ /af\'/i;	# special case - af'
				
				my @arg = split(/\b/, $instr[$i]);
				if (@arg > 1) {
					splice(@instr, $i, 1, @arg);
				}
			}

			for my $map_parens (sub {shift}, sub {my $ret = shift; $ret =~ tr/()/[]/; $ret}) {
				for my $map_ix (sub {shift}, sub {my $ret = shift; $ret =~ s/i([xy])([hl])/$1$2/gi; $ret}, 
											 sub {my $ret = shift; $ret =~ s/i([xy])([hl])/$2$1/gi; $ret}) {
					my @instr_copy = map {$map_parens->($map_ix->($_))} @instr;

					# need to make copies of the argument arrays
					load_instr([@instr_copy], [@bytes]);
					
					# convert "(ix+DIS)" into "(ix-NDIS)" and "(ix)" 
					my $dis_pos = first_index {$_ eq "DIS"} @instr_copy;
					if ($dis_pos >= 0) {
						die unless $instr_copy[$dis_pos-1] eq "+";
						my @bytes_copy = @bytes;
						
						@instr_copy[$dis_pos-1, $dis_pos] = ("-", "NDIS");
						for (@bytes_copy) {
							s/DIS/NDIS/;
						}
						load_instr([@instr_copy], [@bytes_copy]);
						
						splice(@instr_copy, $dis_pos-1, 2);
						for (@bytes_copy) {
							s/NDIS\+1/1/;
							s/NDIS/0/;
						}
						load_instr([@instr_copy], [@bytes_copy]);
					}
				}
			}
		}
	}
}

#------------------------------------------------------------------------------
# Load instruction
sub load_instr { my($instr, $bytes) = @_;
	my $code = 
		'$table->{"disasm"}'.join("", map {'{"'.$_.'"}'} @$bytes, "").
		' ||= $instr; '.
		'$table->{"asm"}'.join("", map {'{"'.$_.'"}'} ( @$instr, "" )).
		' ||= $bytes;';
	eval $code; $@ and die "$code: $@";
}

#------------------------------------------------------------------------------
# Build the output module
sub write_asm_table { my($package) = @_;

	my $template =
'# $Id$
# file generated by <PROG>, do not edit

package <PACKAGE>;

#------------------------------------------------------------------------------
=head1 NAME

<PACKAGE> - Z80 assembly/disassembly table

=head1 SYNOPSIS

  use <PACKAGE>;
  asm_table()->{asm}{"adc"}{"a"}{","}{"("}{"hl"}{")"}{""} is [0x8E]
  asm_table()->{disasm}{0x8E}{""} is ["adc", "a", ",", "(", "hl", ")"]

=head1 DESCRIPTION

This module provides a single function that returns a complete Z80 
assembly / disassembly hash table. 

=head1 EXPORTS

By default the "asm_table" subroutine is exported.

=head1 FUNCTIONS

=head2 asm_table

This function returns the assembly/disassembly hash table.

Starting at the "asm" key, and 
following one sub-hash table for each token, with an empty token at the 
end of the list produces an array of opcode bytes of the corresponding Z80 
assembly.

Starting at the "disasm" key, and following one sub-hash table for each 
opcode byte, with an empty byte at the end of the list, produces an array
of tokens of the corresponding disassembled Z80 instruction.

The following special tokens are defined:

=over 4

=item N

One byte;

=item NN

One word;

=item NNl

The low byte of the word;

=item NNh

The high byte of the word;

=item NNo

The offset byte of a JR/DJNZ instruction that is converted to NN by adding
address + 1;

=item DIS

The offset of a (ix+DIS) expression;

=item NDIS

The offset of a (ix-NDIS) expression.

=back

=head1 BUGS and FEEDBACK

See L<CPU::Z80::Assembler>.

=head1 SEE ALSO

L<CPU::Z80::Assembler>

=head1 AUTHORS, COPYRIGHT and LICENCE

See L<CPU::Z80::Assembler>.

=cut
#------------------------------------------------------------------------------

use strict;
use warnings;

our $VERSION = "2.06";

require Exporter;
our @ISA =    qw( Exporter  );
our @EXPORT = qw( asm_table );

my $table = <TABLE_DUMP>;

sub asm_table { return $table; }

1;
';

	# convert numbers to hex
	my $table_dump = dump($table);
	for ($table_dump) {
		s/"0"/0/g;
		s/(\d+)\s+(=>)/$1 $2/g;
		s/\b(\d+)\b/ sprintf("0x%02X", $1) /ge;
	}
	my $prog = basename($0);

	# populate template
	for ($template) {
		s/<PACKAGE>/$package/g;
		s/<TABLE_DUMP>/$table_dump/g;
		s/<PROG>/$prog/g;
	}

	print $template;
}

#------------------------------------------------------------------------------
# parse input
load_table(sub {my $line = <DATA>; $line});
write_asm_table($ARGV[0] || "AsmTable");

__END__

#------------------------------------------------------------------------------
# asm table
# The order is important: an instruction is only loaded if not yet defined

#------------------------------------------------------------------------------
# 8 bit load group

ld	<b.c.d.e.h.l..a>,<b.c.d.e.h.l..a>			=>      0x40+<1:3>+<2>
ld	<b.c.d.e.ixh.ixl..a>,<b.c.d.e.ixh.ixl..a>	=> 0xDD 0x40+<1:3>+<2>
ld	<b.c.d.e.iyh.iyl..a>,<b.c.d.e.iyh.iyl..a>	=> 0xFD 0x40+<1:3>+<2>

ld	<b.c.d.e.h.l..a>,N							=>      0x06+<1:3> N
ld	<b.c.d.e.ixh.ixl..a>,N						=> 0xDD 0x06+<1:3> N
ld	<b.c.d.e.iyh.iyl..a>,N						=> 0xFD 0x06+<1:3> N

ld	<b.c.d.e.h.l..a>,(hl)						=>      0x46+<1:3>
ldi	<b.c.d.e.h.l..a>,(hl)						=>      0x46+<1:3> 0x23
ldd	<b.c.d.e.h.l..a>,(hl)						=>      0x46+<1:3> 0x2B

ld	<b.c.d.e.h.l..a>,(ix+DIS)					=> 0xDD 0x46+<1:3> DIS
ldi	<b.c.d.e.h.l..a>,(ix+DIS)					=> 0xDD 0x46+<1:3> DIS 0xDD 0x23
ldd	<b.c.d.e.h.l..a>,(ix+DIS)					=> 0xDD 0x46+<1:3> DIS 0xDD 0x2B

ld	<b.c.d.e.h.l..a>,(iy+DIS)					=> 0xFD 0x46+<1:3> DIS
ldi	<b.c.d.e.h.l..a>,(iy+DIS)					=> 0xFD 0x46+<1:3> DIS 0xFD 0x23
ldd	<b.c.d.e.h.l..a>,(iy+DIS)					=> 0xFD 0x46+<1:3> DIS 0xFD 0x2B

ld	(hl),<b.c.d.e.h.l..a>						=>      0x70+<2>
ldi	(hl),<b.c.d.e.h.l..a>						=>      0x70+<2> 0x23
ldd	(hl),<b.c.d.e.h.l..a>						=>      0x70+<2> 0x2B

ld	(ix+DIS),<b.c.d.e.h.l..a>					=> 0xDD 0x70+<2> DIS
ldi	(ix+DIS),<b.c.d.e.h.l..a>					=> 0xDD 0x70+<2> DIS 0xDD 0x23
ldd	(ix+DIS),<b.c.d.e.h.l..a>					=> 0xDD 0x70+<2> DIS 0xDD 0x2B

ld	(iy+DIS),<b.c.d.e.h.l..a>					=> 0xFD 0x70+<2> DIS
ldi	(iy+DIS),<b.c.d.e.h.l..a>					=> 0xFD 0x70+<2> DIS 0xFD 0x23
ldd	(iy+DIS),<b.c.d.e.h.l..a>					=> 0xFD 0x70+<2> DIS 0xFD 0x2B

ld	(hl),N										=>      0x36 N
ldi	(hl),N										=>      0x36 N 0x23
ldd	(hl),N										=>      0x36 N 0x2B

ld	(ix+DIS),N									=> 0xDD 0x36 DIS N
ldi	(ix+DIS),N									=> 0xDD 0x36 DIS N 0xDD	0x23
ldd	(ix+DIS),N									=> 0xDD 0x36 DIS N 0xDD	0x2B

ld	(iy+DIS),N									=> 0xFD 0x36 DIS N
ldi	(iy+DIS),N									=> 0xFD 0x36 DIS N 0xFD	0x23
ldd	(iy+DIS),N									=> 0xFD 0x36 DIS N 0xFD	0x2B

ld	a,<(bc).(de)>								=> 0x0A+<2:4>
ldi	a,<(bc).(de)>								=> 0x0A+<2:4> 0x03+<2:4>
ldd	a,<(bc).(de)>								=> 0x0A+<2:4> 0x0B+<2:4>

ld	<(bc).(de)>,a								=> 0x02+<1:4>
ldi	<(bc).(de)>,a								=> 0x02+<1:4> 0x03+<1:4>
ldd	<(bc).(de)>,a								=> 0x02+<1:4> 0x0B+<1:4>

ld	a,(NN) 										=> 0x3A NNl NNh
ld	(NN),a 										=> 0x32 NNl NNh

ld	a,<i.r>										=> 0xED 0x57+<2:3>
ld	<i.r>,a										=> 0xED 0x47+<1:3>

# load 16 bits

ld	<bc..de..hl>,<bc..de..hl>	=>      0x40+<1:3>+<2>      0x49+<1:3>+<2>
ld	<bc..de..>,ix				=> 0xDD 0x44+<1:3>     0xDD 0x4D+<1:3>
ld	<bc..de..>,iy				=> 0xFD 0x44+<1:3>     0xFD 0x4D+<1:3>

ld	<bc..de..>,(hl)				=>      0x4E+<1:3> 0x23     0x46+<1:3> 0x2B
ldi	<bc..de..>,(hl)				=>      0x4E+<1:3> 0x23     0x46+<1:3> 0x23

ld	<bc..de..hl>,(ix+DIS)		=> 0xDD 0x4E+<1:3> DIS           0xDD 0x46+<1:3> DIS+1
ldi	<bc..de..hl>,(ix+DIS)		=> 0xDD 0x4E+<1:3> DIS 0xDD 0x23 0xDD 0x46+<1:3> DIS 0xDD 0x23 

ld	<bc..de..hl>,(iy+DIS)		=> 0xFD 0x4E+<1:3> DIS           0xFD 0x46+<1:3> DIS+1
ldi	<bc..de..hl>,(iy+DIS)		=> 0xFD 0x4E+<1:3> DIS 0xFD 0x23 0xFD 0x46+<1:3> DIS 0xFD 0x23

ld 	(hl),<bc..de>				=>      0x71+<2> 0x23     0x70+<2> 0x2B
ldi	(hl),<bc..de>				=>      0x71+<2> 0x23     0x70+<2> 0x23

ld 	(ix+DIS),<bc..de..hl>		=> 0xDD 0x71+<2> DIS           0xDD 0x70+<2> DIS+1
ldi	(ix+DIS),<bc..de..hl>		=> 0xDD 0x71+<2> DIS 0xDD 0x23 0xDD 0x70+<2> DIS 0xDD 0x23

ld 	(iy+DIS),<bc..de..hl>		=> 0xFD 0x71+<2> DIS 0xFD 0x70+<2> DIS+1
ldi	(iy+DIS),<bc..de..hl>		=> 0xFD 0x71+<2> DIS 0xFD 0x23 0xFD 0x70+<2> DIS 0xFD 0x23

ld 	hl,ix						=> 0xDD 0xE5 0xE1
ld 	hl,iy						=> 0xFD 0xE5 0xE1

ld	ix,<bc..de..>				=> 0xDD 0x69+<2>       0xDD 0x60+<2>
ld	iy,<bc..de..>				=> 0xFD 0x69+<2>       0xFD 0x60+<2>

ld ix,hl						=> 0xE5 0xDD 0xE1
ld iy,hl						=> 0xE5 0xFD 0xE1

ld ix,ix						=> 0xDD 0x6D 0xDD 0x64
ld ix,iy						=> 0xFD 0xE5 0xDD 0xE1

ld iy,iy						=> 0xFD 0x6D 0xFD 0x64
ld iy,ix						=> 0xDD 0xE5 0xFD 0xE1

#------------------------------------------------------------------------------
# 16 bit load group

ld	<bc.de.hl.sp>,NN					 		=>      0x01+<1:4> NNl NNh
ld	ix,NN								 		=> 0xDD 0x21 NNl NNh
ld	iy,NN								 		=> 0xFD 0x21 NNl NNh

ld	hl,(NN)										=>      0x2A NNl NNh
ld	ix,(NN)										=> 0xDD 0x2A NNl NNh
ld	iy,(NN)										=> 0xFD 0x2A NNl NNh

ld	<bc.de.hl.sp>,(NN)							=> 0xED 0x4B+<1:4> NNl NNh

ld	(NN),hl										=>      0x22 NNl NNh
ld	(NN),ix										=> 0xDD 0x22 NNl NNh
ld	(NN),iy										=> 0xFD 0x22 NNl NNh

ld	(NN),<bc.de.hl.sp>							=> 0xED 0x43+<2:4> NNl NNh

ld	sp,hl										=>      0xF9
ld	sp,ix										=> 0xDD 0xF9
ld	sp,iy										=> 0xFD 0xF9

push <bc.de.hl.af>								=>      0xC5+<1:4>
push ix											=> 0xDD 0xE5
push iy											=> 0xFD 0xE5

pop <bc.de.hl.af>								=>      0xC1+<1:4>
pop ix											=> 0xDD 0xE1
pop iy											=> 0xFD 0xE1

#------------------------------------------------------------------------------
# Exchange, block transfer, search group

ex	de,hl										=>      0xEB
ex	af,af'										=>		0x08	# '
ex	af,af										=>		0x08
ex	af											=>		0x08
exa												=>		0x08
exx												=> 		0xD9

ex	(sp),hl										=>		0xE3
ex	(sp),ix										=> 0xDD 0xE3
ex	(sp),iy										=> 0xFD 0xE3

ldi												=> 0xED 0xA0
ldir											=> 0xED 0xB0
ldd												=> 0xED 0xA8
lddr											=> 0xED 0xB8

cpi												=> 0xED 0xA1
cpir											=> 0xED 0xB1
cpd												=> 0xED 0xA9
cpdr											=> 0xED 0xB9

#------------------------------------------------------------------------------
# 8 bit arithmetic and logical group

<add.adc..sbc> a,<b.c.d.e.h.l..a>				=>      0x80+<0:3>+<2>
<add.adc..sbc> a,<b.c.d.e.ixh.ixl..a>			=> 0xDD 0x80+<0:3>+<2>
<add.adc..sbc> a,<b.c.d.e.iyh.iyl..a>			=> 0xFD 0x80+<0:3>+<2>
<add.adc..sbc> a,N								=>		0xC6+<0:3> N
<add.adc..sbc> a,(hl)							=>      0x86+<0:3>
<add.adc..sbc> a,(ix+DIS)						=> 0xDD 0x86+<0:3> DIS
<add.adc..sbc> a,(iy+DIS)						=> 0xFD 0x86+<0:3> DIS

<..sub..and.xor.or.cp>   <b.c.d.e.h.l..a>		=>      0x80+<0:3>+<1>
<..sub..and.xor.or.cp>   <b.c.d.e.ixh.ixl..a>	=> 0xDD 0x80+<0:3>+<1>
<..sub..and.xor.or.cp>   <b.c.d.e.iyh.iyl..a>	=> 0xFD 0x80+<0:3>+<1>
<..sub..and.xor.or.cp>   N						=>		0xC6+<0:3> N
<..sub..and.xor.or.cp>   (hl)					=>      0x86+<0:3>
<..sub..and.xor.or.cp>   (ix+DIS)				=> 0xDD 0x86+<0:3> DIS
<..sub..and.xor.or.cp>   (iy+DIS)				=> 0xFD 0x86+<0:3> DIS

<....inc.dec> <b.c.d.e.h.l..a>					=>      0x00+<0>+<1:3>
<....inc.dec> <b.c.d.e.ixh.ixl..a>				=> 0xDD 0x00+<0>+<1:3>
<....inc.dec> <b.c.d.e.iyh.iyl..a>				=> 0xFD 0x00+<0>+<1:3>

<....inc.dec> (hl)								=>      0x30+<0>
<....inc.dec> (ix+DIS)							=> 0xDD 0x30+<0> DIS
<....inc.dec> (iy+DIS)							=> 0xFD 0x30+<0> DIS

#------------------------------------------------------------------------------
# General purpose arithmetic and CPU control group

daa 											=> 0x27
cpl 											=> 0x2F
neg 											=> 0xED 0x44
ccf 											=> 0x3F
scf 											=> 0x37
nop 											=> 0x00
halt											=> 0x76
di 												=> 0xF3
ei	 											=> 0xFB
im	0 											=> 0xED 0x46
im	1 											=> 0xED 0x56
im	2 											=> 0xED 0x5E

#------------------------------------------------------------------------------
# 8 bit arithmetic and logical group

add hl,<bc.de.hl.sp>							=>		0x09+<2:4>
add ix,<bc.de.ix.sp>							=> 0xDD 0x09+<2:4>
add iy,<bc.de.iy.sp>							=> 0xFD 0x09+<2:4>

<sbc.adc> hl,<bc.de.hl.sp>						=>      0xED 0x42+<0:3>+<2:4>
sub hl,<bc.de.hl.sp>							=> 0xB7 0xED 0x42+<2:4>

<inc.dec> <bc.de.hl.sp>							=>		0x03+<0:3>+<1:4>
<inc.dec> <bc.de.ix.sp>							=> 0xDD 0x03+<0:3>+<1:4>
<inc.dec> <bc.de.iy.sp>							=> 0xFD 0x03+<0:3>+<1:4>

#------------------------------------------------------------------------------
# rotate and shift group

<rlca.rrca.rla.rra>											=>		0x07+<0:3>

<rlc.rrc.rl.rr.sla.sra.sll.srl> <b.c.d.e.h.l..a>			=> 		0xCB     0x00+<0:3>+<1>
<rlc.rrc.rl.rr.sla.sra.sll.srl> (hl)						=>      0xCB     0x06+<0:3>
<rlc.rrc.rl.rr.sla.sra.sll.srl> (ix+DIS)					=> 0xDD 0xCB DIS 0x06+<0:3>
<rlc.rrc.rl.rr.sla.sra.sll.srl> (iy+DIS)					=> 0xFD 0xCB DIS 0x06+<0:3>
<rlc.rrc.rl.rr.sla.sra.sll.srl> (ix+DIS),<b.c.d.e.h.l..a>	=> 0xDD 0xCB DIS 0x00+<0:3>+<2>
<rlc.rrc.rl.rr.sla.sra.sll.srl> (iy+DIS),<b.c.d.e.h.l..a>	=> 0xFD 0xCB DIS 0x00+<0:3>+<2>

<rlc.rrc.rl.rr.sla.sra.sli.srl> <b.c.d.e.h.l..a>			=> 		0xCB     0x00+<0:3>+<1>
<rlc.rrc.rl.rr.sla.sra.sli.srl> (hl)						=>      0xCB     0x06+<0:3>
<rlc.rrc.rl.rr.sla.sra.sli.srl> (ix+DIS)					=> 0xDD 0xCB DIS 0x06+<0:3>
<rlc.rrc.rl.rr.sla.sra.sli.srl> (iy+DIS)					=> 0xFD 0xCB DIS 0x06+<0:3>
<rlc.rrc.rl.rr.sla.sra.sli.srl> (ix+DIS),<b.c.d.e.h.l..a>	=> 0xDD 0xCB DIS 0x00+<0:3>+<2>
<rlc.rrc.rl.rr.sla.sra.sli.srl> (iy+DIS),<b.c.d.e.h.l..a>	=> 0xFD 0xCB DIS 0x00+<0:3>+<2>

rld															=> 0xED 0x6F
rrd															=> 0xED 0x67

# rotate 16 bits

rl <bc..de..hl>					=> 0xCB 0x11+<1> 0xCB 0x10+<1>
rr <bc..de..hl>					=> 0xCB 0x18+<1> 0xCB 0x19+<1>

sla hl							=> 0x29			# special case: add hl,hl
sla <bc..de..hl>				=> 0xCB 0x21+<1> 0xCB 0x10+<1>
sll <bc..de..hl>				=> 0xCB 0x31+<1> 0xCB 0x10+<1>
sli <bc..de..hl>				=> 0xCB 0x31+<1> 0xCB 0x10+<1>

sra <bc..de..hl>				=> 0xCB 0x28+<1> 0xCB 0x19+<1>
srl <bc..de..hl>				=> 0xCB 0x38+<1> 0xCB 0x19+<1>

#<..rl.....>		=> 0xCB 0x01+<0:3>+<1> 0xCB 0x00+<0:3>+<1>
#<...rr....> <bc..de..hl>		=> 0xCB 0x00+<0:3>+<1> 0xCB 0x01+<0:3>+<1>

#<..rl..sla..sll.> <bc..de..hl>		=> 0xCB 0x01+<0:3>+<1> 0xCB 0x00+<0:3>+<1>
#<...rr..sra..srl> <bc..de..hl>		=> 0xCB 0x00+<0:3>+<1> 0xCB 0x01+<0:3>+<1>


#------------------------------------------------------------------------------
# Bit Set, Reset and Test Group

<.bit.res.set> <0.1.2.3.4.5.6.7>,<b.c.d.e.h.l..a>			=>      0xCB     <0:6>+<1:3>+<2>
<.bit.res.set> <0.1.2.3.4.5.6.7>,(hl)						=>      0xCB     <0:6>+<1:3>+6
<.bit.res.set> <0.1.2.3.4.5.6.7>,(ix+DIS)					=> 0xDD 0xCB DIS <0:6>+<1:3>+6
<.bit.res.set> <0.1.2.3.4.5.6.7>,(iy+DIS)					=> 0xFD 0xCB DIS <0:6>+<1:3>+6
<..res.set>    <0.1.2.3.4.5.6.7>,(ix+DIS),<b.c.d.e.h.l..a>	=> 0xDD 0xCB DIS <0:6>+<1:3>+<3>
<..res.set>    <0.1.2.3.4.5.6.7>,(iy+DIS),<b.c.d.e.h.l..a>	=> 0xFD 0xCB DIS <0:6>+<1:3>+<3>

#------------------------------------------------------------------------------
# Jump Group

jp NN											=> 		0xC3       NNl NNh
jp <nz.z.nc.c.po.pe.p.m>,NN						=> 		0xC2+<1:3> NNl NNh

jr NN											=> 		0x18       NNo
jr <nz.z.nc.c>,NN								=> 		0x20+<1:3> NNo
djnz NN											=>		0x10       NNo

jp (hl)											=> 		0xE9
jp (ix)											=> 0xDD	0xE9
jp (iy)											=> 0xFD	0xE9
jp hl											=> 		0xE9
jp ix											=> 0xDD	0xE9
jp iy											=> 0xFD	0xE9

#------------------------------------------------------------------------------
# Call and Return Group

call NN											=> 		0xCD       NNl NNh
call <nz.z.nc.c.po.pe.p.m>,NN					=> 		0xC4+<1:3> NNl NNh
ret												=> 		0xC9
ret <nz.z.nc.c.po.pe.p.m>						=> 		0xC0+<1:3>
reti											=> 0xED 0x4D
retn											=> 0xED 0x45
rst <0.8.16.24.32.40.48.56>						=> 		0xC7+(<1:3>&0b00111000)
rst <0.1.2.3.4.5.6.7>							=> 		0xC7+(<1:3>&0b00111000)

#------------------------------------------------------------------------------
# Input and Output Group

in a,(N)										=>		0xDB N
in <b.c.d.e.h.l..a>,(c)							=> 0xED 0x40+<1:3>
in f,(c)										=> 0xED 0x70

ini												=> 0xED 0xA2
inir											=> 0xED 0xB2
ind												=> 0xED 0xAA
indr											=> 0xED 0xBA

out (N),a										=>		0xD3 N
out (c),<b.c.d.e.h.l..a>						=> 0xED 0x41+<2:3>
out (c),0										=> 0xED 0x71

outi											=> 0xED 0xA3
otir											=> 0xED 0xB3
outd											=> 0xED 0xAB
otdr											=> 0xED 0xBB

#------------------------------------------------------------------------------
# Special instruction for CPU::Emulator::Z80

stop											=> 0xDD 0xDD 0x00
