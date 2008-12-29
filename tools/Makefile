# $Id$

CALL = $(MAKE) -nologo -$(MAKEFLAGS)

all : 	..\t\test_z80.asm \
	..\t\test_z80.obj \
	bmk_z80.dif \
	..\lib\CPU\Z80\Assembler\ParserTable.pm \
	benchmark.txt

RUN_TOOL :
	perl $(TOOL) > $(OUT)~
	perl -MExtUtils::Command -e mv $(OUT)~ $(OUT)

AsmTable.pm : build_AsmTable.pl 
	$(CALL) RUN_TOOL TOOL="build_AsmTable.pl" OUT="AsmTable.pm"

test_z80.asm : build_test_z80.pl AsmTable.pm 
	$(CALL) RUN_TOOL TOOL="build_test_z80.pl" OUT="test_z80.asm"

test_z80.lst test_z80.obj : test_z80.asm assemble.pl
	perl assemble.pl test_z80.asm

..\t\test_z80.asm : test_z80.asm
	perl -MExtUtils::Command -e cp test_z80.asm ..\t\test_z80.asm

..\t\test_z80.obj : test_z80.obj
	perl -MExtUtils::Command -e cp test_z80.obj ..\t\test_z80.obj

ParserTable.pm : build_ParserTable.pl AsmTable.pm
	$(CALL) RUN_TOOL TOOL="build_ParserTable.pl" OUT="ParserTable.pm"

..\lib\CPU\Z80\Assembler\ParserTable.pm : ParserTable.pm
	perl -MExtUtils::Command -e cp ParserTable.pm ..\lib\CPU\Z80\Assembler\ParserTable.pm

bmk_z80.asm : test_z80.asm build_bmk_z80.pl
	$(CALL) RUN_TOOL TOOL="build_bmk_z80.pl test_z80.asm" OUT="bmk_z80.asm"

bmk_z80.obj : bmk_z80.asm
	z80masm bmk_z80.asm bmk_z80.obj~ > bmk_z80.lst~
	perl -MExtUtils::Command -e mv bmk_z80.obj~ bmk_z80.obj
	perl -MExtUtils::Command -e mv bmk_z80.lst~ bmk_z80.lst

bmk_z80.lst : bmk_z80.obj

bmk_z80.sj.asm : bmk_z80.asm Makefile
	perl -pe "s/\$$(.)/$$1/" << bmk_z80.asm > bmk_z80.sj.asm~
		OUTPUT bmk_z80.sj.obj
		MACRO STOP
		DB 0xDD,0xDD,0x00
		ENDM
<<
	perl -MExtUtils::Command -e mv bmk_z80.sj.asm~ bmk_z80.sj.asm

bmk_z80.sj.obj : bmk_z80.sj.asm
	sjasmplus --lst=bmk_z80.sj.lst bmk_z80.sj.asm

bmk_z80.sj.lst : bmk_z80.sj.obj

bmk_z80.obj.txt : bmk_z80.obj
	od -A x2 -t x1 bmk_z80.obj       > bmk_z80.obj.txt

bmk_z80.sj.obj.txt : bmk_z80.sj.obj
	od -A x2 -t x1 bmk_z80.sj.obj    > bmk_z80.sj.obj.txt

bmk_z80.dif : bmk_z80.obj.txt bmk_z80.sj.obj.txt
	diff bmk_z80.obj.txt bmk_z80.sj.obj.txt > bmk_z80.dif~
	perl -MExtUtils::Command -e mv bmk_z80.dif~ bmk_z80.dif

benchmark.txt : benchmark.pl bmk_z80.asm Makefile.benchmark
	$(CALL) /f Makefile.benchmark
	$(CALL) bmk_z80.dif

Makefile.benchmark : Makefile
	perl << > Makefile.benchmark
		use Config;
		print <<END ;
benchmark.txt : benchmark.pl bmk_z80.asm \\
		$$Config{'sitebin'}\\z80masm \\
		$$Config{'sitelib'}\\CPU\\Z80\\Assembler.pm
	benchmark.pl bmk_z80.asm

END
<<KEEP

	
clean::
	-del *~ bmk_z80.dif* bmk_z80.lst* bmk_z80.obj* bmk_z80.sj* \
		test_z80.lst* test_z80.obj* test_z80.sj* \
		Makefile.benchmark tmon.out
	
realclean:: clean
	-del AsmTable.pm ParserTable.pm bmk_z80.* test_z80.* 
