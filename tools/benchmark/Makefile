# $Id$

VERSIONS =	1.03 2.01 2.05

CALL = 		$(MAKE) -nologo -$(MAKEFLAGS)

CP =		perl -MExtUtils::Command -e cp
MV =		perl -MExtUtils::Command -e mv
RM_F =		perl -MExtUtils::Command -e rm_f
RM_RF =		perl -MExtUtils::Command -e rm_rf
TOUCH =		perl -MExtUtils::Command -e touch
MKPATH = 	perl -MExtUtils::Command -e mkpath

#------------------------------------------------------------------------------
# build bmk_z80.asm
all : bmk_z80.asm

bmk_z80.asm : ..\test_z80.asm build_bmk_z80.pl
	$(CALL) RUN_TOOL TOOL="build_bmk_z80.pl ..\test_z80.asm" OUT="bmk_z80.asm"

..\test_z80.asm :
	cd ..
	$(CALL) test_z80.asm
	cd $(MAKEDIR)

clean::
	-$(RM_F) bmk_z80.asm

#------------------------------------------------------------------------------
# build bmk_z80.obj
all : bmk_z80.obj

bmk_z80.obj : bmk_z80.asm ..\assemble.pl
	perl ..\assemble.pl bmk_z80.asm

clean::
	-$(RM_F) bmk_z80.obj bmk_z80.lst bmk_z80.sj.asm bmk_z80.sj.lst

#------------------------------------------------------------------------------
# benchmark with sjasmplus
all : benchmark

benchmark:: .\.benchmark_sjasmplus
	perl benchmark.pl sjasmplus sjasmplus --reversepop bmk_z80.sj.asm

.\.benchmark_sjasmplus : bmk_z80.obj benchmark.pl
	$(RM_F) benchmark_sjasmplus.txt
	$(TOUCH) .benchmark_sjasmplus

clean::
	-$(RM_F) benchmark_sjasmplus.txt .benchmark_sjasmplus

#------------------------------------------------------------------------------
# benchmark with z80masm-$(VERSION)
all : 
	$(CALL) VERSION=1.03    BENCHMARK_Z80MASM
	$(CALL) VERSION=2.01    BENCHMARK_Z80MASM
	$(CALL) VERSION=2.05    BENCHMARK_Z80MASM
	$(CALL) VERSION=2.05_03 BENCHMARK_Z80MASM
	$(CALL) VERSION=current benchmark_current
	perl -e "opendir(my $$dh, '.') or die; \
			for (sort readdir($$dh)) { \
				next unless /^benchmark_.*\.txt$$/i; \
				open(my $$fh, $$_) or die; \
				my @f = split(' ', <$$fh>); \
				push @times, [ $$f[0], $$f[3] ]; \
			} \
			END { \
				for (sort {$$a->[0] <=> $$b->[0]} @times) { \
					printf(qq(%7.3f %%s\n), $$_->[0], $$_->[1]); \
				} \
			}"

benchmark_current : .\.benchmark_z80masm-$(VERSION) \
					..\..\blib\script\z80masm
	perl benchmark.pl z80masm-$(VERSION) \
				"PATH=..\..\blib\script;%PATH%" \
				"PERL5LIB=..\..\blib\lib;%PERL5LIB%" \
				z80masm bmk_z80.asm bmk_z80_z80masm-$(VERSION).obj > bmk_z80.lst
	diff bmk_z80.obj bmk_z80_z80masm-$(VERSION).obj

BENCHMARK_Z80MASM : .\.benchmark_z80masm-$(VERSION) \
					tmp\CPU-Z80-Assembler-$(VERSION)\blib\script\z80masm
	perl benchmark.pl z80masm-$(VERSION) \
				"PATH=tmp\CPU-Z80-Assembler-$(VERSION)\blib\script;%PATH%" \
				"PERL5LIB=tmp\CPU-Z80-Assembler-$(VERSION)\blib\lib;%PERL5LIB%" \
				z80masm bmk_z80.asm bmk_z80_z80masm-$(VERSION).obj > bmk_z80.lst
	diff bmk_z80.obj bmk_z80_z80masm-$(VERSION).obj

.\.benchmark_z80masm-$(VERSION) : bmk_z80.obj benchmark.pl
	$(RM_F) benchmark_z80masm-$(VERSION).txt
	$(TOUCH) .benchmark_z80masm-$(VERSION)

..\..\blib\script\z80masm :
	cd ..\..
	perl Makefile.pl
	$(CALL)
	$(CALL) test
	cd $(MAKEDIR)

tmp\CPU-Z80-Assembler-$(VERSION)\blib\script\z80masm : CPU-Z80-Assembler-$(VERSION).tar.gz
	$(MKPATH) tmp
	cd tmp
	tar xzvf ..\CPU-Z80-Assembler-$(VERSION).tar.gz
	cd CPU-Z80-Assembler-$(VERSION)
	perl Makefile.pl
	$(CALL)
	$(CALL) test
	cd $(MAKEDIR)
	
clean::
	-$(RM_F) benchmark_z80masm-*.txt .benchmark_z80masm-* bmk_z80_z80masm-*.obj
	-$(RM_RF) tmp

#------------------------------------------------------------------------------
# profile
profile :
	perl -I..\..\blib\lib -d:DProf ..\..\blib\script\z80masm bmk_z80.asm bmk_z80_z80masm-current.obj > bmk_z80.lst
	dprofpp

#------------------------------------------------------------------------------
# tools
RUN_TOOL :
	perl $(TOOL) > $(OUT)~
	$(MV) $(OUT)~ $(OUT)

clean::
	-$(RM_F) *~

realclean:: clean
	cd ..
	$(CALL) clean
	cd $(MAKEDIR)

