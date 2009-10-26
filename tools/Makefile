# $Id$

CALL = 		$(MAKE) -nologo -$(MAKEFLAGS)

CP =		perl -MExtUtils::Command -e cp
MV =		perl -MExtUtils::Command -e mv
RM_F =		perl -MExtUtils::Command -e rm_f
Z80MASM =	perl -I..\lib ..\bin\z80masm

#PATH =     	..\blib\script;$(PATH)
#PERL5LIB = 	..\blib\lib;$(PERL5LIB)

#------------------------------------------------------------------------------
# build AsmTable.pm
all :	AsmTable.pm ..\lib\CPU\Z80\Assembler\AsmTable.pm

AsmTable.pm : build_AsmTable.pl 
	$(CALL) RUN_TOOL TOOL="build_AsmTable.pl AsmTable" OUT="AsmTable.pm"

..\lib\CPU\Z80\Assembler\AsmTable.pm : build_AsmTable.pl 
	$(CALL) RUN_TOOL TOOL="build_AsmTable.pl CPU::Z80::Assembler::AsmTable"  OUT="..\lib\CPU\Z80\Assembler\AsmTable.pm"

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
	prove -I..\lib t\*.t > t\result.txt~
	$(MV) t\result.txt~ t\result.txt

clean::
	-$(RM_F) t\result.txt~ t\result.txt

realclean::
	-$(RM_F) ..\lib\CPU\Z80\Assembler\Parser.pm


#------------------------------------------------------------------------------
# test compile zx48.asm
all : zx48.bin

zx48.bin : data\zx48.asm \
			..\bin\z80masm \
			..\lib\CPU\Z80\Assembler.pm \
			..\lib\CPU\Z80\Assembler\*.pm
	$(Z80MASM) data\zx48.asm zx48.bin~ > zx48.lst
	diff zx48.bin~ data\zx48.rom
	$(MV) zx48.bin~ zx48.bin

clean::
	-$(RM_F) zx48.bin zx48.bin~ zx48.lst


#------------------------------------------------------------------------------
# tools
RUN_TOOL :
	perl $(TOOL) > $(OUT)~
	$(MV) $(OUT)~ $(OUT)

clean::
	-$(RM_F) *~

realclean:: clean

