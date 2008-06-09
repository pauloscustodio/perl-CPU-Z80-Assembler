#!perl

use strict;
use warnings;
use CPU::Z80::Assembler;

print "1..692\n";
my $test = 1;

my @codes = map { $_ =~ s/^\s+|\s+$//g; $_ } grep { /\S/ } <DATA>;

foreach my $code (@codes) {
    (my $expectedbytes = $code) =~ s/^.*;\s+//;
    my $expectedbinary = join(
        '',
        map {
            chr(eval "0x$_")
        } split(/\s+/, $expectedbytes)
    );
    my $binary = eval { z80asm("ORG 0x6789\n$code") } || 'xxxxxx';
    print "not " unless($binary eq $expectedbinary);
    print "ok ".($test++)." - $code\n";
}

__DATA__


        ADC A,(HL)              ; 8E
        ADC A,(IX+0x56)            ; DD 8E 56
        ADC A,(IY+0x56)            ; FD 8E 56
        ADC A,0x56              ; CE 56
        ADC A,A                 ; 8F
        ADC A,B                 ; 88
        ADC A,C                 ; 89
        ADC A,D                 ; 8A
        ADC A,E                 ; 8B
        ADC A,H                 ; 8C
        ADC A,L                 ; 8D
        ADC HL,BC               ; ED 4A
        ADC HL,DE               ; ED 5A
        ADC HL,HL               ; ED 6A
        ADC HL,SP               ; ED 7A
        ADD A,(HL)              ; 86
        ADD A,(IX+0x56)            ; DD 86 56
        ADD A,(IY+0x56)            ; FD 86 56
        ADD A,0x56              ; C6 56
        ADD A,A                 ; 87
        ADD A,B                 ; 80
        ADD A,C                 ; 81
        ADD A,D                 ; 82
        ADD A,E                 ; 83
        ADD A,H                 ; 84
        ADD A,L                 ; 85
        ADD HL,BC               ; 09
        ADD HL,DE               ; 19
        ADD HL,HL               ; 29
        ADD HL,SP               ; 39
        ADD IX,BC               ; DD 09
        ADD IX,DE               ; DD 19
        ADD IX,IX               ; DD 29
        ADD IX,SP               ; DD 39
        ADD IY,BC               ; FD 09
        ADD IY,DE               ; FD 19
        ADD IY,IY               ; FD 29
        ADD IY,SP               ; FD 39
        AND (HL)                ; A6
        AND (IX+0x56)              ; DD A6 56
        AND (IY+0x56)              ; FD A6 56
        AND 0x56                ; E6 56
        AND A                   ; A7
        AND B                   ; A0
        AND C                   ; A1
        AND D                   ; A2
        AND E                   ; A3
        AND H                   ; A4
        AND L                   ; A5
        BIT 0,(HL)              ; CB 46
        BIT 0,(IX+0x56)            ; DD CB 56 46
        BIT 0,(IY+0x56)            ; FD CB 56 46
        BIT 0,A                 ; CB 47
        BIT 0,B                 ; CB 40
        BIT 0,C                 ; CB 41
        BIT 0,D                 ; CB 42
        BIT 0,E                 ; CB 43
        BIT 0,H                 ; CB 44
        BIT 0,L                 ; CB 45
        BIT 1,(HL)              ; CB 4E
        BIT 1,(IX+0x56)            ; DD CB 56 4E
        BIT 1,(IY+0x56)            ; FD CB 56 4E
        BIT 1,A                 ; CB 4F
        BIT 1,B                 ; CB 48
        BIT 1,C                 ; CB 49
        BIT 1,D                 ; CB 4A
        BIT 1,E                 ; CB 4B
        BIT 1,H                 ; CB 4C
        BIT 1,L                 ; CB 4D
        BIT 2,(HL)              ; CB 56
        BIT 2,(IX+0x56)            ; DD CB 56 56
        BIT 2,(IY+0x56)            ; FD CB 56 56
        BIT 2,A                 ; CB 57
        BIT 2,B                 ; CB 50
        BIT 2,C                 ; CB 51
        BIT 2,D                 ; CB 52
        BIT 2,E                 ; CB 53
        BIT 2,H                 ; CB 54
        BIT 2,L                 ; CB 55
        BIT 3,(HL)              ; CB 5E
        BIT 3,(IX+0x56)            ; DD CB 56 5E
        BIT 3,(IY+0x56)            ; FD CB 56 5E
        BIT 3,A                 ; CB 5F
        BIT 3,B                 ; CB 58
        BIT 3,C                 ; CB 59
        BIT 3,D                 ; CB 5A
        BIT 3,E                 ; CB 5B
        BIT 3,H                 ; CB 5C
        BIT 3,L                 ; CB 5D
        BIT 4,(HL)              ; CB 66
        BIT 4,(IX+0x56)            ; DD CB 56 66
        BIT 4,(IY+0x56)            ; FD CB 56 66
        BIT 4,A                 ; CB 67
        BIT 4,B                 ; CB 60
        BIT 4,C                 ; CB 61
        BIT 4,D                 ; CB 62
        BIT 4,E                 ; CB 63
        BIT 4,H                 ; CB 64
        BIT 4,L                 ; CB 65
        BIT 5,(HL)              ; CB 6E
        BIT 5,(IX+0x56)            ; DD CB 56 6E
        BIT 5,(IY+0x56)            ; FD CB 56 6E
        BIT 5,A                 ; CB 6F
        BIT 5,B                 ; CB 68
        BIT 5,C                 ; CB 69
        BIT 5,D                 ; CB 6A
        BIT 5,E                 ; CB 6B
        BIT 5,H                 ; CB 6C
        BIT 5,L                 ; CB 6D
        BIT 6,(HL)              ; CB 76
        BIT 6,(IX+0x56)            ; DD CB 56 76
        BIT 6,(IY+0x56)            ; FD CB 56 76
        BIT 6,A                 ; CB 77
        BIT 6,B                 ; CB 70
        BIT 6,C                 ; CB 71
        BIT 6,D                 ; CB 72
        BIT 6,E                 ; CB 73
        BIT 6,H                 ; CB 74
        BIT 6,L                 ; CB 75
        BIT 7,(HL)              ; CB 7E
        BIT 7,(IX+0x56)            ; DD CB 56 7E
        BIT 7,(IY+0x56)            ; FD CB 56 7E
        BIT 7,A                 ; CB 7F
        BIT 7,B                 ; CB 78
        BIT 7,C                 ; CB 79
        BIT 7,D                 ; CB 7A
        BIT 7,E                 ; CB 7B
        BIT 7,H                 ; CB 7C
        BIT 7,L                 ; CB 7D
        CALL 0x1234             ; CD 34 12
        CALL C,0x1234           ; DC 34 12
        CALL M,0x1234           ; FC 34 12
        CALL NC,0x1234          ; D4 34 12
        CALL NZ,0x1234          ; C4 34 12
        CALL P,0x1234           ; F4 34 12
        CALL PE,0x1234          ; EC 34 12
        CALL PO,0x1234          ; E4 34 12
        CALL Z,0x1234           ; CC 34 12
        CCF                     ; 3F
        CP (HL)                 ; BE
        CP (IX+0x56)               ; DD BE 56
        CP (IY+0x56)               ; FD BE 56
        CP 0x56                 ; FE 56
        CP A                    ; BF
        CP B                    ; B8
        CP C                    ; B9
        CP D                    ; BA
        CP E                    ; BB
        CP H                    ; BC
        CP L                    ; BD
        CPD                     ; ED A9
        CPDR                    ; ED B9
        CPI                     ; ED A1
        CPIR                    ; ED B1
        CPL                     ; 2F
        DAA                     ; 27
        DEC (HL)                ; 35
        DEC (IX+0x56)              ; DD 35 56
        DEC (IY+0x56)              ; FD 35 56
        DEC A                   ; 3D
        DEC B                   ; 05
        DEC BC                  ; 0B
        DEC C                   ; 0D
        DEC D                   ; 15
        DEC DE                  ; 1B
        DEC E                   ; 1D
        DEC H                   ; 25
        DEC HL                  ; 2B
        DEC IX                  ; DD 2B
        DEC IY                  ; FD 2B
        DEC L                   ; 2D
        DEC SP                  ; 3B
        DI                      ; F3
        DJNZ $+2                ; 10
        E56                     ; D9
        EI                      ; FB
        EX (SP),HL              ; E3
        EX (SP),IX              ; DD E3
        EX (SP),IY              ; FD E3
        EX AF,AF'               ; 08
        EX DE,HL                ; EB
        HALT                    ; 76
        IM 0                    ; ED 46
        IM 1                    ; ED 56
        IM 2                    ; ED 5E
        IN A,(0x56)             ; DB 56
        IN A,(C)                ; ED 78
        IN B,(C)                ; ED 40
        IN C,(C)                ; ED 48
        IN D,(C)                ; ED 50
        IN E,(C)                ; ED 58
        IN H,(C)                ; ED 60
        IN L,(C)                ; ED 68
        INC (HL)                ; 34
        INC (IX+0x56)              ; DD 34 56
        INC (IY+0x56)              ; FD 34 56
        INC A                   ; 3C
        INC B                   ; 04
        INC BC                  ; 03
        INC C                   ; 0C
        INC D                   ; 14
        INC DE                  ; 13
        INC E                   ; 1C
        INC H                   ; 24
        INC HL                  ; 23
        INC IX                  ; DD 23
        INC IY                  ; FD 23
        INC L                   ; 2C
        INC SP                  ; 33
        IND                     ; ED AA
        INDR                    ; ED BA
        INI                     ; ED A2
        INIR                    ; ED B2
        JP $+3                  ; C3
        JP (HL)                 ; E9
        JP (IX)                 ; DD E9
        JP (IY)                 ; FD E9
        JP C,$+3                ; DA
        JP M,$+3                ; FA
        JP NC,$+3               ; D2
        JP NZ,$+3               ; C2
        JP P,$+3                ; F2
        JP PE,$+3               ; EA
        JP PO,$+3               ; E2
        JP Z,$+3                ; CA
        JR $+2                  ; 18
        JR C,$+2                ; 38
        JR NC,$+2               ; 30
        JR NZ,$+2               ; 20
        JR Z,$+2                ; 28
        LD (0x1234),A               ; 32 34 12
        LD (0x1234),BC              ; ED 43 34 12
        LD (0x1234),DE              ; ED 53 34 12
        LD (0x1234),HL              ; 22 34 12
        LD (0x1234),IX              ; DD 22 34 12
        LD (0x1234),IY              ; FD 22 34 12
        LD (0x1234),SP              ; ED 73 34 12
        LD (BC),A               ; 02
        LD (DE),A               ; 12
        LD (HL),0x56            ; 36 56
        LD (HL),A               ; 77
        LD (HL),B               ; 70
        LD (HL),C               ; 71
        LD (HL),D               ; 72
        LD (HL),E               ; 73
        LD (HL),H               ; 74
        LD (HL),L               ; 75
        LD (IX+0x56),0x56          ; DD 36 34 12
        LD (IX+0x56),A             ; DD 77 56
        LD (IX+0x56),B             ; DD 70 56
        LD (IX+0x56),C             ; DD 71 56
        LD (IX+0x56),D             ; DD 72 56
        LD (IX+0x56),E             ; DD 73 56
        LD (IX+0x56),H             ; DD 74 56
        LD (IX+0x56),L             ; DD 75 56
        LD (IY+0x56),0x56          ; FD 36 34 12
        LD (IY+0x56),A             ; FD 77 56
        LD (IY+0x56),B             ; FD 70 56
        LD (IY+0x56),C             ; FD 71 56
        LD (IY+0x56),D             ; FD 72 56
        LD (IY+0x56),E             ; FD 73 56
        LD (IY+0x56),H             ; FD 74 56
        LD (IY+0x56),L             ; FD 75 56
        LD A,(0x1234)               ; 3A 34 12
        LD A,(BC)               ; 0A
        LD A,(DE)               ; 1A
        LD A,(HL)               ; 7E
        LD A,(IX+0x56)             ; DD 7E 56
        LD A,(IY+0x56)             ; FD 7E 56
        LD A,0x56               ; 3E 56
        LD A,A                  ; 7F
        LD A,B                  ; 78
        LD A,C                  ; 79
        LD A,D                  ; 7A
        LD A,E                  ; 7B
        LD A,H                  ; 7C
        LD A,I                  ; ED 57
        LD A,L                  ; 7D
        LD B,(HL)               ; 46
        LD B,(IX+0x56)             ; DD 46 56
        LD B,(IY+0x56)             ; FD 46 56
        LD B,0x56               ; 06 56
        LD B,A                  ; 47
        LD B,B                  ; 40
        LD B,C                  ; 41
        LD B,D                  ; 42
        LD B,E                  ; 43
        LD B,H                  ; 44
        LD B,L                  ; 45
        LD BC,(0x1234)              ; ED 4B 34 12
        LD BC,0x1234            ; 01 34 12
        LD C,(HL)               ; 4E
        LD C,(IX+0x56)             ; DD 4E 56
        LD C,(IY+0x56)             ; FD 4E 56
        LD C,0x56               ; 0E 56
        LD C,A                  ; 4F
        LD C,B                  ; 48
        LD C,C                  ; 49
        LD C,D                  ; 4A
        LD C,E                  ; 4B
        LD C,H                  ; 4C
        LD C,L                  ; 4D
        LD D,(HL)               ; 56
        LD D,(IX+0x56)             ; DD 56 56
        LD D,(IY+0x56)             ; FD 56 56
        LD D,0x56               ; 16 56
        LD D,A                  ; 57
        LD D,B                  ; 50
        LD D,C                  ; 51
        LD D,D                  ; 52
        LD D,E                  ; 53
        LD D,H                  ; 54
        LD D,L                  ; 55
        LD DE,(0x1234)              ; ED 5B 34 12
        LD DE,0x1234            ; 11 34 12
        LD E,(HL)               ; 5E
        LD E,(IX+0x56)             ; DD 5E 56
        LD E,(IY+0x56)             ; FD 5E 56
        LD E,0x56               ; 1E 56
        LD E,A                  ; 5F
        LD E,B                  ; 58
        LD E,C                  ; 59
        LD E,D                  ; 5A
        LD E,E                  ; 5B
        LD E,H                  ; 5C
        LD E,L                  ; 5D
        LD H,(HL)               ; 66
        LD H,(IX+0x56)             ; DD 66 56
        LD H,(IY+0x56)             ; FD 66 56
        LD H,0x56               ; 26 56
        LD H,A                  ; 67
        LD H,B                  ; 60
        LD H,C                  ; 61
        LD H,D                  ; 62
        LD H,E                  ; 63
        LD H,H                  ; 64
        LD H,L                  ; 65
        LD HL,(0x1234)              ; 2A 34 12
        LD HL,0x1234            ; 21 34 12
        LD I,A                  ; ED 47
        LD IX,(0x1234)              ; DD 2A 34 12
        LD IX,0x1234            ; DD 21 34 12
        LD IY,(0x1234)              ; FD 2A 34 12
        LD IY,0x1234            ; FD 21 34 12
        LD L,(HL)               ; 6E
        LD L,(IX+0x56)             ; DD 6E 56
        LD L,(IY+0x56)             ; FD 6E 56
        LD L,0x56               ; 2E 56
        LD L,A                  ; 6F
        LD L,B                  ; 68
        LD L,C                  ; 69
        LD L,D                  ; 6A
        LD L,E                  ; 6B
        LD L,H                  ; 6C
        LD L,L                  ; 6D
        LD SP,(0x1234)              ; ED 7B 34 12
        LD SP,0x1234            ; 31 34 12
        LD SP,HL                ; F9
        LD SP,IX                ; DD F9
        LD SP,IY                ; FD F9
        LDD                     ; ED A8
        LDDR                    ; ED B8
        LDI                     ; ED A0
        LDIR                    ; ED B0
        NEG                     ; ED 44
        NOP                     ; 00
        OR (HL)                 ; B6
        OR (IX+0x56)               ; DD B6 56
        OR (IY+0x56)               ; FD B6 56
        OR 0x56                 ; F6 56
        OR A                    ; B7
        OR B                    ; B0
        OR C                    ; B1
        OR D                    ; B2
        OR E                    ; B3
        OR H                    ; B4
        OR L                    ; B5
        OTDR                    ; ED BB
        OTIR                    ; ED B3
        OUT (C),A               ; ED 79
        OUT (C),B               ; ED 41
        OUT (C),C               ; ED 49
        OUT (C),D               ; ED 51
        OUT (C),E               ; ED 59
        OUT (C),H               ; ED 61
        OUT (C),L               ; ED 69
        OUT (N),A               ; D3 56
        OUTD                    ; ED AB
        OUTI                    ; ED A3
        POP AF                  ; F1
        POP BC                  ; C1
        POP DE                  ; D1
        POP HL                  ; E1
        POP IX                  ; DD E1
        POP IY                  ; FD E1
        PUSH AF                 ; F5
        PUSH BC                 ; C5
        PUSH DE                 ; D5
        PUSH HL                 ; E5
        PUSH IX                 ; DD E5
        PUSH IY                 ; FD E5
        RES 0,(HL)              ; CB 86
        RES 0,(IX+0x56)            ; DD CB 56 86
        RES 0,(IY+0x56)            ; FD CB 56 86
        RES 0,A                 ; CB 87
        RES 0,B                 ; CB 80
        RES 0,C                 ; CB 81
        RES 0,D                 ; CB 82
        RES 0,E                 ; CB 83
        RES 0,H                 ; CB 84
        RES 0,L                 ; CB 85
        RES 1,(HL)              ; CB 8E
        RES 1,(IX+0x56)            ; DD CB 56 8E
        RES 1,(IY+0x56)            ; FD CB 56 8E
        RES 1,A                 ; CB 8F
        RES 1,B                 ; CB 88
        RES 1,C                 ; CB 89
        RES 1,D                 ; CB 8A
        RES 1,E                 ; CB 8B
        RES 1,H                 ; CB 8C
        RES 1,L                 ; CB 8D
        RES 2,(HL)              ; CB 96
        RES 2,(IX+0x56)            ; DD CB 56 96
        RES 2,(IY+0x56)            ; FD CB 56 96
        RES 2,A                 ; CB 97
        RES 2,B                 ; CB 90
        RES 2,C                 ; CB 91
        RES 2,D                 ; CB 92
        RES 2,E                 ; CB 93
        RES 2,H                 ; CB 94
        RES 2,L                 ; CB 95
        RES 3,(HL)              ; CB 9E
        RES 3,(IX+0x56)            ; DD CB 56 9E
        RES 3,(IY+0x56)            ; FD CB 56 9E
        RES 3,A                 ; CB 9F
        RES 3,B                 ; CB 98
        RES 3,C                 ; CB 99
        RES 3,D                 ; CB 9A
        RES 3,E                 ; CB 9B
        RES 3,H                 ; CB 9C
        RES 3,L                 ; CB 9D
        RES 4,(HL)              ; CB A6
        RES 4,(IX+0x56)            ; DD CB 56 A6
        RES 4,(IY+0x56)            ; FD CB 56 A6
        RES 4,A                 ; CB A7
        RES 4,B                 ; CB A0
        RES 4,C                 ; CB A1
        RES 4,D                 ; CB A2
        RES 4,E                 ; CB A3
        RES 4,H                 ; CB A4
        RES 4,L                 ; CB A5
        RES 5,(HL)              ; CB AE
        RES 5,(IX+0x56)            ; DD CB 56 AE
        RES 5,(IY+0x56)            ; FD CB 56 AE
        RES 5,A                 ; CB AF
        RES 5,B                 ; CB A8
        RES 5,C                 ; CB A9
        RES 5,D                 ; CB AA
        RES 5,E                 ; CB AB
        RES 5,H                 ; CB AC
        RES 5,L                 ; CB AD
        RES 6,(HL)              ; CB B6
        RES 6,(IX+0x56)            ; DD CB 56 B6
        RES 6,(IY+0x56)            ; FD CB 56 B6
        RES 6,A                 ; CB B7
        RES 6,B                 ; CB B0
        RES 6,C                 ; CB B1
        RES 6,D                 ; CB B2
        RES 6,E                 ; CB B3
        RES 6,H                 ; CB B4
        RES 6,L                 ; CB B5
        RES 7,(HL)              ; CB BE
        RES 7,(IX+0x56)            ; DD CB 56 BE
        RES 7,(IY+0x56)            ; FD CB 56 BE
        RES 7,A                 ; CB BF
        RES 7,B                 ; CB B8
        RES 7,C                 ; CB B9
        RES 7,D                 ; CB BA
        RES 7,E                 ; CB BB
        RES 7,H                 ; CB BC
        RES 7,L                 ; CB BD
        RET                     ; C9
        RET C                   ; D8
        RET M                   ; F8
        RET NC                  ; D0
        RET NZ                  ; C0
        RET P                   ; F0
        RET PE                  ; E8
        RET PO                  ; E0
        RET Z                   ; C8
        RETI                    ; ED 4D
        RETN                    ; ED 45
        RL  (HL)                ; CB 16
        RL  A                   ; CB 17
        RL  B                   ; CB 10
        RL  C                   ; CB 11
        RL  D                   ; CB 12
        RL  E                   ; CB 13
        RL  H                   ; CB 14
        RL  L                   ; CB 15
        RL (IX+0x56)               ; DD CB 56 16
        RL (IY+0x56)               ; FD CB 56 16
        RLA                     ; 17
        RLC (HL)                ; CB 06
        RLC (IX+0x56)              ; DD CB 56 06
        RLC (IY+0x56)              ; FD CB 56 06
        RLC A                   ; CB 07
        RLC B                   ; CB 00
        RLC C                   ; CB 01
        RLC D                   ; CB 02
        RLC E                   ; CB 03
        RLC H                   ; CB 04
        RLC L                   ; CB 05
        RLCA                    ; 07
        RLD                     ; ED 6F
        RR  (HL)                ; CB 1E
        RR  A                   ; CB 1F
        RR  B                   ; CB 18
        RR  C                   ; CB 19
        RR  D                   ; CB 1A
        RR  E                   ; CB 1B
        RR  H                   ; CB 1C
        RR  L                   ; CB 1D
        RR (IX+0x56)               ; DD CB 56 1E
        RR (IY+0x56)               ; FD CB 56 1E
        RRA                     ; 1F
        RRC (HL)                ; CB 0E
        RRC (IX+0x56)              ; DD CB 56 0E
        RRC (IY+0x56)              ; FD CB 56 0E
        RRC A                   ; CB 0F
        RRC B                   ; CB 08
        RRC C                   ; CB 09
        RRC D                   ; CB 0A
        RRC E                   ; CB 0B
        RRC H                   ; CB 0C
        RRC L                   ; CB 0D
        RRCA                    ; 0F
        RRD                     ; ED 67
        RST 0                   ; C7
        RST 10H                 ; D7
        RST 18H                 ; DF
        RST 20H                 ; E7
        RST 28H                 ; EF
        RST 30H                 ; F7
        RST 38H                 ; FF
        RST 8H                  ; CF 
        SBC (HL)                ; 9E
        SBC A                   ; 9F
        SBC A,(IX+0x56)            ; DD 9E 56
        SBC A,(IY+0x56)            ; FD 9E 56
        SBC A,0x56              ; DE 56
        SBC B                   ; 98
        SBC C                   ; 99
        SBC D                   ; 9A
        SBC E                   ; 9B
        SBC H                   ; 9C
        SBC HL,BC               ; ED 42
        SBC HL,DE               ; ED 52
        SBC HL,HL               ; ED 62
        SBC HL,SP               ; ED 72
        SBC L                   ; 9D
        SCF                     ; 37
        SET 0,(HL)              ; CB C6
        SET 0,(IX+0x56)            ; DD CB 56 C6
        SET 0,(IY+0x56)            ; FD CB 56 C6
        SET 0,A                 ; CB C7
        SET 0,B                 ; CB C0
        SET 0,C                 ; CB C1
        SET 0,D                 ; CB C2
        SET 0,E                 ; CB C3
        SET 0,H                 ; CB C4
        SET 0,L                 ; CB C5
        SET 1,(HL)              ; CB CE
        SET 1,(IX+0x56)            ; DD CB 56 CE
        SET 1,(IY+0x56)            ; FD CB 56 CE
        SET 1,A                 ; CB CF
        SET 1,B                 ; CB C8
        SET 1,C                 ; CB C9
        SET 1,D                 ; CB CA
        SET 1,E                 ; CB CB
        SET 1,H                 ; CB CC
        SET 1,L                 ; CB CD
        SET 2,(HL)              ; CB D6
        SET 2,(IX+0x56)            ; DD CB 56 D6
        SET 2,(IY+0x56)            ; FD CB 56 D6
        SET 2,A                 ; CB D7
        SET 2,B                 ; CB D0
        SET 2,C                 ; CB D1
        SET 2,D                 ; CB D2
        SET 2,E                 ; CB D3
        SET 2,H                 ; CB D4
        SET 2,L                 ; CB D5
        SET 3,(HL)              ; CB DE
        SET 3,(IX+0x56)            ; DD CB 56 DE
        SET 3,(IY+0x56)            ; FD CB 56 DE
        SET 3,A                 ; CB DF
        SET 3,B                 ; CB D8
        SET 3,C                 ; CB D9
        SET 3,D                 ; CB DA
        SET 3,E                 ; CB DB
        SET 3,H                 ; CB DC
        SET 3,L                 ; CB DD
        SET 4,(HL)              ; CB E6
        SET 4,(IX+0x56)            ; DD CB 56 E6
        SET 4,(IY+0x56)            ; FD CB 56 E6
        SET 4,A                 ; CB E7
        SET 4,B                 ; CB E0
        SET 4,C                 ; CB E1
        SET 4,D                 ; CB E2
        SET 4,E                 ; CB E3
        SET 4,H                 ; CB E4
        SET 4,L                 ; CB E5
        SET 5,(HL)              ; CB EE
        SET 5,(IX+0x56)            ; DD CB 56 EE
        SET 5,(IY+0x56)            ; FD CB 56 EE
        SET 5,A                 ; CB EF
        SET 5,B                 ; CB E8
        SET 5,C                 ; CB E9
        SET 5,D                 ; CB EA
        SET 5,E                 ; CB EB
        SET 5,H                 ; CB EC
        SET 5,L                 ; CB ED
        SET 6,(HL)              ; CB F6
        SET 6,(IX+0x56)            ; DD CB 56 F6
        SET 6,(IY+0x56)            ; FD CB 56 F6
        SET 6,A                 ; CB F7
        SET 6,B                 ; CB F0
        SET 6,C                 ; CB F1
        SET 6,D                 ; CB F2
        SET 6,E                 ; CB F3
        SET 6,H                 ; CB F4
        SET 6,L                 ; CB F5
        SET 7,(HL)              ; CB FE
        SET 7,(IX+0x56)            ; DD CB 56 FE
        SET 7,(IY+0x56)            ; FD CB 56 FE
        SET 7,A                 ; CB FF
        SET 7,B                 ; CB F8
        SET 7,C                 ; CB F9
        SET 7,D                 ; CB FA
        SET 7,E                 ; CB FB
        SET 7,H                 ; CB FC
        SET 7,L                 ; CB FD
        SLA (HL)                ; CB 26
        SLA (IX+0x56)              ; DD CB 56 26
        SLA (IY+0x56)              ; FD CB 56 26
        SLA A                   ; CB 27
        SLA B                   ; CB 20
        SLA C                   ; CB 21
        SLA D                   ; CB 22
        SLA E                   ; CB 23
        SLA H                   ; CB 24
        SLA L                   ; CB 25
        SRA (HL)                ; CB 2E
        SRA (IX+0x56)              ; DD CB 56 2E
        SRA (IY+0x56)              ; FD CB 56 2E
        SRA A                   ; CB 2F
        SRA B                   ; CB 28
        SRA C                   ; CB 29
        SRA D                   ; CB 2A
        SRA E                   ; CB 2B
        SRA H                   ; CB 2C
        SRA L                   ; CB 2D
        SRL (HL)                ; CB 3E
        SRL A                   ; CB 3F
        SRL B                   ; CB 38
        SRL C                   ; CB 39
        SRL D                   ; CB 3A
        SRL E                   ; CB 3B
        SRL H                   ; CB 3C
        SRL L                   ; CB 3D
        SUB (HL)                ; 96
        SUB (IX+0x56)              ; DD 96 56
        SUB (IY+0x56)              ; FD 96 56
        SUB 0x56                ; D6 56
        SUB A                   ; 97
        SUB B                   ; 90
        SUB C                   ; 91
        SUB D                   ; 92
        SUB E                   ; 93
        SUB H                   ; 94
        SUB L                   ; 95
        XOR (HL)                ; AE
        XOR (IX+0x56)              ; DD AE 56
        XOR (IY+0x56)              ; FD AE 56
        XOR 0x56                ; EE 56
        XOR A                   ; AF
        XOR B                   ; A8
        XOR C                   ; A9
        XOR D                   ; AA
        XOR E                   ; AB
        XOR H                   ; AC
        XOR L                   ; AD
