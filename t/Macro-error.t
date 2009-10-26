#!perl

# $Id$

use warnings;
use strict;
use CPU::Z80::Assembler;
$CPU::Z80::Assembler::verbose = 1 if $ENV{DEBUG};

use Test::More tests => 13;

eval {z80asm('
MACRO mymacro hl,de
  NOP
ENDM
')};
is $@, "\tMACRO mymacro hl,de\ninput(2) : error: expected one of (\":\" \"\\n\" \"{\") at hl\n", 
		"cannot use reserved word as macro parameter";

eval {z80asm('
MACRO mymacro r1 r2
  NOP
ENDM
')};
is $@, "\tMACRO mymacro r1 r2\ninput(2) : error: expected one of (\":\" \"\\n\" \"{\") at NAME\n", 
		"need commas between parameters";


eval {z80asm('
MACRO mymacro xx
  NOP
')};
is $@, "error: macro body not finished at EOF\n", 
		"macro not terminated";

		
eval {z80asm('
MACRO mymacro xx +
  NOP
ENDM
')};
is $@, "\tMACRO mymacro xx +\ninput(2) : error: expected one of (\":\" \"\\n\" \"{\") at \"+\"\n", 
		"unexpected token";

		
eval {z80asm('
MACRO mymacro xx {
  NOP
ENDM
')};
is $@, "\tENDM\ninput(4) : error: expected \"}\" at endm\n", 
		"unmatched brace";

		
eval { z80asm('
MACRO HLAGH r1 {
  LD r1
}
HLAGH { A, C 
') };
is $@, "error: unmatched braces at EOF\n", 
		"Unclosed braces";


eval { z80asm('
MACRO HLAGH {
  NOP
}
HLAGH A
') };
is $@, "\tHLAGH A\ninput(5) : error: too many macro arguments at a\n", 
		"Too many arguments";


eval { z80asm('
MACRO HLAGH r1 {
  ADD a, r1
}
HLAGH B, C
') };
is $@, "\tHLAGH B, C\ninput(5) : error: too many macro arguments at \",\"\n", 
		"Too many arguments";


eval { z80asm('
MACRO HLAGH r1, r2 {
  ADD r1, r2
}
HLAGH B, C, D
') };
is $@, "\tHLAGH B, C, D\ninput(5) : error: too many macro arguments at \",\"\n", 
		"Too many arguments";


eval { z80asm('
MACRO HLAGH r1 {
  ADD a, r1
}
HLAGH
') };
is $@, "\tHLAGH\ninput(5) : error: expected value for macro parameter r1 at \"\\n\"\n", 
		"Too few arguments";


eval { z80asm('
MACRO HLAGH r1, r2 {
  ADD r1, r2
}
HLAGH A
') };
is $@, "\tHLAGH A\ninput(5) : error: expected \",\" after macro parameter r1 at \"\\n\"\n", 
		"Too few arguments";


eval { z80asm('
MACRO HLAGH r1, r2 {
  ADD r1, r2
}
HLAGH A,
') };
is $@, "\tHLAGH A,\ninput(5) : error: expected value for macro parameter r2 at \"\\n\"\n", 
		"Too few arguments";


eval { z80asm('
MACRO HLAGH { NOP }
MACRO HLAGH { NOP }
') };
is $@, "\tMACRO HLAGH { NOP }\ninput(3) : error: macro HLAGH redefined at NAME\n", 
		"Macro redefined";


