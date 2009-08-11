# $Id$

CALL = 		$(MAKE) -nologo -$(MAKEFLAGS)

CP =		perl -MExtUtils::Command -e cp
MV =		perl -MExtUtils::Command -e mv
RM_F =		perl -MExtUtils::Command -e rm_f

#PATH =     	..\blib\script;$(PATH)
#PERL5LIB = 	..\blib\lib;$(PERL5LIB)

#------------------------------------------------------------------------------
# build AsmTable.pm
all :	AsmTable.pm

AsmTable.pm : build_AsmTable.pl 
	$(CALL) RUN_TOOL TOOL="build_AsmTable.pl" OUT="AsmTable.pm"

clean::
	-$(RM_F) AsmTable.pm

#------------------------------------------------------------------------------
# build test_z80.asm
all :	..\t\data\test_z80.asm

..\t\data\test_z80.asm : test_z80.asm ; 
	$(CP) test_z80.asm ..\t\data\test_z80.asm

test_z80.asm : build_test_z80.pl AsmTable.pm 
	$(CALL) RUN_TOOL TOOL="build_test_z80.pl" OUT="test_z80.asm"

clean::
	-$(RM_F) test_z80.asm

realclean::
	-$(RM_F) ..\t\data\test_z80.asm

#------------------------------------------------------------------------------
# build test_z80.obj
all :	..\t\data\test_z80.obj

..\t\data\test_z80.obj : test_z80.obj
	$(CP) test_z80.obj ..\t\data\test_z80.obj

test_z80.obj : test_z80.asm assemble.pl
	perl assemble.pl test_z80.asm

clean::
	-$(RM_F) test_z80.obj test_z80.lst test_z80.sj.asm test_z80.sj.lst

realclean::
	-$(RM_F) ..\t\data\test_z80.obj

#------------------------------------------------------------------------------
# build Parser.pm
all : ..\lib\CPU\Z80\Assembler\Parser.pm

..\lib\CPU\Z80\Assembler\Parser.pm : build_Parser.pl AsmTable.pm ParserGenerator.pm t\result.txt
	build_Parser.pl CPU::Z80::Assembler::Parser ..\lib\CPU\Z80\Assembler\Parser.pm

t\result.txt : t\*.t ParserGenerator.pm
	prove t\*.t > t\result.txt~
	$(MV) t\result.txt~ t\result.txt

clean::
	-$(RM_F) t\result.txt~ t\result.txt

realclean::
	-$(RM_F) ..\lib\CPU\Z80\Assembler\Parser.pm

#------------------------------------------------------------------------------
# tools
RUN_TOOL :
	perl $(TOOL) > $(OUT)~
	$(MV) $(OUT)~ $(OUT)

clean::
	-$(RM_F) *~

realclean:: clean

