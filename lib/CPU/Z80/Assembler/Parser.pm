# Join assembly tokens into instructions

package CPU::Z80::Assembler::Parser;

use strict;
use warnings;
use 5.008;

use Data::Dump 'dump';
use HOP::Stream ':all';

use vars qw(@EXPORT);
use base qw(Exporter);
@EXPORT = qw(z80parser eval_expr);

#------------------------------------------------------------------------------
# LOOKUP-TABLES
# 	The order is important: an instruction is only loaded if not yet defined
#	Lookup table of all assembly instructions recognized by the assembler
#	Sequence is indexed by a sequence of token labels, followed by "" as the 
#	last key. The value is a fucntion with the signature:
#		($parsed, $input) = f($input, $start, @expr)
#	$input is the current stream position after the recognized tokens
#	$start is the stream position at the start of the instruction
#	@expr are all the expressions parsed, as streams.
#	Functions die with error message on parse failure, error will be caught
#	to explain where the error occured.
my %STMT_END; 	for ("\n", qw( LINE : )) { $STMT_END{$_}++ }
my @TABLE_ADD =	('add', 'adc', undef, 'sbc');
my @TABLE_SUB =	(undef, undef, 'sub', undef, 'and', 'xor', 'or', 'cp');
my @TABLE_INC =	(undef, undef, undef, undef, 'inc', 'dec');
my @TABLE_ROT4 =('rlca', 'rrca', 'rla', 'rra');
my @TABLE_ROT8 =('rlc', 'rrc', 'rl', 'rr', 'sla', 'sra', 'sll', 'srl');
my @TABLE_BIT =	(undef, 'bit', 'res', 'set');
my @TABLE_R =	('b', 'c', 'd', 'e',   'h',   'l', undef, 'a');
my @TABLE_RX =	('b', 'c', 'd', 'e', 'ixh', 'ixl', undef, 'a');
my @TABLE_RY =	('b', 'c', 'd', 'e', 'iyh', 'iyl', undef, 'a');
my @TABLE_DD =	('bc', 'de', 'hl', 'sp');
my @TABLE_DDX =	('bc', 'de', 'ix', 'sp');
my @TABLE_DDY =	('bc', 'de', 'iy', 'sp');
my @TABLE_QQ =	('bc', 'de', 'hl', 'af');
my @TABLE_FLAGS=('nz', 'z', 'nc', 'c', 'po', 'pe', 'p', 'm');
my $TABLE = 	{};

#------------------------------------------------------------------------------
# Pseudo-instructions

_add_table('org', 'EXPR', 'END',	sub { 
										my($input, $start, $expr) = @_;
										return (["org", $expr], $input);
									});

_add_table('stop', 'END', 			sub { return (["OPCODE", 0xDD, 0xDD, 0x00], $_[0]) });

_add_table('defb', 					sub { 
										my($input, $start) = @_;
										(my $bytes, $input) = _parse_def($input, 1);
										return (["OPCODE", @$bytes], $input);
									});

_add_table('defw', 					sub { 
										my($input, $start) = @_;
										(my $bytes, $input) = _parse_def($input, 2);
										return (["OPCODE", @$bytes], $input);
									});

_add_table('deft', 					sub { 
										my($input, $start) = @_;
										(my $bytes, $input) = _parse_def($input, 1);
										return (["OPCODE", @$bytes], $input);
									});

_add_table('defm', 					sub { 
										my($input, $start) = @_;
										(my $bytes, $input) = _parse_def($input, 1);
										return (["OPCODE", @$bytes], $input);
									});

_add_table('NAME',					sub {
										my($input, $start) = @_;
										my $token = head($start) or die;	# must be 'NAME'
										my $name = $token->[1];				# label name
										
										# skip optional ':'
										while (($token = head($input)) &&
												$token->[0] eq ':') {
											drop($input);
										}
										
										# if next token is '=', get the expression
										# else label is '$'
										$token = head($input);
										if ($token && $token->[0] eq '=') {
											drop($input);					# skip '='
											(my $expr, $input) = _parse_expr($input);
											$input = _check_end($input);
											return (["LABEL", $name, $expr], $input);
										}
										else {
											return (["LABEL", $name], $input);
										}
									});

										
#------------------------------------------------------------------------------
# 8 bit load group

for my $i (0 .. $#TABLE_R) {
	for my $j (0 .. $#TABLE_R) {

		# ld <b.c.d.e.h.l..a>,<b.c.d.e.h.l..a>			=> 0x40+<1:3>+<2>
		_add_table('ld', $TABLE_R[$i], ',', $TABLE_R[$j], 'END',
									sub { return (["OPCODE", 0x40 + ($i<<3) + $j], $_[0]) });
	
		# ld <b.c.d.e.ixh.ixl..a>,<b.c.d.e.ixh.ixl..a>	=> 0xDD 0x40+<1:3>+<2>
		_add_table('ld', $TABLE_RX[$i], ',', $TABLE_RX[$j], 'END',
									sub { return (["OPCODE", 0xDD, 0x40 + ($i<<3) + $j], $_[0]) });
	
		# ld <b.c.d.e.iyh.iyl..a>,<b.c.d.e.iyh.iyl..a>	=> 0xFD 0x40+<1:3>+<2>
		_add_table('ld', $TABLE_RY[$i], ',', $TABLE_RY[$j], 'END',
									sub { return (["OPCODE", 0xFD, 0x40 + ($i<<3) + $j], $_[0]) });
	
	}

	# ld <b.c.d.e.h.l..a>,N								=> 0x06+<1:3>
	_add_table('ld', $TABLE_R[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x06 + ($i<<3), ["ub", $expr]], $input);
									});
	
	# ld <b.c.d.e.ixh.ixl..a>,N							=> 0xDD 0x06+<1:3>
	_add_table('ld', $TABLE_RX[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x06 + ($i<<3), ["ub", $expr]], $input);
									});
	
	# ld <b.c.d.e.iyh.iyl..a>,N							=> 0xFD 0x06+<1:3>
	_add_table('ld', $TABLE_RY[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x06 + ($i<<3), ["ub", $expr]], $input);
									});
	
	# ld <b.c.d.e.h.l..a>,(hl)							=> 0x46+<1:3>
	_add_table('ld', $TABLE_R[$i], ',', '(', 'hl', ')', 'END',
									sub { return (["OPCODE", 0x46 + ($i<<3)], $_[0]) });

	# ld <b.c.d.e.h.l..a>,(ix+d)						=> 0xDD 0x46+<1:3>
	_add_table('ld', $TABLE_R[$i], ',', '(', 'ix', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x46 + ($i<<3), ["sb", $expr]], $input);
									});

	# ld <b.c.d.e.h.l..a>,(iy+d)						=> 0xFD 0x46+<1:3>
	_add_table('ld', $TABLE_R[$i], ',', '(', 'iy', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x46 + ($i<<3), ["sb", $expr]], $input);
									});

	# ld (hl),<b.c.d.e.h.l..a>							=> 0x70+<2>
	_add_table('ld', '(', 'hl', ')', ',', $TABLE_R[$i], 'END',
									sub { return (["OPCODE", 0x70 + $i], $_[0]) });

	# ld (ix+d),<b.c.d.e.h.l..a>						=> 0xDD 0x70+<2>
	_add_table('ld', '(', 'ix', 'EXPR', ')', ',', $TABLE_R[$i], 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x70 + $i, ["sb", $expr]], $input);
									});

	# ld (iy+d),<b.c.d.e.h.l..a>						=> 0xFD 0x70+<2>
	_add_table('ld', '(', 'iy', 'EXPR', ')', ',', $TABLE_R[$i], 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x70 + $i, ["sb", $expr]], $input);
									});

	# ld (hl),N											=> 0x36
	_add_table('ld', '(', 'hl', ')', ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x36, ["ub", $expr]], $input);
									});

	# ld (ix+d),N										=> 0xDD 0x36
	_add_table('ld', '(', 'ix', 'EXPR', ')', ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr_d, $expr_N) = @_;
										return (["OPCODE", 0xDD, 0x36, 
												 ["sb", $expr_d], ["ub", $expr_N], ], $input);
									});

	# ld (iy+d),N										=> 0xFD 0x36
	_add_table('ld', '(', 'iy', 'EXPR', ')', ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr_d, $expr_N) = @_;
										return (["OPCODE", 0xFD, 0x36, 
												 ["sb", $expr_d], ["ub", $expr_N], ], $input);
									});
}

# ld a,(bc) 										=> 0x0A
_add_table('ld', 'a', ',', '(', 'bc', ')', 'END',
									sub { return (["OPCODE", 0x0A], $_[0]) });

# ld a,(de) 										=> 0x1A								
_add_table('ld', 'a', ',', '(', 'de', ')', 'END', 
									sub { return (["OPCODE", 0x1A], $_[0]) });

# ld a,(NN) 										=> 0x3A
_add_table('ld', 'a', ',', '(', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x3A, ["w", $expr], []], $input);
									});
	
# ld (bc),a											=> 0x02
_add_table('ld', '(', 'bc', ')', ',', 'a', 'END',	
									sub { return (["OPCODE", 0x02], $_[0]) });

# ld (de),a 										=> 0x12
_add_table('ld', '(', 'de', ')', ',', 'a', 'END',
									sub { return (["OPCODE", 0x12], $_[0]) });

# ld (NN),a 										=> 0x32
_add_table('ld', '(', 'EXPR', ')', ',', 'a', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x32, ["w", $expr], []], $input);
									});
	

# ld a,i 											=> 0xED 0x57
_add_table('ld', 'a', ',', 'i', 'END', 
									sub { return (["OPCODE", 0xED, 0x57], $_[0]) });

# ld a,r 											=> 0xED 0x5F
_add_table('ld', 'a', ',', 'r', 'END',
									sub { return (["OPCODE", 0xED, 0x5F], $_[0]) });

# ld i,a 											=> 0xED 0x47
_add_table('ld', 'i', ',', 'a', 'END',
									sub { return (["OPCODE", 0xED, 0x47], $_[0]) });

# ld r,a 											=> 0xED 0x4F
_add_table('ld', 'r', ',', 'a', 'END',
									sub { return (["OPCODE", 0xED, 0x4F], $_[0]) });


#------------------------------------------------------------------------------
# 16 bit load group

# ld ix,NN											=> 0xDD 0x21
_add_table('ld', 'ix', ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x21, ["w", $expr], []], $input);
									});

# ld iy,NN											=> 0xFD 0x21
_add_table('ld', 'iy', ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x21, ["w", $expr], []], $input);
									});
	
# ld hl,(NN)										=> 0x2A
_add_table('ld', 'hl', ',', '(', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x2A, ["w", $expr], []], $input);
									});
	
# ld ix,(NN)										=> 0xDD 0x2A
_add_table('ld', 'ix', ',', '(', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x2A, ["w", $expr], []], $input);
									});
	
# ld iy,(NN)										=> 0xFD 0x2A
_add_table('ld', 'iy', ',', '(', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x2A, ["w", $expr], []], $input);
									});

# ld (NN),hl										=> 0x22
_add_table('ld', '(', 'EXPR', ')', ',', 'hl', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x22, ["w", $expr], []], $input);
									});
	
# ld (NN),ix										=> 0xDD 0x22
_add_table('ld', '(', 'EXPR', ')', ',', 'ix', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x22, ["w", $expr], []], $input);
									});
	
# ld (NN),iy										=> 0xFD 0x22
_add_table('ld', '(', 'EXPR', ')', ',', 'iy', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x22, ["w", $expr], []], $input);
									});

# ld sp,hl											=> 0xF9
_add_table('ld', 'sp', ',', 'hl', 'END',
									sub { return (["OPCODE", 0xF9], $_[0]) });

# ld sp,ix											=> 0xDD 0xF9
_add_table('ld', 'sp', ',', 'ix', 'END',
									sub { return (["OPCODE", 0xDD, 0xF9], $_[0]) });

# ld sp,iy											=> 0xFD 0xF9
_add_table('ld', 'sp', ',', 'iy', 'END',
									sub { return (["OPCODE", 0xFD, 0xF9], $_[0]) });

for my $i (0 .. $#TABLE_DD) {

	# ld <bc.de.hl.sp>,NN							=> 0x01+<1:4>
	_add_table('ld', $TABLE_DD[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0x01 + ($i<<4), ["w", $expr], []], $input);
									});
	
	# ld <bc.de.hl.sp>,(NN)							=> 0xED 0x4B+<1:4>
	_add_table('ld', $TABLE_DD[$i], ',', '(', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xED, 0x4B + ($i<<4), ["w", $expr], []], $input);
									});
	
	# ld (NN),<bc.de.hl.sp>							=> 0xED 0x43+<2:4>
	_add_table('ld', '(', 'EXPR', ')', ',', $TABLE_DD[$i], 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xED, 0x43 + ($i<<4), ["w", $expr], []], $input);
									});
}


# push ix											=> 0xDD 0xE5
_add_table('push', 'ix', 'END',		sub { return (["OPCODE", 0xDD, 0xE5], $_[0]) });
	
# push iy											=> 0xFD 0xE5
_add_table('push', 'iy', 'END',		sub { return (["OPCODE", 0xFD, 0xE5], $_[0]) });
	
# pop ix											=> 0xDD 0xE1
_add_table('pop', 'ix', 'END',		sub { return (["OPCODE", 0xDD, 0xE1], $_[0]) });

# pop iy											=> 0xFD 0xE1
_add_table('pop', 'iy', 'END',		sub { return (["OPCODE", 0xFD, 0xE1], $_[0]) });


for my $i (0 .. $#TABLE_QQ) {

	# push <bc.de.hl.af>							=> 0xC5+<1:4>
	_add_table('push', $TABLE_QQ[$i], 'END',
									sub { return (["OPCODE", 0xC5 + ($i<<4)], $_[0]) });
	
	# pop <bc.de.hl.af>								=> 0xC1+<1:4>
	_add_table('pop', $TABLE_QQ[$i], 'END',
									sub { return (["OPCODE", 0xC1 + ($i<<4)], $_[0]) });
	

}

#------------------------------------------------------------------------------
# Exchange, block transfer, search group

# ex	de,hl											=> 0xEB
_add_table('ex', 'de', ',', 'hl', 'END',
									sub { return (["OPCODE", 0xEB], $_[0]) });

# ex	af,af'											=> 0x08	# '
_add_table('ex', 'af', ',', "af'", 'END',
									sub { return (["OPCODE", 0x08], $_[0]) });

# exx													=> 0xD9
_add_table('exx', 'END',			sub { return (["OPCODE", 0xD9], $_[0]) });

# ex	(sp),hl											=> 0xE3
_add_table('ex', '(', 'sp', ')', ',', 'hl', 'END',
									sub { return (["OPCODE", 0xE3], $_[0]) });

# ex	(sp),ix											=> 0xDD 0xE3
_add_table('ex', '(', 'sp', ')', ',', 'ix', 'END',
									sub { return (["OPCODE", 0xDD, 0xE3], $_[0]) });

# ex	(sp),iy											=> 0xFD 0xE3
_add_table('ex', '(', 'sp', ')', ',', 'iy', 'END',
									sub { return (["OPCODE", 0xFD, 0xE3], $_[0]) });

# ldi													=> 0xED 0xA0
_add_table('ldi', 'END',			sub { return (["OPCODE", 0xED, 0xA0], $_[0]) });

# ldir													=> 0xED 0xB0
_add_table('ldir', 'END',			sub { return (["OPCODE", 0xED, 0xB0], $_[0]) });

# ldd													=> 0xED 0xA8
_add_table('ldd', 'END',			sub { return (["OPCODE", 0xED, 0xA8], $_[0]) });

# lddr													=> 0xED 0xB8
_add_table('lddr', 'END',			sub { return (["OPCODE", 0xED, 0xB8], $_[0]) });

# cpi													=> 0xED 0xA1
_add_table('cpi', 'END',			sub { return (["OPCODE", 0xED, 0xA1], $_[0]) });

# cpir													=> 0xED 0xB1
_add_table('cpir', 'END',			sub { return (["OPCODE", 0xED, 0xB1], $_[0]) });

# cpd													=> 0xED 0xA9
_add_table('cpd', 'END',			sub { return (["OPCODE", 0xED, 0xA9], $_[0]) });

# cpdr													=> 0xED 0xB9
_add_table('cpdr', 'END',			sub { return (["OPCODE", 0xED, 0xB9], $_[0]) });


#------------------------------------------------------------------------------
# 8 bit arithmetic and logical group

for my $i (0 .. $#TABLE_ADD) { 
	for my $j (0 .. $#TABLE_R) { 
		
		# <add.adc..sbc> a,<b.c.d.e.h.l..a>				=> 0x80+<0:3>+<2>
		_add_table($TABLE_ADD[$i], 'a', ',', $TABLE_R[$j], 'END',
									sub { return (["OPCODE", 0x80 + ($i<<3) + $j], $_[0]) });
	
		# <add.adc..sbc> a,<b.c.d.e.ixh.ixl..a>			=> 0xDD 0x80+<0:3>+<2>
		_add_table($TABLE_ADD[$i], 'a', ',', $TABLE_RX[$j], 'END',
									sub { return (["OPCODE", 0xDD, 0x80 + ($i<<3) + $j], $_[0]) });
	
		# <add.adc..sbc> a,<b.c.d.e.iyh.iyl..a>			=> 0xFD 0x80+<0:3>+<2>
		_add_table($TABLE_ADD[$i], 'a', ',', $TABLE_RY[$j], 'END',
									sub { return (["OPCODE", 0xFD, 0x80 + ($i<<3) + $j], $_[0]) });

	}
	
	# <add.adc..sbc> a,N								=> 0xC6+<0:3>
	_add_table($TABLE_ADD[$i], 'a', ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xC6 + ($i<<3), ["ub", $expr]], $input);
									});
	# <add.adc..sbc> a,(hl)								=> 0x86+<0:3>
	_add_table($TABLE_ADD[$i], 'a', ',', '(', 'hl', ')', 'END',
									sub { return (["OPCODE", 0x86 + ($i<<3)], $_[0]) });

	# <add.adc..sbc> a,(ix+d)							=> 0xDD 0x86+<0:3>
	_add_table($TABLE_ADD[$i], 'a', ',', '(', 'ix', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x86 + ($i<<3), ["sb", $expr]], $input);
									});

	# <add.adc..sbc> a,(iy+d)							=> 0xFD 0x86+<0:3>
	_add_table($TABLE_ADD[$i], 'a', ',', '(', 'iy', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x86 + ($i<<3), ["sb", $expr]], $input);
									});

}

for my $i (0 .. $#TABLE_SUB) { 
	for my $j (0 .. $#TABLE_R) { 

		# <..sub..and.xor.or.cp> <b.c.d.e.h.l..a>		=> 0x80+<0:3>+<1>
		_add_table($TABLE_SUB[$i], $TABLE_R[$j], 'END',
									sub { return (["OPCODE", 0x80 + ($i<<3) + $j], $_[0]) });
	
		# <..sub..and.xor.or.cp> <b.c.d.e.ixh.ixl..a>	=> 0xDD 0x80+<0:3>+<1>
		_add_table($TABLE_SUB[$i], $TABLE_RX[$j], 'END',
									sub { return (["OPCODE", 0xDD, 0x80 + ($i<<3) + $j], $_[0]) });
	
		# <..sub..and.xor.or.cp> <b.c.d.e.iyh.iyl..a>	=> 0xFD 0x80+<0:3>+<1>
		_add_table($TABLE_SUB[$i], $TABLE_RY[$j], 'END',
									sub { return (["OPCODE", 0xFD, 0x80 + ($i<<3) + $j], $_[0]) });
	}
	
	# <..sub..and.xor.or.cp> N							=> 0xC6+<0:3>
	_add_table($TABLE_SUB[$i], 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xC6 + ($i<<3), ["ub", $expr]], $input);
									});
									
	# <..sub..and.xor.or.cp> (hl)						=> 0x86+<0:3>
	_add_table($TABLE_SUB[$i], '(', 'hl', ')', 'END',
									sub { return (["OPCODE", 0x86 + ($i<<3)], $_[0]) });

	# <..sub..and.xor.or.cp> (ix+d)						=> 0xDD 0x86+<0:3>
	_add_table($TABLE_SUB[$i], '(', 'ix', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x86 + ($i<<3), ["sb", $expr]], $input);
									});

	# <..sub..and.xor.or.cp> (iy+d)						=> 0xFD 0x86+<0:3>
	_add_table($TABLE_SUB[$i], '(', 'iy', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x86 + ($i<<3), ["sb", $expr]], $input);
									});
}

for my $i (0 .. $#TABLE_INC) { 
	for my $j (0 .. $#TABLE_R) { 
		
		# <....inc.dec> <b.c.d.e.h.l..a>				=> 0x00+<0>+<1:3>
		_add_table($TABLE_INC[$i], $TABLE_R[$j], 'END',
									sub { return (["OPCODE", 0x00 + $i + ($j<<3)], $_[0]) });
	
		# <....inc.dec> <b.c.d.e.ixh.ixl..a>			=> 0xDD 0x00+<0>+<1:3>
		_add_table($TABLE_INC[$i], $TABLE_RX[$j], 'END',
									sub { return (["OPCODE", 0xDD, 0x00 + $i + ($j<<3)], $_[0]) });
	
		# <....inc.dec> <b.c.d.e.iyh.iyl..a>			=> 0xFD 0x00+<0>+<1:3>
		_add_table($TABLE_INC[$i], $TABLE_RY[$j], 'END',
									sub { return (["OPCODE", 0xFD, 0x00 + $i + ($j<<3)], $_[0]) });
	
	}

	# <....inc.dec> (hl)								=> 0x30+<0>
	_add_table($TABLE_INC[$i], '(', 'hl', ')', 'END',
									sub { return (["OPCODE", 0x30 + $i], $_[0]) });

	# <....inc.dec> (ix+d)								=> 0xDD 0x30+<0>
	_add_table($TABLE_INC[$i], '(', 'ix', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0x30 + $i, ["sb", $expr]], $input);
									});

	# <....inc.dec> (iy+d)								=> 0xFD 0x30+<0>
	_add_table($TABLE_INC[$i], '(', 'iy', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0x30 + $i, ["sb", $expr]], $input);
									});


}

#------------------------------------------------------------------------------
# General purpose arithmetic and CPU control group

# daa 													=> 0x27
_add_table('daa', 'END',			sub { return (["OPCODE", 0x27], $_[0]) });

# cpl 													=> 0x2F
_add_table('cpl', 'END',			sub { return (["OPCODE", 0x2F], $_[0]) });

# neg 													=> 0xED 0x44
_add_table('neg', 'END',			sub { return (["OPCODE", 0xED, 0x44], $_[0]) });

# ccf 													=> 0x3F
_add_table('ccf', 'END',			sub { return (["OPCODE", 0x3F], $_[0]) });

# scf 													=> 0x37
_add_table('scf', 'END',			sub { return (["OPCODE", 0x37], $_[0]) });

# nop 													=> 0x00
_add_table('nop', 'END',			sub { return (["OPCODE", 0x00], $_[0]) });

# halt													=> 0x76
_add_table('halt', 'END',			sub { return (["OPCODE", 0x76], $_[0]) });

# di 													=> 0xF3
_add_table('di', 'END',				sub { return (["OPCODE", 0xF3], $_[0]) });

# ei	 												=> 0xFB
_add_table('ei', 'END',				sub { return (["OPCODE", 0xFB], $_[0]) });

# im 0 / 1 / 2											=> 0xED 0x46 / 0x56 / 0x5E
_add_table('im', 'CEXPR', 'END',	sub { 
										my($input, $start, $cexpr) = @_;
										die "Invalid mode $cexpr\n" if ($cexpr < 0 || $cexpr > 2);
										return (["OPCODE", 0xED, 
												 (0x46, 0x56, 0x5E)[$cexpr]], $input);
									});

#------------------------------------------------------------------------------
# 16 bit arithmetic and logical group

for my $i (0 .. $#TABLE_DD) {

	# add hl,<bc.de.hl.sp>								=> 0x09+<2:4>
	_add_table('add', 'hl', ',', $TABLE_DD[$i], 'END',
									sub { return (["OPCODE", 0x09 + ($i<<4)], $_[0]) });
	
	# add ix,<bc.de.ix.sp>								=> 0xDD 0x09+<2:4>
	_add_table('add', 'ix', ',', $TABLE_DDX[$i], 'END',
									sub { return (["OPCODE", 0xDD, 0x09 + ($i<<4)], $_[0]) });
	
	# add iy,<bc.de.iy.sp>								=> 0xFD 0x09+<2:4>
	_add_table('add', 'iy', ',', $TABLE_DDY[$i], 'END',
									sub { return (["OPCODE", 0xFD, 0x09 + ($i<<4)], $_[0]) });
	
	for my $j (0..1) {

		# <sbc.adc> hl,<bc.de.hl.sp>					=> 0xED 0x42+<0:3>+<2:4>
		_add_table(('sbc', 'adc')[$j], 'hl', ',', $TABLE_DD[$i], 'END',
									sub { return (["OPCODE", 0xED, 0x42 + ($j<<3) + ($i<<4)], $_[0]) });
	
		# <inc.dec> <bc.de.hl.sp>						=> 0x03+<0:3>+<1:4>
		_add_table(('inc', 'dec')[$j], $TABLE_DD[$i], 'END',
									sub { return (["OPCODE", 0x03 + ($j<<3) + ($i<<4)], $_[0]) });
	
		# <inc.dec> <bc.de.ix.sp>						=> 0xDD 0x03+<0:3>+<1:4>
		_add_table(('inc', 'dec')[$j], $TABLE_DDX[$i], 'END',
									sub { return (["OPCODE", 0xDD, 0x03 + ($j<<3) + ($i<<4)], $_[0]) });
	
		# <inc.dec> <bc.de.iy.sp>						=> 0xFD 0x03+<0:3>+<1:4>
		_add_table(('inc', 'dec')[$j], $TABLE_DDY[$i], 'END',
									sub { return (["OPCODE", 0xFD, 0x03 + ($j<<3) + ($i<<4)], $_[0]) });
	}
}


#------------------------------------------------------------------------------
# rotate and shift group

for my $i (0 .. $#TABLE_ROT4) {
	
	# <rlca.rrca.rla.rra>								=> 0x07+<0:3>
	_add_table($TABLE_ROT4[$i], 'END',
									sub { return (["OPCODE", 0x07 + ($i<<3)], $_[0]) });
}

for my $i (0 .. $#TABLE_ROT8) {
	for my $j (0 .. $#TABLE_R) {
		
		# <rlc.rrc.rl.rr.sla.sra.sll.srl> <b.c.d.e.h.l..a>	=> 0xCB 0x00+<0:3>+<1>
		_add_table($TABLE_ROT8[$i], $TABLE_R[$j], 'END',
									sub { return (["OPCODE", 0xCB, 0x00 + ($i<<3) + $j], $_[0]) });

		# <rlc.rrc.rl.rr.sla.sra.sll.srl> (ix+d),<b.c.d.e.h.l..a>	=> 0xDD 0xCB 0x00+<0:3>+<2>
		_add_table($TABLE_ROT8[$i], '(', 'ix', 'EXPR', ')', ',', $TABLE_R[$j], 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0xCB, ["sb", $expr], 0x00 + ($i<<3) + $j], $input);
									});

		# <rlc.rrc.rl.rr.sla.sra.sll.srl> (iy+d),<b.c.d.e.h.l..a>	=> 0xFD 0xCB 0x00+<0:3>+<2>
		_add_table($TABLE_ROT8[$i], '(', 'iy', 'EXPR', ')', ',', $TABLE_R[$j], 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0xCB, ["sb", $expr], 0x00 + ($i<<3) + $j], $input);
									});

	}

	# <rlc.rrc.rl.rr.sla.sra.sll.srl> (hl)					=> 0xCB 0x06+<0:3>
	_add_table($TABLE_ROT8[$i], '(', 'hl', ')', 'END',
									sub { return (["OPCODE", 0xCB, 0x06 + ($i<<3)], $_[0]) });

	# <rlc.rrc.rl.rr.sla.sra.sll.srl> (ix+d)				=> 0xDD 0xCB 0x06+<0:3>
	_add_table($TABLE_ROT8[$i], '(', 'ix', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDD, 0xCB, ["sb", $expr], 0x06 + ($i<<3)], $input);
									});

	# <rlc.rrc.rl.rr.sla.sra.sll.srl> (iy+d)				=> 0xFD 0xCB 0x06+<0:3>
	_add_table($TABLE_ROT8[$i], '(', 'iy', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xFD, 0xCB, ["sb", $expr], 0x06 + ($i<<3)], $input);
									});

}

# rld														=> 0xED 0x6F
_add_table('rld', 'END',			sub { return (["OPCODE", 0xED, 0x6F], $_[0]) });

# rrd														=> 0xED 0x67
_add_table('rrd', 'END',			sub { return (["OPCODE", 0xED, 0x67], $_[0]) });

#------------------------------------------------------------------------------
# Bit Set, Reset and Test Group

for my $i (0 .. $#TABLE_BIT) {
	for my $j (0 .. $#TABLE_R) {
		
		#<.bit.res.set> <0.1.2.3.4.5.6.7>,<b.c.d.e.h.l..a>	=> 0xCB <0:6>+<1:3>+<2>
		_add_table($TABLE_BIT[$i], 'CEXPR', ',', $TABLE_R[$j], 'END',
									sub { 
										my($input, $start, $cexpr) = @_;
										return (["OPCODE", 0xCB, ($i<<6) + ($cexpr<<3) + $j], $input);
									});

		# <.bit.res.set> <0.1.2.3.4.5.6.7>,(ix+d),<b.c.d.e.h.l..a>	=> 0xDD 0xCB <0:6>+<1:3>+<3>
		_add_table($TABLE_BIT[$i], 'CEXPR', ',', '(', 'ix', 'EXPR', ')', ',', $TABLE_R[$j], 'END',
									sub { 
										my($input, $start, $cexpr, $expr) = @_;
										return (["OPCODE", 0xDD, 0xCB, ["sb", $expr],
												 ($i<<6) + ($cexpr<<3) + $j], $input);
									});

		# <.bit.res.set> <0.1.2.3.4.5.6.7>,(iy+d),<b.c.d.e.h.l..a>	=> 0xFD 0xCB <0:6>+<1:3>+<3>
		_add_table($TABLE_BIT[$i], 'CEXPR', ',', '(', 'iy', 'EXPR', ')', ',', $TABLE_R[$j], 'END',
									sub { 
										my($input, $start, $cexpr, $expr) = @_;
										return (["OPCODE", 0xFD, 0xCB, ["sb", $expr],
												 ($i<<6) + ($cexpr<<3) + $j], $input);
									});


	}

	# <.bit.res.set> <0.1.2.3.4.5.6.7>,(hl)					=> 0xCB <0:6>+<1:3>+6
	_add_table($TABLE_BIT[$i], 'CEXPR', ',', '(', 'hl', ')', 'END',
									sub { 
										my($input, $start, $cexpr) = @_;
										return (["OPCODE", 0xCB, ($i<<6) + ($cexpr<<3) + 6], $input);
									});

	# <.bit.res.set> <0.1.2.3.4.5.6.7>,(ix+d)				=> 0xDD 0xCB <0:6>+<1:3>+6
	_add_table($TABLE_BIT[$i], 'CEXPR', ',', '(', 'ix', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $cexpr, $expr) = @_;
										return (["OPCODE", 0xDD, 0xCB, ["sb", $expr], ($i<<6) + ($cexpr<<3) + 6], $input);
									});

	# <.bit.res.set> <0.1.2.3.4.5.6.7>,(iy+d)				=> 0xFD 0xCB <0:6>+<1:3>+6
	_add_table($TABLE_BIT[$i], 'CEXPR', ',', '(', 'iy', 'EXPR', ')', 'END',
									sub { 
										my($input, $start, $cexpr, $expr) = @_;
										return (["OPCODE", 0xFD, 0xCB, ["sb", $expr], ($i<<6) + ($cexpr<<3) + 6], $input);
									});

}


#------------------------------------------------------------------------------
# Jump Group
# Call and Return Group

sub _relative_jump {
	my($expr) = @_;

	# compute "(expr) - $ - 2"
	my $jump = append(
					list_to_stream(['(', '(']),
					$expr, 
					list_to_stream([')', ')'], ['-', '-'], ['NAME', '$'], ['-', '-'], ['NUMBER', 2]));
	return $jump;
}
	

# jp NN														=> 0xC3
_add_table('jp', 'EXPR', 'END',		sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xC3, ["w", $expr], []], $input);
									});

# jp (hl)													=> 0xE9
_add_table('jp', '(', 'hl', ')', 'END',
									sub { return (["OPCODE", 0xE9], $_[0]) });

# jp (ix)													=> 0xDD	0xE9
_add_table('jp', '(', 'ix', ')', 'END',
									sub { return (["OPCODE", 0xDD, 0xE9], $_[0]) });

# jp (iy)													=> 0xFD	0xE9
_add_table('jp', '(', 'iy', ')', 'END',
									sub { return (["OPCODE", 0xFD, 0xE9], $_[0]) });

# jr NN														=> 0x18
_add_table('jr', 'EXPR', 'END',		sub { 
										my($input, $start, $expr) = @_;
										my $jump = _relative_jump($expr);
										return (["OPCODE", 0x18, ["sb", $jump]], $input);
									});

# djnz NN													=> 0x10
_add_table('djnz', 'EXPR', 'END',	sub { 
										my($input, $start, $expr) = @_;
										my $jump = _relative_jump($expr);
										return (["OPCODE", 0x10, ["sb", $jump]], $input);
									});


# call NN													=> 0xCD
_add_table('call', 'EXPR', 'END',	sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xCD, ["w", $expr], []], $input);
									});

# ret														=> 0xC9
_add_table('ret', 'END',			sub { return (["OPCODE", 0xC9], $_[0]) });

# reti														=> 0xED 0x4D
_add_table('reti', 'END',			sub { return (["OPCODE", 0xED, 0x4D], $_[0]) });

# retn														=> 0xED 0x45
_add_table('retn', 'END',			sub { return (["OPCODE", 0xED, 0x45], $_[0]) });


for my $i (0 .. $#TABLE_FLAGS) {
	
	# jp <nz.z.nc.c.po.pe.p.m>,NN							=> 0xC2+<1:3>
	_add_table('jp', $TABLE_FLAGS[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xC2 + ($i<<3), ["w", $expr], []], $input);
									});

	# jr <nz.z.nc.c>,NN										=> 0x20+<1:3>
	if ($i < 4) {
		_add_table('jr', $TABLE_FLAGS[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										my $jump = _relative_jump($expr);
										return (["OPCODE", 0x20 + ($i<<3), ["sb", $jump]], $input);
									});
	}
									
	# call <nz.z.nc.c.po.pe.p.m>,NN							=> 0xC4+<1:3>
	_add_table('call', $TABLE_FLAGS[$i], ',', 'EXPR', 'END',
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xC4 + ($i<<3), ["w", $expr], []], $input);
									});

	# ret <nz.z.nc.c.po.pe.p.m>								=> 0xC0+<1:3>
	_add_table('ret', $TABLE_FLAGS[$i], 'END',
									sub { return (["OPCODE", 0xC0 + ($i<<3)], $_[0]) });
									
}

# rst <0.8.16.24.32.40.48.56>								=> 0xC7+(<1>&0b00111000)
_add_table('rst', 'CEXPR', 'END',	sub { 
										my($input, $start, $cexpr) = @_;
										$cexpr <<= 3 if $cexpr < 8;		# 0,1,2,.. -> 0,8,16,..
										return (["OPCODE", 0xC7 + ($cexpr & 0b00111000)], $input);
									});


#------------------------------------------------------------------------------
# Input and Output Group

# in a,(N)													=> 0xDB
_add_table('in', 'a', ',', '(', 'EXPR', ')', 'END',	
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xDB, ["ub", $expr]], $input);
									});

# out (N),a													=> 0xD3
_add_table('out', '(', 'EXPR', ')', ',', 'a', 'END',	
									sub { 
										my($input, $start, $expr) = @_;
										return (["OPCODE", 0xD3, ["ub", $expr]], $input);
									});


for my $i (0 .. $#TABLE_R) {

	# in <b.c.d.e.h.l..a>,(c)								=> 0xED 0x40+<1:3>
	_add_table('in', $TABLE_R[$i], ',', '(', 'c', ')', 'END',	
									sub { return (["OPCODE", 0xED, 0x40 + ($i<<3)], $_[0]) });

	# out (c),<b.c.d.e.h.l..a>								=> 0xED 0x41+<2:3>
	_add_table('out', '(', 'c', ')', ',', $TABLE_R[$i], 'END',	
									sub { return (["OPCODE", 0xED, 0x41 + ($i<<3)], $_[0]) });

}

# in f,(c)													=> 0xED 0x70
_add_table('in', 'f', ',', '(', 'c', ')', 'END',	
									sub { return (["OPCODE", 0xED, 0x70], $_[0]) });

# out (c),0													=> 0xED 0x71
_add_table('out', '(', 'c', ')', ',', 'CEXPR', 'END',	
									sub { 
										my($input, $start, $cexpr) = @_;
										$cexpr == 0 or die "Only 0 value is allowed\n";
										return (["OPCODE", 0xED, 0x71], $input);
									});

# ini														=> 0xED 0xA2
_add_table('ini', 'END',			sub { return (["OPCODE", 0xED, 0xA2], $_[0]) });

# inir														=> 0xED 0xB2
_add_table('inir', 'END',			sub { return (["OPCODE", 0xED, 0xB2], $_[0]) });

# ind														=> 0xED 0xAA
_add_table('ind', 'END',			sub { return (["OPCODE", 0xED, 0xAA], $_[0]) });

# indr														=> 0xED 0xBA
_add_table('indr', 'END',			sub { return (["OPCODE", 0xED, 0xBA], $_[0]) });

# outi														=> 0xED 0xA3
_add_table('outi', 'END',			sub { return (["OPCODE", 0xED, 0xA3], $_[0]) });

# otir														=> 0xED 0xB3
_add_table('otir', 'END',			sub { return (["OPCODE", 0xED, 0xB3], $_[0]) });

# outd														=> 0xED 0xAB
_add_table('outd', 'END',			sub { return (["OPCODE", 0xED, 0xAB], $_[0]) });

# otdr														=> 0xED 0xBB
_add_table('otdr', 'END',			sub { return (["OPCODE", 0xED, 0xBB], $_[0]) });


#dump($TABLE);

#------------------------------------------------------------------------------
# _add_table(@tokens, sub{})
#	Creates a new table entry, only if not yet defined
sub _add_table {
	my(@tokens) = @_;
	my $sub = pop(@tokens);
	return if grep {!defined($_)} @tokens;
	my $code = '$TABLE->'.join('', map {'{'.dump($_).'}'} @tokens, "").' ||= $sub';
	eval $code; $@ and die "$code: $@";
}

#------------------------------------------------------------------------------
# ($parsed, $input) = _lookup_table($input)
# 	Lookup current token from $TABLE
# 	If found, call sub to convert args to token, return token and new stream pointer
# 	If not found, or error parsing an expression, die
sub _lookup_table {
	my($input) = @_;

	my $start = $input;
	my @expr;
	my $table = $TABLE;
	for(;;) {										# each token
		if (exists $table->{""}) {					# end of entry
			return $table->{""}->($input, $start, @expr);
		}
		else {
			my $token = head($input);
			if ($token) {
				my($label, $value) = @$token;
				if (exists $table->{$label}) {
					$table = $table->{$label};				# advance table
					drop($input);							# advance stream
				}
				elsif (exists $table->{"EXPR"}) {			# parse expression
					$table = $table->{"EXPR"};				# advance table
					(my $expr, $input) = _parse_expr($input);
					push(@expr, $expr);
				}
				elsif (exists $table->{"CEXPR"}) {			# constant expression
					$table = $table->{"CEXPR"};				# advance table
					(my $expr, $input) = _parse_expr($input);
					my $value = eval_expr($expr, 0, {});
					push(@expr, $value);
				}
				elsif (exists $table->{"END"}) {			# check end of statement
					$table = $table->{"END"};				# advance table
					$input = _check_end($input);
				}
				else {
					die "Cannot parse at $label\n";
				}
			}
			else {											# at end of file
				if (exists $table->{"END"}) {				# check end of statement
					$table = $table->{"END"};				# advance table
				}
				else {
					die "Unexpected end of file\n";
				}
			}
		}
	}
}

#------------------------------------------------------------------------------
# ($expr, $input) = _parse_expr($input)
#	Parse an expression from $input, advance $input to first token after 
#	expression. Returns stream with a copy of the tokens composing the expression.
# 	Dies if the expression cannot be parsed.
sub _parse_expr {
	my($input) = @_;
	my @tokens;
	
	my $parens = 0;
	while (my $token = head($input)) {
		my $label = $token->[0];
		if (exists($STMT_END{$label}) || 
		    ($label eq "," && $parens == 0)) {
			last;
		}
		elsif ($label eq '(') {
			$parens++;
		}
		elsif ($label eq ')') {
			last if $parens < 1;
			$parens--;
		}
		push(@tokens, $token);
		drop($input);
	}
	die "Unbalanced parentheses\n" if $parens > 0;
	die "Expression not found\n" unless @tokens;
	
	# advance input, return expression
	my $expr = list_to_stream(@tokens);
	return ($expr, $input);
}

#------------------------------------------------------------------------------
# ([@bytes], $input) = _parse_def($input, $size)
#	Parse a DEFB, DEFW or DEFT instruction, $size is 1 for DEFB, DEFT and 2 for DEFW
#	Return @bytes to be used directly in the OPCODE token, i.e. one element per byte,
#	[] for an empty placeholder, [type, expr] for an expression
sub _parse_def {
	my($input, $size) = @_;
	
	my @bytes;
	my $expr;
	my $token;
	for(;;) {
		# get expression
		eval { ($expr, $input) = _parse_expr($input) };
		die $@ if $@;								# expression not found
	
		$token = head($expr) or die;				# token must exist
		if ($size == 1 && $token->[0] eq 'STRING' && ! tail($expr)) {
													# expression is a single string -> decode bytes
			my $text = substr($token->[1], 1, length($token->[1]) - 2);
													# remove quotes
			my @text = map {ord($_)} split(//, $text);
			push(@bytes, @text);
		}
		elsif ($size == 1) {
			push(@bytes, ["ub", $expr]);
		}
		elsif ($size == 2) {
			push(@bytes, ["w", $expr], []);
		}
		else {
			die;									# not reached
		}
		
		# if ",", get next expression; if END, finish; else error
		$token = head($input) or last;				# end of list
		if (exists($STMT_END{$token->[0]})) {
			drop($input);
			last;									
		}
		elsif ($token->[0] eq ',') {				# list continues
			drop($input);
		}
		else {
			die "Unexpected ",$token->[0]," in list\n";
		}
	}
	return (\@bytes, $input);
}

#------------------------------------------------------------------------------
# $value = eval_expr($expr, $address, $symbol_table)
#	Evaluate an expression as returned by _parse_expr(), given the current
#	address ($) and the hashref labels => values.
# 	Dies if the expression cannot be evaluated, or label undefined.
sub eval_expr {
	my($expr, $address, $symbol_table, $seen) = @_;
	
	$seen ||= {};								# to detect circular references
	$symbol_table->{'$'} = $address;			# update '$' value
	my @code;
	while (my $token = drop($expr)) {
		my($label, $value) = @$token;
		if ($label eq "NUMBER") {
			push(@code, $value);
		}
		elsif ($label eq "NAME") {
			my $expr = $symbol_table->{$value};
			my $expr_value;
			
			die "Symbol $value not defined" unless defined($expr);
			if (ref($expr)) {					# compute expression first
				die "Circular reference computing expression\n" if $seen->{$value}++;
				$expr_value = eval_expr($expr, $address, $symbol_table, $seen);
			}
			else {
				$expr_value = $expr;
			}				
			push(@code, $expr_value);
		}
		elsif ($label eq "STRING") {
			$value = substr($value, 1, length($value)-2) . "\0\0";
			my @bytes = map {ord($_)} split(//, $value);	
			my $value = $bytes[0] + ($bytes[1] << 8);
			push(@code, $value);
		}
		else {
			die "Expression '$label' cannot be evaluated\n" if $label =~ /^[a-z_]\w*/;	
			push(@code, $label);
		}
	}
	my $code = "0 + ( ".join(" ", @code)." )";
	my $value = eval $code;
	if ($@) {
		chomp($@);
		die "Expression '$code' cannot be evaluated: $@\n";
	}
	return $value;
}

#------------------------------------------------------------------------------
# $input = _check_end($input)
# asserts that the current token is the end of statement,
# dies if not; advances input pointer
sub _check_end {
	my($input) = @_;
	
	my $token = head($input);
	if (!defined($token) || exists($STMT_END{$token->[0]})) {
		drop($input);
	}
	else {
		die "End of statement expected\n";
	}
	return $input;
}
			
#------------------------------------------------------------------------------
# z80parser(INPUT)
# 	INPUT is a stream of tokens, as returned by z80lexer()
#	The result stream contains the LINE tokens returned by _line_stream() 
#   followed by all the assembled instructions in the given line
# 	An instruction is defined as:
#	[ "OPCODE", byte, byte ]	--  for a 2 byte instruction without 
#										 	expressions
#   [ "OPCODE", byte, [type, expr] ]
#										-- 	for a 2/3 byte instruction
#											type = "sb" for signed byte, 
#											"ub" for unsigned byte, "w" for word
#	Other tokens returned:
#	["LINE", "The complete line to be parsed\n", 1, "file.asm"]
#	["org", address]
#	["LABEL", name]						-- define label at current location
#	["LABEL", name, expr]				-- define label as expression
sub z80parser {
	my($input) = @_;
	my $line;									# last LINE token
	
	return iterator_to_stream sub {
		for(;;) {
			my $token = head($input);
			defined($token) or return undef;	# end of file
			if (exists $STMT_END{$token->[0]}) {
				drop($input);
				if ($token->[0] eq "LINE") {
					$line = $token;
					return $line;
				}
			}
			else {
				($token, $input) = eval { _lookup_table($input) };
				if ($@ || !$token) {
					chomp($@);
					die("\n",
						(defined($line) ? 
							"\t".$line->[1]."\n".
							($line->[3] ? $line->[3] : "IN").
							"(".$line->[2].") : " : ""),
						"Error: ",
						($@ ? $@ : "cannot parse"),
						"\n");
				}
				elsif (@$token) {					# not []
					return $token;
				}
			}
		}
	};
}

1;

__END__


=head1 NAME

CPU::Z80::Assembler::Parser - Scanner for the Z80 assembler

=head1 SYNOPSIS

    use CPU::Z80::Assembler::Parser;
    use HOP::Stream 'drop';

    my $stream = z80parser($z80lexer);
    my $value = eval_expr($expr, $address, \%symbol_table)

=head1 DESCRIPTION

This module transforms the sequence of tokens retrieved from CPU::Z80::Assembler::Lexer
into a sequence of decoded assembly instructions.

=head1 EXPORTS

By default the 'z80parser' and 'eval_expr' subroutines are exported.
To disable that, do:

    use CPU::Z80::Assembler::Parser ();

=head1 FUNCTIONS

=head2 z80parser

This takes as parameter a stream as returned by z80lexer, and returns a HOP::Stream
stream with the tokes described below.

=head2 eval_expr

This takes as parameter an expression as a stream of tokens, the current address
of the expression (to evaluate the '$' expression) and a reference to a hash with 
all defined symbols. Each symbol may be either a scalar value, or an expression.
The eval_expr function evaluates recursively all the sub-expressions and returns 
the value. It dies if any used label is not defined, or if there is a circular
reference.

=head1 TOKENS

The following tokens are returned by the stream:

    ["LINE", $line_text, $line_nr, $file]

Indicates that the next tokens belong to the given file, and line number, and contains
the whole line text. This token is usefull to remember the current location in the
source file, to show in listings or error messages.

    ["org", address]

Translation of an ORG instruction with the address argument.

    ["LABEL", name]

Defines the label with the given name at the current location.

    ["LABEL", name, expr]

Defines the label with the given name as the result of evaluating the given
expression. The expression is only evaluated on pass 2, after all labels are
defined.
An expression is a HOP::Stream containing all the tokens of the expression.

    ["OPCODE", byte, [type, expr] ]

Defines an assembled opcode with the list of bytes to load to the object code.
The bytes that need to be computed as the result of an expression evaluation
are returned as a pair [type, expression], where type is "sb" for signed byte,
"ub" for unsigned byte or "w" for word. When a "w" expression is used, the 
"OPCODE" token includes an empty array ref, so that the size of the instruction 
matches the size of the token array minus 1.
An expression is a HOP::Stream containing all the tokens of the expression.

=head1 BUGS and FEEDBACK

I welcome feedback about my code, including constructive criticism.
Bug reports should be made using L<http://rt.cpan.org/>.

=head1 SEE ALSO

L<HOP::Stream>
L<CPU::Z80::Assembler>

=head1 AUTHOR, COPYRIGHT and LICENCE

Copyright 2008 David Cantrell, Paulo Custodio

This software is free-as-in-speech software, and may be used,
distributed, and modified under the terms of either the GNU
General Public Licence version 2 or the Artistic Licence.  It's
up to you which one you use.  The full text of the licences can
be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=head1 CONSPIRACY

This software is also free-as-in-mason.

=cut
