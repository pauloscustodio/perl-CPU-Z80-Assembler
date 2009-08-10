our @table = (
    # [0] TOP
    {
        "\n"    => [],
        ":"     => [],
        "adc"   => 1,
        "add"   => 82,
        "and"   => 183,
        "bit"   => 252,
        "call"  => 605,
        "ccf"   => 640,
        "cp"    => 642,
        "cpd"   => 711,
        "cpdr"  => 713,
        "cpi"   => 715,
        "cpir"  => 717,
        "cpl"   => 719,
        "daa"   => 721,
        "dec"   => 723,
        "di"    => 802,
        "djnz"  => 804,
        "ei"    => 807,
        "ex"    => 809,
        "exa"   => 841,
        "exx"   => 843,
        "halt"  => 845,
        "im"    => 847,
        "in"    => 854,
        "inc"   => 941,
        "ind"   => 1020,
        "indr"  => 1022,
        "ini"   => 1024,
        "inir"  => 1026,
        "jp"    => 1028,
        "jr"    => 1089,
        "ld"    => 1108,
        "ldd"   => 2207,
        "lddr"  => 2575,
        "ldi"   => 2577,
        "ldir"  => 3061,
        "neg"   => 3063,
        "nop"   => 3065,
        "or"    => 3067,
        "otdr"  => 3136,
        "otir"  => 3138,
        "out"   => 3140,
        "outd"  => 3191,
        "outi"  => 3193,
        "pop"   => 3195,
        "push"  => 3208,
        "res"   => 3221,
        "ret"   => 4054,
        "reti"  => 4072,
        "retn"  => 4074,
        "rl"    => 4076,
        "rla"   => 4185,
        "rlc"   => 4187,
        "rlca"  => 4290,
        "rld"   => 4292,
        "rr"    => 4294,
        "rra"   => 4403,
        "rrc"   => 4405,
        "rrca"  => 4508,
        "rrd"   => 4510,
        "rst"   => 4512,
        "sbc"   => 4543,
        "scf"   => 4624,
        "set"   => 4626,
        "sla"   => 5459,
        "sli"   => 5568,
        "sll"   => 5677,
        "sra"   => 5786,
        "srl"   => 5895,
        "stop"  => 6004,
        "sub"   => 6006,
        "xor"   => 6085,
    },
    # [1] "adc"
    {
        "a"     => 2,
        "hl"    => 72,
    },
    # [2] "adc a"
    {
        ","     => 3,
    },
    # [3] "adc a ,"
    {
        "("     => 4,
        "N"     => 18,
        "["     => 20,
        "a"     => 34,
        "b"     => 36,
        "c"     => 38,
        "d"     => 40,
        "e"     => 42,
        "h"     => 44,
        "hx"    => 46,
        "hy"    => 48,
        "ixh"   => 50,
        "ixl"   => 52,
        "iyh"   => 54,
        "iyl"   => 56,
        "l"     => 58,
        "lx"    => 60,
        "ly"    => 62,
        "xh"    => 64,
        "xl"    => 66,
        "yh"    => 68,
        "yl"    => 70,
    },
    # [4] "adc a , ("
    {
        "hl"    => 5,
        "ix"    => 8,
        "iy"    => 13,
    },
    # [5] "adc a , ( hl"
    {
        ")"     => 6,
    },
    # [6] "adc a , ( hl )"
    {
        ""      => [ \&_parse_end, 7 ],
    },
    # [7] "adc a , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x8e], $_[0]) }, 0 ],
    },
    # [8] "adc a , ( ix"
    {
        "+"     => 9,
    },
    # [9] "adc a , ( ix +"
    {
        "DIS"   => 10,
    },
    # [10] "adc a , ( ix + DIS"
    {
        ")"     => 11,
    },
    # [11] "adc a , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 12 ],
    },
    # [12] "adc a , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8e, "DIS"], $_[0]) }, 0 ],
    },
    # [13] "adc a , ( iy"
    {
        "+"     => 14,
    },
    # [14] "adc a , ( iy +"
    {
        "DIS"   => 15,
    },
    # [15] "adc a , ( iy + DIS"
    {
        ")"     => 16,
    },
    # [16] "adc a , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 17 ],
    },
    # [17] "adc a , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8e, "DIS"], $_[0]) }, 0 ],
    },
    # [18] "adc a , N"
    {
        ""      => [ \&_parse_end, 19 ],
    },
    # [19] "adc a , N &_parse_end"
    {
        ""      => [ sub { return ([0xce, "N"], $_[0]) }, 0 ],
    },
    # [20] "adc a , ["
    {
        "hl"    => 21,
        "ix"    => 24,
        "iy"    => 29,
    },
    # [21] "adc a , [ hl"
    {
        "]"     => 22,
    },
    # [22] "adc a , [ hl ]"
    {
        ""      => [ \&_parse_end, 23 ],
    },
    # [23] "adc a , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x8e], $_[0]) }, 0 ],
    },
    # [24] "adc a , [ ix"
    {
        "+"     => 25,
    },
    # [25] "adc a , [ ix +"
    {
        "DIS"   => 26,
    },
    # [26] "adc a , [ ix + DIS"
    {
        "]"     => 27,
    },
    # [27] "adc a , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 28 ],
    },
    # [28] "adc a , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8e, "DIS"], $_[0]) }, 0 ],
    },
    # [29] "adc a , [ iy"
    {
        "+"     => 30,
    },
    # [30] "adc a , [ iy +"
    {
        "DIS"   => 31,
    },
    # [31] "adc a , [ iy + DIS"
    {
        "]"     => 32,
    },
    # [32] "adc a , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 33 ],
    },
    # [33] "adc a , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8e, "DIS"], $_[0]) }, 0 ],
    },
    # [34] "adc a , a"
    {
        ""      => [ \&_parse_end, 35 ],
    },
    # [35] "adc a , a &_parse_end"
    {
        ""      => [ sub { return ([0x8f], $_[0]) }, 0 ],
    },
    # [36] "adc a , b"
    {
        ""      => [ \&_parse_end, 37 ],
    },
    # [37] "adc a , b &_parse_end"
    {
        ""      => [ sub { return ([0x88], $_[0]) }, 0 ],
    },
    # [38] "adc a , c"
    {
        ""      => [ \&_parse_end, 39 ],
    },
    # [39] "adc a , c &_parse_end"
    {
        ""      => [ sub { return ([0x89], $_[0]) }, 0 ],
    },
    # [40] "adc a , d"
    {
        ""      => [ \&_parse_end, 41 ],
    },
    # [41] "adc a , d &_parse_end"
    {
        ""      => [ sub { return ([0x8a], $_[0]) }, 0 ],
    },
    # [42] "adc a , e"
    {
        ""      => [ \&_parse_end, 43 ],
    },
    # [43] "adc a , e &_parse_end"
    {
        ""      => [ sub { return ([0x8b], $_[0]) }, 0 ],
    },
    # [44] "adc a , h"
    {
        ""      => [ \&_parse_end, 45 ],
    },
    # [45] "adc a , h &_parse_end"
    {
        ""      => [ sub { return ([0x8c], $_[0]) }, 0 ],
    },
    # [46] "adc a , hx"
    {
        ""      => [ \&_parse_end, 47 ],
    },
    # [47] "adc a , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8c], $_[0]) }, 0 ],
    },
    # [48] "adc a , hy"
    {
        ""      => [ \&_parse_end, 49 ],
    },
    # [49] "adc a , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8c], $_[0]) }, 0 ],
    },
    # [50] "adc a , ixh"
    {
        ""      => [ \&_parse_end, 51 ],
    },
    # [51] "adc a , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8c], $_[0]) }, 0 ],
    },
    # [52] "adc a , ixl"
    {
        ""      => [ \&_parse_end, 53 ],
    },
    # [53] "adc a , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8d], $_[0]) }, 0 ],
    },
    # [54] "adc a , iyh"
    {
        ""      => [ \&_parse_end, 55 ],
    },
    # [55] "adc a , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8c], $_[0]) }, 0 ],
    },
    # [56] "adc a , iyl"
    {
        ""      => [ \&_parse_end, 57 ],
    },
    # [57] "adc a , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8d], $_[0]) }, 0 ],
    },
    # [58] "adc a , l"
    {
        ""      => [ \&_parse_end, 59 ],
    },
    # [59] "adc a , l &_parse_end"
    {
        ""      => [ sub { return ([0x8d], $_[0]) }, 0 ],
    },
    # [60] "adc a , lx"
    {
        ""      => [ \&_parse_end, 61 ],
    },
    # [61] "adc a , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8d], $_[0]) }, 0 ],
    },
    # [62] "adc a , ly"
    {
        ""      => [ \&_parse_end, 63 ],
    },
    # [63] "adc a , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8d], $_[0]) }, 0 ],
    },
    # [64] "adc a , xh"
    {
        ""      => [ \&_parse_end, 65 ],
    },
    # [65] "adc a , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8c], $_[0]) }, 0 ],
    },
    # [66] "adc a , xl"
    {
        ""      => [ \&_parse_end, 67 ],
    },
    # [67] "adc a , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x8d], $_[0]) }, 0 ],
    },
    # [68] "adc a , yh"
    {
        ""      => [ \&_parse_end, 69 ],
    },
    # [69] "adc a , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8c], $_[0]) }, 0 ],
    },
    # [70] "adc a , yl"
    {
        ""      => [ \&_parse_end, 71 ],
    },
    # [71] "adc a , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x8d], $_[0]) }, 0 ],
    },
    # [72] "adc hl"
    {
        ","     => 73,
    },
    # [73] "adc hl ,"
    {
        "bc"    => 74,
        "de"    => 76,
        "hl"    => 78,
        "sp"    => 80,
    },
    # [74] "adc hl , bc"
    {
        ""      => [ \&_parse_end, 75 ],
    },
    # [75] "adc hl , bc &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x4a], $_[0]) }, 0 ],
    },
    # [76] "adc hl , de"
    {
        ""      => [ \&_parse_end, 77 ],
    },
    # [77] "adc hl , de &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x5a], $_[0]) }, 0 ],
    },
    # [78] "adc hl , hl"
    {
        ""      => [ \&_parse_end, 79 ],
    },
    # [79] "adc hl , hl &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x6a], $_[0]) }, 0 ],
    },
    # [80] "adc hl , sp"
    {
        ""      => [ \&_parse_end, 81 ],
    },
    # [81] "adc hl , sp &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x7a], $_[0]) }, 0 ],
    },
    # [82] "add"
    {
        "a"     => 83,
        "hl"    => 153,
        "ix"    => 163,
        "iy"    => 173,
    },
    # [83] "add a"
    {
        ","     => 84,
    },
    # [84] "add a ,"
    {
        "("     => 85,
        "N"     => 99,
        "["     => 101,
        "a"     => 115,
        "b"     => 117,
        "c"     => 119,
        "d"     => 121,
        "e"     => 123,
        "h"     => 125,
        "hx"    => 127,
        "hy"    => 129,
        "ixh"   => 131,
        "ixl"   => 133,
        "iyh"   => 135,
        "iyl"   => 137,
        "l"     => 139,
        "lx"    => 141,
        "ly"    => 143,
        "xh"    => 145,
        "xl"    => 147,
        "yh"    => 149,
        "yl"    => 151,
    },
    # [85] "add a , ("
    {
        "hl"    => 86,
        "ix"    => 89,
        "iy"    => 94,
    },
    # [86] "add a , ( hl"
    {
        ")"     => 87,
    },
    # [87] "add a , ( hl )"
    {
        ""      => [ \&_parse_end, 88 ],
    },
    # [88] "add a , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x86], $_[0]) }, 0 ],
    },
    # [89] "add a , ( ix"
    {
        "+"     => 90,
    },
    # [90] "add a , ( ix +"
    {
        "DIS"   => 91,
    },
    # [91] "add a , ( ix + DIS"
    {
        ")"     => 92,
    },
    # [92] "add a , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 93 ],
    },
    # [93] "add a , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x86, "DIS"], $_[0]) }, 0 ],
    },
    # [94] "add a , ( iy"
    {
        "+"     => 95,
    },
    # [95] "add a , ( iy +"
    {
        "DIS"   => 96,
    },
    # [96] "add a , ( iy + DIS"
    {
        ")"     => 97,
    },
    # [97] "add a , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 98 ],
    },
    # [98] "add a , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x86, "DIS"], $_[0]) }, 0 ],
    },
    # [99] "add a , N"
    {
        ""      => [ \&_parse_end, 100 ],
    },
    # [100] "add a , N &_parse_end"
    {
        ""      => [ sub { return ([0xc6, "N"], $_[0]) }, 0 ],
    },
    # [101] "add a , ["
    {
        "hl"    => 102,
        "ix"    => 105,
        "iy"    => 110,
    },
    # [102] "add a , [ hl"
    {
        "]"     => 103,
    },
    # [103] "add a , [ hl ]"
    {
        ""      => [ \&_parse_end, 104 ],
    },
    # [104] "add a , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x86], $_[0]) }, 0 ],
    },
    # [105] "add a , [ ix"
    {
        "+"     => 106,
    },
    # [106] "add a , [ ix +"
    {
        "DIS"   => 107,
    },
    # [107] "add a , [ ix + DIS"
    {
        "]"     => 108,
    },
    # [108] "add a , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 109 ],
    },
    # [109] "add a , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x86, "DIS"], $_[0]) }, 0 ],
    },
    # [110] "add a , [ iy"
    {
        "+"     => 111,
    },
    # [111] "add a , [ iy +"
    {
        "DIS"   => 112,
    },
    # [112] "add a , [ iy + DIS"
    {
        "]"     => 113,
    },
    # [113] "add a , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 114 ],
    },
    # [114] "add a , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x86, "DIS"], $_[0]) }, 0 ],
    },
    # [115] "add a , a"
    {
        ""      => [ \&_parse_end, 116 ],
    },
    # [116] "add a , a &_parse_end"
    {
        ""      => [ sub { return ([0x87], $_[0]) }, 0 ],
    },
    # [117] "add a , b"
    {
        ""      => [ \&_parse_end, 118 ],
    },
    # [118] "add a , b &_parse_end"
    {
        ""      => [ sub { return ([0x80], $_[0]) }, 0 ],
    },
    # [119] "add a , c"
    {
        ""      => [ \&_parse_end, 120 ],
    },
    # [120] "add a , c &_parse_end"
    {
        ""      => [ sub { return ([0x81], $_[0]) }, 0 ],
    },
    # [121] "add a , d"
    {
        ""      => [ \&_parse_end, 122 ],
    },
    # [122] "add a , d &_parse_end"
    {
        ""      => [ sub { return ([0x82], $_[0]) }, 0 ],
    },
    # [123] "add a , e"
    {
        ""      => [ \&_parse_end, 124 ],
    },
    # [124] "add a , e &_parse_end"
    {
        ""      => [ sub { return ([0x83], $_[0]) }, 0 ],
    },
    # [125] "add a , h"
    {
        ""      => [ \&_parse_end, 126 ],
    },
    # [126] "add a , h &_parse_end"
    {
        ""      => [ sub { return ([0x84], $_[0]) }, 0 ],
    },
    # [127] "add a , hx"
    {
        ""      => [ \&_parse_end, 128 ],
    },
    # [128] "add a , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x84], $_[0]) }, 0 ],
    },
    # [129] "add a , hy"
    {
        ""      => [ \&_parse_end, 130 ],
    },
    # [130] "add a , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x84], $_[0]) }, 0 ],
    },
    # [131] "add a , ixh"
    {
        ""      => [ \&_parse_end, 132 ],
    },
    # [132] "add a , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x84], $_[0]) }, 0 ],
    },
    # [133] "add a , ixl"
    {
        ""      => [ \&_parse_end, 134 ],
    },
    # [134] "add a , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x85], $_[0]) }, 0 ],
    },
    # [135] "add a , iyh"
    {
        ""      => [ \&_parse_end, 136 ],
    },
    # [136] "add a , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x84], $_[0]) }, 0 ],
    },
    # [137] "add a , iyl"
    {
        ""      => [ \&_parse_end, 138 ],
    },
    # [138] "add a , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x85], $_[0]) }, 0 ],
    },
    # [139] "add a , l"
    {
        ""      => [ \&_parse_end, 140 ],
    },
    # [140] "add a , l &_parse_end"
    {
        ""      => [ sub { return ([0x85], $_[0]) }, 0 ],
    },
    # [141] "add a , lx"
    {
        ""      => [ \&_parse_end, 142 ],
    },
    # [142] "add a , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x85], $_[0]) }, 0 ],
    },
    # [143] "add a , ly"
    {
        ""      => [ \&_parse_end, 144 ],
    },
    # [144] "add a , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x85], $_[0]) }, 0 ],
    },
    # [145] "add a , xh"
    {
        ""      => [ \&_parse_end, 146 ],
    },
    # [146] "add a , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x84], $_[0]) }, 0 ],
    },
    # [147] "add a , xl"
    {
        ""      => [ \&_parse_end, 148 ],
    },
    # [148] "add a , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x85], $_[0]) }, 0 ],
    },
    # [149] "add a , yh"
    {
        ""      => [ \&_parse_end, 150 ],
    },
    # [150] "add a , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x84], $_[0]) }, 0 ],
    },
    # [151] "add a , yl"
    {
        ""      => [ \&_parse_end, 152 ],
    },
    # [152] "add a , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x85], $_[0]) }, 0 ],
    },
    # [153] "add hl"
    {
        ","     => 154,
    },
    # [154] "add hl ,"
    {
        "bc"    => 155,
        "de"    => 157,
        "hl"    => 159,
        "sp"    => 161,
    },
    # [155] "add hl , bc"
    {
        ""      => [ \&_parse_end, 156 ],
    },
    # [156] "add hl , bc &_parse_end"
    {
        ""      => [ sub { return ([0x09], $_[0]) }, 0 ],
    },
    # [157] "add hl , de"
    {
        ""      => [ \&_parse_end, 158 ],
    },
    # [158] "add hl , de &_parse_end"
    {
        ""      => [ sub { return ([0x19], $_[0]) }, 0 ],
    },
    # [159] "add hl , hl"
    {
        ""      => [ \&_parse_end, 160 ],
    },
    # [160] "add hl , hl &_parse_end"
    {
        ""      => [ sub { return ([0x29], $_[0]) }, 0 ],
    },
    # [161] "add hl , sp"
    {
        ""      => [ \&_parse_end, 162 ],
    },
    # [162] "add hl , sp &_parse_end"
    {
        ""      => [ sub { return ([0x39], $_[0]) }, 0 ],
    },
    # [163] "add ix"
    {
        ","     => 164,
    },
    # [164] "add ix ,"
    {
        "bc"    => 165,
        "de"    => 167,
        "ix"    => 169,
        "sp"    => 171,
    },
    # [165] "add ix , bc"
    {
        ""      => [ \&_parse_end, 166 ],
    },
    # [166] "add ix , bc &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x09], $_[0]) }, 0 ],
    },
    # [167] "add ix , de"
    {
        ""      => [ \&_parse_end, 168 ],
    },
    # [168] "add ix , de &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x19], $_[0]) }, 0 ],
    },
    # [169] "add ix , ix"
    {
        ""      => [ \&_parse_end, 170 ],
    },
    # [170] "add ix , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x29], $_[0]) }, 0 ],
    },
    # [171] "add ix , sp"
    {
        ""      => [ \&_parse_end, 172 ],
    },
    # [172] "add ix , sp &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x39], $_[0]) }, 0 ],
    },
    # [173] "add iy"
    {
        ","     => 174,
    },
    # [174] "add iy ,"
    {
        "bc"    => 175,
        "de"    => 177,
        "iy"    => 179,
        "sp"    => 181,
    },
    # [175] "add iy , bc"
    {
        ""      => [ \&_parse_end, 176 ],
    },
    # [176] "add iy , bc &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x09], $_[0]) }, 0 ],
    },
    # [177] "add iy , de"
    {
        ""      => [ \&_parse_end, 178 ],
    },
    # [178] "add iy , de &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x19], $_[0]) }, 0 ],
    },
    # [179] "add iy , iy"
    {
        ""      => [ \&_parse_end, 180 ],
    },
    # [180] "add iy , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x29], $_[0]) }, 0 ],
    },
    # [181] "add iy , sp"
    {
        ""      => [ \&_parse_end, 182 ],
    },
    # [182] "add iy , sp &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x39], $_[0]) }, 0 ],
    },
    # [183] "and"
    {
        "("     => 184,
        "N"     => 198,
        "["     => 200,
        "a"     => 214,
        "b"     => 216,
        "c"     => 218,
        "d"     => 220,
        "e"     => 222,
        "h"     => 224,
        "hx"    => 226,
        "hy"    => 228,
        "ixh"   => 230,
        "ixl"   => 232,
        "iyh"   => 234,
        "iyl"   => 236,
        "l"     => 238,
        "lx"    => 240,
        "ly"    => 242,
        "xh"    => 244,
        "xl"    => 246,
        "yh"    => 248,
        "yl"    => 250,
    },
    # [184] "and ("
    {
        "hl"    => 185,
        "ix"    => 188,
        "iy"    => 193,
    },
    # [185] "and ( hl"
    {
        ")"     => 186,
    },
    # [186] "and ( hl )"
    {
        ""      => [ \&_parse_end, 187 ],
    },
    # [187] "and ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xa6], $_[0]) }, 0 ],
    },
    # [188] "and ( ix"
    {
        "+"     => 189,
    },
    # [189] "and ( ix +"
    {
        "DIS"   => 190,
    },
    # [190] "and ( ix + DIS"
    {
        ")"     => 191,
    },
    # [191] "and ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 192 ],
    },
    # [192] "and ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa6, "DIS"], $_[0]) }, 0 ],
    },
    # [193] "and ( iy"
    {
        "+"     => 194,
    },
    # [194] "and ( iy +"
    {
        "DIS"   => 195,
    },
    # [195] "and ( iy + DIS"
    {
        ")"     => 196,
    },
    # [196] "and ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 197 ],
    },
    # [197] "and ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa6, "DIS"], $_[0]) }, 0 ],
    },
    # [198] "and N"
    {
        ""      => [ \&_parse_end, 199 ],
    },
    # [199] "and N &_parse_end"
    {
        ""      => [ sub { return ([0xe6, "N"], $_[0]) }, 0 ],
    },
    # [200] "and ["
    {
        "hl"    => 201,
        "ix"    => 204,
        "iy"    => 209,
    },
    # [201] "and [ hl"
    {
        "]"     => 202,
    },
    # [202] "and [ hl ]"
    {
        ""      => [ \&_parse_end, 203 ],
    },
    # [203] "and [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xa6], $_[0]) }, 0 ],
    },
    # [204] "and [ ix"
    {
        "+"     => 205,
    },
    # [205] "and [ ix +"
    {
        "DIS"   => 206,
    },
    # [206] "and [ ix + DIS"
    {
        "]"     => 207,
    },
    # [207] "and [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 208 ],
    },
    # [208] "and [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa6, "DIS"], $_[0]) }, 0 ],
    },
    # [209] "and [ iy"
    {
        "+"     => 210,
    },
    # [210] "and [ iy +"
    {
        "DIS"   => 211,
    },
    # [211] "and [ iy + DIS"
    {
        "]"     => 212,
    },
    # [212] "and [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 213 ],
    },
    # [213] "and [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa6, "DIS"], $_[0]) }, 0 ],
    },
    # [214] "and a"
    {
        ""      => [ \&_parse_end, 215 ],
    },
    # [215] "and a &_parse_end"
    {
        ""      => [ sub { return ([0xa7], $_[0]) }, 0 ],
    },
    # [216] "and b"
    {
        ""      => [ \&_parse_end, 217 ],
    },
    # [217] "and b &_parse_end"
    {
        ""      => [ sub { return ([0xa0], $_[0]) }, 0 ],
    },
    # [218] "and c"
    {
        ""      => [ \&_parse_end, 219 ],
    },
    # [219] "and c &_parse_end"
    {
        ""      => [ sub { return ([0xa1], $_[0]) }, 0 ],
    },
    # [220] "and d"
    {
        ""      => [ \&_parse_end, 221 ],
    },
    # [221] "and d &_parse_end"
    {
        ""      => [ sub { return ([0xa2], $_[0]) }, 0 ],
    },
    # [222] "and e"
    {
        ""      => [ \&_parse_end, 223 ],
    },
    # [223] "and e &_parse_end"
    {
        ""      => [ sub { return ([0xa3], $_[0]) }, 0 ],
    },
    # [224] "and h"
    {
        ""      => [ \&_parse_end, 225 ],
    },
    # [225] "and h &_parse_end"
    {
        ""      => [ sub { return ([0xa4], $_[0]) }, 0 ],
    },
    # [226] "and hx"
    {
        ""      => [ \&_parse_end, 227 ],
    },
    # [227] "and hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa4], $_[0]) }, 0 ],
    },
    # [228] "and hy"
    {
        ""      => [ \&_parse_end, 229 ],
    },
    # [229] "and hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa4], $_[0]) }, 0 ],
    },
    # [230] "and ixh"
    {
        ""      => [ \&_parse_end, 231 ],
    },
    # [231] "and ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa4], $_[0]) }, 0 ],
    },
    # [232] "and ixl"
    {
        ""      => [ \&_parse_end, 233 ],
    },
    # [233] "and ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa5], $_[0]) }, 0 ],
    },
    # [234] "and iyh"
    {
        ""      => [ \&_parse_end, 235 ],
    },
    # [235] "and iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa4], $_[0]) }, 0 ],
    },
    # [236] "and iyl"
    {
        ""      => [ \&_parse_end, 237 ],
    },
    # [237] "and iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa5], $_[0]) }, 0 ],
    },
    # [238] "and l"
    {
        ""      => [ \&_parse_end, 239 ],
    },
    # [239] "and l &_parse_end"
    {
        ""      => [ sub { return ([0xa5], $_[0]) }, 0 ],
    },
    # [240] "and lx"
    {
        ""      => [ \&_parse_end, 241 ],
    },
    # [241] "and lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa5], $_[0]) }, 0 ],
    },
    # [242] "and ly"
    {
        ""      => [ \&_parse_end, 243 ],
    },
    # [243] "and ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa5], $_[0]) }, 0 ],
    },
    # [244] "and xh"
    {
        ""      => [ \&_parse_end, 245 ],
    },
    # [245] "and xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa4], $_[0]) }, 0 ],
    },
    # [246] "and xl"
    {
        ""      => [ \&_parse_end, 247 ],
    },
    # [247] "and xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xa5], $_[0]) }, 0 ],
    },
    # [248] "and yh"
    {
        ""      => [ \&_parse_end, 249 ],
    },
    # [249] "and yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa4], $_[0]) }, 0 ],
    },
    # [250] "and yl"
    {
        ""      => [ \&_parse_end, 251 ],
    },
    # [251] "and yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xa5], $_[0]) }, 0 ],
    },
    # [252] "bit"
    {
        0       => 253,
        1       => 297,
        2       => 341,
        3       => 385,
        4       => 429,
        5       => 473,
        6       => 517,
        7       => 561,
    },
    # [253] "bit 0"
    {
        ","     => 254,
    },
    # [254] "bit 0 ,"
    {
        "("     => 255,
        "["     => 269,
        "a"     => 283,
        "b"     => 285,
        "c"     => 287,
        "d"     => 289,
        "e"     => 291,
        "h"     => 293,
        "l"     => 295,
    },
    # [255] "bit 0 , ("
    {
        "hl"    => 256,
        "ix"    => 259,
        "iy"    => 264,
    },
    # [256] "bit 0 , ( hl"
    {
        ")"     => 257,
    },
    # [257] "bit 0 , ( hl )"
    {
        ""      => [ \&_parse_end, 258 ],
    },
    # [258] "bit 0 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x46], $_[0]) }, 0 ],
    },
    # [259] "bit 0 , ( ix"
    {
        "+"     => 260,
    },
    # [260] "bit 0 , ( ix +"
    {
        "DIS"   => 261,
    },
    # [261] "bit 0 , ( ix + DIS"
    {
        ")"     => 262,
    },
    # [262] "bit 0 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 263 ],
    },
    # [263] "bit 0 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x46], $_[0]) }, 0 ],
    },
    # [264] "bit 0 , ( iy"
    {
        "+"     => 265,
    },
    # [265] "bit 0 , ( iy +"
    {
        "DIS"   => 266,
    },
    # [266] "bit 0 , ( iy + DIS"
    {
        ")"     => 267,
    },
    # [267] "bit 0 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 268 ],
    },
    # [268] "bit 0 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x46], $_[0]) }, 0 ],
    },
    # [269] "bit 0 , ["
    {
        "hl"    => 270,
        "ix"    => 273,
        "iy"    => 278,
    },
    # [270] "bit 0 , [ hl"
    {
        "]"     => 271,
    },
    # [271] "bit 0 , [ hl ]"
    {
        ""      => [ \&_parse_end, 272 ],
    },
    # [272] "bit 0 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x46], $_[0]) }, 0 ],
    },
    # [273] "bit 0 , [ ix"
    {
        "+"     => 274,
    },
    # [274] "bit 0 , [ ix +"
    {
        "DIS"   => 275,
    },
    # [275] "bit 0 , [ ix + DIS"
    {
        "]"     => 276,
    },
    # [276] "bit 0 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 277 ],
    },
    # [277] "bit 0 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x46], $_[0]) }, 0 ],
    },
    # [278] "bit 0 , [ iy"
    {
        "+"     => 279,
    },
    # [279] "bit 0 , [ iy +"
    {
        "DIS"   => 280,
    },
    # [280] "bit 0 , [ iy + DIS"
    {
        "]"     => 281,
    },
    # [281] "bit 0 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 282 ],
    },
    # [282] "bit 0 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x46], $_[0]) }, 0 ],
    },
    # [283] "bit 0 , a"
    {
        ""      => [ \&_parse_end, 284 ],
    },
    # [284] "bit 0 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x47], $_[0]) }, 0 ],
    },
    # [285] "bit 0 , b"
    {
        ""      => [ \&_parse_end, 286 ],
    },
    # [286] "bit 0 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x40], $_[0]) }, 0 ],
    },
    # [287] "bit 0 , c"
    {
        ""      => [ \&_parse_end, 288 ],
    },
    # [288] "bit 0 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x41], $_[0]) }, 0 ],
    },
    # [289] "bit 0 , d"
    {
        ""      => [ \&_parse_end, 290 ],
    },
    # [290] "bit 0 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x42], $_[0]) }, 0 ],
    },
    # [291] "bit 0 , e"
    {
        ""      => [ \&_parse_end, 292 ],
    },
    # [292] "bit 0 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x43], $_[0]) }, 0 ],
    },
    # [293] "bit 0 , h"
    {
        ""      => [ \&_parse_end, 294 ],
    },
    # [294] "bit 0 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x44], $_[0]) }, 0 ],
    },
    # [295] "bit 0 , l"
    {
        ""      => [ \&_parse_end, 296 ],
    },
    # [296] "bit 0 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x45], $_[0]) }, 0 ],
    },
    # [297] "bit 1"
    {
        ","     => 298,
    },
    # [298] "bit 1 ,"
    {
        "("     => 299,
        "["     => 313,
        "a"     => 327,
        "b"     => 329,
        "c"     => 331,
        "d"     => 333,
        "e"     => 335,
        "h"     => 337,
        "l"     => 339,
    },
    # [299] "bit 1 , ("
    {
        "hl"    => 300,
        "ix"    => 303,
        "iy"    => 308,
    },
    # [300] "bit 1 , ( hl"
    {
        ")"     => 301,
    },
    # [301] "bit 1 , ( hl )"
    {
        ""      => [ \&_parse_end, 302 ],
    },
    # [302] "bit 1 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4e], $_[0]) }, 0 ],
    },
    # [303] "bit 1 , ( ix"
    {
        "+"     => 304,
    },
    # [304] "bit 1 , ( ix +"
    {
        "DIS"   => 305,
    },
    # [305] "bit 1 , ( ix + DIS"
    {
        ")"     => 306,
    },
    # [306] "bit 1 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 307 ],
    },
    # [307] "bit 1 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x4e], $_[0]) }, 0 ],
    },
    # [308] "bit 1 , ( iy"
    {
        "+"     => 309,
    },
    # [309] "bit 1 , ( iy +"
    {
        "DIS"   => 310,
    },
    # [310] "bit 1 , ( iy + DIS"
    {
        ")"     => 311,
    },
    # [311] "bit 1 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 312 ],
    },
    # [312] "bit 1 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x4e], $_[0]) }, 0 ],
    },
    # [313] "bit 1 , ["
    {
        "hl"    => 314,
        "ix"    => 317,
        "iy"    => 322,
    },
    # [314] "bit 1 , [ hl"
    {
        "]"     => 315,
    },
    # [315] "bit 1 , [ hl ]"
    {
        ""      => [ \&_parse_end, 316 ],
    },
    # [316] "bit 1 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4e], $_[0]) }, 0 ],
    },
    # [317] "bit 1 , [ ix"
    {
        "+"     => 318,
    },
    # [318] "bit 1 , [ ix +"
    {
        "DIS"   => 319,
    },
    # [319] "bit 1 , [ ix + DIS"
    {
        "]"     => 320,
    },
    # [320] "bit 1 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 321 ],
    },
    # [321] "bit 1 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x4e], $_[0]) }, 0 ],
    },
    # [322] "bit 1 , [ iy"
    {
        "+"     => 323,
    },
    # [323] "bit 1 , [ iy +"
    {
        "DIS"   => 324,
    },
    # [324] "bit 1 , [ iy + DIS"
    {
        "]"     => 325,
    },
    # [325] "bit 1 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 326 ],
    },
    # [326] "bit 1 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x4e], $_[0]) }, 0 ],
    },
    # [327] "bit 1 , a"
    {
        ""      => [ \&_parse_end, 328 ],
    },
    # [328] "bit 1 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4f], $_[0]) }, 0 ],
    },
    # [329] "bit 1 , b"
    {
        ""      => [ \&_parse_end, 330 ],
    },
    # [330] "bit 1 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x48], $_[0]) }, 0 ],
    },
    # [331] "bit 1 , c"
    {
        ""      => [ \&_parse_end, 332 ],
    },
    # [332] "bit 1 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x49], $_[0]) }, 0 ],
    },
    # [333] "bit 1 , d"
    {
        ""      => [ \&_parse_end, 334 ],
    },
    # [334] "bit 1 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4a], $_[0]) }, 0 ],
    },
    # [335] "bit 1 , e"
    {
        ""      => [ \&_parse_end, 336 ],
    },
    # [336] "bit 1 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4b], $_[0]) }, 0 ],
    },
    # [337] "bit 1 , h"
    {
        ""      => [ \&_parse_end, 338 ],
    },
    # [338] "bit 1 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4c], $_[0]) }, 0 ],
    },
    # [339] "bit 1 , l"
    {
        ""      => [ \&_parse_end, 340 ],
    },
    # [340] "bit 1 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x4d], $_[0]) }, 0 ],
    },
    # [341] "bit 2"
    {
        ","     => 342,
    },
    # [342] "bit 2 ,"
    {
        "("     => 343,
        "["     => 357,
        "a"     => 371,
        "b"     => 373,
        "c"     => 375,
        "d"     => 377,
        "e"     => 379,
        "h"     => 381,
        "l"     => 383,
    },
    # [343] "bit 2 , ("
    {
        "hl"    => 344,
        "ix"    => 347,
        "iy"    => 352,
    },
    # [344] "bit 2 , ( hl"
    {
        ")"     => 345,
    },
    # [345] "bit 2 , ( hl )"
    {
        ""      => [ \&_parse_end, 346 ],
    },
    # [346] "bit 2 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x56], $_[0]) }, 0 ],
    },
    # [347] "bit 2 , ( ix"
    {
        "+"     => 348,
    },
    # [348] "bit 2 , ( ix +"
    {
        "DIS"   => 349,
    },
    # [349] "bit 2 , ( ix + DIS"
    {
        ")"     => 350,
    },
    # [350] "bit 2 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 351 ],
    },
    # [351] "bit 2 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x56], $_[0]) }, 0 ],
    },
    # [352] "bit 2 , ( iy"
    {
        "+"     => 353,
    },
    # [353] "bit 2 , ( iy +"
    {
        "DIS"   => 354,
    },
    # [354] "bit 2 , ( iy + DIS"
    {
        ")"     => 355,
    },
    # [355] "bit 2 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 356 ],
    },
    # [356] "bit 2 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x56], $_[0]) }, 0 ],
    },
    # [357] "bit 2 , ["
    {
        "hl"    => 358,
        "ix"    => 361,
        "iy"    => 366,
    },
    # [358] "bit 2 , [ hl"
    {
        "]"     => 359,
    },
    # [359] "bit 2 , [ hl ]"
    {
        ""      => [ \&_parse_end, 360 ],
    },
    # [360] "bit 2 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x56], $_[0]) }, 0 ],
    },
    # [361] "bit 2 , [ ix"
    {
        "+"     => 362,
    },
    # [362] "bit 2 , [ ix +"
    {
        "DIS"   => 363,
    },
    # [363] "bit 2 , [ ix + DIS"
    {
        "]"     => 364,
    },
    # [364] "bit 2 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 365 ],
    },
    # [365] "bit 2 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x56], $_[0]) }, 0 ],
    },
    # [366] "bit 2 , [ iy"
    {
        "+"     => 367,
    },
    # [367] "bit 2 , [ iy +"
    {
        "DIS"   => 368,
    },
    # [368] "bit 2 , [ iy + DIS"
    {
        "]"     => 369,
    },
    # [369] "bit 2 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 370 ],
    },
    # [370] "bit 2 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x56], $_[0]) }, 0 ],
    },
    # [371] "bit 2 , a"
    {
        ""      => [ \&_parse_end, 372 ],
    },
    # [372] "bit 2 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x57], $_[0]) }, 0 ],
    },
    # [373] "bit 2 , b"
    {
        ""      => [ \&_parse_end, 374 ],
    },
    # [374] "bit 2 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x50], $_[0]) }, 0 ],
    },
    # [375] "bit 2 , c"
    {
        ""      => [ \&_parse_end, 376 ],
    },
    # [376] "bit 2 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x51], $_[0]) }, 0 ],
    },
    # [377] "bit 2 , d"
    {
        ""      => [ \&_parse_end, 378 ],
    },
    # [378] "bit 2 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x52], $_[0]) }, 0 ],
    },
    # [379] "bit 2 , e"
    {
        ""      => [ \&_parse_end, 380 ],
    },
    # [380] "bit 2 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x53], $_[0]) }, 0 ],
    },
    # [381] "bit 2 , h"
    {
        ""      => [ \&_parse_end, 382 ],
    },
    # [382] "bit 2 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x54], $_[0]) }, 0 ],
    },
    # [383] "bit 2 , l"
    {
        ""      => [ \&_parse_end, 384 ],
    },
    # [384] "bit 2 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x55], $_[0]) }, 0 ],
    },
    # [385] "bit 3"
    {
        ","     => 386,
    },
    # [386] "bit 3 ,"
    {
        "("     => 387,
        "["     => 401,
        "a"     => 415,
        "b"     => 417,
        "c"     => 419,
        "d"     => 421,
        "e"     => 423,
        "h"     => 425,
        "l"     => 427,
    },
    # [387] "bit 3 , ("
    {
        "hl"    => 388,
        "ix"    => 391,
        "iy"    => 396,
    },
    # [388] "bit 3 , ( hl"
    {
        ")"     => 389,
    },
    # [389] "bit 3 , ( hl )"
    {
        ""      => [ \&_parse_end, 390 ],
    },
    # [390] "bit 3 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5e], $_[0]) }, 0 ],
    },
    # [391] "bit 3 , ( ix"
    {
        "+"     => 392,
    },
    # [392] "bit 3 , ( ix +"
    {
        "DIS"   => 393,
    },
    # [393] "bit 3 , ( ix + DIS"
    {
        ")"     => 394,
    },
    # [394] "bit 3 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 395 ],
    },
    # [395] "bit 3 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x5e], $_[0]) }, 0 ],
    },
    # [396] "bit 3 , ( iy"
    {
        "+"     => 397,
    },
    # [397] "bit 3 , ( iy +"
    {
        "DIS"   => 398,
    },
    # [398] "bit 3 , ( iy + DIS"
    {
        ")"     => 399,
    },
    # [399] "bit 3 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 400 ],
    },
    # [400] "bit 3 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x5e], $_[0]) }, 0 ],
    },
    # [401] "bit 3 , ["
    {
        "hl"    => 402,
        "ix"    => 405,
        "iy"    => 410,
    },
    # [402] "bit 3 , [ hl"
    {
        "]"     => 403,
    },
    # [403] "bit 3 , [ hl ]"
    {
        ""      => [ \&_parse_end, 404 ],
    },
    # [404] "bit 3 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5e], $_[0]) }, 0 ],
    },
    # [405] "bit 3 , [ ix"
    {
        "+"     => 406,
    },
    # [406] "bit 3 , [ ix +"
    {
        "DIS"   => 407,
    },
    # [407] "bit 3 , [ ix + DIS"
    {
        "]"     => 408,
    },
    # [408] "bit 3 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 409 ],
    },
    # [409] "bit 3 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x5e], $_[0]) }, 0 ],
    },
    # [410] "bit 3 , [ iy"
    {
        "+"     => 411,
    },
    # [411] "bit 3 , [ iy +"
    {
        "DIS"   => 412,
    },
    # [412] "bit 3 , [ iy + DIS"
    {
        "]"     => 413,
    },
    # [413] "bit 3 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 414 ],
    },
    # [414] "bit 3 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x5e], $_[0]) }, 0 ],
    },
    # [415] "bit 3 , a"
    {
        ""      => [ \&_parse_end, 416 ],
    },
    # [416] "bit 3 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5f], $_[0]) }, 0 ],
    },
    # [417] "bit 3 , b"
    {
        ""      => [ \&_parse_end, 418 ],
    },
    # [418] "bit 3 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x58], $_[0]) }, 0 ],
    },
    # [419] "bit 3 , c"
    {
        ""      => [ \&_parse_end, 420 ],
    },
    # [420] "bit 3 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x59], $_[0]) }, 0 ],
    },
    # [421] "bit 3 , d"
    {
        ""      => [ \&_parse_end, 422 ],
    },
    # [422] "bit 3 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5a], $_[0]) }, 0 ],
    },
    # [423] "bit 3 , e"
    {
        ""      => [ \&_parse_end, 424 ],
    },
    # [424] "bit 3 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5b], $_[0]) }, 0 ],
    },
    # [425] "bit 3 , h"
    {
        ""      => [ \&_parse_end, 426 ],
    },
    # [426] "bit 3 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5c], $_[0]) }, 0 ],
    },
    # [427] "bit 3 , l"
    {
        ""      => [ \&_parse_end, 428 ],
    },
    # [428] "bit 3 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x5d], $_[0]) }, 0 ],
    },
    # [429] "bit 4"
    {
        ","     => 430,
    },
    # [430] "bit 4 ,"
    {
        "("     => 431,
        "["     => 445,
        "a"     => 459,
        "b"     => 461,
        "c"     => 463,
        "d"     => 465,
        "e"     => 467,
        "h"     => 469,
        "l"     => 471,
    },
    # [431] "bit 4 , ("
    {
        "hl"    => 432,
        "ix"    => 435,
        "iy"    => 440,
    },
    # [432] "bit 4 , ( hl"
    {
        ")"     => 433,
    },
    # [433] "bit 4 , ( hl )"
    {
        ""      => [ \&_parse_end, 434 ],
    },
    # [434] "bit 4 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x66], $_[0]) }, 0 ],
    },
    # [435] "bit 4 , ( ix"
    {
        "+"     => 436,
    },
    # [436] "bit 4 , ( ix +"
    {
        "DIS"   => 437,
    },
    # [437] "bit 4 , ( ix + DIS"
    {
        ")"     => 438,
    },
    # [438] "bit 4 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 439 ],
    },
    # [439] "bit 4 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x66], $_[0]) }, 0 ],
    },
    # [440] "bit 4 , ( iy"
    {
        "+"     => 441,
    },
    # [441] "bit 4 , ( iy +"
    {
        "DIS"   => 442,
    },
    # [442] "bit 4 , ( iy + DIS"
    {
        ")"     => 443,
    },
    # [443] "bit 4 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 444 ],
    },
    # [444] "bit 4 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x66], $_[0]) }, 0 ],
    },
    # [445] "bit 4 , ["
    {
        "hl"    => 446,
        "ix"    => 449,
        "iy"    => 454,
    },
    # [446] "bit 4 , [ hl"
    {
        "]"     => 447,
    },
    # [447] "bit 4 , [ hl ]"
    {
        ""      => [ \&_parse_end, 448 ],
    },
    # [448] "bit 4 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x66], $_[0]) }, 0 ],
    },
    # [449] "bit 4 , [ ix"
    {
        "+"     => 450,
    },
    # [450] "bit 4 , [ ix +"
    {
        "DIS"   => 451,
    },
    # [451] "bit 4 , [ ix + DIS"
    {
        "]"     => 452,
    },
    # [452] "bit 4 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 453 ],
    },
    # [453] "bit 4 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x66], $_[0]) }, 0 ],
    },
    # [454] "bit 4 , [ iy"
    {
        "+"     => 455,
    },
    # [455] "bit 4 , [ iy +"
    {
        "DIS"   => 456,
    },
    # [456] "bit 4 , [ iy + DIS"
    {
        "]"     => 457,
    },
    # [457] "bit 4 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 458 ],
    },
    # [458] "bit 4 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x66], $_[0]) }, 0 ],
    },
    # [459] "bit 4 , a"
    {
        ""      => [ \&_parse_end, 460 ],
    },
    # [460] "bit 4 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x67], $_[0]) }, 0 ],
    },
    # [461] "bit 4 , b"
    {
        ""      => [ \&_parse_end, 462 ],
    },
    # [462] "bit 4 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x60], $_[0]) }, 0 ],
    },
    # [463] "bit 4 , c"
    {
        ""      => [ \&_parse_end, 464 ],
    },
    # [464] "bit 4 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x61], $_[0]) }, 0 ],
    },
    # [465] "bit 4 , d"
    {
        ""      => [ \&_parse_end, 466 ],
    },
    # [466] "bit 4 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x62], $_[0]) }, 0 ],
    },
    # [467] "bit 4 , e"
    {
        ""      => [ \&_parse_end, 468 ],
    },
    # [468] "bit 4 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x63], $_[0]) }, 0 ],
    },
    # [469] "bit 4 , h"
    {
        ""      => [ \&_parse_end, 470 ],
    },
    # [470] "bit 4 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x64], $_[0]) }, 0 ],
    },
    # [471] "bit 4 , l"
    {
        ""      => [ \&_parse_end, 472 ],
    },
    # [472] "bit 4 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x65], $_[0]) }, 0 ],
    },
    # [473] "bit 5"
    {
        ","     => 474,
    },
    # [474] "bit 5 ,"
    {
        "("     => 475,
        "["     => 489,
        "a"     => 503,
        "b"     => 505,
        "c"     => 507,
        "d"     => 509,
        "e"     => 511,
        "h"     => 513,
        "l"     => 515,
    },
    # [475] "bit 5 , ("
    {
        "hl"    => 476,
        "ix"    => 479,
        "iy"    => 484,
    },
    # [476] "bit 5 , ( hl"
    {
        ")"     => 477,
    },
    # [477] "bit 5 , ( hl )"
    {
        ""      => [ \&_parse_end, 478 ],
    },
    # [478] "bit 5 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6e], $_[0]) }, 0 ],
    },
    # [479] "bit 5 , ( ix"
    {
        "+"     => 480,
    },
    # [480] "bit 5 , ( ix +"
    {
        "DIS"   => 481,
    },
    # [481] "bit 5 , ( ix + DIS"
    {
        ")"     => 482,
    },
    # [482] "bit 5 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 483 ],
    },
    # [483] "bit 5 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x6e], $_[0]) }, 0 ],
    },
    # [484] "bit 5 , ( iy"
    {
        "+"     => 485,
    },
    # [485] "bit 5 , ( iy +"
    {
        "DIS"   => 486,
    },
    # [486] "bit 5 , ( iy + DIS"
    {
        ")"     => 487,
    },
    # [487] "bit 5 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 488 ],
    },
    # [488] "bit 5 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x6e], $_[0]) }, 0 ],
    },
    # [489] "bit 5 , ["
    {
        "hl"    => 490,
        "ix"    => 493,
        "iy"    => 498,
    },
    # [490] "bit 5 , [ hl"
    {
        "]"     => 491,
    },
    # [491] "bit 5 , [ hl ]"
    {
        ""      => [ \&_parse_end, 492 ],
    },
    # [492] "bit 5 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6e], $_[0]) }, 0 ],
    },
    # [493] "bit 5 , [ ix"
    {
        "+"     => 494,
    },
    # [494] "bit 5 , [ ix +"
    {
        "DIS"   => 495,
    },
    # [495] "bit 5 , [ ix + DIS"
    {
        "]"     => 496,
    },
    # [496] "bit 5 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 497 ],
    },
    # [497] "bit 5 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x6e], $_[0]) }, 0 ],
    },
    # [498] "bit 5 , [ iy"
    {
        "+"     => 499,
    },
    # [499] "bit 5 , [ iy +"
    {
        "DIS"   => 500,
    },
    # [500] "bit 5 , [ iy + DIS"
    {
        "]"     => 501,
    },
    # [501] "bit 5 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 502 ],
    },
    # [502] "bit 5 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x6e], $_[0]) }, 0 ],
    },
    # [503] "bit 5 , a"
    {
        ""      => [ \&_parse_end, 504 ],
    },
    # [504] "bit 5 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6f], $_[0]) }, 0 ],
    },
    # [505] "bit 5 , b"
    {
        ""      => [ \&_parse_end, 506 ],
    },
    # [506] "bit 5 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x68], $_[0]) }, 0 ],
    },
    # [507] "bit 5 , c"
    {
        ""      => [ \&_parse_end, 508 ],
    },
    # [508] "bit 5 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x69], $_[0]) }, 0 ],
    },
    # [509] "bit 5 , d"
    {
        ""      => [ \&_parse_end, 510 ],
    },
    # [510] "bit 5 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6a], $_[0]) }, 0 ],
    },
    # [511] "bit 5 , e"
    {
        ""      => [ \&_parse_end, 512 ],
    },
    # [512] "bit 5 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6b], $_[0]) }, 0 ],
    },
    # [513] "bit 5 , h"
    {
        ""      => [ \&_parse_end, 514 ],
    },
    # [514] "bit 5 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6c], $_[0]) }, 0 ],
    },
    # [515] "bit 5 , l"
    {
        ""      => [ \&_parse_end, 516 ],
    },
    # [516] "bit 5 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x6d], $_[0]) }, 0 ],
    },
    # [517] "bit 6"
    {
        ","     => 518,
    },
    # [518] "bit 6 ,"
    {
        "("     => 519,
        "["     => 533,
        "a"     => 547,
        "b"     => 549,
        "c"     => 551,
        "d"     => 553,
        "e"     => 555,
        "h"     => 557,
        "l"     => 559,
    },
    # [519] "bit 6 , ("
    {
        "hl"    => 520,
        "ix"    => 523,
        "iy"    => 528,
    },
    # [520] "bit 6 , ( hl"
    {
        ")"     => 521,
    },
    # [521] "bit 6 , ( hl )"
    {
        ""      => [ \&_parse_end, 522 ],
    },
    # [522] "bit 6 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x76], $_[0]) }, 0 ],
    },
    # [523] "bit 6 , ( ix"
    {
        "+"     => 524,
    },
    # [524] "bit 6 , ( ix +"
    {
        "DIS"   => 525,
    },
    # [525] "bit 6 , ( ix + DIS"
    {
        ")"     => 526,
    },
    # [526] "bit 6 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 527 ],
    },
    # [527] "bit 6 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x76], $_[0]) }, 0 ],
    },
    # [528] "bit 6 , ( iy"
    {
        "+"     => 529,
    },
    # [529] "bit 6 , ( iy +"
    {
        "DIS"   => 530,
    },
    # [530] "bit 6 , ( iy + DIS"
    {
        ")"     => 531,
    },
    # [531] "bit 6 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 532 ],
    },
    # [532] "bit 6 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x76], $_[0]) }, 0 ],
    },
    # [533] "bit 6 , ["
    {
        "hl"    => 534,
        "ix"    => 537,
        "iy"    => 542,
    },
    # [534] "bit 6 , [ hl"
    {
        "]"     => 535,
    },
    # [535] "bit 6 , [ hl ]"
    {
        ""      => [ \&_parse_end, 536 ],
    },
    # [536] "bit 6 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x76], $_[0]) }, 0 ],
    },
    # [537] "bit 6 , [ ix"
    {
        "+"     => 538,
    },
    # [538] "bit 6 , [ ix +"
    {
        "DIS"   => 539,
    },
    # [539] "bit 6 , [ ix + DIS"
    {
        "]"     => 540,
    },
    # [540] "bit 6 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 541 ],
    },
    # [541] "bit 6 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x76], $_[0]) }, 0 ],
    },
    # [542] "bit 6 , [ iy"
    {
        "+"     => 543,
    },
    # [543] "bit 6 , [ iy +"
    {
        "DIS"   => 544,
    },
    # [544] "bit 6 , [ iy + DIS"
    {
        "]"     => 545,
    },
    # [545] "bit 6 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 546 ],
    },
    # [546] "bit 6 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x76], $_[0]) }, 0 ],
    },
    # [547] "bit 6 , a"
    {
        ""      => [ \&_parse_end, 548 ],
    },
    # [548] "bit 6 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x77], $_[0]) }, 0 ],
    },
    # [549] "bit 6 , b"
    {
        ""      => [ \&_parse_end, 550 ],
    },
    # [550] "bit 6 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x70], $_[0]) }, 0 ],
    },
    # [551] "bit 6 , c"
    {
        ""      => [ \&_parse_end, 552 ],
    },
    # [552] "bit 6 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x71], $_[0]) }, 0 ],
    },
    # [553] "bit 6 , d"
    {
        ""      => [ \&_parse_end, 554 ],
    },
    # [554] "bit 6 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x72], $_[0]) }, 0 ],
    },
    # [555] "bit 6 , e"
    {
        ""      => [ \&_parse_end, 556 ],
    },
    # [556] "bit 6 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x73], $_[0]) }, 0 ],
    },
    # [557] "bit 6 , h"
    {
        ""      => [ \&_parse_end, 558 ],
    },
    # [558] "bit 6 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x74], $_[0]) }, 0 ],
    },
    # [559] "bit 6 , l"
    {
        ""      => [ \&_parse_end, 560 ],
    },
    # [560] "bit 6 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x75], $_[0]) }, 0 ],
    },
    # [561] "bit 7"
    {
        ","     => 562,
    },
    # [562] "bit 7 ,"
    {
        "("     => 563,
        "["     => 577,
        "a"     => 591,
        "b"     => 593,
        "c"     => 595,
        "d"     => 597,
        "e"     => 599,
        "h"     => 601,
        "l"     => 603,
    },
    # [563] "bit 7 , ("
    {
        "hl"    => 564,
        "ix"    => 567,
        "iy"    => 572,
    },
    # [564] "bit 7 , ( hl"
    {
        ")"     => 565,
    },
    # [565] "bit 7 , ( hl )"
    {
        ""      => [ \&_parse_end, 566 ],
    },
    # [566] "bit 7 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7e], $_[0]) }, 0 ],
    },
    # [567] "bit 7 , ( ix"
    {
        "+"     => 568,
    },
    # [568] "bit 7 , ( ix +"
    {
        "DIS"   => 569,
    },
    # [569] "bit 7 , ( ix + DIS"
    {
        ")"     => 570,
    },
    # [570] "bit 7 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 571 ],
    },
    # [571] "bit 7 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x7e], $_[0]) }, 0 ],
    },
    # [572] "bit 7 , ( iy"
    {
        "+"     => 573,
    },
    # [573] "bit 7 , ( iy +"
    {
        "DIS"   => 574,
    },
    # [574] "bit 7 , ( iy + DIS"
    {
        ")"     => 575,
    },
    # [575] "bit 7 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 576 ],
    },
    # [576] "bit 7 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x7e], $_[0]) }, 0 ],
    },
    # [577] "bit 7 , ["
    {
        "hl"    => 578,
        "ix"    => 581,
        "iy"    => 586,
    },
    # [578] "bit 7 , [ hl"
    {
        "]"     => 579,
    },
    # [579] "bit 7 , [ hl ]"
    {
        ""      => [ \&_parse_end, 580 ],
    },
    # [580] "bit 7 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7e], $_[0]) }, 0 ],
    },
    # [581] "bit 7 , [ ix"
    {
        "+"     => 582,
    },
    # [582] "bit 7 , [ ix +"
    {
        "DIS"   => 583,
    },
    # [583] "bit 7 , [ ix + DIS"
    {
        "]"     => 584,
    },
    # [584] "bit 7 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 585 ],
    },
    # [585] "bit 7 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x7e], $_[0]) }, 0 ],
    },
    # [586] "bit 7 , [ iy"
    {
        "+"     => 587,
    },
    # [587] "bit 7 , [ iy +"
    {
        "DIS"   => 588,
    },
    # [588] "bit 7 , [ iy + DIS"
    {
        "]"     => 589,
    },
    # [589] "bit 7 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 590 ],
    },
    # [590] "bit 7 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x7e], $_[0]) }, 0 ],
    },
    # [591] "bit 7 , a"
    {
        ""      => [ \&_parse_end, 592 ],
    },
    # [592] "bit 7 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7f], $_[0]) }, 0 ],
    },
    # [593] "bit 7 , b"
    {
        ""      => [ \&_parse_end, 594 ],
    },
    # [594] "bit 7 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x78], $_[0]) }, 0 ],
    },
    # [595] "bit 7 , c"
    {
        ""      => [ \&_parse_end, 596 ],
    },
    # [596] "bit 7 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x79], $_[0]) }, 0 ],
    },
    # [597] "bit 7 , d"
    {
        ""      => [ \&_parse_end, 598 ],
    },
    # [598] "bit 7 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7a], $_[0]) }, 0 ],
    },
    # [599] "bit 7 , e"
    {
        ""      => [ \&_parse_end, 600 ],
    },
    # [600] "bit 7 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7b], $_[0]) }, 0 ],
    },
    # [601] "bit 7 , h"
    {
        ""      => [ \&_parse_end, 602 ],
    },
    # [602] "bit 7 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7c], $_[0]) }, 0 ],
    },
    # [603] "bit 7 , l"
    {
        ""      => [ \&_parse_end, 604 ],
    },
    # [604] "bit 7 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x7d], $_[0]) }, 0 ],
    },
    # [605] "call"
    {
        "NN"    => 606,
        "c"     => 608,
        "m"     => 612,
        "nc"    => 616,
        "nz"    => 620,
        "p"     => 624,
        "pe"    => 628,
        "po"    => 632,
        "z"     => 636,
    },
    # [606] "call NN"
    {
        ""      => [ \&_parse_end, 607 ],
    },
    # [607] "call NN &_parse_end"
    {
        ""      => [ sub { return ([0xcd, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [608] "call c"
    {
        ","     => 609,
    },
    # [609] "call c ,"
    {
        "NN"    => 610,
    },
    # [610] "call c , NN"
    {
        ""      => [ \&_parse_end, 611 ],
    },
    # [611] "call c , NN &_parse_end"
    {
        ""      => [ sub { return ([0xdc, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [612] "call m"
    {
        ","     => 613,
    },
    # [613] "call m ,"
    {
        "NN"    => 614,
    },
    # [614] "call m , NN"
    {
        ""      => [ \&_parse_end, 615 ],
    },
    # [615] "call m , NN &_parse_end"
    {
        ""      => [ sub { return ([0xfc, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [616] "call nc"
    {
        ","     => 617,
    },
    # [617] "call nc ,"
    {
        "NN"    => 618,
    },
    # [618] "call nc , NN"
    {
        ""      => [ \&_parse_end, 619 ],
    },
    # [619] "call nc , NN &_parse_end"
    {
        ""      => [ sub { return ([0xd4, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [620] "call nz"
    {
        ","     => 621,
    },
    # [621] "call nz ,"
    {
        "NN"    => 622,
    },
    # [622] "call nz , NN"
    {
        ""      => [ \&_parse_end, 623 ],
    },
    # [623] "call nz , NN &_parse_end"
    {
        ""      => [ sub { return ([0xc4, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [624] "call p"
    {
        ","     => 625,
    },
    # [625] "call p ,"
    {
        "NN"    => 626,
    },
    # [626] "call p , NN"
    {
        ""      => [ \&_parse_end, 627 ],
    },
    # [627] "call p , NN &_parse_end"
    {
        ""      => [ sub { return ([0xf4, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [628] "call pe"
    {
        ","     => 629,
    },
    # [629] "call pe ,"
    {
        "NN"    => 630,
    },
    # [630] "call pe , NN"
    {
        ""      => [ \&_parse_end, 631 ],
    },
    # [631] "call pe , NN &_parse_end"
    {
        ""      => [ sub { return ([0xec, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [632] "call po"
    {
        ","     => 633,
    },
    # [633] "call po ,"
    {
        "NN"    => 634,
    },
    # [634] "call po , NN"
    {
        ""      => [ \&_parse_end, 635 ],
    },
    # [635] "call po , NN &_parse_end"
    {
        ""      => [ sub { return ([0xe4, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [636] "call z"
    {
        ","     => 637,
    },
    # [637] "call z ,"
    {
        "NN"    => 638,
    },
    # [638] "call z , NN"
    {
        ""      => [ \&_parse_end, 639 ],
    },
    # [639] "call z , NN &_parse_end"
    {
        ""      => [ sub { return ([0xcc, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [640] "ccf"
    {
        ""      => [ \&_parse_end, 641 ],
    },
    # [641] "ccf &_parse_end"
    {
        ""      => [ sub { return ([0x3f], $_[0]) }, 0 ],
    },
    # [642] "cp"
    {
        "("     => 643,
        "N"     => 657,
        "["     => 659,
        "a"     => 673,
        "b"     => 675,
        "c"     => 677,
        "d"     => 679,
        "e"     => 681,
        "h"     => 683,
        "hx"    => 685,
        "hy"    => 687,
        "ixh"   => 689,
        "ixl"   => 691,
        "iyh"   => 693,
        "iyl"   => 695,
        "l"     => 697,
        "lx"    => 699,
        "ly"    => 701,
        "xh"    => 703,
        "xl"    => 705,
        "yh"    => 707,
        "yl"    => 709,
    },
    # [643] "cp ("
    {
        "hl"    => 644,
        "ix"    => 647,
        "iy"    => 652,
    },
    # [644] "cp ( hl"
    {
        ")"     => 645,
    },
    # [645] "cp ( hl )"
    {
        ""      => [ \&_parse_end, 646 ],
    },
    # [646] "cp ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xbe], $_[0]) }, 0 ],
    },
    # [647] "cp ( ix"
    {
        "+"     => 648,
    },
    # [648] "cp ( ix +"
    {
        "DIS"   => 649,
    },
    # [649] "cp ( ix + DIS"
    {
        ")"     => 650,
    },
    # [650] "cp ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 651 ],
    },
    # [651] "cp ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbe, "DIS"], $_[0]) }, 0 ],
    },
    # [652] "cp ( iy"
    {
        "+"     => 653,
    },
    # [653] "cp ( iy +"
    {
        "DIS"   => 654,
    },
    # [654] "cp ( iy + DIS"
    {
        ")"     => 655,
    },
    # [655] "cp ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 656 ],
    },
    # [656] "cp ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbe, "DIS"], $_[0]) }, 0 ],
    },
    # [657] "cp N"
    {
        ""      => [ \&_parse_end, 658 ],
    },
    # [658] "cp N &_parse_end"
    {
        ""      => [ sub { return ([0xfe, "N"], $_[0]) }, 0 ],
    },
    # [659] "cp ["
    {
        "hl"    => 660,
        "ix"    => 663,
        "iy"    => 668,
    },
    # [660] "cp [ hl"
    {
        "]"     => 661,
    },
    # [661] "cp [ hl ]"
    {
        ""      => [ \&_parse_end, 662 ],
    },
    # [662] "cp [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xbe], $_[0]) }, 0 ],
    },
    # [663] "cp [ ix"
    {
        "+"     => 664,
    },
    # [664] "cp [ ix +"
    {
        "DIS"   => 665,
    },
    # [665] "cp [ ix + DIS"
    {
        "]"     => 666,
    },
    # [666] "cp [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 667 ],
    },
    # [667] "cp [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbe, "DIS"], $_[0]) }, 0 ],
    },
    # [668] "cp [ iy"
    {
        "+"     => 669,
    },
    # [669] "cp [ iy +"
    {
        "DIS"   => 670,
    },
    # [670] "cp [ iy + DIS"
    {
        "]"     => 671,
    },
    # [671] "cp [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 672 ],
    },
    # [672] "cp [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbe, "DIS"], $_[0]) }, 0 ],
    },
    # [673] "cp a"
    {
        ""      => [ \&_parse_end, 674 ],
    },
    # [674] "cp a &_parse_end"
    {
        ""      => [ sub { return ([0xbf], $_[0]) }, 0 ],
    },
    # [675] "cp b"
    {
        ""      => [ \&_parse_end, 676 ],
    },
    # [676] "cp b &_parse_end"
    {
        ""      => [ sub { return ([0xb8], $_[0]) }, 0 ],
    },
    # [677] "cp c"
    {
        ""      => [ \&_parse_end, 678 ],
    },
    # [678] "cp c &_parse_end"
    {
        ""      => [ sub { return ([0xb9], $_[0]) }, 0 ],
    },
    # [679] "cp d"
    {
        ""      => [ \&_parse_end, 680 ],
    },
    # [680] "cp d &_parse_end"
    {
        ""      => [ sub { return ([0xba], $_[0]) }, 0 ],
    },
    # [681] "cp e"
    {
        ""      => [ \&_parse_end, 682 ],
    },
    # [682] "cp e &_parse_end"
    {
        ""      => [ sub { return ([0xbb], $_[0]) }, 0 ],
    },
    # [683] "cp h"
    {
        ""      => [ \&_parse_end, 684 ],
    },
    # [684] "cp h &_parse_end"
    {
        ""      => [ sub { return ([0xbc], $_[0]) }, 0 ],
    },
    # [685] "cp hx"
    {
        ""      => [ \&_parse_end, 686 ],
    },
    # [686] "cp hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbc], $_[0]) }, 0 ],
    },
    # [687] "cp hy"
    {
        ""      => [ \&_parse_end, 688 ],
    },
    # [688] "cp hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbc], $_[0]) }, 0 ],
    },
    # [689] "cp ixh"
    {
        ""      => [ \&_parse_end, 690 ],
    },
    # [690] "cp ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbc], $_[0]) }, 0 ],
    },
    # [691] "cp ixl"
    {
        ""      => [ \&_parse_end, 692 ],
    },
    # [692] "cp ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbd], $_[0]) }, 0 ],
    },
    # [693] "cp iyh"
    {
        ""      => [ \&_parse_end, 694 ],
    },
    # [694] "cp iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbc], $_[0]) }, 0 ],
    },
    # [695] "cp iyl"
    {
        ""      => [ \&_parse_end, 696 ],
    },
    # [696] "cp iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbd], $_[0]) }, 0 ],
    },
    # [697] "cp l"
    {
        ""      => [ \&_parse_end, 698 ],
    },
    # [698] "cp l &_parse_end"
    {
        ""      => [ sub { return ([0xbd], $_[0]) }, 0 ],
    },
    # [699] "cp lx"
    {
        ""      => [ \&_parse_end, 700 ],
    },
    # [700] "cp lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbd], $_[0]) }, 0 ],
    },
    # [701] "cp ly"
    {
        ""      => [ \&_parse_end, 702 ],
    },
    # [702] "cp ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbd], $_[0]) }, 0 ],
    },
    # [703] "cp xh"
    {
        ""      => [ \&_parse_end, 704 ],
    },
    # [704] "cp xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbc], $_[0]) }, 0 ],
    },
    # [705] "cp xl"
    {
        ""      => [ \&_parse_end, 706 ],
    },
    # [706] "cp xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xbd], $_[0]) }, 0 ],
    },
    # [707] "cp yh"
    {
        ""      => [ \&_parse_end, 708 ],
    },
    # [708] "cp yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbc], $_[0]) }, 0 ],
    },
    # [709] "cp yl"
    {
        ""      => [ \&_parse_end, 710 ],
    },
    # [710] "cp yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xbd], $_[0]) }, 0 ],
    },
    # [711] "cpd"
    {
        ""      => [ \&_parse_end, 712 ],
    },
    # [712] "cpd &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xa9], $_[0]) }, 0 ],
    },
    # [713] "cpdr"
    {
        ""      => [ \&_parse_end, 714 ],
    },
    # [714] "cpdr &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xb9], $_[0]) }, 0 ],
    },
    # [715] "cpi"
    {
        ""      => [ \&_parse_end, 716 ],
    },
    # [716] "cpi &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xa1], $_[0]) }, 0 ],
    },
    # [717] "cpir"
    {
        ""      => [ \&_parse_end, 718 ],
    },
    # [718] "cpir &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xb1], $_[0]) }, 0 ],
    },
    # [719] "cpl"
    {
        ""      => [ \&_parse_end, 720 ],
    },
    # [720] "cpl &_parse_end"
    {
        ""      => [ sub { return ([0x2f], $_[0]) }, 0 ],
    },
    # [721] "daa"
    {
        ""      => [ \&_parse_end, 722 ],
    },
    # [722] "daa &_parse_end"
    {
        ""      => [ sub { return ([0x27], $_[0]) }, 0 ],
    },
    # [723] "dec"
    {
        "("     => 724,
        "["     => 738,
        "a"     => 752,
        "b"     => 754,
        "bc"    => 756,
        "c"     => 758,
        "d"     => 760,
        "de"    => 762,
        "e"     => 764,
        "h"     => 766,
        "hl"    => 768,
        "hx"    => 770,
        "hy"    => 772,
        "ix"    => 774,
        "ixh"   => 776,
        "ixl"   => 778,
        "iy"    => 780,
        "iyh"   => 782,
        "iyl"   => 784,
        "l"     => 786,
        "lx"    => 788,
        "ly"    => 790,
        "sp"    => 792,
        "xh"    => 794,
        "xl"    => 796,
        "yh"    => 798,
        "yl"    => 800,
    },
    # [724] "dec ("
    {
        "hl"    => 725,
        "ix"    => 728,
        "iy"    => 733,
    },
    # [725] "dec ( hl"
    {
        ")"     => 726,
    },
    # [726] "dec ( hl )"
    {
        ""      => [ \&_parse_end, 727 ],
    },
    # [727] "dec ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x35], $_[0]) }, 0 ],
    },
    # [728] "dec ( ix"
    {
        "+"     => 729,
    },
    # [729] "dec ( ix +"
    {
        "DIS"   => 730,
    },
    # [730] "dec ( ix + DIS"
    {
        ")"     => 731,
    },
    # [731] "dec ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 732 ],
    },
    # [732] "dec ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x35, "DIS"], $_[0]) }, 0 ],
    },
    # [733] "dec ( iy"
    {
        "+"     => 734,
    },
    # [734] "dec ( iy +"
    {
        "DIS"   => 735,
    },
    # [735] "dec ( iy + DIS"
    {
        ")"     => 736,
    },
    # [736] "dec ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 737 ],
    },
    # [737] "dec ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x35, "DIS"], $_[0]) }, 0 ],
    },
    # [738] "dec ["
    {
        "hl"    => 739,
        "ix"    => 742,
        "iy"    => 747,
    },
    # [739] "dec [ hl"
    {
        "]"     => 740,
    },
    # [740] "dec [ hl ]"
    {
        ""      => [ \&_parse_end, 741 ],
    },
    # [741] "dec [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x35], $_[0]) }, 0 ],
    },
    # [742] "dec [ ix"
    {
        "+"     => 743,
    },
    # [743] "dec [ ix +"
    {
        "DIS"   => 744,
    },
    # [744] "dec [ ix + DIS"
    {
        "]"     => 745,
    },
    # [745] "dec [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 746 ],
    },
    # [746] "dec [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x35, "DIS"], $_[0]) }, 0 ],
    },
    # [747] "dec [ iy"
    {
        "+"     => 748,
    },
    # [748] "dec [ iy +"
    {
        "DIS"   => 749,
    },
    # [749] "dec [ iy + DIS"
    {
        "]"     => 750,
    },
    # [750] "dec [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 751 ],
    },
    # [751] "dec [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x35, "DIS"], $_[0]) }, 0 ],
    },
    # [752] "dec a"
    {
        ""      => [ \&_parse_end, 753 ],
    },
    # [753] "dec a &_parse_end"
    {
        ""      => [ sub { return ([0x3d], $_[0]) }, 0 ],
    },
    # [754] "dec b"
    {
        ""      => [ \&_parse_end, 755 ],
    },
    # [755] "dec b &_parse_end"
    {
        ""      => [ sub { return ([0x05], $_[0]) }, 0 ],
    },
    # [756] "dec bc"
    {
        ""      => [ \&_parse_end, 757 ],
    },
    # [757] "dec bc &_parse_end"
    {
        ""      => [ sub { return ([0x0b], $_[0]) }, 0 ],
    },
    # [758] "dec c"
    {
        ""      => [ \&_parse_end, 759 ],
    },
    # [759] "dec c &_parse_end"
    {
        ""      => [ sub { return ([0x0d], $_[0]) }, 0 ],
    },
    # [760] "dec d"
    {
        ""      => [ \&_parse_end, 761 ],
    },
    # [761] "dec d &_parse_end"
    {
        ""      => [ sub { return ([0x15], $_[0]) }, 0 ],
    },
    # [762] "dec de"
    {
        ""      => [ \&_parse_end, 763 ],
    },
    # [763] "dec de &_parse_end"
    {
        ""      => [ sub { return ([0x1b], $_[0]) }, 0 ],
    },
    # [764] "dec e"
    {
        ""      => [ \&_parse_end, 765 ],
    },
    # [765] "dec e &_parse_end"
    {
        ""      => [ sub { return ([0x1d], $_[0]) }, 0 ],
    },
    # [766] "dec h"
    {
        ""      => [ \&_parse_end, 767 ],
    },
    # [767] "dec h &_parse_end"
    {
        ""      => [ sub { return ([0x25], $_[0]) }, 0 ],
    },
    # [768] "dec hl"
    {
        ""      => [ \&_parse_end, 769 ],
    },
    # [769] "dec hl &_parse_end"
    {
        ""      => [ sub { return ([0x2b], $_[0]) }, 0 ],
    },
    # [770] "dec hx"
    {
        ""      => [ \&_parse_end, 771 ],
    },
    # [771] "dec hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x25], $_[0]) }, 0 ],
    },
    # [772] "dec hy"
    {
        ""      => [ \&_parse_end, 773 ],
    },
    # [773] "dec hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x25], $_[0]) }, 0 ],
    },
    # [774] "dec ix"
    {
        ""      => [ \&_parse_end, 775 ],
    },
    # [775] "dec ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [776] "dec ixh"
    {
        ""      => [ \&_parse_end, 777 ],
    },
    # [777] "dec ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x25], $_[0]) }, 0 ],
    },
    # [778] "dec ixl"
    {
        ""      => [ \&_parse_end, 779 ],
    },
    # [779] "dec ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2d], $_[0]) }, 0 ],
    },
    # [780] "dec iy"
    {
        ""      => [ \&_parse_end, 781 ],
    },
    # [781] "dec iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [782] "dec iyh"
    {
        ""      => [ \&_parse_end, 783 ],
    },
    # [783] "dec iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x25], $_[0]) }, 0 ],
    },
    # [784] "dec iyl"
    {
        ""      => [ \&_parse_end, 785 ],
    },
    # [785] "dec iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2d], $_[0]) }, 0 ],
    },
    # [786] "dec l"
    {
        ""      => [ \&_parse_end, 787 ],
    },
    # [787] "dec l &_parse_end"
    {
        ""      => [ sub { return ([0x2d], $_[0]) }, 0 ],
    },
    # [788] "dec lx"
    {
        ""      => [ \&_parse_end, 789 ],
    },
    # [789] "dec lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2d], $_[0]) }, 0 ],
    },
    # [790] "dec ly"
    {
        ""      => [ \&_parse_end, 791 ],
    },
    # [791] "dec ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2d], $_[0]) }, 0 ],
    },
    # [792] "dec sp"
    {
        ""      => [ \&_parse_end, 793 ],
    },
    # [793] "dec sp &_parse_end"
    {
        ""      => [ sub { return ([0x3b], $_[0]) }, 0 ],
    },
    # [794] "dec xh"
    {
        ""      => [ \&_parse_end, 795 ],
    },
    # [795] "dec xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x25], $_[0]) }, 0 ],
    },
    # [796] "dec xl"
    {
        ""      => [ \&_parse_end, 797 ],
    },
    # [797] "dec xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2d], $_[0]) }, 0 ],
    },
    # [798] "dec yh"
    {
        ""      => [ \&_parse_end, 799 ],
    },
    # [799] "dec yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x25], $_[0]) }, 0 ],
    },
    # [800] "dec yl"
    {
        ""      => [ \&_parse_end, 801 ],
    },
    # [801] "dec yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2d], $_[0]) }, 0 ],
    },
    # [802] "di"
    {
        ""      => [ \&_parse_end, 803 ],
    },
    # [803] "di &_parse_end"
    {
        ""      => [ sub { return ([0xf3], $_[0]) }, 0 ],
    },
    # [804] "djnz"
    {
        "NN"    => 805,
    },
    # [805] "djnz NN"
    {
        ""      => [ \&_parse_end, 806 ],
    },
    # [806] "djnz NN &_parse_end"
    {
        ""      => [ sub { return ([0x10, "NNo"], $_[0]) }, 0 ],
    },
    # [807] "ei"
    {
        ""      => [ \&_parse_end, 808 ],
    },
    # [808] "ei &_parse_end"
    {
        ""      => [ sub { return ([0xfb], $_[0]) }, 0 ],
    },
    # [809] "ex"
    {
        "("     => 810,
        "["     => 820,
        "af"    => 830,
        "de"    => 837,
    },
    # [810] "ex ("
    {
        "sp"    => 811,
    },
    # [811] "ex ( sp"
    {
        ")"     => 812,
    },
    # [812] "ex ( sp )"
    {
        ","     => 813,
    },
    # [813] "ex ( sp ) ,"
    {
        "hl"    => 814,
        "ix"    => 816,
        "iy"    => 818,
    },
    # [814] "ex ( sp ) , hl"
    {
        ""      => [ \&_parse_end, 815 ],
    },
    # [815] "ex ( sp ) , hl &_parse_end"
    {
        ""      => [ sub { return ([0xe3], $_[0]) }, 0 ],
    },
    # [816] "ex ( sp ) , ix"
    {
        ""      => [ \&_parse_end, 817 ],
    },
    # [817] "ex ( sp ) , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe3], $_[0]) }, 0 ],
    },
    # [818] "ex ( sp ) , iy"
    {
        ""      => [ \&_parse_end, 819 ],
    },
    # [819] "ex ( sp ) , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe3], $_[0]) }, 0 ],
    },
    # [820] "ex ["
    {
        "sp"    => 821,
    },
    # [821] "ex [ sp"
    {
        "]"     => 822,
    },
    # [822] "ex [ sp ]"
    {
        ","     => 823,
    },
    # [823] "ex [ sp ] ,"
    {
        "hl"    => 824,
        "ix"    => 826,
        "iy"    => 828,
    },
    # [824] "ex [ sp ] , hl"
    {
        ""      => [ \&_parse_end, 825 ],
    },
    # [825] "ex [ sp ] , hl &_parse_end"
    {
        ""      => [ sub { return ([0xe3], $_[0]) }, 0 ],
    },
    # [826] "ex [ sp ] , ix"
    {
        ""      => [ \&_parse_end, 827 ],
    },
    # [827] "ex [ sp ] , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe3], $_[0]) }, 0 ],
    },
    # [828] "ex [ sp ] , iy"
    {
        ""      => [ \&_parse_end, 829 ],
    },
    # [829] "ex [ sp ] , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe3], $_[0]) }, 0 ],
    },
    # [830] "ex af"
    {
        ""      => [ \&_parse_end, 831 ],
        ","     => 832,
    },
    # [831] "ex af &_parse_end"
    {
        ""      => [ sub { return ([0x08], $_[0]) }, 0 ],
    },
    # [832] "ex af ,"
    {
        "af"    => 833,
        "af'"   => 835,
    },
    # [833] "ex af , af"
    {
        ""      => [ \&_parse_end, 834 ],
    },
    # [834] "ex af , af &_parse_end"
    {
        ""      => [ sub { return ([0x08], $_[0]) }, 0 ],
    },
    # [835] "ex af , af'"
    {
        ""      => [ \&_parse_end, 836 ],
    },
    # [836] "ex af , af' &_parse_end"
    {
        ""      => [ sub { return ([0x08], $_[0]) }, 0 ],
    },
    # [837] "ex de"
    {
        ","     => 838,
    },
    # [838] "ex de ,"
    {
        "hl"    => 839,
    },
    # [839] "ex de , hl"
    {
        ""      => [ \&_parse_end, 840 ],
    },
    # [840] "ex de , hl &_parse_end"
    {
        ""      => [ sub { return ([0xeb], $_[0]) }, 0 ],
    },
    # [841] "exa"
    {
        ""      => [ \&_parse_end, 842 ],
    },
    # [842] "exa &_parse_end"
    {
        ""      => [ sub { return ([0x08], $_[0]) }, 0 ],
    },
    # [843] "exx"
    {
        ""      => [ \&_parse_end, 844 ],
    },
    # [844] "exx &_parse_end"
    {
        ""      => [ sub { return ([0xd9], $_[0]) }, 0 ],
    },
    # [845] "halt"
    {
        ""      => [ \&_parse_end, 846 ],
    },
    # [846] "halt &_parse_end"
    {
        ""      => [ sub { return ([0x76], $_[0]) }, 0 ],
    },
    # [847] "im"
    {
        0       => 848,
        1       => 850,
        2       => 852,
    },
    # [848] "im 0"
    {
        ""      => [ \&_parse_end, 849 ],
    },
    # [849] "im 0 &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x46], $_[0]) }, 0 ],
    },
    # [850] "im 1"
    {
        ""      => [ \&_parse_end, 851 ],
    },
    # [851] "im 1 &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x56], $_[0]) }, 0 ],
    },
    # [852] "im 2"
    {
        ""      => [ \&_parse_end, 853 ],
    },
    # [853] "im 2 &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x5e], $_[0]) }, 0 ],
    },
    # [854] "in"
    {
        "a"     => 855,
        "b"     => 871,
        "c"     => 881,
        "d"     => 891,
        "e"     => 901,
        "f"     => 911,
        "h"     => 921,
        "l"     => 931,
    },
    # [855] "in a"
    {
        ","     => 856,
    },
    # [856] "in a ,"
    {
        "("     => 857,
        "["     => 864,
    },
    # [857] "in a , ("
    {
        "N"     => 858,
        "c"     => 861,
    },
    # [858] "in a , ( N"
    {
        ")"     => 859,
    },
    # [859] "in a , ( N )"
    {
        ""      => [ \&_parse_end, 860 ],
    },
    # [860] "in a , ( N ) &_parse_end"
    {
        ""      => [ sub { return ([0xdb, "N"], $_[0]) }, 0 ],
    },
    # [861] "in a , ( c"
    {
        ")"     => 862,
    },
    # [862] "in a , ( c )"
    {
        ""      => [ \&_parse_end, 863 ],
    },
    # [863] "in a , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x78], $_[0]) }, 0 ],
    },
    # [864] "in a , ["
    {
        "N"     => 865,
        "c"     => 868,
    },
    # [865] "in a , [ N"
    {
        "]"     => 866,
    },
    # [866] "in a , [ N ]"
    {
        ""      => [ \&_parse_end, 867 ],
    },
    # [867] "in a , [ N ] &_parse_end"
    {
        ""      => [ sub { return ([0xdb, "N"], $_[0]) }, 0 ],
    },
    # [868] "in a , [ c"
    {
        "]"     => 869,
    },
    # [869] "in a , [ c ]"
    {
        ""      => [ \&_parse_end, 870 ],
    },
    # [870] "in a , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x78], $_[0]) }, 0 ],
    },
    # [871] "in b"
    {
        ","     => 872,
    },
    # [872] "in b ,"
    {
        "("     => 873,
        "["     => 877,
    },
    # [873] "in b , ("
    {
        "c"     => 874,
    },
    # [874] "in b , ( c"
    {
        ")"     => 875,
    },
    # [875] "in b , ( c )"
    {
        ""      => [ \&_parse_end, 876 ],
    },
    # [876] "in b , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x40], $_[0]) }, 0 ],
    },
    # [877] "in b , ["
    {
        "c"     => 878,
    },
    # [878] "in b , [ c"
    {
        "]"     => 879,
    },
    # [879] "in b , [ c ]"
    {
        ""      => [ \&_parse_end, 880 ],
    },
    # [880] "in b , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x40], $_[0]) }, 0 ],
    },
    # [881] "in c"
    {
        ","     => 882,
    },
    # [882] "in c ,"
    {
        "("     => 883,
        "["     => 887,
    },
    # [883] "in c , ("
    {
        "c"     => 884,
    },
    # [884] "in c , ( c"
    {
        ")"     => 885,
    },
    # [885] "in c , ( c )"
    {
        ""      => [ \&_parse_end, 886 ],
    },
    # [886] "in c , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x48], $_[0]) }, 0 ],
    },
    # [887] "in c , ["
    {
        "c"     => 888,
    },
    # [888] "in c , [ c"
    {
        "]"     => 889,
    },
    # [889] "in c , [ c ]"
    {
        ""      => [ \&_parse_end, 890 ],
    },
    # [890] "in c , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x48], $_[0]) }, 0 ],
    },
    # [891] "in d"
    {
        ","     => 892,
    },
    # [892] "in d ,"
    {
        "("     => 893,
        "["     => 897,
    },
    # [893] "in d , ("
    {
        "c"     => 894,
    },
    # [894] "in d , ( c"
    {
        ")"     => 895,
    },
    # [895] "in d , ( c )"
    {
        ""      => [ \&_parse_end, 896 ],
    },
    # [896] "in d , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x50], $_[0]) }, 0 ],
    },
    # [897] "in d , ["
    {
        "c"     => 898,
    },
    # [898] "in d , [ c"
    {
        "]"     => 899,
    },
    # [899] "in d , [ c ]"
    {
        ""      => [ \&_parse_end, 900 ],
    },
    # [900] "in d , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x50], $_[0]) }, 0 ],
    },
    # [901] "in e"
    {
        ","     => 902,
    },
    # [902] "in e ,"
    {
        "("     => 903,
        "["     => 907,
    },
    # [903] "in e , ("
    {
        "c"     => 904,
    },
    # [904] "in e , ( c"
    {
        ")"     => 905,
    },
    # [905] "in e , ( c )"
    {
        ""      => [ \&_parse_end, 906 ],
    },
    # [906] "in e , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x58], $_[0]) }, 0 ],
    },
    # [907] "in e , ["
    {
        "c"     => 908,
    },
    # [908] "in e , [ c"
    {
        "]"     => 909,
    },
    # [909] "in e , [ c ]"
    {
        ""      => [ \&_parse_end, 910 ],
    },
    # [910] "in e , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x58], $_[0]) }, 0 ],
    },
    # [911] "in f"
    {
        ","     => 912,
    },
    # [912] "in f ,"
    {
        "("     => 913,
        "["     => 917,
    },
    # [913] "in f , ("
    {
        "c"     => 914,
    },
    # [914] "in f , ( c"
    {
        ")"     => 915,
    },
    # [915] "in f , ( c )"
    {
        ""      => [ \&_parse_end, 916 ],
    },
    # [916] "in f , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x70], $_[0]) }, 0 ],
    },
    # [917] "in f , ["
    {
        "c"     => 918,
    },
    # [918] "in f , [ c"
    {
        "]"     => 919,
    },
    # [919] "in f , [ c ]"
    {
        ""      => [ \&_parse_end, 920 ],
    },
    # [920] "in f , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x70], $_[0]) }, 0 ],
    },
    # [921] "in h"
    {
        ","     => 922,
    },
    # [922] "in h ,"
    {
        "("     => 923,
        "["     => 927,
    },
    # [923] "in h , ("
    {
        "c"     => 924,
    },
    # [924] "in h , ( c"
    {
        ")"     => 925,
    },
    # [925] "in h , ( c )"
    {
        ""      => [ \&_parse_end, 926 ],
    },
    # [926] "in h , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x60], $_[0]) }, 0 ],
    },
    # [927] "in h , ["
    {
        "c"     => 928,
    },
    # [928] "in h , [ c"
    {
        "]"     => 929,
    },
    # [929] "in h , [ c ]"
    {
        ""      => [ \&_parse_end, 930 ],
    },
    # [930] "in h , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x60], $_[0]) }, 0 ],
    },
    # [931] "in l"
    {
        ","     => 932,
    },
    # [932] "in l ,"
    {
        "("     => 933,
        "["     => 937,
    },
    # [933] "in l , ("
    {
        "c"     => 934,
    },
    # [934] "in l , ( c"
    {
        ")"     => 935,
    },
    # [935] "in l , ( c )"
    {
        ""      => [ \&_parse_end, 936 ],
    },
    # [936] "in l , ( c ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x68], $_[0]) }, 0 ],
    },
    # [937] "in l , ["
    {
        "c"     => 938,
    },
    # [938] "in l , [ c"
    {
        "]"     => 939,
    },
    # [939] "in l , [ c ]"
    {
        ""      => [ \&_parse_end, 940 ],
    },
    # [940] "in l , [ c ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x68], $_[0]) }, 0 ],
    },
    # [941] "inc"
    {
        "("     => 942,
        "["     => 956,
        "a"     => 970,
        "b"     => 972,
        "bc"    => 974,
        "c"     => 976,
        "d"     => 978,
        "de"    => 980,
        "e"     => 982,
        "h"     => 984,
        "hl"    => 986,
        "hx"    => 988,
        "hy"    => 990,
        "ix"    => 992,
        "ixh"   => 994,
        "ixl"   => 996,
        "iy"    => 998,
        "iyh"   => 1000,
        "iyl"   => 1002,
        "l"     => 1004,
        "lx"    => 1006,
        "ly"    => 1008,
        "sp"    => 1010,
        "xh"    => 1012,
        "xl"    => 1014,
        "yh"    => 1016,
        "yl"    => 1018,
    },
    # [942] "inc ("
    {
        "hl"    => 943,
        "ix"    => 946,
        "iy"    => 951,
    },
    # [943] "inc ( hl"
    {
        ")"     => 944,
    },
    # [944] "inc ( hl )"
    {
        ""      => [ \&_parse_end, 945 ],
    },
    # [945] "inc ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x34], $_[0]) }, 0 ],
    },
    # [946] "inc ( ix"
    {
        "+"     => 947,
    },
    # [947] "inc ( ix +"
    {
        "DIS"   => 948,
    },
    # [948] "inc ( ix + DIS"
    {
        ")"     => 949,
    },
    # [949] "inc ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 950 ],
    },
    # [950] "inc ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x34, "DIS"], $_[0]) }, 0 ],
    },
    # [951] "inc ( iy"
    {
        "+"     => 952,
    },
    # [952] "inc ( iy +"
    {
        "DIS"   => 953,
    },
    # [953] "inc ( iy + DIS"
    {
        ")"     => 954,
    },
    # [954] "inc ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 955 ],
    },
    # [955] "inc ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x34, "DIS"], $_[0]) }, 0 ],
    },
    # [956] "inc ["
    {
        "hl"    => 957,
        "ix"    => 960,
        "iy"    => 965,
    },
    # [957] "inc [ hl"
    {
        "]"     => 958,
    },
    # [958] "inc [ hl ]"
    {
        ""      => [ \&_parse_end, 959 ],
    },
    # [959] "inc [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x34], $_[0]) }, 0 ],
    },
    # [960] "inc [ ix"
    {
        "+"     => 961,
    },
    # [961] "inc [ ix +"
    {
        "DIS"   => 962,
    },
    # [962] "inc [ ix + DIS"
    {
        "]"     => 963,
    },
    # [963] "inc [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 964 ],
    },
    # [964] "inc [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x34, "DIS"], $_[0]) }, 0 ],
    },
    # [965] "inc [ iy"
    {
        "+"     => 966,
    },
    # [966] "inc [ iy +"
    {
        "DIS"   => 967,
    },
    # [967] "inc [ iy + DIS"
    {
        "]"     => 968,
    },
    # [968] "inc [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 969 ],
    },
    # [969] "inc [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x34, "DIS"], $_[0]) }, 0 ],
    },
    # [970] "inc a"
    {
        ""      => [ \&_parse_end, 971 ],
    },
    # [971] "inc a &_parse_end"
    {
        ""      => [ sub { return ([0x3c], $_[0]) }, 0 ],
    },
    # [972] "inc b"
    {
        ""      => [ \&_parse_end, 973 ],
    },
    # [973] "inc b &_parse_end"
    {
        ""      => [ sub { return ([0x04], $_[0]) }, 0 ],
    },
    # [974] "inc bc"
    {
        ""      => [ \&_parse_end, 975 ],
    },
    # [975] "inc bc &_parse_end"
    {
        ""      => [ sub { return ([0x03], $_[0]) }, 0 ],
    },
    # [976] "inc c"
    {
        ""      => [ \&_parse_end, 977 ],
    },
    # [977] "inc c &_parse_end"
    {
        ""      => [ sub { return ([0x0c], $_[0]) }, 0 ],
    },
    # [978] "inc d"
    {
        ""      => [ \&_parse_end, 979 ],
    },
    # [979] "inc d &_parse_end"
    {
        ""      => [ sub { return ([0x14], $_[0]) }, 0 ],
    },
    # [980] "inc de"
    {
        ""      => [ \&_parse_end, 981 ],
    },
    # [981] "inc de &_parse_end"
    {
        ""      => [ sub { return ([0x13], $_[0]) }, 0 ],
    },
    # [982] "inc e"
    {
        ""      => [ \&_parse_end, 983 ],
    },
    # [983] "inc e &_parse_end"
    {
        ""      => [ sub { return ([0x1c], $_[0]) }, 0 ],
    },
    # [984] "inc h"
    {
        ""      => [ \&_parse_end, 985 ],
    },
    # [985] "inc h &_parse_end"
    {
        ""      => [ sub { return ([0x24], $_[0]) }, 0 ],
    },
    # [986] "inc hl"
    {
        ""      => [ \&_parse_end, 987 ],
    },
    # [987] "inc hl &_parse_end"
    {
        ""      => [ sub { return ([0x23], $_[0]) }, 0 ],
    },
    # [988] "inc hx"
    {
        ""      => [ \&_parse_end, 989 ],
    },
    # [989] "inc hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x24], $_[0]) }, 0 ],
    },
    # [990] "inc hy"
    {
        ""      => [ \&_parse_end, 991 ],
    },
    # [991] "inc hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x24], $_[0]) }, 0 ],
    },
    # [992] "inc ix"
    {
        ""      => [ \&_parse_end, 993 ],
    },
    # [993] "inc ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [994] "inc ixh"
    {
        ""      => [ \&_parse_end, 995 ],
    },
    # [995] "inc ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x24], $_[0]) }, 0 ],
    },
    # [996] "inc ixl"
    {
        ""      => [ \&_parse_end, 997 ],
    },
    # [997] "inc ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2c], $_[0]) }, 0 ],
    },
    # [998] "inc iy"
    {
        ""      => [ \&_parse_end, 999 ],
    },
    # [999] "inc iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [1000] "inc iyh"
    {
        ""      => [ \&_parse_end, 1001 ],
    },
    # [1001] "inc iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x24], $_[0]) }, 0 ],
    },
    # [1002] "inc iyl"
    {
        ""      => [ \&_parse_end, 1003 ],
    },
    # [1003] "inc iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2c], $_[0]) }, 0 ],
    },
    # [1004] "inc l"
    {
        ""      => [ \&_parse_end, 1005 ],
    },
    # [1005] "inc l &_parse_end"
    {
        ""      => [ sub { return ([0x2c], $_[0]) }, 0 ],
    },
    # [1006] "inc lx"
    {
        ""      => [ \&_parse_end, 1007 ],
    },
    # [1007] "inc lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2c], $_[0]) }, 0 ],
    },
    # [1008] "inc ly"
    {
        ""      => [ \&_parse_end, 1009 ],
    },
    # [1009] "inc ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2c], $_[0]) }, 0 ],
    },
    # [1010] "inc sp"
    {
        ""      => [ \&_parse_end, 1011 ],
    },
    # [1011] "inc sp &_parse_end"
    {
        ""      => [ sub { return ([0x33], $_[0]) }, 0 ],
    },
    # [1012] "inc xh"
    {
        ""      => [ \&_parse_end, 1013 ],
    },
    # [1013] "inc xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x24], $_[0]) }, 0 ],
    },
    # [1014] "inc xl"
    {
        ""      => [ \&_parse_end, 1015 ],
    },
    # [1015] "inc xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2c], $_[0]) }, 0 ],
    },
    # [1016] "inc yh"
    {
        ""      => [ \&_parse_end, 1017 ],
    },
    # [1017] "inc yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x24], $_[0]) }, 0 ],
    },
    # [1018] "inc yl"
    {
        ""      => [ \&_parse_end, 1019 ],
    },
    # [1019] "inc yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2c], $_[0]) }, 0 ],
    },
    # [1020] "ind"
    {
        ""      => [ \&_parse_end, 1021 ],
    },
    # [1021] "ind &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xaa], $_[0]) }, 0 ],
    },
    # [1022] "indr"
    {
        ""      => [ \&_parse_end, 1023 ],
    },
    # [1023] "indr &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xba], $_[0]) }, 0 ],
    },
    # [1024] "ini"
    {
        ""      => [ \&_parse_end, 1025 ],
    },
    # [1025] "ini &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xa2], $_[0]) }, 0 ],
    },
    # [1026] "inir"
    {
        ""      => [ \&_parse_end, 1027 ],
    },
    # [1027] "inir &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xb2], $_[0]) }, 0 ],
    },
    # [1028] "jp"
    {
        "("     => 1029,
        "NN"    => 1039,
        "["     => 1041,
        "c"     => 1051,
        "hl"    => 1055,
        "ix"    => 1057,
        "iy"    => 1059,
        "m"     => 1061,
        "nc"    => 1065,
        "nz"    => 1069,
        "p"     => 1073,
        "pe"    => 1077,
        "po"    => 1081,
        "z"     => 1085,
    },
    # [1029] "jp ("
    {
        "hl"    => 1030,
        "ix"    => 1033,
        "iy"    => 1036,
    },
    # [1030] "jp ( hl"
    {
        ")"     => 1031,
    },
    # [1031] "jp ( hl )"
    {
        ""      => [ \&_parse_end, 1032 ],
    },
    # [1032] "jp ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xe9], $_[0]) }, 0 ],
    },
    # [1033] "jp ( ix"
    {
        ")"     => 1034,
    },
    # [1034] "jp ( ix )"
    {
        ""      => [ \&_parse_end, 1035 ],
    },
    # [1035] "jp ( ix ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe9], $_[0]) }, 0 ],
    },
    # [1036] "jp ( iy"
    {
        ")"     => 1037,
    },
    # [1037] "jp ( iy )"
    {
        ""      => [ \&_parse_end, 1038 ],
    },
    # [1038] "jp ( iy ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe9], $_[0]) }, 0 ],
    },
    # [1039] "jp NN"
    {
        ""      => [ \&_parse_end, 1040 ],
    },
    # [1040] "jp NN &_parse_end"
    {
        ""      => [ sub { return ([0xc3, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1041] "jp ["
    {
        "hl"    => 1042,
        "ix"    => 1045,
        "iy"    => 1048,
    },
    # [1042] "jp [ hl"
    {
        "]"     => 1043,
    },
    # [1043] "jp [ hl ]"
    {
        ""      => [ \&_parse_end, 1044 ],
    },
    # [1044] "jp [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xe9], $_[0]) }, 0 ],
    },
    # [1045] "jp [ ix"
    {
        "]"     => 1046,
    },
    # [1046] "jp [ ix ]"
    {
        ""      => [ \&_parse_end, 1047 ],
    },
    # [1047] "jp [ ix ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe9], $_[0]) }, 0 ],
    },
    # [1048] "jp [ iy"
    {
        "]"     => 1049,
    },
    # [1049] "jp [ iy ]"
    {
        ""      => [ \&_parse_end, 1050 ],
    },
    # [1050] "jp [ iy ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe9], $_[0]) }, 0 ],
    },
    # [1051] "jp c"
    {
        ","     => 1052,
    },
    # [1052] "jp c ,"
    {
        "NN"    => 1053,
    },
    # [1053] "jp c , NN"
    {
        ""      => [ \&_parse_end, 1054 ],
    },
    # [1054] "jp c , NN &_parse_end"
    {
        ""      => [ sub { return ([0xda, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1055] "jp hl"
    {
        ""      => [ \&_parse_end, 1056 ],
    },
    # [1056] "jp hl &_parse_end"
    {
        ""      => [ sub { return ([0xe9], $_[0]) }, 0 ],
    },
    # [1057] "jp ix"
    {
        ""      => [ \&_parse_end, 1058 ],
    },
    # [1058] "jp ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe9], $_[0]) }, 0 ],
    },
    # [1059] "jp iy"
    {
        ""      => [ \&_parse_end, 1060 ],
    },
    # [1060] "jp iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe9], $_[0]) }, 0 ],
    },
    # [1061] "jp m"
    {
        ","     => 1062,
    },
    # [1062] "jp m ,"
    {
        "NN"    => 1063,
    },
    # [1063] "jp m , NN"
    {
        ""      => [ \&_parse_end, 1064 ],
    },
    # [1064] "jp m , NN &_parse_end"
    {
        ""      => [ sub { return ([0xfa, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1065] "jp nc"
    {
        ","     => 1066,
    },
    # [1066] "jp nc ,"
    {
        "NN"    => 1067,
    },
    # [1067] "jp nc , NN"
    {
        ""      => [ \&_parse_end, 1068 ],
    },
    # [1068] "jp nc , NN &_parse_end"
    {
        ""      => [ sub { return ([0xd2, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1069] "jp nz"
    {
        ","     => 1070,
    },
    # [1070] "jp nz ,"
    {
        "NN"    => 1071,
    },
    # [1071] "jp nz , NN"
    {
        ""      => [ \&_parse_end, 1072 ],
    },
    # [1072] "jp nz , NN &_parse_end"
    {
        ""      => [ sub { return ([0xc2, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1073] "jp p"
    {
        ","     => 1074,
    },
    # [1074] "jp p ,"
    {
        "NN"    => 1075,
    },
    # [1075] "jp p , NN"
    {
        ""      => [ \&_parse_end, 1076 ],
    },
    # [1076] "jp p , NN &_parse_end"
    {
        ""      => [ sub { return ([0xf2, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1077] "jp pe"
    {
        ","     => 1078,
    },
    # [1078] "jp pe ,"
    {
        "NN"    => 1079,
    },
    # [1079] "jp pe , NN"
    {
        ""      => [ \&_parse_end, 1080 ],
    },
    # [1080] "jp pe , NN &_parse_end"
    {
        ""      => [ sub { return ([0xea, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1081] "jp po"
    {
        ","     => 1082,
    },
    # [1082] "jp po ,"
    {
        "NN"    => 1083,
    },
    # [1083] "jp po , NN"
    {
        ""      => [ \&_parse_end, 1084 ],
    },
    # [1084] "jp po , NN &_parse_end"
    {
        ""      => [ sub { return ([0xe2, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1085] "jp z"
    {
        ","     => 1086,
    },
    # [1086] "jp z ,"
    {
        "NN"    => 1087,
    },
    # [1087] "jp z , NN"
    {
        ""      => [ \&_parse_end, 1088 ],
    },
    # [1088] "jp z , NN &_parse_end"
    {
        ""      => [ sub { return ([0xca, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1089] "jr"
    {
        "NN"    => 1090,
        "c"     => 1092,
        "nc"    => 1096,
        "nz"    => 1100,
        "z"     => 1104,
    },
    # [1090] "jr NN"
    {
        ""      => [ \&_parse_end, 1091 ],
    },
    # [1091] "jr NN &_parse_end"
    {
        ""      => [ sub { return ([0x18, "NNo"], $_[0]) }, 0 ],
    },
    # [1092] "jr c"
    {
        ","     => 1093,
    },
    # [1093] "jr c ,"
    {
        "NN"    => 1094,
    },
    # [1094] "jr c , NN"
    {
        ""      => [ \&_parse_end, 1095 ],
    },
    # [1095] "jr c , NN &_parse_end"
    {
        ""      => [ sub { return ([0x38, "NNo"], $_[0]) }, 0 ],
    },
    # [1096] "jr nc"
    {
        ","     => 1097,
    },
    # [1097] "jr nc ,"
    {
        "NN"    => 1098,
    },
    # [1098] "jr nc , NN"
    {
        ""      => [ \&_parse_end, 1099 ],
    },
    # [1099] "jr nc , NN &_parse_end"
    {
        ""      => [ sub { return ([0x30, "NNo"], $_[0]) }, 0 ],
    },
    # [1100] "jr nz"
    {
        ","     => 1101,
    },
    # [1101] "jr nz ,"
    {
        "NN"    => 1102,
    },
    # [1102] "jr nz , NN"
    {
        ""      => [ \&_parse_end, 1103 ],
    },
    # [1103] "jr nz , NN &_parse_end"
    {
        ""      => [ sub { return ([0x20, "NNo"], $_[0]) }, 0 ],
    },
    # [1104] "jr z"
    {
        ","     => 1105,
    },
    # [1105] "jr z ,"
    {
        "NN"    => 1106,
    },
    # [1106] "jr z , NN"
    {
        ""      => [ \&_parse_end, 1107 ],
    },
    # [1107] "jr z , NN &_parse_end"
    {
        ""      => [ sub { return ([0x28, "NNo"], $_[0]) }, 0 ],
    },
    # [1108] "ld"
    {
        "("     => 1109,
        "["     => 1214,
        "a"     => 1319,
        "b"     => 1411,
        "bc"    => 1481,
        "c"     => 1529,
        "d"     => 1599,
        "de"    => 1669,
        "e"     => 1717,
        "h"     => 1787,
        "hl"    => 1833,
        "hx"    => 1875,
        "hy"    => 1893,
        "i"     => 1911,
        "ix"    => 1915,
        "ixh"   => 1937,
        "ixl"   => 1955,
        "iy"    => 1973,
        "iyh"   => 1995,
        "iyl"   => 2013,
        "l"     => 2031,
        "lx"    => 2077,
        "ly"    => 2095,
        "r"     => 2113,
        "sp"    => 2117,
        "xh"    => 2135,
        "xl"    => 2153,
        "yh"    => 2171,
        "yl"    => 2189,
    },
    # [1109] "ld ("
    {
        "NN"    => 1110,
        "bc"    => 1127,
        "de"    => 1132,
        "hl"    => 1137,
        "ix"    => 1160,
        "iy"    => 1187,
    },
    # [1110] "ld ( NN"
    {
        ")"     => 1111,
    },
    # [1111] "ld ( NN )"
    {
        ","     => 1112,
    },
    # [1112] "ld ( NN ) ,"
    {
        "a"     => 1113,
        "bc"    => 1115,
        "de"    => 1117,
        "hl"    => 1119,
        "ix"    => 1121,
        "iy"    => 1123,
        "sp"    => 1125,
    },
    # [1113] "ld ( NN ) , a"
    {
        ""      => [ \&_parse_end, 1114 ],
    },
    # [1114] "ld ( NN ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x32, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1115] "ld ( NN ) , bc"
    {
        ""      => [ \&_parse_end, 1116 ],
    },
    # [1116] "ld ( NN ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x43, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1117] "ld ( NN ) , de"
    {
        ""      => [ \&_parse_end, 1118 ],
    },
    # [1118] "ld ( NN ) , de &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x53, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1119] "ld ( NN ) , hl"
    {
        ""      => [ \&_parse_end, 1120 ],
    },
    # [1120] "ld ( NN ) , hl &_parse_end"
    {
        ""      => [ sub { return ([0x22, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1121] "ld ( NN ) , ix"
    {
        ""      => [ \&_parse_end, 1122 ],
    },
    # [1122] "ld ( NN ) , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x22, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1123] "ld ( NN ) , iy"
    {
        ""      => [ \&_parse_end, 1124 ],
    },
    # [1124] "ld ( NN ) , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x22, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1125] "ld ( NN ) , sp"
    {
        ""      => [ \&_parse_end, 1126 ],
    },
    # [1126] "ld ( NN ) , sp &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x73, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1127] "ld ( bc"
    {
        ")"     => 1128,
    },
    # [1128] "ld ( bc )"
    {
        ","     => 1129,
    },
    # [1129] "ld ( bc ) ,"
    {
        "a"     => 1130,
    },
    # [1130] "ld ( bc ) , a"
    {
        ""      => [ \&_parse_end, 1131 ],
    },
    # [1131] "ld ( bc ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x02], $_[0]) }, 0 ],
    },
    # [1132] "ld ( de"
    {
        ")"     => 1133,
    },
    # [1133] "ld ( de )"
    {
        ","     => 1134,
    },
    # [1134] "ld ( de ) ,"
    {
        "a"     => 1135,
    },
    # [1135] "ld ( de ) , a"
    {
        ""      => [ \&_parse_end, 1136 ],
    },
    # [1136] "ld ( de ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x12], $_[0]) }, 0 ],
    },
    # [1137] "ld ( hl"
    {
        ")"     => 1138,
    },
    # [1138] "ld ( hl )"
    {
        ","     => 1139,
    },
    # [1139] "ld ( hl ) ,"
    {
        "N"     => 1140,
        "a"     => 1142,
        "b"     => 1144,
        "bc"    => 1146,
        "c"     => 1148,
        "d"     => 1150,
        "de"    => 1152,
        "e"     => 1154,
        "h"     => 1156,
        "l"     => 1158,
    },
    # [1140] "ld ( hl ) , N"
    {
        ""      => [ \&_parse_end, 1141 ],
    },
    # [1141] "ld ( hl ) , N &_parse_end"
    {
        ""      => [ sub { return ([0x36, "N"], $_[0]) }, 0 ],
    },
    # [1142] "ld ( hl ) , a"
    {
        ""      => [ \&_parse_end, 1143 ],
    },
    # [1143] "ld ( hl ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x77], $_[0]) }, 0 ],
    },
    # [1144] "ld ( hl ) , b"
    {
        ""      => [ \&_parse_end, 1145 ],
    },
    # [1145] "ld ( hl ) , b &_parse_end"
    {
        ""      => [ sub { return ([0x70], $_[0]) }, 0 ],
    },
    # [1146] "ld ( hl ) , bc"
    {
        ""      => [ \&_parse_end, 1147 ],
    },
    # [1147] "ld ( hl ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x23, 0x70, 0x2b], $_[0]) }, 0 ],
    },
    # [1148] "ld ( hl ) , c"
    {
        ""      => [ \&_parse_end, 1149 ],
    },
    # [1149] "ld ( hl ) , c &_parse_end"
    {
        ""      => [ sub { return ([0x71], $_[0]) }, 0 ],
    },
    # [1150] "ld ( hl ) , d"
    {
        ""      => [ \&_parse_end, 1151 ],
    },
    # [1151] "ld ( hl ) , d &_parse_end"
    {
        ""      => [ sub { return ([0x72], $_[0]) }, 0 ],
    },
    # [1152] "ld ( hl ) , de"
    {
        ""      => [ \&_parse_end, 1153 ],
    },
    # [1153] "ld ( hl ) , de &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x23, 0x72, 0x2b], $_[0]) }, 0 ],
    },
    # [1154] "ld ( hl ) , e"
    {
        ""      => [ \&_parse_end, 1155 ],
    },
    # [1155] "ld ( hl ) , e &_parse_end"
    {
        ""      => [ sub { return ([0x73], $_[0]) }, 0 ],
    },
    # [1156] "ld ( hl ) , h"
    {
        ""      => [ \&_parse_end, 1157 ],
    },
    # [1157] "ld ( hl ) , h &_parse_end"
    {
        ""      => [ sub { return ([0x74], $_[0]) }, 0 ],
    },
    # [1158] "ld ( hl ) , l"
    {
        ""      => [ \&_parse_end, 1159 ],
    },
    # [1159] "ld ( hl ) , l &_parse_end"
    {
        ""      => [ sub { return ([0x75], $_[0]) }, 0 ],
    },
    # [1160] "ld ( ix"
    {
        "+"     => 1161,
    },
    # [1161] "ld ( ix +"
    {
        "DIS"   => 1162,
    },
    # [1162] "ld ( ix + DIS"
    {
        ")"     => 1163,
    },
    # [1163] "ld ( ix + DIS )"
    {
        ","     => 1164,
    },
    # [1164] "ld ( ix + DIS ) ,"
    {
        "N"     => 1165,
        "a"     => 1167,
        "b"     => 1169,
        "bc"    => 1171,
        "c"     => 1173,
        "d"     => 1175,
        "de"    => 1177,
        "e"     => 1179,
        "h"     => 1181,
        "hl"    => 1183,
        "l"     => 1185,
    },
    # [1165] "ld ( ix + DIS ) , N"
    {
        ""      => [ \&_parse_end, 1166 ],
    },
    # [1166] "ld ( ix + DIS ) , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x36, "DIS", "N"], $_[0]) }, 0 ],
    },
    # [1167] "ld ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 1168 ],
    },
    # [1168] "ld ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x77, "DIS"], $_[0]) }, 0 ],
    },
    # [1169] "ld ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 1170 ],
    },
    # [1170] "ld ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x70, "DIS"], $_[0]) }, 0 ],
    },
    # [1171] "ld ( ix + DIS ) , bc"
    {
        ""      => [ \&_parse_end, 1172 ],
    },
    # [1172] "ld ( ix + DIS ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x70, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1173] "ld ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 1174 ],
    },
    # [1174] "ld ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS"], $_[0]) }, 0 ],
    },
    # [1175] "ld ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 1176 ],
    },
    # [1176] "ld ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x72, "DIS"], $_[0]) }, 0 ],
    },
    # [1177] "ld ( ix + DIS ) , de"
    {
        ""      => [ \&_parse_end, 1178 ],
    },
    # [1178] "ld ( ix + DIS ) , de &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x72, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1179] "ld ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 1180 ],
    },
    # [1180] "ld ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS"], $_[0]) }, 0 ],
    },
    # [1181] "ld ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 1182 ],
    },
    # [1182] "ld ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x74, "DIS"], $_[0]) }, 0 ],
    },
    # [1183] "ld ( ix + DIS ) , hl"
    {
        ""      => [ \&_parse_end, 1184 ],
    },
    # [1184] "ld ( ix + DIS ) , hl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x74, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1185] "ld ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 1186 ],
    },
    # [1186] "ld ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS"], $_[0]) }, 0 ],
    },
    # [1187] "ld ( iy"
    {
        "+"     => 1188,
    },
    # [1188] "ld ( iy +"
    {
        "DIS"   => 1189,
    },
    # [1189] "ld ( iy + DIS"
    {
        ")"     => 1190,
    },
    # [1190] "ld ( iy + DIS )"
    {
        ","     => 1191,
    },
    # [1191] "ld ( iy + DIS ) ,"
    {
        "N"     => 1192,
        "a"     => 1194,
        "b"     => 1196,
        "bc"    => 1198,
        "c"     => 1200,
        "d"     => 1202,
        "de"    => 1204,
        "e"     => 1206,
        "h"     => 1208,
        "hl"    => 1210,
        "l"     => 1212,
    },
    # [1192] "ld ( iy + DIS ) , N"
    {
        ""      => [ \&_parse_end, 1193 ],
    },
    # [1193] "ld ( iy + DIS ) , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x36, "DIS", "N"], $_[0]) }, 0 ],
    },
    # [1194] "ld ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 1195 ],
    },
    # [1195] "ld ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x77, "DIS"], $_[0]) }, 0 ],
    },
    # [1196] "ld ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 1197 ],
    },
    # [1197] "ld ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x70, "DIS"], $_[0]) }, 0 ],
    },
    # [1198] "ld ( iy + DIS ) , bc"
    {
        ""      => [ \&_parse_end, 1199 ],
    },
    # [1199] "ld ( iy + DIS ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x70, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1200] "ld ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 1201 ],
    },
    # [1201] "ld ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS"], $_[0]) }, 0 ],
    },
    # [1202] "ld ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 1203 ],
    },
    # [1203] "ld ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x72, "DIS"], $_[0]) }, 0 ],
    },
    # [1204] "ld ( iy + DIS ) , de"
    {
        ""      => [ \&_parse_end, 1205 ],
    },
    # [1205] "ld ( iy + DIS ) , de &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x72, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1206] "ld ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 1207 ],
    },
    # [1207] "ld ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS"], $_[0]) }, 0 ],
    },
    # [1208] "ld ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 1209 ],
    },
    # [1209] "ld ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x74, "DIS"], $_[0]) }, 0 ],
    },
    # [1210] "ld ( iy + DIS ) , hl"
    {
        ""      => [ \&_parse_end, 1211 ],
    },
    # [1211] "ld ( iy + DIS ) , hl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x74, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1212] "ld ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 1213 ],
    },
    # [1213] "ld ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS"], $_[0]) }, 0 ],
    },
    # [1214] "ld ["
    {
        "NN"    => 1215,
        "bc"    => 1232,
        "de"    => 1237,
        "hl"    => 1242,
        "ix"    => 1265,
        "iy"    => 1292,
    },
    # [1215] "ld [ NN"
    {
        "]"     => 1216,
    },
    # [1216] "ld [ NN ]"
    {
        ","     => 1217,
    },
    # [1217] "ld [ NN ] ,"
    {
        "a"     => 1218,
        "bc"    => 1220,
        "de"    => 1222,
        "hl"    => 1224,
        "ix"    => 1226,
        "iy"    => 1228,
        "sp"    => 1230,
    },
    # [1218] "ld [ NN ] , a"
    {
        ""      => [ \&_parse_end, 1219 ],
    },
    # [1219] "ld [ NN ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x32, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1220] "ld [ NN ] , bc"
    {
        ""      => [ \&_parse_end, 1221 ],
    },
    # [1221] "ld [ NN ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x43, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1222] "ld [ NN ] , de"
    {
        ""      => [ \&_parse_end, 1223 ],
    },
    # [1223] "ld [ NN ] , de &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x53, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1224] "ld [ NN ] , hl"
    {
        ""      => [ \&_parse_end, 1225 ],
    },
    # [1225] "ld [ NN ] , hl &_parse_end"
    {
        ""      => [ sub { return ([0x22, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1226] "ld [ NN ] , ix"
    {
        ""      => [ \&_parse_end, 1227 ],
    },
    # [1227] "ld [ NN ] , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x22, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1228] "ld [ NN ] , iy"
    {
        ""      => [ \&_parse_end, 1229 ],
    },
    # [1229] "ld [ NN ] , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x22, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1230] "ld [ NN ] , sp"
    {
        ""      => [ \&_parse_end, 1231 ],
    },
    # [1231] "ld [ NN ] , sp &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x73, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1232] "ld [ bc"
    {
        "]"     => 1233,
    },
    # [1233] "ld [ bc ]"
    {
        ","     => 1234,
    },
    # [1234] "ld [ bc ] ,"
    {
        "a"     => 1235,
    },
    # [1235] "ld [ bc ] , a"
    {
        ""      => [ \&_parse_end, 1236 ],
    },
    # [1236] "ld [ bc ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x02], $_[0]) }, 0 ],
    },
    # [1237] "ld [ de"
    {
        "]"     => 1238,
    },
    # [1238] "ld [ de ]"
    {
        ","     => 1239,
    },
    # [1239] "ld [ de ] ,"
    {
        "a"     => 1240,
    },
    # [1240] "ld [ de ] , a"
    {
        ""      => [ \&_parse_end, 1241 ],
    },
    # [1241] "ld [ de ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x12], $_[0]) }, 0 ],
    },
    # [1242] "ld [ hl"
    {
        "]"     => 1243,
    },
    # [1243] "ld [ hl ]"
    {
        ","     => 1244,
    },
    # [1244] "ld [ hl ] ,"
    {
        "N"     => 1245,
        "a"     => 1247,
        "b"     => 1249,
        "bc"    => 1251,
        "c"     => 1253,
        "d"     => 1255,
        "de"    => 1257,
        "e"     => 1259,
        "h"     => 1261,
        "l"     => 1263,
    },
    # [1245] "ld [ hl ] , N"
    {
        ""      => [ \&_parse_end, 1246 ],
    },
    # [1246] "ld [ hl ] , N &_parse_end"
    {
        ""      => [ sub { return ([0x36, "N"], $_[0]) }, 0 ],
    },
    # [1247] "ld [ hl ] , a"
    {
        ""      => [ \&_parse_end, 1248 ],
    },
    # [1248] "ld [ hl ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x77], $_[0]) }, 0 ],
    },
    # [1249] "ld [ hl ] , b"
    {
        ""      => [ \&_parse_end, 1250 ],
    },
    # [1250] "ld [ hl ] , b &_parse_end"
    {
        ""      => [ sub { return ([0x70], $_[0]) }, 0 ],
    },
    # [1251] "ld [ hl ] , bc"
    {
        ""      => [ \&_parse_end, 1252 ],
    },
    # [1252] "ld [ hl ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x23, 0x70, 0x2b], $_[0]) }, 0 ],
    },
    # [1253] "ld [ hl ] , c"
    {
        ""      => [ \&_parse_end, 1254 ],
    },
    # [1254] "ld [ hl ] , c &_parse_end"
    {
        ""      => [ sub { return ([0x71], $_[0]) }, 0 ],
    },
    # [1255] "ld [ hl ] , d"
    {
        ""      => [ \&_parse_end, 1256 ],
    },
    # [1256] "ld [ hl ] , d &_parse_end"
    {
        ""      => [ sub { return ([0x72], $_[0]) }, 0 ],
    },
    # [1257] "ld [ hl ] , de"
    {
        ""      => [ \&_parse_end, 1258 ],
    },
    # [1258] "ld [ hl ] , de &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x23, 0x72, 0x2b], $_[0]) }, 0 ],
    },
    # [1259] "ld [ hl ] , e"
    {
        ""      => [ \&_parse_end, 1260 ],
    },
    # [1260] "ld [ hl ] , e &_parse_end"
    {
        ""      => [ sub { return ([0x73], $_[0]) }, 0 ],
    },
    # [1261] "ld [ hl ] , h"
    {
        ""      => [ \&_parse_end, 1262 ],
    },
    # [1262] "ld [ hl ] , h &_parse_end"
    {
        ""      => [ sub { return ([0x74], $_[0]) }, 0 ],
    },
    # [1263] "ld [ hl ] , l"
    {
        ""      => [ \&_parse_end, 1264 ],
    },
    # [1264] "ld [ hl ] , l &_parse_end"
    {
        ""      => [ sub { return ([0x75], $_[0]) }, 0 ],
    },
    # [1265] "ld [ ix"
    {
        "+"     => 1266,
    },
    # [1266] "ld [ ix +"
    {
        "DIS"   => 1267,
    },
    # [1267] "ld [ ix + DIS"
    {
        "]"     => 1268,
    },
    # [1268] "ld [ ix + DIS ]"
    {
        ","     => 1269,
    },
    # [1269] "ld [ ix + DIS ] ,"
    {
        "N"     => 1270,
        "a"     => 1272,
        "b"     => 1274,
        "bc"    => 1276,
        "c"     => 1278,
        "d"     => 1280,
        "de"    => 1282,
        "e"     => 1284,
        "h"     => 1286,
        "hl"    => 1288,
        "l"     => 1290,
    },
    # [1270] "ld [ ix + DIS ] , N"
    {
        ""      => [ \&_parse_end, 1271 ],
    },
    # [1271] "ld [ ix + DIS ] , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x36, "DIS", "N"], $_[0]) }, 0 ],
    },
    # [1272] "ld [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 1273 ],
    },
    # [1273] "ld [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x77, "DIS"], $_[0]) }, 0 ],
    },
    # [1274] "ld [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 1275 ],
    },
    # [1275] "ld [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x70, "DIS"], $_[0]) }, 0 ],
    },
    # [1276] "ld [ ix + DIS ] , bc"
    {
        ""      => [ \&_parse_end, 1277 ],
    },
    # [1277] "ld [ ix + DIS ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x70, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1278] "ld [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 1279 ],
    },
    # [1279] "ld [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS"], $_[0]) }, 0 ],
    },
    # [1280] "ld [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 1281 ],
    },
    # [1281] "ld [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x72, "DIS"], $_[0]) }, 0 ],
    },
    # [1282] "ld [ ix + DIS ] , de"
    {
        ""      => [ \&_parse_end, 1283 ],
    },
    # [1283] "ld [ ix + DIS ] , de &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x72, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1284] "ld [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 1285 ],
    },
    # [1285] "ld [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS"], $_[0]) }, 0 ],
    },
    # [1286] "ld [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 1287 ],
    },
    # [1287] "ld [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x74, "DIS"], $_[0]) }, 0 ],
    },
    # [1288] "ld [ ix + DIS ] , hl"
    {
        ""      => [ \&_parse_end, 1289 ],
    },
    # [1289] "ld [ ix + DIS ] , hl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x74, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1290] "ld [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 1291 ],
    },
    # [1291] "ld [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS"], $_[0]) }, 0 ],
    },
    # [1292] "ld [ iy"
    {
        "+"     => 1293,
    },
    # [1293] "ld [ iy +"
    {
        "DIS"   => 1294,
    },
    # [1294] "ld [ iy + DIS"
    {
        "]"     => 1295,
    },
    # [1295] "ld [ iy + DIS ]"
    {
        ","     => 1296,
    },
    # [1296] "ld [ iy + DIS ] ,"
    {
        "N"     => 1297,
        "a"     => 1299,
        "b"     => 1301,
        "bc"    => 1303,
        "c"     => 1305,
        "d"     => 1307,
        "de"    => 1309,
        "e"     => 1311,
        "h"     => 1313,
        "hl"    => 1315,
        "l"     => 1317,
    },
    # [1297] "ld [ iy + DIS ] , N"
    {
        ""      => [ \&_parse_end, 1298 ],
    },
    # [1298] "ld [ iy + DIS ] , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x36, "DIS", "N"], $_[0]) }, 0 ],
    },
    # [1299] "ld [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 1300 ],
    },
    # [1300] "ld [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x77, "DIS"], $_[0]) }, 0 ],
    },
    # [1301] "ld [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 1302 ],
    },
    # [1302] "ld [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x70, "DIS"], $_[0]) }, 0 ],
    },
    # [1303] "ld [ iy + DIS ] , bc"
    {
        ""      => [ \&_parse_end, 1304 ],
    },
    # [1304] "ld [ iy + DIS ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x70, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1305] "ld [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 1306 ],
    },
    # [1306] "ld [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS"], $_[0]) }, 0 ],
    },
    # [1307] "ld [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 1308 ],
    },
    # [1308] "ld [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x72, "DIS"], $_[0]) }, 0 ],
    },
    # [1309] "ld [ iy + DIS ] , de"
    {
        ""      => [ \&_parse_end, 1310 ],
    },
    # [1310] "ld [ iy + DIS ] , de &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x72, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1311] "ld [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 1312 ],
    },
    # [1312] "ld [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS"], $_[0]) }, 0 ],
    },
    # [1313] "ld [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 1314 ],
    },
    # [1314] "ld [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x74, "DIS"], $_[0]) }, 0 ],
    },
    # [1315] "ld [ iy + DIS ] , hl"
    {
        ""      => [ \&_parse_end, 1316 ],
    },
    # [1316] "ld [ iy + DIS ] , hl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x74, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1317] "ld [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 1318 ],
    },
    # [1318] "ld [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS"], $_[0]) }, 0 ],
    },
    # [1319] "ld a"
    {
        ","     => 1320,
    },
    # [1320] "ld a ,"
    {
        "("     => 1321,
        "N"     => 1344,
        "["     => 1346,
        "a"     => 1369,
        "b"     => 1371,
        "c"     => 1373,
        "d"     => 1375,
        "e"     => 1377,
        "h"     => 1379,
        "hx"    => 1381,
        "hy"    => 1383,
        "i"     => 1385,
        "ixh"   => 1387,
        "ixl"   => 1389,
        "iyh"   => 1391,
        "iyl"   => 1393,
        "l"     => 1395,
        "lx"    => 1397,
        "ly"    => 1399,
        "r"     => 1401,
        "xh"    => 1403,
        "xl"    => 1405,
        "yh"    => 1407,
        "yl"    => 1409,
    },
    # [1321] "ld a , ("
    {
        "NN"    => 1322,
        "bc"    => 1325,
        "de"    => 1328,
        "hl"    => 1331,
        "ix"    => 1334,
        "iy"    => 1339,
    },
    # [1322] "ld a , ( NN"
    {
        ")"     => 1323,
    },
    # [1323] "ld a , ( NN )"
    {
        ""      => [ \&_parse_end, 1324 ],
    },
    # [1324] "ld a , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0x3a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1325] "ld a , ( bc"
    {
        ")"     => 1326,
    },
    # [1326] "ld a , ( bc )"
    {
        ""      => [ \&_parse_end, 1327 ],
    },
    # [1327] "ld a , ( bc ) &_parse_end"
    {
        ""      => [ sub { return ([0x0a], $_[0]) }, 0 ],
    },
    # [1328] "ld a , ( de"
    {
        ")"     => 1329,
    },
    # [1329] "ld a , ( de )"
    {
        ""      => [ \&_parse_end, 1330 ],
    },
    # [1330] "ld a , ( de ) &_parse_end"
    {
        ""      => [ sub { return ([0x1a], $_[0]) }, 0 ],
    },
    # [1331] "ld a , ( hl"
    {
        ")"     => 1332,
    },
    # [1332] "ld a , ( hl )"
    {
        ""      => [ \&_parse_end, 1333 ],
    },
    # [1333] "ld a , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x7e], $_[0]) }, 0 ],
    },
    # [1334] "ld a , ( ix"
    {
        "+"     => 1335,
    },
    # [1335] "ld a , ( ix +"
    {
        "DIS"   => 1336,
    },
    # [1336] "ld a , ( ix + DIS"
    {
        ")"     => 1337,
    },
    # [1337] "ld a , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1338 ],
    },
    # [1338] "ld a , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7e, "DIS"], $_[0]) }, 0 ],
    },
    # [1339] "ld a , ( iy"
    {
        "+"     => 1340,
    },
    # [1340] "ld a , ( iy +"
    {
        "DIS"   => 1341,
    },
    # [1341] "ld a , ( iy + DIS"
    {
        ")"     => 1342,
    },
    # [1342] "ld a , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1343 ],
    },
    # [1343] "ld a , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7e, "DIS"], $_[0]) }, 0 ],
    },
    # [1344] "ld a , N"
    {
        ""      => [ \&_parse_end, 1345 ],
    },
    # [1345] "ld a , N &_parse_end"
    {
        ""      => [ sub { return ([0x3e, "N"], $_[0]) }, 0 ],
    },
    # [1346] "ld a , ["
    {
        "NN"    => 1347,
        "bc"    => 1350,
        "de"    => 1353,
        "hl"    => 1356,
        "ix"    => 1359,
        "iy"    => 1364,
    },
    # [1347] "ld a , [ NN"
    {
        "]"     => 1348,
    },
    # [1348] "ld a , [ NN ]"
    {
        ""      => [ \&_parse_end, 1349 ],
    },
    # [1349] "ld a , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0x3a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1350] "ld a , [ bc"
    {
        "]"     => 1351,
    },
    # [1351] "ld a , [ bc ]"
    {
        ""      => [ \&_parse_end, 1352 ],
    },
    # [1352] "ld a , [ bc ] &_parse_end"
    {
        ""      => [ sub { return ([0x0a], $_[0]) }, 0 ],
    },
    # [1353] "ld a , [ de"
    {
        "]"     => 1354,
    },
    # [1354] "ld a , [ de ]"
    {
        ""      => [ \&_parse_end, 1355 ],
    },
    # [1355] "ld a , [ de ] &_parse_end"
    {
        ""      => [ sub { return ([0x1a], $_[0]) }, 0 ],
    },
    # [1356] "ld a , [ hl"
    {
        "]"     => 1357,
    },
    # [1357] "ld a , [ hl ]"
    {
        ""      => [ \&_parse_end, 1358 ],
    },
    # [1358] "ld a , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x7e], $_[0]) }, 0 ],
    },
    # [1359] "ld a , [ ix"
    {
        "+"     => 1360,
    },
    # [1360] "ld a , [ ix +"
    {
        "DIS"   => 1361,
    },
    # [1361] "ld a , [ ix + DIS"
    {
        "]"     => 1362,
    },
    # [1362] "ld a , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1363 ],
    },
    # [1363] "ld a , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7e, "DIS"], $_[0]) }, 0 ],
    },
    # [1364] "ld a , [ iy"
    {
        "+"     => 1365,
    },
    # [1365] "ld a , [ iy +"
    {
        "DIS"   => 1366,
    },
    # [1366] "ld a , [ iy + DIS"
    {
        "]"     => 1367,
    },
    # [1367] "ld a , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1368 ],
    },
    # [1368] "ld a , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7e, "DIS"], $_[0]) }, 0 ],
    },
    # [1369] "ld a , a"
    {
        ""      => [ \&_parse_end, 1370 ],
    },
    # [1370] "ld a , a &_parse_end"
    {
        ""      => [ sub { return ([0x7f], $_[0]) }, 0 ],
    },
    # [1371] "ld a , b"
    {
        ""      => [ \&_parse_end, 1372 ],
    },
    # [1372] "ld a , b &_parse_end"
    {
        ""      => [ sub { return ([0x78], $_[0]) }, 0 ],
    },
    # [1373] "ld a , c"
    {
        ""      => [ \&_parse_end, 1374 ],
    },
    # [1374] "ld a , c &_parse_end"
    {
        ""      => [ sub { return ([0x79], $_[0]) }, 0 ],
    },
    # [1375] "ld a , d"
    {
        ""      => [ \&_parse_end, 1376 ],
    },
    # [1376] "ld a , d &_parse_end"
    {
        ""      => [ sub { return ([0x7a], $_[0]) }, 0 ],
    },
    # [1377] "ld a , e"
    {
        ""      => [ \&_parse_end, 1378 ],
    },
    # [1378] "ld a , e &_parse_end"
    {
        ""      => [ sub { return ([0x7b], $_[0]) }, 0 ],
    },
    # [1379] "ld a , h"
    {
        ""      => [ \&_parse_end, 1380 ],
    },
    # [1380] "ld a , h &_parse_end"
    {
        ""      => [ sub { return ([0x7c], $_[0]) }, 0 ],
    },
    # [1381] "ld a , hx"
    {
        ""      => [ \&_parse_end, 1382 ],
    },
    # [1382] "ld a , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7c], $_[0]) }, 0 ],
    },
    # [1383] "ld a , hy"
    {
        ""      => [ \&_parse_end, 1384 ],
    },
    # [1384] "ld a , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7c], $_[0]) }, 0 ],
    },
    # [1385] "ld a , i"
    {
        ""      => [ \&_parse_end, 1386 ],
    },
    # [1386] "ld a , i &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x57], $_[0]) }, 0 ],
    },
    # [1387] "ld a , ixh"
    {
        ""      => [ \&_parse_end, 1388 ],
    },
    # [1388] "ld a , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7c], $_[0]) }, 0 ],
    },
    # [1389] "ld a , ixl"
    {
        ""      => [ \&_parse_end, 1390 ],
    },
    # [1390] "ld a , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7d], $_[0]) }, 0 ],
    },
    # [1391] "ld a , iyh"
    {
        ""      => [ \&_parse_end, 1392 ],
    },
    # [1392] "ld a , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7c], $_[0]) }, 0 ],
    },
    # [1393] "ld a , iyl"
    {
        ""      => [ \&_parse_end, 1394 ],
    },
    # [1394] "ld a , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7d], $_[0]) }, 0 ],
    },
    # [1395] "ld a , l"
    {
        ""      => [ \&_parse_end, 1396 ],
    },
    # [1396] "ld a , l &_parse_end"
    {
        ""      => [ sub { return ([0x7d], $_[0]) }, 0 ],
    },
    # [1397] "ld a , lx"
    {
        ""      => [ \&_parse_end, 1398 ],
    },
    # [1398] "ld a , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7d], $_[0]) }, 0 ],
    },
    # [1399] "ld a , ly"
    {
        ""      => [ \&_parse_end, 1400 ],
    },
    # [1400] "ld a , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7d], $_[0]) }, 0 ],
    },
    # [1401] "ld a , r"
    {
        ""      => [ \&_parse_end, 1402 ],
    },
    # [1402] "ld a , r &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x5f], $_[0]) }, 0 ],
    },
    # [1403] "ld a , xh"
    {
        ""      => [ \&_parse_end, 1404 ],
    },
    # [1404] "ld a , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7c], $_[0]) }, 0 ],
    },
    # [1405] "ld a , xl"
    {
        ""      => [ \&_parse_end, 1406 ],
    },
    # [1406] "ld a , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7d], $_[0]) }, 0 ],
    },
    # [1407] "ld a , yh"
    {
        ""      => [ \&_parse_end, 1408 ],
    },
    # [1408] "ld a , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7c], $_[0]) }, 0 ],
    },
    # [1409] "ld a , yl"
    {
        ""      => [ \&_parse_end, 1410 ],
    },
    # [1410] "ld a , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7d], $_[0]) }, 0 ],
    },
    # [1411] "ld b"
    {
        ","     => 1412,
    },
    # [1412] "ld b ,"
    {
        "("     => 1413,
        "N"     => 1427,
        "["     => 1429,
        "a"     => 1443,
        "b"     => 1445,
        "c"     => 1447,
        "d"     => 1449,
        "e"     => 1451,
        "h"     => 1453,
        "hx"    => 1455,
        "hy"    => 1457,
        "ixh"   => 1459,
        "ixl"   => 1461,
        "iyh"   => 1463,
        "iyl"   => 1465,
        "l"     => 1467,
        "lx"    => 1469,
        "ly"    => 1471,
        "xh"    => 1473,
        "xl"    => 1475,
        "yh"    => 1477,
        "yl"    => 1479,
    },
    # [1413] "ld b , ("
    {
        "hl"    => 1414,
        "ix"    => 1417,
        "iy"    => 1422,
    },
    # [1414] "ld b , ( hl"
    {
        ")"     => 1415,
    },
    # [1415] "ld b , ( hl )"
    {
        ""      => [ \&_parse_end, 1416 ],
    },
    # [1416] "ld b , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x46], $_[0]) }, 0 ],
    },
    # [1417] "ld b , ( ix"
    {
        "+"     => 1418,
    },
    # [1418] "ld b , ( ix +"
    {
        "DIS"   => 1419,
    },
    # [1419] "ld b , ( ix + DIS"
    {
        ")"     => 1420,
    },
    # [1420] "ld b , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1421 ],
    },
    # [1421] "ld b , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x46, "DIS"], $_[0]) }, 0 ],
    },
    # [1422] "ld b , ( iy"
    {
        "+"     => 1423,
    },
    # [1423] "ld b , ( iy +"
    {
        "DIS"   => 1424,
    },
    # [1424] "ld b , ( iy + DIS"
    {
        ")"     => 1425,
    },
    # [1425] "ld b , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1426 ],
    },
    # [1426] "ld b , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x46, "DIS"], $_[0]) }, 0 ],
    },
    # [1427] "ld b , N"
    {
        ""      => [ \&_parse_end, 1428 ],
    },
    # [1428] "ld b , N &_parse_end"
    {
        ""      => [ sub { return ([0x06, "N"], $_[0]) }, 0 ],
    },
    # [1429] "ld b , ["
    {
        "hl"    => 1430,
        "ix"    => 1433,
        "iy"    => 1438,
    },
    # [1430] "ld b , [ hl"
    {
        "]"     => 1431,
    },
    # [1431] "ld b , [ hl ]"
    {
        ""      => [ \&_parse_end, 1432 ],
    },
    # [1432] "ld b , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x46], $_[0]) }, 0 ],
    },
    # [1433] "ld b , [ ix"
    {
        "+"     => 1434,
    },
    # [1434] "ld b , [ ix +"
    {
        "DIS"   => 1435,
    },
    # [1435] "ld b , [ ix + DIS"
    {
        "]"     => 1436,
    },
    # [1436] "ld b , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1437 ],
    },
    # [1437] "ld b , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x46, "DIS"], $_[0]) }, 0 ],
    },
    # [1438] "ld b , [ iy"
    {
        "+"     => 1439,
    },
    # [1439] "ld b , [ iy +"
    {
        "DIS"   => 1440,
    },
    # [1440] "ld b , [ iy + DIS"
    {
        "]"     => 1441,
    },
    # [1441] "ld b , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1442 ],
    },
    # [1442] "ld b , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x46, "DIS"], $_[0]) }, 0 ],
    },
    # [1443] "ld b , a"
    {
        ""      => [ \&_parse_end, 1444 ],
    },
    # [1444] "ld b , a &_parse_end"
    {
        ""      => [ sub { return ([0x47], $_[0]) }, 0 ],
    },
    # [1445] "ld b , b"
    {
        ""      => [ \&_parse_end, 1446 ],
    },
    # [1446] "ld b , b &_parse_end"
    {
        ""      => [ sub { return ([0x40], $_[0]) }, 0 ],
    },
    # [1447] "ld b , c"
    {
        ""      => [ \&_parse_end, 1448 ],
    },
    # [1448] "ld b , c &_parse_end"
    {
        ""      => [ sub { return ([0x41], $_[0]) }, 0 ],
    },
    # [1449] "ld b , d"
    {
        ""      => [ \&_parse_end, 1450 ],
    },
    # [1450] "ld b , d &_parse_end"
    {
        ""      => [ sub { return ([0x42], $_[0]) }, 0 ],
    },
    # [1451] "ld b , e"
    {
        ""      => [ \&_parse_end, 1452 ],
    },
    # [1452] "ld b , e &_parse_end"
    {
        ""      => [ sub { return ([0x43], $_[0]) }, 0 ],
    },
    # [1453] "ld b , h"
    {
        ""      => [ \&_parse_end, 1454 ],
    },
    # [1454] "ld b , h &_parse_end"
    {
        ""      => [ sub { return ([0x44], $_[0]) }, 0 ],
    },
    # [1455] "ld b , hx"
    {
        ""      => [ \&_parse_end, 1456 ],
    },
    # [1456] "ld b , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x44], $_[0]) }, 0 ],
    },
    # [1457] "ld b , hy"
    {
        ""      => [ \&_parse_end, 1458 ],
    },
    # [1458] "ld b , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x44], $_[0]) }, 0 ],
    },
    # [1459] "ld b , ixh"
    {
        ""      => [ \&_parse_end, 1460 ],
    },
    # [1460] "ld b , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x44], $_[0]) }, 0 ],
    },
    # [1461] "ld b , ixl"
    {
        ""      => [ \&_parse_end, 1462 ],
    },
    # [1462] "ld b , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x45], $_[0]) }, 0 ],
    },
    # [1463] "ld b , iyh"
    {
        ""      => [ \&_parse_end, 1464 ],
    },
    # [1464] "ld b , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x44], $_[0]) }, 0 ],
    },
    # [1465] "ld b , iyl"
    {
        ""      => [ \&_parse_end, 1466 ],
    },
    # [1466] "ld b , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x45], $_[0]) }, 0 ],
    },
    # [1467] "ld b , l"
    {
        ""      => [ \&_parse_end, 1468 ],
    },
    # [1468] "ld b , l &_parse_end"
    {
        ""      => [ sub { return ([0x45], $_[0]) }, 0 ],
    },
    # [1469] "ld b , lx"
    {
        ""      => [ \&_parse_end, 1470 ],
    },
    # [1470] "ld b , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x45], $_[0]) }, 0 ],
    },
    # [1471] "ld b , ly"
    {
        ""      => [ \&_parse_end, 1472 ],
    },
    # [1472] "ld b , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x45], $_[0]) }, 0 ],
    },
    # [1473] "ld b , xh"
    {
        ""      => [ \&_parse_end, 1474 ],
    },
    # [1474] "ld b , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x44], $_[0]) }, 0 ],
    },
    # [1475] "ld b , xl"
    {
        ""      => [ \&_parse_end, 1476 ],
    },
    # [1476] "ld b , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x45], $_[0]) }, 0 ],
    },
    # [1477] "ld b , yh"
    {
        ""      => [ \&_parse_end, 1478 ],
    },
    # [1478] "ld b , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x44], $_[0]) }, 0 ],
    },
    # [1479] "ld b , yl"
    {
        ""      => [ \&_parse_end, 1480 ],
    },
    # [1480] "ld b , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x45], $_[0]) }, 0 ],
    },
    # [1481] "ld bc"
    {
        ","     => 1482,
    },
    # [1482] "ld bc ,"
    {
        "("     => 1483,
        "NN"    => 1500,
        "["     => 1502,
        "bc"    => 1519,
        "de"    => 1521,
        "hl"    => 1523,
        "ix"    => 1525,
        "iy"    => 1527,
    },
    # [1483] "ld bc , ("
    {
        "NN"    => 1484,
        "hl"    => 1487,
        "ix"    => 1490,
        "iy"    => 1495,
    },
    # [1484] "ld bc , ( NN"
    {
        ")"     => 1485,
    },
    # [1485] "ld bc , ( NN )"
    {
        ""      => [ \&_parse_end, 1486 ],
    },
    # [1486] "ld bc , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x4b, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1487] "ld bc , ( hl"
    {
        ")"     => 1488,
    },
    # [1488] "ld bc , ( hl )"
    {
        ""      => [ \&_parse_end, 1489 ],
    },
    # [1489] "ld bc , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x23, 0x46, 0x2b], $_[0]) }, 0 ],
    },
    # [1490] "ld bc , ( ix"
    {
        "+"     => 1491,
    },
    # [1491] "ld bc , ( ix +"
    {
        "DIS"   => 1492,
    },
    # [1492] "ld bc , ( ix + DIS"
    {
        ")"     => 1493,
    },
    # [1493] "ld bc , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1494 ],
    },
    # [1494] "ld bc , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x46, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1495] "ld bc , ( iy"
    {
        "+"     => 1496,
    },
    # [1496] "ld bc , ( iy +"
    {
        "DIS"   => 1497,
    },
    # [1497] "ld bc , ( iy + DIS"
    {
        ")"     => 1498,
    },
    # [1498] "ld bc , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1499 ],
    },
    # [1499] "ld bc , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x46, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1500] "ld bc , NN"
    {
        ""      => [ \&_parse_end, 1501 ],
    },
    # [1501] "ld bc , NN &_parse_end"
    {
        ""      => [ sub { return ([0x01, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1502] "ld bc , ["
    {
        "NN"    => 1503,
        "hl"    => 1506,
        "ix"    => 1509,
        "iy"    => 1514,
    },
    # [1503] "ld bc , [ NN"
    {
        "]"     => 1504,
    },
    # [1504] "ld bc , [ NN ]"
    {
        ""      => [ \&_parse_end, 1505 ],
    },
    # [1505] "ld bc , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x4b, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1506] "ld bc , [ hl"
    {
        "]"     => 1507,
    },
    # [1507] "ld bc , [ hl ]"
    {
        ""      => [ \&_parse_end, 1508 ],
    },
    # [1508] "ld bc , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x23, 0x46, 0x2b], $_[0]) }, 0 ],
    },
    # [1509] "ld bc , [ ix"
    {
        "+"     => 1510,
    },
    # [1510] "ld bc , [ ix +"
    {
        "DIS"   => 1511,
    },
    # [1511] "ld bc , [ ix + DIS"
    {
        "]"     => 1512,
    },
    # [1512] "ld bc , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1513 ],
    },
    # [1513] "ld bc , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x46, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1514] "ld bc , [ iy"
    {
        "+"     => 1515,
    },
    # [1515] "ld bc , [ iy +"
    {
        "DIS"   => 1516,
    },
    # [1516] "ld bc , [ iy + DIS"
    {
        "]"     => 1517,
    },
    # [1517] "ld bc , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1518 ],
    },
    # [1518] "ld bc , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x46, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1519] "ld bc , bc"
    {
        ""      => [ \&_parse_end, 1520 ],
    },
    # [1520] "ld bc , bc &_parse_end"
    {
        ""      => [ sub { return ([0x40, 0x49], $_[0]) }, 0 ],
    },
    # [1521] "ld bc , de"
    {
        ""      => [ \&_parse_end, 1522 ],
    },
    # [1522] "ld bc , de &_parse_end"
    {
        ""      => [ sub { return ([0x42, 0x4b], $_[0]) }, 0 ],
    },
    # [1523] "ld bc , hl"
    {
        ""      => [ \&_parse_end, 1524 ],
    },
    # [1524] "ld bc , hl &_parse_end"
    {
        ""      => [ sub { return ([0x44, 0x4d], $_[0]) }, 0 ],
    },
    # [1525] "ld bc , ix"
    {
        ""      => [ \&_parse_end, 1526 ],
    },
    # [1526] "ld bc , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x44, 0xdd, 0x4d], $_[0]) }, 0 ],
    },
    # [1527] "ld bc , iy"
    {
        ""      => [ \&_parse_end, 1528 ],
    },
    # [1528] "ld bc , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x44, 0xfd, 0x4d], $_[0]) }, 0 ],
    },
    # [1529] "ld c"
    {
        ","     => 1530,
    },
    # [1530] "ld c ,"
    {
        "("     => 1531,
        "N"     => 1545,
        "["     => 1547,
        "a"     => 1561,
        "b"     => 1563,
        "c"     => 1565,
        "d"     => 1567,
        "e"     => 1569,
        "h"     => 1571,
        "hx"    => 1573,
        "hy"    => 1575,
        "ixh"   => 1577,
        "ixl"   => 1579,
        "iyh"   => 1581,
        "iyl"   => 1583,
        "l"     => 1585,
        "lx"    => 1587,
        "ly"    => 1589,
        "xh"    => 1591,
        "xl"    => 1593,
        "yh"    => 1595,
        "yl"    => 1597,
    },
    # [1531] "ld c , ("
    {
        "hl"    => 1532,
        "ix"    => 1535,
        "iy"    => 1540,
    },
    # [1532] "ld c , ( hl"
    {
        ")"     => 1533,
    },
    # [1533] "ld c , ( hl )"
    {
        ""      => [ \&_parse_end, 1534 ],
    },
    # [1534] "ld c , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x4e], $_[0]) }, 0 ],
    },
    # [1535] "ld c , ( ix"
    {
        "+"     => 1536,
    },
    # [1536] "ld c , ( ix +"
    {
        "DIS"   => 1537,
    },
    # [1537] "ld c , ( ix + DIS"
    {
        ")"     => 1538,
    },
    # [1538] "ld c , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1539 ],
    },
    # [1539] "ld c , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS"], $_[0]) }, 0 ],
    },
    # [1540] "ld c , ( iy"
    {
        "+"     => 1541,
    },
    # [1541] "ld c , ( iy +"
    {
        "DIS"   => 1542,
    },
    # [1542] "ld c , ( iy + DIS"
    {
        ")"     => 1543,
    },
    # [1543] "ld c , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1544 ],
    },
    # [1544] "ld c , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS"], $_[0]) }, 0 ],
    },
    # [1545] "ld c , N"
    {
        ""      => [ \&_parse_end, 1546 ],
    },
    # [1546] "ld c , N &_parse_end"
    {
        ""      => [ sub { return ([0x0e, "N"], $_[0]) }, 0 ],
    },
    # [1547] "ld c , ["
    {
        "hl"    => 1548,
        "ix"    => 1551,
        "iy"    => 1556,
    },
    # [1548] "ld c , [ hl"
    {
        "]"     => 1549,
    },
    # [1549] "ld c , [ hl ]"
    {
        ""      => [ \&_parse_end, 1550 ],
    },
    # [1550] "ld c , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x4e], $_[0]) }, 0 ],
    },
    # [1551] "ld c , [ ix"
    {
        "+"     => 1552,
    },
    # [1552] "ld c , [ ix +"
    {
        "DIS"   => 1553,
    },
    # [1553] "ld c , [ ix + DIS"
    {
        "]"     => 1554,
    },
    # [1554] "ld c , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1555 ],
    },
    # [1555] "ld c , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS"], $_[0]) }, 0 ],
    },
    # [1556] "ld c , [ iy"
    {
        "+"     => 1557,
    },
    # [1557] "ld c , [ iy +"
    {
        "DIS"   => 1558,
    },
    # [1558] "ld c , [ iy + DIS"
    {
        "]"     => 1559,
    },
    # [1559] "ld c , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1560 ],
    },
    # [1560] "ld c , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS"], $_[0]) }, 0 ],
    },
    # [1561] "ld c , a"
    {
        ""      => [ \&_parse_end, 1562 ],
    },
    # [1562] "ld c , a &_parse_end"
    {
        ""      => [ sub { return ([0x4f], $_[0]) }, 0 ],
    },
    # [1563] "ld c , b"
    {
        ""      => [ \&_parse_end, 1564 ],
    },
    # [1564] "ld c , b &_parse_end"
    {
        ""      => [ sub { return ([0x48], $_[0]) }, 0 ],
    },
    # [1565] "ld c , c"
    {
        ""      => [ \&_parse_end, 1566 ],
    },
    # [1566] "ld c , c &_parse_end"
    {
        ""      => [ sub { return ([0x49], $_[0]) }, 0 ],
    },
    # [1567] "ld c , d"
    {
        ""      => [ \&_parse_end, 1568 ],
    },
    # [1568] "ld c , d &_parse_end"
    {
        ""      => [ sub { return ([0x4a], $_[0]) }, 0 ],
    },
    # [1569] "ld c , e"
    {
        ""      => [ \&_parse_end, 1570 ],
    },
    # [1570] "ld c , e &_parse_end"
    {
        ""      => [ sub { return ([0x4b], $_[0]) }, 0 ],
    },
    # [1571] "ld c , h"
    {
        ""      => [ \&_parse_end, 1572 ],
    },
    # [1572] "ld c , h &_parse_end"
    {
        ""      => [ sub { return ([0x4c], $_[0]) }, 0 ],
    },
    # [1573] "ld c , hx"
    {
        ""      => [ \&_parse_end, 1574 ],
    },
    # [1574] "ld c , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4c], $_[0]) }, 0 ],
    },
    # [1575] "ld c , hy"
    {
        ""      => [ \&_parse_end, 1576 ],
    },
    # [1576] "ld c , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4c], $_[0]) }, 0 ],
    },
    # [1577] "ld c , ixh"
    {
        ""      => [ \&_parse_end, 1578 ],
    },
    # [1578] "ld c , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4c], $_[0]) }, 0 ],
    },
    # [1579] "ld c , ixl"
    {
        ""      => [ \&_parse_end, 1580 ],
    },
    # [1580] "ld c , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4d], $_[0]) }, 0 ],
    },
    # [1581] "ld c , iyh"
    {
        ""      => [ \&_parse_end, 1582 ],
    },
    # [1582] "ld c , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4c], $_[0]) }, 0 ],
    },
    # [1583] "ld c , iyl"
    {
        ""      => [ \&_parse_end, 1584 ],
    },
    # [1584] "ld c , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4d], $_[0]) }, 0 ],
    },
    # [1585] "ld c , l"
    {
        ""      => [ \&_parse_end, 1586 ],
    },
    # [1586] "ld c , l &_parse_end"
    {
        ""      => [ sub { return ([0x4d], $_[0]) }, 0 ],
    },
    # [1587] "ld c , lx"
    {
        ""      => [ \&_parse_end, 1588 ],
    },
    # [1588] "ld c , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4d], $_[0]) }, 0 ],
    },
    # [1589] "ld c , ly"
    {
        ""      => [ \&_parse_end, 1590 ],
    },
    # [1590] "ld c , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4d], $_[0]) }, 0 ],
    },
    # [1591] "ld c , xh"
    {
        ""      => [ \&_parse_end, 1592 ],
    },
    # [1592] "ld c , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4c], $_[0]) }, 0 ],
    },
    # [1593] "ld c , xl"
    {
        ""      => [ \&_parse_end, 1594 ],
    },
    # [1594] "ld c , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4d], $_[0]) }, 0 ],
    },
    # [1595] "ld c , yh"
    {
        ""      => [ \&_parse_end, 1596 ],
    },
    # [1596] "ld c , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4c], $_[0]) }, 0 ],
    },
    # [1597] "ld c , yl"
    {
        ""      => [ \&_parse_end, 1598 ],
    },
    # [1598] "ld c , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4d], $_[0]) }, 0 ],
    },
    # [1599] "ld d"
    {
        ","     => 1600,
    },
    # [1600] "ld d ,"
    {
        "("     => 1601,
        "N"     => 1615,
        "["     => 1617,
        "a"     => 1631,
        "b"     => 1633,
        "c"     => 1635,
        "d"     => 1637,
        "e"     => 1639,
        "h"     => 1641,
        "hx"    => 1643,
        "hy"    => 1645,
        "ixh"   => 1647,
        "ixl"   => 1649,
        "iyh"   => 1651,
        "iyl"   => 1653,
        "l"     => 1655,
        "lx"    => 1657,
        "ly"    => 1659,
        "xh"    => 1661,
        "xl"    => 1663,
        "yh"    => 1665,
        "yl"    => 1667,
    },
    # [1601] "ld d , ("
    {
        "hl"    => 1602,
        "ix"    => 1605,
        "iy"    => 1610,
    },
    # [1602] "ld d , ( hl"
    {
        ")"     => 1603,
    },
    # [1603] "ld d , ( hl )"
    {
        ""      => [ \&_parse_end, 1604 ],
    },
    # [1604] "ld d , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x56], $_[0]) }, 0 ],
    },
    # [1605] "ld d , ( ix"
    {
        "+"     => 1606,
    },
    # [1606] "ld d , ( ix +"
    {
        "DIS"   => 1607,
    },
    # [1607] "ld d , ( ix + DIS"
    {
        ")"     => 1608,
    },
    # [1608] "ld d , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1609 ],
    },
    # [1609] "ld d , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x56, "DIS"], $_[0]) }, 0 ],
    },
    # [1610] "ld d , ( iy"
    {
        "+"     => 1611,
    },
    # [1611] "ld d , ( iy +"
    {
        "DIS"   => 1612,
    },
    # [1612] "ld d , ( iy + DIS"
    {
        ")"     => 1613,
    },
    # [1613] "ld d , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1614 ],
    },
    # [1614] "ld d , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x56, "DIS"], $_[0]) }, 0 ],
    },
    # [1615] "ld d , N"
    {
        ""      => [ \&_parse_end, 1616 ],
    },
    # [1616] "ld d , N &_parse_end"
    {
        ""      => [ sub { return ([0x16, "N"], $_[0]) }, 0 ],
    },
    # [1617] "ld d , ["
    {
        "hl"    => 1618,
        "ix"    => 1621,
        "iy"    => 1626,
    },
    # [1618] "ld d , [ hl"
    {
        "]"     => 1619,
    },
    # [1619] "ld d , [ hl ]"
    {
        ""      => [ \&_parse_end, 1620 ],
    },
    # [1620] "ld d , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x56], $_[0]) }, 0 ],
    },
    # [1621] "ld d , [ ix"
    {
        "+"     => 1622,
    },
    # [1622] "ld d , [ ix +"
    {
        "DIS"   => 1623,
    },
    # [1623] "ld d , [ ix + DIS"
    {
        "]"     => 1624,
    },
    # [1624] "ld d , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1625 ],
    },
    # [1625] "ld d , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x56, "DIS"], $_[0]) }, 0 ],
    },
    # [1626] "ld d , [ iy"
    {
        "+"     => 1627,
    },
    # [1627] "ld d , [ iy +"
    {
        "DIS"   => 1628,
    },
    # [1628] "ld d , [ iy + DIS"
    {
        "]"     => 1629,
    },
    # [1629] "ld d , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1630 ],
    },
    # [1630] "ld d , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x56, "DIS"], $_[0]) }, 0 ],
    },
    # [1631] "ld d , a"
    {
        ""      => [ \&_parse_end, 1632 ],
    },
    # [1632] "ld d , a &_parse_end"
    {
        ""      => [ sub { return ([0x57], $_[0]) }, 0 ],
    },
    # [1633] "ld d , b"
    {
        ""      => [ \&_parse_end, 1634 ],
    },
    # [1634] "ld d , b &_parse_end"
    {
        ""      => [ sub { return ([0x50], $_[0]) }, 0 ],
    },
    # [1635] "ld d , c"
    {
        ""      => [ \&_parse_end, 1636 ],
    },
    # [1636] "ld d , c &_parse_end"
    {
        ""      => [ sub { return ([0x51], $_[0]) }, 0 ],
    },
    # [1637] "ld d , d"
    {
        ""      => [ \&_parse_end, 1638 ],
    },
    # [1638] "ld d , d &_parse_end"
    {
        ""      => [ sub { return ([0x52], $_[0]) }, 0 ],
    },
    # [1639] "ld d , e"
    {
        ""      => [ \&_parse_end, 1640 ],
    },
    # [1640] "ld d , e &_parse_end"
    {
        ""      => [ sub { return ([0x53], $_[0]) }, 0 ],
    },
    # [1641] "ld d , h"
    {
        ""      => [ \&_parse_end, 1642 ],
    },
    # [1642] "ld d , h &_parse_end"
    {
        ""      => [ sub { return ([0x54], $_[0]) }, 0 ],
    },
    # [1643] "ld d , hx"
    {
        ""      => [ \&_parse_end, 1644 ],
    },
    # [1644] "ld d , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x54], $_[0]) }, 0 ],
    },
    # [1645] "ld d , hy"
    {
        ""      => [ \&_parse_end, 1646 ],
    },
    # [1646] "ld d , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x54], $_[0]) }, 0 ],
    },
    # [1647] "ld d , ixh"
    {
        ""      => [ \&_parse_end, 1648 ],
    },
    # [1648] "ld d , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x54], $_[0]) }, 0 ],
    },
    # [1649] "ld d , ixl"
    {
        ""      => [ \&_parse_end, 1650 ],
    },
    # [1650] "ld d , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x55], $_[0]) }, 0 ],
    },
    # [1651] "ld d , iyh"
    {
        ""      => [ \&_parse_end, 1652 ],
    },
    # [1652] "ld d , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x54], $_[0]) }, 0 ],
    },
    # [1653] "ld d , iyl"
    {
        ""      => [ \&_parse_end, 1654 ],
    },
    # [1654] "ld d , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x55], $_[0]) }, 0 ],
    },
    # [1655] "ld d , l"
    {
        ""      => [ \&_parse_end, 1656 ],
    },
    # [1656] "ld d , l &_parse_end"
    {
        ""      => [ sub { return ([0x55], $_[0]) }, 0 ],
    },
    # [1657] "ld d , lx"
    {
        ""      => [ \&_parse_end, 1658 ],
    },
    # [1658] "ld d , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x55], $_[0]) }, 0 ],
    },
    # [1659] "ld d , ly"
    {
        ""      => [ \&_parse_end, 1660 ],
    },
    # [1660] "ld d , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x55], $_[0]) }, 0 ],
    },
    # [1661] "ld d , xh"
    {
        ""      => [ \&_parse_end, 1662 ],
    },
    # [1662] "ld d , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x54], $_[0]) }, 0 ],
    },
    # [1663] "ld d , xl"
    {
        ""      => [ \&_parse_end, 1664 ],
    },
    # [1664] "ld d , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x55], $_[0]) }, 0 ],
    },
    # [1665] "ld d , yh"
    {
        ""      => [ \&_parse_end, 1666 ],
    },
    # [1666] "ld d , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x54], $_[0]) }, 0 ],
    },
    # [1667] "ld d , yl"
    {
        ""      => [ \&_parse_end, 1668 ],
    },
    # [1668] "ld d , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x55], $_[0]) }, 0 ],
    },
    # [1669] "ld de"
    {
        ","     => 1670,
    },
    # [1670] "ld de ,"
    {
        "("     => 1671,
        "NN"    => 1688,
        "["     => 1690,
        "bc"    => 1707,
        "de"    => 1709,
        "hl"    => 1711,
        "ix"    => 1713,
        "iy"    => 1715,
    },
    # [1671] "ld de , ("
    {
        "NN"    => 1672,
        "hl"    => 1675,
        "ix"    => 1678,
        "iy"    => 1683,
    },
    # [1672] "ld de , ( NN"
    {
        ")"     => 1673,
    },
    # [1673] "ld de , ( NN )"
    {
        ""      => [ \&_parse_end, 1674 ],
    },
    # [1674] "ld de , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x5b, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1675] "ld de , ( hl"
    {
        ")"     => 1676,
    },
    # [1676] "ld de , ( hl )"
    {
        ""      => [ \&_parse_end, 1677 ],
    },
    # [1677] "ld de , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x23, 0x56, 0x2b], $_[0]) }, 0 ],
    },
    # [1678] "ld de , ( ix"
    {
        "+"     => 1679,
    },
    # [1679] "ld de , ( ix +"
    {
        "DIS"   => 1680,
    },
    # [1680] "ld de , ( ix + DIS"
    {
        ")"     => 1681,
    },
    # [1681] "ld de , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1682 ],
    },
    # [1682] "ld de , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x56, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1683] "ld de , ( iy"
    {
        "+"     => 1684,
    },
    # [1684] "ld de , ( iy +"
    {
        "DIS"   => 1685,
    },
    # [1685] "ld de , ( iy + DIS"
    {
        ")"     => 1686,
    },
    # [1686] "ld de , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1687 ],
    },
    # [1687] "ld de , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x56, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1688] "ld de , NN"
    {
        ""      => [ \&_parse_end, 1689 ],
    },
    # [1689] "ld de , NN &_parse_end"
    {
        ""      => [ sub { return ([0x11, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1690] "ld de , ["
    {
        "NN"    => 1691,
        "hl"    => 1694,
        "ix"    => 1697,
        "iy"    => 1702,
    },
    # [1691] "ld de , [ NN"
    {
        "]"     => 1692,
    },
    # [1692] "ld de , [ NN ]"
    {
        ""      => [ \&_parse_end, 1693 ],
    },
    # [1693] "ld de , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x5b, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1694] "ld de , [ hl"
    {
        "]"     => 1695,
    },
    # [1695] "ld de , [ hl ]"
    {
        ""      => [ \&_parse_end, 1696 ],
    },
    # [1696] "ld de , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x23, 0x56, 0x2b], $_[0]) }, 0 ],
    },
    # [1697] "ld de , [ ix"
    {
        "+"     => 1698,
    },
    # [1698] "ld de , [ ix +"
    {
        "DIS"   => 1699,
    },
    # [1699] "ld de , [ ix + DIS"
    {
        "]"     => 1700,
    },
    # [1700] "ld de , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1701 ],
    },
    # [1701] "ld de , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x56, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1702] "ld de , [ iy"
    {
        "+"     => 1703,
    },
    # [1703] "ld de , [ iy +"
    {
        "DIS"   => 1704,
    },
    # [1704] "ld de , [ iy + DIS"
    {
        "]"     => 1705,
    },
    # [1705] "ld de , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1706 ],
    },
    # [1706] "ld de , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x56, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1707] "ld de , bc"
    {
        ""      => [ \&_parse_end, 1708 ],
    },
    # [1708] "ld de , bc &_parse_end"
    {
        ""      => [ sub { return ([0x50, 0x59], $_[0]) }, 0 ],
    },
    # [1709] "ld de , de"
    {
        ""      => [ \&_parse_end, 1710 ],
    },
    # [1710] "ld de , de &_parse_end"
    {
        ""      => [ sub { return ([0x52, 0x5b], $_[0]) }, 0 ],
    },
    # [1711] "ld de , hl"
    {
        ""      => [ \&_parse_end, 1712 ],
    },
    # [1712] "ld de , hl &_parse_end"
    {
        ""      => [ sub { return ([0x54, 0x5d], $_[0]) }, 0 ],
    },
    # [1713] "ld de , ix"
    {
        ""      => [ \&_parse_end, 1714 ],
    },
    # [1714] "ld de , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x54, 0xdd, 0x5d], $_[0]) }, 0 ],
    },
    # [1715] "ld de , iy"
    {
        ""      => [ \&_parse_end, 1716 ],
    },
    # [1716] "ld de , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x54, 0xfd, 0x5d], $_[0]) }, 0 ],
    },
    # [1717] "ld e"
    {
        ","     => 1718,
    },
    # [1718] "ld e ,"
    {
        "("     => 1719,
        "N"     => 1733,
        "["     => 1735,
        "a"     => 1749,
        "b"     => 1751,
        "c"     => 1753,
        "d"     => 1755,
        "e"     => 1757,
        "h"     => 1759,
        "hx"    => 1761,
        "hy"    => 1763,
        "ixh"   => 1765,
        "ixl"   => 1767,
        "iyh"   => 1769,
        "iyl"   => 1771,
        "l"     => 1773,
        "lx"    => 1775,
        "ly"    => 1777,
        "xh"    => 1779,
        "xl"    => 1781,
        "yh"    => 1783,
        "yl"    => 1785,
    },
    # [1719] "ld e , ("
    {
        "hl"    => 1720,
        "ix"    => 1723,
        "iy"    => 1728,
    },
    # [1720] "ld e , ( hl"
    {
        ")"     => 1721,
    },
    # [1721] "ld e , ( hl )"
    {
        ""      => [ \&_parse_end, 1722 ],
    },
    # [1722] "ld e , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x5e], $_[0]) }, 0 ],
    },
    # [1723] "ld e , ( ix"
    {
        "+"     => 1724,
    },
    # [1724] "ld e , ( ix +"
    {
        "DIS"   => 1725,
    },
    # [1725] "ld e , ( ix + DIS"
    {
        ")"     => 1726,
    },
    # [1726] "ld e , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1727 ],
    },
    # [1727] "ld e , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS"], $_[0]) }, 0 ],
    },
    # [1728] "ld e , ( iy"
    {
        "+"     => 1729,
    },
    # [1729] "ld e , ( iy +"
    {
        "DIS"   => 1730,
    },
    # [1730] "ld e , ( iy + DIS"
    {
        ")"     => 1731,
    },
    # [1731] "ld e , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1732 ],
    },
    # [1732] "ld e , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS"], $_[0]) }, 0 ],
    },
    # [1733] "ld e , N"
    {
        ""      => [ \&_parse_end, 1734 ],
    },
    # [1734] "ld e , N &_parse_end"
    {
        ""      => [ sub { return ([0x1e, "N"], $_[0]) }, 0 ],
    },
    # [1735] "ld e , ["
    {
        "hl"    => 1736,
        "ix"    => 1739,
        "iy"    => 1744,
    },
    # [1736] "ld e , [ hl"
    {
        "]"     => 1737,
    },
    # [1737] "ld e , [ hl ]"
    {
        ""      => [ \&_parse_end, 1738 ],
    },
    # [1738] "ld e , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x5e], $_[0]) }, 0 ],
    },
    # [1739] "ld e , [ ix"
    {
        "+"     => 1740,
    },
    # [1740] "ld e , [ ix +"
    {
        "DIS"   => 1741,
    },
    # [1741] "ld e , [ ix + DIS"
    {
        "]"     => 1742,
    },
    # [1742] "ld e , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1743 ],
    },
    # [1743] "ld e , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS"], $_[0]) }, 0 ],
    },
    # [1744] "ld e , [ iy"
    {
        "+"     => 1745,
    },
    # [1745] "ld e , [ iy +"
    {
        "DIS"   => 1746,
    },
    # [1746] "ld e , [ iy + DIS"
    {
        "]"     => 1747,
    },
    # [1747] "ld e , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1748 ],
    },
    # [1748] "ld e , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS"], $_[0]) }, 0 ],
    },
    # [1749] "ld e , a"
    {
        ""      => [ \&_parse_end, 1750 ],
    },
    # [1750] "ld e , a &_parse_end"
    {
        ""      => [ sub { return ([0x5f], $_[0]) }, 0 ],
    },
    # [1751] "ld e , b"
    {
        ""      => [ \&_parse_end, 1752 ],
    },
    # [1752] "ld e , b &_parse_end"
    {
        ""      => [ sub { return ([0x58], $_[0]) }, 0 ],
    },
    # [1753] "ld e , c"
    {
        ""      => [ \&_parse_end, 1754 ],
    },
    # [1754] "ld e , c &_parse_end"
    {
        ""      => [ sub { return ([0x59], $_[0]) }, 0 ],
    },
    # [1755] "ld e , d"
    {
        ""      => [ \&_parse_end, 1756 ],
    },
    # [1756] "ld e , d &_parse_end"
    {
        ""      => [ sub { return ([0x5a], $_[0]) }, 0 ],
    },
    # [1757] "ld e , e"
    {
        ""      => [ \&_parse_end, 1758 ],
    },
    # [1758] "ld e , e &_parse_end"
    {
        ""      => [ sub { return ([0x5b], $_[0]) }, 0 ],
    },
    # [1759] "ld e , h"
    {
        ""      => [ \&_parse_end, 1760 ],
    },
    # [1760] "ld e , h &_parse_end"
    {
        ""      => [ sub { return ([0x5c], $_[0]) }, 0 ],
    },
    # [1761] "ld e , hx"
    {
        ""      => [ \&_parse_end, 1762 ],
    },
    # [1762] "ld e , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5c], $_[0]) }, 0 ],
    },
    # [1763] "ld e , hy"
    {
        ""      => [ \&_parse_end, 1764 ],
    },
    # [1764] "ld e , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5c], $_[0]) }, 0 ],
    },
    # [1765] "ld e , ixh"
    {
        ""      => [ \&_parse_end, 1766 ],
    },
    # [1766] "ld e , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5c], $_[0]) }, 0 ],
    },
    # [1767] "ld e , ixl"
    {
        ""      => [ \&_parse_end, 1768 ],
    },
    # [1768] "ld e , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5d], $_[0]) }, 0 ],
    },
    # [1769] "ld e , iyh"
    {
        ""      => [ \&_parse_end, 1770 ],
    },
    # [1770] "ld e , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5c], $_[0]) }, 0 ],
    },
    # [1771] "ld e , iyl"
    {
        ""      => [ \&_parse_end, 1772 ],
    },
    # [1772] "ld e , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5d], $_[0]) }, 0 ],
    },
    # [1773] "ld e , l"
    {
        ""      => [ \&_parse_end, 1774 ],
    },
    # [1774] "ld e , l &_parse_end"
    {
        ""      => [ sub { return ([0x5d], $_[0]) }, 0 ],
    },
    # [1775] "ld e , lx"
    {
        ""      => [ \&_parse_end, 1776 ],
    },
    # [1776] "ld e , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5d], $_[0]) }, 0 ],
    },
    # [1777] "ld e , ly"
    {
        ""      => [ \&_parse_end, 1778 ],
    },
    # [1778] "ld e , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5d], $_[0]) }, 0 ],
    },
    # [1779] "ld e , xh"
    {
        ""      => [ \&_parse_end, 1780 ],
    },
    # [1780] "ld e , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5c], $_[0]) }, 0 ],
    },
    # [1781] "ld e , xl"
    {
        ""      => [ \&_parse_end, 1782 ],
    },
    # [1782] "ld e , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5d], $_[0]) }, 0 ],
    },
    # [1783] "ld e , yh"
    {
        ""      => [ \&_parse_end, 1784 ],
    },
    # [1784] "ld e , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5c], $_[0]) }, 0 ],
    },
    # [1785] "ld e , yl"
    {
        ""      => [ \&_parse_end, 1786 ],
    },
    # [1786] "ld e , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5d], $_[0]) }, 0 ],
    },
    # [1787] "ld h"
    {
        ","     => 1788,
    },
    # [1788] "ld h ,"
    {
        "("     => 1789,
        "N"     => 1803,
        "["     => 1805,
        "a"     => 1819,
        "b"     => 1821,
        "c"     => 1823,
        "d"     => 1825,
        "e"     => 1827,
        "h"     => 1829,
        "l"     => 1831,
    },
    # [1789] "ld h , ("
    {
        "hl"    => 1790,
        "ix"    => 1793,
        "iy"    => 1798,
    },
    # [1790] "ld h , ( hl"
    {
        ")"     => 1791,
    },
    # [1791] "ld h , ( hl )"
    {
        ""      => [ \&_parse_end, 1792 ],
    },
    # [1792] "ld h , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x66], $_[0]) }, 0 ],
    },
    # [1793] "ld h , ( ix"
    {
        "+"     => 1794,
    },
    # [1794] "ld h , ( ix +"
    {
        "DIS"   => 1795,
    },
    # [1795] "ld h , ( ix + DIS"
    {
        ")"     => 1796,
    },
    # [1796] "ld h , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1797 ],
    },
    # [1797] "ld h , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x66, "DIS"], $_[0]) }, 0 ],
    },
    # [1798] "ld h , ( iy"
    {
        "+"     => 1799,
    },
    # [1799] "ld h , ( iy +"
    {
        "DIS"   => 1800,
    },
    # [1800] "ld h , ( iy + DIS"
    {
        ")"     => 1801,
    },
    # [1801] "ld h , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1802 ],
    },
    # [1802] "ld h , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x66, "DIS"], $_[0]) }, 0 ],
    },
    # [1803] "ld h , N"
    {
        ""      => [ \&_parse_end, 1804 ],
    },
    # [1804] "ld h , N &_parse_end"
    {
        ""      => [ sub { return ([0x26, "N"], $_[0]) }, 0 ],
    },
    # [1805] "ld h , ["
    {
        "hl"    => 1806,
        "ix"    => 1809,
        "iy"    => 1814,
    },
    # [1806] "ld h , [ hl"
    {
        "]"     => 1807,
    },
    # [1807] "ld h , [ hl ]"
    {
        ""      => [ \&_parse_end, 1808 ],
    },
    # [1808] "ld h , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x66], $_[0]) }, 0 ],
    },
    # [1809] "ld h , [ ix"
    {
        "+"     => 1810,
    },
    # [1810] "ld h , [ ix +"
    {
        "DIS"   => 1811,
    },
    # [1811] "ld h , [ ix + DIS"
    {
        "]"     => 1812,
    },
    # [1812] "ld h , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1813 ],
    },
    # [1813] "ld h , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x66, "DIS"], $_[0]) }, 0 ],
    },
    # [1814] "ld h , [ iy"
    {
        "+"     => 1815,
    },
    # [1815] "ld h , [ iy +"
    {
        "DIS"   => 1816,
    },
    # [1816] "ld h , [ iy + DIS"
    {
        "]"     => 1817,
    },
    # [1817] "ld h , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1818 ],
    },
    # [1818] "ld h , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x66, "DIS"], $_[0]) }, 0 ],
    },
    # [1819] "ld h , a"
    {
        ""      => [ \&_parse_end, 1820 ],
    },
    # [1820] "ld h , a &_parse_end"
    {
        ""      => [ sub { return ([0x67], $_[0]) }, 0 ],
    },
    # [1821] "ld h , b"
    {
        ""      => [ \&_parse_end, 1822 ],
    },
    # [1822] "ld h , b &_parse_end"
    {
        ""      => [ sub { return ([0x60], $_[0]) }, 0 ],
    },
    # [1823] "ld h , c"
    {
        ""      => [ \&_parse_end, 1824 ],
    },
    # [1824] "ld h , c &_parse_end"
    {
        ""      => [ sub { return ([0x61], $_[0]) }, 0 ],
    },
    # [1825] "ld h , d"
    {
        ""      => [ \&_parse_end, 1826 ],
    },
    # [1826] "ld h , d &_parse_end"
    {
        ""      => [ sub { return ([0x62], $_[0]) }, 0 ],
    },
    # [1827] "ld h , e"
    {
        ""      => [ \&_parse_end, 1828 ],
    },
    # [1828] "ld h , e &_parse_end"
    {
        ""      => [ sub { return ([0x63], $_[0]) }, 0 ],
    },
    # [1829] "ld h , h"
    {
        ""      => [ \&_parse_end, 1830 ],
    },
    # [1830] "ld h , h &_parse_end"
    {
        ""      => [ sub { return ([0x64], $_[0]) }, 0 ],
    },
    # [1831] "ld h , l"
    {
        ""      => [ \&_parse_end, 1832 ],
    },
    # [1832] "ld h , l &_parse_end"
    {
        ""      => [ sub { return ([0x65], $_[0]) }, 0 ],
    },
    # [1833] "ld hl"
    {
        ","     => 1834,
    },
    # [1834] "ld hl ,"
    {
        "("     => 1835,
        "NN"    => 1849,
        "["     => 1851,
        "bc"    => 1865,
        "de"    => 1867,
        "hl"    => 1869,
        "ix"    => 1871,
        "iy"    => 1873,
    },
    # [1835] "ld hl , ("
    {
        "NN"    => 1836,
        "ix"    => 1839,
        "iy"    => 1844,
    },
    # [1836] "ld hl , ( NN"
    {
        ")"     => 1837,
    },
    # [1837] "ld hl , ( NN )"
    {
        ""      => [ \&_parse_end, 1838 ],
    },
    # [1838] "ld hl , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0x2a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1839] "ld hl , ( ix"
    {
        "+"     => 1840,
    },
    # [1840] "ld hl , ( ix +"
    {
        "DIS"   => 1841,
    },
    # [1841] "ld hl , ( ix + DIS"
    {
        ")"     => 1842,
    },
    # [1842] "ld hl , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 1843 ],
    },
    # [1843] "ld hl , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x66, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1844] "ld hl , ( iy"
    {
        "+"     => 1845,
    },
    # [1845] "ld hl , ( iy +"
    {
        "DIS"   => 1846,
    },
    # [1846] "ld hl , ( iy + DIS"
    {
        ")"     => 1847,
    },
    # [1847] "ld hl , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 1848 ],
    },
    # [1848] "ld hl , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x66, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1849] "ld hl , NN"
    {
        ""      => [ \&_parse_end, 1850 ],
    },
    # [1850] "ld hl , NN &_parse_end"
    {
        ""      => [ sub { return ([0x21, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1851] "ld hl , ["
    {
        "NN"    => 1852,
        "ix"    => 1855,
        "iy"    => 1860,
    },
    # [1852] "ld hl , [ NN"
    {
        "]"     => 1853,
    },
    # [1853] "ld hl , [ NN ]"
    {
        ""      => [ \&_parse_end, 1854 ],
    },
    # [1854] "ld hl , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0x2a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1855] "ld hl , [ ix"
    {
        "+"     => 1856,
    },
    # [1856] "ld hl , [ ix +"
    {
        "DIS"   => 1857,
    },
    # [1857] "ld hl , [ ix + DIS"
    {
        "]"     => 1858,
    },
    # [1858] "ld hl , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 1859 ],
    },
    # [1859] "ld hl , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x66, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1860] "ld hl , [ iy"
    {
        "+"     => 1861,
    },
    # [1861] "ld hl , [ iy +"
    {
        "DIS"   => 1862,
    },
    # [1862] "ld hl , [ iy + DIS"
    {
        "]"     => 1863,
    },
    # [1863] "ld hl , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 1864 ],
    },
    # [1864] "ld hl , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x66, "DIS+0x00x0x01"], $_[0]) }, 0 ],
    },
    # [1865] "ld hl , bc"
    {
        ""      => [ \&_parse_end, 1866 ],
    },
    # [1866] "ld hl , bc &_parse_end"
    {
        ""      => [ sub { return ([0x60, 0x69], $_[0]) }, 0 ],
    },
    # [1867] "ld hl , de"
    {
        ""      => [ \&_parse_end, 1868 ],
    },
    # [1868] "ld hl , de &_parse_end"
    {
        ""      => [ sub { return ([0x62, 0x6b], $_[0]) }, 0 ],
    },
    # [1869] "ld hl , hl"
    {
        ""      => [ \&_parse_end, 1870 ],
    },
    # [1870] "ld hl , hl &_parse_end"
    {
        ""      => [ sub { return ([0x64, 0x6d], $_[0]) }, 0 ],
    },
    # [1871] "ld hl , ix"
    {
        ""      => [ \&_parse_end, 1872 ],
    },
    # [1872] "ld hl , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe5, 0xe1], $_[0]) }, 0 ],
    },
    # [1873] "ld hl , iy"
    {
        ""      => [ \&_parse_end, 1874 ],
    },
    # [1874] "ld hl , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe5, 0xe1], $_[0]) }, 0 ],
    },
    # [1875] "ld hx"
    {
        ","     => 1876,
    },
    # [1876] "ld hx ,"
    {
        "N"     => 1877,
        "a"     => 1879,
        "b"     => 1881,
        "c"     => 1883,
        "d"     => 1885,
        "e"     => 1887,
        "hx"    => 1889,
        "lx"    => 1891,
    },
    # [1877] "ld hx , N"
    {
        ""      => [ \&_parse_end, 1878 ],
    },
    # [1878] "ld hx , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x26, "N"], $_[0]) }, 0 ],
    },
    # [1879] "ld hx , a"
    {
        ""      => [ \&_parse_end, 1880 ],
    },
    # [1880] "ld hx , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x67], $_[0]) }, 0 ],
    },
    # [1881] "ld hx , b"
    {
        ""      => [ \&_parse_end, 1882 ],
    },
    # [1882] "ld hx , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x60], $_[0]) }, 0 ],
    },
    # [1883] "ld hx , c"
    {
        ""      => [ \&_parse_end, 1884 ],
    },
    # [1884] "ld hx , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x61], $_[0]) }, 0 ],
    },
    # [1885] "ld hx , d"
    {
        ""      => [ \&_parse_end, 1886 ],
    },
    # [1886] "ld hx , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x62], $_[0]) }, 0 ],
    },
    # [1887] "ld hx , e"
    {
        ""      => [ \&_parse_end, 1888 ],
    },
    # [1888] "ld hx , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x63], $_[0]) }, 0 ],
    },
    # [1889] "ld hx , hx"
    {
        ""      => [ \&_parse_end, 1890 ],
    },
    # [1890] "ld hx , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x64], $_[0]) }, 0 ],
    },
    # [1891] "ld hx , lx"
    {
        ""      => [ \&_parse_end, 1892 ],
    },
    # [1892] "ld hx , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x65], $_[0]) }, 0 ],
    },
    # [1893] "ld hy"
    {
        ","     => 1894,
    },
    # [1894] "ld hy ,"
    {
        "N"     => 1895,
        "a"     => 1897,
        "b"     => 1899,
        "c"     => 1901,
        "d"     => 1903,
        "e"     => 1905,
        "hy"    => 1907,
        "ly"    => 1909,
    },
    # [1895] "ld hy , N"
    {
        ""      => [ \&_parse_end, 1896 ],
    },
    # [1896] "ld hy , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x26, "N"], $_[0]) }, 0 ],
    },
    # [1897] "ld hy , a"
    {
        ""      => [ \&_parse_end, 1898 ],
    },
    # [1898] "ld hy , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x67], $_[0]) }, 0 ],
    },
    # [1899] "ld hy , b"
    {
        ""      => [ \&_parse_end, 1900 ],
    },
    # [1900] "ld hy , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x60], $_[0]) }, 0 ],
    },
    # [1901] "ld hy , c"
    {
        ""      => [ \&_parse_end, 1902 ],
    },
    # [1902] "ld hy , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x61], $_[0]) }, 0 ],
    },
    # [1903] "ld hy , d"
    {
        ""      => [ \&_parse_end, 1904 ],
    },
    # [1904] "ld hy , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x62], $_[0]) }, 0 ],
    },
    # [1905] "ld hy , e"
    {
        ""      => [ \&_parse_end, 1906 ],
    },
    # [1906] "ld hy , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x63], $_[0]) }, 0 ],
    },
    # [1907] "ld hy , hy"
    {
        ""      => [ \&_parse_end, 1908 ],
    },
    # [1908] "ld hy , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x64], $_[0]) }, 0 ],
    },
    # [1909] "ld hy , ly"
    {
        ""      => [ \&_parse_end, 1910 ],
    },
    # [1910] "ld hy , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x65], $_[0]) }, 0 ],
    },
    # [1911] "ld i"
    {
        ","     => 1912,
    },
    # [1912] "ld i ,"
    {
        "a"     => 1913,
    },
    # [1913] "ld i , a"
    {
        ""      => [ \&_parse_end, 1914 ],
    },
    # [1914] "ld i , a &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x47], $_[0]) }, 0 ],
    },
    # [1915] "ld ix"
    {
        ","     => 1916,
    },
    # [1916] "ld ix ,"
    {
        "("     => 1917,
        "NN"    => 1921,
        "["     => 1923,
        "bc"    => 1927,
        "de"    => 1929,
        "hl"    => 1931,
        "ix"    => 1933,
        "iy"    => 1935,
    },
    # [1917] "ld ix , ("
    {
        "NN"    => 1918,
    },
    # [1918] "ld ix , ( NN"
    {
        ")"     => 1919,
    },
    # [1919] "ld ix , ( NN )"
    {
        ""      => [ \&_parse_end, 1920 ],
    },
    # [1920] "ld ix , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1921] "ld ix , NN"
    {
        ""      => [ \&_parse_end, 1922 ],
    },
    # [1922] "ld ix , NN &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x21, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1923] "ld ix , ["
    {
        "NN"    => 1924,
    },
    # [1924] "ld ix , [ NN"
    {
        "]"     => 1925,
    },
    # [1925] "ld ix , [ NN ]"
    {
        ""      => [ \&_parse_end, 1926 ],
    },
    # [1926] "ld ix , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1927] "ld ix , bc"
    {
        ""      => [ \&_parse_end, 1928 ],
    },
    # [1928] "ld ix , bc &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x69, 0xdd, 0x60], $_[0]) }, 0 ],
    },
    # [1929] "ld ix , de"
    {
        ""      => [ \&_parse_end, 1930 ],
    },
    # [1930] "ld ix , de &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6b, 0xdd, 0x62], $_[0]) }, 0 ],
    },
    # [1931] "ld ix , hl"
    {
        ""      => [ \&_parse_end, 1932 ],
    },
    # [1932] "ld ix , hl &_parse_end"
    {
        ""      => [ sub { return ([0xe5, 0xdd, 0xe1], $_[0]) }, 0 ],
    },
    # [1933] "ld ix , ix"
    {
        ""      => [ \&_parse_end, 1934 ],
    },
    # [1934] "ld ix , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6d, 0xdd, 0x64], $_[0]) }, 0 ],
    },
    # [1935] "ld ix , iy"
    {
        ""      => [ \&_parse_end, 1936 ],
    },
    # [1936] "ld ix , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe5, 0xdd, 0xe1], $_[0]) }, 0 ],
    },
    # [1937] "ld ixh"
    {
        ","     => 1938,
    },
    # [1938] "ld ixh ,"
    {
        "N"     => 1939,
        "a"     => 1941,
        "b"     => 1943,
        "c"     => 1945,
        "d"     => 1947,
        "e"     => 1949,
        "ixh"   => 1951,
        "ixl"   => 1953,
    },
    # [1939] "ld ixh , N"
    {
        ""      => [ \&_parse_end, 1940 ],
    },
    # [1940] "ld ixh , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x26, "N"], $_[0]) }, 0 ],
    },
    # [1941] "ld ixh , a"
    {
        ""      => [ \&_parse_end, 1942 ],
    },
    # [1942] "ld ixh , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x67], $_[0]) }, 0 ],
    },
    # [1943] "ld ixh , b"
    {
        ""      => [ \&_parse_end, 1944 ],
    },
    # [1944] "ld ixh , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x60], $_[0]) }, 0 ],
    },
    # [1945] "ld ixh , c"
    {
        ""      => [ \&_parse_end, 1946 ],
    },
    # [1946] "ld ixh , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x61], $_[0]) }, 0 ],
    },
    # [1947] "ld ixh , d"
    {
        ""      => [ \&_parse_end, 1948 ],
    },
    # [1948] "ld ixh , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x62], $_[0]) }, 0 ],
    },
    # [1949] "ld ixh , e"
    {
        ""      => [ \&_parse_end, 1950 ],
    },
    # [1950] "ld ixh , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x63], $_[0]) }, 0 ],
    },
    # [1951] "ld ixh , ixh"
    {
        ""      => [ \&_parse_end, 1952 ],
    },
    # [1952] "ld ixh , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x64], $_[0]) }, 0 ],
    },
    # [1953] "ld ixh , ixl"
    {
        ""      => [ \&_parse_end, 1954 ],
    },
    # [1954] "ld ixh , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x65], $_[0]) }, 0 ],
    },
    # [1955] "ld ixl"
    {
        ","     => 1956,
    },
    # [1956] "ld ixl ,"
    {
        "N"     => 1957,
        "a"     => 1959,
        "b"     => 1961,
        "c"     => 1963,
        "d"     => 1965,
        "e"     => 1967,
        "ixh"   => 1969,
        "ixl"   => 1971,
    },
    # [1957] "ld ixl , N"
    {
        ""      => [ \&_parse_end, 1958 ],
    },
    # [1958] "ld ixl , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2e, "N"], $_[0]) }, 0 ],
    },
    # [1959] "ld ixl , a"
    {
        ""      => [ \&_parse_end, 1960 ],
    },
    # [1960] "ld ixl , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6f], $_[0]) }, 0 ],
    },
    # [1961] "ld ixl , b"
    {
        ""      => [ \&_parse_end, 1962 ],
    },
    # [1962] "ld ixl , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x68], $_[0]) }, 0 ],
    },
    # [1963] "ld ixl , c"
    {
        ""      => [ \&_parse_end, 1964 ],
    },
    # [1964] "ld ixl , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x69], $_[0]) }, 0 ],
    },
    # [1965] "ld ixl , d"
    {
        ""      => [ \&_parse_end, 1966 ],
    },
    # [1966] "ld ixl , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6a], $_[0]) }, 0 ],
    },
    # [1967] "ld ixl , e"
    {
        ""      => [ \&_parse_end, 1968 ],
    },
    # [1968] "ld ixl , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6b], $_[0]) }, 0 ],
    },
    # [1969] "ld ixl , ixh"
    {
        ""      => [ \&_parse_end, 1970 ],
    },
    # [1970] "ld ixl , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6c], $_[0]) }, 0 ],
    },
    # [1971] "ld ixl , ixl"
    {
        ""      => [ \&_parse_end, 1972 ],
    },
    # [1972] "ld ixl , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6d], $_[0]) }, 0 ],
    },
    # [1973] "ld iy"
    {
        ","     => 1974,
    },
    # [1974] "ld iy ,"
    {
        "("     => 1975,
        "NN"    => 1979,
        "["     => 1981,
        "bc"    => 1985,
        "de"    => 1987,
        "hl"    => 1989,
        "ix"    => 1991,
        "iy"    => 1993,
    },
    # [1975] "ld iy , ("
    {
        "NN"    => 1976,
    },
    # [1976] "ld iy , ( NN"
    {
        ")"     => 1977,
    },
    # [1977] "ld iy , ( NN )"
    {
        ""      => [ \&_parse_end, 1978 ],
    },
    # [1978] "ld iy , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1979] "ld iy , NN"
    {
        ""      => [ \&_parse_end, 1980 ],
    },
    # [1980] "ld iy , NN &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x21, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1981] "ld iy , ["
    {
        "NN"    => 1982,
    },
    # [1982] "ld iy , [ NN"
    {
        "]"     => 1983,
    },
    # [1983] "ld iy , [ NN ]"
    {
        ""      => [ \&_parse_end, 1984 ],
    },
    # [1984] "ld iy , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2a, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [1985] "ld iy , bc"
    {
        ""      => [ \&_parse_end, 1986 ],
    },
    # [1986] "ld iy , bc &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x69, 0xfd, 0x60], $_[0]) }, 0 ],
    },
    # [1987] "ld iy , de"
    {
        ""      => [ \&_parse_end, 1988 ],
    },
    # [1988] "ld iy , de &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6b, 0xfd, 0x62], $_[0]) }, 0 ],
    },
    # [1989] "ld iy , hl"
    {
        ""      => [ \&_parse_end, 1990 ],
    },
    # [1990] "ld iy , hl &_parse_end"
    {
        ""      => [ sub { return ([0xe5, 0xfd, 0xe1], $_[0]) }, 0 ],
    },
    # [1991] "ld iy , ix"
    {
        ""      => [ \&_parse_end, 1992 ],
    },
    # [1992] "ld iy , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe5, 0xfd, 0xe1], $_[0]) }, 0 ],
    },
    # [1993] "ld iy , iy"
    {
        ""      => [ \&_parse_end, 1994 ],
    },
    # [1994] "ld iy , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6d, 0xfd, 0x64], $_[0]) }, 0 ],
    },
    # [1995] "ld iyh"
    {
        ","     => 1996,
    },
    # [1996] "ld iyh ,"
    {
        "N"     => 1997,
        "a"     => 1999,
        "b"     => 2001,
        "c"     => 2003,
        "d"     => 2005,
        "e"     => 2007,
        "iyh"   => 2009,
        "iyl"   => 2011,
    },
    # [1997] "ld iyh , N"
    {
        ""      => [ \&_parse_end, 1998 ],
    },
    # [1998] "ld iyh , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x26, "N"], $_[0]) }, 0 ],
    },
    # [1999] "ld iyh , a"
    {
        ""      => [ \&_parse_end, 2000 ],
    },
    # [2000] "ld iyh , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x67], $_[0]) }, 0 ],
    },
    # [2001] "ld iyh , b"
    {
        ""      => [ \&_parse_end, 2002 ],
    },
    # [2002] "ld iyh , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x60], $_[0]) }, 0 ],
    },
    # [2003] "ld iyh , c"
    {
        ""      => [ \&_parse_end, 2004 ],
    },
    # [2004] "ld iyh , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x61], $_[0]) }, 0 ],
    },
    # [2005] "ld iyh , d"
    {
        ""      => [ \&_parse_end, 2006 ],
    },
    # [2006] "ld iyh , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x62], $_[0]) }, 0 ],
    },
    # [2007] "ld iyh , e"
    {
        ""      => [ \&_parse_end, 2008 ],
    },
    # [2008] "ld iyh , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x63], $_[0]) }, 0 ],
    },
    # [2009] "ld iyh , iyh"
    {
        ""      => [ \&_parse_end, 2010 ],
    },
    # [2010] "ld iyh , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x64], $_[0]) }, 0 ],
    },
    # [2011] "ld iyh , iyl"
    {
        ""      => [ \&_parse_end, 2012 ],
    },
    # [2012] "ld iyh , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x65], $_[0]) }, 0 ],
    },
    # [2013] "ld iyl"
    {
        ","     => 2014,
    },
    # [2014] "ld iyl ,"
    {
        "N"     => 2015,
        "a"     => 2017,
        "b"     => 2019,
        "c"     => 2021,
        "d"     => 2023,
        "e"     => 2025,
        "iyh"   => 2027,
        "iyl"   => 2029,
    },
    # [2015] "ld iyl , N"
    {
        ""      => [ \&_parse_end, 2016 ],
    },
    # [2016] "ld iyl , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2e, "N"], $_[0]) }, 0 ],
    },
    # [2017] "ld iyl , a"
    {
        ""      => [ \&_parse_end, 2018 ],
    },
    # [2018] "ld iyl , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6f], $_[0]) }, 0 ],
    },
    # [2019] "ld iyl , b"
    {
        ""      => [ \&_parse_end, 2020 ],
    },
    # [2020] "ld iyl , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x68], $_[0]) }, 0 ],
    },
    # [2021] "ld iyl , c"
    {
        ""      => [ \&_parse_end, 2022 ],
    },
    # [2022] "ld iyl , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x69], $_[0]) }, 0 ],
    },
    # [2023] "ld iyl , d"
    {
        ""      => [ \&_parse_end, 2024 ],
    },
    # [2024] "ld iyl , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6a], $_[0]) }, 0 ],
    },
    # [2025] "ld iyl , e"
    {
        ""      => [ \&_parse_end, 2026 ],
    },
    # [2026] "ld iyl , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6b], $_[0]) }, 0 ],
    },
    # [2027] "ld iyl , iyh"
    {
        ""      => [ \&_parse_end, 2028 ],
    },
    # [2028] "ld iyl , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6c], $_[0]) }, 0 ],
    },
    # [2029] "ld iyl , iyl"
    {
        ""      => [ \&_parse_end, 2030 ],
    },
    # [2030] "ld iyl , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6d], $_[0]) }, 0 ],
    },
    # [2031] "ld l"
    {
        ","     => 2032,
    },
    # [2032] "ld l ,"
    {
        "("     => 2033,
        "N"     => 2047,
        "["     => 2049,
        "a"     => 2063,
        "b"     => 2065,
        "c"     => 2067,
        "d"     => 2069,
        "e"     => 2071,
        "h"     => 2073,
        "l"     => 2075,
    },
    # [2033] "ld l , ("
    {
        "hl"    => 2034,
        "ix"    => 2037,
        "iy"    => 2042,
    },
    # [2034] "ld l , ( hl"
    {
        ")"     => 2035,
    },
    # [2035] "ld l , ( hl )"
    {
        ""      => [ \&_parse_end, 2036 ],
    },
    # [2036] "ld l , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x6e], $_[0]) }, 0 ],
    },
    # [2037] "ld l , ( ix"
    {
        "+"     => 2038,
    },
    # [2038] "ld l , ( ix +"
    {
        "DIS"   => 2039,
    },
    # [2039] "ld l , ( ix + DIS"
    {
        ")"     => 2040,
    },
    # [2040] "ld l , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2041 ],
    },
    # [2041] "ld l , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS"], $_[0]) }, 0 ],
    },
    # [2042] "ld l , ( iy"
    {
        "+"     => 2043,
    },
    # [2043] "ld l , ( iy +"
    {
        "DIS"   => 2044,
    },
    # [2044] "ld l , ( iy + DIS"
    {
        ")"     => 2045,
    },
    # [2045] "ld l , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2046 ],
    },
    # [2046] "ld l , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS"], $_[0]) }, 0 ],
    },
    # [2047] "ld l , N"
    {
        ""      => [ \&_parse_end, 2048 ],
    },
    # [2048] "ld l , N &_parse_end"
    {
        ""      => [ sub { return ([0x2e, "N"], $_[0]) }, 0 ],
    },
    # [2049] "ld l , ["
    {
        "hl"    => 2050,
        "ix"    => 2053,
        "iy"    => 2058,
    },
    # [2050] "ld l , [ hl"
    {
        "]"     => 2051,
    },
    # [2051] "ld l , [ hl ]"
    {
        ""      => [ \&_parse_end, 2052 ],
    },
    # [2052] "ld l , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x6e], $_[0]) }, 0 ],
    },
    # [2053] "ld l , [ ix"
    {
        "+"     => 2054,
    },
    # [2054] "ld l , [ ix +"
    {
        "DIS"   => 2055,
    },
    # [2055] "ld l , [ ix + DIS"
    {
        "]"     => 2056,
    },
    # [2056] "ld l , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2057 ],
    },
    # [2057] "ld l , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS"], $_[0]) }, 0 ],
    },
    # [2058] "ld l , [ iy"
    {
        "+"     => 2059,
    },
    # [2059] "ld l , [ iy +"
    {
        "DIS"   => 2060,
    },
    # [2060] "ld l , [ iy + DIS"
    {
        "]"     => 2061,
    },
    # [2061] "ld l , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2062 ],
    },
    # [2062] "ld l , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS"], $_[0]) }, 0 ],
    },
    # [2063] "ld l , a"
    {
        ""      => [ \&_parse_end, 2064 ],
    },
    # [2064] "ld l , a &_parse_end"
    {
        ""      => [ sub { return ([0x6f], $_[0]) }, 0 ],
    },
    # [2065] "ld l , b"
    {
        ""      => [ \&_parse_end, 2066 ],
    },
    # [2066] "ld l , b &_parse_end"
    {
        ""      => [ sub { return ([0x68], $_[0]) }, 0 ],
    },
    # [2067] "ld l , c"
    {
        ""      => [ \&_parse_end, 2068 ],
    },
    # [2068] "ld l , c &_parse_end"
    {
        ""      => [ sub { return ([0x69], $_[0]) }, 0 ],
    },
    # [2069] "ld l , d"
    {
        ""      => [ \&_parse_end, 2070 ],
    },
    # [2070] "ld l , d &_parse_end"
    {
        ""      => [ sub { return ([0x6a], $_[0]) }, 0 ],
    },
    # [2071] "ld l , e"
    {
        ""      => [ \&_parse_end, 2072 ],
    },
    # [2072] "ld l , e &_parse_end"
    {
        ""      => [ sub { return ([0x6b], $_[0]) }, 0 ],
    },
    # [2073] "ld l , h"
    {
        ""      => [ \&_parse_end, 2074 ],
    },
    # [2074] "ld l , h &_parse_end"
    {
        ""      => [ sub { return ([0x6c], $_[0]) }, 0 ],
    },
    # [2075] "ld l , l"
    {
        ""      => [ \&_parse_end, 2076 ],
    },
    # [2076] "ld l , l &_parse_end"
    {
        ""      => [ sub { return ([0x6d], $_[0]) }, 0 ],
    },
    # [2077] "ld lx"
    {
        ","     => 2078,
    },
    # [2078] "ld lx ,"
    {
        "N"     => 2079,
        "a"     => 2081,
        "b"     => 2083,
        "c"     => 2085,
        "d"     => 2087,
        "e"     => 2089,
        "hx"    => 2091,
        "lx"    => 2093,
    },
    # [2079] "ld lx , N"
    {
        ""      => [ \&_parse_end, 2080 ],
    },
    # [2080] "ld lx , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2e, "N"], $_[0]) }, 0 ],
    },
    # [2081] "ld lx , a"
    {
        ""      => [ \&_parse_end, 2082 ],
    },
    # [2082] "ld lx , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6f], $_[0]) }, 0 ],
    },
    # [2083] "ld lx , b"
    {
        ""      => [ \&_parse_end, 2084 ],
    },
    # [2084] "ld lx , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x68], $_[0]) }, 0 ],
    },
    # [2085] "ld lx , c"
    {
        ""      => [ \&_parse_end, 2086 ],
    },
    # [2086] "ld lx , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x69], $_[0]) }, 0 ],
    },
    # [2087] "ld lx , d"
    {
        ""      => [ \&_parse_end, 2088 ],
    },
    # [2088] "ld lx , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6a], $_[0]) }, 0 ],
    },
    # [2089] "ld lx , e"
    {
        ""      => [ \&_parse_end, 2090 ],
    },
    # [2090] "ld lx , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6b], $_[0]) }, 0 ],
    },
    # [2091] "ld lx , hx"
    {
        ""      => [ \&_parse_end, 2092 ],
    },
    # [2092] "ld lx , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6c], $_[0]) }, 0 ],
    },
    # [2093] "ld lx , lx"
    {
        ""      => [ \&_parse_end, 2094 ],
    },
    # [2094] "ld lx , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6d], $_[0]) }, 0 ],
    },
    # [2095] "ld ly"
    {
        ","     => 2096,
    },
    # [2096] "ld ly ,"
    {
        "N"     => 2097,
        "a"     => 2099,
        "b"     => 2101,
        "c"     => 2103,
        "d"     => 2105,
        "e"     => 2107,
        "hy"    => 2109,
        "ly"    => 2111,
    },
    # [2097] "ld ly , N"
    {
        ""      => [ \&_parse_end, 2098 ],
    },
    # [2098] "ld ly , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2e, "N"], $_[0]) }, 0 ],
    },
    # [2099] "ld ly , a"
    {
        ""      => [ \&_parse_end, 2100 ],
    },
    # [2100] "ld ly , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6f], $_[0]) }, 0 ],
    },
    # [2101] "ld ly , b"
    {
        ""      => [ \&_parse_end, 2102 ],
    },
    # [2102] "ld ly , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x68], $_[0]) }, 0 ],
    },
    # [2103] "ld ly , c"
    {
        ""      => [ \&_parse_end, 2104 ],
    },
    # [2104] "ld ly , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x69], $_[0]) }, 0 ],
    },
    # [2105] "ld ly , d"
    {
        ""      => [ \&_parse_end, 2106 ],
    },
    # [2106] "ld ly , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6a], $_[0]) }, 0 ],
    },
    # [2107] "ld ly , e"
    {
        ""      => [ \&_parse_end, 2108 ],
    },
    # [2108] "ld ly , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6b], $_[0]) }, 0 ],
    },
    # [2109] "ld ly , hy"
    {
        ""      => [ \&_parse_end, 2110 ],
    },
    # [2110] "ld ly , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6c], $_[0]) }, 0 ],
    },
    # [2111] "ld ly , ly"
    {
        ""      => [ \&_parse_end, 2112 ],
    },
    # [2112] "ld ly , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6d], $_[0]) }, 0 ],
    },
    # [2113] "ld r"
    {
        ","     => 2114,
    },
    # [2114] "ld r ,"
    {
        "a"     => 2115,
    },
    # [2115] "ld r , a"
    {
        ""      => [ \&_parse_end, 2116 ],
    },
    # [2116] "ld r , a &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x4f], $_[0]) }, 0 ],
    },
    # [2117] "ld sp"
    {
        ","     => 2118,
    },
    # [2118] "ld sp ,"
    {
        "("     => 2119,
        "NN"    => 2123,
        "["     => 2125,
        "hl"    => 2129,
        "ix"    => 2131,
        "iy"    => 2133,
    },
    # [2119] "ld sp , ("
    {
        "NN"    => 2120,
    },
    # [2120] "ld sp , ( NN"
    {
        ")"     => 2121,
    },
    # [2121] "ld sp , ( NN )"
    {
        ""      => [ \&_parse_end, 2122 ],
    },
    # [2122] "ld sp , ( NN ) &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x7b, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [2123] "ld sp , NN"
    {
        ""      => [ \&_parse_end, 2124 ],
    },
    # [2124] "ld sp , NN &_parse_end"
    {
        ""      => [ sub { return ([0x31, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [2125] "ld sp , ["
    {
        "NN"    => 2126,
    },
    # [2126] "ld sp , [ NN"
    {
        "]"     => 2127,
    },
    # [2127] "ld sp , [ NN ]"
    {
        ""      => [ \&_parse_end, 2128 ],
    },
    # [2128] "ld sp , [ NN ] &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x7b, "NNl", "NNh"], $_[0]) }, 0 ],
    },
    # [2129] "ld sp , hl"
    {
        ""      => [ \&_parse_end, 2130 ],
    },
    # [2130] "ld sp , hl &_parse_end"
    {
        ""      => [ sub { return ([0xf9], $_[0]) }, 0 ],
    },
    # [2131] "ld sp , ix"
    {
        ""      => [ \&_parse_end, 2132 ],
    },
    # [2132] "ld sp , ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xf9], $_[0]) }, 0 ],
    },
    # [2133] "ld sp , iy"
    {
        ""      => [ \&_parse_end, 2134 ],
    },
    # [2134] "ld sp , iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xf9], $_[0]) }, 0 ],
    },
    # [2135] "ld xh"
    {
        ","     => 2136,
    },
    # [2136] "ld xh ,"
    {
        "N"     => 2137,
        "a"     => 2139,
        "b"     => 2141,
        "c"     => 2143,
        "d"     => 2145,
        "e"     => 2147,
        "xh"    => 2149,
        "xl"    => 2151,
    },
    # [2137] "ld xh , N"
    {
        ""      => [ \&_parse_end, 2138 ],
    },
    # [2138] "ld xh , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x26, "N"], $_[0]) }, 0 ],
    },
    # [2139] "ld xh , a"
    {
        ""      => [ \&_parse_end, 2140 ],
    },
    # [2140] "ld xh , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x67], $_[0]) }, 0 ],
    },
    # [2141] "ld xh , b"
    {
        ""      => [ \&_parse_end, 2142 ],
    },
    # [2142] "ld xh , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x60], $_[0]) }, 0 ],
    },
    # [2143] "ld xh , c"
    {
        ""      => [ \&_parse_end, 2144 ],
    },
    # [2144] "ld xh , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x61], $_[0]) }, 0 ],
    },
    # [2145] "ld xh , d"
    {
        ""      => [ \&_parse_end, 2146 ],
    },
    # [2146] "ld xh , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x62], $_[0]) }, 0 ],
    },
    # [2147] "ld xh , e"
    {
        ""      => [ \&_parse_end, 2148 ],
    },
    # [2148] "ld xh , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x63], $_[0]) }, 0 ],
    },
    # [2149] "ld xh , xh"
    {
        ""      => [ \&_parse_end, 2150 ],
    },
    # [2150] "ld xh , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x64], $_[0]) }, 0 ],
    },
    # [2151] "ld xh , xl"
    {
        ""      => [ \&_parse_end, 2152 ],
    },
    # [2152] "ld xh , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x65], $_[0]) }, 0 ],
    },
    # [2153] "ld xl"
    {
        ","     => 2154,
    },
    # [2154] "ld xl ,"
    {
        "N"     => 2155,
        "a"     => 2157,
        "b"     => 2159,
        "c"     => 2161,
        "d"     => 2163,
        "e"     => 2165,
        "xh"    => 2167,
        "xl"    => 2169,
    },
    # [2155] "ld xl , N"
    {
        ""      => [ \&_parse_end, 2156 ],
    },
    # [2156] "ld xl , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x2e, "N"], $_[0]) }, 0 ],
    },
    # [2157] "ld xl , a"
    {
        ""      => [ \&_parse_end, 2158 ],
    },
    # [2158] "ld xl , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6f], $_[0]) }, 0 ],
    },
    # [2159] "ld xl , b"
    {
        ""      => [ \&_parse_end, 2160 ],
    },
    # [2160] "ld xl , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x68], $_[0]) }, 0 ],
    },
    # [2161] "ld xl , c"
    {
        ""      => [ \&_parse_end, 2162 ],
    },
    # [2162] "ld xl , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x69], $_[0]) }, 0 ],
    },
    # [2163] "ld xl , d"
    {
        ""      => [ \&_parse_end, 2164 ],
    },
    # [2164] "ld xl , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6a], $_[0]) }, 0 ],
    },
    # [2165] "ld xl , e"
    {
        ""      => [ \&_parse_end, 2166 ],
    },
    # [2166] "ld xl , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6b], $_[0]) }, 0 ],
    },
    # [2167] "ld xl , xh"
    {
        ""      => [ \&_parse_end, 2168 ],
    },
    # [2168] "ld xl , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6c], $_[0]) }, 0 ],
    },
    # [2169] "ld xl , xl"
    {
        ""      => [ \&_parse_end, 2170 ],
    },
    # [2170] "ld xl , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6d], $_[0]) }, 0 ],
    },
    # [2171] "ld yh"
    {
        ","     => 2172,
    },
    # [2172] "ld yh ,"
    {
        "N"     => 2173,
        "a"     => 2175,
        "b"     => 2177,
        "c"     => 2179,
        "d"     => 2181,
        "e"     => 2183,
        "yh"    => 2185,
        "yl"    => 2187,
    },
    # [2173] "ld yh , N"
    {
        ""      => [ \&_parse_end, 2174 ],
    },
    # [2174] "ld yh , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x26, "N"], $_[0]) }, 0 ],
    },
    # [2175] "ld yh , a"
    {
        ""      => [ \&_parse_end, 2176 ],
    },
    # [2176] "ld yh , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x67], $_[0]) }, 0 ],
    },
    # [2177] "ld yh , b"
    {
        ""      => [ \&_parse_end, 2178 ],
    },
    # [2178] "ld yh , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x60], $_[0]) }, 0 ],
    },
    # [2179] "ld yh , c"
    {
        ""      => [ \&_parse_end, 2180 ],
    },
    # [2180] "ld yh , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x61], $_[0]) }, 0 ],
    },
    # [2181] "ld yh , d"
    {
        ""      => [ \&_parse_end, 2182 ],
    },
    # [2182] "ld yh , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x62], $_[0]) }, 0 ],
    },
    # [2183] "ld yh , e"
    {
        ""      => [ \&_parse_end, 2184 ],
    },
    # [2184] "ld yh , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x63], $_[0]) }, 0 ],
    },
    # [2185] "ld yh , yh"
    {
        ""      => [ \&_parse_end, 2186 ],
    },
    # [2186] "ld yh , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x64], $_[0]) }, 0 ],
    },
    # [2187] "ld yh , yl"
    {
        ""      => [ \&_parse_end, 2188 ],
    },
    # [2188] "ld yh , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x65], $_[0]) }, 0 ],
    },
    # [2189] "ld yl"
    {
        ","     => 2190,
    },
    # [2190] "ld yl ,"
    {
        "N"     => 2191,
        "a"     => 2193,
        "b"     => 2195,
        "c"     => 2197,
        "d"     => 2199,
        "e"     => 2201,
        "yh"    => 2203,
        "yl"    => 2205,
    },
    # [2191] "ld yl , N"
    {
        ""      => [ \&_parse_end, 2192 ],
    },
    # [2192] "ld yl , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x2e, "N"], $_[0]) }, 0 ],
    },
    # [2193] "ld yl , a"
    {
        ""      => [ \&_parse_end, 2194 ],
    },
    # [2194] "ld yl , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6f], $_[0]) }, 0 ],
    },
    # [2195] "ld yl , b"
    {
        ""      => [ \&_parse_end, 2196 ],
    },
    # [2196] "ld yl , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x68], $_[0]) }, 0 ],
    },
    # [2197] "ld yl , c"
    {
        ""      => [ \&_parse_end, 2198 ],
    },
    # [2198] "ld yl , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x69], $_[0]) }, 0 ],
    },
    # [2199] "ld yl , d"
    {
        ""      => [ \&_parse_end, 2200 ],
    },
    # [2200] "ld yl , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6a], $_[0]) }, 0 ],
    },
    # [2201] "ld yl , e"
    {
        ""      => [ \&_parse_end, 2202 ],
    },
    # [2202] "ld yl , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6b], $_[0]) }, 0 ],
    },
    # [2203] "ld yl , yh"
    {
        ""      => [ \&_parse_end, 2204 ],
    },
    # [2204] "ld yl , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6c], $_[0]) }, 0 ],
    },
    # [2205] "ld yl , yl"
    {
        ""      => [ \&_parse_end, 2206 ],
    },
    # [2206] "ld yl , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6d], $_[0]) }, 0 ],
    },
    # [2207] "ldd"
    {
        ""      => [ \&_parse_end, 2208 ],
        "("     => 2209,
        "["     => 2281,
        "a"     => 2353,
        "b"     => 2395,
        "c"     => 2425,
        "d"     => 2455,
        "e"     => 2485,
        "h"     => 2515,
        "l"     => 2545,
    },
    # [2208] "ldd &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xa8], $_[0]) }, 0 ],
    },
    # [2209] "ldd ("
    {
        "bc"    => 2210,
        "de"    => 2215,
        "hl"    => 2220,
        "ix"    => 2239,
        "iy"    => 2260,
    },
    # [2210] "ldd ( bc"
    {
        ")"     => 2211,
    },
    # [2211] "ldd ( bc )"
    {
        ","     => 2212,
    },
    # [2212] "ldd ( bc ) ,"
    {
        "a"     => 2213,
    },
    # [2213] "ldd ( bc ) , a"
    {
        ""      => [ \&_parse_end, 2214 ],
    },
    # [2214] "ldd ( bc ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x02, 0x0b], $_[0]) }, 0 ],
    },
    # [2215] "ldd ( de"
    {
        ")"     => 2216,
    },
    # [2216] "ldd ( de )"
    {
        ","     => 2217,
    },
    # [2217] "ldd ( de ) ,"
    {
        "a"     => 2218,
    },
    # [2218] "ldd ( de ) , a"
    {
        ""      => [ \&_parse_end, 2219 ],
    },
    # [2219] "ldd ( de ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x12, 0x1b], $_[0]) }, 0 ],
    },
    # [2220] "ldd ( hl"
    {
        ")"     => 2221,
    },
    # [2221] "ldd ( hl )"
    {
        ","     => 2222,
    },
    # [2222] "ldd ( hl ) ,"
    {
        "N"     => 2223,
        "a"     => 2225,
        "b"     => 2227,
        "c"     => 2229,
        "d"     => 2231,
        "e"     => 2233,
        "h"     => 2235,
        "l"     => 2237,
    },
    # [2223] "ldd ( hl ) , N"
    {
        ""      => [ \&_parse_end, 2224 ],
    },
    # [2224] "ldd ( hl ) , N &_parse_end"
    {
        ""      => [ sub { return ([0x36, "N", 0x2b], $_[0]) }, 0 ],
    },
    # [2225] "ldd ( hl ) , a"
    {
        ""      => [ \&_parse_end, 2226 ],
    },
    # [2226] "ldd ( hl ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x77, 0x2b], $_[0]) }, 0 ],
    },
    # [2227] "ldd ( hl ) , b"
    {
        ""      => [ \&_parse_end, 2228 ],
    },
    # [2228] "ldd ( hl ) , b &_parse_end"
    {
        ""      => [ sub { return ([0x70, 0x2b], $_[0]) }, 0 ],
    },
    # [2229] "ldd ( hl ) , c"
    {
        ""      => [ \&_parse_end, 2230 ],
    },
    # [2230] "ldd ( hl ) , c &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x2b], $_[0]) }, 0 ],
    },
    # [2231] "ldd ( hl ) , d"
    {
        ""      => [ \&_parse_end, 2232 ],
    },
    # [2232] "ldd ( hl ) , d &_parse_end"
    {
        ""      => [ sub { return ([0x72, 0x2b], $_[0]) }, 0 ],
    },
    # [2233] "ldd ( hl ) , e"
    {
        ""      => [ \&_parse_end, 2234 ],
    },
    # [2234] "ldd ( hl ) , e &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x2b], $_[0]) }, 0 ],
    },
    # [2235] "ldd ( hl ) , h"
    {
        ""      => [ \&_parse_end, 2236 ],
    },
    # [2236] "ldd ( hl ) , h &_parse_end"
    {
        ""      => [ sub { return ([0x74, 0x2b], $_[0]) }, 0 ],
    },
    # [2237] "ldd ( hl ) , l"
    {
        ""      => [ \&_parse_end, 2238 ],
    },
    # [2238] "ldd ( hl ) , l &_parse_end"
    {
        ""      => [ sub { return ([0x75, 0x2b], $_[0]) }, 0 ],
    },
    # [2239] "ldd ( ix"
    {
        "+"     => 2240,
    },
    # [2240] "ldd ( ix +"
    {
        "DIS"   => 2241,
    },
    # [2241] "ldd ( ix + DIS"
    {
        ")"     => 2242,
    },
    # [2242] "ldd ( ix + DIS )"
    {
        ","     => 2243,
    },
    # [2243] "ldd ( ix + DIS ) ,"
    {
        "N"     => 2244,
        "a"     => 2246,
        "b"     => 2248,
        "c"     => 2250,
        "d"     => 2252,
        "e"     => 2254,
        "h"     => 2256,
        "l"     => 2258,
    },
    # [2244] "ldd ( ix + DIS ) , N"
    {
        ""      => [ \&_parse_end, 2245 ],
    },
    # [2245] "ldd ( ix + DIS ) , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x36, "DIS", "N", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2246] "ldd ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 2247 ],
    },
    # [2247] "ldd ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x77, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2248] "ldd ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 2249 ],
    },
    # [2249] "ldd ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x70, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2250] "ldd ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 2251 ],
    },
    # [2251] "ldd ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2252] "ldd ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 2253 ],
    },
    # [2253] "ldd ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x72, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2254] "ldd ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 2255 ],
    },
    # [2255] "ldd ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2256] "ldd ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 2257 ],
    },
    # [2257] "ldd ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x74, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2258] "ldd ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 2259 ],
    },
    # [2259] "ldd ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2260] "ldd ( iy"
    {
        "+"     => 2261,
    },
    # [2261] "ldd ( iy +"
    {
        "DIS"   => 2262,
    },
    # [2262] "ldd ( iy + DIS"
    {
        ")"     => 2263,
    },
    # [2263] "ldd ( iy + DIS )"
    {
        ","     => 2264,
    },
    # [2264] "ldd ( iy + DIS ) ,"
    {
        "N"     => 2265,
        "a"     => 2267,
        "b"     => 2269,
        "c"     => 2271,
        "d"     => 2273,
        "e"     => 2275,
        "h"     => 2277,
        "l"     => 2279,
    },
    # [2265] "ldd ( iy + DIS ) , N"
    {
        ""      => [ \&_parse_end, 2266 ],
    },
    # [2266] "ldd ( iy + DIS ) , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x36, "DIS", "N", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2267] "ldd ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 2268 ],
    },
    # [2268] "ldd ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x77, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2269] "ldd ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 2270 ],
    },
    # [2270] "ldd ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x70, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2271] "ldd ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 2272 ],
    },
    # [2272] "ldd ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2273] "ldd ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 2274 ],
    },
    # [2274] "ldd ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x72, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2275] "ldd ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 2276 ],
    },
    # [2276] "ldd ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2277] "ldd ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 2278 ],
    },
    # [2278] "ldd ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x74, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2279] "ldd ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 2280 ],
    },
    # [2280] "ldd ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2281] "ldd ["
    {
        "bc"    => 2282,
        "de"    => 2287,
        "hl"    => 2292,
        "ix"    => 2311,
        "iy"    => 2332,
    },
    # [2282] "ldd [ bc"
    {
        "]"     => 2283,
    },
    # [2283] "ldd [ bc ]"
    {
        ","     => 2284,
    },
    # [2284] "ldd [ bc ] ,"
    {
        "a"     => 2285,
    },
    # [2285] "ldd [ bc ] , a"
    {
        ""      => [ \&_parse_end, 2286 ],
    },
    # [2286] "ldd [ bc ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x02, 0x0b], $_[0]) }, 0 ],
    },
    # [2287] "ldd [ de"
    {
        "]"     => 2288,
    },
    # [2288] "ldd [ de ]"
    {
        ","     => 2289,
    },
    # [2289] "ldd [ de ] ,"
    {
        "a"     => 2290,
    },
    # [2290] "ldd [ de ] , a"
    {
        ""      => [ \&_parse_end, 2291 ],
    },
    # [2291] "ldd [ de ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x12, 0x1b], $_[0]) }, 0 ],
    },
    # [2292] "ldd [ hl"
    {
        "]"     => 2293,
    },
    # [2293] "ldd [ hl ]"
    {
        ","     => 2294,
    },
    # [2294] "ldd [ hl ] ,"
    {
        "N"     => 2295,
        "a"     => 2297,
        "b"     => 2299,
        "c"     => 2301,
        "d"     => 2303,
        "e"     => 2305,
        "h"     => 2307,
        "l"     => 2309,
    },
    # [2295] "ldd [ hl ] , N"
    {
        ""      => [ \&_parse_end, 2296 ],
    },
    # [2296] "ldd [ hl ] , N &_parse_end"
    {
        ""      => [ sub { return ([0x36, "N", 0x2b], $_[0]) }, 0 ],
    },
    # [2297] "ldd [ hl ] , a"
    {
        ""      => [ \&_parse_end, 2298 ],
    },
    # [2298] "ldd [ hl ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x77, 0x2b], $_[0]) }, 0 ],
    },
    # [2299] "ldd [ hl ] , b"
    {
        ""      => [ \&_parse_end, 2300 ],
    },
    # [2300] "ldd [ hl ] , b &_parse_end"
    {
        ""      => [ sub { return ([0x70, 0x2b], $_[0]) }, 0 ],
    },
    # [2301] "ldd [ hl ] , c"
    {
        ""      => [ \&_parse_end, 2302 ],
    },
    # [2302] "ldd [ hl ] , c &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x2b], $_[0]) }, 0 ],
    },
    # [2303] "ldd [ hl ] , d"
    {
        ""      => [ \&_parse_end, 2304 ],
    },
    # [2304] "ldd [ hl ] , d &_parse_end"
    {
        ""      => [ sub { return ([0x72, 0x2b], $_[0]) }, 0 ],
    },
    # [2305] "ldd [ hl ] , e"
    {
        ""      => [ \&_parse_end, 2306 ],
    },
    # [2306] "ldd [ hl ] , e &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x2b], $_[0]) }, 0 ],
    },
    # [2307] "ldd [ hl ] , h"
    {
        ""      => [ \&_parse_end, 2308 ],
    },
    # [2308] "ldd [ hl ] , h &_parse_end"
    {
        ""      => [ sub { return ([0x74, 0x2b], $_[0]) }, 0 ],
    },
    # [2309] "ldd [ hl ] , l"
    {
        ""      => [ \&_parse_end, 2310 ],
    },
    # [2310] "ldd [ hl ] , l &_parse_end"
    {
        ""      => [ sub { return ([0x75, 0x2b], $_[0]) }, 0 ],
    },
    # [2311] "ldd [ ix"
    {
        "+"     => 2312,
    },
    # [2312] "ldd [ ix +"
    {
        "DIS"   => 2313,
    },
    # [2313] "ldd [ ix + DIS"
    {
        "]"     => 2314,
    },
    # [2314] "ldd [ ix + DIS ]"
    {
        ","     => 2315,
    },
    # [2315] "ldd [ ix + DIS ] ,"
    {
        "N"     => 2316,
        "a"     => 2318,
        "b"     => 2320,
        "c"     => 2322,
        "d"     => 2324,
        "e"     => 2326,
        "h"     => 2328,
        "l"     => 2330,
    },
    # [2316] "ldd [ ix + DIS ] , N"
    {
        ""      => [ \&_parse_end, 2317 ],
    },
    # [2317] "ldd [ ix + DIS ] , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x36, "DIS", "N", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2318] "ldd [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 2319 ],
    },
    # [2319] "ldd [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x77, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2320] "ldd [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 2321 ],
    },
    # [2321] "ldd [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x70, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2322] "ldd [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 2323 ],
    },
    # [2323] "ldd [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2324] "ldd [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 2325 ],
    },
    # [2325] "ldd [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x72, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2326] "ldd [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 2327 ],
    },
    # [2327] "ldd [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2328] "ldd [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 2329 ],
    },
    # [2329] "ldd [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x74, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2330] "ldd [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 2331 ],
    },
    # [2331] "ldd [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2332] "ldd [ iy"
    {
        "+"     => 2333,
    },
    # [2333] "ldd [ iy +"
    {
        "DIS"   => 2334,
    },
    # [2334] "ldd [ iy + DIS"
    {
        "]"     => 2335,
    },
    # [2335] "ldd [ iy + DIS ]"
    {
        ","     => 2336,
    },
    # [2336] "ldd [ iy + DIS ] ,"
    {
        "N"     => 2337,
        "a"     => 2339,
        "b"     => 2341,
        "c"     => 2343,
        "d"     => 2345,
        "e"     => 2347,
        "h"     => 2349,
        "l"     => 2351,
    },
    # [2337] "ldd [ iy + DIS ] , N"
    {
        ""      => [ \&_parse_end, 2338 ],
    },
    # [2338] "ldd [ iy + DIS ] , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x36, "DIS", "N", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2339] "ldd [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 2340 ],
    },
    # [2340] "ldd [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x77, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2341] "ldd [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 2342 ],
    },
    # [2342] "ldd [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x70, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2343] "ldd [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 2344 ],
    },
    # [2344] "ldd [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2345] "ldd [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 2346 ],
    },
    # [2346] "ldd [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x72, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2347] "ldd [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 2348 ],
    },
    # [2348] "ldd [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2349] "ldd [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 2350 ],
    },
    # [2350] "ldd [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x74, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2351] "ldd [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 2352 ],
    },
    # [2352] "ldd [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2353] "ldd a"
    {
        ","     => 2354,
    },
    # [2354] "ldd a ,"
    {
        "("     => 2355,
        "["     => 2375,
    },
    # [2355] "ldd a , ("
    {
        "bc"    => 2356,
        "de"    => 2359,
        "hl"    => 2362,
        "ix"    => 2365,
        "iy"    => 2370,
    },
    # [2356] "ldd a , ( bc"
    {
        ")"     => 2357,
    },
    # [2357] "ldd a , ( bc )"
    {
        ""      => [ \&_parse_end, 2358 ],
    },
    # [2358] "ldd a , ( bc ) &_parse_end"
    {
        ""      => [ sub { return ([0x0a, 0x0b], $_[0]) }, 0 ],
    },
    # [2359] "ldd a , ( de"
    {
        ")"     => 2360,
    },
    # [2360] "ldd a , ( de )"
    {
        ""      => [ \&_parse_end, 2361 ],
    },
    # [2361] "ldd a , ( de ) &_parse_end"
    {
        ""      => [ sub { return ([0x1a, 0x1b], $_[0]) }, 0 ],
    },
    # [2362] "ldd a , ( hl"
    {
        ")"     => 2363,
    },
    # [2363] "ldd a , ( hl )"
    {
        ""      => [ \&_parse_end, 2364 ],
    },
    # [2364] "ldd a , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x7e, 0x2b], $_[0]) }, 0 ],
    },
    # [2365] "ldd a , ( ix"
    {
        "+"     => 2366,
    },
    # [2366] "ldd a , ( ix +"
    {
        "DIS"   => 2367,
    },
    # [2367] "ldd a , ( ix + DIS"
    {
        ")"     => 2368,
    },
    # [2368] "ldd a , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2369 ],
    },
    # [2369] "ldd a , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2370] "ldd a , ( iy"
    {
        "+"     => 2371,
    },
    # [2371] "ldd a , ( iy +"
    {
        "DIS"   => 2372,
    },
    # [2372] "ldd a , ( iy + DIS"
    {
        ")"     => 2373,
    },
    # [2373] "ldd a , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2374 ],
    },
    # [2374] "ldd a , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2375] "ldd a , ["
    {
        "bc"    => 2376,
        "de"    => 2379,
        "hl"    => 2382,
        "ix"    => 2385,
        "iy"    => 2390,
    },
    # [2376] "ldd a , [ bc"
    {
        "]"     => 2377,
    },
    # [2377] "ldd a , [ bc ]"
    {
        ""      => [ \&_parse_end, 2378 ],
    },
    # [2378] "ldd a , [ bc ] &_parse_end"
    {
        ""      => [ sub { return ([0x0a, 0x0b], $_[0]) }, 0 ],
    },
    # [2379] "ldd a , [ de"
    {
        "]"     => 2380,
    },
    # [2380] "ldd a , [ de ]"
    {
        ""      => [ \&_parse_end, 2381 ],
    },
    # [2381] "ldd a , [ de ] &_parse_end"
    {
        ""      => [ sub { return ([0x1a, 0x1b], $_[0]) }, 0 ],
    },
    # [2382] "ldd a , [ hl"
    {
        "]"     => 2383,
    },
    # [2383] "ldd a , [ hl ]"
    {
        ""      => [ \&_parse_end, 2384 ],
    },
    # [2384] "ldd a , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x7e, 0x2b], $_[0]) }, 0 ],
    },
    # [2385] "ldd a , [ ix"
    {
        "+"     => 2386,
    },
    # [2386] "ldd a , [ ix +"
    {
        "DIS"   => 2387,
    },
    # [2387] "ldd a , [ ix + DIS"
    {
        "]"     => 2388,
    },
    # [2388] "ldd a , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2389 ],
    },
    # [2389] "ldd a , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2390] "ldd a , [ iy"
    {
        "+"     => 2391,
    },
    # [2391] "ldd a , [ iy +"
    {
        "DIS"   => 2392,
    },
    # [2392] "ldd a , [ iy + DIS"
    {
        "]"     => 2393,
    },
    # [2393] "ldd a , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2394 ],
    },
    # [2394] "ldd a , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2395] "ldd b"
    {
        ","     => 2396,
    },
    # [2396] "ldd b ,"
    {
        "("     => 2397,
        "["     => 2411,
    },
    # [2397] "ldd b , ("
    {
        "hl"    => 2398,
        "ix"    => 2401,
        "iy"    => 2406,
    },
    # [2398] "ldd b , ( hl"
    {
        ")"     => 2399,
    },
    # [2399] "ldd b , ( hl )"
    {
        ""      => [ \&_parse_end, 2400 ],
    },
    # [2400] "ldd b , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x46, 0x2b], $_[0]) }, 0 ],
    },
    # [2401] "ldd b , ( ix"
    {
        "+"     => 2402,
    },
    # [2402] "ldd b , ( ix +"
    {
        "DIS"   => 2403,
    },
    # [2403] "ldd b , ( ix + DIS"
    {
        ")"     => 2404,
    },
    # [2404] "ldd b , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2405 ],
    },
    # [2405] "ldd b , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x46, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2406] "ldd b , ( iy"
    {
        "+"     => 2407,
    },
    # [2407] "ldd b , ( iy +"
    {
        "DIS"   => 2408,
    },
    # [2408] "ldd b , ( iy + DIS"
    {
        ")"     => 2409,
    },
    # [2409] "ldd b , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2410 ],
    },
    # [2410] "ldd b , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x46, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2411] "ldd b , ["
    {
        "hl"    => 2412,
        "ix"    => 2415,
        "iy"    => 2420,
    },
    # [2412] "ldd b , [ hl"
    {
        "]"     => 2413,
    },
    # [2413] "ldd b , [ hl ]"
    {
        ""      => [ \&_parse_end, 2414 ],
    },
    # [2414] "ldd b , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x46, 0x2b], $_[0]) }, 0 ],
    },
    # [2415] "ldd b , [ ix"
    {
        "+"     => 2416,
    },
    # [2416] "ldd b , [ ix +"
    {
        "DIS"   => 2417,
    },
    # [2417] "ldd b , [ ix + DIS"
    {
        "]"     => 2418,
    },
    # [2418] "ldd b , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2419 ],
    },
    # [2419] "ldd b , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x46, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2420] "ldd b , [ iy"
    {
        "+"     => 2421,
    },
    # [2421] "ldd b , [ iy +"
    {
        "DIS"   => 2422,
    },
    # [2422] "ldd b , [ iy + DIS"
    {
        "]"     => 2423,
    },
    # [2423] "ldd b , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2424 ],
    },
    # [2424] "ldd b , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x46, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2425] "ldd c"
    {
        ","     => 2426,
    },
    # [2426] "ldd c ,"
    {
        "("     => 2427,
        "["     => 2441,
    },
    # [2427] "ldd c , ("
    {
        "hl"    => 2428,
        "ix"    => 2431,
        "iy"    => 2436,
    },
    # [2428] "ldd c , ( hl"
    {
        ")"     => 2429,
    },
    # [2429] "ldd c , ( hl )"
    {
        ""      => [ \&_parse_end, 2430 ],
    },
    # [2430] "ldd c , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x2b], $_[0]) }, 0 ],
    },
    # [2431] "ldd c , ( ix"
    {
        "+"     => 2432,
    },
    # [2432] "ldd c , ( ix +"
    {
        "DIS"   => 2433,
    },
    # [2433] "ldd c , ( ix + DIS"
    {
        ")"     => 2434,
    },
    # [2434] "ldd c , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2435 ],
    },
    # [2435] "ldd c , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2436] "ldd c , ( iy"
    {
        "+"     => 2437,
    },
    # [2437] "ldd c , ( iy +"
    {
        "DIS"   => 2438,
    },
    # [2438] "ldd c , ( iy + DIS"
    {
        ")"     => 2439,
    },
    # [2439] "ldd c , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2440 ],
    },
    # [2440] "ldd c , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2441] "ldd c , ["
    {
        "hl"    => 2442,
        "ix"    => 2445,
        "iy"    => 2450,
    },
    # [2442] "ldd c , [ hl"
    {
        "]"     => 2443,
    },
    # [2443] "ldd c , [ hl ]"
    {
        ""      => [ \&_parse_end, 2444 ],
    },
    # [2444] "ldd c , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x2b], $_[0]) }, 0 ],
    },
    # [2445] "ldd c , [ ix"
    {
        "+"     => 2446,
    },
    # [2446] "ldd c , [ ix +"
    {
        "DIS"   => 2447,
    },
    # [2447] "ldd c , [ ix + DIS"
    {
        "]"     => 2448,
    },
    # [2448] "ldd c , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2449 ],
    },
    # [2449] "ldd c , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2450] "ldd c , [ iy"
    {
        "+"     => 2451,
    },
    # [2451] "ldd c , [ iy +"
    {
        "DIS"   => 2452,
    },
    # [2452] "ldd c , [ iy + DIS"
    {
        "]"     => 2453,
    },
    # [2453] "ldd c , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2454 ],
    },
    # [2454] "ldd c , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2455] "ldd d"
    {
        ","     => 2456,
    },
    # [2456] "ldd d ,"
    {
        "("     => 2457,
        "["     => 2471,
    },
    # [2457] "ldd d , ("
    {
        "hl"    => 2458,
        "ix"    => 2461,
        "iy"    => 2466,
    },
    # [2458] "ldd d , ( hl"
    {
        ")"     => 2459,
    },
    # [2459] "ldd d , ( hl )"
    {
        ""      => [ \&_parse_end, 2460 ],
    },
    # [2460] "ldd d , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x56, 0x2b], $_[0]) }, 0 ],
    },
    # [2461] "ldd d , ( ix"
    {
        "+"     => 2462,
    },
    # [2462] "ldd d , ( ix +"
    {
        "DIS"   => 2463,
    },
    # [2463] "ldd d , ( ix + DIS"
    {
        ")"     => 2464,
    },
    # [2464] "ldd d , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2465 ],
    },
    # [2465] "ldd d , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x56, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2466] "ldd d , ( iy"
    {
        "+"     => 2467,
    },
    # [2467] "ldd d , ( iy +"
    {
        "DIS"   => 2468,
    },
    # [2468] "ldd d , ( iy + DIS"
    {
        ")"     => 2469,
    },
    # [2469] "ldd d , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2470 ],
    },
    # [2470] "ldd d , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x56, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2471] "ldd d , ["
    {
        "hl"    => 2472,
        "ix"    => 2475,
        "iy"    => 2480,
    },
    # [2472] "ldd d , [ hl"
    {
        "]"     => 2473,
    },
    # [2473] "ldd d , [ hl ]"
    {
        ""      => [ \&_parse_end, 2474 ],
    },
    # [2474] "ldd d , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x56, 0x2b], $_[0]) }, 0 ],
    },
    # [2475] "ldd d , [ ix"
    {
        "+"     => 2476,
    },
    # [2476] "ldd d , [ ix +"
    {
        "DIS"   => 2477,
    },
    # [2477] "ldd d , [ ix + DIS"
    {
        "]"     => 2478,
    },
    # [2478] "ldd d , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2479 ],
    },
    # [2479] "ldd d , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x56, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2480] "ldd d , [ iy"
    {
        "+"     => 2481,
    },
    # [2481] "ldd d , [ iy +"
    {
        "DIS"   => 2482,
    },
    # [2482] "ldd d , [ iy + DIS"
    {
        "]"     => 2483,
    },
    # [2483] "ldd d , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2484 ],
    },
    # [2484] "ldd d , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x56, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2485] "ldd e"
    {
        ","     => 2486,
    },
    # [2486] "ldd e ,"
    {
        "("     => 2487,
        "["     => 2501,
    },
    # [2487] "ldd e , ("
    {
        "hl"    => 2488,
        "ix"    => 2491,
        "iy"    => 2496,
    },
    # [2488] "ldd e , ( hl"
    {
        ")"     => 2489,
    },
    # [2489] "ldd e , ( hl )"
    {
        ""      => [ \&_parse_end, 2490 ],
    },
    # [2490] "ldd e , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x2b], $_[0]) }, 0 ],
    },
    # [2491] "ldd e , ( ix"
    {
        "+"     => 2492,
    },
    # [2492] "ldd e , ( ix +"
    {
        "DIS"   => 2493,
    },
    # [2493] "ldd e , ( ix + DIS"
    {
        ")"     => 2494,
    },
    # [2494] "ldd e , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2495 ],
    },
    # [2495] "ldd e , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2496] "ldd e , ( iy"
    {
        "+"     => 2497,
    },
    # [2497] "ldd e , ( iy +"
    {
        "DIS"   => 2498,
    },
    # [2498] "ldd e , ( iy + DIS"
    {
        ")"     => 2499,
    },
    # [2499] "ldd e , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2500 ],
    },
    # [2500] "ldd e , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2501] "ldd e , ["
    {
        "hl"    => 2502,
        "ix"    => 2505,
        "iy"    => 2510,
    },
    # [2502] "ldd e , [ hl"
    {
        "]"     => 2503,
    },
    # [2503] "ldd e , [ hl ]"
    {
        ""      => [ \&_parse_end, 2504 ],
    },
    # [2504] "ldd e , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x2b], $_[0]) }, 0 ],
    },
    # [2505] "ldd e , [ ix"
    {
        "+"     => 2506,
    },
    # [2506] "ldd e , [ ix +"
    {
        "DIS"   => 2507,
    },
    # [2507] "ldd e , [ ix + DIS"
    {
        "]"     => 2508,
    },
    # [2508] "ldd e , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2509 ],
    },
    # [2509] "ldd e , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2510] "ldd e , [ iy"
    {
        "+"     => 2511,
    },
    # [2511] "ldd e , [ iy +"
    {
        "DIS"   => 2512,
    },
    # [2512] "ldd e , [ iy + DIS"
    {
        "]"     => 2513,
    },
    # [2513] "ldd e , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2514 ],
    },
    # [2514] "ldd e , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2515] "ldd h"
    {
        ","     => 2516,
    },
    # [2516] "ldd h ,"
    {
        "("     => 2517,
        "["     => 2531,
    },
    # [2517] "ldd h , ("
    {
        "hl"    => 2518,
        "ix"    => 2521,
        "iy"    => 2526,
    },
    # [2518] "ldd h , ( hl"
    {
        ")"     => 2519,
    },
    # [2519] "ldd h , ( hl )"
    {
        ""      => [ \&_parse_end, 2520 ],
    },
    # [2520] "ldd h , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x66, 0x2b], $_[0]) }, 0 ],
    },
    # [2521] "ldd h , ( ix"
    {
        "+"     => 2522,
    },
    # [2522] "ldd h , ( ix +"
    {
        "DIS"   => 2523,
    },
    # [2523] "ldd h , ( ix + DIS"
    {
        ")"     => 2524,
    },
    # [2524] "ldd h , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2525 ],
    },
    # [2525] "ldd h , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x66, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2526] "ldd h , ( iy"
    {
        "+"     => 2527,
    },
    # [2527] "ldd h , ( iy +"
    {
        "DIS"   => 2528,
    },
    # [2528] "ldd h , ( iy + DIS"
    {
        ")"     => 2529,
    },
    # [2529] "ldd h , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2530 ],
    },
    # [2530] "ldd h , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x66, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2531] "ldd h , ["
    {
        "hl"    => 2532,
        "ix"    => 2535,
        "iy"    => 2540,
    },
    # [2532] "ldd h , [ hl"
    {
        "]"     => 2533,
    },
    # [2533] "ldd h , [ hl ]"
    {
        ""      => [ \&_parse_end, 2534 ],
    },
    # [2534] "ldd h , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x66, 0x2b], $_[0]) }, 0 ],
    },
    # [2535] "ldd h , [ ix"
    {
        "+"     => 2536,
    },
    # [2536] "ldd h , [ ix +"
    {
        "DIS"   => 2537,
    },
    # [2537] "ldd h , [ ix + DIS"
    {
        "]"     => 2538,
    },
    # [2538] "ldd h , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2539 ],
    },
    # [2539] "ldd h , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x66, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2540] "ldd h , [ iy"
    {
        "+"     => 2541,
    },
    # [2541] "ldd h , [ iy +"
    {
        "DIS"   => 2542,
    },
    # [2542] "ldd h , [ iy + DIS"
    {
        "]"     => 2543,
    },
    # [2543] "ldd h , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2544 ],
    },
    # [2544] "ldd h , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x66, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2545] "ldd l"
    {
        ","     => 2546,
    },
    # [2546] "ldd l ,"
    {
        "("     => 2547,
        "["     => 2561,
    },
    # [2547] "ldd l , ("
    {
        "hl"    => 2548,
        "ix"    => 2551,
        "iy"    => 2556,
    },
    # [2548] "ldd l , ( hl"
    {
        ")"     => 2549,
    },
    # [2549] "ldd l , ( hl )"
    {
        ""      => [ \&_parse_end, 2550 ],
    },
    # [2550] "ldd l , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x6e, 0x2b], $_[0]) }, 0 ],
    },
    # [2551] "ldd l , ( ix"
    {
        "+"     => 2552,
    },
    # [2552] "ldd l , ( ix +"
    {
        "DIS"   => 2553,
    },
    # [2553] "ldd l , ( ix + DIS"
    {
        ")"     => 2554,
    },
    # [2554] "ldd l , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2555 ],
    },
    # [2555] "ldd l , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2556] "ldd l , ( iy"
    {
        "+"     => 2557,
    },
    # [2557] "ldd l , ( iy +"
    {
        "DIS"   => 2558,
    },
    # [2558] "ldd l , ( iy + DIS"
    {
        ")"     => 2559,
    },
    # [2559] "ldd l , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2560 ],
    },
    # [2560] "ldd l , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2561] "ldd l , ["
    {
        "hl"    => 2562,
        "ix"    => 2565,
        "iy"    => 2570,
    },
    # [2562] "ldd l , [ hl"
    {
        "]"     => 2563,
    },
    # [2563] "ldd l , [ hl ]"
    {
        ""      => [ \&_parse_end, 2564 ],
    },
    # [2564] "ldd l , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x6e, 0x2b], $_[0]) }, 0 ],
    },
    # [2565] "ldd l , [ ix"
    {
        "+"     => 2566,
    },
    # [2566] "ldd l , [ ix +"
    {
        "DIS"   => 2567,
    },
    # [2567] "ldd l , [ ix + DIS"
    {
        "]"     => 2568,
    },
    # [2568] "ldd l , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2569 ],
    },
    # [2569] "ldd l , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x2b], $_[0]) }, 0 ],
    },
    # [2570] "ldd l , [ iy"
    {
        "+"     => 2571,
    },
    # [2571] "ldd l , [ iy +"
    {
        "DIS"   => 2572,
    },
    # [2572] "ldd l , [ iy + DIS"
    {
        "]"     => 2573,
    },
    # [2573] "ldd l , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2574 ],
    },
    # [2574] "ldd l , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x2b], $_[0]) }, 0 ],
    },
    # [2575] "lddr"
    {
        ""      => [ \&_parse_end, 2576 ],
    },
    # [2576] "lddr &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xb8], $_[0]) }, 0 ],
    },
    # [2577] "ldi"
    {
        ""      => [ \&_parse_end, 2578 ],
        "("     => 2579,
        "["     => 2667,
        "a"     => 2755,
        "b"     => 2797,
        "bc"    => 2827,
        "c"     => 2857,
        "d"     => 2887,
        "de"    => 2917,
        "e"     => 2947,
        "h"     => 2977,
        "hl"    => 3007,
        "l"     => 3031,
    },
    # [2578] "ldi &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xa0], $_[0]) }, 0 ],
    },
    # [2579] "ldi ("
    {
        "bc"    => 2580,
        "de"    => 2585,
        "hl"    => 2590,
        "ix"    => 2613,
        "iy"    => 2640,
    },
    # [2580] "ldi ( bc"
    {
        ")"     => 2581,
    },
    # [2581] "ldi ( bc )"
    {
        ","     => 2582,
    },
    # [2582] "ldi ( bc ) ,"
    {
        "a"     => 2583,
    },
    # [2583] "ldi ( bc ) , a"
    {
        ""      => [ \&_parse_end, 2584 ],
    },
    # [2584] "ldi ( bc ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x02, 0x03], $_[0]) }, 0 ],
    },
    # [2585] "ldi ( de"
    {
        ")"     => 2586,
    },
    # [2586] "ldi ( de )"
    {
        ","     => 2587,
    },
    # [2587] "ldi ( de ) ,"
    {
        "a"     => 2588,
    },
    # [2588] "ldi ( de ) , a"
    {
        ""      => [ \&_parse_end, 2589 ],
    },
    # [2589] "ldi ( de ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x12, 0x13], $_[0]) }, 0 ],
    },
    # [2590] "ldi ( hl"
    {
        ")"     => 2591,
    },
    # [2591] "ldi ( hl )"
    {
        ","     => 2592,
    },
    # [2592] "ldi ( hl ) ,"
    {
        "N"     => 2593,
        "a"     => 2595,
        "b"     => 2597,
        "bc"    => 2599,
        "c"     => 2601,
        "d"     => 2603,
        "de"    => 2605,
        "e"     => 2607,
        "h"     => 2609,
        "l"     => 2611,
    },
    # [2593] "ldi ( hl ) , N"
    {
        ""      => [ \&_parse_end, 2594 ],
    },
    # [2594] "ldi ( hl ) , N &_parse_end"
    {
        ""      => [ sub { return ([0x36, "N", 0x23], $_[0]) }, 0 ],
    },
    # [2595] "ldi ( hl ) , a"
    {
        ""      => [ \&_parse_end, 2596 ],
    },
    # [2596] "ldi ( hl ) , a &_parse_end"
    {
        ""      => [ sub { return ([0x77, 0x23], $_[0]) }, 0 ],
    },
    # [2597] "ldi ( hl ) , b"
    {
        ""      => [ \&_parse_end, 2598 ],
    },
    # [2598] "ldi ( hl ) , b &_parse_end"
    {
        ""      => [ sub { return ([0x70, 0x23], $_[0]) }, 0 ],
    },
    # [2599] "ldi ( hl ) , bc"
    {
        ""      => [ \&_parse_end, 2600 ],
    },
    # [2600] "ldi ( hl ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x23, 0x70, 0x23], $_[0]) }, 0 ],
    },
    # [2601] "ldi ( hl ) , c"
    {
        ""      => [ \&_parse_end, 2602 ],
    },
    # [2602] "ldi ( hl ) , c &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x23], $_[0]) }, 0 ],
    },
    # [2603] "ldi ( hl ) , d"
    {
        ""      => [ \&_parse_end, 2604 ],
    },
    # [2604] "ldi ( hl ) , d &_parse_end"
    {
        ""      => [ sub { return ([0x72, 0x23], $_[0]) }, 0 ],
    },
    # [2605] "ldi ( hl ) , de"
    {
        ""      => [ \&_parse_end, 2606 ],
    },
    # [2606] "ldi ( hl ) , de &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x23, 0x72, 0x23], $_[0]) }, 0 ],
    },
    # [2607] "ldi ( hl ) , e"
    {
        ""      => [ \&_parse_end, 2608 ],
    },
    # [2608] "ldi ( hl ) , e &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x23], $_[0]) }, 0 ],
    },
    # [2609] "ldi ( hl ) , h"
    {
        ""      => [ \&_parse_end, 2610 ],
    },
    # [2610] "ldi ( hl ) , h &_parse_end"
    {
        ""      => [ sub { return ([0x74, 0x23], $_[0]) }, 0 ],
    },
    # [2611] "ldi ( hl ) , l"
    {
        ""      => [ \&_parse_end, 2612 ],
    },
    # [2612] "ldi ( hl ) , l &_parse_end"
    {
        ""      => [ sub { return ([0x75, 0x23], $_[0]) }, 0 ],
    },
    # [2613] "ldi ( ix"
    {
        "+"     => 2614,
    },
    # [2614] "ldi ( ix +"
    {
        "DIS"   => 2615,
    },
    # [2615] "ldi ( ix + DIS"
    {
        ")"     => 2616,
    },
    # [2616] "ldi ( ix + DIS )"
    {
        ","     => 2617,
    },
    # [2617] "ldi ( ix + DIS ) ,"
    {
        "N"     => 2618,
        "a"     => 2620,
        "b"     => 2622,
        "bc"    => 2624,
        "c"     => 2626,
        "d"     => 2628,
        "de"    => 2630,
        "e"     => 2632,
        "h"     => 2634,
        "hl"    => 2636,
        "l"     => 2638,
    },
    # [2618] "ldi ( ix + DIS ) , N"
    {
        ""      => [ \&_parse_end, 2619 ],
    },
    # [2619] "ldi ( ix + DIS ) , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x36, "DIS", "N", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2620] "ldi ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 2621 ],
    },
    # [2621] "ldi ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x77, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2622] "ldi ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 2623 ],
    },
    # [2623] "ldi ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x70, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2624] "ldi ( ix + DIS ) , bc"
    {
        ""      => [ \&_parse_end, 2625 ],
    },
    # [2625] "ldi ( ix + DIS ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x23, 0xdd, 0x70, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2626] "ldi ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 2627 ],
    },
    # [2627] "ldi ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2628] "ldi ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 2629 ],
    },
    # [2629] "ldi ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x72, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2630] "ldi ( ix + DIS ) , de"
    {
        ""      => [ \&_parse_end, 2631 ],
    },
    # [2631] "ldi ( ix + DIS ) , de &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x23, 0xdd, 0x72, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2632] "ldi ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 2633 ],
    },
    # [2633] "ldi ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2634] "ldi ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 2635 ],
    },
    # [2635] "ldi ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x74, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2636] "ldi ( ix + DIS ) , hl"
    {
        ""      => [ \&_parse_end, 2637 ],
    },
    # [2637] "ldi ( ix + DIS ) , hl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x23, 0xdd, 0x74, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2638] "ldi ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 2639 ],
    },
    # [2639] "ldi ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2640] "ldi ( iy"
    {
        "+"     => 2641,
    },
    # [2641] "ldi ( iy +"
    {
        "DIS"   => 2642,
    },
    # [2642] "ldi ( iy + DIS"
    {
        ")"     => 2643,
    },
    # [2643] "ldi ( iy + DIS )"
    {
        ","     => 2644,
    },
    # [2644] "ldi ( iy + DIS ) ,"
    {
        "N"     => 2645,
        "a"     => 2647,
        "b"     => 2649,
        "bc"    => 2651,
        "c"     => 2653,
        "d"     => 2655,
        "de"    => 2657,
        "e"     => 2659,
        "h"     => 2661,
        "hl"    => 2663,
        "l"     => 2665,
    },
    # [2645] "ldi ( iy + DIS ) , N"
    {
        ""      => [ \&_parse_end, 2646 ],
    },
    # [2646] "ldi ( iy + DIS ) , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x36, "DIS", "N", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2647] "ldi ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 2648 ],
    },
    # [2648] "ldi ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x77, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2649] "ldi ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 2650 ],
    },
    # [2650] "ldi ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x70, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2651] "ldi ( iy + DIS ) , bc"
    {
        ""      => [ \&_parse_end, 2652 ],
    },
    # [2652] "ldi ( iy + DIS ) , bc &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x23, 0xfd, 0x70, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2653] "ldi ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 2654 ],
    },
    # [2654] "ldi ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2655] "ldi ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 2656 ],
    },
    # [2656] "ldi ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x72, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2657] "ldi ( iy + DIS ) , de"
    {
        ""      => [ \&_parse_end, 2658 ],
    },
    # [2658] "ldi ( iy + DIS ) , de &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x23, 0xfd, 0x72, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2659] "ldi ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 2660 ],
    },
    # [2660] "ldi ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2661] "ldi ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 2662 ],
    },
    # [2662] "ldi ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x74, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2663] "ldi ( iy + DIS ) , hl"
    {
        ""      => [ \&_parse_end, 2664 ],
    },
    # [2664] "ldi ( iy + DIS ) , hl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x23, 0xfd, 0x74, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2665] "ldi ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 2666 ],
    },
    # [2666] "ldi ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2667] "ldi ["
    {
        "bc"    => 2668,
        "de"    => 2673,
        "hl"    => 2678,
        "ix"    => 2701,
        "iy"    => 2728,
    },
    # [2668] "ldi [ bc"
    {
        "]"     => 2669,
    },
    # [2669] "ldi [ bc ]"
    {
        ","     => 2670,
    },
    # [2670] "ldi [ bc ] ,"
    {
        "a"     => 2671,
    },
    # [2671] "ldi [ bc ] , a"
    {
        ""      => [ \&_parse_end, 2672 ],
    },
    # [2672] "ldi [ bc ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x02, 0x03], $_[0]) }, 0 ],
    },
    # [2673] "ldi [ de"
    {
        "]"     => 2674,
    },
    # [2674] "ldi [ de ]"
    {
        ","     => 2675,
    },
    # [2675] "ldi [ de ] ,"
    {
        "a"     => 2676,
    },
    # [2676] "ldi [ de ] , a"
    {
        ""      => [ \&_parse_end, 2677 ],
    },
    # [2677] "ldi [ de ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x12, 0x13], $_[0]) }, 0 ],
    },
    # [2678] "ldi [ hl"
    {
        "]"     => 2679,
    },
    # [2679] "ldi [ hl ]"
    {
        ","     => 2680,
    },
    # [2680] "ldi [ hl ] ,"
    {
        "N"     => 2681,
        "a"     => 2683,
        "b"     => 2685,
        "bc"    => 2687,
        "c"     => 2689,
        "d"     => 2691,
        "de"    => 2693,
        "e"     => 2695,
        "h"     => 2697,
        "l"     => 2699,
    },
    # [2681] "ldi [ hl ] , N"
    {
        ""      => [ \&_parse_end, 2682 ],
    },
    # [2682] "ldi [ hl ] , N &_parse_end"
    {
        ""      => [ sub { return ([0x36, "N", 0x23], $_[0]) }, 0 ],
    },
    # [2683] "ldi [ hl ] , a"
    {
        ""      => [ \&_parse_end, 2684 ],
    },
    # [2684] "ldi [ hl ] , a &_parse_end"
    {
        ""      => [ sub { return ([0x77, 0x23], $_[0]) }, 0 ],
    },
    # [2685] "ldi [ hl ] , b"
    {
        ""      => [ \&_parse_end, 2686 ],
    },
    # [2686] "ldi [ hl ] , b &_parse_end"
    {
        ""      => [ sub { return ([0x70, 0x23], $_[0]) }, 0 ],
    },
    # [2687] "ldi [ hl ] , bc"
    {
        ""      => [ \&_parse_end, 2688 ],
    },
    # [2688] "ldi [ hl ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x23, 0x70, 0x23], $_[0]) }, 0 ],
    },
    # [2689] "ldi [ hl ] , c"
    {
        ""      => [ \&_parse_end, 2690 ],
    },
    # [2690] "ldi [ hl ] , c &_parse_end"
    {
        ""      => [ sub { return ([0x71, 0x23], $_[0]) }, 0 ],
    },
    # [2691] "ldi [ hl ] , d"
    {
        ""      => [ \&_parse_end, 2692 ],
    },
    # [2692] "ldi [ hl ] , d &_parse_end"
    {
        ""      => [ sub { return ([0x72, 0x23], $_[0]) }, 0 ],
    },
    # [2693] "ldi [ hl ] , de"
    {
        ""      => [ \&_parse_end, 2694 ],
    },
    # [2694] "ldi [ hl ] , de &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x23, 0x72, 0x23], $_[0]) }, 0 ],
    },
    # [2695] "ldi [ hl ] , e"
    {
        ""      => [ \&_parse_end, 2696 ],
    },
    # [2696] "ldi [ hl ] , e &_parse_end"
    {
        ""      => [ sub { return ([0x73, 0x23], $_[0]) }, 0 ],
    },
    # [2697] "ldi [ hl ] , h"
    {
        ""      => [ \&_parse_end, 2698 ],
    },
    # [2698] "ldi [ hl ] , h &_parse_end"
    {
        ""      => [ sub { return ([0x74, 0x23], $_[0]) }, 0 ],
    },
    # [2699] "ldi [ hl ] , l"
    {
        ""      => [ \&_parse_end, 2700 ],
    },
    # [2700] "ldi [ hl ] , l &_parse_end"
    {
        ""      => [ sub { return ([0x75, 0x23], $_[0]) }, 0 ],
    },
    # [2701] "ldi [ ix"
    {
        "+"     => 2702,
    },
    # [2702] "ldi [ ix +"
    {
        "DIS"   => 2703,
    },
    # [2703] "ldi [ ix + DIS"
    {
        "]"     => 2704,
    },
    # [2704] "ldi [ ix + DIS ]"
    {
        ","     => 2705,
    },
    # [2705] "ldi [ ix + DIS ] ,"
    {
        "N"     => 2706,
        "a"     => 2708,
        "b"     => 2710,
        "bc"    => 2712,
        "c"     => 2714,
        "d"     => 2716,
        "de"    => 2718,
        "e"     => 2720,
        "h"     => 2722,
        "hl"    => 2724,
        "l"     => 2726,
    },
    # [2706] "ldi [ ix + DIS ] , N"
    {
        ""      => [ \&_parse_end, 2707 ],
    },
    # [2707] "ldi [ ix + DIS ] , N &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x36, "DIS", "N", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2708] "ldi [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 2709 ],
    },
    # [2709] "ldi [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x77, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2710] "ldi [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 2711 ],
    },
    # [2711] "ldi [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x70, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2712] "ldi [ ix + DIS ] , bc"
    {
        ""      => [ \&_parse_end, 2713 ],
    },
    # [2713] "ldi [ ix + DIS ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x23, 0xdd, 0x70, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2714] "ldi [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 2715 ],
    },
    # [2715] "ldi [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x71, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2716] "ldi [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 2717 ],
    },
    # [2717] "ldi [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x72, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2718] "ldi [ ix + DIS ] , de"
    {
        ""      => [ \&_parse_end, 2719 ],
    },
    # [2719] "ldi [ ix + DIS ] , de &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x23, 0xdd, 0x72, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2720] "ldi [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 2721 ],
    },
    # [2721] "ldi [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x73, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2722] "ldi [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 2723 ],
    },
    # [2723] "ldi [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x74, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2724] "ldi [ ix + DIS ] , hl"
    {
        ""      => [ \&_parse_end, 2725 ],
    },
    # [2725] "ldi [ ix + DIS ] , hl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x23, 0xdd, 0x74, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2726] "ldi [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 2727 ],
    },
    # [2727] "ldi [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x75, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2728] "ldi [ iy"
    {
        "+"     => 2729,
    },
    # [2729] "ldi [ iy +"
    {
        "DIS"   => 2730,
    },
    # [2730] "ldi [ iy + DIS"
    {
        "]"     => 2731,
    },
    # [2731] "ldi [ iy + DIS ]"
    {
        ","     => 2732,
    },
    # [2732] "ldi [ iy + DIS ] ,"
    {
        "N"     => 2733,
        "a"     => 2735,
        "b"     => 2737,
        "bc"    => 2739,
        "c"     => 2741,
        "d"     => 2743,
        "de"    => 2745,
        "e"     => 2747,
        "h"     => 2749,
        "hl"    => 2751,
        "l"     => 2753,
    },
    # [2733] "ldi [ iy + DIS ] , N"
    {
        ""      => [ \&_parse_end, 2734 ],
    },
    # [2734] "ldi [ iy + DIS ] , N &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x36, "DIS", "N", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2735] "ldi [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 2736 ],
    },
    # [2736] "ldi [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x77, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2737] "ldi [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 2738 ],
    },
    # [2738] "ldi [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x70, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2739] "ldi [ iy + DIS ] , bc"
    {
        ""      => [ \&_parse_end, 2740 ],
    },
    # [2740] "ldi [ iy + DIS ] , bc &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x23, 0xfd, 0x70, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2741] "ldi [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 2742 ],
    },
    # [2742] "ldi [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x71, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2743] "ldi [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 2744 ],
    },
    # [2744] "ldi [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x72, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2745] "ldi [ iy + DIS ] , de"
    {
        ""      => [ \&_parse_end, 2746 ],
    },
    # [2746] "ldi [ iy + DIS ] , de &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x23, 0xfd, 0x72, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2747] "ldi [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 2748 ],
    },
    # [2748] "ldi [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x73, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2749] "ldi [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 2750 ],
    },
    # [2750] "ldi [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x74, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2751] "ldi [ iy + DIS ] , hl"
    {
        ""      => [ \&_parse_end, 2752 ],
    },
    # [2752] "ldi [ iy + DIS ] , hl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x23, 0xfd, 0x74, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2753] "ldi [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 2754 ],
    },
    # [2754] "ldi [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x75, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2755] "ldi a"
    {
        ","     => 2756,
    },
    # [2756] "ldi a ,"
    {
        "("     => 2757,
        "["     => 2777,
    },
    # [2757] "ldi a , ("
    {
        "bc"    => 2758,
        "de"    => 2761,
        "hl"    => 2764,
        "ix"    => 2767,
        "iy"    => 2772,
    },
    # [2758] "ldi a , ( bc"
    {
        ")"     => 2759,
    },
    # [2759] "ldi a , ( bc )"
    {
        ""      => [ \&_parse_end, 2760 ],
    },
    # [2760] "ldi a , ( bc ) &_parse_end"
    {
        ""      => [ sub { return ([0x0a, 0x03], $_[0]) }, 0 ],
    },
    # [2761] "ldi a , ( de"
    {
        ")"     => 2762,
    },
    # [2762] "ldi a , ( de )"
    {
        ""      => [ \&_parse_end, 2763 ],
    },
    # [2763] "ldi a , ( de ) &_parse_end"
    {
        ""      => [ sub { return ([0x1a, 0x13], $_[0]) }, 0 ],
    },
    # [2764] "ldi a , ( hl"
    {
        ")"     => 2765,
    },
    # [2765] "ldi a , ( hl )"
    {
        ""      => [ \&_parse_end, 2766 ],
    },
    # [2766] "ldi a , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x7e, 0x23], $_[0]) }, 0 ],
    },
    # [2767] "ldi a , ( ix"
    {
        "+"     => 2768,
    },
    # [2768] "ldi a , ( ix +"
    {
        "DIS"   => 2769,
    },
    # [2769] "ldi a , ( ix + DIS"
    {
        ")"     => 2770,
    },
    # [2770] "ldi a , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2771 ],
    },
    # [2771] "ldi a , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2772] "ldi a , ( iy"
    {
        "+"     => 2773,
    },
    # [2773] "ldi a , ( iy +"
    {
        "DIS"   => 2774,
    },
    # [2774] "ldi a , ( iy + DIS"
    {
        ")"     => 2775,
    },
    # [2775] "ldi a , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2776 ],
    },
    # [2776] "ldi a , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2777] "ldi a , ["
    {
        "bc"    => 2778,
        "de"    => 2781,
        "hl"    => 2784,
        "ix"    => 2787,
        "iy"    => 2792,
    },
    # [2778] "ldi a , [ bc"
    {
        "]"     => 2779,
    },
    # [2779] "ldi a , [ bc ]"
    {
        ""      => [ \&_parse_end, 2780 ],
    },
    # [2780] "ldi a , [ bc ] &_parse_end"
    {
        ""      => [ sub { return ([0x0a, 0x03], $_[0]) }, 0 ],
    },
    # [2781] "ldi a , [ de"
    {
        "]"     => 2782,
    },
    # [2782] "ldi a , [ de ]"
    {
        ""      => [ \&_parse_end, 2783 ],
    },
    # [2783] "ldi a , [ de ] &_parse_end"
    {
        ""      => [ sub { return ([0x1a, 0x13], $_[0]) }, 0 ],
    },
    # [2784] "ldi a , [ hl"
    {
        "]"     => 2785,
    },
    # [2785] "ldi a , [ hl ]"
    {
        ""      => [ \&_parse_end, 2786 ],
    },
    # [2786] "ldi a , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x7e, 0x23], $_[0]) }, 0 ],
    },
    # [2787] "ldi a , [ ix"
    {
        "+"     => 2788,
    },
    # [2788] "ldi a , [ ix +"
    {
        "DIS"   => 2789,
    },
    # [2789] "ldi a , [ ix + DIS"
    {
        "]"     => 2790,
    },
    # [2790] "ldi a , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2791 ],
    },
    # [2791] "ldi a , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x7e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2792] "ldi a , [ iy"
    {
        "+"     => 2793,
    },
    # [2793] "ldi a , [ iy +"
    {
        "DIS"   => 2794,
    },
    # [2794] "ldi a , [ iy + DIS"
    {
        "]"     => 2795,
    },
    # [2795] "ldi a , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2796 ],
    },
    # [2796] "ldi a , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x7e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2797] "ldi b"
    {
        ","     => 2798,
    },
    # [2798] "ldi b ,"
    {
        "("     => 2799,
        "["     => 2813,
    },
    # [2799] "ldi b , ("
    {
        "hl"    => 2800,
        "ix"    => 2803,
        "iy"    => 2808,
    },
    # [2800] "ldi b , ( hl"
    {
        ")"     => 2801,
    },
    # [2801] "ldi b , ( hl )"
    {
        ""      => [ \&_parse_end, 2802 ],
    },
    # [2802] "ldi b , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x46, 0x23], $_[0]) }, 0 ],
    },
    # [2803] "ldi b , ( ix"
    {
        "+"     => 2804,
    },
    # [2804] "ldi b , ( ix +"
    {
        "DIS"   => 2805,
    },
    # [2805] "ldi b , ( ix + DIS"
    {
        ")"     => 2806,
    },
    # [2806] "ldi b , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2807 ],
    },
    # [2807] "ldi b , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x46, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2808] "ldi b , ( iy"
    {
        "+"     => 2809,
    },
    # [2809] "ldi b , ( iy +"
    {
        "DIS"   => 2810,
    },
    # [2810] "ldi b , ( iy + DIS"
    {
        ")"     => 2811,
    },
    # [2811] "ldi b , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2812 ],
    },
    # [2812] "ldi b , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x46, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2813] "ldi b , ["
    {
        "hl"    => 2814,
        "ix"    => 2817,
        "iy"    => 2822,
    },
    # [2814] "ldi b , [ hl"
    {
        "]"     => 2815,
    },
    # [2815] "ldi b , [ hl ]"
    {
        ""      => [ \&_parse_end, 2816 ],
    },
    # [2816] "ldi b , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x46, 0x23], $_[0]) }, 0 ],
    },
    # [2817] "ldi b , [ ix"
    {
        "+"     => 2818,
    },
    # [2818] "ldi b , [ ix +"
    {
        "DIS"   => 2819,
    },
    # [2819] "ldi b , [ ix + DIS"
    {
        "]"     => 2820,
    },
    # [2820] "ldi b , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2821 ],
    },
    # [2821] "ldi b , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x46, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2822] "ldi b , [ iy"
    {
        "+"     => 2823,
    },
    # [2823] "ldi b , [ iy +"
    {
        "DIS"   => 2824,
    },
    # [2824] "ldi b , [ iy + DIS"
    {
        "]"     => 2825,
    },
    # [2825] "ldi b , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2826 ],
    },
    # [2826] "ldi b , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x46, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2827] "ldi bc"
    {
        ","     => 2828,
    },
    # [2828] "ldi bc ,"
    {
        "("     => 2829,
        "["     => 2843,
    },
    # [2829] "ldi bc , ("
    {
        "hl"    => 2830,
        "ix"    => 2833,
        "iy"    => 2838,
    },
    # [2830] "ldi bc , ( hl"
    {
        ")"     => 2831,
    },
    # [2831] "ldi bc , ( hl )"
    {
        ""      => [ \&_parse_end, 2832 ],
    },
    # [2832] "ldi bc , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x23, 0x46, 0x23], $_[0]) }, 0 ],
    },
    # [2833] "ldi bc , ( ix"
    {
        "+"     => 2834,
    },
    # [2834] "ldi bc , ( ix +"
    {
        "DIS"   => 2835,
    },
    # [2835] "ldi bc , ( ix + DIS"
    {
        ")"     => 2836,
    },
    # [2836] "ldi bc , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2837 ],
    },
    # [2837] "ldi bc , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x23, 0xdd, 0x46, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2838] "ldi bc , ( iy"
    {
        "+"     => 2839,
    },
    # [2839] "ldi bc , ( iy +"
    {
        "DIS"   => 2840,
    },
    # [2840] "ldi bc , ( iy + DIS"
    {
        ")"     => 2841,
    },
    # [2841] "ldi bc , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2842 ],
    },
    # [2842] "ldi bc , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x23, 0xfd, 0x46, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2843] "ldi bc , ["
    {
        "hl"    => 2844,
        "ix"    => 2847,
        "iy"    => 2852,
    },
    # [2844] "ldi bc , [ hl"
    {
        "]"     => 2845,
    },
    # [2845] "ldi bc , [ hl ]"
    {
        ""      => [ \&_parse_end, 2846 ],
    },
    # [2846] "ldi bc , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x23, 0x46, 0x23], $_[0]) }, 0 ],
    },
    # [2847] "ldi bc , [ ix"
    {
        "+"     => 2848,
    },
    # [2848] "ldi bc , [ ix +"
    {
        "DIS"   => 2849,
    },
    # [2849] "ldi bc , [ ix + DIS"
    {
        "]"     => 2850,
    },
    # [2850] "ldi bc , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2851 ],
    },
    # [2851] "ldi bc , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x23, 0xdd, 0x46, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2852] "ldi bc , [ iy"
    {
        "+"     => 2853,
    },
    # [2853] "ldi bc , [ iy +"
    {
        "DIS"   => 2854,
    },
    # [2854] "ldi bc , [ iy + DIS"
    {
        "]"     => 2855,
    },
    # [2855] "ldi bc , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2856 ],
    },
    # [2856] "ldi bc , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x23, 0xfd, 0x46, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2857] "ldi c"
    {
        ","     => 2858,
    },
    # [2858] "ldi c ,"
    {
        "("     => 2859,
        "["     => 2873,
    },
    # [2859] "ldi c , ("
    {
        "hl"    => 2860,
        "ix"    => 2863,
        "iy"    => 2868,
    },
    # [2860] "ldi c , ( hl"
    {
        ")"     => 2861,
    },
    # [2861] "ldi c , ( hl )"
    {
        ""      => [ \&_parse_end, 2862 ],
    },
    # [2862] "ldi c , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x23], $_[0]) }, 0 ],
    },
    # [2863] "ldi c , ( ix"
    {
        "+"     => 2864,
    },
    # [2864] "ldi c , ( ix +"
    {
        "DIS"   => 2865,
    },
    # [2865] "ldi c , ( ix + DIS"
    {
        ")"     => 2866,
    },
    # [2866] "ldi c , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2867 ],
    },
    # [2867] "ldi c , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2868] "ldi c , ( iy"
    {
        "+"     => 2869,
    },
    # [2869] "ldi c , ( iy +"
    {
        "DIS"   => 2870,
    },
    # [2870] "ldi c , ( iy + DIS"
    {
        ")"     => 2871,
    },
    # [2871] "ldi c , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2872 ],
    },
    # [2872] "ldi c , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2873] "ldi c , ["
    {
        "hl"    => 2874,
        "ix"    => 2877,
        "iy"    => 2882,
    },
    # [2874] "ldi c , [ hl"
    {
        "]"     => 2875,
    },
    # [2875] "ldi c , [ hl ]"
    {
        ""      => [ \&_parse_end, 2876 ],
    },
    # [2876] "ldi c , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x4e, 0x23], $_[0]) }, 0 ],
    },
    # [2877] "ldi c , [ ix"
    {
        "+"     => 2878,
    },
    # [2878] "ldi c , [ ix +"
    {
        "DIS"   => 2879,
    },
    # [2879] "ldi c , [ ix + DIS"
    {
        "]"     => 2880,
    },
    # [2880] "ldi c , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2881 ],
    },
    # [2881] "ldi c , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x4e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2882] "ldi c , [ iy"
    {
        "+"     => 2883,
    },
    # [2883] "ldi c , [ iy +"
    {
        "DIS"   => 2884,
    },
    # [2884] "ldi c , [ iy + DIS"
    {
        "]"     => 2885,
    },
    # [2885] "ldi c , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2886 ],
    },
    # [2886] "ldi c , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x4e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2887] "ldi d"
    {
        ","     => 2888,
    },
    # [2888] "ldi d ,"
    {
        "("     => 2889,
        "["     => 2903,
    },
    # [2889] "ldi d , ("
    {
        "hl"    => 2890,
        "ix"    => 2893,
        "iy"    => 2898,
    },
    # [2890] "ldi d , ( hl"
    {
        ")"     => 2891,
    },
    # [2891] "ldi d , ( hl )"
    {
        ""      => [ \&_parse_end, 2892 ],
    },
    # [2892] "ldi d , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x56, 0x23], $_[0]) }, 0 ],
    },
    # [2893] "ldi d , ( ix"
    {
        "+"     => 2894,
    },
    # [2894] "ldi d , ( ix +"
    {
        "DIS"   => 2895,
    },
    # [2895] "ldi d , ( ix + DIS"
    {
        ")"     => 2896,
    },
    # [2896] "ldi d , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2897 ],
    },
    # [2897] "ldi d , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x56, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2898] "ldi d , ( iy"
    {
        "+"     => 2899,
    },
    # [2899] "ldi d , ( iy +"
    {
        "DIS"   => 2900,
    },
    # [2900] "ldi d , ( iy + DIS"
    {
        ")"     => 2901,
    },
    # [2901] "ldi d , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2902 ],
    },
    # [2902] "ldi d , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x56, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2903] "ldi d , ["
    {
        "hl"    => 2904,
        "ix"    => 2907,
        "iy"    => 2912,
    },
    # [2904] "ldi d , [ hl"
    {
        "]"     => 2905,
    },
    # [2905] "ldi d , [ hl ]"
    {
        ""      => [ \&_parse_end, 2906 ],
    },
    # [2906] "ldi d , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x56, 0x23], $_[0]) }, 0 ],
    },
    # [2907] "ldi d , [ ix"
    {
        "+"     => 2908,
    },
    # [2908] "ldi d , [ ix +"
    {
        "DIS"   => 2909,
    },
    # [2909] "ldi d , [ ix + DIS"
    {
        "]"     => 2910,
    },
    # [2910] "ldi d , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2911 ],
    },
    # [2911] "ldi d , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x56, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2912] "ldi d , [ iy"
    {
        "+"     => 2913,
    },
    # [2913] "ldi d , [ iy +"
    {
        "DIS"   => 2914,
    },
    # [2914] "ldi d , [ iy + DIS"
    {
        "]"     => 2915,
    },
    # [2915] "ldi d , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2916 ],
    },
    # [2916] "ldi d , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x56, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2917] "ldi de"
    {
        ","     => 2918,
    },
    # [2918] "ldi de ,"
    {
        "("     => 2919,
        "["     => 2933,
    },
    # [2919] "ldi de , ("
    {
        "hl"    => 2920,
        "ix"    => 2923,
        "iy"    => 2928,
    },
    # [2920] "ldi de , ( hl"
    {
        ")"     => 2921,
    },
    # [2921] "ldi de , ( hl )"
    {
        ""      => [ \&_parse_end, 2922 ],
    },
    # [2922] "ldi de , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x23, 0x56, 0x23], $_[0]) }, 0 ],
    },
    # [2923] "ldi de , ( ix"
    {
        "+"     => 2924,
    },
    # [2924] "ldi de , ( ix +"
    {
        "DIS"   => 2925,
    },
    # [2925] "ldi de , ( ix + DIS"
    {
        ")"     => 2926,
    },
    # [2926] "ldi de , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2927 ],
    },
    # [2927] "ldi de , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x23, 0xdd, 0x56, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2928] "ldi de , ( iy"
    {
        "+"     => 2929,
    },
    # [2929] "ldi de , ( iy +"
    {
        "DIS"   => 2930,
    },
    # [2930] "ldi de , ( iy + DIS"
    {
        ")"     => 2931,
    },
    # [2931] "ldi de , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2932 ],
    },
    # [2932] "ldi de , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x23, 0xfd, 0x56, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2933] "ldi de , ["
    {
        "hl"    => 2934,
        "ix"    => 2937,
        "iy"    => 2942,
    },
    # [2934] "ldi de , [ hl"
    {
        "]"     => 2935,
    },
    # [2935] "ldi de , [ hl ]"
    {
        ""      => [ \&_parse_end, 2936 ],
    },
    # [2936] "ldi de , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x23, 0x56, 0x23], $_[0]) }, 0 ],
    },
    # [2937] "ldi de , [ ix"
    {
        "+"     => 2938,
    },
    # [2938] "ldi de , [ ix +"
    {
        "DIS"   => 2939,
    },
    # [2939] "ldi de , [ ix + DIS"
    {
        "]"     => 2940,
    },
    # [2940] "ldi de , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2941 ],
    },
    # [2941] "ldi de , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x23, 0xdd, 0x56, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2942] "ldi de , [ iy"
    {
        "+"     => 2943,
    },
    # [2943] "ldi de , [ iy +"
    {
        "DIS"   => 2944,
    },
    # [2944] "ldi de , [ iy + DIS"
    {
        "]"     => 2945,
    },
    # [2945] "ldi de , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2946 ],
    },
    # [2946] "ldi de , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x23, 0xfd, 0x56, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2947] "ldi e"
    {
        ","     => 2948,
    },
    # [2948] "ldi e ,"
    {
        "("     => 2949,
        "["     => 2963,
    },
    # [2949] "ldi e , ("
    {
        "hl"    => 2950,
        "ix"    => 2953,
        "iy"    => 2958,
    },
    # [2950] "ldi e , ( hl"
    {
        ")"     => 2951,
    },
    # [2951] "ldi e , ( hl )"
    {
        ""      => [ \&_parse_end, 2952 ],
    },
    # [2952] "ldi e , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x23], $_[0]) }, 0 ],
    },
    # [2953] "ldi e , ( ix"
    {
        "+"     => 2954,
    },
    # [2954] "ldi e , ( ix +"
    {
        "DIS"   => 2955,
    },
    # [2955] "ldi e , ( ix + DIS"
    {
        ")"     => 2956,
    },
    # [2956] "ldi e , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2957 ],
    },
    # [2957] "ldi e , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2958] "ldi e , ( iy"
    {
        "+"     => 2959,
    },
    # [2959] "ldi e , ( iy +"
    {
        "DIS"   => 2960,
    },
    # [2960] "ldi e , ( iy + DIS"
    {
        ")"     => 2961,
    },
    # [2961] "ldi e , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2962 ],
    },
    # [2962] "ldi e , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2963] "ldi e , ["
    {
        "hl"    => 2964,
        "ix"    => 2967,
        "iy"    => 2972,
    },
    # [2964] "ldi e , [ hl"
    {
        "]"     => 2965,
    },
    # [2965] "ldi e , [ hl ]"
    {
        ""      => [ \&_parse_end, 2966 ],
    },
    # [2966] "ldi e , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x5e, 0x23], $_[0]) }, 0 ],
    },
    # [2967] "ldi e , [ ix"
    {
        "+"     => 2968,
    },
    # [2968] "ldi e , [ ix +"
    {
        "DIS"   => 2969,
    },
    # [2969] "ldi e , [ ix + DIS"
    {
        "]"     => 2970,
    },
    # [2970] "ldi e , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 2971 ],
    },
    # [2971] "ldi e , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x5e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2972] "ldi e , [ iy"
    {
        "+"     => 2973,
    },
    # [2973] "ldi e , [ iy +"
    {
        "DIS"   => 2974,
    },
    # [2974] "ldi e , [ iy + DIS"
    {
        "]"     => 2975,
    },
    # [2975] "ldi e , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 2976 ],
    },
    # [2976] "ldi e , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x5e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2977] "ldi h"
    {
        ","     => 2978,
    },
    # [2978] "ldi h ,"
    {
        "("     => 2979,
        "["     => 2993,
    },
    # [2979] "ldi h , ("
    {
        "hl"    => 2980,
        "ix"    => 2983,
        "iy"    => 2988,
    },
    # [2980] "ldi h , ( hl"
    {
        ")"     => 2981,
    },
    # [2981] "ldi h , ( hl )"
    {
        ""      => [ \&_parse_end, 2982 ],
    },
    # [2982] "ldi h , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x66, 0x23], $_[0]) }, 0 ],
    },
    # [2983] "ldi h , ( ix"
    {
        "+"     => 2984,
    },
    # [2984] "ldi h , ( ix +"
    {
        "DIS"   => 2985,
    },
    # [2985] "ldi h , ( ix + DIS"
    {
        ")"     => 2986,
    },
    # [2986] "ldi h , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 2987 ],
    },
    # [2987] "ldi h , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x66, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [2988] "ldi h , ( iy"
    {
        "+"     => 2989,
    },
    # [2989] "ldi h , ( iy +"
    {
        "DIS"   => 2990,
    },
    # [2990] "ldi h , ( iy + DIS"
    {
        ")"     => 2991,
    },
    # [2991] "ldi h , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 2992 ],
    },
    # [2992] "ldi h , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x66, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [2993] "ldi h , ["
    {
        "hl"    => 2994,
        "ix"    => 2997,
        "iy"    => 3002,
    },
    # [2994] "ldi h , [ hl"
    {
        "]"     => 2995,
    },
    # [2995] "ldi h , [ hl ]"
    {
        ""      => [ \&_parse_end, 2996 ],
    },
    # [2996] "ldi h , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x66, 0x23], $_[0]) }, 0 ],
    },
    # [2997] "ldi h , [ ix"
    {
        "+"     => 2998,
    },
    # [2998] "ldi h , [ ix +"
    {
        "DIS"   => 2999,
    },
    # [2999] "ldi h , [ ix + DIS"
    {
        "]"     => 3000,
    },
    # [3000] "ldi h , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3001 ],
    },
    # [3001] "ldi h , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x66, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [3002] "ldi h , [ iy"
    {
        "+"     => 3003,
    },
    # [3003] "ldi h , [ iy +"
    {
        "DIS"   => 3004,
    },
    # [3004] "ldi h , [ iy + DIS"
    {
        "]"     => 3005,
    },
    # [3005] "ldi h , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3006 ],
    },
    # [3006] "ldi h , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x66, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [3007] "ldi hl"
    {
        ","     => 3008,
    },
    # [3008] "ldi hl ,"
    {
        "("     => 3009,
        "["     => 3020,
    },
    # [3009] "ldi hl , ("
    {
        "ix"    => 3010,
        "iy"    => 3015,
    },
    # [3010] "ldi hl , ( ix"
    {
        "+"     => 3011,
    },
    # [3011] "ldi hl , ( ix +"
    {
        "DIS"   => 3012,
    },
    # [3012] "ldi hl , ( ix + DIS"
    {
        ")"     => 3013,
    },
    # [3013] "ldi hl , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3014 ],
    },
    # [3014] "ldi hl , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x23, 0xdd, 0x66, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [3015] "ldi hl , ( iy"
    {
        "+"     => 3016,
    },
    # [3016] "ldi hl , ( iy +"
    {
        "DIS"   => 3017,
    },
    # [3017] "ldi hl , ( iy + DIS"
    {
        ")"     => 3018,
    },
    # [3018] "ldi hl , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3019 ],
    },
    # [3019] "ldi hl , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x23, 0xfd, 0x66, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [3020] "ldi hl , ["
    {
        "ix"    => 3021,
        "iy"    => 3026,
    },
    # [3021] "ldi hl , [ ix"
    {
        "+"     => 3022,
    },
    # [3022] "ldi hl , [ ix +"
    {
        "DIS"   => 3023,
    },
    # [3023] "ldi hl , [ ix + DIS"
    {
        "]"     => 3024,
    },
    # [3024] "ldi hl , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3025 ],
    },
    # [3025] "ldi hl , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x23, 0xdd, 0x66, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [3026] "ldi hl , [ iy"
    {
        "+"     => 3027,
    },
    # [3027] "ldi hl , [ iy +"
    {
        "DIS"   => 3028,
    },
    # [3028] "ldi hl , [ iy + DIS"
    {
        "]"     => 3029,
    },
    # [3029] "ldi hl , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3030 ],
    },
    # [3030] "ldi hl , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x23, 0xfd, 0x66, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [3031] "ldi l"
    {
        ","     => 3032,
    },
    # [3032] "ldi l ,"
    {
        "("     => 3033,
        "["     => 3047,
    },
    # [3033] "ldi l , ("
    {
        "hl"    => 3034,
        "ix"    => 3037,
        "iy"    => 3042,
    },
    # [3034] "ldi l , ( hl"
    {
        ")"     => 3035,
    },
    # [3035] "ldi l , ( hl )"
    {
        ""      => [ \&_parse_end, 3036 ],
    },
    # [3036] "ldi l , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x6e, 0x23], $_[0]) }, 0 ],
    },
    # [3037] "ldi l , ( ix"
    {
        "+"     => 3038,
    },
    # [3038] "ldi l , ( ix +"
    {
        "DIS"   => 3039,
    },
    # [3039] "ldi l , ( ix + DIS"
    {
        ")"     => 3040,
    },
    # [3040] "ldi l , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3041 ],
    },
    # [3041] "ldi l , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [3042] "ldi l , ( iy"
    {
        "+"     => 3043,
    },
    # [3043] "ldi l , ( iy +"
    {
        "DIS"   => 3044,
    },
    # [3044] "ldi l , ( iy + DIS"
    {
        ")"     => 3045,
    },
    # [3045] "ldi l , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3046 ],
    },
    # [3046] "ldi l , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [3047] "ldi l , ["
    {
        "hl"    => 3048,
        "ix"    => 3051,
        "iy"    => 3056,
    },
    # [3048] "ldi l , [ hl"
    {
        "]"     => 3049,
    },
    # [3049] "ldi l , [ hl ]"
    {
        ""      => [ \&_parse_end, 3050 ],
    },
    # [3050] "ldi l , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x6e, 0x23], $_[0]) }, 0 ],
    },
    # [3051] "ldi l , [ ix"
    {
        "+"     => 3052,
    },
    # [3052] "ldi l , [ ix +"
    {
        "DIS"   => 3053,
    },
    # [3053] "ldi l , [ ix + DIS"
    {
        "]"     => 3054,
    },
    # [3054] "ldi l , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3055 ],
    },
    # [3055] "ldi l , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x6e, "DIS", 0xdd, 0x23], $_[0]) }, 0 ],
    },
    # [3056] "ldi l , [ iy"
    {
        "+"     => 3057,
    },
    # [3057] "ldi l , [ iy +"
    {
        "DIS"   => 3058,
    },
    # [3058] "ldi l , [ iy + DIS"
    {
        "]"     => 3059,
    },
    # [3059] "ldi l , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3060 ],
    },
    # [3060] "ldi l , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x6e, "DIS", 0xfd, 0x23], $_[0]) }, 0 ],
    },
    # [3061] "ldir"
    {
        ""      => [ \&_parse_end, 3062 ],
    },
    # [3062] "ldir &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xb0], $_[0]) }, 0 ],
    },
    # [3063] "neg"
    {
        ""      => [ \&_parse_end, 3064 ],
    },
    # [3064] "neg &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x44], $_[0]) }, 0 ],
    },
    # [3065] "nop"
    {
        ""      => [ \&_parse_end, 3066 ],
    },
    # [3066] "nop &_parse_end"
    {
        ""      => [ sub { return ([0x00], $_[0]) }, 0 ],
    },
    # [3067] "or"
    {
        "("     => 3068,
        "N"     => 3082,
        "["     => 3084,
        "a"     => 3098,
        "b"     => 3100,
        "c"     => 3102,
        "d"     => 3104,
        "e"     => 3106,
        "h"     => 3108,
        "hx"    => 3110,
        "hy"    => 3112,
        "ixh"   => 3114,
        "ixl"   => 3116,
        "iyh"   => 3118,
        "iyl"   => 3120,
        "l"     => 3122,
        "lx"    => 3124,
        "ly"    => 3126,
        "xh"    => 3128,
        "xl"    => 3130,
        "yh"    => 3132,
        "yl"    => 3134,
    },
    # [3068] "or ("
    {
        "hl"    => 3069,
        "ix"    => 3072,
        "iy"    => 3077,
    },
    # [3069] "or ( hl"
    {
        ")"     => 3070,
    },
    # [3070] "or ( hl )"
    {
        ""      => [ \&_parse_end, 3071 ],
    },
    # [3071] "or ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xb6], $_[0]) }, 0 ],
    },
    # [3072] "or ( ix"
    {
        "+"     => 3073,
    },
    # [3073] "or ( ix +"
    {
        "DIS"   => 3074,
    },
    # [3074] "or ( ix + DIS"
    {
        ")"     => 3075,
    },
    # [3075] "or ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3076 ],
    },
    # [3076] "or ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb6, "DIS"], $_[0]) }, 0 ],
    },
    # [3077] "or ( iy"
    {
        "+"     => 3078,
    },
    # [3078] "or ( iy +"
    {
        "DIS"   => 3079,
    },
    # [3079] "or ( iy + DIS"
    {
        ")"     => 3080,
    },
    # [3080] "or ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3081 ],
    },
    # [3081] "or ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb6, "DIS"], $_[0]) }, 0 ],
    },
    # [3082] "or N"
    {
        ""      => [ \&_parse_end, 3083 ],
    },
    # [3083] "or N &_parse_end"
    {
        ""      => [ sub { return ([0xf6, "N"], $_[0]) }, 0 ],
    },
    # [3084] "or ["
    {
        "hl"    => 3085,
        "ix"    => 3088,
        "iy"    => 3093,
    },
    # [3085] "or [ hl"
    {
        "]"     => 3086,
    },
    # [3086] "or [ hl ]"
    {
        ""      => [ \&_parse_end, 3087 ],
    },
    # [3087] "or [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xb6], $_[0]) }, 0 ],
    },
    # [3088] "or [ ix"
    {
        "+"     => 3089,
    },
    # [3089] "or [ ix +"
    {
        "DIS"   => 3090,
    },
    # [3090] "or [ ix + DIS"
    {
        "]"     => 3091,
    },
    # [3091] "or [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3092 ],
    },
    # [3092] "or [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb6, "DIS"], $_[0]) }, 0 ],
    },
    # [3093] "or [ iy"
    {
        "+"     => 3094,
    },
    # [3094] "or [ iy +"
    {
        "DIS"   => 3095,
    },
    # [3095] "or [ iy + DIS"
    {
        "]"     => 3096,
    },
    # [3096] "or [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3097 ],
    },
    # [3097] "or [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb6, "DIS"], $_[0]) }, 0 ],
    },
    # [3098] "or a"
    {
        ""      => [ \&_parse_end, 3099 ],
    },
    # [3099] "or a &_parse_end"
    {
        ""      => [ sub { return ([0xb7], $_[0]) }, 0 ],
    },
    # [3100] "or b"
    {
        ""      => [ \&_parse_end, 3101 ],
    },
    # [3101] "or b &_parse_end"
    {
        ""      => [ sub { return ([0xb0], $_[0]) }, 0 ],
    },
    # [3102] "or c"
    {
        ""      => [ \&_parse_end, 3103 ],
    },
    # [3103] "or c &_parse_end"
    {
        ""      => [ sub { return ([0xb1], $_[0]) }, 0 ],
    },
    # [3104] "or d"
    {
        ""      => [ \&_parse_end, 3105 ],
    },
    # [3105] "or d &_parse_end"
    {
        ""      => [ sub { return ([0xb2], $_[0]) }, 0 ],
    },
    # [3106] "or e"
    {
        ""      => [ \&_parse_end, 3107 ],
    },
    # [3107] "or e &_parse_end"
    {
        ""      => [ sub { return ([0xb3], $_[0]) }, 0 ],
    },
    # [3108] "or h"
    {
        ""      => [ \&_parse_end, 3109 ],
    },
    # [3109] "or h &_parse_end"
    {
        ""      => [ sub { return ([0xb4], $_[0]) }, 0 ],
    },
    # [3110] "or hx"
    {
        ""      => [ \&_parse_end, 3111 ],
    },
    # [3111] "or hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb4], $_[0]) }, 0 ],
    },
    # [3112] "or hy"
    {
        ""      => [ \&_parse_end, 3113 ],
    },
    # [3113] "or hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb4], $_[0]) }, 0 ],
    },
    # [3114] "or ixh"
    {
        ""      => [ \&_parse_end, 3115 ],
    },
    # [3115] "or ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb4], $_[0]) }, 0 ],
    },
    # [3116] "or ixl"
    {
        ""      => [ \&_parse_end, 3117 ],
    },
    # [3117] "or ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb5], $_[0]) }, 0 ],
    },
    # [3118] "or iyh"
    {
        ""      => [ \&_parse_end, 3119 ],
    },
    # [3119] "or iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb4], $_[0]) }, 0 ],
    },
    # [3120] "or iyl"
    {
        ""      => [ \&_parse_end, 3121 ],
    },
    # [3121] "or iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb5], $_[0]) }, 0 ],
    },
    # [3122] "or l"
    {
        ""      => [ \&_parse_end, 3123 ],
    },
    # [3123] "or l &_parse_end"
    {
        ""      => [ sub { return ([0xb5], $_[0]) }, 0 ],
    },
    # [3124] "or lx"
    {
        ""      => [ \&_parse_end, 3125 ],
    },
    # [3125] "or lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb5], $_[0]) }, 0 ],
    },
    # [3126] "or ly"
    {
        ""      => [ \&_parse_end, 3127 ],
    },
    # [3127] "or ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb5], $_[0]) }, 0 ],
    },
    # [3128] "or xh"
    {
        ""      => [ \&_parse_end, 3129 ],
    },
    # [3129] "or xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb4], $_[0]) }, 0 ],
    },
    # [3130] "or xl"
    {
        ""      => [ \&_parse_end, 3131 ],
    },
    # [3131] "or xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xb5], $_[0]) }, 0 ],
    },
    # [3132] "or yh"
    {
        ""      => [ \&_parse_end, 3133 ],
    },
    # [3133] "or yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb4], $_[0]) }, 0 ],
    },
    # [3134] "or yl"
    {
        ""      => [ \&_parse_end, 3135 ],
    },
    # [3135] "or yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xb5], $_[0]) }, 0 ],
    },
    # [3136] "otdr"
    {
        ""      => [ \&_parse_end, 3137 ],
    },
    # [3137] "otdr &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xbb], $_[0]) }, 0 ],
    },
    # [3138] "otir"
    {
        ""      => [ \&_parse_end, 3139 ],
    },
    # [3139] "otir &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xb3], $_[0]) }, 0 ],
    },
    # [3140] "out"
    {
        "("     => 3141,
        "["     => 3166,
    },
    # [3141] "out ("
    {
        "N"     => 3142,
        "c"     => 3147,
    },
    # [3142] "out ( N"
    {
        ")"     => 3143,
    },
    # [3143] "out ( N )"
    {
        ","     => 3144,
    },
    # [3144] "out ( N ) ,"
    {
        "a"     => 3145,
    },
    # [3145] "out ( N ) , a"
    {
        ""      => [ \&_parse_end, 3146 ],
    },
    # [3146] "out ( N ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xd3, "N"], $_[0]) }, 0 ],
    },
    # [3147] "out ( c"
    {
        ")"     => 3148,
    },
    # [3148] "out ( c )"
    {
        ","     => 3149,
    },
    # [3149] "out ( c ) ,"
    {
        0       => 3150,
        "a"     => 3152,
        "b"     => 3154,
        "c"     => 3156,
        "d"     => 3158,
        "e"     => 3160,
        "h"     => 3162,
        "l"     => 3164,
    },
    # [3150] "out ( c ) , 0"
    {
        ""      => [ \&_parse_end, 3151 ],
    },
    # [3151] "out ( c ) , 0 &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x71], $_[0]) }, 0 ],
    },
    # [3152] "out ( c ) , a"
    {
        ""      => [ \&_parse_end, 3153 ],
    },
    # [3153] "out ( c ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x79], $_[0]) }, 0 ],
    },
    # [3154] "out ( c ) , b"
    {
        ""      => [ \&_parse_end, 3155 ],
    },
    # [3155] "out ( c ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x41], $_[0]) }, 0 ],
    },
    # [3156] "out ( c ) , c"
    {
        ""      => [ \&_parse_end, 3157 ],
    },
    # [3157] "out ( c ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x49], $_[0]) }, 0 ],
    },
    # [3158] "out ( c ) , d"
    {
        ""      => [ \&_parse_end, 3159 ],
    },
    # [3159] "out ( c ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x51], $_[0]) }, 0 ],
    },
    # [3160] "out ( c ) , e"
    {
        ""      => [ \&_parse_end, 3161 ],
    },
    # [3161] "out ( c ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x59], $_[0]) }, 0 ],
    },
    # [3162] "out ( c ) , h"
    {
        ""      => [ \&_parse_end, 3163 ],
    },
    # [3163] "out ( c ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x61], $_[0]) }, 0 ],
    },
    # [3164] "out ( c ) , l"
    {
        ""      => [ \&_parse_end, 3165 ],
    },
    # [3165] "out ( c ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x69], $_[0]) }, 0 ],
    },
    # [3166] "out ["
    {
        "N"     => 3167,
        "c"     => 3172,
    },
    # [3167] "out [ N"
    {
        "]"     => 3168,
    },
    # [3168] "out [ N ]"
    {
        ","     => 3169,
    },
    # [3169] "out [ N ] ,"
    {
        "a"     => 3170,
    },
    # [3170] "out [ N ] , a"
    {
        ""      => [ \&_parse_end, 3171 ],
    },
    # [3171] "out [ N ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xd3, "N"], $_[0]) }, 0 ],
    },
    # [3172] "out [ c"
    {
        "]"     => 3173,
    },
    # [3173] "out [ c ]"
    {
        ","     => 3174,
    },
    # [3174] "out [ c ] ,"
    {
        0       => 3175,
        "a"     => 3177,
        "b"     => 3179,
        "c"     => 3181,
        "d"     => 3183,
        "e"     => 3185,
        "h"     => 3187,
        "l"     => 3189,
    },
    # [3175] "out [ c ] , 0"
    {
        ""      => [ \&_parse_end, 3176 ],
    },
    # [3176] "out [ c ] , 0 &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x71], $_[0]) }, 0 ],
    },
    # [3177] "out [ c ] , a"
    {
        ""      => [ \&_parse_end, 3178 ],
    },
    # [3178] "out [ c ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x79], $_[0]) }, 0 ],
    },
    # [3179] "out [ c ] , b"
    {
        ""      => [ \&_parse_end, 3180 ],
    },
    # [3180] "out [ c ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x41], $_[0]) }, 0 ],
    },
    # [3181] "out [ c ] , c"
    {
        ""      => [ \&_parse_end, 3182 ],
    },
    # [3182] "out [ c ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x49], $_[0]) }, 0 ],
    },
    # [3183] "out [ c ] , d"
    {
        ""      => [ \&_parse_end, 3184 ],
    },
    # [3184] "out [ c ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x51], $_[0]) }, 0 ],
    },
    # [3185] "out [ c ] , e"
    {
        ""      => [ \&_parse_end, 3186 ],
    },
    # [3186] "out [ c ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x59], $_[0]) }, 0 ],
    },
    # [3187] "out [ c ] , h"
    {
        ""      => [ \&_parse_end, 3188 ],
    },
    # [3188] "out [ c ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x61], $_[0]) }, 0 ],
    },
    # [3189] "out [ c ] , l"
    {
        ""      => [ \&_parse_end, 3190 ],
    },
    # [3190] "out [ c ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x69], $_[0]) }, 0 ],
    },
    # [3191] "outd"
    {
        ""      => [ \&_parse_end, 3192 ],
    },
    # [3192] "outd &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xab], $_[0]) }, 0 ],
    },
    # [3193] "outi"
    {
        ""      => [ \&_parse_end, 3194 ],
    },
    # [3194] "outi &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0xa3], $_[0]) }, 0 ],
    },
    # [3195] "pop"
    {
        "af"    => 3196,
        "bc"    => 3198,
        "de"    => 3200,
        "hl"    => 3202,
        "ix"    => 3204,
        "iy"    => 3206,
    },
    # [3196] "pop af"
    {
        ""      => [ \&_parse_end, 3197 ],
    },
    # [3197] "pop af &_parse_end"
    {
        ""      => [ sub { return ([0xf1], $_[0]) }, 0 ],
    },
    # [3198] "pop bc"
    {
        ""      => [ \&_parse_end, 3199 ],
    },
    # [3199] "pop bc &_parse_end"
    {
        ""      => [ sub { return ([0xc1], $_[0]) }, 0 ],
    },
    # [3200] "pop de"
    {
        ""      => [ \&_parse_end, 3201 ],
    },
    # [3201] "pop de &_parse_end"
    {
        ""      => [ sub { return ([0xd1], $_[0]) }, 0 ],
    },
    # [3202] "pop hl"
    {
        ""      => [ \&_parse_end, 3203 ],
    },
    # [3203] "pop hl &_parse_end"
    {
        ""      => [ sub { return ([0xe1], $_[0]) }, 0 ],
    },
    # [3204] "pop ix"
    {
        ""      => [ \&_parse_end, 3205 ],
    },
    # [3205] "pop ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe1], $_[0]) }, 0 ],
    },
    # [3206] "pop iy"
    {
        ""      => [ \&_parse_end, 3207 ],
    },
    # [3207] "pop iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe1], $_[0]) }, 0 ],
    },
    # [3208] "push"
    {
        "af"    => 3209,
        "bc"    => 3211,
        "de"    => 3213,
        "hl"    => 3215,
        "ix"    => 3217,
        "iy"    => 3219,
    },
    # [3209] "push af"
    {
        ""      => [ \&_parse_end, 3210 ],
    },
    # [3210] "push af &_parse_end"
    {
        ""      => [ sub { return ([0xf5], $_[0]) }, 0 ],
    },
    # [3211] "push bc"
    {
        ""      => [ \&_parse_end, 3212 ],
    },
    # [3212] "push bc &_parse_end"
    {
        ""      => [ sub { return ([0xc5], $_[0]) }, 0 ],
    },
    # [3213] "push de"
    {
        ""      => [ \&_parse_end, 3214 ],
    },
    # [3214] "push de &_parse_end"
    {
        ""      => [ sub { return ([0xd5], $_[0]) }, 0 ],
    },
    # [3215] "push hl"
    {
        ""      => [ \&_parse_end, 3216 ],
    },
    # [3216] "push hl &_parse_end"
    {
        ""      => [ sub { return ([0xe5], $_[0]) }, 0 ],
    },
    # [3217] "push ix"
    {
        ""      => [ \&_parse_end, 3218 ],
    },
    # [3218] "push ix &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xe5], $_[0]) }, 0 ],
    },
    # [3219] "push iy"
    {
        ""      => [ \&_parse_end, 3220 ],
    },
    # [3220] "push iy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xe5], $_[0]) }, 0 ],
    },
    # [3221] "res"
    {
        0       => 3222,
        1       => 3326,
        2       => 3430,
        3       => 3534,
        4       => 3638,
        5       => 3742,
        6       => 3846,
        7       => 3950,
    },
    # [3222] "res 0"
    {
        ","     => 3223,
    },
    # [3223] "res 0 ,"
    {
        "("     => 3224,
        "["     => 3268,
        "a"     => 3312,
        "b"     => 3314,
        "c"     => 3316,
        "d"     => 3318,
        "e"     => 3320,
        "h"     => 3322,
        "l"     => 3324,
    },
    # [3224] "res 0 , ("
    {
        "hl"    => 3225,
        "ix"    => 3228,
        "iy"    => 3248,
    },
    # [3225] "res 0 , ( hl"
    {
        ")"     => 3226,
    },
    # [3226] "res 0 , ( hl )"
    {
        ""      => [ \&_parse_end, 3227 ],
    },
    # [3227] "res 0 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x86], $_[0]) }, 0 ],
    },
    # [3228] "res 0 , ( ix"
    {
        "+"     => 3229,
    },
    # [3229] "res 0 , ( ix +"
    {
        "DIS"   => 3230,
    },
    # [3230] "res 0 , ( ix + DIS"
    {
        ")"     => 3231,
    },
    # [3231] "res 0 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3232 ],
        ","     => 3233,
    },
    # [3232] "res 0 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x86], $_[0]) }, 0 ],
    },
    # [3233] "res 0 , ( ix + DIS ) ,"
    {
        "a"     => 3234,
        "b"     => 3236,
        "c"     => 3238,
        "d"     => 3240,
        "e"     => 3242,
        "h"     => 3244,
        "l"     => 3246,
    },
    # [3234] "res 0 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3235 ],
    },
    # [3235] "res 0 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x87], $_[0]) }, 0 ],
    },
    # [3236] "res 0 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3237 ],
    },
    # [3237] "res 0 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x80], $_[0]) }, 0 ],
    },
    # [3238] "res 0 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3239 ],
    },
    # [3239] "res 0 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x81], $_[0]) }, 0 ],
    },
    # [3240] "res 0 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3241 ],
    },
    # [3241] "res 0 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x82], $_[0]) }, 0 ],
    },
    # [3242] "res 0 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3243 ],
    },
    # [3243] "res 0 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x83], $_[0]) }, 0 ],
    },
    # [3244] "res 0 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3245 ],
    },
    # [3245] "res 0 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x84], $_[0]) }, 0 ],
    },
    # [3246] "res 0 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3247 ],
    },
    # [3247] "res 0 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x85], $_[0]) }, 0 ],
    },
    # [3248] "res 0 , ( iy"
    {
        "+"     => 3249,
    },
    # [3249] "res 0 , ( iy +"
    {
        "DIS"   => 3250,
    },
    # [3250] "res 0 , ( iy + DIS"
    {
        ")"     => 3251,
    },
    # [3251] "res 0 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3252 ],
        ","     => 3253,
    },
    # [3252] "res 0 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x86], $_[0]) }, 0 ],
    },
    # [3253] "res 0 , ( iy + DIS ) ,"
    {
        "a"     => 3254,
        "b"     => 3256,
        "c"     => 3258,
        "d"     => 3260,
        "e"     => 3262,
        "h"     => 3264,
        "l"     => 3266,
    },
    # [3254] "res 0 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3255 ],
    },
    # [3255] "res 0 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x87], $_[0]) }, 0 ],
    },
    # [3256] "res 0 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3257 ],
    },
    # [3257] "res 0 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x80], $_[0]) }, 0 ],
    },
    # [3258] "res 0 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3259 ],
    },
    # [3259] "res 0 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x81], $_[0]) }, 0 ],
    },
    # [3260] "res 0 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3261 ],
    },
    # [3261] "res 0 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x82], $_[0]) }, 0 ],
    },
    # [3262] "res 0 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3263 ],
    },
    # [3263] "res 0 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x83], $_[0]) }, 0 ],
    },
    # [3264] "res 0 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3265 ],
    },
    # [3265] "res 0 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x84], $_[0]) }, 0 ],
    },
    # [3266] "res 0 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3267 ],
    },
    # [3267] "res 0 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x85], $_[0]) }, 0 ],
    },
    # [3268] "res 0 , ["
    {
        "hl"    => 3269,
        "ix"    => 3272,
        "iy"    => 3292,
    },
    # [3269] "res 0 , [ hl"
    {
        "]"     => 3270,
    },
    # [3270] "res 0 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3271 ],
    },
    # [3271] "res 0 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x86], $_[0]) }, 0 ],
    },
    # [3272] "res 0 , [ ix"
    {
        "+"     => 3273,
    },
    # [3273] "res 0 , [ ix +"
    {
        "DIS"   => 3274,
    },
    # [3274] "res 0 , [ ix + DIS"
    {
        "]"     => 3275,
    },
    # [3275] "res 0 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3276 ],
        ","     => 3277,
    },
    # [3276] "res 0 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x86], $_[0]) }, 0 ],
    },
    # [3277] "res 0 , [ ix + DIS ] ,"
    {
        "a"     => 3278,
        "b"     => 3280,
        "c"     => 3282,
        "d"     => 3284,
        "e"     => 3286,
        "h"     => 3288,
        "l"     => 3290,
    },
    # [3278] "res 0 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3279 ],
    },
    # [3279] "res 0 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x87], $_[0]) }, 0 ],
    },
    # [3280] "res 0 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3281 ],
    },
    # [3281] "res 0 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x80], $_[0]) }, 0 ],
    },
    # [3282] "res 0 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3283 ],
    },
    # [3283] "res 0 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x81], $_[0]) }, 0 ],
    },
    # [3284] "res 0 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3285 ],
    },
    # [3285] "res 0 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x82], $_[0]) }, 0 ],
    },
    # [3286] "res 0 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3287 ],
    },
    # [3287] "res 0 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x83], $_[0]) }, 0 ],
    },
    # [3288] "res 0 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3289 ],
    },
    # [3289] "res 0 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x84], $_[0]) }, 0 ],
    },
    # [3290] "res 0 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3291 ],
    },
    # [3291] "res 0 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x85], $_[0]) }, 0 ],
    },
    # [3292] "res 0 , [ iy"
    {
        "+"     => 3293,
    },
    # [3293] "res 0 , [ iy +"
    {
        "DIS"   => 3294,
    },
    # [3294] "res 0 , [ iy + DIS"
    {
        "]"     => 3295,
    },
    # [3295] "res 0 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3296 ],
        ","     => 3297,
    },
    # [3296] "res 0 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x86], $_[0]) }, 0 ],
    },
    # [3297] "res 0 , [ iy + DIS ] ,"
    {
        "a"     => 3298,
        "b"     => 3300,
        "c"     => 3302,
        "d"     => 3304,
        "e"     => 3306,
        "h"     => 3308,
        "l"     => 3310,
    },
    # [3298] "res 0 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3299 ],
    },
    # [3299] "res 0 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x87], $_[0]) }, 0 ],
    },
    # [3300] "res 0 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3301 ],
    },
    # [3301] "res 0 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x80], $_[0]) }, 0 ],
    },
    # [3302] "res 0 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3303 ],
    },
    # [3303] "res 0 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x81], $_[0]) }, 0 ],
    },
    # [3304] "res 0 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3305 ],
    },
    # [3305] "res 0 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x82], $_[0]) }, 0 ],
    },
    # [3306] "res 0 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3307 ],
    },
    # [3307] "res 0 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x83], $_[0]) }, 0 ],
    },
    # [3308] "res 0 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3309 ],
    },
    # [3309] "res 0 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x84], $_[0]) }, 0 ],
    },
    # [3310] "res 0 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3311 ],
    },
    # [3311] "res 0 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x85], $_[0]) }, 0 ],
    },
    # [3312] "res 0 , a"
    {
        ""      => [ \&_parse_end, 3313 ],
    },
    # [3313] "res 0 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x87], $_[0]) }, 0 ],
    },
    # [3314] "res 0 , b"
    {
        ""      => [ \&_parse_end, 3315 ],
    },
    # [3315] "res 0 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x80], $_[0]) }, 0 ],
    },
    # [3316] "res 0 , c"
    {
        ""      => [ \&_parse_end, 3317 ],
    },
    # [3317] "res 0 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x81], $_[0]) }, 0 ],
    },
    # [3318] "res 0 , d"
    {
        ""      => [ \&_parse_end, 3319 ],
    },
    # [3319] "res 0 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x82], $_[0]) }, 0 ],
    },
    # [3320] "res 0 , e"
    {
        ""      => [ \&_parse_end, 3321 ],
    },
    # [3321] "res 0 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x83], $_[0]) }, 0 ],
    },
    # [3322] "res 0 , h"
    {
        ""      => [ \&_parse_end, 3323 ],
    },
    # [3323] "res 0 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x84], $_[0]) }, 0 ],
    },
    # [3324] "res 0 , l"
    {
        ""      => [ \&_parse_end, 3325 ],
    },
    # [3325] "res 0 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x85], $_[0]) }, 0 ],
    },
    # [3326] "res 1"
    {
        ","     => 3327,
    },
    # [3327] "res 1 ,"
    {
        "("     => 3328,
        "["     => 3372,
        "a"     => 3416,
        "b"     => 3418,
        "c"     => 3420,
        "d"     => 3422,
        "e"     => 3424,
        "h"     => 3426,
        "l"     => 3428,
    },
    # [3328] "res 1 , ("
    {
        "hl"    => 3329,
        "ix"    => 3332,
        "iy"    => 3352,
    },
    # [3329] "res 1 , ( hl"
    {
        ")"     => 3330,
    },
    # [3330] "res 1 , ( hl )"
    {
        ""      => [ \&_parse_end, 3331 ],
    },
    # [3331] "res 1 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8e], $_[0]) }, 0 ],
    },
    # [3332] "res 1 , ( ix"
    {
        "+"     => 3333,
    },
    # [3333] "res 1 , ( ix +"
    {
        "DIS"   => 3334,
    },
    # [3334] "res 1 , ( ix + DIS"
    {
        ")"     => 3335,
    },
    # [3335] "res 1 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3336 ],
        ","     => 3337,
    },
    # [3336] "res 1 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8e], $_[0]) }, 0 ],
    },
    # [3337] "res 1 , ( ix + DIS ) ,"
    {
        "a"     => 3338,
        "b"     => 3340,
        "c"     => 3342,
        "d"     => 3344,
        "e"     => 3346,
        "h"     => 3348,
        "l"     => 3350,
    },
    # [3338] "res 1 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3339 ],
    },
    # [3339] "res 1 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8f], $_[0]) }, 0 ],
    },
    # [3340] "res 1 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3341 ],
    },
    # [3341] "res 1 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x88], $_[0]) }, 0 ],
    },
    # [3342] "res 1 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3343 ],
    },
    # [3343] "res 1 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x89], $_[0]) }, 0 ],
    },
    # [3344] "res 1 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3345 ],
    },
    # [3345] "res 1 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8a], $_[0]) }, 0 ],
    },
    # [3346] "res 1 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3347 ],
    },
    # [3347] "res 1 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8b], $_[0]) }, 0 ],
    },
    # [3348] "res 1 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3349 ],
    },
    # [3349] "res 1 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8c], $_[0]) }, 0 ],
    },
    # [3350] "res 1 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3351 ],
    },
    # [3351] "res 1 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8d], $_[0]) }, 0 ],
    },
    # [3352] "res 1 , ( iy"
    {
        "+"     => 3353,
    },
    # [3353] "res 1 , ( iy +"
    {
        "DIS"   => 3354,
    },
    # [3354] "res 1 , ( iy + DIS"
    {
        ")"     => 3355,
    },
    # [3355] "res 1 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3356 ],
        ","     => 3357,
    },
    # [3356] "res 1 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8e], $_[0]) }, 0 ],
    },
    # [3357] "res 1 , ( iy + DIS ) ,"
    {
        "a"     => 3358,
        "b"     => 3360,
        "c"     => 3362,
        "d"     => 3364,
        "e"     => 3366,
        "h"     => 3368,
        "l"     => 3370,
    },
    # [3358] "res 1 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3359 ],
    },
    # [3359] "res 1 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8f], $_[0]) }, 0 ],
    },
    # [3360] "res 1 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3361 ],
    },
    # [3361] "res 1 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x88], $_[0]) }, 0 ],
    },
    # [3362] "res 1 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3363 ],
    },
    # [3363] "res 1 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x89], $_[0]) }, 0 ],
    },
    # [3364] "res 1 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3365 ],
    },
    # [3365] "res 1 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8a], $_[0]) }, 0 ],
    },
    # [3366] "res 1 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3367 ],
    },
    # [3367] "res 1 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8b], $_[0]) }, 0 ],
    },
    # [3368] "res 1 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3369 ],
    },
    # [3369] "res 1 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8c], $_[0]) }, 0 ],
    },
    # [3370] "res 1 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3371 ],
    },
    # [3371] "res 1 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8d], $_[0]) }, 0 ],
    },
    # [3372] "res 1 , ["
    {
        "hl"    => 3373,
        "ix"    => 3376,
        "iy"    => 3396,
    },
    # [3373] "res 1 , [ hl"
    {
        "]"     => 3374,
    },
    # [3374] "res 1 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3375 ],
    },
    # [3375] "res 1 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8e], $_[0]) }, 0 ],
    },
    # [3376] "res 1 , [ ix"
    {
        "+"     => 3377,
    },
    # [3377] "res 1 , [ ix +"
    {
        "DIS"   => 3378,
    },
    # [3378] "res 1 , [ ix + DIS"
    {
        "]"     => 3379,
    },
    # [3379] "res 1 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3380 ],
        ","     => 3381,
    },
    # [3380] "res 1 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8e], $_[0]) }, 0 ],
    },
    # [3381] "res 1 , [ ix + DIS ] ,"
    {
        "a"     => 3382,
        "b"     => 3384,
        "c"     => 3386,
        "d"     => 3388,
        "e"     => 3390,
        "h"     => 3392,
        "l"     => 3394,
    },
    # [3382] "res 1 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3383 ],
    },
    # [3383] "res 1 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8f], $_[0]) }, 0 ],
    },
    # [3384] "res 1 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3385 ],
    },
    # [3385] "res 1 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x88], $_[0]) }, 0 ],
    },
    # [3386] "res 1 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3387 ],
    },
    # [3387] "res 1 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x89], $_[0]) }, 0 ],
    },
    # [3388] "res 1 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3389 ],
    },
    # [3389] "res 1 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8a], $_[0]) }, 0 ],
    },
    # [3390] "res 1 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3391 ],
    },
    # [3391] "res 1 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8b], $_[0]) }, 0 ],
    },
    # [3392] "res 1 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3393 ],
    },
    # [3393] "res 1 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8c], $_[0]) }, 0 ],
    },
    # [3394] "res 1 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3395 ],
    },
    # [3395] "res 1 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x8d], $_[0]) }, 0 ],
    },
    # [3396] "res 1 , [ iy"
    {
        "+"     => 3397,
    },
    # [3397] "res 1 , [ iy +"
    {
        "DIS"   => 3398,
    },
    # [3398] "res 1 , [ iy + DIS"
    {
        "]"     => 3399,
    },
    # [3399] "res 1 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3400 ],
        ","     => 3401,
    },
    # [3400] "res 1 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8e], $_[0]) }, 0 ],
    },
    # [3401] "res 1 , [ iy + DIS ] ,"
    {
        "a"     => 3402,
        "b"     => 3404,
        "c"     => 3406,
        "d"     => 3408,
        "e"     => 3410,
        "h"     => 3412,
        "l"     => 3414,
    },
    # [3402] "res 1 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3403 ],
    },
    # [3403] "res 1 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8f], $_[0]) }, 0 ],
    },
    # [3404] "res 1 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3405 ],
    },
    # [3405] "res 1 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x88], $_[0]) }, 0 ],
    },
    # [3406] "res 1 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3407 ],
    },
    # [3407] "res 1 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x89], $_[0]) }, 0 ],
    },
    # [3408] "res 1 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3409 ],
    },
    # [3409] "res 1 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8a], $_[0]) }, 0 ],
    },
    # [3410] "res 1 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3411 ],
    },
    # [3411] "res 1 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8b], $_[0]) }, 0 ],
    },
    # [3412] "res 1 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3413 ],
    },
    # [3413] "res 1 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8c], $_[0]) }, 0 ],
    },
    # [3414] "res 1 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3415 ],
    },
    # [3415] "res 1 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x8d], $_[0]) }, 0 ],
    },
    # [3416] "res 1 , a"
    {
        ""      => [ \&_parse_end, 3417 ],
    },
    # [3417] "res 1 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8f], $_[0]) }, 0 ],
    },
    # [3418] "res 1 , b"
    {
        ""      => [ \&_parse_end, 3419 ],
    },
    # [3419] "res 1 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x88], $_[0]) }, 0 ],
    },
    # [3420] "res 1 , c"
    {
        ""      => [ \&_parse_end, 3421 ],
    },
    # [3421] "res 1 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x89], $_[0]) }, 0 ],
    },
    # [3422] "res 1 , d"
    {
        ""      => [ \&_parse_end, 3423 ],
    },
    # [3423] "res 1 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8a], $_[0]) }, 0 ],
    },
    # [3424] "res 1 , e"
    {
        ""      => [ \&_parse_end, 3425 ],
    },
    # [3425] "res 1 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8b], $_[0]) }, 0 ],
    },
    # [3426] "res 1 , h"
    {
        ""      => [ \&_parse_end, 3427 ],
    },
    # [3427] "res 1 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8c], $_[0]) }, 0 ],
    },
    # [3428] "res 1 , l"
    {
        ""      => [ \&_parse_end, 3429 ],
    },
    # [3429] "res 1 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x8d], $_[0]) }, 0 ],
    },
    # [3430] "res 2"
    {
        ","     => 3431,
    },
    # [3431] "res 2 ,"
    {
        "("     => 3432,
        "["     => 3476,
        "a"     => 3520,
        "b"     => 3522,
        "c"     => 3524,
        "d"     => 3526,
        "e"     => 3528,
        "h"     => 3530,
        "l"     => 3532,
    },
    # [3432] "res 2 , ("
    {
        "hl"    => 3433,
        "ix"    => 3436,
        "iy"    => 3456,
    },
    # [3433] "res 2 , ( hl"
    {
        ")"     => 3434,
    },
    # [3434] "res 2 , ( hl )"
    {
        ""      => [ \&_parse_end, 3435 ],
    },
    # [3435] "res 2 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x96], $_[0]) }, 0 ],
    },
    # [3436] "res 2 , ( ix"
    {
        "+"     => 3437,
    },
    # [3437] "res 2 , ( ix +"
    {
        "DIS"   => 3438,
    },
    # [3438] "res 2 , ( ix + DIS"
    {
        ")"     => 3439,
    },
    # [3439] "res 2 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3440 ],
        ","     => 3441,
    },
    # [3440] "res 2 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x96], $_[0]) }, 0 ],
    },
    # [3441] "res 2 , ( ix + DIS ) ,"
    {
        "a"     => 3442,
        "b"     => 3444,
        "c"     => 3446,
        "d"     => 3448,
        "e"     => 3450,
        "h"     => 3452,
        "l"     => 3454,
    },
    # [3442] "res 2 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3443 ],
    },
    # [3443] "res 2 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x97], $_[0]) }, 0 ],
    },
    # [3444] "res 2 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3445 ],
    },
    # [3445] "res 2 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x90], $_[0]) }, 0 ],
    },
    # [3446] "res 2 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3447 ],
    },
    # [3447] "res 2 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x91], $_[0]) }, 0 ],
    },
    # [3448] "res 2 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3449 ],
    },
    # [3449] "res 2 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x92], $_[0]) }, 0 ],
    },
    # [3450] "res 2 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3451 ],
    },
    # [3451] "res 2 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x93], $_[0]) }, 0 ],
    },
    # [3452] "res 2 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3453 ],
    },
    # [3453] "res 2 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x94], $_[0]) }, 0 ],
    },
    # [3454] "res 2 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3455 ],
    },
    # [3455] "res 2 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x95], $_[0]) }, 0 ],
    },
    # [3456] "res 2 , ( iy"
    {
        "+"     => 3457,
    },
    # [3457] "res 2 , ( iy +"
    {
        "DIS"   => 3458,
    },
    # [3458] "res 2 , ( iy + DIS"
    {
        ")"     => 3459,
    },
    # [3459] "res 2 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3460 ],
        ","     => 3461,
    },
    # [3460] "res 2 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x96], $_[0]) }, 0 ],
    },
    # [3461] "res 2 , ( iy + DIS ) ,"
    {
        "a"     => 3462,
        "b"     => 3464,
        "c"     => 3466,
        "d"     => 3468,
        "e"     => 3470,
        "h"     => 3472,
        "l"     => 3474,
    },
    # [3462] "res 2 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3463 ],
    },
    # [3463] "res 2 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x97], $_[0]) }, 0 ],
    },
    # [3464] "res 2 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3465 ],
    },
    # [3465] "res 2 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x90], $_[0]) }, 0 ],
    },
    # [3466] "res 2 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3467 ],
    },
    # [3467] "res 2 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x91], $_[0]) }, 0 ],
    },
    # [3468] "res 2 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3469 ],
    },
    # [3469] "res 2 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x92], $_[0]) }, 0 ],
    },
    # [3470] "res 2 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3471 ],
    },
    # [3471] "res 2 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x93], $_[0]) }, 0 ],
    },
    # [3472] "res 2 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3473 ],
    },
    # [3473] "res 2 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x94], $_[0]) }, 0 ],
    },
    # [3474] "res 2 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3475 ],
    },
    # [3475] "res 2 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x95], $_[0]) }, 0 ],
    },
    # [3476] "res 2 , ["
    {
        "hl"    => 3477,
        "ix"    => 3480,
        "iy"    => 3500,
    },
    # [3477] "res 2 , [ hl"
    {
        "]"     => 3478,
    },
    # [3478] "res 2 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3479 ],
    },
    # [3479] "res 2 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x96], $_[0]) }, 0 ],
    },
    # [3480] "res 2 , [ ix"
    {
        "+"     => 3481,
    },
    # [3481] "res 2 , [ ix +"
    {
        "DIS"   => 3482,
    },
    # [3482] "res 2 , [ ix + DIS"
    {
        "]"     => 3483,
    },
    # [3483] "res 2 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3484 ],
        ","     => 3485,
    },
    # [3484] "res 2 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x96], $_[0]) }, 0 ],
    },
    # [3485] "res 2 , [ ix + DIS ] ,"
    {
        "a"     => 3486,
        "b"     => 3488,
        "c"     => 3490,
        "d"     => 3492,
        "e"     => 3494,
        "h"     => 3496,
        "l"     => 3498,
    },
    # [3486] "res 2 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3487 ],
    },
    # [3487] "res 2 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x97], $_[0]) }, 0 ],
    },
    # [3488] "res 2 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3489 ],
    },
    # [3489] "res 2 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x90], $_[0]) }, 0 ],
    },
    # [3490] "res 2 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3491 ],
    },
    # [3491] "res 2 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x91], $_[0]) }, 0 ],
    },
    # [3492] "res 2 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3493 ],
    },
    # [3493] "res 2 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x92], $_[0]) }, 0 ],
    },
    # [3494] "res 2 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3495 ],
    },
    # [3495] "res 2 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x93], $_[0]) }, 0 ],
    },
    # [3496] "res 2 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3497 ],
    },
    # [3497] "res 2 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x94], $_[0]) }, 0 ],
    },
    # [3498] "res 2 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3499 ],
    },
    # [3499] "res 2 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x95], $_[0]) }, 0 ],
    },
    # [3500] "res 2 , [ iy"
    {
        "+"     => 3501,
    },
    # [3501] "res 2 , [ iy +"
    {
        "DIS"   => 3502,
    },
    # [3502] "res 2 , [ iy + DIS"
    {
        "]"     => 3503,
    },
    # [3503] "res 2 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3504 ],
        ","     => 3505,
    },
    # [3504] "res 2 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x96], $_[0]) }, 0 ],
    },
    # [3505] "res 2 , [ iy + DIS ] ,"
    {
        "a"     => 3506,
        "b"     => 3508,
        "c"     => 3510,
        "d"     => 3512,
        "e"     => 3514,
        "h"     => 3516,
        "l"     => 3518,
    },
    # [3506] "res 2 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3507 ],
    },
    # [3507] "res 2 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x97], $_[0]) }, 0 ],
    },
    # [3508] "res 2 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3509 ],
    },
    # [3509] "res 2 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x90], $_[0]) }, 0 ],
    },
    # [3510] "res 2 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3511 ],
    },
    # [3511] "res 2 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x91], $_[0]) }, 0 ],
    },
    # [3512] "res 2 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3513 ],
    },
    # [3513] "res 2 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x92], $_[0]) }, 0 ],
    },
    # [3514] "res 2 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3515 ],
    },
    # [3515] "res 2 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x93], $_[0]) }, 0 ],
    },
    # [3516] "res 2 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3517 ],
    },
    # [3517] "res 2 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x94], $_[0]) }, 0 ],
    },
    # [3518] "res 2 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3519 ],
    },
    # [3519] "res 2 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x95], $_[0]) }, 0 ],
    },
    # [3520] "res 2 , a"
    {
        ""      => [ \&_parse_end, 3521 ],
    },
    # [3521] "res 2 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x97], $_[0]) }, 0 ],
    },
    # [3522] "res 2 , b"
    {
        ""      => [ \&_parse_end, 3523 ],
    },
    # [3523] "res 2 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x90], $_[0]) }, 0 ],
    },
    # [3524] "res 2 , c"
    {
        ""      => [ \&_parse_end, 3525 ],
    },
    # [3525] "res 2 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x91], $_[0]) }, 0 ],
    },
    # [3526] "res 2 , d"
    {
        ""      => [ \&_parse_end, 3527 ],
    },
    # [3527] "res 2 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x92], $_[0]) }, 0 ],
    },
    # [3528] "res 2 , e"
    {
        ""      => [ \&_parse_end, 3529 ],
    },
    # [3529] "res 2 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x93], $_[0]) }, 0 ],
    },
    # [3530] "res 2 , h"
    {
        ""      => [ \&_parse_end, 3531 ],
    },
    # [3531] "res 2 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x94], $_[0]) }, 0 ],
    },
    # [3532] "res 2 , l"
    {
        ""      => [ \&_parse_end, 3533 ],
    },
    # [3533] "res 2 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x95], $_[0]) }, 0 ],
    },
    # [3534] "res 3"
    {
        ","     => 3535,
    },
    # [3535] "res 3 ,"
    {
        "("     => 3536,
        "["     => 3580,
        "a"     => 3624,
        "b"     => 3626,
        "c"     => 3628,
        "d"     => 3630,
        "e"     => 3632,
        "h"     => 3634,
        "l"     => 3636,
    },
    # [3536] "res 3 , ("
    {
        "hl"    => 3537,
        "ix"    => 3540,
        "iy"    => 3560,
    },
    # [3537] "res 3 , ( hl"
    {
        ")"     => 3538,
    },
    # [3538] "res 3 , ( hl )"
    {
        ""      => [ \&_parse_end, 3539 ],
    },
    # [3539] "res 3 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9e], $_[0]) }, 0 ],
    },
    # [3540] "res 3 , ( ix"
    {
        "+"     => 3541,
    },
    # [3541] "res 3 , ( ix +"
    {
        "DIS"   => 3542,
    },
    # [3542] "res 3 , ( ix + DIS"
    {
        ")"     => 3543,
    },
    # [3543] "res 3 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3544 ],
        ","     => 3545,
    },
    # [3544] "res 3 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9e], $_[0]) }, 0 ],
    },
    # [3545] "res 3 , ( ix + DIS ) ,"
    {
        "a"     => 3546,
        "b"     => 3548,
        "c"     => 3550,
        "d"     => 3552,
        "e"     => 3554,
        "h"     => 3556,
        "l"     => 3558,
    },
    # [3546] "res 3 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3547 ],
    },
    # [3547] "res 3 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9f], $_[0]) }, 0 ],
    },
    # [3548] "res 3 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3549 ],
    },
    # [3549] "res 3 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x98], $_[0]) }, 0 ],
    },
    # [3550] "res 3 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3551 ],
    },
    # [3551] "res 3 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x99], $_[0]) }, 0 ],
    },
    # [3552] "res 3 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3553 ],
    },
    # [3553] "res 3 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9a], $_[0]) }, 0 ],
    },
    # [3554] "res 3 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3555 ],
    },
    # [3555] "res 3 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9b], $_[0]) }, 0 ],
    },
    # [3556] "res 3 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3557 ],
    },
    # [3557] "res 3 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9c], $_[0]) }, 0 ],
    },
    # [3558] "res 3 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3559 ],
    },
    # [3559] "res 3 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9d], $_[0]) }, 0 ],
    },
    # [3560] "res 3 , ( iy"
    {
        "+"     => 3561,
    },
    # [3561] "res 3 , ( iy +"
    {
        "DIS"   => 3562,
    },
    # [3562] "res 3 , ( iy + DIS"
    {
        ")"     => 3563,
    },
    # [3563] "res 3 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3564 ],
        ","     => 3565,
    },
    # [3564] "res 3 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9e], $_[0]) }, 0 ],
    },
    # [3565] "res 3 , ( iy + DIS ) ,"
    {
        "a"     => 3566,
        "b"     => 3568,
        "c"     => 3570,
        "d"     => 3572,
        "e"     => 3574,
        "h"     => 3576,
        "l"     => 3578,
    },
    # [3566] "res 3 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3567 ],
    },
    # [3567] "res 3 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9f], $_[0]) }, 0 ],
    },
    # [3568] "res 3 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3569 ],
    },
    # [3569] "res 3 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x98], $_[0]) }, 0 ],
    },
    # [3570] "res 3 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3571 ],
    },
    # [3571] "res 3 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x99], $_[0]) }, 0 ],
    },
    # [3572] "res 3 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3573 ],
    },
    # [3573] "res 3 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9a], $_[0]) }, 0 ],
    },
    # [3574] "res 3 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3575 ],
    },
    # [3575] "res 3 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9b], $_[0]) }, 0 ],
    },
    # [3576] "res 3 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3577 ],
    },
    # [3577] "res 3 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9c], $_[0]) }, 0 ],
    },
    # [3578] "res 3 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3579 ],
    },
    # [3579] "res 3 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9d], $_[0]) }, 0 ],
    },
    # [3580] "res 3 , ["
    {
        "hl"    => 3581,
        "ix"    => 3584,
        "iy"    => 3604,
    },
    # [3581] "res 3 , [ hl"
    {
        "]"     => 3582,
    },
    # [3582] "res 3 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3583 ],
    },
    # [3583] "res 3 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9e], $_[0]) }, 0 ],
    },
    # [3584] "res 3 , [ ix"
    {
        "+"     => 3585,
    },
    # [3585] "res 3 , [ ix +"
    {
        "DIS"   => 3586,
    },
    # [3586] "res 3 , [ ix + DIS"
    {
        "]"     => 3587,
    },
    # [3587] "res 3 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3588 ],
        ","     => 3589,
    },
    # [3588] "res 3 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9e], $_[0]) }, 0 ],
    },
    # [3589] "res 3 , [ ix + DIS ] ,"
    {
        "a"     => 3590,
        "b"     => 3592,
        "c"     => 3594,
        "d"     => 3596,
        "e"     => 3598,
        "h"     => 3600,
        "l"     => 3602,
    },
    # [3590] "res 3 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3591 ],
    },
    # [3591] "res 3 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9f], $_[0]) }, 0 ],
    },
    # [3592] "res 3 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3593 ],
    },
    # [3593] "res 3 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x98], $_[0]) }, 0 ],
    },
    # [3594] "res 3 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3595 ],
    },
    # [3595] "res 3 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x99], $_[0]) }, 0 ],
    },
    # [3596] "res 3 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3597 ],
    },
    # [3597] "res 3 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9a], $_[0]) }, 0 ],
    },
    # [3598] "res 3 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3599 ],
    },
    # [3599] "res 3 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9b], $_[0]) }, 0 ],
    },
    # [3600] "res 3 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3601 ],
    },
    # [3601] "res 3 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9c], $_[0]) }, 0 ],
    },
    # [3602] "res 3 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3603 ],
    },
    # [3603] "res 3 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x9d], $_[0]) }, 0 ],
    },
    # [3604] "res 3 , [ iy"
    {
        "+"     => 3605,
    },
    # [3605] "res 3 , [ iy +"
    {
        "DIS"   => 3606,
    },
    # [3606] "res 3 , [ iy + DIS"
    {
        "]"     => 3607,
    },
    # [3607] "res 3 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3608 ],
        ","     => 3609,
    },
    # [3608] "res 3 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9e], $_[0]) }, 0 ],
    },
    # [3609] "res 3 , [ iy + DIS ] ,"
    {
        "a"     => 3610,
        "b"     => 3612,
        "c"     => 3614,
        "d"     => 3616,
        "e"     => 3618,
        "h"     => 3620,
        "l"     => 3622,
    },
    # [3610] "res 3 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3611 ],
    },
    # [3611] "res 3 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9f], $_[0]) }, 0 ],
    },
    # [3612] "res 3 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3613 ],
    },
    # [3613] "res 3 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x98], $_[0]) }, 0 ],
    },
    # [3614] "res 3 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3615 ],
    },
    # [3615] "res 3 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x99], $_[0]) }, 0 ],
    },
    # [3616] "res 3 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3617 ],
    },
    # [3617] "res 3 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9a], $_[0]) }, 0 ],
    },
    # [3618] "res 3 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3619 ],
    },
    # [3619] "res 3 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9b], $_[0]) }, 0 ],
    },
    # [3620] "res 3 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3621 ],
    },
    # [3621] "res 3 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9c], $_[0]) }, 0 ],
    },
    # [3622] "res 3 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3623 ],
    },
    # [3623] "res 3 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x9d], $_[0]) }, 0 ],
    },
    # [3624] "res 3 , a"
    {
        ""      => [ \&_parse_end, 3625 ],
    },
    # [3625] "res 3 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9f], $_[0]) }, 0 ],
    },
    # [3626] "res 3 , b"
    {
        ""      => [ \&_parse_end, 3627 ],
    },
    # [3627] "res 3 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x98], $_[0]) }, 0 ],
    },
    # [3628] "res 3 , c"
    {
        ""      => [ \&_parse_end, 3629 ],
    },
    # [3629] "res 3 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x99], $_[0]) }, 0 ],
    },
    # [3630] "res 3 , d"
    {
        ""      => [ \&_parse_end, 3631 ],
    },
    # [3631] "res 3 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9a], $_[0]) }, 0 ],
    },
    # [3632] "res 3 , e"
    {
        ""      => [ \&_parse_end, 3633 ],
    },
    # [3633] "res 3 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9b], $_[0]) }, 0 ],
    },
    # [3634] "res 3 , h"
    {
        ""      => [ \&_parse_end, 3635 ],
    },
    # [3635] "res 3 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9c], $_[0]) }, 0 ],
    },
    # [3636] "res 3 , l"
    {
        ""      => [ \&_parse_end, 3637 ],
    },
    # [3637] "res 3 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x9d], $_[0]) }, 0 ],
    },
    # [3638] "res 4"
    {
        ","     => 3639,
    },
    # [3639] "res 4 ,"
    {
        "("     => 3640,
        "["     => 3684,
        "a"     => 3728,
        "b"     => 3730,
        "c"     => 3732,
        "d"     => 3734,
        "e"     => 3736,
        "h"     => 3738,
        "l"     => 3740,
    },
    # [3640] "res 4 , ("
    {
        "hl"    => 3641,
        "ix"    => 3644,
        "iy"    => 3664,
    },
    # [3641] "res 4 , ( hl"
    {
        ")"     => 3642,
    },
    # [3642] "res 4 , ( hl )"
    {
        ""      => [ \&_parse_end, 3643 ],
    },
    # [3643] "res 4 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa6], $_[0]) }, 0 ],
    },
    # [3644] "res 4 , ( ix"
    {
        "+"     => 3645,
    },
    # [3645] "res 4 , ( ix +"
    {
        "DIS"   => 3646,
    },
    # [3646] "res 4 , ( ix + DIS"
    {
        ")"     => 3647,
    },
    # [3647] "res 4 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3648 ],
        ","     => 3649,
    },
    # [3648] "res 4 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa6], $_[0]) }, 0 ],
    },
    # [3649] "res 4 , ( ix + DIS ) ,"
    {
        "a"     => 3650,
        "b"     => 3652,
        "c"     => 3654,
        "d"     => 3656,
        "e"     => 3658,
        "h"     => 3660,
        "l"     => 3662,
    },
    # [3650] "res 4 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3651 ],
    },
    # [3651] "res 4 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa7], $_[0]) }, 0 ],
    },
    # [3652] "res 4 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3653 ],
    },
    # [3653] "res 4 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa0], $_[0]) }, 0 ],
    },
    # [3654] "res 4 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3655 ],
    },
    # [3655] "res 4 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa1], $_[0]) }, 0 ],
    },
    # [3656] "res 4 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3657 ],
    },
    # [3657] "res 4 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa2], $_[0]) }, 0 ],
    },
    # [3658] "res 4 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3659 ],
    },
    # [3659] "res 4 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa3], $_[0]) }, 0 ],
    },
    # [3660] "res 4 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3661 ],
    },
    # [3661] "res 4 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa4], $_[0]) }, 0 ],
    },
    # [3662] "res 4 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3663 ],
    },
    # [3663] "res 4 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa5], $_[0]) }, 0 ],
    },
    # [3664] "res 4 , ( iy"
    {
        "+"     => 3665,
    },
    # [3665] "res 4 , ( iy +"
    {
        "DIS"   => 3666,
    },
    # [3666] "res 4 , ( iy + DIS"
    {
        ")"     => 3667,
    },
    # [3667] "res 4 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3668 ],
        ","     => 3669,
    },
    # [3668] "res 4 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa6], $_[0]) }, 0 ],
    },
    # [3669] "res 4 , ( iy + DIS ) ,"
    {
        "a"     => 3670,
        "b"     => 3672,
        "c"     => 3674,
        "d"     => 3676,
        "e"     => 3678,
        "h"     => 3680,
        "l"     => 3682,
    },
    # [3670] "res 4 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3671 ],
    },
    # [3671] "res 4 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa7], $_[0]) }, 0 ],
    },
    # [3672] "res 4 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3673 ],
    },
    # [3673] "res 4 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa0], $_[0]) }, 0 ],
    },
    # [3674] "res 4 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3675 ],
    },
    # [3675] "res 4 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa1], $_[0]) }, 0 ],
    },
    # [3676] "res 4 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3677 ],
    },
    # [3677] "res 4 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa2], $_[0]) }, 0 ],
    },
    # [3678] "res 4 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3679 ],
    },
    # [3679] "res 4 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa3], $_[0]) }, 0 ],
    },
    # [3680] "res 4 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3681 ],
    },
    # [3681] "res 4 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa4], $_[0]) }, 0 ],
    },
    # [3682] "res 4 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3683 ],
    },
    # [3683] "res 4 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa5], $_[0]) }, 0 ],
    },
    # [3684] "res 4 , ["
    {
        "hl"    => 3685,
        "ix"    => 3688,
        "iy"    => 3708,
    },
    # [3685] "res 4 , [ hl"
    {
        "]"     => 3686,
    },
    # [3686] "res 4 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3687 ],
    },
    # [3687] "res 4 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa6], $_[0]) }, 0 ],
    },
    # [3688] "res 4 , [ ix"
    {
        "+"     => 3689,
    },
    # [3689] "res 4 , [ ix +"
    {
        "DIS"   => 3690,
    },
    # [3690] "res 4 , [ ix + DIS"
    {
        "]"     => 3691,
    },
    # [3691] "res 4 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3692 ],
        ","     => 3693,
    },
    # [3692] "res 4 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa6], $_[0]) }, 0 ],
    },
    # [3693] "res 4 , [ ix + DIS ] ,"
    {
        "a"     => 3694,
        "b"     => 3696,
        "c"     => 3698,
        "d"     => 3700,
        "e"     => 3702,
        "h"     => 3704,
        "l"     => 3706,
    },
    # [3694] "res 4 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3695 ],
    },
    # [3695] "res 4 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa7], $_[0]) }, 0 ],
    },
    # [3696] "res 4 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3697 ],
    },
    # [3697] "res 4 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa0], $_[0]) }, 0 ],
    },
    # [3698] "res 4 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3699 ],
    },
    # [3699] "res 4 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa1], $_[0]) }, 0 ],
    },
    # [3700] "res 4 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3701 ],
    },
    # [3701] "res 4 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa2], $_[0]) }, 0 ],
    },
    # [3702] "res 4 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3703 ],
    },
    # [3703] "res 4 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa3], $_[0]) }, 0 ],
    },
    # [3704] "res 4 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3705 ],
    },
    # [3705] "res 4 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa4], $_[0]) }, 0 ],
    },
    # [3706] "res 4 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3707 ],
    },
    # [3707] "res 4 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa5], $_[0]) }, 0 ],
    },
    # [3708] "res 4 , [ iy"
    {
        "+"     => 3709,
    },
    # [3709] "res 4 , [ iy +"
    {
        "DIS"   => 3710,
    },
    # [3710] "res 4 , [ iy + DIS"
    {
        "]"     => 3711,
    },
    # [3711] "res 4 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3712 ],
        ","     => 3713,
    },
    # [3712] "res 4 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa6], $_[0]) }, 0 ],
    },
    # [3713] "res 4 , [ iy + DIS ] ,"
    {
        "a"     => 3714,
        "b"     => 3716,
        "c"     => 3718,
        "d"     => 3720,
        "e"     => 3722,
        "h"     => 3724,
        "l"     => 3726,
    },
    # [3714] "res 4 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3715 ],
    },
    # [3715] "res 4 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa7], $_[0]) }, 0 ],
    },
    # [3716] "res 4 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3717 ],
    },
    # [3717] "res 4 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa0], $_[0]) }, 0 ],
    },
    # [3718] "res 4 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3719 ],
    },
    # [3719] "res 4 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa1], $_[0]) }, 0 ],
    },
    # [3720] "res 4 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3721 ],
    },
    # [3721] "res 4 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa2], $_[0]) }, 0 ],
    },
    # [3722] "res 4 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3723 ],
    },
    # [3723] "res 4 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa3], $_[0]) }, 0 ],
    },
    # [3724] "res 4 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3725 ],
    },
    # [3725] "res 4 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa4], $_[0]) }, 0 ],
    },
    # [3726] "res 4 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3727 ],
    },
    # [3727] "res 4 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa5], $_[0]) }, 0 ],
    },
    # [3728] "res 4 , a"
    {
        ""      => [ \&_parse_end, 3729 ],
    },
    # [3729] "res 4 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa7], $_[0]) }, 0 ],
    },
    # [3730] "res 4 , b"
    {
        ""      => [ \&_parse_end, 3731 ],
    },
    # [3731] "res 4 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa0], $_[0]) }, 0 ],
    },
    # [3732] "res 4 , c"
    {
        ""      => [ \&_parse_end, 3733 ],
    },
    # [3733] "res 4 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa1], $_[0]) }, 0 ],
    },
    # [3734] "res 4 , d"
    {
        ""      => [ \&_parse_end, 3735 ],
    },
    # [3735] "res 4 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa2], $_[0]) }, 0 ],
    },
    # [3736] "res 4 , e"
    {
        ""      => [ \&_parse_end, 3737 ],
    },
    # [3737] "res 4 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa3], $_[0]) }, 0 ],
    },
    # [3738] "res 4 , h"
    {
        ""      => [ \&_parse_end, 3739 ],
    },
    # [3739] "res 4 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa4], $_[0]) }, 0 ],
    },
    # [3740] "res 4 , l"
    {
        ""      => [ \&_parse_end, 3741 ],
    },
    # [3741] "res 4 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa5], $_[0]) }, 0 ],
    },
    # [3742] "res 5"
    {
        ","     => 3743,
    },
    # [3743] "res 5 ,"
    {
        "("     => 3744,
        "["     => 3788,
        "a"     => 3832,
        "b"     => 3834,
        "c"     => 3836,
        "d"     => 3838,
        "e"     => 3840,
        "h"     => 3842,
        "l"     => 3844,
    },
    # [3744] "res 5 , ("
    {
        "hl"    => 3745,
        "ix"    => 3748,
        "iy"    => 3768,
    },
    # [3745] "res 5 , ( hl"
    {
        ")"     => 3746,
    },
    # [3746] "res 5 , ( hl )"
    {
        ""      => [ \&_parse_end, 3747 ],
    },
    # [3747] "res 5 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xae], $_[0]) }, 0 ],
    },
    # [3748] "res 5 , ( ix"
    {
        "+"     => 3749,
    },
    # [3749] "res 5 , ( ix +"
    {
        "DIS"   => 3750,
    },
    # [3750] "res 5 , ( ix + DIS"
    {
        ")"     => 3751,
    },
    # [3751] "res 5 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3752 ],
        ","     => 3753,
    },
    # [3752] "res 5 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xae], $_[0]) }, 0 ],
    },
    # [3753] "res 5 , ( ix + DIS ) ,"
    {
        "a"     => 3754,
        "b"     => 3756,
        "c"     => 3758,
        "d"     => 3760,
        "e"     => 3762,
        "h"     => 3764,
        "l"     => 3766,
    },
    # [3754] "res 5 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3755 ],
    },
    # [3755] "res 5 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xaf], $_[0]) }, 0 ],
    },
    # [3756] "res 5 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3757 ],
    },
    # [3757] "res 5 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa8], $_[0]) }, 0 ],
    },
    # [3758] "res 5 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3759 ],
    },
    # [3759] "res 5 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa9], $_[0]) }, 0 ],
    },
    # [3760] "res 5 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3761 ],
    },
    # [3761] "res 5 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xaa], $_[0]) }, 0 ],
    },
    # [3762] "res 5 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3763 ],
    },
    # [3763] "res 5 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xab], $_[0]) }, 0 ],
    },
    # [3764] "res 5 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3765 ],
    },
    # [3765] "res 5 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xac], $_[0]) }, 0 ],
    },
    # [3766] "res 5 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3767 ],
    },
    # [3767] "res 5 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xad], $_[0]) }, 0 ],
    },
    # [3768] "res 5 , ( iy"
    {
        "+"     => 3769,
    },
    # [3769] "res 5 , ( iy +"
    {
        "DIS"   => 3770,
    },
    # [3770] "res 5 , ( iy + DIS"
    {
        ")"     => 3771,
    },
    # [3771] "res 5 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3772 ],
        ","     => 3773,
    },
    # [3772] "res 5 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xae], $_[0]) }, 0 ],
    },
    # [3773] "res 5 , ( iy + DIS ) ,"
    {
        "a"     => 3774,
        "b"     => 3776,
        "c"     => 3778,
        "d"     => 3780,
        "e"     => 3782,
        "h"     => 3784,
        "l"     => 3786,
    },
    # [3774] "res 5 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3775 ],
    },
    # [3775] "res 5 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xaf], $_[0]) }, 0 ],
    },
    # [3776] "res 5 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3777 ],
    },
    # [3777] "res 5 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa8], $_[0]) }, 0 ],
    },
    # [3778] "res 5 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3779 ],
    },
    # [3779] "res 5 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa9], $_[0]) }, 0 ],
    },
    # [3780] "res 5 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3781 ],
    },
    # [3781] "res 5 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xaa], $_[0]) }, 0 ],
    },
    # [3782] "res 5 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3783 ],
    },
    # [3783] "res 5 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xab], $_[0]) }, 0 ],
    },
    # [3784] "res 5 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3785 ],
    },
    # [3785] "res 5 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xac], $_[0]) }, 0 ],
    },
    # [3786] "res 5 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3787 ],
    },
    # [3787] "res 5 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xad], $_[0]) }, 0 ],
    },
    # [3788] "res 5 , ["
    {
        "hl"    => 3789,
        "ix"    => 3792,
        "iy"    => 3812,
    },
    # [3789] "res 5 , [ hl"
    {
        "]"     => 3790,
    },
    # [3790] "res 5 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3791 ],
    },
    # [3791] "res 5 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xae], $_[0]) }, 0 ],
    },
    # [3792] "res 5 , [ ix"
    {
        "+"     => 3793,
    },
    # [3793] "res 5 , [ ix +"
    {
        "DIS"   => 3794,
    },
    # [3794] "res 5 , [ ix + DIS"
    {
        "]"     => 3795,
    },
    # [3795] "res 5 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3796 ],
        ","     => 3797,
    },
    # [3796] "res 5 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xae], $_[0]) }, 0 ],
    },
    # [3797] "res 5 , [ ix + DIS ] ,"
    {
        "a"     => 3798,
        "b"     => 3800,
        "c"     => 3802,
        "d"     => 3804,
        "e"     => 3806,
        "h"     => 3808,
        "l"     => 3810,
    },
    # [3798] "res 5 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3799 ],
    },
    # [3799] "res 5 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xaf], $_[0]) }, 0 ],
    },
    # [3800] "res 5 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3801 ],
    },
    # [3801] "res 5 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa8], $_[0]) }, 0 ],
    },
    # [3802] "res 5 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3803 ],
    },
    # [3803] "res 5 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xa9], $_[0]) }, 0 ],
    },
    # [3804] "res 5 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3805 ],
    },
    # [3805] "res 5 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xaa], $_[0]) }, 0 ],
    },
    # [3806] "res 5 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3807 ],
    },
    # [3807] "res 5 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xab], $_[0]) }, 0 ],
    },
    # [3808] "res 5 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3809 ],
    },
    # [3809] "res 5 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xac], $_[0]) }, 0 ],
    },
    # [3810] "res 5 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3811 ],
    },
    # [3811] "res 5 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xad], $_[0]) }, 0 ],
    },
    # [3812] "res 5 , [ iy"
    {
        "+"     => 3813,
    },
    # [3813] "res 5 , [ iy +"
    {
        "DIS"   => 3814,
    },
    # [3814] "res 5 , [ iy + DIS"
    {
        "]"     => 3815,
    },
    # [3815] "res 5 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3816 ],
        ","     => 3817,
    },
    # [3816] "res 5 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xae], $_[0]) }, 0 ],
    },
    # [3817] "res 5 , [ iy + DIS ] ,"
    {
        "a"     => 3818,
        "b"     => 3820,
        "c"     => 3822,
        "d"     => 3824,
        "e"     => 3826,
        "h"     => 3828,
        "l"     => 3830,
    },
    # [3818] "res 5 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3819 ],
    },
    # [3819] "res 5 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xaf], $_[0]) }, 0 ],
    },
    # [3820] "res 5 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3821 ],
    },
    # [3821] "res 5 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa8], $_[0]) }, 0 ],
    },
    # [3822] "res 5 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3823 ],
    },
    # [3823] "res 5 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xa9], $_[0]) }, 0 ],
    },
    # [3824] "res 5 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3825 ],
    },
    # [3825] "res 5 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xaa], $_[0]) }, 0 ],
    },
    # [3826] "res 5 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3827 ],
    },
    # [3827] "res 5 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xab], $_[0]) }, 0 ],
    },
    # [3828] "res 5 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3829 ],
    },
    # [3829] "res 5 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xac], $_[0]) }, 0 ],
    },
    # [3830] "res 5 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3831 ],
    },
    # [3831] "res 5 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xad], $_[0]) }, 0 ],
    },
    # [3832] "res 5 , a"
    {
        ""      => [ \&_parse_end, 3833 ],
    },
    # [3833] "res 5 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xaf], $_[0]) }, 0 ],
    },
    # [3834] "res 5 , b"
    {
        ""      => [ \&_parse_end, 3835 ],
    },
    # [3835] "res 5 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa8], $_[0]) }, 0 ],
    },
    # [3836] "res 5 , c"
    {
        ""      => [ \&_parse_end, 3837 ],
    },
    # [3837] "res 5 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xa9], $_[0]) }, 0 ],
    },
    # [3838] "res 5 , d"
    {
        ""      => [ \&_parse_end, 3839 ],
    },
    # [3839] "res 5 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xaa], $_[0]) }, 0 ],
    },
    # [3840] "res 5 , e"
    {
        ""      => [ \&_parse_end, 3841 ],
    },
    # [3841] "res 5 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xab], $_[0]) }, 0 ],
    },
    # [3842] "res 5 , h"
    {
        ""      => [ \&_parse_end, 3843 ],
    },
    # [3843] "res 5 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xac], $_[0]) }, 0 ],
    },
    # [3844] "res 5 , l"
    {
        ""      => [ \&_parse_end, 3845 ],
    },
    # [3845] "res 5 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xad], $_[0]) }, 0 ],
    },
    # [3846] "res 6"
    {
        ","     => 3847,
    },
    # [3847] "res 6 ,"
    {
        "("     => 3848,
        "["     => 3892,
        "a"     => 3936,
        "b"     => 3938,
        "c"     => 3940,
        "d"     => 3942,
        "e"     => 3944,
        "h"     => 3946,
        "l"     => 3948,
    },
    # [3848] "res 6 , ("
    {
        "hl"    => 3849,
        "ix"    => 3852,
        "iy"    => 3872,
    },
    # [3849] "res 6 , ( hl"
    {
        ")"     => 3850,
    },
    # [3850] "res 6 , ( hl )"
    {
        ""      => [ \&_parse_end, 3851 ],
    },
    # [3851] "res 6 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb6], $_[0]) }, 0 ],
    },
    # [3852] "res 6 , ( ix"
    {
        "+"     => 3853,
    },
    # [3853] "res 6 , ( ix +"
    {
        "DIS"   => 3854,
    },
    # [3854] "res 6 , ( ix + DIS"
    {
        ")"     => 3855,
    },
    # [3855] "res 6 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3856 ],
        ","     => 3857,
    },
    # [3856] "res 6 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb6], $_[0]) }, 0 ],
    },
    # [3857] "res 6 , ( ix + DIS ) ,"
    {
        "a"     => 3858,
        "b"     => 3860,
        "c"     => 3862,
        "d"     => 3864,
        "e"     => 3866,
        "h"     => 3868,
        "l"     => 3870,
    },
    # [3858] "res 6 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3859 ],
    },
    # [3859] "res 6 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb7], $_[0]) }, 0 ],
    },
    # [3860] "res 6 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3861 ],
    },
    # [3861] "res 6 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb0], $_[0]) }, 0 ],
    },
    # [3862] "res 6 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3863 ],
    },
    # [3863] "res 6 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb1], $_[0]) }, 0 ],
    },
    # [3864] "res 6 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3865 ],
    },
    # [3865] "res 6 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb2], $_[0]) }, 0 ],
    },
    # [3866] "res 6 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3867 ],
    },
    # [3867] "res 6 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb3], $_[0]) }, 0 ],
    },
    # [3868] "res 6 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3869 ],
    },
    # [3869] "res 6 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb4], $_[0]) }, 0 ],
    },
    # [3870] "res 6 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3871 ],
    },
    # [3871] "res 6 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb5], $_[0]) }, 0 ],
    },
    # [3872] "res 6 , ( iy"
    {
        "+"     => 3873,
    },
    # [3873] "res 6 , ( iy +"
    {
        "DIS"   => 3874,
    },
    # [3874] "res 6 , ( iy + DIS"
    {
        ")"     => 3875,
    },
    # [3875] "res 6 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3876 ],
        ","     => 3877,
    },
    # [3876] "res 6 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb6], $_[0]) }, 0 ],
    },
    # [3877] "res 6 , ( iy + DIS ) ,"
    {
        "a"     => 3878,
        "b"     => 3880,
        "c"     => 3882,
        "d"     => 3884,
        "e"     => 3886,
        "h"     => 3888,
        "l"     => 3890,
    },
    # [3878] "res 6 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3879 ],
    },
    # [3879] "res 6 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb7], $_[0]) }, 0 ],
    },
    # [3880] "res 6 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3881 ],
    },
    # [3881] "res 6 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb0], $_[0]) }, 0 ],
    },
    # [3882] "res 6 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3883 ],
    },
    # [3883] "res 6 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb1], $_[0]) }, 0 ],
    },
    # [3884] "res 6 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3885 ],
    },
    # [3885] "res 6 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb2], $_[0]) }, 0 ],
    },
    # [3886] "res 6 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3887 ],
    },
    # [3887] "res 6 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb3], $_[0]) }, 0 ],
    },
    # [3888] "res 6 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3889 ],
    },
    # [3889] "res 6 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb4], $_[0]) }, 0 ],
    },
    # [3890] "res 6 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3891 ],
    },
    # [3891] "res 6 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb5], $_[0]) }, 0 ],
    },
    # [3892] "res 6 , ["
    {
        "hl"    => 3893,
        "ix"    => 3896,
        "iy"    => 3916,
    },
    # [3893] "res 6 , [ hl"
    {
        "]"     => 3894,
    },
    # [3894] "res 6 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3895 ],
    },
    # [3895] "res 6 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb6], $_[0]) }, 0 ],
    },
    # [3896] "res 6 , [ ix"
    {
        "+"     => 3897,
    },
    # [3897] "res 6 , [ ix +"
    {
        "DIS"   => 3898,
    },
    # [3898] "res 6 , [ ix + DIS"
    {
        "]"     => 3899,
    },
    # [3899] "res 6 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 3900 ],
        ","     => 3901,
    },
    # [3900] "res 6 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb6], $_[0]) }, 0 ],
    },
    # [3901] "res 6 , [ ix + DIS ] ,"
    {
        "a"     => 3902,
        "b"     => 3904,
        "c"     => 3906,
        "d"     => 3908,
        "e"     => 3910,
        "h"     => 3912,
        "l"     => 3914,
    },
    # [3902] "res 6 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3903 ],
    },
    # [3903] "res 6 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb7], $_[0]) }, 0 ],
    },
    # [3904] "res 6 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3905 ],
    },
    # [3905] "res 6 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb0], $_[0]) }, 0 ],
    },
    # [3906] "res 6 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3907 ],
    },
    # [3907] "res 6 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb1], $_[0]) }, 0 ],
    },
    # [3908] "res 6 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3909 ],
    },
    # [3909] "res 6 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb2], $_[0]) }, 0 ],
    },
    # [3910] "res 6 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3911 ],
    },
    # [3911] "res 6 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb3], $_[0]) }, 0 ],
    },
    # [3912] "res 6 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3913 ],
    },
    # [3913] "res 6 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb4], $_[0]) }, 0 ],
    },
    # [3914] "res 6 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3915 ],
    },
    # [3915] "res 6 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb5], $_[0]) }, 0 ],
    },
    # [3916] "res 6 , [ iy"
    {
        "+"     => 3917,
    },
    # [3917] "res 6 , [ iy +"
    {
        "DIS"   => 3918,
    },
    # [3918] "res 6 , [ iy + DIS"
    {
        "]"     => 3919,
    },
    # [3919] "res 6 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 3920 ],
        ","     => 3921,
    },
    # [3920] "res 6 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb6], $_[0]) }, 0 ],
    },
    # [3921] "res 6 , [ iy + DIS ] ,"
    {
        "a"     => 3922,
        "b"     => 3924,
        "c"     => 3926,
        "d"     => 3928,
        "e"     => 3930,
        "h"     => 3932,
        "l"     => 3934,
    },
    # [3922] "res 6 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 3923 ],
    },
    # [3923] "res 6 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb7], $_[0]) }, 0 ],
    },
    # [3924] "res 6 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 3925 ],
    },
    # [3925] "res 6 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb0], $_[0]) }, 0 ],
    },
    # [3926] "res 6 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 3927 ],
    },
    # [3927] "res 6 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb1], $_[0]) }, 0 ],
    },
    # [3928] "res 6 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 3929 ],
    },
    # [3929] "res 6 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb2], $_[0]) }, 0 ],
    },
    # [3930] "res 6 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 3931 ],
    },
    # [3931] "res 6 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb3], $_[0]) }, 0 ],
    },
    # [3932] "res 6 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 3933 ],
    },
    # [3933] "res 6 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb4], $_[0]) }, 0 ],
    },
    # [3934] "res 6 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 3935 ],
    },
    # [3935] "res 6 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb5], $_[0]) }, 0 ],
    },
    # [3936] "res 6 , a"
    {
        ""      => [ \&_parse_end, 3937 ],
    },
    # [3937] "res 6 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb7], $_[0]) }, 0 ],
    },
    # [3938] "res 6 , b"
    {
        ""      => [ \&_parse_end, 3939 ],
    },
    # [3939] "res 6 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb0], $_[0]) }, 0 ],
    },
    # [3940] "res 6 , c"
    {
        ""      => [ \&_parse_end, 3941 ],
    },
    # [3941] "res 6 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb1], $_[0]) }, 0 ],
    },
    # [3942] "res 6 , d"
    {
        ""      => [ \&_parse_end, 3943 ],
    },
    # [3943] "res 6 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb2], $_[0]) }, 0 ],
    },
    # [3944] "res 6 , e"
    {
        ""      => [ \&_parse_end, 3945 ],
    },
    # [3945] "res 6 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb3], $_[0]) }, 0 ],
    },
    # [3946] "res 6 , h"
    {
        ""      => [ \&_parse_end, 3947 ],
    },
    # [3947] "res 6 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb4], $_[0]) }, 0 ],
    },
    # [3948] "res 6 , l"
    {
        ""      => [ \&_parse_end, 3949 ],
    },
    # [3949] "res 6 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb5], $_[0]) }, 0 ],
    },
    # [3950] "res 7"
    {
        ","     => 3951,
    },
    # [3951] "res 7 ,"
    {
        "("     => 3952,
        "["     => 3996,
        "a"     => 4040,
        "b"     => 4042,
        "c"     => 4044,
        "d"     => 4046,
        "e"     => 4048,
        "h"     => 4050,
        "l"     => 4052,
    },
    # [3952] "res 7 , ("
    {
        "hl"    => 3953,
        "ix"    => 3956,
        "iy"    => 3976,
    },
    # [3953] "res 7 , ( hl"
    {
        ")"     => 3954,
    },
    # [3954] "res 7 , ( hl )"
    {
        ""      => [ \&_parse_end, 3955 ],
    },
    # [3955] "res 7 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xbe], $_[0]) }, 0 ],
    },
    # [3956] "res 7 , ( ix"
    {
        "+"     => 3957,
    },
    # [3957] "res 7 , ( ix +"
    {
        "DIS"   => 3958,
    },
    # [3958] "res 7 , ( ix + DIS"
    {
        ")"     => 3959,
    },
    # [3959] "res 7 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 3960 ],
        ","     => 3961,
    },
    # [3960] "res 7 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbe], $_[0]) }, 0 ],
    },
    # [3961] "res 7 , ( ix + DIS ) ,"
    {
        "a"     => 3962,
        "b"     => 3964,
        "c"     => 3966,
        "d"     => 3968,
        "e"     => 3970,
        "h"     => 3972,
        "l"     => 3974,
    },
    # [3962] "res 7 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3963 ],
    },
    # [3963] "res 7 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbf], $_[0]) }, 0 ],
    },
    # [3964] "res 7 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3965 ],
    },
    # [3965] "res 7 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb8], $_[0]) }, 0 ],
    },
    # [3966] "res 7 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3967 ],
    },
    # [3967] "res 7 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb9], $_[0]) }, 0 ],
    },
    # [3968] "res 7 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3969 ],
    },
    # [3969] "res 7 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xba], $_[0]) }, 0 ],
    },
    # [3970] "res 7 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3971 ],
    },
    # [3971] "res 7 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbb], $_[0]) }, 0 ],
    },
    # [3972] "res 7 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3973 ],
    },
    # [3973] "res 7 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbc], $_[0]) }, 0 ],
    },
    # [3974] "res 7 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3975 ],
    },
    # [3975] "res 7 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbd], $_[0]) }, 0 ],
    },
    # [3976] "res 7 , ( iy"
    {
        "+"     => 3977,
    },
    # [3977] "res 7 , ( iy +"
    {
        "DIS"   => 3978,
    },
    # [3978] "res 7 , ( iy + DIS"
    {
        ")"     => 3979,
    },
    # [3979] "res 7 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 3980 ],
        ","     => 3981,
    },
    # [3980] "res 7 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbe], $_[0]) }, 0 ],
    },
    # [3981] "res 7 , ( iy + DIS ) ,"
    {
        "a"     => 3982,
        "b"     => 3984,
        "c"     => 3986,
        "d"     => 3988,
        "e"     => 3990,
        "h"     => 3992,
        "l"     => 3994,
    },
    # [3982] "res 7 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 3983 ],
    },
    # [3983] "res 7 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbf], $_[0]) }, 0 ],
    },
    # [3984] "res 7 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 3985 ],
    },
    # [3985] "res 7 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb8], $_[0]) }, 0 ],
    },
    # [3986] "res 7 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 3987 ],
    },
    # [3987] "res 7 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb9], $_[0]) }, 0 ],
    },
    # [3988] "res 7 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 3989 ],
    },
    # [3989] "res 7 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xba], $_[0]) }, 0 ],
    },
    # [3990] "res 7 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 3991 ],
    },
    # [3991] "res 7 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbb], $_[0]) }, 0 ],
    },
    # [3992] "res 7 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 3993 ],
    },
    # [3993] "res 7 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbc], $_[0]) }, 0 ],
    },
    # [3994] "res 7 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 3995 ],
    },
    # [3995] "res 7 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbd], $_[0]) }, 0 ],
    },
    # [3996] "res 7 , ["
    {
        "hl"    => 3997,
        "ix"    => 4000,
        "iy"    => 4020,
    },
    # [3997] "res 7 , [ hl"
    {
        "]"     => 3998,
    },
    # [3998] "res 7 , [ hl ]"
    {
        ""      => [ \&_parse_end, 3999 ],
    },
    # [3999] "res 7 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xbe], $_[0]) }, 0 ],
    },
    # [4000] "res 7 , [ ix"
    {
        "+"     => 4001,
    },
    # [4001] "res 7 , [ ix +"
    {
        "DIS"   => 4002,
    },
    # [4002] "res 7 , [ ix + DIS"
    {
        "]"     => 4003,
    },
    # [4003] "res 7 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4004 ],
        ","     => 4005,
    },
    # [4004] "res 7 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbe], $_[0]) }, 0 ],
    },
    # [4005] "res 7 , [ ix + DIS ] ,"
    {
        "a"     => 4006,
        "b"     => 4008,
        "c"     => 4010,
        "d"     => 4012,
        "e"     => 4014,
        "h"     => 4016,
        "l"     => 4018,
    },
    # [4006] "res 7 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4007 ],
    },
    # [4007] "res 7 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbf], $_[0]) }, 0 ],
    },
    # [4008] "res 7 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4009 ],
    },
    # [4009] "res 7 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb8], $_[0]) }, 0 ],
    },
    # [4010] "res 7 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4011 ],
    },
    # [4011] "res 7 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xb9], $_[0]) }, 0 ],
    },
    # [4012] "res 7 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4013 ],
    },
    # [4013] "res 7 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xba], $_[0]) }, 0 ],
    },
    # [4014] "res 7 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4015 ],
    },
    # [4015] "res 7 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbb], $_[0]) }, 0 ],
    },
    # [4016] "res 7 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4017 ],
    },
    # [4017] "res 7 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbc], $_[0]) }, 0 ],
    },
    # [4018] "res 7 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4019 ],
    },
    # [4019] "res 7 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xbd], $_[0]) }, 0 ],
    },
    # [4020] "res 7 , [ iy"
    {
        "+"     => 4021,
    },
    # [4021] "res 7 , [ iy +"
    {
        "DIS"   => 4022,
    },
    # [4022] "res 7 , [ iy + DIS"
    {
        "]"     => 4023,
    },
    # [4023] "res 7 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4024 ],
        ","     => 4025,
    },
    # [4024] "res 7 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbe], $_[0]) }, 0 ],
    },
    # [4025] "res 7 , [ iy + DIS ] ,"
    {
        "a"     => 4026,
        "b"     => 4028,
        "c"     => 4030,
        "d"     => 4032,
        "e"     => 4034,
        "h"     => 4036,
        "l"     => 4038,
    },
    # [4026] "res 7 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4027 ],
    },
    # [4027] "res 7 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbf], $_[0]) }, 0 ],
    },
    # [4028] "res 7 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4029 ],
    },
    # [4029] "res 7 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb8], $_[0]) }, 0 ],
    },
    # [4030] "res 7 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4031 ],
    },
    # [4031] "res 7 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xb9], $_[0]) }, 0 ],
    },
    # [4032] "res 7 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4033 ],
    },
    # [4033] "res 7 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xba], $_[0]) }, 0 ],
    },
    # [4034] "res 7 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4035 ],
    },
    # [4035] "res 7 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbb], $_[0]) }, 0 ],
    },
    # [4036] "res 7 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4037 ],
    },
    # [4037] "res 7 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbc], $_[0]) }, 0 ],
    },
    # [4038] "res 7 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4039 ],
    },
    # [4039] "res 7 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xbd], $_[0]) }, 0 ],
    },
    # [4040] "res 7 , a"
    {
        ""      => [ \&_parse_end, 4041 ],
    },
    # [4041] "res 7 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xbf], $_[0]) }, 0 ],
    },
    # [4042] "res 7 , b"
    {
        ""      => [ \&_parse_end, 4043 ],
    },
    # [4043] "res 7 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb8], $_[0]) }, 0 ],
    },
    # [4044] "res 7 , c"
    {
        ""      => [ \&_parse_end, 4045 ],
    },
    # [4045] "res 7 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xb9], $_[0]) }, 0 ],
    },
    # [4046] "res 7 , d"
    {
        ""      => [ \&_parse_end, 4047 ],
    },
    # [4047] "res 7 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xba], $_[0]) }, 0 ],
    },
    # [4048] "res 7 , e"
    {
        ""      => [ \&_parse_end, 4049 ],
    },
    # [4049] "res 7 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xbb], $_[0]) }, 0 ],
    },
    # [4050] "res 7 , h"
    {
        ""      => [ \&_parse_end, 4051 ],
    },
    # [4051] "res 7 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xbc], $_[0]) }, 0 ],
    },
    # [4052] "res 7 , l"
    {
        ""      => [ \&_parse_end, 4053 ],
    },
    # [4053] "res 7 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xbd], $_[0]) }, 0 ],
    },
    # [4054] "ret"
    {
        ""      => [ \&_parse_end, 4055 ],
        "c"     => 4056,
        "m"     => 4058,
        "nc"    => 4060,
        "nz"    => 4062,
        "p"     => 4064,
        "pe"    => 4066,
        "po"    => 4068,
        "z"     => 4070,
    },
    # [4055] "ret &_parse_end"
    {
        ""      => [ sub { return ([0xc9], $_[0]) }, 0 ],
    },
    # [4056] "ret c"
    {
        ""      => [ \&_parse_end, 4057 ],
    },
    # [4057] "ret c &_parse_end"
    {
        ""      => [ sub { return ([0xd8], $_[0]) }, 0 ],
    },
    # [4058] "ret m"
    {
        ""      => [ \&_parse_end, 4059 ],
    },
    # [4059] "ret m &_parse_end"
    {
        ""      => [ sub { return ([0xf8], $_[0]) }, 0 ],
    },
    # [4060] "ret nc"
    {
        ""      => [ \&_parse_end, 4061 ],
    },
    # [4061] "ret nc &_parse_end"
    {
        ""      => [ sub { return ([0xd0], $_[0]) }, 0 ],
    },
    # [4062] "ret nz"
    {
        ""      => [ \&_parse_end, 4063 ],
    },
    # [4063] "ret nz &_parse_end"
    {
        ""      => [ sub { return ([0xc0], $_[0]) }, 0 ],
    },
    # [4064] "ret p"
    {
        ""      => [ \&_parse_end, 4065 ],
    },
    # [4065] "ret p &_parse_end"
    {
        ""      => [ sub { return ([0xf0], $_[0]) }, 0 ],
    },
    # [4066] "ret pe"
    {
        ""      => [ \&_parse_end, 4067 ],
    },
    # [4067] "ret pe &_parse_end"
    {
        ""      => [ sub { return ([0xe8], $_[0]) }, 0 ],
    },
    # [4068] "ret po"
    {
        ""      => [ \&_parse_end, 4069 ],
    },
    # [4069] "ret po &_parse_end"
    {
        ""      => [ sub { return ([0xe0], $_[0]) }, 0 ],
    },
    # [4070] "ret z"
    {
        ""      => [ \&_parse_end, 4071 ],
    },
    # [4071] "ret z &_parse_end"
    {
        ""      => [ sub { return ([0xc8], $_[0]) }, 0 ],
    },
    # [4072] "reti"
    {
        ""      => [ \&_parse_end, 4073 ],
    },
    # [4073] "reti &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x4d], $_[0]) }, 0 ],
    },
    # [4074] "retn"
    {
        ""      => [ \&_parse_end, 4075 ],
    },
    # [4075] "retn &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x45], $_[0]) }, 0 ],
    },
    # [4076] "rl"
    {
        "("     => 4077,
        "["     => 4121,
        "a"     => 4165,
        "b"     => 4167,
        "bc"    => 4169,
        "c"     => 4171,
        "d"     => 4173,
        "de"    => 4175,
        "e"     => 4177,
        "h"     => 4179,
        "hl"    => 4181,
        "l"     => 4183,
    },
    # [4077] "rl ("
    {
        "hl"    => 4078,
        "ix"    => 4081,
        "iy"    => 4101,
    },
    # [4078] "rl ( hl"
    {
        ")"     => 4079,
    },
    # [4079] "rl ( hl )"
    {
        ""      => [ \&_parse_end, 4080 ],
    },
    # [4080] "rl ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x16], $_[0]) }, 0 ],
    },
    # [4081] "rl ( ix"
    {
        "+"     => 4082,
    },
    # [4082] "rl ( ix +"
    {
        "DIS"   => 4083,
    },
    # [4083] "rl ( ix + DIS"
    {
        ")"     => 4084,
    },
    # [4084] "rl ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4085 ],
        ","     => 4086,
    },
    # [4085] "rl ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x16], $_[0]) }, 0 ],
    },
    # [4086] "rl ( ix + DIS ) ,"
    {
        "a"     => 4087,
        "b"     => 4089,
        "c"     => 4091,
        "d"     => 4093,
        "e"     => 4095,
        "h"     => 4097,
        "l"     => 4099,
    },
    # [4087] "rl ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4088 ],
    },
    # [4088] "rl ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x17], $_[0]) }, 0 ],
    },
    # [4089] "rl ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4090 ],
    },
    # [4090] "rl ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x10], $_[0]) }, 0 ],
    },
    # [4091] "rl ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4092 ],
    },
    # [4092] "rl ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x11], $_[0]) }, 0 ],
    },
    # [4093] "rl ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4094 ],
    },
    # [4094] "rl ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x12], $_[0]) }, 0 ],
    },
    # [4095] "rl ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4096 ],
    },
    # [4096] "rl ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x13], $_[0]) }, 0 ],
    },
    # [4097] "rl ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4098 ],
    },
    # [4098] "rl ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x14], $_[0]) }, 0 ],
    },
    # [4099] "rl ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4100 ],
    },
    # [4100] "rl ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x15], $_[0]) }, 0 ],
    },
    # [4101] "rl ( iy"
    {
        "+"     => 4102,
    },
    # [4102] "rl ( iy +"
    {
        "DIS"   => 4103,
    },
    # [4103] "rl ( iy + DIS"
    {
        ")"     => 4104,
    },
    # [4104] "rl ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4105 ],
        ","     => 4106,
    },
    # [4105] "rl ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x16], $_[0]) }, 0 ],
    },
    # [4106] "rl ( iy + DIS ) ,"
    {
        "a"     => 4107,
        "b"     => 4109,
        "c"     => 4111,
        "d"     => 4113,
        "e"     => 4115,
        "h"     => 4117,
        "l"     => 4119,
    },
    # [4107] "rl ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4108 ],
    },
    # [4108] "rl ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x17], $_[0]) }, 0 ],
    },
    # [4109] "rl ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4110 ],
    },
    # [4110] "rl ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x10], $_[0]) }, 0 ],
    },
    # [4111] "rl ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4112 ],
    },
    # [4112] "rl ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x11], $_[0]) }, 0 ],
    },
    # [4113] "rl ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4114 ],
    },
    # [4114] "rl ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x12], $_[0]) }, 0 ],
    },
    # [4115] "rl ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4116 ],
    },
    # [4116] "rl ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x13], $_[0]) }, 0 ],
    },
    # [4117] "rl ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4118 ],
    },
    # [4118] "rl ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x14], $_[0]) }, 0 ],
    },
    # [4119] "rl ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4120 ],
    },
    # [4120] "rl ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x15], $_[0]) }, 0 ],
    },
    # [4121] "rl ["
    {
        "hl"    => 4122,
        "ix"    => 4125,
        "iy"    => 4145,
    },
    # [4122] "rl [ hl"
    {
        "]"     => 4123,
    },
    # [4123] "rl [ hl ]"
    {
        ""      => [ \&_parse_end, 4124 ],
    },
    # [4124] "rl [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x16], $_[0]) }, 0 ],
    },
    # [4125] "rl [ ix"
    {
        "+"     => 4126,
    },
    # [4126] "rl [ ix +"
    {
        "DIS"   => 4127,
    },
    # [4127] "rl [ ix + DIS"
    {
        "]"     => 4128,
    },
    # [4128] "rl [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4129 ],
        ","     => 4130,
    },
    # [4129] "rl [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x16], $_[0]) }, 0 ],
    },
    # [4130] "rl [ ix + DIS ] ,"
    {
        "a"     => 4131,
        "b"     => 4133,
        "c"     => 4135,
        "d"     => 4137,
        "e"     => 4139,
        "h"     => 4141,
        "l"     => 4143,
    },
    # [4131] "rl [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4132 ],
    },
    # [4132] "rl [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x17], $_[0]) }, 0 ],
    },
    # [4133] "rl [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4134 ],
    },
    # [4134] "rl [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x10], $_[0]) }, 0 ],
    },
    # [4135] "rl [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4136 ],
    },
    # [4136] "rl [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x11], $_[0]) }, 0 ],
    },
    # [4137] "rl [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4138 ],
    },
    # [4138] "rl [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x12], $_[0]) }, 0 ],
    },
    # [4139] "rl [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4140 ],
    },
    # [4140] "rl [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x13], $_[0]) }, 0 ],
    },
    # [4141] "rl [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4142 ],
    },
    # [4142] "rl [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x14], $_[0]) }, 0 ],
    },
    # [4143] "rl [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4144 ],
    },
    # [4144] "rl [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x15], $_[0]) }, 0 ],
    },
    # [4145] "rl [ iy"
    {
        "+"     => 4146,
    },
    # [4146] "rl [ iy +"
    {
        "DIS"   => 4147,
    },
    # [4147] "rl [ iy + DIS"
    {
        "]"     => 4148,
    },
    # [4148] "rl [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4149 ],
        ","     => 4150,
    },
    # [4149] "rl [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x16], $_[0]) }, 0 ],
    },
    # [4150] "rl [ iy + DIS ] ,"
    {
        "a"     => 4151,
        "b"     => 4153,
        "c"     => 4155,
        "d"     => 4157,
        "e"     => 4159,
        "h"     => 4161,
        "l"     => 4163,
    },
    # [4151] "rl [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4152 ],
    },
    # [4152] "rl [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x17], $_[0]) }, 0 ],
    },
    # [4153] "rl [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4154 ],
    },
    # [4154] "rl [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x10], $_[0]) }, 0 ],
    },
    # [4155] "rl [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4156 ],
    },
    # [4156] "rl [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x11], $_[0]) }, 0 ],
    },
    # [4157] "rl [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4158 ],
    },
    # [4158] "rl [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x12], $_[0]) }, 0 ],
    },
    # [4159] "rl [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4160 ],
    },
    # [4160] "rl [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x13], $_[0]) }, 0 ],
    },
    # [4161] "rl [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4162 ],
    },
    # [4162] "rl [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x14], $_[0]) }, 0 ],
    },
    # [4163] "rl [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4164 ],
    },
    # [4164] "rl [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x15], $_[0]) }, 0 ],
    },
    # [4165] "rl a"
    {
        ""      => [ \&_parse_end, 4166 ],
    },
    # [4166] "rl a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x17], $_[0]) }, 0 ],
    },
    # [4167] "rl b"
    {
        ""      => [ \&_parse_end, 4168 ],
    },
    # [4168] "rl b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x10], $_[0]) }, 0 ],
    },
    # [4169] "rl bc"
    {
        ""      => [ \&_parse_end, 4170 ],
    },
    # [4170] "rl bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x11, 0xcb, 0x10], $_[0]) }, 0 ],
    },
    # [4171] "rl c"
    {
        ""      => [ \&_parse_end, 4172 ],
    },
    # [4172] "rl c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x11], $_[0]) }, 0 ],
    },
    # [4173] "rl d"
    {
        ""      => [ \&_parse_end, 4174 ],
    },
    # [4174] "rl d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x12], $_[0]) }, 0 ],
    },
    # [4175] "rl de"
    {
        ""      => [ \&_parse_end, 4176 ],
    },
    # [4176] "rl de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x13, 0xcb, 0x12], $_[0]) }, 0 ],
    },
    # [4177] "rl e"
    {
        ""      => [ \&_parse_end, 4178 ],
    },
    # [4178] "rl e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x13], $_[0]) }, 0 ],
    },
    # [4179] "rl h"
    {
        ""      => [ \&_parse_end, 4180 ],
    },
    # [4180] "rl h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x14], $_[0]) }, 0 ],
    },
    # [4181] "rl hl"
    {
        ""      => [ \&_parse_end, 4182 ],
    },
    # [4182] "rl hl &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x15, 0xcb, 0x14], $_[0]) }, 0 ],
    },
    # [4183] "rl l"
    {
        ""      => [ \&_parse_end, 4184 ],
    },
    # [4184] "rl l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x15], $_[0]) }, 0 ],
    },
    # [4185] "rla"
    {
        ""      => [ \&_parse_end, 4186 ],
    },
    # [4186] "rla &_parse_end"
    {
        ""      => [ sub { return ([0x17], $_[0]) }, 0 ],
    },
    # [4187] "rlc"
    {
        "("     => 4188,
        "["     => 4232,
        "a"     => 4276,
        "b"     => 4278,
        "c"     => 4280,
        "d"     => 4282,
        "e"     => 4284,
        "h"     => 4286,
        "l"     => 4288,
    },
    # [4188] "rlc ("
    {
        "hl"    => 4189,
        "ix"    => 4192,
        "iy"    => 4212,
    },
    # [4189] "rlc ( hl"
    {
        ")"     => 4190,
    },
    # [4190] "rlc ( hl )"
    {
        ""      => [ \&_parse_end, 4191 ],
    },
    # [4191] "rlc ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x06], $_[0]) }, 0 ],
    },
    # [4192] "rlc ( ix"
    {
        "+"     => 4193,
    },
    # [4193] "rlc ( ix +"
    {
        "DIS"   => 4194,
    },
    # [4194] "rlc ( ix + DIS"
    {
        ")"     => 4195,
    },
    # [4195] "rlc ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4196 ],
        ","     => 4197,
    },
    # [4196] "rlc ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x06], $_[0]) }, 0 ],
    },
    # [4197] "rlc ( ix + DIS ) ,"
    {
        "a"     => 4198,
        "b"     => 4200,
        "c"     => 4202,
        "d"     => 4204,
        "e"     => 4206,
        "h"     => 4208,
        "l"     => 4210,
    },
    # [4198] "rlc ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4199 ],
    },
    # [4199] "rlc ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x07], $_[0]) }, 0 ],
    },
    # [4200] "rlc ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4201 ],
    },
    # [4201] "rlc ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x00], $_[0]) }, 0 ],
    },
    # [4202] "rlc ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4203 ],
    },
    # [4203] "rlc ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x01], $_[0]) }, 0 ],
    },
    # [4204] "rlc ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4205 ],
    },
    # [4205] "rlc ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x02], $_[0]) }, 0 ],
    },
    # [4206] "rlc ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4207 ],
    },
    # [4207] "rlc ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x03], $_[0]) }, 0 ],
    },
    # [4208] "rlc ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4209 ],
    },
    # [4209] "rlc ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x04], $_[0]) }, 0 ],
    },
    # [4210] "rlc ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4211 ],
    },
    # [4211] "rlc ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x05], $_[0]) }, 0 ],
    },
    # [4212] "rlc ( iy"
    {
        "+"     => 4213,
    },
    # [4213] "rlc ( iy +"
    {
        "DIS"   => 4214,
    },
    # [4214] "rlc ( iy + DIS"
    {
        ")"     => 4215,
    },
    # [4215] "rlc ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4216 ],
        ","     => 4217,
    },
    # [4216] "rlc ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x06], $_[0]) }, 0 ],
    },
    # [4217] "rlc ( iy + DIS ) ,"
    {
        "a"     => 4218,
        "b"     => 4220,
        "c"     => 4222,
        "d"     => 4224,
        "e"     => 4226,
        "h"     => 4228,
        "l"     => 4230,
    },
    # [4218] "rlc ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4219 ],
    },
    # [4219] "rlc ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x07], $_[0]) }, 0 ],
    },
    # [4220] "rlc ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4221 ],
    },
    # [4221] "rlc ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x00], $_[0]) }, 0 ],
    },
    # [4222] "rlc ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4223 ],
    },
    # [4223] "rlc ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x01], $_[0]) }, 0 ],
    },
    # [4224] "rlc ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4225 ],
    },
    # [4225] "rlc ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x02], $_[0]) }, 0 ],
    },
    # [4226] "rlc ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4227 ],
    },
    # [4227] "rlc ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x03], $_[0]) }, 0 ],
    },
    # [4228] "rlc ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4229 ],
    },
    # [4229] "rlc ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x04], $_[0]) }, 0 ],
    },
    # [4230] "rlc ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4231 ],
    },
    # [4231] "rlc ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x05], $_[0]) }, 0 ],
    },
    # [4232] "rlc ["
    {
        "hl"    => 4233,
        "ix"    => 4236,
        "iy"    => 4256,
    },
    # [4233] "rlc [ hl"
    {
        "]"     => 4234,
    },
    # [4234] "rlc [ hl ]"
    {
        ""      => [ \&_parse_end, 4235 ],
    },
    # [4235] "rlc [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x06], $_[0]) }, 0 ],
    },
    # [4236] "rlc [ ix"
    {
        "+"     => 4237,
    },
    # [4237] "rlc [ ix +"
    {
        "DIS"   => 4238,
    },
    # [4238] "rlc [ ix + DIS"
    {
        "]"     => 4239,
    },
    # [4239] "rlc [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4240 ],
        ","     => 4241,
    },
    # [4240] "rlc [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x06], $_[0]) }, 0 ],
    },
    # [4241] "rlc [ ix + DIS ] ,"
    {
        "a"     => 4242,
        "b"     => 4244,
        "c"     => 4246,
        "d"     => 4248,
        "e"     => 4250,
        "h"     => 4252,
        "l"     => 4254,
    },
    # [4242] "rlc [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4243 ],
    },
    # [4243] "rlc [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x07], $_[0]) }, 0 ],
    },
    # [4244] "rlc [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4245 ],
    },
    # [4245] "rlc [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x00], $_[0]) }, 0 ],
    },
    # [4246] "rlc [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4247 ],
    },
    # [4247] "rlc [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x01], $_[0]) }, 0 ],
    },
    # [4248] "rlc [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4249 ],
    },
    # [4249] "rlc [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x02], $_[0]) }, 0 ],
    },
    # [4250] "rlc [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4251 ],
    },
    # [4251] "rlc [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x03], $_[0]) }, 0 ],
    },
    # [4252] "rlc [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4253 ],
    },
    # [4253] "rlc [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x04], $_[0]) }, 0 ],
    },
    # [4254] "rlc [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4255 ],
    },
    # [4255] "rlc [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x05], $_[0]) }, 0 ],
    },
    # [4256] "rlc [ iy"
    {
        "+"     => 4257,
    },
    # [4257] "rlc [ iy +"
    {
        "DIS"   => 4258,
    },
    # [4258] "rlc [ iy + DIS"
    {
        "]"     => 4259,
    },
    # [4259] "rlc [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4260 ],
        ","     => 4261,
    },
    # [4260] "rlc [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x06], $_[0]) }, 0 ],
    },
    # [4261] "rlc [ iy + DIS ] ,"
    {
        "a"     => 4262,
        "b"     => 4264,
        "c"     => 4266,
        "d"     => 4268,
        "e"     => 4270,
        "h"     => 4272,
        "l"     => 4274,
    },
    # [4262] "rlc [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4263 ],
    },
    # [4263] "rlc [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x07], $_[0]) }, 0 ],
    },
    # [4264] "rlc [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4265 ],
    },
    # [4265] "rlc [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x00], $_[0]) }, 0 ],
    },
    # [4266] "rlc [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4267 ],
    },
    # [4267] "rlc [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x01], $_[0]) }, 0 ],
    },
    # [4268] "rlc [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4269 ],
    },
    # [4269] "rlc [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x02], $_[0]) }, 0 ],
    },
    # [4270] "rlc [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4271 ],
    },
    # [4271] "rlc [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x03], $_[0]) }, 0 ],
    },
    # [4272] "rlc [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4273 ],
    },
    # [4273] "rlc [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x04], $_[0]) }, 0 ],
    },
    # [4274] "rlc [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4275 ],
    },
    # [4275] "rlc [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x05], $_[0]) }, 0 ],
    },
    # [4276] "rlc a"
    {
        ""      => [ \&_parse_end, 4277 ],
    },
    # [4277] "rlc a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x07], $_[0]) }, 0 ],
    },
    # [4278] "rlc b"
    {
        ""      => [ \&_parse_end, 4279 ],
    },
    # [4279] "rlc b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x00], $_[0]) }, 0 ],
    },
    # [4280] "rlc c"
    {
        ""      => [ \&_parse_end, 4281 ],
    },
    # [4281] "rlc c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x01], $_[0]) }, 0 ],
    },
    # [4282] "rlc d"
    {
        ""      => [ \&_parse_end, 4283 ],
    },
    # [4283] "rlc d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x02], $_[0]) }, 0 ],
    },
    # [4284] "rlc e"
    {
        ""      => [ \&_parse_end, 4285 ],
    },
    # [4285] "rlc e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x03], $_[0]) }, 0 ],
    },
    # [4286] "rlc h"
    {
        ""      => [ \&_parse_end, 4287 ],
    },
    # [4287] "rlc h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x04], $_[0]) }, 0 ],
    },
    # [4288] "rlc l"
    {
        ""      => [ \&_parse_end, 4289 ],
    },
    # [4289] "rlc l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x05], $_[0]) }, 0 ],
    },
    # [4290] "rlca"
    {
        ""      => [ \&_parse_end, 4291 ],
    },
    # [4291] "rlca &_parse_end"
    {
        ""      => [ sub { return ([0x07], $_[0]) }, 0 ],
    },
    # [4292] "rld"
    {
        ""      => [ \&_parse_end, 4293 ],
    },
    # [4293] "rld &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x6f], $_[0]) }, 0 ],
    },
    # [4294] "rr"
    {
        "("     => 4295,
        "["     => 4339,
        "a"     => 4383,
        "b"     => 4385,
        "bc"    => 4387,
        "c"     => 4389,
        "d"     => 4391,
        "de"    => 4393,
        "e"     => 4395,
        "h"     => 4397,
        "hl"    => 4399,
        "l"     => 4401,
    },
    # [4295] "rr ("
    {
        "hl"    => 4296,
        "ix"    => 4299,
        "iy"    => 4319,
    },
    # [4296] "rr ( hl"
    {
        ")"     => 4297,
    },
    # [4297] "rr ( hl )"
    {
        ""      => [ \&_parse_end, 4298 ],
    },
    # [4298] "rr ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1e], $_[0]) }, 0 ],
    },
    # [4299] "rr ( ix"
    {
        "+"     => 4300,
    },
    # [4300] "rr ( ix +"
    {
        "DIS"   => 4301,
    },
    # [4301] "rr ( ix + DIS"
    {
        ")"     => 4302,
    },
    # [4302] "rr ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4303 ],
        ","     => 4304,
    },
    # [4303] "rr ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1e], $_[0]) }, 0 ],
    },
    # [4304] "rr ( ix + DIS ) ,"
    {
        "a"     => 4305,
        "b"     => 4307,
        "c"     => 4309,
        "d"     => 4311,
        "e"     => 4313,
        "h"     => 4315,
        "l"     => 4317,
    },
    # [4305] "rr ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4306 ],
    },
    # [4306] "rr ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1f], $_[0]) }, 0 ],
    },
    # [4307] "rr ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4308 ],
    },
    # [4308] "rr ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x18], $_[0]) }, 0 ],
    },
    # [4309] "rr ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4310 ],
    },
    # [4310] "rr ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x19], $_[0]) }, 0 ],
    },
    # [4311] "rr ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4312 ],
    },
    # [4312] "rr ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1a], $_[0]) }, 0 ],
    },
    # [4313] "rr ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4314 ],
    },
    # [4314] "rr ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1b], $_[0]) }, 0 ],
    },
    # [4315] "rr ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4316 ],
    },
    # [4316] "rr ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1c], $_[0]) }, 0 ],
    },
    # [4317] "rr ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4318 ],
    },
    # [4318] "rr ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1d], $_[0]) }, 0 ],
    },
    # [4319] "rr ( iy"
    {
        "+"     => 4320,
    },
    # [4320] "rr ( iy +"
    {
        "DIS"   => 4321,
    },
    # [4321] "rr ( iy + DIS"
    {
        ")"     => 4322,
    },
    # [4322] "rr ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4323 ],
        ","     => 4324,
    },
    # [4323] "rr ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1e], $_[0]) }, 0 ],
    },
    # [4324] "rr ( iy + DIS ) ,"
    {
        "a"     => 4325,
        "b"     => 4327,
        "c"     => 4329,
        "d"     => 4331,
        "e"     => 4333,
        "h"     => 4335,
        "l"     => 4337,
    },
    # [4325] "rr ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4326 ],
    },
    # [4326] "rr ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1f], $_[0]) }, 0 ],
    },
    # [4327] "rr ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4328 ],
    },
    # [4328] "rr ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x18], $_[0]) }, 0 ],
    },
    # [4329] "rr ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4330 ],
    },
    # [4330] "rr ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x19], $_[0]) }, 0 ],
    },
    # [4331] "rr ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4332 ],
    },
    # [4332] "rr ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1a], $_[0]) }, 0 ],
    },
    # [4333] "rr ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4334 ],
    },
    # [4334] "rr ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1b], $_[0]) }, 0 ],
    },
    # [4335] "rr ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4336 ],
    },
    # [4336] "rr ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1c], $_[0]) }, 0 ],
    },
    # [4337] "rr ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4338 ],
    },
    # [4338] "rr ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1d], $_[0]) }, 0 ],
    },
    # [4339] "rr ["
    {
        "hl"    => 4340,
        "ix"    => 4343,
        "iy"    => 4363,
    },
    # [4340] "rr [ hl"
    {
        "]"     => 4341,
    },
    # [4341] "rr [ hl ]"
    {
        ""      => [ \&_parse_end, 4342 ],
    },
    # [4342] "rr [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1e], $_[0]) }, 0 ],
    },
    # [4343] "rr [ ix"
    {
        "+"     => 4344,
    },
    # [4344] "rr [ ix +"
    {
        "DIS"   => 4345,
    },
    # [4345] "rr [ ix + DIS"
    {
        "]"     => 4346,
    },
    # [4346] "rr [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4347 ],
        ","     => 4348,
    },
    # [4347] "rr [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1e], $_[0]) }, 0 ],
    },
    # [4348] "rr [ ix + DIS ] ,"
    {
        "a"     => 4349,
        "b"     => 4351,
        "c"     => 4353,
        "d"     => 4355,
        "e"     => 4357,
        "h"     => 4359,
        "l"     => 4361,
    },
    # [4349] "rr [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4350 ],
    },
    # [4350] "rr [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1f], $_[0]) }, 0 ],
    },
    # [4351] "rr [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4352 ],
    },
    # [4352] "rr [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x18], $_[0]) }, 0 ],
    },
    # [4353] "rr [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4354 ],
    },
    # [4354] "rr [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x19], $_[0]) }, 0 ],
    },
    # [4355] "rr [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4356 ],
    },
    # [4356] "rr [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1a], $_[0]) }, 0 ],
    },
    # [4357] "rr [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4358 ],
    },
    # [4358] "rr [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1b], $_[0]) }, 0 ],
    },
    # [4359] "rr [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4360 ],
    },
    # [4360] "rr [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1c], $_[0]) }, 0 ],
    },
    # [4361] "rr [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4362 ],
    },
    # [4362] "rr [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x1d], $_[0]) }, 0 ],
    },
    # [4363] "rr [ iy"
    {
        "+"     => 4364,
    },
    # [4364] "rr [ iy +"
    {
        "DIS"   => 4365,
    },
    # [4365] "rr [ iy + DIS"
    {
        "]"     => 4366,
    },
    # [4366] "rr [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4367 ],
        ","     => 4368,
    },
    # [4367] "rr [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1e], $_[0]) }, 0 ],
    },
    # [4368] "rr [ iy + DIS ] ,"
    {
        "a"     => 4369,
        "b"     => 4371,
        "c"     => 4373,
        "d"     => 4375,
        "e"     => 4377,
        "h"     => 4379,
        "l"     => 4381,
    },
    # [4369] "rr [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4370 ],
    },
    # [4370] "rr [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1f], $_[0]) }, 0 ],
    },
    # [4371] "rr [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4372 ],
    },
    # [4372] "rr [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x18], $_[0]) }, 0 ],
    },
    # [4373] "rr [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4374 ],
    },
    # [4374] "rr [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x19], $_[0]) }, 0 ],
    },
    # [4375] "rr [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4376 ],
    },
    # [4376] "rr [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1a], $_[0]) }, 0 ],
    },
    # [4377] "rr [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4378 ],
    },
    # [4378] "rr [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1b], $_[0]) }, 0 ],
    },
    # [4379] "rr [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4380 ],
    },
    # [4380] "rr [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1c], $_[0]) }, 0 ],
    },
    # [4381] "rr [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4382 ],
    },
    # [4382] "rr [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x1d], $_[0]) }, 0 ],
    },
    # [4383] "rr a"
    {
        ""      => [ \&_parse_end, 4384 ],
    },
    # [4384] "rr a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1f], $_[0]) }, 0 ],
    },
    # [4385] "rr b"
    {
        ""      => [ \&_parse_end, 4386 ],
    },
    # [4386] "rr b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x18], $_[0]) }, 0 ],
    },
    # [4387] "rr bc"
    {
        ""      => [ \&_parse_end, 4388 ],
    },
    # [4388] "rr bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x18, 0xcb, 0x19], $_[0]) }, 0 ],
    },
    # [4389] "rr c"
    {
        ""      => [ \&_parse_end, 4390 ],
    },
    # [4390] "rr c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x19], $_[0]) }, 0 ],
    },
    # [4391] "rr d"
    {
        ""      => [ \&_parse_end, 4392 ],
    },
    # [4392] "rr d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1a], $_[0]) }, 0 ],
    },
    # [4393] "rr de"
    {
        ""      => [ \&_parse_end, 4394 ],
    },
    # [4394] "rr de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1a, 0xcb, 0x1b], $_[0]) }, 0 ],
    },
    # [4395] "rr e"
    {
        ""      => [ \&_parse_end, 4396 ],
    },
    # [4396] "rr e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1b], $_[0]) }, 0 ],
    },
    # [4397] "rr h"
    {
        ""      => [ \&_parse_end, 4398 ],
    },
    # [4398] "rr h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1c], $_[0]) }, 0 ],
    },
    # [4399] "rr hl"
    {
        ""      => [ \&_parse_end, 4400 ],
    },
    # [4400] "rr hl &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1c, 0xcb, 0x1d], $_[0]) }, 0 ],
    },
    # [4401] "rr l"
    {
        ""      => [ \&_parse_end, 4402 ],
    },
    # [4402] "rr l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x1d], $_[0]) }, 0 ],
    },
    # [4403] "rra"
    {
        ""      => [ \&_parse_end, 4404 ],
    },
    # [4404] "rra &_parse_end"
    {
        ""      => [ sub { return ([0x1f], $_[0]) }, 0 ],
    },
    # [4405] "rrc"
    {
        "("     => 4406,
        "["     => 4450,
        "a"     => 4494,
        "b"     => 4496,
        "c"     => 4498,
        "d"     => 4500,
        "e"     => 4502,
        "h"     => 4504,
        "l"     => 4506,
    },
    # [4406] "rrc ("
    {
        "hl"    => 4407,
        "ix"    => 4410,
        "iy"    => 4430,
    },
    # [4407] "rrc ( hl"
    {
        ")"     => 4408,
    },
    # [4408] "rrc ( hl )"
    {
        ""      => [ \&_parse_end, 4409 ],
    },
    # [4409] "rrc ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0e], $_[0]) }, 0 ],
    },
    # [4410] "rrc ( ix"
    {
        "+"     => 4411,
    },
    # [4411] "rrc ( ix +"
    {
        "DIS"   => 4412,
    },
    # [4412] "rrc ( ix + DIS"
    {
        ")"     => 4413,
    },
    # [4413] "rrc ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4414 ],
        ","     => 4415,
    },
    # [4414] "rrc ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0e], $_[0]) }, 0 ],
    },
    # [4415] "rrc ( ix + DIS ) ,"
    {
        "a"     => 4416,
        "b"     => 4418,
        "c"     => 4420,
        "d"     => 4422,
        "e"     => 4424,
        "h"     => 4426,
        "l"     => 4428,
    },
    # [4416] "rrc ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4417 ],
    },
    # [4417] "rrc ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0f], $_[0]) }, 0 ],
    },
    # [4418] "rrc ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4419 ],
    },
    # [4419] "rrc ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x08], $_[0]) }, 0 ],
    },
    # [4420] "rrc ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4421 ],
    },
    # [4421] "rrc ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x09], $_[0]) }, 0 ],
    },
    # [4422] "rrc ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4423 ],
    },
    # [4423] "rrc ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0a], $_[0]) }, 0 ],
    },
    # [4424] "rrc ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4425 ],
    },
    # [4425] "rrc ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0b], $_[0]) }, 0 ],
    },
    # [4426] "rrc ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4427 ],
    },
    # [4427] "rrc ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0c], $_[0]) }, 0 ],
    },
    # [4428] "rrc ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4429 ],
    },
    # [4429] "rrc ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0d], $_[0]) }, 0 ],
    },
    # [4430] "rrc ( iy"
    {
        "+"     => 4431,
    },
    # [4431] "rrc ( iy +"
    {
        "DIS"   => 4432,
    },
    # [4432] "rrc ( iy + DIS"
    {
        ")"     => 4433,
    },
    # [4433] "rrc ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4434 ],
        ","     => 4435,
    },
    # [4434] "rrc ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0e], $_[0]) }, 0 ],
    },
    # [4435] "rrc ( iy + DIS ) ,"
    {
        "a"     => 4436,
        "b"     => 4438,
        "c"     => 4440,
        "d"     => 4442,
        "e"     => 4444,
        "h"     => 4446,
        "l"     => 4448,
    },
    # [4436] "rrc ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4437 ],
    },
    # [4437] "rrc ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0f], $_[0]) }, 0 ],
    },
    # [4438] "rrc ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4439 ],
    },
    # [4439] "rrc ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x08], $_[0]) }, 0 ],
    },
    # [4440] "rrc ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4441 ],
    },
    # [4441] "rrc ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x09], $_[0]) }, 0 ],
    },
    # [4442] "rrc ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4443 ],
    },
    # [4443] "rrc ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0a], $_[0]) }, 0 ],
    },
    # [4444] "rrc ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4445 ],
    },
    # [4445] "rrc ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0b], $_[0]) }, 0 ],
    },
    # [4446] "rrc ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4447 ],
    },
    # [4447] "rrc ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0c], $_[0]) }, 0 ],
    },
    # [4448] "rrc ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4449 ],
    },
    # [4449] "rrc ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0d], $_[0]) }, 0 ],
    },
    # [4450] "rrc ["
    {
        "hl"    => 4451,
        "ix"    => 4454,
        "iy"    => 4474,
    },
    # [4451] "rrc [ hl"
    {
        "]"     => 4452,
    },
    # [4452] "rrc [ hl ]"
    {
        ""      => [ \&_parse_end, 4453 ],
    },
    # [4453] "rrc [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0e], $_[0]) }, 0 ],
    },
    # [4454] "rrc [ ix"
    {
        "+"     => 4455,
    },
    # [4455] "rrc [ ix +"
    {
        "DIS"   => 4456,
    },
    # [4456] "rrc [ ix + DIS"
    {
        "]"     => 4457,
    },
    # [4457] "rrc [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4458 ],
        ","     => 4459,
    },
    # [4458] "rrc [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0e], $_[0]) }, 0 ],
    },
    # [4459] "rrc [ ix + DIS ] ,"
    {
        "a"     => 4460,
        "b"     => 4462,
        "c"     => 4464,
        "d"     => 4466,
        "e"     => 4468,
        "h"     => 4470,
        "l"     => 4472,
    },
    # [4460] "rrc [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4461 ],
    },
    # [4461] "rrc [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0f], $_[0]) }, 0 ],
    },
    # [4462] "rrc [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4463 ],
    },
    # [4463] "rrc [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x08], $_[0]) }, 0 ],
    },
    # [4464] "rrc [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4465 ],
    },
    # [4465] "rrc [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x09], $_[0]) }, 0 ],
    },
    # [4466] "rrc [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4467 ],
    },
    # [4467] "rrc [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0a], $_[0]) }, 0 ],
    },
    # [4468] "rrc [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4469 ],
    },
    # [4469] "rrc [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0b], $_[0]) }, 0 ],
    },
    # [4470] "rrc [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4471 ],
    },
    # [4471] "rrc [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0c], $_[0]) }, 0 ],
    },
    # [4472] "rrc [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4473 ],
    },
    # [4473] "rrc [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x0d], $_[0]) }, 0 ],
    },
    # [4474] "rrc [ iy"
    {
        "+"     => 4475,
    },
    # [4475] "rrc [ iy +"
    {
        "DIS"   => 4476,
    },
    # [4476] "rrc [ iy + DIS"
    {
        "]"     => 4477,
    },
    # [4477] "rrc [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4478 ],
        ","     => 4479,
    },
    # [4478] "rrc [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0e], $_[0]) }, 0 ],
    },
    # [4479] "rrc [ iy + DIS ] ,"
    {
        "a"     => 4480,
        "b"     => 4482,
        "c"     => 4484,
        "d"     => 4486,
        "e"     => 4488,
        "h"     => 4490,
        "l"     => 4492,
    },
    # [4480] "rrc [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4481 ],
    },
    # [4481] "rrc [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0f], $_[0]) }, 0 ],
    },
    # [4482] "rrc [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4483 ],
    },
    # [4483] "rrc [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x08], $_[0]) }, 0 ],
    },
    # [4484] "rrc [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4485 ],
    },
    # [4485] "rrc [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x09], $_[0]) }, 0 ],
    },
    # [4486] "rrc [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4487 ],
    },
    # [4487] "rrc [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0a], $_[0]) }, 0 ],
    },
    # [4488] "rrc [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4489 ],
    },
    # [4489] "rrc [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0b], $_[0]) }, 0 ],
    },
    # [4490] "rrc [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4491 ],
    },
    # [4491] "rrc [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0c], $_[0]) }, 0 ],
    },
    # [4492] "rrc [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4493 ],
    },
    # [4493] "rrc [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x0d], $_[0]) }, 0 ],
    },
    # [4494] "rrc a"
    {
        ""      => [ \&_parse_end, 4495 ],
    },
    # [4495] "rrc a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0f], $_[0]) }, 0 ],
    },
    # [4496] "rrc b"
    {
        ""      => [ \&_parse_end, 4497 ],
    },
    # [4497] "rrc b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x08], $_[0]) }, 0 ],
    },
    # [4498] "rrc c"
    {
        ""      => [ \&_parse_end, 4499 ],
    },
    # [4499] "rrc c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x09], $_[0]) }, 0 ],
    },
    # [4500] "rrc d"
    {
        ""      => [ \&_parse_end, 4501 ],
    },
    # [4501] "rrc d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0a], $_[0]) }, 0 ],
    },
    # [4502] "rrc e"
    {
        ""      => [ \&_parse_end, 4503 ],
    },
    # [4503] "rrc e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0b], $_[0]) }, 0 ],
    },
    # [4504] "rrc h"
    {
        ""      => [ \&_parse_end, 4505 ],
    },
    # [4505] "rrc h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0c], $_[0]) }, 0 ],
    },
    # [4506] "rrc l"
    {
        ""      => [ \&_parse_end, 4507 ],
    },
    # [4507] "rrc l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x0d], $_[0]) }, 0 ],
    },
    # [4508] "rrca"
    {
        ""      => [ \&_parse_end, 4509 ],
    },
    # [4509] "rrca &_parse_end"
    {
        ""      => [ sub { return ([0x0f], $_[0]) }, 0 ],
    },
    # [4510] "rrd"
    {
        ""      => [ \&_parse_end, 4511 ],
    },
    # [4511] "rrd &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x67], $_[0]) }, 0 ],
    },
    # [4512] "rst"
    {
        0       => 4513,
        1       => 4515,
        16      => 4517,
        2       => 4519,
        24      => 4521,
        3       => 4523,
        32      => 4525,
        4       => 4527,
        40      => 4529,
        48      => 4531,
        5       => 4533,
        56      => 4535,
        6       => 4537,
        7       => 4539,
        8       => 4541,
    },
    # [4513] "rst 0"
    {
        ""      => [ \&_parse_end, 4514 ],
    },
    # [4514] "rst 0 &_parse_end"
    {
        ""      => [ sub { return ([0xc7], $_[0]) }, 0 ],
    },
    # [4515] "rst 1"
    {
        ""      => [ \&_parse_end, 4516 ],
    },
    # [4516] "rst 1 &_parse_end"
    {
        ""      => [ sub { return ([0xcf], $_[0]) }, 0 ],
    },
    # [4517] "rst 16"
    {
        ""      => [ \&_parse_end, 4518 ],
    },
    # [4518] "rst 16 &_parse_end"
    {
        ""      => [ sub { return ([0xd7], $_[0]) }, 0 ],
    },
    # [4519] "rst 2"
    {
        ""      => [ \&_parse_end, 4520 ],
    },
    # [4520] "rst 2 &_parse_end"
    {
        ""      => [ sub { return ([0xd7], $_[0]) }, 0 ],
    },
    # [4521] "rst 24"
    {
        ""      => [ \&_parse_end, 4522 ],
    },
    # [4522] "rst 24 &_parse_end"
    {
        ""      => [ sub { return ([0xdf], $_[0]) }, 0 ],
    },
    # [4523] "rst 3"
    {
        ""      => [ \&_parse_end, 4524 ],
    },
    # [4524] "rst 3 &_parse_end"
    {
        ""      => [ sub { return ([0xdf], $_[0]) }, 0 ],
    },
    # [4525] "rst 32"
    {
        ""      => [ \&_parse_end, 4526 ],
    },
    # [4526] "rst 32 &_parse_end"
    {
        ""      => [ sub { return ([0xe7], $_[0]) }, 0 ],
    },
    # [4527] "rst 4"
    {
        ""      => [ \&_parse_end, 4528 ],
    },
    # [4528] "rst 4 &_parse_end"
    {
        ""      => [ sub { return ([0xe7], $_[0]) }, 0 ],
    },
    # [4529] "rst 40"
    {
        ""      => [ \&_parse_end, 4530 ],
    },
    # [4530] "rst 40 &_parse_end"
    {
        ""      => [ sub { return ([0xef], $_[0]) }, 0 ],
    },
    # [4531] "rst 48"
    {
        ""      => [ \&_parse_end, 4532 ],
    },
    # [4532] "rst 48 &_parse_end"
    {
        ""      => [ sub { return ([0xf7], $_[0]) }, 0 ],
    },
    # [4533] "rst 5"
    {
        ""      => [ \&_parse_end, 4534 ],
    },
    # [4534] "rst 5 &_parse_end"
    {
        ""      => [ sub { return ([0xef], $_[0]) }, 0 ],
    },
    # [4535] "rst 56"
    {
        ""      => [ \&_parse_end, 4536 ],
    },
    # [4536] "rst 56 &_parse_end"
    {
        ""      => [ sub { return ([0xff], $_[0]) }, 0 ],
    },
    # [4537] "rst 6"
    {
        ""      => [ \&_parse_end, 4538 ],
    },
    # [4538] "rst 6 &_parse_end"
    {
        ""      => [ sub { return ([0xf7], $_[0]) }, 0 ],
    },
    # [4539] "rst 7"
    {
        ""      => [ \&_parse_end, 4540 ],
    },
    # [4540] "rst 7 &_parse_end"
    {
        ""      => [ sub { return ([0xff], $_[0]) }, 0 ],
    },
    # [4541] "rst 8"
    {
        ""      => [ \&_parse_end, 4542 ],
    },
    # [4542] "rst 8 &_parse_end"
    {
        ""      => [ sub { return ([0xcf], $_[0]) }, 0 ],
    },
    # [4543] "sbc"
    {
        "a"     => 4544,
        "hl"    => 4614,
    },
    # [4544] "sbc a"
    {
        ","     => 4545,
    },
    # [4545] "sbc a ,"
    {
        "("     => 4546,
        "N"     => 4560,
        "["     => 4562,
        "a"     => 4576,
        "b"     => 4578,
        "c"     => 4580,
        "d"     => 4582,
        "e"     => 4584,
        "h"     => 4586,
        "hx"    => 4588,
        "hy"    => 4590,
        "ixh"   => 4592,
        "ixl"   => 4594,
        "iyh"   => 4596,
        "iyl"   => 4598,
        "l"     => 4600,
        "lx"    => 4602,
        "ly"    => 4604,
        "xh"    => 4606,
        "xl"    => 4608,
        "yh"    => 4610,
        "yl"    => 4612,
    },
    # [4546] "sbc a , ("
    {
        "hl"    => 4547,
        "ix"    => 4550,
        "iy"    => 4555,
    },
    # [4547] "sbc a , ( hl"
    {
        ")"     => 4548,
    },
    # [4548] "sbc a , ( hl )"
    {
        ""      => [ \&_parse_end, 4549 ],
    },
    # [4549] "sbc a , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x9e], $_[0]) }, 0 ],
    },
    # [4550] "sbc a , ( ix"
    {
        "+"     => 4551,
    },
    # [4551] "sbc a , ( ix +"
    {
        "DIS"   => 4552,
    },
    # [4552] "sbc a , ( ix + DIS"
    {
        ")"     => 4553,
    },
    # [4553] "sbc a , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4554 ],
    },
    # [4554] "sbc a , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9e, "DIS"], $_[0]) }, 0 ],
    },
    # [4555] "sbc a , ( iy"
    {
        "+"     => 4556,
    },
    # [4556] "sbc a , ( iy +"
    {
        "DIS"   => 4557,
    },
    # [4557] "sbc a , ( iy + DIS"
    {
        ")"     => 4558,
    },
    # [4558] "sbc a , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4559 ],
    },
    # [4559] "sbc a , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9e, "DIS"], $_[0]) }, 0 ],
    },
    # [4560] "sbc a , N"
    {
        ""      => [ \&_parse_end, 4561 ],
    },
    # [4561] "sbc a , N &_parse_end"
    {
        ""      => [ sub { return ([0xde, "N"], $_[0]) }, 0 ],
    },
    # [4562] "sbc a , ["
    {
        "hl"    => 4563,
        "ix"    => 4566,
        "iy"    => 4571,
    },
    # [4563] "sbc a , [ hl"
    {
        "]"     => 4564,
    },
    # [4564] "sbc a , [ hl ]"
    {
        ""      => [ \&_parse_end, 4565 ],
    },
    # [4565] "sbc a , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x9e], $_[0]) }, 0 ],
    },
    # [4566] "sbc a , [ ix"
    {
        "+"     => 4567,
    },
    # [4567] "sbc a , [ ix +"
    {
        "DIS"   => 4568,
    },
    # [4568] "sbc a , [ ix + DIS"
    {
        "]"     => 4569,
    },
    # [4569] "sbc a , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4570 ],
    },
    # [4570] "sbc a , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9e, "DIS"], $_[0]) }, 0 ],
    },
    # [4571] "sbc a , [ iy"
    {
        "+"     => 4572,
    },
    # [4572] "sbc a , [ iy +"
    {
        "DIS"   => 4573,
    },
    # [4573] "sbc a , [ iy + DIS"
    {
        "]"     => 4574,
    },
    # [4574] "sbc a , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4575 ],
    },
    # [4575] "sbc a , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9e, "DIS"], $_[0]) }, 0 ],
    },
    # [4576] "sbc a , a"
    {
        ""      => [ \&_parse_end, 4577 ],
    },
    # [4577] "sbc a , a &_parse_end"
    {
        ""      => [ sub { return ([0x9f], $_[0]) }, 0 ],
    },
    # [4578] "sbc a , b"
    {
        ""      => [ \&_parse_end, 4579 ],
    },
    # [4579] "sbc a , b &_parse_end"
    {
        ""      => [ sub { return ([0x98], $_[0]) }, 0 ],
    },
    # [4580] "sbc a , c"
    {
        ""      => [ \&_parse_end, 4581 ],
    },
    # [4581] "sbc a , c &_parse_end"
    {
        ""      => [ sub { return ([0x99], $_[0]) }, 0 ],
    },
    # [4582] "sbc a , d"
    {
        ""      => [ \&_parse_end, 4583 ],
    },
    # [4583] "sbc a , d &_parse_end"
    {
        ""      => [ sub { return ([0x9a], $_[0]) }, 0 ],
    },
    # [4584] "sbc a , e"
    {
        ""      => [ \&_parse_end, 4585 ],
    },
    # [4585] "sbc a , e &_parse_end"
    {
        ""      => [ sub { return ([0x9b], $_[0]) }, 0 ],
    },
    # [4586] "sbc a , h"
    {
        ""      => [ \&_parse_end, 4587 ],
    },
    # [4587] "sbc a , h &_parse_end"
    {
        ""      => [ sub { return ([0x9c], $_[0]) }, 0 ],
    },
    # [4588] "sbc a , hx"
    {
        ""      => [ \&_parse_end, 4589 ],
    },
    # [4589] "sbc a , hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9c], $_[0]) }, 0 ],
    },
    # [4590] "sbc a , hy"
    {
        ""      => [ \&_parse_end, 4591 ],
    },
    # [4591] "sbc a , hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9c], $_[0]) }, 0 ],
    },
    # [4592] "sbc a , ixh"
    {
        ""      => [ \&_parse_end, 4593 ],
    },
    # [4593] "sbc a , ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9c], $_[0]) }, 0 ],
    },
    # [4594] "sbc a , ixl"
    {
        ""      => [ \&_parse_end, 4595 ],
    },
    # [4595] "sbc a , ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9d], $_[0]) }, 0 ],
    },
    # [4596] "sbc a , iyh"
    {
        ""      => [ \&_parse_end, 4597 ],
    },
    # [4597] "sbc a , iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9c], $_[0]) }, 0 ],
    },
    # [4598] "sbc a , iyl"
    {
        ""      => [ \&_parse_end, 4599 ],
    },
    # [4599] "sbc a , iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9d], $_[0]) }, 0 ],
    },
    # [4600] "sbc a , l"
    {
        ""      => [ \&_parse_end, 4601 ],
    },
    # [4601] "sbc a , l &_parse_end"
    {
        ""      => [ sub { return ([0x9d], $_[0]) }, 0 ],
    },
    # [4602] "sbc a , lx"
    {
        ""      => [ \&_parse_end, 4603 ],
    },
    # [4603] "sbc a , lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9d], $_[0]) }, 0 ],
    },
    # [4604] "sbc a , ly"
    {
        ""      => [ \&_parse_end, 4605 ],
    },
    # [4605] "sbc a , ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9d], $_[0]) }, 0 ],
    },
    # [4606] "sbc a , xh"
    {
        ""      => [ \&_parse_end, 4607 ],
    },
    # [4607] "sbc a , xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9c], $_[0]) }, 0 ],
    },
    # [4608] "sbc a , xl"
    {
        ""      => [ \&_parse_end, 4609 ],
    },
    # [4609] "sbc a , xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x9d], $_[0]) }, 0 ],
    },
    # [4610] "sbc a , yh"
    {
        ""      => [ \&_parse_end, 4611 ],
    },
    # [4611] "sbc a , yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9c], $_[0]) }, 0 ],
    },
    # [4612] "sbc a , yl"
    {
        ""      => [ \&_parse_end, 4613 ],
    },
    # [4613] "sbc a , yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x9d], $_[0]) }, 0 ],
    },
    # [4614] "sbc hl"
    {
        ","     => 4615,
    },
    # [4615] "sbc hl ,"
    {
        "bc"    => 4616,
        "de"    => 4618,
        "hl"    => 4620,
        "sp"    => 4622,
    },
    # [4616] "sbc hl , bc"
    {
        ""      => [ \&_parse_end, 4617 ],
    },
    # [4617] "sbc hl , bc &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x42], $_[0]) }, 0 ],
    },
    # [4618] "sbc hl , de"
    {
        ""      => [ \&_parse_end, 4619 ],
    },
    # [4619] "sbc hl , de &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x52], $_[0]) }, 0 ],
    },
    # [4620] "sbc hl , hl"
    {
        ""      => [ \&_parse_end, 4621 ],
    },
    # [4621] "sbc hl , hl &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x62], $_[0]) }, 0 ],
    },
    # [4622] "sbc hl , sp"
    {
        ""      => [ \&_parse_end, 4623 ],
    },
    # [4623] "sbc hl , sp &_parse_end"
    {
        ""      => [ sub { return ([0xed, 0x72], $_[0]) }, 0 ],
    },
    # [4624] "scf"
    {
        ""      => [ \&_parse_end, 4625 ],
    },
    # [4625] "scf &_parse_end"
    {
        ""      => [ sub { return ([0x37], $_[0]) }, 0 ],
    },
    # [4626] "set"
    {
        0       => 4627,
        1       => 4731,
        2       => 4835,
        3       => 4939,
        4       => 5043,
        5       => 5147,
        6       => 5251,
        7       => 5355,
    },
    # [4627] "set 0"
    {
        ","     => 4628,
    },
    # [4628] "set 0 ,"
    {
        "("     => 4629,
        "["     => 4673,
        "a"     => 4717,
        "b"     => 4719,
        "c"     => 4721,
        "d"     => 4723,
        "e"     => 4725,
        "h"     => 4727,
        "l"     => 4729,
    },
    # [4629] "set 0 , ("
    {
        "hl"    => 4630,
        "ix"    => 4633,
        "iy"    => 4653,
    },
    # [4630] "set 0 , ( hl"
    {
        ")"     => 4631,
    },
    # [4631] "set 0 , ( hl )"
    {
        ""      => [ \&_parse_end, 4632 ],
    },
    # [4632] "set 0 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc6], $_[0]) }, 0 ],
    },
    # [4633] "set 0 , ( ix"
    {
        "+"     => 4634,
    },
    # [4634] "set 0 , ( ix +"
    {
        "DIS"   => 4635,
    },
    # [4635] "set 0 , ( ix + DIS"
    {
        ")"     => 4636,
    },
    # [4636] "set 0 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4637 ],
        ","     => 4638,
    },
    # [4637] "set 0 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc6], $_[0]) }, 0 ],
    },
    # [4638] "set 0 , ( ix + DIS ) ,"
    {
        "a"     => 4639,
        "b"     => 4641,
        "c"     => 4643,
        "d"     => 4645,
        "e"     => 4647,
        "h"     => 4649,
        "l"     => 4651,
    },
    # [4639] "set 0 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4640 ],
    },
    # [4640] "set 0 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc7], $_[0]) }, 0 ],
    },
    # [4641] "set 0 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4642 ],
    },
    # [4642] "set 0 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc0], $_[0]) }, 0 ],
    },
    # [4643] "set 0 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4644 ],
    },
    # [4644] "set 0 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc1], $_[0]) }, 0 ],
    },
    # [4645] "set 0 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4646 ],
    },
    # [4646] "set 0 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc2], $_[0]) }, 0 ],
    },
    # [4647] "set 0 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4648 ],
    },
    # [4648] "set 0 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc3], $_[0]) }, 0 ],
    },
    # [4649] "set 0 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4650 ],
    },
    # [4650] "set 0 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc4], $_[0]) }, 0 ],
    },
    # [4651] "set 0 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4652 ],
    },
    # [4652] "set 0 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc5], $_[0]) }, 0 ],
    },
    # [4653] "set 0 , ( iy"
    {
        "+"     => 4654,
    },
    # [4654] "set 0 , ( iy +"
    {
        "DIS"   => 4655,
    },
    # [4655] "set 0 , ( iy + DIS"
    {
        ")"     => 4656,
    },
    # [4656] "set 0 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4657 ],
        ","     => 4658,
    },
    # [4657] "set 0 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc6], $_[0]) }, 0 ],
    },
    # [4658] "set 0 , ( iy + DIS ) ,"
    {
        "a"     => 4659,
        "b"     => 4661,
        "c"     => 4663,
        "d"     => 4665,
        "e"     => 4667,
        "h"     => 4669,
        "l"     => 4671,
    },
    # [4659] "set 0 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4660 ],
    },
    # [4660] "set 0 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc7], $_[0]) }, 0 ],
    },
    # [4661] "set 0 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4662 ],
    },
    # [4662] "set 0 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc0], $_[0]) }, 0 ],
    },
    # [4663] "set 0 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4664 ],
    },
    # [4664] "set 0 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc1], $_[0]) }, 0 ],
    },
    # [4665] "set 0 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4666 ],
    },
    # [4666] "set 0 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc2], $_[0]) }, 0 ],
    },
    # [4667] "set 0 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4668 ],
    },
    # [4668] "set 0 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc3], $_[0]) }, 0 ],
    },
    # [4669] "set 0 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4670 ],
    },
    # [4670] "set 0 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc4], $_[0]) }, 0 ],
    },
    # [4671] "set 0 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4672 ],
    },
    # [4672] "set 0 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc5], $_[0]) }, 0 ],
    },
    # [4673] "set 0 , ["
    {
        "hl"    => 4674,
        "ix"    => 4677,
        "iy"    => 4697,
    },
    # [4674] "set 0 , [ hl"
    {
        "]"     => 4675,
    },
    # [4675] "set 0 , [ hl ]"
    {
        ""      => [ \&_parse_end, 4676 ],
    },
    # [4676] "set 0 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc6], $_[0]) }, 0 ],
    },
    # [4677] "set 0 , [ ix"
    {
        "+"     => 4678,
    },
    # [4678] "set 0 , [ ix +"
    {
        "DIS"   => 4679,
    },
    # [4679] "set 0 , [ ix + DIS"
    {
        "]"     => 4680,
    },
    # [4680] "set 0 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4681 ],
        ","     => 4682,
    },
    # [4681] "set 0 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc6], $_[0]) }, 0 ],
    },
    # [4682] "set 0 , [ ix + DIS ] ,"
    {
        "a"     => 4683,
        "b"     => 4685,
        "c"     => 4687,
        "d"     => 4689,
        "e"     => 4691,
        "h"     => 4693,
        "l"     => 4695,
    },
    # [4683] "set 0 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4684 ],
    },
    # [4684] "set 0 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc7], $_[0]) }, 0 ],
    },
    # [4685] "set 0 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4686 ],
    },
    # [4686] "set 0 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc0], $_[0]) }, 0 ],
    },
    # [4687] "set 0 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4688 ],
    },
    # [4688] "set 0 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc1], $_[0]) }, 0 ],
    },
    # [4689] "set 0 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4690 ],
    },
    # [4690] "set 0 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc2], $_[0]) }, 0 ],
    },
    # [4691] "set 0 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4692 ],
    },
    # [4692] "set 0 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc3], $_[0]) }, 0 ],
    },
    # [4693] "set 0 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4694 ],
    },
    # [4694] "set 0 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc4], $_[0]) }, 0 ],
    },
    # [4695] "set 0 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4696 ],
    },
    # [4696] "set 0 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc5], $_[0]) }, 0 ],
    },
    # [4697] "set 0 , [ iy"
    {
        "+"     => 4698,
    },
    # [4698] "set 0 , [ iy +"
    {
        "DIS"   => 4699,
    },
    # [4699] "set 0 , [ iy + DIS"
    {
        "]"     => 4700,
    },
    # [4700] "set 0 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4701 ],
        ","     => 4702,
    },
    # [4701] "set 0 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc6], $_[0]) }, 0 ],
    },
    # [4702] "set 0 , [ iy + DIS ] ,"
    {
        "a"     => 4703,
        "b"     => 4705,
        "c"     => 4707,
        "d"     => 4709,
        "e"     => 4711,
        "h"     => 4713,
        "l"     => 4715,
    },
    # [4703] "set 0 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4704 ],
    },
    # [4704] "set 0 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc7], $_[0]) }, 0 ],
    },
    # [4705] "set 0 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4706 ],
    },
    # [4706] "set 0 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc0], $_[0]) }, 0 ],
    },
    # [4707] "set 0 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4708 ],
    },
    # [4708] "set 0 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc1], $_[0]) }, 0 ],
    },
    # [4709] "set 0 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4710 ],
    },
    # [4710] "set 0 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc2], $_[0]) }, 0 ],
    },
    # [4711] "set 0 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4712 ],
    },
    # [4712] "set 0 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc3], $_[0]) }, 0 ],
    },
    # [4713] "set 0 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4714 ],
    },
    # [4714] "set 0 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc4], $_[0]) }, 0 ],
    },
    # [4715] "set 0 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4716 ],
    },
    # [4716] "set 0 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc5], $_[0]) }, 0 ],
    },
    # [4717] "set 0 , a"
    {
        ""      => [ \&_parse_end, 4718 ],
    },
    # [4718] "set 0 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc7], $_[0]) }, 0 ],
    },
    # [4719] "set 0 , b"
    {
        ""      => [ \&_parse_end, 4720 ],
    },
    # [4720] "set 0 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc0], $_[0]) }, 0 ],
    },
    # [4721] "set 0 , c"
    {
        ""      => [ \&_parse_end, 4722 ],
    },
    # [4722] "set 0 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc1], $_[0]) }, 0 ],
    },
    # [4723] "set 0 , d"
    {
        ""      => [ \&_parse_end, 4724 ],
    },
    # [4724] "set 0 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc2], $_[0]) }, 0 ],
    },
    # [4725] "set 0 , e"
    {
        ""      => [ \&_parse_end, 4726 ],
    },
    # [4726] "set 0 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc3], $_[0]) }, 0 ],
    },
    # [4727] "set 0 , h"
    {
        ""      => [ \&_parse_end, 4728 ],
    },
    # [4728] "set 0 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc4], $_[0]) }, 0 ],
    },
    # [4729] "set 0 , l"
    {
        ""      => [ \&_parse_end, 4730 ],
    },
    # [4730] "set 0 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc5], $_[0]) }, 0 ],
    },
    # [4731] "set 1"
    {
        ","     => 4732,
    },
    # [4732] "set 1 ,"
    {
        "("     => 4733,
        "["     => 4777,
        "a"     => 4821,
        "b"     => 4823,
        "c"     => 4825,
        "d"     => 4827,
        "e"     => 4829,
        "h"     => 4831,
        "l"     => 4833,
    },
    # [4733] "set 1 , ("
    {
        "hl"    => 4734,
        "ix"    => 4737,
        "iy"    => 4757,
    },
    # [4734] "set 1 , ( hl"
    {
        ")"     => 4735,
    },
    # [4735] "set 1 , ( hl )"
    {
        ""      => [ \&_parse_end, 4736 ],
    },
    # [4736] "set 1 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xce], $_[0]) }, 0 ],
    },
    # [4737] "set 1 , ( ix"
    {
        "+"     => 4738,
    },
    # [4738] "set 1 , ( ix +"
    {
        "DIS"   => 4739,
    },
    # [4739] "set 1 , ( ix + DIS"
    {
        ")"     => 4740,
    },
    # [4740] "set 1 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4741 ],
        ","     => 4742,
    },
    # [4741] "set 1 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xce], $_[0]) }, 0 ],
    },
    # [4742] "set 1 , ( ix + DIS ) ,"
    {
        "a"     => 4743,
        "b"     => 4745,
        "c"     => 4747,
        "d"     => 4749,
        "e"     => 4751,
        "h"     => 4753,
        "l"     => 4755,
    },
    # [4743] "set 1 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4744 ],
    },
    # [4744] "set 1 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcf], $_[0]) }, 0 ],
    },
    # [4745] "set 1 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4746 ],
    },
    # [4746] "set 1 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc8], $_[0]) }, 0 ],
    },
    # [4747] "set 1 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4748 ],
    },
    # [4748] "set 1 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc9], $_[0]) }, 0 ],
    },
    # [4749] "set 1 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4750 ],
    },
    # [4750] "set 1 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xca], $_[0]) }, 0 ],
    },
    # [4751] "set 1 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4752 ],
    },
    # [4752] "set 1 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcb], $_[0]) }, 0 ],
    },
    # [4753] "set 1 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4754 ],
    },
    # [4754] "set 1 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcc], $_[0]) }, 0 ],
    },
    # [4755] "set 1 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4756 ],
    },
    # [4756] "set 1 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcd], $_[0]) }, 0 ],
    },
    # [4757] "set 1 , ( iy"
    {
        "+"     => 4758,
    },
    # [4758] "set 1 , ( iy +"
    {
        "DIS"   => 4759,
    },
    # [4759] "set 1 , ( iy + DIS"
    {
        ")"     => 4760,
    },
    # [4760] "set 1 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4761 ],
        ","     => 4762,
    },
    # [4761] "set 1 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xce], $_[0]) }, 0 ],
    },
    # [4762] "set 1 , ( iy + DIS ) ,"
    {
        "a"     => 4763,
        "b"     => 4765,
        "c"     => 4767,
        "d"     => 4769,
        "e"     => 4771,
        "h"     => 4773,
        "l"     => 4775,
    },
    # [4763] "set 1 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4764 ],
    },
    # [4764] "set 1 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcf], $_[0]) }, 0 ],
    },
    # [4765] "set 1 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4766 ],
    },
    # [4766] "set 1 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc8], $_[0]) }, 0 ],
    },
    # [4767] "set 1 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4768 ],
    },
    # [4768] "set 1 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc9], $_[0]) }, 0 ],
    },
    # [4769] "set 1 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4770 ],
    },
    # [4770] "set 1 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xca], $_[0]) }, 0 ],
    },
    # [4771] "set 1 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4772 ],
    },
    # [4772] "set 1 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcb], $_[0]) }, 0 ],
    },
    # [4773] "set 1 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4774 ],
    },
    # [4774] "set 1 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcc], $_[0]) }, 0 ],
    },
    # [4775] "set 1 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4776 ],
    },
    # [4776] "set 1 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcd], $_[0]) }, 0 ],
    },
    # [4777] "set 1 , ["
    {
        "hl"    => 4778,
        "ix"    => 4781,
        "iy"    => 4801,
    },
    # [4778] "set 1 , [ hl"
    {
        "]"     => 4779,
    },
    # [4779] "set 1 , [ hl ]"
    {
        ""      => [ \&_parse_end, 4780 ],
    },
    # [4780] "set 1 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xce], $_[0]) }, 0 ],
    },
    # [4781] "set 1 , [ ix"
    {
        "+"     => 4782,
    },
    # [4782] "set 1 , [ ix +"
    {
        "DIS"   => 4783,
    },
    # [4783] "set 1 , [ ix + DIS"
    {
        "]"     => 4784,
    },
    # [4784] "set 1 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4785 ],
        ","     => 4786,
    },
    # [4785] "set 1 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xce], $_[0]) }, 0 ],
    },
    # [4786] "set 1 , [ ix + DIS ] ,"
    {
        "a"     => 4787,
        "b"     => 4789,
        "c"     => 4791,
        "d"     => 4793,
        "e"     => 4795,
        "h"     => 4797,
        "l"     => 4799,
    },
    # [4787] "set 1 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4788 ],
    },
    # [4788] "set 1 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcf], $_[0]) }, 0 ],
    },
    # [4789] "set 1 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4790 ],
    },
    # [4790] "set 1 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc8], $_[0]) }, 0 ],
    },
    # [4791] "set 1 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4792 ],
    },
    # [4792] "set 1 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xc9], $_[0]) }, 0 ],
    },
    # [4793] "set 1 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4794 ],
    },
    # [4794] "set 1 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xca], $_[0]) }, 0 ],
    },
    # [4795] "set 1 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4796 ],
    },
    # [4796] "set 1 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcb], $_[0]) }, 0 ],
    },
    # [4797] "set 1 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4798 ],
    },
    # [4798] "set 1 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcc], $_[0]) }, 0 ],
    },
    # [4799] "set 1 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4800 ],
    },
    # [4800] "set 1 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xcd], $_[0]) }, 0 ],
    },
    # [4801] "set 1 , [ iy"
    {
        "+"     => 4802,
    },
    # [4802] "set 1 , [ iy +"
    {
        "DIS"   => 4803,
    },
    # [4803] "set 1 , [ iy + DIS"
    {
        "]"     => 4804,
    },
    # [4804] "set 1 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4805 ],
        ","     => 4806,
    },
    # [4805] "set 1 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xce], $_[0]) }, 0 ],
    },
    # [4806] "set 1 , [ iy + DIS ] ,"
    {
        "a"     => 4807,
        "b"     => 4809,
        "c"     => 4811,
        "d"     => 4813,
        "e"     => 4815,
        "h"     => 4817,
        "l"     => 4819,
    },
    # [4807] "set 1 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4808 ],
    },
    # [4808] "set 1 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcf], $_[0]) }, 0 ],
    },
    # [4809] "set 1 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4810 ],
    },
    # [4810] "set 1 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc8], $_[0]) }, 0 ],
    },
    # [4811] "set 1 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4812 ],
    },
    # [4812] "set 1 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xc9], $_[0]) }, 0 ],
    },
    # [4813] "set 1 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4814 ],
    },
    # [4814] "set 1 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xca], $_[0]) }, 0 ],
    },
    # [4815] "set 1 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4816 ],
    },
    # [4816] "set 1 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcb], $_[0]) }, 0 ],
    },
    # [4817] "set 1 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4818 ],
    },
    # [4818] "set 1 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcc], $_[0]) }, 0 ],
    },
    # [4819] "set 1 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4820 ],
    },
    # [4820] "set 1 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xcd], $_[0]) }, 0 ],
    },
    # [4821] "set 1 , a"
    {
        ""      => [ \&_parse_end, 4822 ],
    },
    # [4822] "set 1 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xcf], $_[0]) }, 0 ],
    },
    # [4823] "set 1 , b"
    {
        ""      => [ \&_parse_end, 4824 ],
    },
    # [4824] "set 1 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc8], $_[0]) }, 0 ],
    },
    # [4825] "set 1 , c"
    {
        ""      => [ \&_parse_end, 4826 ],
    },
    # [4826] "set 1 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xc9], $_[0]) }, 0 ],
    },
    # [4827] "set 1 , d"
    {
        ""      => [ \&_parse_end, 4828 ],
    },
    # [4828] "set 1 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xca], $_[0]) }, 0 ],
    },
    # [4829] "set 1 , e"
    {
        ""      => [ \&_parse_end, 4830 ],
    },
    # [4830] "set 1 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xcb], $_[0]) }, 0 ],
    },
    # [4831] "set 1 , h"
    {
        ""      => [ \&_parse_end, 4832 ],
    },
    # [4832] "set 1 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xcc], $_[0]) }, 0 ],
    },
    # [4833] "set 1 , l"
    {
        ""      => [ \&_parse_end, 4834 ],
    },
    # [4834] "set 1 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xcd], $_[0]) }, 0 ],
    },
    # [4835] "set 2"
    {
        ","     => 4836,
    },
    # [4836] "set 2 ,"
    {
        "("     => 4837,
        "["     => 4881,
        "a"     => 4925,
        "b"     => 4927,
        "c"     => 4929,
        "d"     => 4931,
        "e"     => 4933,
        "h"     => 4935,
        "l"     => 4937,
    },
    # [4837] "set 2 , ("
    {
        "hl"    => 4838,
        "ix"    => 4841,
        "iy"    => 4861,
    },
    # [4838] "set 2 , ( hl"
    {
        ")"     => 4839,
    },
    # [4839] "set 2 , ( hl )"
    {
        ""      => [ \&_parse_end, 4840 ],
    },
    # [4840] "set 2 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd6], $_[0]) }, 0 ],
    },
    # [4841] "set 2 , ( ix"
    {
        "+"     => 4842,
    },
    # [4842] "set 2 , ( ix +"
    {
        "DIS"   => 4843,
    },
    # [4843] "set 2 , ( ix + DIS"
    {
        ")"     => 4844,
    },
    # [4844] "set 2 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4845 ],
        ","     => 4846,
    },
    # [4845] "set 2 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd6], $_[0]) }, 0 ],
    },
    # [4846] "set 2 , ( ix + DIS ) ,"
    {
        "a"     => 4847,
        "b"     => 4849,
        "c"     => 4851,
        "d"     => 4853,
        "e"     => 4855,
        "h"     => 4857,
        "l"     => 4859,
    },
    # [4847] "set 2 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4848 ],
    },
    # [4848] "set 2 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd7], $_[0]) }, 0 ],
    },
    # [4849] "set 2 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4850 ],
    },
    # [4850] "set 2 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd0], $_[0]) }, 0 ],
    },
    # [4851] "set 2 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4852 ],
    },
    # [4852] "set 2 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd1], $_[0]) }, 0 ],
    },
    # [4853] "set 2 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4854 ],
    },
    # [4854] "set 2 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd2], $_[0]) }, 0 ],
    },
    # [4855] "set 2 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4856 ],
    },
    # [4856] "set 2 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd3], $_[0]) }, 0 ],
    },
    # [4857] "set 2 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4858 ],
    },
    # [4858] "set 2 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd4], $_[0]) }, 0 ],
    },
    # [4859] "set 2 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4860 ],
    },
    # [4860] "set 2 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd5], $_[0]) }, 0 ],
    },
    # [4861] "set 2 , ( iy"
    {
        "+"     => 4862,
    },
    # [4862] "set 2 , ( iy +"
    {
        "DIS"   => 4863,
    },
    # [4863] "set 2 , ( iy + DIS"
    {
        ")"     => 4864,
    },
    # [4864] "set 2 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4865 ],
        ","     => 4866,
    },
    # [4865] "set 2 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd6], $_[0]) }, 0 ],
    },
    # [4866] "set 2 , ( iy + DIS ) ,"
    {
        "a"     => 4867,
        "b"     => 4869,
        "c"     => 4871,
        "d"     => 4873,
        "e"     => 4875,
        "h"     => 4877,
        "l"     => 4879,
    },
    # [4867] "set 2 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4868 ],
    },
    # [4868] "set 2 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd7], $_[0]) }, 0 ],
    },
    # [4869] "set 2 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4870 ],
    },
    # [4870] "set 2 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd0], $_[0]) }, 0 ],
    },
    # [4871] "set 2 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4872 ],
    },
    # [4872] "set 2 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd1], $_[0]) }, 0 ],
    },
    # [4873] "set 2 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4874 ],
    },
    # [4874] "set 2 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd2], $_[0]) }, 0 ],
    },
    # [4875] "set 2 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4876 ],
    },
    # [4876] "set 2 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd3], $_[0]) }, 0 ],
    },
    # [4877] "set 2 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4878 ],
    },
    # [4878] "set 2 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd4], $_[0]) }, 0 ],
    },
    # [4879] "set 2 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4880 ],
    },
    # [4880] "set 2 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd5], $_[0]) }, 0 ],
    },
    # [4881] "set 2 , ["
    {
        "hl"    => 4882,
        "ix"    => 4885,
        "iy"    => 4905,
    },
    # [4882] "set 2 , [ hl"
    {
        "]"     => 4883,
    },
    # [4883] "set 2 , [ hl ]"
    {
        ""      => [ \&_parse_end, 4884 ],
    },
    # [4884] "set 2 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd6], $_[0]) }, 0 ],
    },
    # [4885] "set 2 , [ ix"
    {
        "+"     => 4886,
    },
    # [4886] "set 2 , [ ix +"
    {
        "DIS"   => 4887,
    },
    # [4887] "set 2 , [ ix + DIS"
    {
        "]"     => 4888,
    },
    # [4888] "set 2 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4889 ],
        ","     => 4890,
    },
    # [4889] "set 2 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd6], $_[0]) }, 0 ],
    },
    # [4890] "set 2 , [ ix + DIS ] ,"
    {
        "a"     => 4891,
        "b"     => 4893,
        "c"     => 4895,
        "d"     => 4897,
        "e"     => 4899,
        "h"     => 4901,
        "l"     => 4903,
    },
    # [4891] "set 2 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4892 ],
    },
    # [4892] "set 2 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd7], $_[0]) }, 0 ],
    },
    # [4893] "set 2 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4894 ],
    },
    # [4894] "set 2 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd0], $_[0]) }, 0 ],
    },
    # [4895] "set 2 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4896 ],
    },
    # [4896] "set 2 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd1], $_[0]) }, 0 ],
    },
    # [4897] "set 2 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4898 ],
    },
    # [4898] "set 2 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd2], $_[0]) }, 0 ],
    },
    # [4899] "set 2 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4900 ],
    },
    # [4900] "set 2 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd3], $_[0]) }, 0 ],
    },
    # [4901] "set 2 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4902 ],
    },
    # [4902] "set 2 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd4], $_[0]) }, 0 ],
    },
    # [4903] "set 2 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4904 ],
    },
    # [4904] "set 2 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd5], $_[0]) }, 0 ],
    },
    # [4905] "set 2 , [ iy"
    {
        "+"     => 4906,
    },
    # [4906] "set 2 , [ iy +"
    {
        "DIS"   => 4907,
    },
    # [4907] "set 2 , [ iy + DIS"
    {
        "]"     => 4908,
    },
    # [4908] "set 2 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 4909 ],
        ","     => 4910,
    },
    # [4909] "set 2 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd6], $_[0]) }, 0 ],
    },
    # [4910] "set 2 , [ iy + DIS ] ,"
    {
        "a"     => 4911,
        "b"     => 4913,
        "c"     => 4915,
        "d"     => 4917,
        "e"     => 4919,
        "h"     => 4921,
        "l"     => 4923,
    },
    # [4911] "set 2 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4912 ],
    },
    # [4912] "set 2 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd7], $_[0]) }, 0 ],
    },
    # [4913] "set 2 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4914 ],
    },
    # [4914] "set 2 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd0], $_[0]) }, 0 ],
    },
    # [4915] "set 2 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 4916 ],
    },
    # [4916] "set 2 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd1], $_[0]) }, 0 ],
    },
    # [4917] "set 2 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 4918 ],
    },
    # [4918] "set 2 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd2], $_[0]) }, 0 ],
    },
    # [4919] "set 2 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 4920 ],
    },
    # [4920] "set 2 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd3], $_[0]) }, 0 ],
    },
    # [4921] "set 2 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 4922 ],
    },
    # [4922] "set 2 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd4], $_[0]) }, 0 ],
    },
    # [4923] "set 2 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 4924 ],
    },
    # [4924] "set 2 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd5], $_[0]) }, 0 ],
    },
    # [4925] "set 2 , a"
    {
        ""      => [ \&_parse_end, 4926 ],
    },
    # [4926] "set 2 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd7], $_[0]) }, 0 ],
    },
    # [4927] "set 2 , b"
    {
        ""      => [ \&_parse_end, 4928 ],
    },
    # [4928] "set 2 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd0], $_[0]) }, 0 ],
    },
    # [4929] "set 2 , c"
    {
        ""      => [ \&_parse_end, 4930 ],
    },
    # [4930] "set 2 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd1], $_[0]) }, 0 ],
    },
    # [4931] "set 2 , d"
    {
        ""      => [ \&_parse_end, 4932 ],
    },
    # [4932] "set 2 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd2], $_[0]) }, 0 ],
    },
    # [4933] "set 2 , e"
    {
        ""      => [ \&_parse_end, 4934 ],
    },
    # [4934] "set 2 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd3], $_[0]) }, 0 ],
    },
    # [4935] "set 2 , h"
    {
        ""      => [ \&_parse_end, 4936 ],
    },
    # [4936] "set 2 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd4], $_[0]) }, 0 ],
    },
    # [4937] "set 2 , l"
    {
        ""      => [ \&_parse_end, 4938 ],
    },
    # [4938] "set 2 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd5], $_[0]) }, 0 ],
    },
    # [4939] "set 3"
    {
        ","     => 4940,
    },
    # [4940] "set 3 ,"
    {
        "("     => 4941,
        "["     => 4985,
        "a"     => 5029,
        "b"     => 5031,
        "c"     => 5033,
        "d"     => 5035,
        "e"     => 5037,
        "h"     => 5039,
        "l"     => 5041,
    },
    # [4941] "set 3 , ("
    {
        "hl"    => 4942,
        "ix"    => 4945,
        "iy"    => 4965,
    },
    # [4942] "set 3 , ( hl"
    {
        ")"     => 4943,
    },
    # [4943] "set 3 , ( hl )"
    {
        ""      => [ \&_parse_end, 4944 ],
    },
    # [4944] "set 3 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xde], $_[0]) }, 0 ],
    },
    # [4945] "set 3 , ( ix"
    {
        "+"     => 4946,
    },
    # [4946] "set 3 , ( ix +"
    {
        "DIS"   => 4947,
    },
    # [4947] "set 3 , ( ix + DIS"
    {
        ")"     => 4948,
    },
    # [4948] "set 3 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 4949 ],
        ","     => 4950,
    },
    # [4949] "set 3 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xde], $_[0]) }, 0 ],
    },
    # [4950] "set 3 , ( ix + DIS ) ,"
    {
        "a"     => 4951,
        "b"     => 4953,
        "c"     => 4955,
        "d"     => 4957,
        "e"     => 4959,
        "h"     => 4961,
        "l"     => 4963,
    },
    # [4951] "set 3 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4952 ],
    },
    # [4952] "set 3 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdf], $_[0]) }, 0 ],
    },
    # [4953] "set 3 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4954 ],
    },
    # [4954] "set 3 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd8], $_[0]) }, 0 ],
    },
    # [4955] "set 3 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4956 ],
    },
    # [4956] "set 3 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd9], $_[0]) }, 0 ],
    },
    # [4957] "set 3 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4958 ],
    },
    # [4958] "set 3 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xda], $_[0]) }, 0 ],
    },
    # [4959] "set 3 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4960 ],
    },
    # [4960] "set 3 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdb], $_[0]) }, 0 ],
    },
    # [4961] "set 3 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4962 ],
    },
    # [4962] "set 3 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdc], $_[0]) }, 0 ],
    },
    # [4963] "set 3 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4964 ],
    },
    # [4964] "set 3 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdd], $_[0]) }, 0 ],
    },
    # [4965] "set 3 , ( iy"
    {
        "+"     => 4966,
    },
    # [4966] "set 3 , ( iy +"
    {
        "DIS"   => 4967,
    },
    # [4967] "set 3 , ( iy + DIS"
    {
        ")"     => 4968,
    },
    # [4968] "set 3 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 4969 ],
        ","     => 4970,
    },
    # [4969] "set 3 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xde], $_[0]) }, 0 ],
    },
    # [4970] "set 3 , ( iy + DIS ) ,"
    {
        "a"     => 4971,
        "b"     => 4973,
        "c"     => 4975,
        "d"     => 4977,
        "e"     => 4979,
        "h"     => 4981,
        "l"     => 4983,
    },
    # [4971] "set 3 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 4972 ],
    },
    # [4972] "set 3 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdf], $_[0]) }, 0 ],
    },
    # [4973] "set 3 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 4974 ],
    },
    # [4974] "set 3 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd8], $_[0]) }, 0 ],
    },
    # [4975] "set 3 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 4976 ],
    },
    # [4976] "set 3 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd9], $_[0]) }, 0 ],
    },
    # [4977] "set 3 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 4978 ],
    },
    # [4978] "set 3 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xda], $_[0]) }, 0 ],
    },
    # [4979] "set 3 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 4980 ],
    },
    # [4980] "set 3 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdb], $_[0]) }, 0 ],
    },
    # [4981] "set 3 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 4982 ],
    },
    # [4982] "set 3 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdc], $_[0]) }, 0 ],
    },
    # [4983] "set 3 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 4984 ],
    },
    # [4984] "set 3 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdd], $_[0]) }, 0 ],
    },
    # [4985] "set 3 , ["
    {
        "hl"    => 4986,
        "ix"    => 4989,
        "iy"    => 5009,
    },
    # [4986] "set 3 , [ hl"
    {
        "]"     => 4987,
    },
    # [4987] "set 3 , [ hl ]"
    {
        ""      => [ \&_parse_end, 4988 ],
    },
    # [4988] "set 3 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xde], $_[0]) }, 0 ],
    },
    # [4989] "set 3 , [ ix"
    {
        "+"     => 4990,
    },
    # [4990] "set 3 , [ ix +"
    {
        "DIS"   => 4991,
    },
    # [4991] "set 3 , [ ix + DIS"
    {
        "]"     => 4992,
    },
    # [4992] "set 3 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 4993 ],
        ","     => 4994,
    },
    # [4993] "set 3 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xde], $_[0]) }, 0 ],
    },
    # [4994] "set 3 , [ ix + DIS ] ,"
    {
        "a"     => 4995,
        "b"     => 4997,
        "c"     => 4999,
        "d"     => 5001,
        "e"     => 5003,
        "h"     => 5005,
        "l"     => 5007,
    },
    # [4995] "set 3 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 4996 ],
    },
    # [4996] "set 3 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdf], $_[0]) }, 0 ],
    },
    # [4997] "set 3 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 4998 ],
    },
    # [4998] "set 3 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd8], $_[0]) }, 0 ],
    },
    # [4999] "set 3 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5000 ],
    },
    # [5000] "set 3 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xd9], $_[0]) }, 0 ],
    },
    # [5001] "set 3 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5002 ],
    },
    # [5002] "set 3 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xda], $_[0]) }, 0 ],
    },
    # [5003] "set 3 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5004 ],
    },
    # [5004] "set 3 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdb], $_[0]) }, 0 ],
    },
    # [5005] "set 3 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5006 ],
    },
    # [5006] "set 3 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdc], $_[0]) }, 0 ],
    },
    # [5007] "set 3 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5008 ],
    },
    # [5008] "set 3 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xdd], $_[0]) }, 0 ],
    },
    # [5009] "set 3 , [ iy"
    {
        "+"     => 5010,
    },
    # [5010] "set 3 , [ iy +"
    {
        "DIS"   => 5011,
    },
    # [5011] "set 3 , [ iy + DIS"
    {
        "]"     => 5012,
    },
    # [5012] "set 3 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5013 ],
        ","     => 5014,
    },
    # [5013] "set 3 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xde], $_[0]) }, 0 ],
    },
    # [5014] "set 3 , [ iy + DIS ] ,"
    {
        "a"     => 5015,
        "b"     => 5017,
        "c"     => 5019,
        "d"     => 5021,
        "e"     => 5023,
        "h"     => 5025,
        "l"     => 5027,
    },
    # [5015] "set 3 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5016 ],
    },
    # [5016] "set 3 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdf], $_[0]) }, 0 ],
    },
    # [5017] "set 3 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5018 ],
    },
    # [5018] "set 3 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd8], $_[0]) }, 0 ],
    },
    # [5019] "set 3 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5020 ],
    },
    # [5020] "set 3 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xd9], $_[0]) }, 0 ],
    },
    # [5021] "set 3 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5022 ],
    },
    # [5022] "set 3 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xda], $_[0]) }, 0 ],
    },
    # [5023] "set 3 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5024 ],
    },
    # [5024] "set 3 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdb], $_[0]) }, 0 ],
    },
    # [5025] "set 3 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5026 ],
    },
    # [5026] "set 3 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdc], $_[0]) }, 0 ],
    },
    # [5027] "set 3 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5028 ],
    },
    # [5028] "set 3 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xdd], $_[0]) }, 0 ],
    },
    # [5029] "set 3 , a"
    {
        ""      => [ \&_parse_end, 5030 ],
    },
    # [5030] "set 3 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xdf], $_[0]) }, 0 ],
    },
    # [5031] "set 3 , b"
    {
        ""      => [ \&_parse_end, 5032 ],
    },
    # [5032] "set 3 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd8], $_[0]) }, 0 ],
    },
    # [5033] "set 3 , c"
    {
        ""      => [ \&_parse_end, 5034 ],
    },
    # [5034] "set 3 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xd9], $_[0]) }, 0 ],
    },
    # [5035] "set 3 , d"
    {
        ""      => [ \&_parse_end, 5036 ],
    },
    # [5036] "set 3 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xda], $_[0]) }, 0 ],
    },
    # [5037] "set 3 , e"
    {
        ""      => [ \&_parse_end, 5038 ],
    },
    # [5038] "set 3 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xdb], $_[0]) }, 0 ],
    },
    # [5039] "set 3 , h"
    {
        ""      => [ \&_parse_end, 5040 ],
    },
    # [5040] "set 3 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xdc], $_[0]) }, 0 ],
    },
    # [5041] "set 3 , l"
    {
        ""      => [ \&_parse_end, 5042 ],
    },
    # [5042] "set 3 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xdd], $_[0]) }, 0 ],
    },
    # [5043] "set 4"
    {
        ","     => 5044,
    },
    # [5044] "set 4 ,"
    {
        "("     => 5045,
        "["     => 5089,
        "a"     => 5133,
        "b"     => 5135,
        "c"     => 5137,
        "d"     => 5139,
        "e"     => 5141,
        "h"     => 5143,
        "l"     => 5145,
    },
    # [5045] "set 4 , ("
    {
        "hl"    => 5046,
        "ix"    => 5049,
        "iy"    => 5069,
    },
    # [5046] "set 4 , ( hl"
    {
        ")"     => 5047,
    },
    # [5047] "set 4 , ( hl )"
    {
        ""      => [ \&_parse_end, 5048 ],
    },
    # [5048] "set 4 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe6], $_[0]) }, 0 ],
    },
    # [5049] "set 4 , ( ix"
    {
        "+"     => 5050,
    },
    # [5050] "set 4 , ( ix +"
    {
        "DIS"   => 5051,
    },
    # [5051] "set 4 , ( ix + DIS"
    {
        ")"     => 5052,
    },
    # [5052] "set 4 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5053 ],
        ","     => 5054,
    },
    # [5053] "set 4 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe6], $_[0]) }, 0 ],
    },
    # [5054] "set 4 , ( ix + DIS ) ,"
    {
        "a"     => 5055,
        "b"     => 5057,
        "c"     => 5059,
        "d"     => 5061,
        "e"     => 5063,
        "h"     => 5065,
        "l"     => 5067,
    },
    # [5055] "set 4 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5056 ],
    },
    # [5056] "set 4 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe7], $_[0]) }, 0 ],
    },
    # [5057] "set 4 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5058 ],
    },
    # [5058] "set 4 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe0], $_[0]) }, 0 ],
    },
    # [5059] "set 4 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5060 ],
    },
    # [5060] "set 4 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe1], $_[0]) }, 0 ],
    },
    # [5061] "set 4 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5062 ],
    },
    # [5062] "set 4 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe2], $_[0]) }, 0 ],
    },
    # [5063] "set 4 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5064 ],
    },
    # [5064] "set 4 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe3], $_[0]) }, 0 ],
    },
    # [5065] "set 4 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5066 ],
    },
    # [5066] "set 4 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe4], $_[0]) }, 0 ],
    },
    # [5067] "set 4 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5068 ],
    },
    # [5068] "set 4 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe5], $_[0]) }, 0 ],
    },
    # [5069] "set 4 , ( iy"
    {
        "+"     => 5070,
    },
    # [5070] "set 4 , ( iy +"
    {
        "DIS"   => 5071,
    },
    # [5071] "set 4 , ( iy + DIS"
    {
        ")"     => 5072,
    },
    # [5072] "set 4 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5073 ],
        ","     => 5074,
    },
    # [5073] "set 4 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe6], $_[0]) }, 0 ],
    },
    # [5074] "set 4 , ( iy + DIS ) ,"
    {
        "a"     => 5075,
        "b"     => 5077,
        "c"     => 5079,
        "d"     => 5081,
        "e"     => 5083,
        "h"     => 5085,
        "l"     => 5087,
    },
    # [5075] "set 4 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5076 ],
    },
    # [5076] "set 4 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe7], $_[0]) }, 0 ],
    },
    # [5077] "set 4 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5078 ],
    },
    # [5078] "set 4 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe0], $_[0]) }, 0 ],
    },
    # [5079] "set 4 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5080 ],
    },
    # [5080] "set 4 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe1], $_[0]) }, 0 ],
    },
    # [5081] "set 4 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5082 ],
    },
    # [5082] "set 4 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe2], $_[0]) }, 0 ],
    },
    # [5083] "set 4 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5084 ],
    },
    # [5084] "set 4 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe3], $_[0]) }, 0 ],
    },
    # [5085] "set 4 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5086 ],
    },
    # [5086] "set 4 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe4], $_[0]) }, 0 ],
    },
    # [5087] "set 4 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5088 ],
    },
    # [5088] "set 4 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe5], $_[0]) }, 0 ],
    },
    # [5089] "set 4 , ["
    {
        "hl"    => 5090,
        "ix"    => 5093,
        "iy"    => 5113,
    },
    # [5090] "set 4 , [ hl"
    {
        "]"     => 5091,
    },
    # [5091] "set 4 , [ hl ]"
    {
        ""      => [ \&_parse_end, 5092 ],
    },
    # [5092] "set 4 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe6], $_[0]) }, 0 ],
    },
    # [5093] "set 4 , [ ix"
    {
        "+"     => 5094,
    },
    # [5094] "set 4 , [ ix +"
    {
        "DIS"   => 5095,
    },
    # [5095] "set 4 , [ ix + DIS"
    {
        "]"     => 5096,
    },
    # [5096] "set 4 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5097 ],
        ","     => 5098,
    },
    # [5097] "set 4 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe6], $_[0]) }, 0 ],
    },
    # [5098] "set 4 , [ ix + DIS ] ,"
    {
        "a"     => 5099,
        "b"     => 5101,
        "c"     => 5103,
        "d"     => 5105,
        "e"     => 5107,
        "h"     => 5109,
        "l"     => 5111,
    },
    # [5099] "set 4 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5100 ],
    },
    # [5100] "set 4 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe7], $_[0]) }, 0 ],
    },
    # [5101] "set 4 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5102 ],
    },
    # [5102] "set 4 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe0], $_[0]) }, 0 ],
    },
    # [5103] "set 4 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5104 ],
    },
    # [5104] "set 4 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe1], $_[0]) }, 0 ],
    },
    # [5105] "set 4 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5106 ],
    },
    # [5106] "set 4 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe2], $_[0]) }, 0 ],
    },
    # [5107] "set 4 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5108 ],
    },
    # [5108] "set 4 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe3], $_[0]) }, 0 ],
    },
    # [5109] "set 4 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5110 ],
    },
    # [5110] "set 4 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe4], $_[0]) }, 0 ],
    },
    # [5111] "set 4 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5112 ],
    },
    # [5112] "set 4 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe5], $_[0]) }, 0 ],
    },
    # [5113] "set 4 , [ iy"
    {
        "+"     => 5114,
    },
    # [5114] "set 4 , [ iy +"
    {
        "DIS"   => 5115,
    },
    # [5115] "set 4 , [ iy + DIS"
    {
        "]"     => 5116,
    },
    # [5116] "set 4 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5117 ],
        ","     => 5118,
    },
    # [5117] "set 4 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe6], $_[0]) }, 0 ],
    },
    # [5118] "set 4 , [ iy + DIS ] ,"
    {
        "a"     => 5119,
        "b"     => 5121,
        "c"     => 5123,
        "d"     => 5125,
        "e"     => 5127,
        "h"     => 5129,
        "l"     => 5131,
    },
    # [5119] "set 4 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5120 ],
    },
    # [5120] "set 4 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe7], $_[0]) }, 0 ],
    },
    # [5121] "set 4 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5122 ],
    },
    # [5122] "set 4 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe0], $_[0]) }, 0 ],
    },
    # [5123] "set 4 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5124 ],
    },
    # [5124] "set 4 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe1], $_[0]) }, 0 ],
    },
    # [5125] "set 4 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5126 ],
    },
    # [5126] "set 4 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe2], $_[0]) }, 0 ],
    },
    # [5127] "set 4 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5128 ],
    },
    # [5128] "set 4 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe3], $_[0]) }, 0 ],
    },
    # [5129] "set 4 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5130 ],
    },
    # [5130] "set 4 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe4], $_[0]) }, 0 ],
    },
    # [5131] "set 4 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5132 ],
    },
    # [5132] "set 4 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe5], $_[0]) }, 0 ],
    },
    # [5133] "set 4 , a"
    {
        ""      => [ \&_parse_end, 5134 ],
    },
    # [5134] "set 4 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe7], $_[0]) }, 0 ],
    },
    # [5135] "set 4 , b"
    {
        ""      => [ \&_parse_end, 5136 ],
    },
    # [5136] "set 4 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe0], $_[0]) }, 0 ],
    },
    # [5137] "set 4 , c"
    {
        ""      => [ \&_parse_end, 5138 ],
    },
    # [5138] "set 4 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe1], $_[0]) }, 0 ],
    },
    # [5139] "set 4 , d"
    {
        ""      => [ \&_parse_end, 5140 ],
    },
    # [5140] "set 4 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe2], $_[0]) }, 0 ],
    },
    # [5141] "set 4 , e"
    {
        ""      => [ \&_parse_end, 5142 ],
    },
    # [5142] "set 4 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe3], $_[0]) }, 0 ],
    },
    # [5143] "set 4 , h"
    {
        ""      => [ \&_parse_end, 5144 ],
    },
    # [5144] "set 4 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe4], $_[0]) }, 0 ],
    },
    # [5145] "set 4 , l"
    {
        ""      => [ \&_parse_end, 5146 ],
    },
    # [5146] "set 4 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe5], $_[0]) }, 0 ],
    },
    # [5147] "set 5"
    {
        ","     => 5148,
    },
    # [5148] "set 5 ,"
    {
        "("     => 5149,
        "["     => 5193,
        "a"     => 5237,
        "b"     => 5239,
        "c"     => 5241,
        "d"     => 5243,
        "e"     => 5245,
        "h"     => 5247,
        "l"     => 5249,
    },
    # [5149] "set 5 , ("
    {
        "hl"    => 5150,
        "ix"    => 5153,
        "iy"    => 5173,
    },
    # [5150] "set 5 , ( hl"
    {
        ")"     => 5151,
    },
    # [5151] "set 5 , ( hl )"
    {
        ""      => [ \&_parse_end, 5152 ],
    },
    # [5152] "set 5 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xee], $_[0]) }, 0 ],
    },
    # [5153] "set 5 , ( ix"
    {
        "+"     => 5154,
    },
    # [5154] "set 5 , ( ix +"
    {
        "DIS"   => 5155,
    },
    # [5155] "set 5 , ( ix + DIS"
    {
        ")"     => 5156,
    },
    # [5156] "set 5 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5157 ],
        ","     => 5158,
    },
    # [5157] "set 5 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xee], $_[0]) }, 0 ],
    },
    # [5158] "set 5 , ( ix + DIS ) ,"
    {
        "a"     => 5159,
        "b"     => 5161,
        "c"     => 5163,
        "d"     => 5165,
        "e"     => 5167,
        "h"     => 5169,
        "l"     => 5171,
    },
    # [5159] "set 5 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5160 ],
    },
    # [5160] "set 5 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xef], $_[0]) }, 0 ],
    },
    # [5161] "set 5 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5162 ],
    },
    # [5162] "set 5 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe8], $_[0]) }, 0 ],
    },
    # [5163] "set 5 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5164 ],
    },
    # [5164] "set 5 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe9], $_[0]) }, 0 ],
    },
    # [5165] "set 5 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5166 ],
    },
    # [5166] "set 5 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xea], $_[0]) }, 0 ],
    },
    # [5167] "set 5 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5168 ],
    },
    # [5168] "set 5 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xeb], $_[0]) }, 0 ],
    },
    # [5169] "set 5 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5170 ],
    },
    # [5170] "set 5 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xec], $_[0]) }, 0 ],
    },
    # [5171] "set 5 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5172 ],
    },
    # [5172] "set 5 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xed], $_[0]) }, 0 ],
    },
    # [5173] "set 5 , ( iy"
    {
        "+"     => 5174,
    },
    # [5174] "set 5 , ( iy +"
    {
        "DIS"   => 5175,
    },
    # [5175] "set 5 , ( iy + DIS"
    {
        ")"     => 5176,
    },
    # [5176] "set 5 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5177 ],
        ","     => 5178,
    },
    # [5177] "set 5 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xee], $_[0]) }, 0 ],
    },
    # [5178] "set 5 , ( iy + DIS ) ,"
    {
        "a"     => 5179,
        "b"     => 5181,
        "c"     => 5183,
        "d"     => 5185,
        "e"     => 5187,
        "h"     => 5189,
        "l"     => 5191,
    },
    # [5179] "set 5 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5180 ],
    },
    # [5180] "set 5 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xef], $_[0]) }, 0 ],
    },
    # [5181] "set 5 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5182 ],
    },
    # [5182] "set 5 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe8], $_[0]) }, 0 ],
    },
    # [5183] "set 5 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5184 ],
    },
    # [5184] "set 5 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe9], $_[0]) }, 0 ],
    },
    # [5185] "set 5 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5186 ],
    },
    # [5186] "set 5 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xea], $_[0]) }, 0 ],
    },
    # [5187] "set 5 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5188 ],
    },
    # [5188] "set 5 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xeb], $_[0]) }, 0 ],
    },
    # [5189] "set 5 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5190 ],
    },
    # [5190] "set 5 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xec], $_[0]) }, 0 ],
    },
    # [5191] "set 5 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5192 ],
    },
    # [5192] "set 5 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xed], $_[0]) }, 0 ],
    },
    # [5193] "set 5 , ["
    {
        "hl"    => 5194,
        "ix"    => 5197,
        "iy"    => 5217,
    },
    # [5194] "set 5 , [ hl"
    {
        "]"     => 5195,
    },
    # [5195] "set 5 , [ hl ]"
    {
        ""      => [ \&_parse_end, 5196 ],
    },
    # [5196] "set 5 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xee], $_[0]) }, 0 ],
    },
    # [5197] "set 5 , [ ix"
    {
        "+"     => 5198,
    },
    # [5198] "set 5 , [ ix +"
    {
        "DIS"   => 5199,
    },
    # [5199] "set 5 , [ ix + DIS"
    {
        "]"     => 5200,
    },
    # [5200] "set 5 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5201 ],
        ","     => 5202,
    },
    # [5201] "set 5 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xee], $_[0]) }, 0 ],
    },
    # [5202] "set 5 , [ ix + DIS ] ,"
    {
        "a"     => 5203,
        "b"     => 5205,
        "c"     => 5207,
        "d"     => 5209,
        "e"     => 5211,
        "h"     => 5213,
        "l"     => 5215,
    },
    # [5203] "set 5 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5204 ],
    },
    # [5204] "set 5 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xef], $_[0]) }, 0 ],
    },
    # [5205] "set 5 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5206 ],
    },
    # [5206] "set 5 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe8], $_[0]) }, 0 ],
    },
    # [5207] "set 5 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5208 ],
    },
    # [5208] "set 5 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xe9], $_[0]) }, 0 ],
    },
    # [5209] "set 5 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5210 ],
    },
    # [5210] "set 5 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xea], $_[0]) }, 0 ],
    },
    # [5211] "set 5 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5212 ],
    },
    # [5212] "set 5 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xeb], $_[0]) }, 0 ],
    },
    # [5213] "set 5 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5214 ],
    },
    # [5214] "set 5 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xec], $_[0]) }, 0 ],
    },
    # [5215] "set 5 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5216 ],
    },
    # [5216] "set 5 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xed], $_[0]) }, 0 ],
    },
    # [5217] "set 5 , [ iy"
    {
        "+"     => 5218,
    },
    # [5218] "set 5 , [ iy +"
    {
        "DIS"   => 5219,
    },
    # [5219] "set 5 , [ iy + DIS"
    {
        "]"     => 5220,
    },
    # [5220] "set 5 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5221 ],
        ","     => 5222,
    },
    # [5221] "set 5 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xee], $_[0]) }, 0 ],
    },
    # [5222] "set 5 , [ iy + DIS ] ,"
    {
        "a"     => 5223,
        "b"     => 5225,
        "c"     => 5227,
        "d"     => 5229,
        "e"     => 5231,
        "h"     => 5233,
        "l"     => 5235,
    },
    # [5223] "set 5 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5224 ],
    },
    # [5224] "set 5 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xef], $_[0]) }, 0 ],
    },
    # [5225] "set 5 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5226 ],
    },
    # [5226] "set 5 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe8], $_[0]) }, 0 ],
    },
    # [5227] "set 5 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5228 ],
    },
    # [5228] "set 5 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xe9], $_[0]) }, 0 ],
    },
    # [5229] "set 5 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5230 ],
    },
    # [5230] "set 5 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xea], $_[0]) }, 0 ],
    },
    # [5231] "set 5 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5232 ],
    },
    # [5232] "set 5 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xeb], $_[0]) }, 0 ],
    },
    # [5233] "set 5 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5234 ],
    },
    # [5234] "set 5 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xec], $_[0]) }, 0 ],
    },
    # [5235] "set 5 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5236 ],
    },
    # [5236] "set 5 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xed], $_[0]) }, 0 ],
    },
    # [5237] "set 5 , a"
    {
        ""      => [ \&_parse_end, 5238 ],
    },
    # [5238] "set 5 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xef], $_[0]) }, 0 ],
    },
    # [5239] "set 5 , b"
    {
        ""      => [ \&_parse_end, 5240 ],
    },
    # [5240] "set 5 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe8], $_[0]) }, 0 ],
    },
    # [5241] "set 5 , c"
    {
        ""      => [ \&_parse_end, 5242 ],
    },
    # [5242] "set 5 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xe9], $_[0]) }, 0 ],
    },
    # [5243] "set 5 , d"
    {
        ""      => [ \&_parse_end, 5244 ],
    },
    # [5244] "set 5 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xea], $_[0]) }, 0 ],
    },
    # [5245] "set 5 , e"
    {
        ""      => [ \&_parse_end, 5246 ],
    },
    # [5246] "set 5 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xeb], $_[0]) }, 0 ],
    },
    # [5247] "set 5 , h"
    {
        ""      => [ \&_parse_end, 5248 ],
    },
    # [5248] "set 5 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xec], $_[0]) }, 0 ],
    },
    # [5249] "set 5 , l"
    {
        ""      => [ \&_parse_end, 5250 ],
    },
    # [5250] "set 5 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xed], $_[0]) }, 0 ],
    },
    # [5251] "set 6"
    {
        ","     => 5252,
    },
    # [5252] "set 6 ,"
    {
        "("     => 5253,
        "["     => 5297,
        "a"     => 5341,
        "b"     => 5343,
        "c"     => 5345,
        "d"     => 5347,
        "e"     => 5349,
        "h"     => 5351,
        "l"     => 5353,
    },
    # [5253] "set 6 , ("
    {
        "hl"    => 5254,
        "ix"    => 5257,
        "iy"    => 5277,
    },
    # [5254] "set 6 , ( hl"
    {
        ")"     => 5255,
    },
    # [5255] "set 6 , ( hl )"
    {
        ""      => [ \&_parse_end, 5256 ],
    },
    # [5256] "set 6 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf6], $_[0]) }, 0 ],
    },
    # [5257] "set 6 , ( ix"
    {
        "+"     => 5258,
    },
    # [5258] "set 6 , ( ix +"
    {
        "DIS"   => 5259,
    },
    # [5259] "set 6 , ( ix + DIS"
    {
        ")"     => 5260,
    },
    # [5260] "set 6 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5261 ],
        ","     => 5262,
    },
    # [5261] "set 6 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf6], $_[0]) }, 0 ],
    },
    # [5262] "set 6 , ( ix + DIS ) ,"
    {
        "a"     => 5263,
        "b"     => 5265,
        "c"     => 5267,
        "d"     => 5269,
        "e"     => 5271,
        "h"     => 5273,
        "l"     => 5275,
    },
    # [5263] "set 6 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5264 ],
    },
    # [5264] "set 6 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf7], $_[0]) }, 0 ],
    },
    # [5265] "set 6 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5266 ],
    },
    # [5266] "set 6 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf0], $_[0]) }, 0 ],
    },
    # [5267] "set 6 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5268 ],
    },
    # [5268] "set 6 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf1], $_[0]) }, 0 ],
    },
    # [5269] "set 6 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5270 ],
    },
    # [5270] "set 6 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf2], $_[0]) }, 0 ],
    },
    # [5271] "set 6 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5272 ],
    },
    # [5272] "set 6 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf3], $_[0]) }, 0 ],
    },
    # [5273] "set 6 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5274 ],
    },
    # [5274] "set 6 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf4], $_[0]) }, 0 ],
    },
    # [5275] "set 6 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5276 ],
    },
    # [5276] "set 6 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf5], $_[0]) }, 0 ],
    },
    # [5277] "set 6 , ( iy"
    {
        "+"     => 5278,
    },
    # [5278] "set 6 , ( iy +"
    {
        "DIS"   => 5279,
    },
    # [5279] "set 6 , ( iy + DIS"
    {
        ")"     => 5280,
    },
    # [5280] "set 6 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5281 ],
        ","     => 5282,
    },
    # [5281] "set 6 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf6], $_[0]) }, 0 ],
    },
    # [5282] "set 6 , ( iy + DIS ) ,"
    {
        "a"     => 5283,
        "b"     => 5285,
        "c"     => 5287,
        "d"     => 5289,
        "e"     => 5291,
        "h"     => 5293,
        "l"     => 5295,
    },
    # [5283] "set 6 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5284 ],
    },
    # [5284] "set 6 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf7], $_[0]) }, 0 ],
    },
    # [5285] "set 6 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5286 ],
    },
    # [5286] "set 6 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf0], $_[0]) }, 0 ],
    },
    # [5287] "set 6 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5288 ],
    },
    # [5288] "set 6 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf1], $_[0]) }, 0 ],
    },
    # [5289] "set 6 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5290 ],
    },
    # [5290] "set 6 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf2], $_[0]) }, 0 ],
    },
    # [5291] "set 6 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5292 ],
    },
    # [5292] "set 6 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf3], $_[0]) }, 0 ],
    },
    # [5293] "set 6 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5294 ],
    },
    # [5294] "set 6 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf4], $_[0]) }, 0 ],
    },
    # [5295] "set 6 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5296 ],
    },
    # [5296] "set 6 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf5], $_[0]) }, 0 ],
    },
    # [5297] "set 6 , ["
    {
        "hl"    => 5298,
        "ix"    => 5301,
        "iy"    => 5321,
    },
    # [5298] "set 6 , [ hl"
    {
        "]"     => 5299,
    },
    # [5299] "set 6 , [ hl ]"
    {
        ""      => [ \&_parse_end, 5300 ],
    },
    # [5300] "set 6 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf6], $_[0]) }, 0 ],
    },
    # [5301] "set 6 , [ ix"
    {
        "+"     => 5302,
    },
    # [5302] "set 6 , [ ix +"
    {
        "DIS"   => 5303,
    },
    # [5303] "set 6 , [ ix + DIS"
    {
        "]"     => 5304,
    },
    # [5304] "set 6 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5305 ],
        ","     => 5306,
    },
    # [5305] "set 6 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf6], $_[0]) }, 0 ],
    },
    # [5306] "set 6 , [ ix + DIS ] ,"
    {
        "a"     => 5307,
        "b"     => 5309,
        "c"     => 5311,
        "d"     => 5313,
        "e"     => 5315,
        "h"     => 5317,
        "l"     => 5319,
    },
    # [5307] "set 6 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5308 ],
    },
    # [5308] "set 6 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf7], $_[0]) }, 0 ],
    },
    # [5309] "set 6 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5310 ],
    },
    # [5310] "set 6 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf0], $_[0]) }, 0 ],
    },
    # [5311] "set 6 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5312 ],
    },
    # [5312] "set 6 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf1], $_[0]) }, 0 ],
    },
    # [5313] "set 6 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5314 ],
    },
    # [5314] "set 6 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf2], $_[0]) }, 0 ],
    },
    # [5315] "set 6 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5316 ],
    },
    # [5316] "set 6 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf3], $_[0]) }, 0 ],
    },
    # [5317] "set 6 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5318 ],
    },
    # [5318] "set 6 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf4], $_[0]) }, 0 ],
    },
    # [5319] "set 6 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5320 ],
    },
    # [5320] "set 6 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf5], $_[0]) }, 0 ],
    },
    # [5321] "set 6 , [ iy"
    {
        "+"     => 5322,
    },
    # [5322] "set 6 , [ iy +"
    {
        "DIS"   => 5323,
    },
    # [5323] "set 6 , [ iy + DIS"
    {
        "]"     => 5324,
    },
    # [5324] "set 6 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5325 ],
        ","     => 5326,
    },
    # [5325] "set 6 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf6], $_[0]) }, 0 ],
    },
    # [5326] "set 6 , [ iy + DIS ] ,"
    {
        "a"     => 5327,
        "b"     => 5329,
        "c"     => 5331,
        "d"     => 5333,
        "e"     => 5335,
        "h"     => 5337,
        "l"     => 5339,
    },
    # [5327] "set 6 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5328 ],
    },
    # [5328] "set 6 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf7], $_[0]) }, 0 ],
    },
    # [5329] "set 6 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5330 ],
    },
    # [5330] "set 6 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf0], $_[0]) }, 0 ],
    },
    # [5331] "set 6 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5332 ],
    },
    # [5332] "set 6 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf1], $_[0]) }, 0 ],
    },
    # [5333] "set 6 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5334 ],
    },
    # [5334] "set 6 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf2], $_[0]) }, 0 ],
    },
    # [5335] "set 6 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5336 ],
    },
    # [5336] "set 6 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf3], $_[0]) }, 0 ],
    },
    # [5337] "set 6 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5338 ],
    },
    # [5338] "set 6 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf4], $_[0]) }, 0 ],
    },
    # [5339] "set 6 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5340 ],
    },
    # [5340] "set 6 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf5], $_[0]) }, 0 ],
    },
    # [5341] "set 6 , a"
    {
        ""      => [ \&_parse_end, 5342 ],
    },
    # [5342] "set 6 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf7], $_[0]) }, 0 ],
    },
    # [5343] "set 6 , b"
    {
        ""      => [ \&_parse_end, 5344 ],
    },
    # [5344] "set 6 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf0], $_[0]) }, 0 ],
    },
    # [5345] "set 6 , c"
    {
        ""      => [ \&_parse_end, 5346 ],
    },
    # [5346] "set 6 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf1], $_[0]) }, 0 ],
    },
    # [5347] "set 6 , d"
    {
        ""      => [ \&_parse_end, 5348 ],
    },
    # [5348] "set 6 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf2], $_[0]) }, 0 ],
    },
    # [5349] "set 6 , e"
    {
        ""      => [ \&_parse_end, 5350 ],
    },
    # [5350] "set 6 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf3], $_[0]) }, 0 ],
    },
    # [5351] "set 6 , h"
    {
        ""      => [ \&_parse_end, 5352 ],
    },
    # [5352] "set 6 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf4], $_[0]) }, 0 ],
    },
    # [5353] "set 6 , l"
    {
        ""      => [ \&_parse_end, 5354 ],
    },
    # [5354] "set 6 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf5], $_[0]) }, 0 ],
    },
    # [5355] "set 7"
    {
        ","     => 5356,
    },
    # [5356] "set 7 ,"
    {
        "("     => 5357,
        "["     => 5401,
        "a"     => 5445,
        "b"     => 5447,
        "c"     => 5449,
        "d"     => 5451,
        "e"     => 5453,
        "h"     => 5455,
        "l"     => 5457,
    },
    # [5357] "set 7 , ("
    {
        "hl"    => 5358,
        "ix"    => 5361,
        "iy"    => 5381,
    },
    # [5358] "set 7 , ( hl"
    {
        ")"     => 5359,
    },
    # [5359] "set 7 , ( hl )"
    {
        ""      => [ \&_parse_end, 5360 ],
    },
    # [5360] "set 7 , ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xfe], $_[0]) }, 0 ],
    },
    # [5361] "set 7 , ( ix"
    {
        "+"     => 5362,
    },
    # [5362] "set 7 , ( ix +"
    {
        "DIS"   => 5363,
    },
    # [5363] "set 7 , ( ix + DIS"
    {
        ")"     => 5364,
    },
    # [5364] "set 7 , ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5365 ],
        ","     => 5366,
    },
    # [5365] "set 7 , ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfe], $_[0]) }, 0 ],
    },
    # [5366] "set 7 , ( ix + DIS ) ,"
    {
        "a"     => 5367,
        "b"     => 5369,
        "c"     => 5371,
        "d"     => 5373,
        "e"     => 5375,
        "h"     => 5377,
        "l"     => 5379,
    },
    # [5367] "set 7 , ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5368 ],
    },
    # [5368] "set 7 , ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xff], $_[0]) }, 0 ],
    },
    # [5369] "set 7 , ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5370 ],
    },
    # [5370] "set 7 , ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf8], $_[0]) }, 0 ],
    },
    # [5371] "set 7 , ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5372 ],
    },
    # [5372] "set 7 , ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf9], $_[0]) }, 0 ],
    },
    # [5373] "set 7 , ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5374 ],
    },
    # [5374] "set 7 , ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfa], $_[0]) }, 0 ],
    },
    # [5375] "set 7 , ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5376 ],
    },
    # [5376] "set 7 , ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfb], $_[0]) }, 0 ],
    },
    # [5377] "set 7 , ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5378 ],
    },
    # [5378] "set 7 , ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfc], $_[0]) }, 0 ],
    },
    # [5379] "set 7 , ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5380 ],
    },
    # [5380] "set 7 , ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfd], $_[0]) }, 0 ],
    },
    # [5381] "set 7 , ( iy"
    {
        "+"     => 5382,
    },
    # [5382] "set 7 , ( iy +"
    {
        "DIS"   => 5383,
    },
    # [5383] "set 7 , ( iy + DIS"
    {
        ")"     => 5384,
    },
    # [5384] "set 7 , ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5385 ],
        ","     => 5386,
    },
    # [5385] "set 7 , ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfe], $_[0]) }, 0 ],
    },
    # [5386] "set 7 , ( iy + DIS ) ,"
    {
        "a"     => 5387,
        "b"     => 5389,
        "c"     => 5391,
        "d"     => 5393,
        "e"     => 5395,
        "h"     => 5397,
        "l"     => 5399,
    },
    # [5387] "set 7 , ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5388 ],
    },
    # [5388] "set 7 , ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xff], $_[0]) }, 0 ],
    },
    # [5389] "set 7 , ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5390 ],
    },
    # [5390] "set 7 , ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf8], $_[0]) }, 0 ],
    },
    # [5391] "set 7 , ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5392 ],
    },
    # [5392] "set 7 , ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf9], $_[0]) }, 0 ],
    },
    # [5393] "set 7 , ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5394 ],
    },
    # [5394] "set 7 , ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfa], $_[0]) }, 0 ],
    },
    # [5395] "set 7 , ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5396 ],
    },
    # [5396] "set 7 , ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfb], $_[0]) }, 0 ],
    },
    # [5397] "set 7 , ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5398 ],
    },
    # [5398] "set 7 , ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfc], $_[0]) }, 0 ],
    },
    # [5399] "set 7 , ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5400 ],
    },
    # [5400] "set 7 , ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfd], $_[0]) }, 0 ],
    },
    # [5401] "set 7 , ["
    {
        "hl"    => 5402,
        "ix"    => 5405,
        "iy"    => 5425,
    },
    # [5402] "set 7 , [ hl"
    {
        "]"     => 5403,
    },
    # [5403] "set 7 , [ hl ]"
    {
        ""      => [ \&_parse_end, 5404 ],
    },
    # [5404] "set 7 , [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xfe], $_[0]) }, 0 ],
    },
    # [5405] "set 7 , [ ix"
    {
        "+"     => 5406,
    },
    # [5406] "set 7 , [ ix +"
    {
        "DIS"   => 5407,
    },
    # [5407] "set 7 , [ ix + DIS"
    {
        "]"     => 5408,
    },
    # [5408] "set 7 , [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5409 ],
        ","     => 5410,
    },
    # [5409] "set 7 , [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfe], $_[0]) }, 0 ],
    },
    # [5410] "set 7 , [ ix + DIS ] ,"
    {
        "a"     => 5411,
        "b"     => 5413,
        "c"     => 5415,
        "d"     => 5417,
        "e"     => 5419,
        "h"     => 5421,
        "l"     => 5423,
    },
    # [5411] "set 7 , [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5412 ],
    },
    # [5412] "set 7 , [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xff], $_[0]) }, 0 ],
    },
    # [5413] "set 7 , [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5414 ],
    },
    # [5414] "set 7 , [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf8], $_[0]) }, 0 ],
    },
    # [5415] "set 7 , [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5416 ],
    },
    # [5416] "set 7 , [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xf9], $_[0]) }, 0 ],
    },
    # [5417] "set 7 , [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5418 ],
    },
    # [5418] "set 7 , [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfa], $_[0]) }, 0 ],
    },
    # [5419] "set 7 , [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5420 ],
    },
    # [5420] "set 7 , [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfb], $_[0]) }, 0 ],
    },
    # [5421] "set 7 , [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5422 ],
    },
    # [5422] "set 7 , [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfc], $_[0]) }, 0 ],
    },
    # [5423] "set 7 , [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5424 ],
    },
    # [5424] "set 7 , [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0xfd], $_[0]) }, 0 ],
    },
    # [5425] "set 7 , [ iy"
    {
        "+"     => 5426,
    },
    # [5426] "set 7 , [ iy +"
    {
        "DIS"   => 5427,
    },
    # [5427] "set 7 , [ iy + DIS"
    {
        "]"     => 5428,
    },
    # [5428] "set 7 , [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5429 ],
        ","     => 5430,
    },
    # [5429] "set 7 , [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfe], $_[0]) }, 0 ],
    },
    # [5430] "set 7 , [ iy + DIS ] ,"
    {
        "a"     => 5431,
        "b"     => 5433,
        "c"     => 5435,
        "d"     => 5437,
        "e"     => 5439,
        "h"     => 5441,
        "l"     => 5443,
    },
    # [5431] "set 7 , [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5432 ],
    },
    # [5432] "set 7 , [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xff], $_[0]) }, 0 ],
    },
    # [5433] "set 7 , [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5434 ],
    },
    # [5434] "set 7 , [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf8], $_[0]) }, 0 ],
    },
    # [5435] "set 7 , [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5436 ],
    },
    # [5436] "set 7 , [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xf9], $_[0]) }, 0 ],
    },
    # [5437] "set 7 , [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5438 ],
    },
    # [5438] "set 7 , [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfa], $_[0]) }, 0 ],
    },
    # [5439] "set 7 , [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5440 ],
    },
    # [5440] "set 7 , [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfb], $_[0]) }, 0 ],
    },
    # [5441] "set 7 , [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5442 ],
    },
    # [5442] "set 7 , [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfc], $_[0]) }, 0 ],
    },
    # [5443] "set 7 , [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5444 ],
    },
    # [5444] "set 7 , [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0xfd], $_[0]) }, 0 ],
    },
    # [5445] "set 7 , a"
    {
        ""      => [ \&_parse_end, 5446 ],
    },
    # [5446] "set 7 , a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xff], $_[0]) }, 0 ],
    },
    # [5447] "set 7 , b"
    {
        ""      => [ \&_parse_end, 5448 ],
    },
    # [5448] "set 7 , b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf8], $_[0]) }, 0 ],
    },
    # [5449] "set 7 , c"
    {
        ""      => [ \&_parse_end, 5450 ],
    },
    # [5450] "set 7 , c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xf9], $_[0]) }, 0 ],
    },
    # [5451] "set 7 , d"
    {
        ""      => [ \&_parse_end, 5452 ],
    },
    # [5452] "set 7 , d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xfa], $_[0]) }, 0 ],
    },
    # [5453] "set 7 , e"
    {
        ""      => [ \&_parse_end, 5454 ],
    },
    # [5454] "set 7 , e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xfb], $_[0]) }, 0 ],
    },
    # [5455] "set 7 , h"
    {
        ""      => [ \&_parse_end, 5456 ],
    },
    # [5456] "set 7 , h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xfc], $_[0]) }, 0 ],
    },
    # [5457] "set 7 , l"
    {
        ""      => [ \&_parse_end, 5458 ],
    },
    # [5458] "set 7 , l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0xfd], $_[0]) }, 0 ],
    },
    # [5459] "sla"
    {
        "("     => 5460,
        "["     => 5504,
        "a"     => 5548,
        "b"     => 5550,
        "bc"    => 5552,
        "c"     => 5554,
        "d"     => 5556,
        "de"    => 5558,
        "e"     => 5560,
        "h"     => 5562,
        "hl"    => 5564,
        "l"     => 5566,
    },
    # [5460] "sla ("
    {
        "hl"    => 5461,
        "ix"    => 5464,
        "iy"    => 5484,
    },
    # [5461] "sla ( hl"
    {
        ")"     => 5462,
    },
    # [5462] "sla ( hl )"
    {
        ""      => [ \&_parse_end, 5463 ],
    },
    # [5463] "sla ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x26], $_[0]) }, 0 ],
    },
    # [5464] "sla ( ix"
    {
        "+"     => 5465,
    },
    # [5465] "sla ( ix +"
    {
        "DIS"   => 5466,
    },
    # [5466] "sla ( ix + DIS"
    {
        ")"     => 5467,
    },
    # [5467] "sla ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5468 ],
        ","     => 5469,
    },
    # [5468] "sla ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x26], $_[0]) }, 0 ],
    },
    # [5469] "sla ( ix + DIS ) ,"
    {
        "a"     => 5470,
        "b"     => 5472,
        "c"     => 5474,
        "d"     => 5476,
        "e"     => 5478,
        "h"     => 5480,
        "l"     => 5482,
    },
    # [5470] "sla ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5471 ],
    },
    # [5471] "sla ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x27], $_[0]) }, 0 ],
    },
    # [5472] "sla ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5473 ],
    },
    # [5473] "sla ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x20], $_[0]) }, 0 ],
    },
    # [5474] "sla ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5475 ],
    },
    # [5475] "sla ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x21], $_[0]) }, 0 ],
    },
    # [5476] "sla ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5477 ],
    },
    # [5477] "sla ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x22], $_[0]) }, 0 ],
    },
    # [5478] "sla ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5479 ],
    },
    # [5479] "sla ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x23], $_[0]) }, 0 ],
    },
    # [5480] "sla ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5481 ],
    },
    # [5481] "sla ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x24], $_[0]) }, 0 ],
    },
    # [5482] "sla ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5483 ],
    },
    # [5483] "sla ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x25], $_[0]) }, 0 ],
    },
    # [5484] "sla ( iy"
    {
        "+"     => 5485,
    },
    # [5485] "sla ( iy +"
    {
        "DIS"   => 5486,
    },
    # [5486] "sla ( iy + DIS"
    {
        ")"     => 5487,
    },
    # [5487] "sla ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5488 ],
        ","     => 5489,
    },
    # [5488] "sla ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x26], $_[0]) }, 0 ],
    },
    # [5489] "sla ( iy + DIS ) ,"
    {
        "a"     => 5490,
        "b"     => 5492,
        "c"     => 5494,
        "d"     => 5496,
        "e"     => 5498,
        "h"     => 5500,
        "l"     => 5502,
    },
    # [5490] "sla ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5491 ],
    },
    # [5491] "sla ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x27], $_[0]) }, 0 ],
    },
    # [5492] "sla ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5493 ],
    },
    # [5493] "sla ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x20], $_[0]) }, 0 ],
    },
    # [5494] "sla ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5495 ],
    },
    # [5495] "sla ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x21], $_[0]) }, 0 ],
    },
    # [5496] "sla ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5497 ],
    },
    # [5497] "sla ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x22], $_[0]) }, 0 ],
    },
    # [5498] "sla ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5499 ],
    },
    # [5499] "sla ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x23], $_[0]) }, 0 ],
    },
    # [5500] "sla ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5501 ],
    },
    # [5501] "sla ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x24], $_[0]) }, 0 ],
    },
    # [5502] "sla ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5503 ],
    },
    # [5503] "sla ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x25], $_[0]) }, 0 ],
    },
    # [5504] "sla ["
    {
        "hl"    => 5505,
        "ix"    => 5508,
        "iy"    => 5528,
    },
    # [5505] "sla [ hl"
    {
        "]"     => 5506,
    },
    # [5506] "sla [ hl ]"
    {
        ""      => [ \&_parse_end, 5507 ],
    },
    # [5507] "sla [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x26], $_[0]) }, 0 ],
    },
    # [5508] "sla [ ix"
    {
        "+"     => 5509,
    },
    # [5509] "sla [ ix +"
    {
        "DIS"   => 5510,
    },
    # [5510] "sla [ ix + DIS"
    {
        "]"     => 5511,
    },
    # [5511] "sla [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5512 ],
        ","     => 5513,
    },
    # [5512] "sla [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x26], $_[0]) }, 0 ],
    },
    # [5513] "sla [ ix + DIS ] ,"
    {
        "a"     => 5514,
        "b"     => 5516,
        "c"     => 5518,
        "d"     => 5520,
        "e"     => 5522,
        "h"     => 5524,
        "l"     => 5526,
    },
    # [5514] "sla [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5515 ],
    },
    # [5515] "sla [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x27], $_[0]) }, 0 ],
    },
    # [5516] "sla [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5517 ],
    },
    # [5517] "sla [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x20], $_[0]) }, 0 ],
    },
    # [5518] "sla [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5519 ],
    },
    # [5519] "sla [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x21], $_[0]) }, 0 ],
    },
    # [5520] "sla [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5521 ],
    },
    # [5521] "sla [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x22], $_[0]) }, 0 ],
    },
    # [5522] "sla [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5523 ],
    },
    # [5523] "sla [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x23], $_[0]) }, 0 ],
    },
    # [5524] "sla [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5525 ],
    },
    # [5525] "sla [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x24], $_[0]) }, 0 ],
    },
    # [5526] "sla [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5527 ],
    },
    # [5527] "sla [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x25], $_[0]) }, 0 ],
    },
    # [5528] "sla [ iy"
    {
        "+"     => 5529,
    },
    # [5529] "sla [ iy +"
    {
        "DIS"   => 5530,
    },
    # [5530] "sla [ iy + DIS"
    {
        "]"     => 5531,
    },
    # [5531] "sla [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5532 ],
        ","     => 5533,
    },
    # [5532] "sla [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x26], $_[0]) }, 0 ],
    },
    # [5533] "sla [ iy + DIS ] ,"
    {
        "a"     => 5534,
        "b"     => 5536,
        "c"     => 5538,
        "d"     => 5540,
        "e"     => 5542,
        "h"     => 5544,
        "l"     => 5546,
    },
    # [5534] "sla [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5535 ],
    },
    # [5535] "sla [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x27], $_[0]) }, 0 ],
    },
    # [5536] "sla [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5537 ],
    },
    # [5537] "sla [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x20], $_[0]) }, 0 ],
    },
    # [5538] "sla [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5539 ],
    },
    # [5539] "sla [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x21], $_[0]) }, 0 ],
    },
    # [5540] "sla [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5541 ],
    },
    # [5541] "sla [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x22], $_[0]) }, 0 ],
    },
    # [5542] "sla [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5543 ],
    },
    # [5543] "sla [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x23], $_[0]) }, 0 ],
    },
    # [5544] "sla [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5545 ],
    },
    # [5545] "sla [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x24], $_[0]) }, 0 ],
    },
    # [5546] "sla [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5547 ],
    },
    # [5547] "sla [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x25], $_[0]) }, 0 ],
    },
    # [5548] "sla a"
    {
        ""      => [ \&_parse_end, 5549 ],
    },
    # [5549] "sla a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x27], $_[0]) }, 0 ],
    },
    # [5550] "sla b"
    {
        ""      => [ \&_parse_end, 5551 ],
    },
    # [5551] "sla b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x20], $_[0]) }, 0 ],
    },
    # [5552] "sla bc"
    {
        ""      => [ \&_parse_end, 5553 ],
    },
    # [5553] "sla bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x21, 0xcb, 0x10], $_[0]) }, 0 ],
    },
    # [5554] "sla c"
    {
        ""      => [ \&_parse_end, 5555 ],
    },
    # [5555] "sla c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x21], $_[0]) }, 0 ],
    },
    # [5556] "sla d"
    {
        ""      => [ \&_parse_end, 5557 ],
    },
    # [5557] "sla d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x22], $_[0]) }, 0 ],
    },
    # [5558] "sla de"
    {
        ""      => [ \&_parse_end, 5559 ],
    },
    # [5559] "sla de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x23, 0xcb, 0x12], $_[0]) }, 0 ],
    },
    # [5560] "sla e"
    {
        ""      => [ \&_parse_end, 5561 ],
    },
    # [5561] "sla e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x23], $_[0]) }, 0 ],
    },
    # [5562] "sla h"
    {
        ""      => [ \&_parse_end, 5563 ],
    },
    # [5563] "sla h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x24], $_[0]) }, 0 ],
    },
    # [5564] "sla hl"
    {
        ""      => [ \&_parse_end, 5565 ],
    },
    # [5565] "sla hl &_parse_end"
    {
        ""      => [ sub { return ([0x29], $_[0]) }, 0 ],
    },
    # [5566] "sla l"
    {
        ""      => [ \&_parse_end, 5567 ],
    },
    # [5567] "sla l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x25], $_[0]) }, 0 ],
    },
    # [5568] "sli"
    {
        "("     => 5569,
        "["     => 5613,
        "a"     => 5657,
        "b"     => 5659,
        "bc"    => 5661,
        "c"     => 5663,
        "d"     => 5665,
        "de"    => 5667,
        "e"     => 5669,
        "h"     => 5671,
        "hl"    => 5673,
        "l"     => 5675,
    },
    # [5569] "sli ("
    {
        "hl"    => 5570,
        "ix"    => 5573,
        "iy"    => 5593,
    },
    # [5570] "sli ( hl"
    {
        ")"     => 5571,
    },
    # [5571] "sli ( hl )"
    {
        ""      => [ \&_parse_end, 5572 ],
    },
    # [5572] "sli ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x36], $_[0]) }, 0 ],
    },
    # [5573] "sli ( ix"
    {
        "+"     => 5574,
    },
    # [5574] "sli ( ix +"
    {
        "DIS"   => 5575,
    },
    # [5575] "sli ( ix + DIS"
    {
        ")"     => 5576,
    },
    # [5576] "sli ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5577 ],
        ","     => 5578,
    },
    # [5577] "sli ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5578] "sli ( ix + DIS ) ,"
    {
        "a"     => 5579,
        "b"     => 5581,
        "c"     => 5583,
        "d"     => 5585,
        "e"     => 5587,
        "h"     => 5589,
        "l"     => 5591,
    },
    # [5579] "sli ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5580 ],
    },
    # [5580] "sli ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5581] "sli ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5582 ],
    },
    # [5582] "sli ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5583] "sli ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5584 ],
    },
    # [5584] "sli ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5585] "sli ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5586 ],
    },
    # [5586] "sli ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5587] "sli ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5588 ],
    },
    # [5588] "sli ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5589] "sli ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5590 ],
    },
    # [5590] "sli ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5591] "sli ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5592 ],
    },
    # [5592] "sli ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5593] "sli ( iy"
    {
        "+"     => 5594,
    },
    # [5594] "sli ( iy +"
    {
        "DIS"   => 5595,
    },
    # [5595] "sli ( iy + DIS"
    {
        ")"     => 5596,
    },
    # [5596] "sli ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5597 ],
        ","     => 5598,
    },
    # [5597] "sli ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5598] "sli ( iy + DIS ) ,"
    {
        "a"     => 5599,
        "b"     => 5601,
        "c"     => 5603,
        "d"     => 5605,
        "e"     => 5607,
        "h"     => 5609,
        "l"     => 5611,
    },
    # [5599] "sli ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5600 ],
    },
    # [5600] "sli ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5601] "sli ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5602 ],
    },
    # [5602] "sli ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5603] "sli ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5604 ],
    },
    # [5604] "sli ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5605] "sli ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5606 ],
    },
    # [5606] "sli ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5607] "sli ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5608 ],
    },
    # [5608] "sli ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5609] "sli ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5610 ],
    },
    # [5610] "sli ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5611] "sli ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5612 ],
    },
    # [5612] "sli ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5613] "sli ["
    {
        "hl"    => 5614,
        "ix"    => 5617,
        "iy"    => 5637,
    },
    # [5614] "sli [ hl"
    {
        "]"     => 5615,
    },
    # [5615] "sli [ hl ]"
    {
        ""      => [ \&_parse_end, 5616 ],
    },
    # [5616] "sli [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x36], $_[0]) }, 0 ],
    },
    # [5617] "sli [ ix"
    {
        "+"     => 5618,
    },
    # [5618] "sli [ ix +"
    {
        "DIS"   => 5619,
    },
    # [5619] "sli [ ix + DIS"
    {
        "]"     => 5620,
    },
    # [5620] "sli [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5621 ],
        ","     => 5622,
    },
    # [5621] "sli [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5622] "sli [ ix + DIS ] ,"
    {
        "a"     => 5623,
        "b"     => 5625,
        "c"     => 5627,
        "d"     => 5629,
        "e"     => 5631,
        "h"     => 5633,
        "l"     => 5635,
    },
    # [5623] "sli [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5624 ],
    },
    # [5624] "sli [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5625] "sli [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5626 ],
    },
    # [5626] "sli [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5627] "sli [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5628 ],
    },
    # [5628] "sli [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5629] "sli [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5630 ],
    },
    # [5630] "sli [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5631] "sli [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5632 ],
    },
    # [5632] "sli [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5633] "sli [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5634 ],
    },
    # [5634] "sli [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5635] "sli [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5636 ],
    },
    # [5636] "sli [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5637] "sli [ iy"
    {
        "+"     => 5638,
    },
    # [5638] "sli [ iy +"
    {
        "DIS"   => 5639,
    },
    # [5639] "sli [ iy + DIS"
    {
        "]"     => 5640,
    },
    # [5640] "sli [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5641 ],
        ","     => 5642,
    },
    # [5641] "sli [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5642] "sli [ iy + DIS ] ,"
    {
        "a"     => 5643,
        "b"     => 5645,
        "c"     => 5647,
        "d"     => 5649,
        "e"     => 5651,
        "h"     => 5653,
        "l"     => 5655,
    },
    # [5643] "sli [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5644 ],
    },
    # [5644] "sli [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5645] "sli [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5646 ],
    },
    # [5646] "sli [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5647] "sli [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5648 ],
    },
    # [5648] "sli [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5649] "sli [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5650 ],
    },
    # [5650] "sli [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5651] "sli [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5652 ],
    },
    # [5652] "sli [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5653] "sli [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5654 ],
    },
    # [5654] "sli [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5655] "sli [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5656 ],
    },
    # [5656] "sli [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5657] "sli a"
    {
        ""      => [ \&_parse_end, 5658 ],
    },
    # [5658] "sli a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x37], $_[0]) }, 0 ],
    },
    # [5659] "sli b"
    {
        ""      => [ \&_parse_end, 5660 ],
    },
    # [5660] "sli b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x30], $_[0]) }, 0 ],
    },
    # [5661] "sli bc"
    {
        ""      => [ \&_parse_end, 5662 ],
    },
    # [5662] "sli bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x31, 0xcb, 0x10], $_[0]) }, 0 ],
    },
    # [5663] "sli c"
    {
        ""      => [ \&_parse_end, 5664 ],
    },
    # [5664] "sli c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x31], $_[0]) }, 0 ],
    },
    # [5665] "sli d"
    {
        ""      => [ \&_parse_end, 5666 ],
    },
    # [5666] "sli d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x32], $_[0]) }, 0 ],
    },
    # [5667] "sli de"
    {
        ""      => [ \&_parse_end, 5668 ],
    },
    # [5668] "sli de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x33, 0xcb, 0x12], $_[0]) }, 0 ],
    },
    # [5669] "sli e"
    {
        ""      => [ \&_parse_end, 5670 ],
    },
    # [5670] "sli e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x33], $_[0]) }, 0 ],
    },
    # [5671] "sli h"
    {
        ""      => [ \&_parse_end, 5672 ],
    },
    # [5672] "sli h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x34], $_[0]) }, 0 ],
    },
    # [5673] "sli hl"
    {
        ""      => [ \&_parse_end, 5674 ],
    },
    # [5674] "sli hl &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x35, 0xcb, 0x14], $_[0]) }, 0 ],
    },
    # [5675] "sli l"
    {
        ""      => [ \&_parse_end, 5676 ],
    },
    # [5676] "sli l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x35], $_[0]) }, 0 ],
    },
    # [5677] "sll"
    {
        "("     => 5678,
        "["     => 5722,
        "a"     => 5766,
        "b"     => 5768,
        "bc"    => 5770,
        "c"     => 5772,
        "d"     => 5774,
        "de"    => 5776,
        "e"     => 5778,
        "h"     => 5780,
        "hl"    => 5782,
        "l"     => 5784,
    },
    # [5678] "sll ("
    {
        "hl"    => 5679,
        "ix"    => 5682,
        "iy"    => 5702,
    },
    # [5679] "sll ( hl"
    {
        ")"     => 5680,
    },
    # [5680] "sll ( hl )"
    {
        ""      => [ \&_parse_end, 5681 ],
    },
    # [5681] "sll ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x36], $_[0]) }, 0 ],
    },
    # [5682] "sll ( ix"
    {
        "+"     => 5683,
    },
    # [5683] "sll ( ix +"
    {
        "DIS"   => 5684,
    },
    # [5684] "sll ( ix + DIS"
    {
        ")"     => 5685,
    },
    # [5685] "sll ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5686 ],
        ","     => 5687,
    },
    # [5686] "sll ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5687] "sll ( ix + DIS ) ,"
    {
        "a"     => 5688,
        "b"     => 5690,
        "c"     => 5692,
        "d"     => 5694,
        "e"     => 5696,
        "h"     => 5698,
        "l"     => 5700,
    },
    # [5688] "sll ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5689 ],
    },
    # [5689] "sll ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5690] "sll ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5691 ],
    },
    # [5691] "sll ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5692] "sll ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5693 ],
    },
    # [5693] "sll ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5694] "sll ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5695 ],
    },
    # [5695] "sll ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5696] "sll ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5697 ],
    },
    # [5697] "sll ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5698] "sll ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5699 ],
    },
    # [5699] "sll ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5700] "sll ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5701 ],
    },
    # [5701] "sll ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5702] "sll ( iy"
    {
        "+"     => 5703,
    },
    # [5703] "sll ( iy +"
    {
        "DIS"   => 5704,
    },
    # [5704] "sll ( iy + DIS"
    {
        ")"     => 5705,
    },
    # [5705] "sll ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5706 ],
        ","     => 5707,
    },
    # [5706] "sll ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5707] "sll ( iy + DIS ) ,"
    {
        "a"     => 5708,
        "b"     => 5710,
        "c"     => 5712,
        "d"     => 5714,
        "e"     => 5716,
        "h"     => 5718,
        "l"     => 5720,
    },
    # [5708] "sll ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5709 ],
    },
    # [5709] "sll ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5710] "sll ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5711 ],
    },
    # [5711] "sll ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5712] "sll ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5713 ],
    },
    # [5713] "sll ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5714] "sll ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5715 ],
    },
    # [5715] "sll ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5716] "sll ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5717 ],
    },
    # [5717] "sll ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5718] "sll ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5719 ],
    },
    # [5719] "sll ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5720] "sll ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5721 ],
    },
    # [5721] "sll ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5722] "sll ["
    {
        "hl"    => 5723,
        "ix"    => 5726,
        "iy"    => 5746,
    },
    # [5723] "sll [ hl"
    {
        "]"     => 5724,
    },
    # [5724] "sll [ hl ]"
    {
        ""      => [ \&_parse_end, 5725 ],
    },
    # [5725] "sll [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x36], $_[0]) }, 0 ],
    },
    # [5726] "sll [ ix"
    {
        "+"     => 5727,
    },
    # [5727] "sll [ ix +"
    {
        "DIS"   => 5728,
    },
    # [5728] "sll [ ix + DIS"
    {
        "]"     => 5729,
    },
    # [5729] "sll [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5730 ],
        ","     => 5731,
    },
    # [5730] "sll [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5731] "sll [ ix + DIS ] ,"
    {
        "a"     => 5732,
        "b"     => 5734,
        "c"     => 5736,
        "d"     => 5738,
        "e"     => 5740,
        "h"     => 5742,
        "l"     => 5744,
    },
    # [5732] "sll [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5733 ],
    },
    # [5733] "sll [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5734] "sll [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5735 ],
    },
    # [5735] "sll [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5736] "sll [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5737 ],
    },
    # [5737] "sll [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5738] "sll [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5739 ],
    },
    # [5739] "sll [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5740] "sll [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5741 ],
    },
    # [5741] "sll [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5742] "sll [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5743 ],
    },
    # [5743] "sll [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5744] "sll [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5745 ],
    },
    # [5745] "sll [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5746] "sll [ iy"
    {
        "+"     => 5747,
    },
    # [5747] "sll [ iy +"
    {
        "DIS"   => 5748,
    },
    # [5748] "sll [ iy + DIS"
    {
        "]"     => 5749,
    },
    # [5749] "sll [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5750 ],
        ","     => 5751,
    },
    # [5750] "sll [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x36], $_[0]) }, 0 ],
    },
    # [5751] "sll [ iy + DIS ] ,"
    {
        "a"     => 5752,
        "b"     => 5754,
        "c"     => 5756,
        "d"     => 5758,
        "e"     => 5760,
        "h"     => 5762,
        "l"     => 5764,
    },
    # [5752] "sll [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5753 ],
    },
    # [5753] "sll [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x37], $_[0]) }, 0 ],
    },
    # [5754] "sll [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5755 ],
    },
    # [5755] "sll [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x30], $_[0]) }, 0 ],
    },
    # [5756] "sll [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5757 ],
    },
    # [5757] "sll [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x31], $_[0]) }, 0 ],
    },
    # [5758] "sll [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5759 ],
    },
    # [5759] "sll [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x32], $_[0]) }, 0 ],
    },
    # [5760] "sll [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5761 ],
    },
    # [5761] "sll [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x33], $_[0]) }, 0 ],
    },
    # [5762] "sll [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5763 ],
    },
    # [5763] "sll [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x34], $_[0]) }, 0 ],
    },
    # [5764] "sll [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5765 ],
    },
    # [5765] "sll [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x35], $_[0]) }, 0 ],
    },
    # [5766] "sll a"
    {
        ""      => [ \&_parse_end, 5767 ],
    },
    # [5767] "sll a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x37], $_[0]) }, 0 ],
    },
    # [5768] "sll b"
    {
        ""      => [ \&_parse_end, 5769 ],
    },
    # [5769] "sll b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x30], $_[0]) }, 0 ],
    },
    # [5770] "sll bc"
    {
        ""      => [ \&_parse_end, 5771 ],
    },
    # [5771] "sll bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x31, 0xcb, 0x10], $_[0]) }, 0 ],
    },
    # [5772] "sll c"
    {
        ""      => [ \&_parse_end, 5773 ],
    },
    # [5773] "sll c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x31], $_[0]) }, 0 ],
    },
    # [5774] "sll d"
    {
        ""      => [ \&_parse_end, 5775 ],
    },
    # [5775] "sll d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x32], $_[0]) }, 0 ],
    },
    # [5776] "sll de"
    {
        ""      => [ \&_parse_end, 5777 ],
    },
    # [5777] "sll de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x33, 0xcb, 0x12], $_[0]) }, 0 ],
    },
    # [5778] "sll e"
    {
        ""      => [ \&_parse_end, 5779 ],
    },
    # [5779] "sll e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x33], $_[0]) }, 0 ],
    },
    # [5780] "sll h"
    {
        ""      => [ \&_parse_end, 5781 ],
    },
    # [5781] "sll h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x34], $_[0]) }, 0 ],
    },
    # [5782] "sll hl"
    {
        ""      => [ \&_parse_end, 5783 ],
    },
    # [5783] "sll hl &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x35, 0xcb, 0x14], $_[0]) }, 0 ],
    },
    # [5784] "sll l"
    {
        ""      => [ \&_parse_end, 5785 ],
    },
    # [5785] "sll l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x35], $_[0]) }, 0 ],
    },
    # [5786] "sra"
    {
        "("     => 5787,
        "["     => 5831,
        "a"     => 5875,
        "b"     => 5877,
        "bc"    => 5879,
        "c"     => 5881,
        "d"     => 5883,
        "de"    => 5885,
        "e"     => 5887,
        "h"     => 5889,
        "hl"    => 5891,
        "l"     => 5893,
    },
    # [5787] "sra ("
    {
        "hl"    => 5788,
        "ix"    => 5791,
        "iy"    => 5811,
    },
    # [5788] "sra ( hl"
    {
        ")"     => 5789,
    },
    # [5789] "sra ( hl )"
    {
        ""      => [ \&_parse_end, 5790 ],
    },
    # [5790] "sra ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2e], $_[0]) }, 0 ],
    },
    # [5791] "sra ( ix"
    {
        "+"     => 5792,
    },
    # [5792] "sra ( ix +"
    {
        "DIS"   => 5793,
    },
    # [5793] "sra ( ix + DIS"
    {
        ")"     => 5794,
    },
    # [5794] "sra ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5795 ],
        ","     => 5796,
    },
    # [5795] "sra ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2e], $_[0]) }, 0 ],
    },
    # [5796] "sra ( ix + DIS ) ,"
    {
        "a"     => 5797,
        "b"     => 5799,
        "c"     => 5801,
        "d"     => 5803,
        "e"     => 5805,
        "h"     => 5807,
        "l"     => 5809,
    },
    # [5797] "sra ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5798 ],
    },
    # [5798] "sra ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2f], $_[0]) }, 0 ],
    },
    # [5799] "sra ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5800 ],
    },
    # [5800] "sra ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x28], $_[0]) }, 0 ],
    },
    # [5801] "sra ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5802 ],
    },
    # [5802] "sra ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x29], $_[0]) }, 0 ],
    },
    # [5803] "sra ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5804 ],
    },
    # [5804] "sra ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2a], $_[0]) }, 0 ],
    },
    # [5805] "sra ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5806 ],
    },
    # [5806] "sra ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2b], $_[0]) }, 0 ],
    },
    # [5807] "sra ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5808 ],
    },
    # [5808] "sra ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2c], $_[0]) }, 0 ],
    },
    # [5809] "sra ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5810 ],
    },
    # [5810] "sra ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2d], $_[0]) }, 0 ],
    },
    # [5811] "sra ( iy"
    {
        "+"     => 5812,
    },
    # [5812] "sra ( iy +"
    {
        "DIS"   => 5813,
    },
    # [5813] "sra ( iy + DIS"
    {
        ")"     => 5814,
    },
    # [5814] "sra ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5815 ],
        ","     => 5816,
    },
    # [5815] "sra ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2e], $_[0]) }, 0 ],
    },
    # [5816] "sra ( iy + DIS ) ,"
    {
        "a"     => 5817,
        "b"     => 5819,
        "c"     => 5821,
        "d"     => 5823,
        "e"     => 5825,
        "h"     => 5827,
        "l"     => 5829,
    },
    # [5817] "sra ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5818 ],
    },
    # [5818] "sra ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2f], $_[0]) }, 0 ],
    },
    # [5819] "sra ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5820 ],
    },
    # [5820] "sra ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x28], $_[0]) }, 0 ],
    },
    # [5821] "sra ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5822 ],
    },
    # [5822] "sra ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x29], $_[0]) }, 0 ],
    },
    # [5823] "sra ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5824 ],
    },
    # [5824] "sra ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2a], $_[0]) }, 0 ],
    },
    # [5825] "sra ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5826 ],
    },
    # [5826] "sra ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2b], $_[0]) }, 0 ],
    },
    # [5827] "sra ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5828 ],
    },
    # [5828] "sra ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2c], $_[0]) }, 0 ],
    },
    # [5829] "sra ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5830 ],
    },
    # [5830] "sra ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2d], $_[0]) }, 0 ],
    },
    # [5831] "sra ["
    {
        "hl"    => 5832,
        "ix"    => 5835,
        "iy"    => 5855,
    },
    # [5832] "sra [ hl"
    {
        "]"     => 5833,
    },
    # [5833] "sra [ hl ]"
    {
        ""      => [ \&_parse_end, 5834 ],
    },
    # [5834] "sra [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2e], $_[0]) }, 0 ],
    },
    # [5835] "sra [ ix"
    {
        "+"     => 5836,
    },
    # [5836] "sra [ ix +"
    {
        "DIS"   => 5837,
    },
    # [5837] "sra [ ix + DIS"
    {
        "]"     => 5838,
    },
    # [5838] "sra [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5839 ],
        ","     => 5840,
    },
    # [5839] "sra [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2e], $_[0]) }, 0 ],
    },
    # [5840] "sra [ ix + DIS ] ,"
    {
        "a"     => 5841,
        "b"     => 5843,
        "c"     => 5845,
        "d"     => 5847,
        "e"     => 5849,
        "h"     => 5851,
        "l"     => 5853,
    },
    # [5841] "sra [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5842 ],
    },
    # [5842] "sra [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2f], $_[0]) }, 0 ],
    },
    # [5843] "sra [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5844 ],
    },
    # [5844] "sra [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x28], $_[0]) }, 0 ],
    },
    # [5845] "sra [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5846 ],
    },
    # [5846] "sra [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x29], $_[0]) }, 0 ],
    },
    # [5847] "sra [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5848 ],
    },
    # [5848] "sra [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2a], $_[0]) }, 0 ],
    },
    # [5849] "sra [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5850 ],
    },
    # [5850] "sra [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2b], $_[0]) }, 0 ],
    },
    # [5851] "sra [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5852 ],
    },
    # [5852] "sra [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2c], $_[0]) }, 0 ],
    },
    # [5853] "sra [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5854 ],
    },
    # [5854] "sra [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x2d], $_[0]) }, 0 ],
    },
    # [5855] "sra [ iy"
    {
        "+"     => 5856,
    },
    # [5856] "sra [ iy +"
    {
        "DIS"   => 5857,
    },
    # [5857] "sra [ iy + DIS"
    {
        "]"     => 5858,
    },
    # [5858] "sra [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5859 ],
        ","     => 5860,
    },
    # [5859] "sra [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2e], $_[0]) }, 0 ],
    },
    # [5860] "sra [ iy + DIS ] ,"
    {
        "a"     => 5861,
        "b"     => 5863,
        "c"     => 5865,
        "d"     => 5867,
        "e"     => 5869,
        "h"     => 5871,
        "l"     => 5873,
    },
    # [5861] "sra [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5862 ],
    },
    # [5862] "sra [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2f], $_[0]) }, 0 ],
    },
    # [5863] "sra [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5864 ],
    },
    # [5864] "sra [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x28], $_[0]) }, 0 ],
    },
    # [5865] "sra [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5866 ],
    },
    # [5866] "sra [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x29], $_[0]) }, 0 ],
    },
    # [5867] "sra [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5868 ],
    },
    # [5868] "sra [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2a], $_[0]) }, 0 ],
    },
    # [5869] "sra [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5870 ],
    },
    # [5870] "sra [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2b], $_[0]) }, 0 ],
    },
    # [5871] "sra [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5872 ],
    },
    # [5872] "sra [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2c], $_[0]) }, 0 ],
    },
    # [5873] "sra [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5874 ],
    },
    # [5874] "sra [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x2d], $_[0]) }, 0 ],
    },
    # [5875] "sra a"
    {
        ""      => [ \&_parse_end, 5876 ],
    },
    # [5876] "sra a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2f], $_[0]) }, 0 ],
    },
    # [5877] "sra b"
    {
        ""      => [ \&_parse_end, 5878 ],
    },
    # [5878] "sra b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x28], $_[0]) }, 0 ],
    },
    # [5879] "sra bc"
    {
        ""      => [ \&_parse_end, 5880 ],
    },
    # [5880] "sra bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x28, 0xcb, 0x19], $_[0]) }, 0 ],
    },
    # [5881] "sra c"
    {
        ""      => [ \&_parse_end, 5882 ],
    },
    # [5882] "sra c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x29], $_[0]) }, 0 ],
    },
    # [5883] "sra d"
    {
        ""      => [ \&_parse_end, 5884 ],
    },
    # [5884] "sra d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2a], $_[0]) }, 0 ],
    },
    # [5885] "sra de"
    {
        ""      => [ \&_parse_end, 5886 ],
    },
    # [5886] "sra de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2a, 0xcb, 0x1b], $_[0]) }, 0 ],
    },
    # [5887] "sra e"
    {
        ""      => [ \&_parse_end, 5888 ],
    },
    # [5888] "sra e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2b], $_[0]) }, 0 ],
    },
    # [5889] "sra h"
    {
        ""      => [ \&_parse_end, 5890 ],
    },
    # [5890] "sra h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2c], $_[0]) }, 0 ],
    },
    # [5891] "sra hl"
    {
        ""      => [ \&_parse_end, 5892 ],
    },
    # [5892] "sra hl &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2c, 0xcb, 0x1d], $_[0]) }, 0 ],
    },
    # [5893] "sra l"
    {
        ""      => [ \&_parse_end, 5894 ],
    },
    # [5894] "sra l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x2d], $_[0]) }, 0 ],
    },
    # [5895] "srl"
    {
        "("     => 5896,
        "["     => 5940,
        "a"     => 5984,
        "b"     => 5986,
        "bc"    => 5988,
        "c"     => 5990,
        "d"     => 5992,
        "de"    => 5994,
        "e"     => 5996,
        "h"     => 5998,
        "hl"    => 6000,
        "l"     => 6002,
    },
    # [5896] "srl ("
    {
        "hl"    => 5897,
        "ix"    => 5900,
        "iy"    => 5920,
    },
    # [5897] "srl ( hl"
    {
        ")"     => 5898,
    },
    # [5898] "srl ( hl )"
    {
        ""      => [ \&_parse_end, 5899 ],
    },
    # [5899] "srl ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3e], $_[0]) }, 0 ],
    },
    # [5900] "srl ( ix"
    {
        "+"     => 5901,
    },
    # [5901] "srl ( ix +"
    {
        "DIS"   => 5902,
    },
    # [5902] "srl ( ix + DIS"
    {
        ")"     => 5903,
    },
    # [5903] "srl ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 5904 ],
        ","     => 5905,
    },
    # [5904] "srl ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3e], $_[0]) }, 0 ],
    },
    # [5905] "srl ( ix + DIS ) ,"
    {
        "a"     => 5906,
        "b"     => 5908,
        "c"     => 5910,
        "d"     => 5912,
        "e"     => 5914,
        "h"     => 5916,
        "l"     => 5918,
    },
    # [5906] "srl ( ix + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5907 ],
    },
    # [5907] "srl ( ix + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3f], $_[0]) }, 0 ],
    },
    # [5908] "srl ( ix + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5909 ],
    },
    # [5909] "srl ( ix + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x38], $_[0]) }, 0 ],
    },
    # [5910] "srl ( ix + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5911 ],
    },
    # [5911] "srl ( ix + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x39], $_[0]) }, 0 ],
    },
    # [5912] "srl ( ix + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5913 ],
    },
    # [5913] "srl ( ix + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3a], $_[0]) }, 0 ],
    },
    # [5914] "srl ( ix + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5915 ],
    },
    # [5915] "srl ( ix + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3b], $_[0]) }, 0 ],
    },
    # [5916] "srl ( ix + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5917 ],
    },
    # [5917] "srl ( ix + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3c], $_[0]) }, 0 ],
    },
    # [5918] "srl ( ix + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5919 ],
    },
    # [5919] "srl ( ix + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3d], $_[0]) }, 0 ],
    },
    # [5920] "srl ( iy"
    {
        "+"     => 5921,
    },
    # [5921] "srl ( iy +"
    {
        "DIS"   => 5922,
    },
    # [5922] "srl ( iy + DIS"
    {
        ")"     => 5923,
    },
    # [5923] "srl ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 5924 ],
        ","     => 5925,
    },
    # [5924] "srl ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3e], $_[0]) }, 0 ],
    },
    # [5925] "srl ( iy + DIS ) ,"
    {
        "a"     => 5926,
        "b"     => 5928,
        "c"     => 5930,
        "d"     => 5932,
        "e"     => 5934,
        "h"     => 5936,
        "l"     => 5938,
    },
    # [5926] "srl ( iy + DIS ) , a"
    {
        ""      => [ \&_parse_end, 5927 ],
    },
    # [5927] "srl ( iy + DIS ) , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3f], $_[0]) }, 0 ],
    },
    # [5928] "srl ( iy + DIS ) , b"
    {
        ""      => [ \&_parse_end, 5929 ],
    },
    # [5929] "srl ( iy + DIS ) , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x38], $_[0]) }, 0 ],
    },
    # [5930] "srl ( iy + DIS ) , c"
    {
        ""      => [ \&_parse_end, 5931 ],
    },
    # [5931] "srl ( iy + DIS ) , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x39], $_[0]) }, 0 ],
    },
    # [5932] "srl ( iy + DIS ) , d"
    {
        ""      => [ \&_parse_end, 5933 ],
    },
    # [5933] "srl ( iy + DIS ) , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3a], $_[0]) }, 0 ],
    },
    # [5934] "srl ( iy + DIS ) , e"
    {
        ""      => [ \&_parse_end, 5935 ],
    },
    # [5935] "srl ( iy + DIS ) , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3b], $_[0]) }, 0 ],
    },
    # [5936] "srl ( iy + DIS ) , h"
    {
        ""      => [ \&_parse_end, 5937 ],
    },
    # [5937] "srl ( iy + DIS ) , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3c], $_[0]) }, 0 ],
    },
    # [5938] "srl ( iy + DIS ) , l"
    {
        ""      => [ \&_parse_end, 5939 ],
    },
    # [5939] "srl ( iy + DIS ) , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3d], $_[0]) }, 0 ],
    },
    # [5940] "srl ["
    {
        "hl"    => 5941,
        "ix"    => 5944,
        "iy"    => 5964,
    },
    # [5941] "srl [ hl"
    {
        "]"     => 5942,
    },
    # [5942] "srl [ hl ]"
    {
        ""      => [ \&_parse_end, 5943 ],
    },
    # [5943] "srl [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3e], $_[0]) }, 0 ],
    },
    # [5944] "srl [ ix"
    {
        "+"     => 5945,
    },
    # [5945] "srl [ ix +"
    {
        "DIS"   => 5946,
    },
    # [5946] "srl [ ix + DIS"
    {
        "]"     => 5947,
    },
    # [5947] "srl [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 5948 ],
        ","     => 5949,
    },
    # [5948] "srl [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3e], $_[0]) }, 0 ],
    },
    # [5949] "srl [ ix + DIS ] ,"
    {
        "a"     => 5950,
        "b"     => 5952,
        "c"     => 5954,
        "d"     => 5956,
        "e"     => 5958,
        "h"     => 5960,
        "l"     => 5962,
    },
    # [5950] "srl [ ix + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5951 ],
    },
    # [5951] "srl [ ix + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3f], $_[0]) }, 0 ],
    },
    # [5952] "srl [ ix + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5953 ],
    },
    # [5953] "srl [ ix + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x38], $_[0]) }, 0 ],
    },
    # [5954] "srl [ ix + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5955 ],
    },
    # [5955] "srl [ ix + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x39], $_[0]) }, 0 ],
    },
    # [5956] "srl [ ix + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5957 ],
    },
    # [5957] "srl [ ix + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3a], $_[0]) }, 0 ],
    },
    # [5958] "srl [ ix + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5959 ],
    },
    # [5959] "srl [ ix + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3b], $_[0]) }, 0 ],
    },
    # [5960] "srl [ ix + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5961 ],
    },
    # [5961] "srl [ ix + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3c], $_[0]) }, 0 ],
    },
    # [5962] "srl [ ix + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5963 ],
    },
    # [5963] "srl [ ix + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xcb, "DIS", 0x3d], $_[0]) }, 0 ],
    },
    # [5964] "srl [ iy"
    {
        "+"     => 5965,
    },
    # [5965] "srl [ iy +"
    {
        "DIS"   => 5966,
    },
    # [5966] "srl [ iy + DIS"
    {
        "]"     => 5967,
    },
    # [5967] "srl [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 5968 ],
        ","     => 5969,
    },
    # [5968] "srl [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3e], $_[0]) }, 0 ],
    },
    # [5969] "srl [ iy + DIS ] ,"
    {
        "a"     => 5970,
        "b"     => 5972,
        "c"     => 5974,
        "d"     => 5976,
        "e"     => 5978,
        "h"     => 5980,
        "l"     => 5982,
    },
    # [5970] "srl [ iy + DIS ] , a"
    {
        ""      => [ \&_parse_end, 5971 ],
    },
    # [5971] "srl [ iy + DIS ] , a &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3f], $_[0]) }, 0 ],
    },
    # [5972] "srl [ iy + DIS ] , b"
    {
        ""      => [ \&_parse_end, 5973 ],
    },
    # [5973] "srl [ iy + DIS ] , b &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x38], $_[0]) }, 0 ],
    },
    # [5974] "srl [ iy + DIS ] , c"
    {
        ""      => [ \&_parse_end, 5975 ],
    },
    # [5975] "srl [ iy + DIS ] , c &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x39], $_[0]) }, 0 ],
    },
    # [5976] "srl [ iy + DIS ] , d"
    {
        ""      => [ \&_parse_end, 5977 ],
    },
    # [5977] "srl [ iy + DIS ] , d &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3a], $_[0]) }, 0 ],
    },
    # [5978] "srl [ iy + DIS ] , e"
    {
        ""      => [ \&_parse_end, 5979 ],
    },
    # [5979] "srl [ iy + DIS ] , e &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3b], $_[0]) }, 0 ],
    },
    # [5980] "srl [ iy + DIS ] , h"
    {
        ""      => [ \&_parse_end, 5981 ],
    },
    # [5981] "srl [ iy + DIS ] , h &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3c], $_[0]) }, 0 ],
    },
    # [5982] "srl [ iy + DIS ] , l"
    {
        ""      => [ \&_parse_end, 5983 ],
    },
    # [5983] "srl [ iy + DIS ] , l &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xcb, "DIS", 0x3d], $_[0]) }, 0 ],
    },
    # [5984] "srl a"
    {
        ""      => [ \&_parse_end, 5985 ],
    },
    # [5985] "srl a &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3f], $_[0]) }, 0 ],
    },
    # [5986] "srl b"
    {
        ""      => [ \&_parse_end, 5987 ],
    },
    # [5987] "srl b &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x38], $_[0]) }, 0 ],
    },
    # [5988] "srl bc"
    {
        ""      => [ \&_parse_end, 5989 ],
    },
    # [5989] "srl bc &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x38, 0xcb, 0x19], $_[0]) }, 0 ],
    },
    # [5990] "srl c"
    {
        ""      => [ \&_parse_end, 5991 ],
    },
    # [5991] "srl c &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x39], $_[0]) }, 0 ],
    },
    # [5992] "srl d"
    {
        ""      => [ \&_parse_end, 5993 ],
    },
    # [5993] "srl d &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3a], $_[0]) }, 0 ],
    },
    # [5994] "srl de"
    {
        ""      => [ \&_parse_end, 5995 ],
    },
    # [5995] "srl de &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3a, 0xcb, 0x1b], $_[0]) }, 0 ],
    },
    # [5996] "srl e"
    {
        ""      => [ \&_parse_end, 5997 ],
    },
    # [5997] "srl e &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3b], $_[0]) }, 0 ],
    },
    # [5998] "srl h"
    {
        ""      => [ \&_parse_end, 5999 ],
    },
    # [5999] "srl h &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3c], $_[0]) }, 0 ],
    },
    # [6000] "srl hl"
    {
        ""      => [ \&_parse_end, 6001 ],
    },
    # [6001] "srl hl &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3c, 0xcb, 0x1d], $_[0]) }, 0 ],
    },
    # [6002] "srl l"
    {
        ""      => [ \&_parse_end, 6003 ],
    },
    # [6003] "srl l &_parse_end"
    {
        ""      => [ sub { return ([0xcb, 0x3d], $_[0]) }, 0 ],
    },
    # [6004] "stop"
    {
        ""      => [ \&_parse_end, 6005 ],
    },
    # [6005] "stop &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xdd, 0x00], $_[0]) }, 0 ],
    },
    # [6006] "sub"
    {
        "("     => 6007,
        "N"     => 6021,
        "["     => 6023,
        "a"     => 6037,
        "b"     => 6039,
        "c"     => 6041,
        "d"     => 6043,
        "e"     => 6045,
        "h"     => 6047,
        "hl"    => 6049,
        "hx"    => 6059,
        "hy"    => 6061,
        "ixh"   => 6063,
        "ixl"   => 6065,
        "iyh"   => 6067,
        "iyl"   => 6069,
        "l"     => 6071,
        "lx"    => 6073,
        "ly"    => 6075,
        "xh"    => 6077,
        "xl"    => 6079,
        "yh"    => 6081,
        "yl"    => 6083,
    },
    # [6007] "sub ("
    {
        "hl"    => 6008,
        "ix"    => 6011,
        "iy"    => 6016,
    },
    # [6008] "sub ( hl"
    {
        ")"     => 6009,
    },
    # [6009] "sub ( hl )"
    {
        ""      => [ \&_parse_end, 6010 ],
    },
    # [6010] "sub ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0x96], $_[0]) }, 0 ],
    },
    # [6011] "sub ( ix"
    {
        "+"     => 6012,
    },
    # [6012] "sub ( ix +"
    {
        "DIS"   => 6013,
    },
    # [6013] "sub ( ix + DIS"
    {
        ")"     => 6014,
    },
    # [6014] "sub ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 6015 ],
    },
    # [6015] "sub ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x96, "DIS"], $_[0]) }, 0 ],
    },
    # [6016] "sub ( iy"
    {
        "+"     => 6017,
    },
    # [6017] "sub ( iy +"
    {
        "DIS"   => 6018,
    },
    # [6018] "sub ( iy + DIS"
    {
        ")"     => 6019,
    },
    # [6019] "sub ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 6020 ],
    },
    # [6020] "sub ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x96, "DIS"], $_[0]) }, 0 ],
    },
    # [6021] "sub N"
    {
        ""      => [ \&_parse_end, 6022 ],
    },
    # [6022] "sub N &_parse_end"
    {
        ""      => [ sub { return ([0xd6, "N"], $_[0]) }, 0 ],
    },
    # [6023] "sub ["
    {
        "hl"    => 6024,
        "ix"    => 6027,
        "iy"    => 6032,
    },
    # [6024] "sub [ hl"
    {
        "]"     => 6025,
    },
    # [6025] "sub [ hl ]"
    {
        ""      => [ \&_parse_end, 6026 ],
    },
    # [6026] "sub [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0x96], $_[0]) }, 0 ],
    },
    # [6027] "sub [ ix"
    {
        "+"     => 6028,
    },
    # [6028] "sub [ ix +"
    {
        "DIS"   => 6029,
    },
    # [6029] "sub [ ix + DIS"
    {
        "]"     => 6030,
    },
    # [6030] "sub [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 6031 ],
    },
    # [6031] "sub [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x96, "DIS"], $_[0]) }, 0 ],
    },
    # [6032] "sub [ iy"
    {
        "+"     => 6033,
    },
    # [6033] "sub [ iy +"
    {
        "DIS"   => 6034,
    },
    # [6034] "sub [ iy + DIS"
    {
        "]"     => 6035,
    },
    # [6035] "sub [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 6036 ],
    },
    # [6036] "sub [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x96, "DIS"], $_[0]) }, 0 ],
    },
    # [6037] "sub a"
    {
        ""      => [ \&_parse_end, 6038 ],
    },
    # [6038] "sub a &_parse_end"
    {
        ""      => [ sub { return ([0x97], $_[0]) }, 0 ],
    },
    # [6039] "sub b"
    {
        ""      => [ \&_parse_end, 6040 ],
    },
    # [6040] "sub b &_parse_end"
    {
        ""      => [ sub { return ([0x90], $_[0]) }, 0 ],
    },
    # [6041] "sub c"
    {
        ""      => [ \&_parse_end, 6042 ],
    },
    # [6042] "sub c &_parse_end"
    {
        ""      => [ sub { return ([0x91], $_[0]) }, 0 ],
    },
    # [6043] "sub d"
    {
        ""      => [ \&_parse_end, 6044 ],
    },
    # [6044] "sub d &_parse_end"
    {
        ""      => [ sub { return ([0x92], $_[0]) }, 0 ],
    },
    # [6045] "sub e"
    {
        ""      => [ \&_parse_end, 6046 ],
    },
    # [6046] "sub e &_parse_end"
    {
        ""      => [ sub { return ([0x93], $_[0]) }, 0 ],
    },
    # [6047] "sub h"
    {
        ""      => [ \&_parse_end, 6048 ],
    },
    # [6048] "sub h &_parse_end"
    {
        ""      => [ sub { return ([0x94], $_[0]) }, 0 ],
    },
    # [6049] "sub hl"
    {
        ","     => 6050,
    },
    # [6050] "sub hl ,"
    {
        "bc"    => 6051,
        "de"    => 6053,
        "hl"    => 6055,
        "sp"    => 6057,
    },
    # [6051] "sub hl , bc"
    {
        ""      => [ \&_parse_end, 6052 ],
    },
    # [6052] "sub hl , bc &_parse_end"
    {
        ""      => [ sub { return ([0xb7, 0xed, 0x42], $_[0]) }, 0 ],
    },
    # [6053] "sub hl , de"
    {
        ""      => [ \&_parse_end, 6054 ],
    },
    # [6054] "sub hl , de &_parse_end"
    {
        ""      => [ sub { return ([0xb7, 0xed, 0x52], $_[0]) }, 0 ],
    },
    # [6055] "sub hl , hl"
    {
        ""      => [ \&_parse_end, 6056 ],
    },
    # [6056] "sub hl , hl &_parse_end"
    {
        ""      => [ sub { return ([0xb7, 0xed, 0x62], $_[0]) }, 0 ],
    },
    # [6057] "sub hl , sp"
    {
        ""      => [ \&_parse_end, 6058 ],
    },
    # [6058] "sub hl , sp &_parse_end"
    {
        ""      => [ sub { return ([0xb7, 0xed, 0x72], $_[0]) }, 0 ],
    },
    # [6059] "sub hx"
    {
        ""      => [ \&_parse_end, 6060 ],
    },
    # [6060] "sub hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x94], $_[0]) }, 0 ],
    },
    # [6061] "sub hy"
    {
        ""      => [ \&_parse_end, 6062 ],
    },
    # [6062] "sub hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x94], $_[0]) }, 0 ],
    },
    # [6063] "sub ixh"
    {
        ""      => [ \&_parse_end, 6064 ],
    },
    # [6064] "sub ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x94], $_[0]) }, 0 ],
    },
    # [6065] "sub ixl"
    {
        ""      => [ \&_parse_end, 6066 ],
    },
    # [6066] "sub ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x95], $_[0]) }, 0 ],
    },
    # [6067] "sub iyh"
    {
        ""      => [ \&_parse_end, 6068 ],
    },
    # [6068] "sub iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x94], $_[0]) }, 0 ],
    },
    # [6069] "sub iyl"
    {
        ""      => [ \&_parse_end, 6070 ],
    },
    # [6070] "sub iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x95], $_[0]) }, 0 ],
    },
    # [6071] "sub l"
    {
        ""      => [ \&_parse_end, 6072 ],
    },
    # [6072] "sub l &_parse_end"
    {
        ""      => [ sub { return ([0x95], $_[0]) }, 0 ],
    },
    # [6073] "sub lx"
    {
        ""      => [ \&_parse_end, 6074 ],
    },
    # [6074] "sub lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x95], $_[0]) }, 0 ],
    },
    # [6075] "sub ly"
    {
        ""      => [ \&_parse_end, 6076 ],
    },
    # [6076] "sub ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x95], $_[0]) }, 0 ],
    },
    # [6077] "sub xh"
    {
        ""      => [ \&_parse_end, 6078 ],
    },
    # [6078] "sub xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x94], $_[0]) }, 0 ],
    },
    # [6079] "sub xl"
    {
        ""      => [ \&_parse_end, 6080 ],
    },
    # [6080] "sub xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0x95], $_[0]) }, 0 ],
    },
    # [6081] "sub yh"
    {
        ""      => [ \&_parse_end, 6082 ],
    },
    # [6082] "sub yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x94], $_[0]) }, 0 ],
    },
    # [6083] "sub yl"
    {
        ""      => [ \&_parse_end, 6084 ],
    },
    # [6084] "sub yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0x95], $_[0]) }, 0 ],
    },
    # [6085] "xor"
    {
        "("     => 6086,
        "N"     => 6100,
        "["     => 6102,
        "a"     => 6116,
        "b"     => 6118,
        "c"     => 6120,
        "d"     => 6122,
        "e"     => 6124,
        "h"     => 6126,
        "hx"    => 6128,
        "hy"    => 6130,
        "ixh"   => 6132,
        "ixl"   => 6134,
        "iyh"   => 6136,
        "iyl"   => 6138,
        "l"     => 6140,
        "lx"    => 6142,
        "ly"    => 6144,
        "xh"    => 6146,
        "xl"    => 6148,
        "yh"    => 6150,
        "yl"    => 6152,
    },
    # [6086] "xor ("
    {
        "hl"    => 6087,
        "ix"    => 6090,
        "iy"    => 6095,
    },
    # [6087] "xor ( hl"
    {
        ")"     => 6088,
    },
    # [6088] "xor ( hl )"
    {
        ""      => [ \&_parse_end, 6089 ],
    },
    # [6089] "xor ( hl ) &_parse_end"
    {
        ""      => [ sub { return ([0xae], $_[0]) }, 0 ],
    },
    # [6090] "xor ( ix"
    {
        "+"     => 6091,
    },
    # [6091] "xor ( ix +"
    {
        "DIS"   => 6092,
    },
    # [6092] "xor ( ix + DIS"
    {
        ")"     => 6093,
    },
    # [6093] "xor ( ix + DIS )"
    {
        ""      => [ \&_parse_end, 6094 ],
    },
    # [6094] "xor ( ix + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xae, "DIS"], $_[0]) }, 0 ],
    },
    # [6095] "xor ( iy"
    {
        "+"     => 6096,
    },
    # [6096] "xor ( iy +"
    {
        "DIS"   => 6097,
    },
    # [6097] "xor ( iy + DIS"
    {
        ")"     => 6098,
    },
    # [6098] "xor ( iy + DIS )"
    {
        ""      => [ \&_parse_end, 6099 ],
    },
    # [6099] "xor ( iy + DIS ) &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xae, "DIS"], $_[0]) }, 0 ],
    },
    # [6100] "xor N"
    {
        ""      => [ \&_parse_end, 6101 ],
    },
    # [6101] "xor N &_parse_end"
    {
        ""      => [ sub { return ([0xee, "N"], $_[0]) }, 0 ],
    },
    # [6102] "xor ["
    {
        "hl"    => 6103,
        "ix"    => 6106,
        "iy"    => 6111,
    },
    # [6103] "xor [ hl"
    {
        "]"     => 6104,
    },
    # [6104] "xor [ hl ]"
    {
        ""      => [ \&_parse_end, 6105 ],
    },
    # [6105] "xor [ hl ] &_parse_end"
    {
        ""      => [ sub { return ([0xae], $_[0]) }, 0 ],
    },
    # [6106] "xor [ ix"
    {
        "+"     => 6107,
    },
    # [6107] "xor [ ix +"
    {
        "DIS"   => 6108,
    },
    # [6108] "xor [ ix + DIS"
    {
        "]"     => 6109,
    },
    # [6109] "xor [ ix + DIS ]"
    {
        ""      => [ \&_parse_end, 6110 ],
    },
    # [6110] "xor [ ix + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xae, "DIS"], $_[0]) }, 0 ],
    },
    # [6111] "xor [ iy"
    {
        "+"     => 6112,
    },
    # [6112] "xor [ iy +"
    {
        "DIS"   => 6113,
    },
    # [6113] "xor [ iy + DIS"
    {
        "]"     => 6114,
    },
    # [6114] "xor [ iy + DIS ]"
    {
        ""      => [ \&_parse_end, 6115 ],
    },
    # [6115] "xor [ iy + DIS ] &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xae, "DIS"], $_[0]) }, 0 ],
    },
    # [6116] "xor a"
    {
        ""      => [ \&_parse_end, 6117 ],
    },
    # [6117] "xor a &_parse_end"
    {
        ""      => [ sub { return ([0xaf], $_[0]) }, 0 ],
    },
    # [6118] "xor b"
    {
        ""      => [ \&_parse_end, 6119 ],
    },
    # [6119] "xor b &_parse_end"
    {
        ""      => [ sub { return ([0xa8], $_[0]) }, 0 ],
    },
    # [6120] "xor c"
    {
        ""      => [ \&_parse_end, 6121 ],
    },
    # [6121] "xor c &_parse_end"
    {
        ""      => [ sub { return ([0xa9], $_[0]) }, 0 ],
    },
    # [6122] "xor d"
    {
        ""      => [ \&_parse_end, 6123 ],
    },
    # [6123] "xor d &_parse_end"
    {
        ""      => [ sub { return ([0xaa], $_[0]) }, 0 ],
    },
    # [6124] "xor e"
    {
        ""      => [ \&_parse_end, 6125 ],
    },
    # [6125] "xor e &_parse_end"
    {
        ""      => [ sub { return ([0xab], $_[0]) }, 0 ],
    },
    # [6126] "xor h"
    {
        ""      => [ \&_parse_end, 6127 ],
    },
    # [6127] "xor h &_parse_end"
    {
        ""      => [ sub { return ([0xac], $_[0]) }, 0 ],
    },
    # [6128] "xor hx"
    {
        ""      => [ \&_parse_end, 6129 ],
    },
    # [6129] "xor hx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xac], $_[0]) }, 0 ],
    },
    # [6130] "xor hy"
    {
        ""      => [ \&_parse_end, 6131 ],
    },
    # [6131] "xor hy &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xac], $_[0]) }, 0 ],
    },
    # [6132] "xor ixh"
    {
        ""      => [ \&_parse_end, 6133 ],
    },
    # [6133] "xor ixh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xac], $_[0]) }, 0 ],
    },
    # [6134] "xor ixl"
    {
        ""      => [ \&_parse_end, 6135 ],
    },
    # [6135] "xor ixl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xad], $_[0]) }, 0 ],
    },
    # [6136] "xor iyh"
    {
        ""      => [ \&_parse_end, 6137 ],
    },
    # [6137] "xor iyh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xac], $_[0]) }, 0 ],
    },
    # [6138] "xor iyl"
    {
        ""      => [ \&_parse_end, 6139 ],
    },
    # [6139] "xor iyl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xad], $_[0]) }, 0 ],
    },
    # [6140] "xor l"
    {
        ""      => [ \&_parse_end, 6141 ],
    },
    # [6141] "xor l &_parse_end"
    {
        ""      => [ sub { return ([0xad], $_[0]) }, 0 ],
    },
    # [6142] "xor lx"
    {
        ""      => [ \&_parse_end, 6143 ],
    },
    # [6143] "xor lx &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xad], $_[0]) }, 0 ],
    },
    # [6144] "xor ly"
    {
        ""      => [ \&_parse_end, 6145 ],
    },
    # [6145] "xor ly &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xad], $_[0]) }, 0 ],
    },
    # [6146] "xor xh"
    {
        ""      => [ \&_parse_end, 6147 ],
    },
    # [6147] "xor xh &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xac], $_[0]) }, 0 ],
    },
    # [6148] "xor xl"
    {
        ""      => [ \&_parse_end, 6149 ],
    },
    # [6149] "xor xl &_parse_end"
    {
        ""      => [ sub { return ([0xdd, 0xad], $_[0]) }, 0 ],
    },
    # [6150] "xor yh"
    {
        ""      => [ \&_parse_end, 6151 ],
    },
    # [6151] "xor yh &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xac], $_[0]) }, 0 ],
    },
    # [6152] "xor yl"
    {
        ""      => [ \&_parse_end, 6153 ],
    },
    # [6153] "xor yl &_parse_end"
    {
        ""      => [ sub { return ([0xfd, 0xad], $_[0]) }, 0 ],
    },
);
