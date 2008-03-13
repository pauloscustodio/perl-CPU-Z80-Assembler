use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'CPU::Z80::Assembler',
    VERSION_FROM => 'lib/CPU/Z80/Assembler.pm',
    PREREQ_PM => {
        # 'Tie::RegexpHash' => 0.15,
    }
);
