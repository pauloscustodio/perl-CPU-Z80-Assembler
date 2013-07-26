# $Id$
use strict;
use warnings;
use ExtUtils::MakeMaker;
use 5.008;

WriteMakefile(
    NAME         	=> 'CPU::Z80::Assembler',
    VERSION_FROM 	=> 'lib/CPU/Z80/Assembler.pm',
    depend 			=> { Makefile => '$(VERSION_FROM)' },
    PREREQ_PM 		=> {
		'Asm::Preproc'					=> 1.00,	# no Asm::Preproc::Stream
		'Asm::Z80::Table'				=> 0.02,
		'Iterator::Array::Jagged'		=> 0.05,
		'Iterator::Simple::Lookahead'	=> 0.04,
        'Class::Struct'					=> 0,
        'Data::Dump' 					=> 1.08,
        'File::Slurp' 					=> 9999.13,
        'File::Spec' 					=> 0,
        'Regexp::Trie' 					=> 0.02,
        'Test::More' 					=> 0.96,	# needs done_testing()
        'Text::Tabs' 					=> 2006.1117,
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
