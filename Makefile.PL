# $Id$

use ExtUtils::MakeMaker;
use 5.008;

WriteMakefile(
    NAME         	=> 'CPU::Z80::Assembler',
    VERSION_FROM 	=> 'VERSION',
    depend 			=> { Makefile => '$(VERSION_FROM)' },
    PREREQ_PM 		=> {
        'Class::Struct'		=> 0,
        'Data::Dump' 		=> 1.08,
        'File::Slurp' 		=> 9999.13,
        'File::Spec' 		=> 0,
        'Regexp::Trie' 		=> 0.02,
        'Test::More' 		=> 0,
        'Text::Tabs' 		=> 2006.1117,
    },
    EXE_FILES    	=> [qw(
        bin/z80masm
    )],
    LICENSE			=> 'perl',
);


sub MY::postamble {
	return q{

# On Win32, pl2bat is always run, even if nothing changed, because z80masm is copied and not touched
# Trick it

pure_all :: touched

touched : $(INST_SCRIPT)$(DFSEP)z80masm
	$(TOUCH) $(INST_SCRIPT)$(DFSEP)z80masm
	$(TOUCH) touched

clean ::
	- $(RM_F) touched

# generate the parser - developper only, specific Win32
gentools : 
	cd tools 
	$(MAKE)
	cd ..
	$(MAKE)

};
}
