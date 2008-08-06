CALL = $(MAKE) -nologo -$(MAKEFLAGS)

all : 	..\t\test_z80.asm \
	..\lib\CPU\Z80\Assembler\ParserTable.pm \
	test_z80.lst \
	test_z80.obj

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

ParserTable.pm : build_ParserTable.pl AsmTable.pm
	$(CALL) RUN_TOOL TOOL="build_ParserTable.pl" OUT="ParserTable.pm"

..\lib\CPU\Z80\Assembler\ParserTable.pm : ParserTable.pm
	perl -MExtUtils::Command -e cp ParserTable.pm ..\lib\CPU\Z80\Assembler\ParserTable.pm

clean::
	-del AsmTable.pm* ParserTable.pm* test_z80.*

