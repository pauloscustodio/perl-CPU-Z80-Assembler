# $Id$

use ExtUtils::MakeMaker;
use 5.008;

WriteMakefile(
    NAME         	=> 'CPU::Z80::Assembler',
    VERSION_FROM 	=> 'VERSION',
    depend 			=> { Makefile => '$(VERSION_FROM)' },
    PREREQ_PM 		=> {
        'Test::More' => 0,
        'File::Slurp' => 9999.13,
        'File::Spec' => 0,
        'HOP::Stream' => 0.02,		# 0.01 has a bug with streams of array refs
        'Regexp::Trie' => 0.02,
        'Data::Dump' => 1.08,
        'Class::Struct' => 0,
        'Text::Tabs' => 2006.1117,
    },
    EXE_FILES    	=> [qw(
        bin/z80masm
    )],
    LICENSE			=> 'perl',
);
