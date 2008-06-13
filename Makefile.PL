use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'CPU::Z80::Assembler',
    VERSION_FROM => 'lib/CPU/Z80/Assembler.pm',
    PREREQ_PM => {
        'Test::More' => 0
    },
    EXE_FILES    => [qw(
        bin/z80masm
    )],
);
