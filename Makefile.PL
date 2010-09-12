# $Id$
use strict;
use warnings;
use ExtUtils::MakeMaker;
use 5.008;

WriteMakefile(
    NAME         	=> 'CPU::Z80::Assembler',
    VERSION_FROM 	=> 'VERSION',
    depend 			=> { Makefile => '$(VERSION_FROM)' },
    PREREQ_PM 		=> {
		'Asm::Preproc'				=> 0.02,
        'Class::Struct'				=> 0,
        'Data::Dump' 				=> 1.08,
        'File::Slurp' 				=> 9999.13,
        'File::Spec' 				=> 0,
		'Iterator::Array::Jagged'	=> 0.05,
        'Regexp::Trie' 				=> 0.02,
        'Test::More' 				=> 0,
        'Text::Tabs' 				=> 2006.1117,
    },
    EXE_FILES    	=> [qw(
        bin/z80masm
    )],
    LICENSE			=> 'perl',
);


sub MY::postamble {
	return q{

# generate the parser - developper only, specific Win32
gentools : 
	cd tools 
	$(MAKE)
	cd ..
	$(MAKE)

};
}
