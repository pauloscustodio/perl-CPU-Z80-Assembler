; $Id$
        org 0
        adc  a,(hl)             ; 0000 8E
        ADC  A,(HL)             ; 0001 8E
        adc  a,(ix+-128)        ; 0002 DD 8E 80
        ADC  A,(IX+-128)        ; 0005 DD 8E 80
        adc  a,(ix-128)         ; 0008 DD 8E 80
        adc  a,(ix+-127)        ; 000B DD 8E 81
        adc  a,(ix-127)         ; 000E DD 8E 81
        adc  a,(ix+-1)          ; 0011 DD 8E FF
        adc  a,(ix-1)           ; 0014 DD 8E FF
        adc  a,(ix+-0)          ; 0017 DD 8E 00
        adc  a,(ix-0)           ; 001A DD 8E 00
        adc  a,(ix+0)           ; 001D DD 8E 00
        adc  a,(ix)             ; 0020 DD 8E 00
        adc  a,(ix+1)           ; 0023 DD 8E 01
        adc  a,(ix+126)         ; 0026 DD 8E 7E
        adc  a,(ix+127)         ; 0029 DD 8E 7F
        adc  a,(iy+127)         ; 002C FD 8E 7F
        ADC  A,(IY+127)         ; 002F FD 8E 7F
        adc  a,-128             ; 0032 CE 80
        adc  a,-127             ; 0034 CE 81
        adc  a,-2               ; 0036 CE FE
        adc  a,-1               ; 0038 CE FF
        adc  a,0                ; 003A CE 00
        adc  a,1                ; 003C CE 01
        adc  a,126              ; 003E CE 7E
        adc  a,127              ; 0040 CE 7F
        adc  a,128              ; 0042 CE 80
        adc  a,129              ; 0044 CE 81
        adc  a,254              ; 0046 CE FE
        adc  a,255              ; 0048 CE FF
        adc  a,[hl]             ; 004A 8E
        adc  a,[ix+127]         ; 004B DD 8E 7F
        adc  a,[iy+127]         ; 004E FD 8E 7F
        adc  a,a                ; 0051 8F
        adc  a,b                ; 0052 88
        ADC  A,B                ; 0053 88
        adc  a,c                ; 0054 89
        ADC  A,C                ; 0055 89
        adc  a,d                ; 0056 8A
        ADC  A,D                ; 0057 8A
        adc  a,e                ; 0058 8B
        ADC  A,E                ; 0059 8B
        adc  a,h                ; 005A 8C
        ADC  A,H                ; 005B 8C
        adc  a,hx               ; 005C DD 8C
        ADC  A,HX               ; 005E DD 8C
        adc  a,hy               ; 0060 FD 8C
        ADC  A,HY               ; 0062 FD 8C
        adc  a,ixh              ; 0064 DD 8C
        ADC  A,IXH              ; 0066 DD 8C
        adc  a,ixl              ; 0068 DD 8D
        ADC  A,IXL              ; 006A DD 8D
        adc  a,iyh              ; 006C FD 8C
        ADC  A,IYH              ; 006E FD 8C
        adc  a,iyl              ; 0070 FD 8D
        ADC  A,IYL              ; 0072 FD 8D
        adc  a,l                ; 0074 8D
        ADC  A,L                ; 0075 8D
        adc  a,lx               ; 0076 DD 8D
        ADC  A,LX               ; 0078 DD 8D
        adc  a,ly               ; 007A FD 8D
        ADC  A,LY               ; 007C FD 8D
        adc  a,xh               ; 007E DD 8C
        ADC  A,XH               ; 0080 DD 8C
        adc  a,xl               ; 0082 DD 8D
        ADC  A,XL               ; 0084 DD 8D
        adc  a,yh               ; 0086 FD 8C
        ADC  A,YH               ; 0088 FD 8C
        adc  a,yl               ; 008A FD 8D
        ADC  A,YL               ; 008C FD 8D
        adc  hl,bc              ; 008E ED 4A
        ADC  HL,BC              ; 0090 ED 4A
        adc  hl,de              ; 0092 ED 5A
        ADC  HL,DE              ; 0094 ED 5A
        adc  hl,hl              ; 0096 ED 6A
        adc  hl,sp              ; 0098 ED 7A
        ADC  HL,SP              ; 009A ED 7A
        add  a,(hl)             ; 009C 86
        ADD  A,(HL)             ; 009D 86
        add  a,(ix+127)         ; 009E DD 86 7F
        add  a,(iy+127)         ; 00A1 FD 86 7F
        add  a,255              ; 00A4 C6 FF
        add  a,[hl]             ; 00A6 86
        add  a,[ix+127]         ; 00A7 DD 86 7F
        add  a,[iy+127]         ; 00AA FD 86 7F
        add  a,a                ; 00AD 87
        add  a,b                ; 00AE 80
        add  a,c                ; 00AF 81
        add  a,d                ; 00B0 82
        add  a,e                ; 00B1 83
        add  a,h                ; 00B2 84
        add  a,hx               ; 00B3 DD 84
        add  a,hy               ; 00B5 FD 84
        add  a,ixh              ; 00B7 DD 84
        add  a,ixl              ; 00B9 DD 85
        add  a,iyh              ; 00BB FD 84
        add  a,iyl              ; 00BD FD 85
        add  a,l                ; 00BF 85
        add  a,lx               ; 00C0 DD 85
        add  a,ly               ; 00C2 FD 85
        add  a,xh               ; 00C4 DD 84
        add  a,xl               ; 00C6 DD 85
        add  a,yh               ; 00C8 FD 84
        add  a,yl               ; 00CA FD 85
        add  hl,bc              ; 00CC 09
        add  hl,de              ; 00CD 19
        add  hl,hl              ; 00CE 29
        add  hl,sp              ; 00CF 39
        add  ix,bc              ; 00D0 DD 09
        add  ix,de              ; 00D2 DD 19
        add  ix,ix              ; 00D4 DD 29
        add  ix,sp              ; 00D6 DD 39
        add  iy,bc              ; 00D8 FD 09
        add  iy,de              ; 00DA FD 19
        add  iy,iy              ; 00DC FD 29
        add  iy,sp              ; 00DE FD 39
        and  (hl)               ; 00E0 A6
        AND  (HL)               ; 00E1 A6
        and  (ix+127)           ; 00E2 DD A6 7F
        and  (iy+127)           ; 00E5 FD A6 7F
        and  255                ; 00E8 E6 FF
        and  [hl]               ; 00EA A6
        and  [ix+127]           ; 00EB DD A6 7F
        and  [iy+127]           ; 00EE FD A6 7F
        and  a                  ; 00F1 A7
        and  b                  ; 00F2 A0
        and  c                  ; 00F3 A1
        and  d                  ; 00F4 A2
        and  e                  ; 00F5 A3
        and  h                  ; 00F6 A4
        and  hx                 ; 00F7 DD A4
        and  hy                 ; 00F9 FD A4
        and  ixh                ; 00FB DD A4
        and  ixl                ; 00FD DD A5
        and  iyh                ; 00FF FD A4
        and  iyl                ; 0101 FD A5
        and  l                  ; 0103 A5
        and  lx                 ; 0104 DD A5
        and  ly                 ; 0106 FD A5
        and  xh                 ; 0108 DD A4
        and  xl                 ; 010A DD A5
        and  yh                 ; 010C FD A4
        and  yl                 ; 010E FD A5
        bit  0,(hl)             ; 0110 CB 46
        BIT  0,(HL)             ; 0112 CB 46
        bit  0,(ix+127)         ; 0114 DD CB 7F 46
        bit  0,(iy+127)         ; 0118 FD CB 7F 46
        bit  0,[hl]             ; 011C CB 46
        bit  0,[ix+127]         ; 011E DD CB 7F 46
        bit  0,[iy+127]         ; 0122 FD CB 7F 46
        bit  0,a                ; 0126 CB 47
        bit  0,b                ; 0128 CB 40
        bit  0,c                ; 012A CB 41
        bit  0,d                ; 012C CB 42
        bit  0,e                ; 012E CB 43
        bit  0,h                ; 0130 CB 44
        bit  0,l                ; 0132 CB 45
        bit  1,(hl)             ; 0134 CB 4E
        bit  1,(ix+127)         ; 0136 DD CB 7F 4E
        bit  1,(iy+127)         ; 013A FD CB 7F 4E
        bit  1,[hl]             ; 013E CB 4E
        bit  1,[ix+127]         ; 0140 DD CB 7F 4E
        bit  1,[iy+127]         ; 0144 FD CB 7F 4E
        bit  1,a                ; 0148 CB 4F
        bit  1,b                ; 014A CB 48
        bit  1,c                ; 014C CB 49
        bit  1,d                ; 014E CB 4A
        bit  1,e                ; 0150 CB 4B
        bit  1,h                ; 0152 CB 4C
        bit  1,l                ; 0154 CB 4D
        bit  2,(hl)             ; 0156 CB 56
        bit  2,(ix+127)         ; 0158 DD CB 7F 56
        bit  2,(iy+127)         ; 015C FD CB 7F 56
        bit  2,[hl]             ; 0160 CB 56
        bit  2,[ix+127]         ; 0162 DD CB 7F 56
        bit  2,[iy+127]         ; 0166 FD CB 7F 56
        bit  2,a                ; 016A CB 57
        bit  2,b                ; 016C CB 50
        bit  2,c                ; 016E CB 51
        bit  2,d                ; 0170 CB 52
        bit  2,e                ; 0172 CB 53
        bit  2,h                ; 0174 CB 54
        bit  2,l                ; 0176 CB 55
        bit  3,(hl)             ; 0178 CB 5E
        bit  3,(ix+127)         ; 017A DD CB 7F 5E
        bit  3,(iy+127)         ; 017E FD CB 7F 5E
        bit  3,[hl]             ; 0182 CB 5E
        bit  3,[ix+127]         ; 0184 DD CB 7F 5E
        bit  3,[iy+127]         ; 0188 FD CB 7F 5E
        bit  3,a                ; 018C CB 5F
        bit  3,b                ; 018E CB 58
        bit  3,c                ; 0190 CB 59
        bit  3,d                ; 0192 CB 5A
        bit  3,e                ; 0194 CB 5B
        bit  3,h                ; 0196 CB 5C
        bit  3,l                ; 0198 CB 5D
        bit  4,(hl)             ; 019A CB 66
        bit  4,(ix+127)         ; 019C DD CB 7F 66
        bit  4,(iy+127)         ; 01A0 FD CB 7F 66
        bit  4,[hl]             ; 01A4 CB 66
        bit  4,[ix+127]         ; 01A6 DD CB 7F 66
        bit  4,[iy+127]         ; 01AA FD CB 7F 66
        bit  4,a                ; 01AE CB 67
        bit  4,b                ; 01B0 CB 60
        bit  4,c                ; 01B2 CB 61
        bit  4,d                ; 01B4 CB 62
        bit  4,e                ; 01B6 CB 63
        bit  4,h                ; 01B8 CB 64
        bit  4,l                ; 01BA CB 65
        bit  5,(hl)             ; 01BC CB 6E
        bit  5,(ix+127)         ; 01BE DD CB 7F 6E
        bit  5,(iy+127)         ; 01C2 FD CB 7F 6E
        bit  5,[hl]             ; 01C6 CB 6E
        bit  5,[ix+127]         ; 01C8 DD CB 7F 6E
        bit  5,[iy+127]         ; 01CC FD CB 7F 6E
        bit  5,a                ; 01D0 CB 6F
        bit  5,b                ; 01D2 CB 68
        bit  5,c                ; 01D4 CB 69
        bit  5,d                ; 01D6 CB 6A
        bit  5,e                ; 01D8 CB 6B
        bit  5,h                ; 01DA CB 6C
        bit  5,l                ; 01DC CB 6D
        bit  6,(hl)             ; 01DE CB 76
        bit  6,(ix+127)         ; 01E0 DD CB 7F 76
        bit  6,(iy+127)         ; 01E4 FD CB 7F 76
        bit  6,[hl]             ; 01E8 CB 76
        bit  6,[ix+127]         ; 01EA DD CB 7F 76
        bit  6,[iy+127]         ; 01EE FD CB 7F 76
        bit  6,a                ; 01F2 CB 77
        bit  6,b                ; 01F4 CB 70
        bit  6,c                ; 01F6 CB 71
        bit  6,d                ; 01F8 CB 72
        bit  6,e                ; 01FA CB 73
        bit  6,h                ; 01FC CB 74
        bit  6,l                ; 01FE CB 75
        bit  7,(hl)             ; 0200 CB 7E
        bit  7,(ix+127)         ; 0202 DD CB 7F 7E
        bit  7,(iy+127)         ; 0206 FD CB 7F 7E
        bit  7,[hl]             ; 020A CB 7E
        bit  7,[ix+127]         ; 020C DD CB 7F 7E
        bit  7,[iy+127]         ; 0210 FD CB 7F 7E
        bit  7,a                ; 0214 CB 7F
        bit  7,b                ; 0216 CB 78
        bit  7,c                ; 0218 CB 79
        bit  7,d                ; 021A CB 7A
        bit  7,e                ; 021C CB 7B
        bit  7,h                ; 021E CB 7C
        bit  7,l                ; 0220 CB 7D
        call -32768             ; 0222 CD 00 80
        CALL -32768             ; 0225 CD 00 80
        call -32767             ; 0228 CD 01 80
        call -128               ; 022B CD 80 FF
        call -1                 ; 022E CD FF FF
        call 0                  ; 0231 CD 00 00
        call 1                  ; 0234 CD 01 00
        call 127                ; 0237 CD 7F 00
        call 128                ; 023A CD 80 00
        call 255                ; 023D CD FF 00
        call 256                ; 0240 CD 00 01
        call 32767              ; 0243 CD FF 7F
        call 32768              ; 0246 CD 00 80
        call 65534              ; 0249 CD FE FF
        call 65535              ; 024C CD FF FF
        call c,65535            ; 024F DC FF FF
        call m,65535            ; 0252 FC FF FF
        CALL M,65535            ; 0255 FC FF FF
        call nc,65535           ; 0258 D4 FF FF
        CALL NC,65535           ; 025B D4 FF FF
        call nz,65535           ; 025E C4 FF FF
        CALL NZ,65535           ; 0261 C4 FF FF
        call p,65535            ; 0264 F4 FF FF
        CALL P,65535            ; 0267 F4 FF FF
        call pe,65535           ; 026A EC FF FF
        CALL PE,65535           ; 026D EC FF FF
        call po,65535           ; 0270 E4 FF FF
        CALL PO,65535           ; 0273 E4 FF FF
        call z,65535            ; 0276 CC FF FF
        CALL Z,65535            ; 0279 CC FF FF
        ccf                     ; 027C 3F
        CCF                     ; 027D 3F
        cp   (hl)               ; 027E BE
        CP   (HL)               ; 027F BE
        cp   (ix+127)           ; 0280 DD BE 7F
        cp   (iy+127)           ; 0283 FD BE 7F
        cp   255                ; 0286 FE FF
        cp   [hl]               ; 0288 BE
        cp   [ix+127]           ; 0289 DD BE 7F
        cp   [iy+127]           ; 028C FD BE 7F
        cp   a                  ; 028F BF
        cp   b                  ; 0290 B8
        cp   c                  ; 0291 B9
        cp   d                  ; 0292 BA
        cp   e                  ; 0293 BB
        cp   h                  ; 0294 BC
        cp   hx                 ; 0295 DD BC
        cp   hy                 ; 0297 FD BC
        cp   ixh                ; 0299 DD BC
        cp   ixl                ; 029B DD BD
        cp   iyh                ; 029D FD BC
        cp   iyl                ; 029F FD BD
        cp   l                  ; 02A1 BD
        cp   lx                 ; 02A2 DD BD
        cp   ly                 ; 02A4 FD BD
        cp   xh                 ; 02A6 DD BC
        cp   xl                 ; 02A8 DD BD
        cp   yh                 ; 02AA FD BC
        cp   yl                 ; 02AC FD BD
        cpd                     ; 02AE ED A9
        CPD                     ; 02B0 ED A9
        cpdr                    ; 02B2 ED B9
        CPDR                    ; 02B4 ED B9
        cpi                     ; 02B6 ED A1
        CPI                     ; 02B8 ED A1
        cpir                    ; 02BA ED B1
        CPIR                    ; 02BC ED B1
        cpl                     ; 02BE 2F
        CPL                     ; 02BF 2F
        daa                     ; 02C0 27
        DAA                     ; 02C1 27
        dec  (hl)               ; 02C2 35
        DEC  (HL)               ; 02C3 35
        dec  (ix+127)           ; 02C4 DD 35 7F
        dec  (iy+127)           ; 02C7 FD 35 7F
        dec  [hl]               ; 02CA 35
        dec  [ix+127]           ; 02CB DD 35 7F
        dec  [iy+127]           ; 02CE FD 35 7F
        dec  a                  ; 02D1 3D
        dec  b                  ; 02D2 05
        dec  bc                 ; 02D3 0B
        dec  c                  ; 02D4 0D
        dec  d                  ; 02D5 15
        dec  de                 ; 02D6 1B
        dec  e                  ; 02D7 1D
        dec  h                  ; 02D8 25
        dec  hl                 ; 02D9 2B
        dec  hx                 ; 02DA DD 25
        dec  hy                 ; 02DC FD 25
        dec  ix                 ; 02DE DD 2B
        dec  ixh                ; 02E0 DD 25
        dec  ixl                ; 02E2 DD 2D
        dec  iy                 ; 02E4 FD 2B
        dec  iyh                ; 02E6 FD 25
        dec  iyl                ; 02E8 FD 2D
        dec  l                  ; 02EA 2D
        dec  lx                 ; 02EB DD 2D
        dec  ly                 ; 02ED FD 2D
        dec  sp                 ; 02EF 3B
        dec  xh                 ; 02F0 DD 25
        dec  xl                 ; 02F2 DD 2D
        dec  yh                 ; 02F4 FD 25
        dec  yl                 ; 02F6 FD 2D
        di                      ; 02F8 F3
        DI                      ; 02F9 F3
        djnz 636                ; 02FA 10 80
        DJNZ 638                ; 02FC 10 80
        djnz 641                ; 02FE 10 81
        djnz 768                ; 0300 10 FE
        djnz 772                ; 0302 10 00
        djnz 775                ; 0304 10 01
        djnz 902                ; 0306 10 7E
        djnz 905                ; 0308 10 7F
        ei                      ; 030A FB
        EI                      ; 030B FB
        ex   (sp),hl            ; 030C E3
        EX   (SP),HL            ; 030D E3
        ex   (sp),ix            ; 030E DD E3
        ex   (sp),iy            ; 0310 FD E3
        ex   [sp],hl            ; 0312 E3
        ex   [sp],ix            ; 0313 DD E3
        ex   [sp],iy            ; 0315 FD E3
        ex   af                 ; 0317 08
        EX   AF                 ; 0318 08
        ex   af,af              ; 0319 08
        ex   af,af'             ; 031A 08
        EX   AF,AF'             ; 031B 08
        ex   de,hl              ; 031C EB
        exa                     ; 031D 08
        EXA                     ; 031E 08
        exx                     ; 031F D9
        EXX                     ; 0320 D9
        halt                    ; 0321 76
        HALT                    ; 0322 76
        im   0                  ; 0323 ED 46
        IM   0                  ; 0325 ED 46
        im   1                  ; 0327 ED 56
        im   2                  ; 0329 ED 5E
        in   a,(255)            ; 032B DB FF
        IN   A,(255)            ; 032D DB FF
        in   a,(c)              ; 032F ED 78
        in   a,[255]            ; 0331 DB FF
        in   a,[c]              ; 0333 ED 78
        in   b,(c)              ; 0335 ED 40
        in   b,[c]              ; 0337 ED 40
        in   c,(c)              ; 0339 ED 48
        in   c,[c]              ; 033B ED 48
        in   d,(c)              ; 033D ED 50
        in   d,[c]              ; 033F ED 50
        in   e,(c)              ; 0341 ED 58
        in   e,[c]              ; 0343 ED 58
        in   f,(c)              ; 0345 ED 70
        IN   F,(C)              ; 0347 ED 70
        in   f,[c]              ; 0349 ED 70
        in   h,(c)              ; 034B ED 60
        in   h,[c]              ; 034D ED 60
        in   l,(c)              ; 034F ED 68
        in   l,[c]              ; 0351 ED 68
        inc  (hl)               ; 0353 34
        INC  (HL)               ; 0354 34
        inc  (ix+127)           ; 0355 DD 34 7F
        inc  (iy+127)           ; 0358 FD 34 7F
        inc  [hl]               ; 035B 34
        inc  [ix+127]           ; 035C DD 34 7F
        inc  [iy+127]           ; 035F FD 34 7F
        inc  a                  ; 0362 3C
        inc  b                  ; 0363 04
        inc  bc                 ; 0364 03
        inc  c                  ; 0365 0C
        inc  d                  ; 0366 14
        inc  de                 ; 0367 13
        inc  e                  ; 0368 1C
        inc  h                  ; 0369 24
        inc  hl                 ; 036A 23
        inc  hx                 ; 036B DD 24
        inc  hy                 ; 036D FD 24
        inc  ix                 ; 036F DD 23
        inc  ixh                ; 0371 DD 24
        inc  ixl                ; 0373 DD 2C
        inc  iy                 ; 0375 FD 23
        inc  iyh                ; 0377 FD 24
        inc  iyl                ; 0379 FD 2C
        inc  l                  ; 037B 2C
        inc  lx                 ; 037C DD 2C
        inc  ly                 ; 037E FD 2C
        inc  sp                 ; 0380 33
        inc  xh                 ; 0381 DD 24
        inc  xl                 ; 0383 DD 2C
        inc  yh                 ; 0385 FD 24
        inc  yl                 ; 0387 FD 2C
        ind                     ; 0389 ED AA
        IND                     ; 038B ED AA
        indr                    ; 038D ED BA
        INDR                    ; 038F ED BA
        ini                     ; 0391 ED A2
        INI                     ; 0393 ED A2
        inir                    ; 0395 ED B2
        INIR                    ; 0397 ED B2
        jp   (hl)               ; 0399 E9
        JP   (HL)               ; 039A E9
        jp   (ix)               ; 039B DD E9
        jp   (iy)               ; 039D FD E9
        jp   65535              ; 039F C3 FF FF
        jp   [hl]               ; 03A2 E9
        jp   [ix]               ; 03A3 DD E9
        jp   [iy]               ; 03A5 FD E9
        jp   c,65535            ; 03A7 DA FF FF
        jp   hl                 ; 03AA E9
        jp   ix                 ; 03AB DD E9
        jp   iy                 ; 03AD FD E9
        jp   m,65535            ; 03AF FA FF FF
        jp   nc,65535           ; 03B2 D2 FF FF
        jp   nz,65535           ; 03B5 C2 FF FF
        jp   p,65535            ; 03B8 F2 FF FF
        jp   pe,65535           ; 03BB EA FF FF
        jp   po,65535           ; 03BE E2 FF FF
        jp   z,65535            ; 03C1 CA FF FF
        jr   1093               ; 03C4 18 7F
        JR   1095               ; 03C6 18 7F
        jr   c,1097             ; 03C8 38 7F
        jr   nc,1099            ; 03CA 30 7F
        jr   nz,1101            ; 03CC 20 7F
        jr   z,1103             ; 03CE 28 7F
        ld   (65535),a          ; 03D0 32 FF FF
        LD   (65535),A          ; 03D3 32 FF FF
        ld   (65535),bc         ; 03D6 ED 43 FF FF
        ld   (65535),de         ; 03DA ED 53 FF FF
        ld   (65535),hl         ; 03DE 22 FF FF
        ld   (65535),ix         ; 03E1 DD 22 FF FF
        ld   (65535),iy         ; 03E5 FD 22 FF FF
        ld   (65535),sp         ; 03E9 ED 73 FF FF
        ld   (bc),a             ; 03ED 02
        ld   (de),a             ; 03EE 12
        ld   (hl),255           ; 03EF 36 FF
        ld   (hl),a             ; 03F1 77
        ld   (hl),b             ; 03F2 70
        ld   (hl),bc            ; 03F3 71 23 70 2B
        ld   (hl),c             ; 03F7 71
        ld   (hl),d             ; 03F8 72
        ld   (hl),de            ; 03F9 73 23 72 2B
        ld   (hl),e             ; 03FD 73
        ld   (hl),h             ; 03FE 74
        ld   (hl),l             ; 03FF 75
        ld   (ix+127),255       ; 0400 DD 36 7F FF
        ld   (ix+127),a         ; 0404 DD 77 7F
        ld   (ix+127),b         ; 0407 DD 70 7F
        ld   (ix+126),bc        ; 040A DD 71 7E DD 70 7F
        ld   (ix+127),c         ; 0410 DD 71 7F
        ld   (ix+127),d         ; 0413 DD 72 7F
        ld   (ix+126),de        ; 0416 DD 73 7E DD 72 7F
        ld   (ix+127),e         ; 041C DD 73 7F
        ld   (ix+127),h         ; 041F DD 74 7F
        ld   (ix+126),hl        ; 0422 DD 75 7E DD 74 7F
        ld   (ix+127),l         ; 0428 DD 75 7F
        ld   (iy+127),255       ; 042B FD 36 7F FF
        ld   (iy+127),a         ; 042F FD 77 7F
        ld   (iy+127),b         ; 0432 FD 70 7F
        ld   (iy+126),bc        ; 0435 FD 71 7E FD 70 7F
        ld   (iy+127),c         ; 043B FD 71 7F
        ld   (iy+127),d         ; 043E FD 72 7F
        ld   (iy+126),de        ; 0441 FD 73 7E FD 72 7F
        ld   (iy+127),e         ; 0447 FD 73 7F
        ld   (iy+127),h         ; 044A FD 74 7F
        ld   (iy+126),hl        ; 044D FD 75 7E FD 74 7F
        ld   (iy+127),l         ; 0453 FD 75 7F
        ld   [65535],a          ; 0456 32 FF FF
        ld   [65535],bc         ; 0459 ED 43 FF FF
        ld   [65535],de         ; 045D ED 53 FF FF
        ld   [65535],hl         ; 0461 22 FF FF
        ld   [65535],ix         ; 0464 DD 22 FF FF
        ld   [65535],iy         ; 0468 FD 22 FF FF
        ld   [65535],sp         ; 046C ED 73 FF FF
        ld   [bc],a             ; 0470 02
        ld   [de],a             ; 0471 12
        ld   [hl],255           ; 0472 36 FF
        ld   [hl],a             ; 0474 77
        ld   [hl],b             ; 0475 70
        ld   [hl],bc            ; 0476 71 23 70 2B
        ld   [hl],c             ; 047A 71
        ld   [hl],d             ; 047B 72
        ld   [hl],de            ; 047C 73 23 72 2B
        ld   [hl],e             ; 0480 73
        ld   [hl],h             ; 0481 74
        ld   [hl],l             ; 0482 75
        ld   [ix+127],255       ; 0483 DD 36 7F FF
        ld   [ix+127],a         ; 0487 DD 77 7F
        ld   [ix+127],b         ; 048A DD 70 7F
        ld   [ix+126],bc        ; 048D DD 71 7E DD 70 7F
        ld   [ix+127],c         ; 0493 DD 71 7F
        ld   [ix+127],d         ; 0496 DD 72 7F
        ld   [ix+126],de        ; 0499 DD 73 7E DD 72 7F
        ld   [ix+127],e         ; 049F DD 73 7F
        ld   [ix+127],h         ; 04A2 DD 74 7F
        ld   [ix+126],hl        ; 04A5 DD 75 7E DD 74 7F
        ld   [ix+127],l         ; 04AB DD 75 7F
        ld   [iy+127],255       ; 04AE FD 36 7F FF
        ld   [iy+127],a         ; 04B2 FD 77 7F
        ld   [iy+127],b         ; 04B5 FD 70 7F
        ld   [iy+126],bc        ; 04B8 FD 71 7E FD 70 7F
        ld   [iy+127],c         ; 04BE FD 71 7F
        ld   [iy+127],d         ; 04C1 FD 72 7F
        ld   [iy+126],de        ; 04C4 FD 73 7E FD 72 7F
        ld   [iy+127],e         ; 04CA FD 73 7F
        ld   [iy+127],h         ; 04CD FD 74 7F
        ld   [iy+126],hl        ; 04D0 FD 75 7E FD 74 7F
        ld   [iy+127],l         ; 04D6 FD 75 7F
        ld   a,(65535)          ; 04D9 3A FF FF
        ld   a,(bc)             ; 04DC 0A
        ld   a,(de)             ; 04DD 1A
        ld   a,(hl)             ; 04DE 7E
        ld   a,(ix+127)         ; 04DF DD 7E 7F
        ld   a,(iy+127)         ; 04E2 FD 7E 7F
        ld   a,255              ; 04E5 3E FF
        ld   a,[65535]          ; 04E7 3A FF FF
        ld   a,[bc]             ; 04EA 0A
        ld   a,[de]             ; 04EB 1A
        ld   a,[hl]             ; 04EC 7E
        ld   a,[ix+127]         ; 04ED DD 7E 7F
        ld   a,[iy+127]         ; 04F0 FD 7E 7F
        ld   a,a                ; 04F3 7F
        ld   a,b                ; 04F4 78
        ld   a,c                ; 04F5 79
        ld   a,d                ; 04F6 7A
        ld   a,e                ; 04F7 7B
        ld   a,h                ; 04F8 7C
        ld   a,hx               ; 04F9 DD 7C
        ld   a,hy               ; 04FB FD 7C
        ld   a,i                ; 04FD ED 57
        LD   A,I                ; 04FF ED 57
        ld   a,ixh              ; 0501 DD 7C
        ld   a,ixl              ; 0503 DD 7D
        ld   a,iyh              ; 0505 FD 7C
        ld   a,iyl              ; 0507 FD 7D
        ld   a,l                ; 0509 7D
        ld   a,lx               ; 050A DD 7D
        ld   a,ly               ; 050C FD 7D
        ld   a,r                ; 050E ED 5F
        LD   A,R                ; 0510 ED 5F
        ld   a,xh               ; 0512 DD 7C
        ld   a,xl               ; 0514 DD 7D
        ld   a,yh               ; 0516 FD 7C
        ld   a,yl               ; 0518 FD 7D
        ld   b,(hl)             ; 051A 46
        ld   b,(ix+127)         ; 051B DD 46 7F
        ld   b,(iy+127)         ; 051E FD 46 7F
        ld   b,255              ; 0521 06 FF
        ld   b,[hl]             ; 0523 46
        ld   b,[ix+127]         ; 0524 DD 46 7F
        ld   b,[iy+127]         ; 0527 FD 46 7F
        ld   b,a                ; 052A 47
        ld   b,b                ; 052B 40
        ld   b,c                ; 052C 41
        ld   b,d                ; 052D 42
        ld   b,e                ; 052E 43
        ld   b,h                ; 052F 44
        ld   b,hx               ; 0530 DD 44
        ld   b,hy               ; 0532 FD 44
        ld   b,ixh              ; 0534 DD 44
        ld   b,ixl              ; 0536 DD 45
        ld   b,iyh              ; 0538 FD 44
        ld   b,iyl              ; 053A FD 45
        ld   b,l                ; 053C 45
        ld   b,lx               ; 053D DD 45
        ld   b,ly               ; 053F FD 45
        ld   b,xh               ; 0541 DD 44
        ld   b,xl               ; 0543 DD 45
        ld   b,yh               ; 0545 FD 44
        ld   b,yl               ; 0547 FD 45
        ld   bc,(65535)         ; 0549 ED 4B FF FF
        ld   bc,(hl)            ; 054D 4E 23 46 2B
        ld   bc,(ix+126)        ; 0551 DD 4E 7E DD 46 7F
        ld   bc,(iy+126)        ; 0557 FD 4E 7E FD 46 7F
        ld   bc,65535           ; 055D 01 FF FF
        ld   bc,[65535]         ; 0560 ED 4B FF FF
        ld   bc,[hl]            ; 0564 4E 23 46 2B
        ld   bc,[ix+126]        ; 0568 DD 4E 7E DD 46 7F
        ld   bc,[iy+126]        ; 056E FD 4E 7E FD 46 7F
        ld   bc,bc              ; 0574 40 49
        ld   bc,de              ; 0576 42 4B
        ld   bc,hl              ; 0578 44 4D
        ld   bc,ix              ; 057A DD 44 DD 4D
        ld   bc,iy              ; 057E FD 44 FD 4D
        ld   c,(hl)             ; 0582 4E
        ld   c,(ix+127)         ; 0583 DD 4E 7F
        ld   c,(iy+127)         ; 0586 FD 4E 7F
        ld   c,255              ; 0589 0E FF
        ld   c,[hl]             ; 058B 4E
        ld   c,[ix+127]         ; 058C DD 4E 7F
        ld   c,[iy+127]         ; 058F FD 4E 7F
        ld   c,a                ; 0592 4F
        ld   c,b                ; 0593 48
        ld   c,c                ; 0594 49
        ld   c,d                ; 0595 4A
        ld   c,e                ; 0596 4B
        ld   c,h                ; 0597 4C
        ld   c,hx               ; 0598 DD 4C
        ld   c,hy               ; 059A FD 4C
        ld   c,ixh              ; 059C DD 4C
        ld   c,ixl              ; 059E DD 4D
        ld   c,iyh              ; 05A0 FD 4C
        ld   c,iyl              ; 05A2 FD 4D
        ld   c,l                ; 05A4 4D
        ld   c,lx               ; 05A5 DD 4D
        ld   c,ly               ; 05A7 FD 4D
        ld   c,xh               ; 05A9 DD 4C
        ld   c,xl               ; 05AB DD 4D
        ld   c,yh               ; 05AD FD 4C
        ld   c,yl               ; 05AF FD 4D
        ld   d,(hl)             ; 05B1 56
        ld   d,(ix+127)         ; 05B2 DD 56 7F
        ld   d,(iy+127)         ; 05B5 FD 56 7F
        ld   d,255              ; 05B8 16 FF
        ld   d,[hl]             ; 05BA 56
        ld   d,[ix+127]         ; 05BB DD 56 7F
        ld   d,[iy+127]         ; 05BE FD 56 7F
        ld   d,a                ; 05C1 57
        ld   d,b                ; 05C2 50
        ld   d,c                ; 05C3 51
        ld   d,d                ; 05C4 52
        ld   d,e                ; 05C5 53
        ld   d,h                ; 05C6 54
        ld   d,hx               ; 05C7 DD 54
        ld   d,hy               ; 05C9 FD 54
        ld   d,ixh              ; 05CB DD 54
        ld   d,ixl              ; 05CD DD 55
        ld   d,iyh              ; 05CF FD 54
        ld   d,iyl              ; 05D1 FD 55
        ld   d,l                ; 05D3 55
        ld   d,lx               ; 05D4 DD 55
        ld   d,ly               ; 05D6 FD 55
        ld   d,xh               ; 05D8 DD 54
        ld   d,xl               ; 05DA DD 55
        ld   d,yh               ; 05DC FD 54
        ld   d,yl               ; 05DE FD 55
        ld   de,(65535)         ; 05E0 ED 5B FF FF
        ld   de,(hl)            ; 05E4 5E 23 56 2B
        ld   de,(ix+126)        ; 05E8 DD 5E 7E DD 56 7F
        ld   de,(iy+126)        ; 05EE FD 5E 7E FD 56 7F
        ld   de,65535           ; 05F4 11 FF FF
        ld   de,[65535]         ; 05F7 ED 5B FF FF
        ld   de,[hl]            ; 05FB 5E 23 56 2B
        ld   de,[ix+126]        ; 05FF DD 5E 7E DD 56 7F
        ld   de,[iy+126]        ; 0605 FD 5E 7E FD 56 7F
        ld   de,bc              ; 060B 50 59
        ld   de,de              ; 060D 52 5B
        ld   de,hl              ; 060F 54 5D
        ld   de,ix              ; 0611 DD 54 DD 5D
        ld   de,iy              ; 0615 FD 54 FD 5D
        ld   e,(hl)             ; 0619 5E
        ld   e,(ix+127)         ; 061A DD 5E 7F
        ld   e,(iy+127)         ; 061D FD 5E 7F
        ld   e,255              ; 0620 1E FF
        ld   e,[hl]             ; 0622 5E
        ld   e,[ix+127]         ; 0623 DD 5E 7F
        ld   e,[iy+127]         ; 0626 FD 5E 7F
        ld   e,a                ; 0629 5F
        ld   e,b                ; 062A 58
        ld   e,c                ; 062B 59
        ld   e,d                ; 062C 5A
        ld   e,e                ; 062D 5B
        ld   e,h                ; 062E 5C
        ld   e,hx               ; 062F DD 5C
        ld   e,hy               ; 0631 FD 5C
        ld   e,ixh              ; 0633 DD 5C
        ld   e,ixl              ; 0635 DD 5D
        ld   e,iyh              ; 0637 FD 5C
        ld   e,iyl              ; 0639 FD 5D
        ld   e,l                ; 063B 5D
        ld   e,lx               ; 063C DD 5D
        ld   e,ly               ; 063E FD 5D
        ld   e,xh               ; 0640 DD 5C
        ld   e,xl               ; 0642 DD 5D
        ld   e,yh               ; 0644 FD 5C
        ld   e,yl               ; 0646 FD 5D
        ld   h,(hl)             ; 0648 66
        ld   h,(ix+127)         ; 0649 DD 66 7F
        ld   h,(iy+127)         ; 064C FD 66 7F
        ld   h,255              ; 064F 26 FF
        ld   h,[hl]             ; 0651 66
        ld   h,[ix+127]         ; 0652 DD 66 7F
        ld   h,[iy+127]         ; 0655 FD 66 7F
        ld   h,a                ; 0658 67
        ld   h,b                ; 0659 60
        ld   h,c                ; 065A 61
        ld   h,d                ; 065B 62
        ld   h,e                ; 065C 63
        ld   h,h                ; 065D 64
        ld   h,l                ; 065E 65
        ld   hl,(65535)         ; 065F 2A FF FF
        ld   hl,(ix+126)        ; 0662 DD 6E 7E DD 66 7F
        ld   hl,(iy+126)        ; 0668 FD 6E 7E FD 66 7F
        ld   hl,65535           ; 066E 21 FF FF
        ld   hl,[65535]         ; 0671 2A FF FF
        ld   hl,[ix+126]        ; 0674 DD 6E 7E DD 66 7F
        ld   hl,[iy+126]        ; 067A FD 6E 7E FD 66 7F
        ld   hl,bc              ; 0680 60 69
        ld   hl,de              ; 0682 62 6B
        ld   hl,hl              ; 0684 64 6D
        ld   hl,ix              ; 0686 DD E5 E1
        ld   hl,iy              ; 0689 FD E5 E1
        ld   hx,255             ; 068C DD 26 FF
        ld   hx,a               ; 068F DD 67
        ld   hx,b               ; 0691 DD 60
        ld   hx,c               ; 0693 DD 61
        ld   hx,d               ; 0695 DD 62
        ld   hx,e               ; 0697 DD 63
        ld   hx,hx              ; 0699 DD 64
        ld   hx,lx              ; 069B DD 65
        ld   hy,255             ; 069D FD 26 FF
        ld   hy,a               ; 06A0 FD 67
        ld   hy,b               ; 06A2 FD 60
        ld   hy,c               ; 06A4 FD 61
        ld   hy,d               ; 06A6 FD 62
        ld   hy,e               ; 06A8 FD 63
        ld   hy,hy              ; 06AA FD 64
        ld   hy,ly              ; 06AC FD 65
        ld   i,a                ; 06AE ED 47
        ld   ix,(65535)         ; 06B0 DD 2A FF FF
        ld   ix,65535           ; 06B4 DD 21 FF FF
        ld   ix,[65535]         ; 06B8 DD 2A FF FF
        ld   ix,bc              ; 06BC DD 69 DD 60
        ld   ix,de              ; 06C0 DD 6B DD 62
        ld   ix,hl              ; 06C4 E5 DD E1
        ld   ix,ix              ; 06C7 DD 6D DD 64
        ld   ix,iy              ; 06CB FD E5 DD E1
        ld   ixh,255            ; 06CF DD 26 FF
        ld   ixh,a              ; 06D2 DD 67
        ld   ixh,b              ; 06D4 DD 60
        ld   ixh,c              ; 06D6 DD 61
        ld   ixh,d              ; 06D8 DD 62
        ld   ixh,e              ; 06DA DD 63
        ld   ixh,ixh            ; 06DC DD 64
        ld   ixh,ixl            ; 06DE DD 65
        ld   ixl,255            ; 06E0 DD 2E FF
        ld   ixl,a              ; 06E3 DD 6F
        ld   ixl,b              ; 06E5 DD 68
        ld   ixl,c              ; 06E7 DD 69
        ld   ixl,d              ; 06E9 DD 6A
        ld   ixl,e              ; 06EB DD 6B
        ld   ixl,ixh            ; 06ED DD 6C
        ld   ixl,ixl            ; 06EF DD 6D
        ld   iy,(65535)         ; 06F1 FD 2A FF FF
        ld   iy,65535           ; 06F5 FD 21 FF FF
        ld   iy,[65535]         ; 06F9 FD 2A FF FF
        ld   iy,bc              ; 06FD FD 69 FD 60
        ld   iy,de              ; 0701 FD 6B FD 62
        ld   iy,hl              ; 0705 E5 FD E1
        ld   iy,ix              ; 0708 DD E5 FD E1
        ld   iy,iy              ; 070C FD 6D FD 64
        ld   iyh,255            ; 0710 FD 26 FF
        ld   iyh,a              ; 0713 FD 67
        ld   iyh,b              ; 0715 FD 60
        ld   iyh,c              ; 0717 FD 61
        ld   iyh,d              ; 0719 FD 62
        ld   iyh,e              ; 071B FD 63
        ld   iyh,iyh            ; 071D FD 64
        ld   iyh,iyl            ; 071F FD 65
        ld   iyl,255            ; 0721 FD 2E FF
        ld   iyl,a              ; 0724 FD 6F
        ld   iyl,b              ; 0726 FD 68
        ld   iyl,c              ; 0728 FD 69
        ld   iyl,d              ; 072A FD 6A
        ld   iyl,e              ; 072C FD 6B
        ld   iyl,iyh            ; 072E FD 6C
        ld   iyl,iyl            ; 0730 FD 6D
        ld   l,(hl)             ; 0732 6E
        ld   l,(ix+127)         ; 0733 DD 6E 7F
        ld   l,(iy+127)         ; 0736 FD 6E 7F
        ld   l,255              ; 0739 2E FF
        ld   l,[hl]             ; 073B 6E
        ld   l,[ix+127]         ; 073C DD 6E 7F
        ld   l,[iy+127]         ; 073F FD 6E 7F
        ld   l,a                ; 0742 6F
        ld   l,b                ; 0743 68
        ld   l,c                ; 0744 69
        ld   l,d                ; 0745 6A
        ld   l,e                ; 0746 6B
        ld   l,h                ; 0747 6C
        ld   l,l                ; 0748 6D
        ld   lx,255             ; 0749 DD 2E FF
        ld   lx,a               ; 074C DD 6F
        ld   lx,b               ; 074E DD 68
        ld   lx,c               ; 0750 DD 69
        ld   lx,d               ; 0752 DD 6A
        ld   lx,e               ; 0754 DD 6B
        ld   lx,hx              ; 0756 DD 6C
        ld   lx,lx              ; 0758 DD 6D
        ld   ly,255             ; 075A FD 2E FF
        ld   ly,a               ; 075D FD 6F
        ld   ly,b               ; 075F FD 68
        ld   ly,c               ; 0761 FD 69
        ld   ly,d               ; 0763 FD 6A
        ld   ly,e               ; 0765 FD 6B
        ld   ly,hy              ; 0767 FD 6C
        ld   ly,ly              ; 0769 FD 6D
        ld   r,a                ; 076B ED 4F
        ld   sp,(65535)         ; 076D ED 7B FF FF
        ld   sp,65535           ; 0771 31 FF FF
        ld   sp,[65535]         ; 0774 ED 7B FF FF
        ld   sp,hl              ; 0778 F9
        ld   sp,ix              ; 0779 DD F9
        ld   sp,iy              ; 077B FD F9
        ld   xh,255             ; 077D DD 26 FF
        ld   xh,a               ; 0780 DD 67
        ld   xh,b               ; 0782 DD 60
        ld   xh,c               ; 0784 DD 61
        ld   xh,d               ; 0786 DD 62
        ld   xh,e               ; 0788 DD 63
        ld   xh,xh              ; 078A DD 64
        ld   xh,xl              ; 078C DD 65
        ld   xl,255             ; 078E DD 2E FF
        ld   xl,a               ; 0791 DD 6F
        ld   xl,b               ; 0793 DD 68
        ld   xl,c               ; 0795 DD 69
        ld   xl,d               ; 0797 DD 6A
        ld   xl,e               ; 0799 DD 6B
        ld   xl,xh              ; 079B DD 6C
        ld   xl,xl              ; 079D DD 6D
        ld   yh,255             ; 079F FD 26 FF
        ld   yh,a               ; 07A2 FD 67
        ld   yh,b               ; 07A4 FD 60
        ld   yh,c               ; 07A6 FD 61
        ld   yh,d               ; 07A8 FD 62
        ld   yh,e               ; 07AA FD 63
        ld   yh,yh              ; 07AC FD 64
        ld   yh,yl              ; 07AE FD 65
        ld   yl,255             ; 07B0 FD 2E FF
        ld   yl,a               ; 07B3 FD 6F
        ld   yl,b               ; 07B5 FD 68
        ld   yl,c               ; 07B7 FD 69
        ld   yl,d               ; 07B9 FD 6A
        ld   yl,e               ; 07BB FD 6B
        ld   yl,yh              ; 07BD FD 6C
        ld   yl,yl              ; 07BF FD 6D
        ldd                     ; 07C1 ED A8
        LDD                     ; 07C3 ED A8
        ldd  (bc),a             ; 07C5 02 0B
        ldd  (de),a             ; 07C7 12 1B
        ldd  (hl),255           ; 07C9 36 FF 2B
        ldd  (hl),a             ; 07CC 77 2B
        ldd  (hl),b             ; 07CE 70 2B
        ldd  (hl),c             ; 07D0 71 2B
        ldd  (hl),d             ; 07D2 72 2B
        ldd  (hl),e             ; 07D4 73 2B
        ldd  (hl),h             ; 07D6 74 2B
        ldd  (hl),l             ; 07D8 75 2B
        ldd  (ix+127),255       ; 07DA DD 36 7F FF DD 2B
        ldd  (ix+127),a         ; 07E0 DD 77 7F DD 2B
        ldd  (ix+127),b         ; 07E5 DD 70 7F DD 2B
        ldd  (ix+127),c         ; 07EA DD 71 7F DD 2B
        ldd  (ix+127),d         ; 07EF DD 72 7F DD 2B
        ldd  (ix+127),e         ; 07F4 DD 73 7F DD 2B
        ldd  (ix+127),h         ; 07F9 DD 74 7F DD 2B
        ldd  (ix+127),l         ; 07FE DD 75 7F DD 2B
        ldd  (iy+127),255       ; 0803 FD 36 7F FF FD 2B
        ldd  (iy+127),a         ; 0809 FD 77 7F FD 2B
        ldd  (iy+127),b         ; 080E FD 70 7F FD 2B
        ldd  (iy+127),c         ; 0813 FD 71 7F FD 2B
        ldd  (iy+127),d         ; 0818 FD 72 7F FD 2B
        ldd  (iy+127),e         ; 081D FD 73 7F FD 2B
        ldd  (iy+127),h         ; 0822 FD 74 7F FD 2B
        ldd  (iy+127),l         ; 0827 FD 75 7F FD 2B
        ldd  [bc],a             ; 082C 02 0B
        ldd  [de],a             ; 082E 12 1B
        ldd  [hl],255           ; 0830 36 FF 2B
        ldd  [hl],a             ; 0833 77 2B
        ldd  [hl],b             ; 0835 70 2B
        ldd  [hl],c             ; 0837 71 2B
        ldd  [hl],d             ; 0839 72 2B
        ldd  [hl],e             ; 083B 73 2B
        ldd  [hl],h             ; 083D 74 2B
        ldd  [hl],l             ; 083F 75 2B
        ldd  [ix+127],255       ; 0841 DD 36 7F FF DD 2B
        ldd  [ix+127],a         ; 0847 DD 77 7F DD 2B
        ldd  [ix+127],b         ; 084C DD 70 7F DD 2B
        ldd  [ix+127],c         ; 0851 DD 71 7F DD 2B
        ldd  [ix+127],d         ; 0856 DD 72 7F DD 2B
        ldd  [ix+127],e         ; 085B DD 73 7F DD 2B
        ldd  [ix+127],h         ; 0860 DD 74 7F DD 2B
        ldd  [ix+127],l         ; 0865 DD 75 7F DD 2B
        ldd  [iy+127],255       ; 086A FD 36 7F FF FD 2B
        ldd  [iy+127],a         ; 0870 FD 77 7F FD 2B
        ldd  [iy+127],b         ; 0875 FD 70 7F FD 2B
        ldd  [iy+127],c         ; 087A FD 71 7F FD 2B
        ldd  [iy+127],d         ; 087F FD 72 7F FD 2B
        ldd  [iy+127],e         ; 0884 FD 73 7F FD 2B
        ldd  [iy+127],h         ; 0889 FD 74 7F FD 2B
        ldd  [iy+127],l         ; 088E FD 75 7F FD 2B
        ldd  a,(bc)             ; 0893 0A 0B
        ldd  a,(de)             ; 0895 1A 1B
        ldd  a,(hl)             ; 0897 7E 2B
        ldd  a,(ix+127)         ; 0899 DD 7E 7F DD 2B
        ldd  a,(iy+127)         ; 089E FD 7E 7F FD 2B
        ldd  a,[bc]             ; 08A3 0A 0B
        ldd  a,[de]             ; 08A5 1A 1B
        ldd  a,[hl]             ; 08A7 7E 2B
        ldd  a,[ix+127]         ; 08A9 DD 7E 7F DD 2B
        ldd  a,[iy+127]         ; 08AE FD 7E 7F FD 2B
        ldd  b,(hl)             ; 08B3 46 2B
        ldd  b,(ix+127)         ; 08B5 DD 46 7F DD 2B
        ldd  b,(iy+127)         ; 08BA FD 46 7F FD 2B
        ldd  b,[hl]             ; 08BF 46 2B
        ldd  b,[ix+127]         ; 08C1 DD 46 7F DD 2B
        ldd  b,[iy+127]         ; 08C6 FD 46 7F FD 2B
        ldd  c,(hl)             ; 08CB 4E 2B
        ldd  c,(ix+127)         ; 08CD DD 4E 7F DD 2B
        ldd  c,(iy+127)         ; 08D2 FD 4E 7F FD 2B
        ldd  c,[hl]             ; 08D7 4E 2B
        ldd  c,[ix+127]         ; 08D9 DD 4E 7F DD 2B
        ldd  c,[iy+127]         ; 08DE FD 4E 7F FD 2B
        ldd  d,(hl)             ; 08E3 56 2B
        ldd  d,(ix+127)         ; 08E5 DD 56 7F DD 2B
        ldd  d,(iy+127)         ; 08EA FD 56 7F FD 2B
        ldd  d,[hl]             ; 08EF 56 2B
        ldd  d,[ix+127]         ; 08F1 DD 56 7F DD 2B
        ldd  d,[iy+127]         ; 08F6 FD 56 7F FD 2B
        ldd  e,(hl)             ; 08FB 5E 2B
        ldd  e,(ix+127)         ; 08FD DD 5E 7F DD 2B
        ldd  e,(iy+127)         ; 0902 FD 5E 7F FD 2B
        ldd  e,[hl]             ; 0907 5E 2B
        ldd  e,[ix+127]         ; 0909 DD 5E 7F DD 2B
        ldd  e,[iy+127]         ; 090E FD 5E 7F FD 2B
        ldd  h,(hl)             ; 0913 66 2B
        ldd  h,(ix+127)         ; 0915 DD 66 7F DD 2B
        ldd  h,(iy+127)         ; 091A FD 66 7F FD 2B
        ldd  h,[hl]             ; 091F 66 2B
        ldd  h,[ix+127]         ; 0921 DD 66 7F DD 2B
        ldd  h,[iy+127]         ; 0926 FD 66 7F FD 2B
        ldd  l,(hl)             ; 092B 6E 2B
        ldd  l,(ix+127)         ; 092D DD 6E 7F DD 2B
        ldd  l,(iy+127)         ; 0932 FD 6E 7F FD 2B
        ldd  l,[hl]             ; 0937 6E 2B
        ldd  l,[ix+127]         ; 0939 DD 6E 7F DD 2B
        ldd  l,[iy+127]         ; 093E FD 6E 7F FD 2B
        lddr                    ; 0943 ED B8
        LDDR                    ; 0945 ED B8
        ldi                     ; 0947 ED A0
        LDI                     ; 0949 ED A0
        ldi  (bc),a             ; 094B 02 03
        ldi  (de),a             ; 094D 12 13
        ldi  (hl),255           ; 094F 36 FF 23
        ldi  (hl),a             ; 0952 77 23
        ldi  (hl),b             ; 0954 70 23
        ldi  (hl),bc            ; 0956 71 23 70 23
        ldi  (hl),c             ; 095A 71 23
        ldi  (hl),d             ; 095C 72 23
        ldi  (hl),de            ; 095E 73 23 72 23
        ldi  (hl),e             ; 0962 73 23
        ldi  (hl),h             ; 0964 74 23
        ldi  (hl),l             ; 0966 75 23
        ldi  (ix+127),255       ; 0968 DD 36 7F FF DD 23
        ldi  (ix+127),a         ; 096E DD 77 7F DD 23
        ldi  (ix+127),b         ; 0973 DD 70 7F DD 23
        ldi  (ix+126),bc        ; 0978 DD 71 7E DD 23 DD 70 7E DD 23
        ldi  (ix+127),c         ; 0982 DD 71 7F DD 23
        ldi  (ix+127),d         ; 0987 DD 72 7F DD 23
        ldi  (ix+126),de        ; 098C DD 73 7E DD 23 DD 72 7E DD 23
        ldi  (ix+127),e         ; 0996 DD 73 7F DD 23
        ldi  (ix+127),h         ; 099B DD 74 7F DD 23
        ldi  (ix+126),hl        ; 09A0 DD 75 7E DD 23 DD 74 7E DD 23
        ldi  (ix+127),l         ; 09AA DD 75 7F DD 23
        ldi  (iy+127),255       ; 09AF FD 36 7F FF FD 23
        ldi  (iy+127),a         ; 09B5 FD 77 7F FD 23
        ldi  (iy+127),b         ; 09BA FD 70 7F FD 23
        ldi  (iy+126),bc        ; 09BF FD 71 7E FD 23 FD 70 7E FD 23
        ldi  (iy+127),c         ; 09C9 FD 71 7F FD 23
        ldi  (iy+127),d         ; 09CE FD 72 7F FD 23
        ldi  (iy+126),de        ; 09D3 FD 73 7E FD 23 FD 72 7E FD 23
        ldi  (iy+127),e         ; 09DD FD 73 7F FD 23
        ldi  (iy+127),h         ; 09E2 FD 74 7F FD 23
        ldi  (iy+126),hl        ; 09E7 FD 75 7E FD 23 FD 74 7E FD 23
        ldi  (iy+127),l         ; 09F1 FD 75 7F FD 23
        ldi  [bc],a             ; 09F6 02 03
        ldi  [de],a             ; 09F8 12 13
        ldi  [hl],255           ; 09FA 36 FF 23
        ldi  [hl],a             ; 09FD 77 23
        ldi  [hl],b             ; 09FF 70 23
        ldi  [hl],bc            ; 0A01 71 23 70 23
        ldi  [hl],c             ; 0A05 71 23
        ldi  [hl],d             ; 0A07 72 23
        ldi  [hl],de            ; 0A09 73 23 72 23
        ldi  [hl],e             ; 0A0D 73 23
        ldi  [hl],h             ; 0A0F 74 23
        ldi  [hl],l             ; 0A11 75 23
        ldi  [ix+127],255       ; 0A13 DD 36 7F FF DD 23
        ldi  [ix+127],a         ; 0A19 DD 77 7F DD 23
        ldi  [ix+127],b         ; 0A1E DD 70 7F DD 23
        ldi  [ix+126],bc        ; 0A23 DD 71 7E DD 23 DD 70 7E DD 23
        ldi  [ix+127],c         ; 0A2D DD 71 7F DD 23
        ldi  [ix+127],d         ; 0A32 DD 72 7F DD 23
        ldi  [ix+126],de        ; 0A37 DD 73 7E DD 23 DD 72 7E DD 23
        ldi  [ix+127],e         ; 0A41 DD 73 7F DD 23
        ldi  [ix+127],h         ; 0A46 DD 74 7F DD 23
        ldi  [ix+126],hl        ; 0A4B DD 75 7E DD 23 DD 74 7E DD 23
        ldi  [ix+127],l         ; 0A55 DD 75 7F DD 23
        ldi  [iy+127],255       ; 0A5A FD 36 7F FF FD 23
        ldi  [iy+127],a         ; 0A60 FD 77 7F FD 23
        ldi  [iy+127],b         ; 0A65 FD 70 7F FD 23
        ldi  [iy+126],bc        ; 0A6A FD 71 7E FD 23 FD 70 7E FD 23
        ldi  [iy+127],c         ; 0A74 FD 71 7F FD 23
        ldi  [iy+127],d         ; 0A79 FD 72 7F FD 23
        ldi  [iy+126],de        ; 0A7E FD 73 7E FD 23 FD 72 7E FD 23
        ldi  [iy+127],e         ; 0A88 FD 73 7F FD 23
        ldi  [iy+127],h         ; 0A8D FD 74 7F FD 23
        ldi  [iy+126],hl        ; 0A92 FD 75 7E FD 23 FD 74 7E FD 23
        ldi  [iy+127],l         ; 0A9C FD 75 7F FD 23
        ldi  a,(bc)             ; 0AA1 0A 03
        ldi  a,(de)             ; 0AA3 1A 13
        ldi  a,(hl)             ; 0AA5 7E 23
        ldi  a,(ix+127)         ; 0AA7 DD 7E 7F DD 23
        ldi  a,(iy+127)         ; 0AAC FD 7E 7F FD 23
        ldi  a,[bc]             ; 0AB1 0A 03
        ldi  a,[de]             ; 0AB3 1A 13
        ldi  a,[hl]             ; 0AB5 7E 23
        ldi  a,[ix+127]         ; 0AB7 DD 7E 7F DD 23
        ldi  a,[iy+127]         ; 0ABC FD 7E 7F FD 23
        ldi  b,(hl)             ; 0AC1 46 23
        ldi  b,(ix+127)         ; 0AC3 DD 46 7F DD 23
        ldi  b,(iy+127)         ; 0AC8 FD 46 7F FD 23
        ldi  b,[hl]             ; 0ACD 46 23
        ldi  b,[ix+127]         ; 0ACF DD 46 7F DD 23
        ldi  b,[iy+127]         ; 0AD4 FD 46 7F FD 23
        ldi  bc,(hl)            ; 0AD9 4E 23 46 23
        ldi  bc,(ix+126)        ; 0ADD DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,(iy+126)        ; 0AE7 FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  bc,[hl]            ; 0AF1 4E 23 46 23
        ldi  bc,[ix+126]        ; 0AF5 DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,[iy+126]        ; 0AFF FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  c,(hl)             ; 0B09 4E 23
        ldi  c,(ix+127)         ; 0B0B DD 4E 7F DD 23
        ldi  c,(iy+127)         ; 0B10 FD 4E 7F FD 23
        ldi  c,[hl]             ; 0B15 4E 23
        ldi  c,[ix+127]         ; 0B17 DD 4E 7F DD 23
        ldi  c,[iy+127]         ; 0B1C FD 4E 7F FD 23
        ldi  d,(hl)             ; 0B21 56 23
        ldi  d,(ix+127)         ; 0B23 DD 56 7F DD 23
        ldi  d,(iy+127)         ; 0B28 FD 56 7F FD 23
        ldi  d,[hl]             ; 0B2D 56 23
        ldi  d,[ix+127]         ; 0B2F DD 56 7F DD 23
        ldi  d,[iy+127]         ; 0B34 FD 56 7F FD 23
        ldi  de,(hl)            ; 0B39 5E 23 56 23
        ldi  de,(ix+126)        ; 0B3D DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,(iy+126)        ; 0B47 FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  de,[hl]            ; 0B51 5E 23 56 23
        ldi  de,[ix+126]        ; 0B55 DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,[iy+126]        ; 0B5F FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  e,(hl)             ; 0B69 5E 23
        ldi  e,(ix+127)         ; 0B6B DD 5E 7F DD 23
        ldi  e,(iy+127)         ; 0B70 FD 5E 7F FD 23
        ldi  e,[hl]             ; 0B75 5E 23
        ldi  e,[ix+127]         ; 0B77 DD 5E 7F DD 23
        ldi  e,[iy+127]         ; 0B7C FD 5E 7F FD 23
        ldi  h,(hl)             ; 0B81 66 23
        ldi  h,(ix+127)         ; 0B83 DD 66 7F DD 23
        ldi  h,(iy+127)         ; 0B88 FD 66 7F FD 23
        ldi  h,[hl]             ; 0B8D 66 23
        ldi  h,[ix+127]         ; 0B8F DD 66 7F DD 23
        ldi  h,[iy+127]         ; 0B94 FD 66 7F FD 23
        ldi  hl,(ix+126)        ; 0B99 DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,(iy+126)        ; 0BA3 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  hl,[ix+126]        ; 0BAD DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,[iy+126]        ; 0BB7 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  l,(hl)             ; 0BC1 6E 23
        ldi  l,(ix+127)         ; 0BC3 DD 6E 7F DD 23
        ldi  l,(iy+127)         ; 0BC8 FD 6E 7F FD 23
        ldi  l,[hl]             ; 0BCD 6E 23
        ldi  l,[ix+127]         ; 0BCF DD 6E 7F DD 23
        ldi  l,[iy+127]         ; 0BD4 FD 6E 7F FD 23
        ldir                    ; 0BD9 ED B0
        LDIR                    ; 0BDB ED B0
        neg                     ; 0BDD ED 44
        NEG                     ; 0BDF ED 44
        nop                     ; 0BE1 00
        NOP                     ; 0BE2 00
        or   (hl)               ; 0BE3 B6
        OR   (HL)               ; 0BE4 B6
        or   (ix+127)           ; 0BE5 DD B6 7F
        or   (iy+127)           ; 0BE8 FD B6 7F
        or   255                ; 0BEB F6 FF
        or   [hl]               ; 0BED B6
        or   [ix+127]           ; 0BEE DD B6 7F
        or   [iy+127]           ; 0BF1 FD B6 7F
        or   a                  ; 0BF4 B7
        or   b                  ; 0BF5 B0
        or   c                  ; 0BF6 B1
        or   d                  ; 0BF7 B2
        or   e                  ; 0BF8 B3
        or   h                  ; 0BF9 B4
        or   hx                 ; 0BFA DD B4
        or   hy                 ; 0BFC FD B4
        or   ixh                ; 0BFE DD B4
        or   ixl                ; 0C00 DD B5
        or   iyh                ; 0C02 FD B4
        or   iyl                ; 0C04 FD B5
        or   l                  ; 0C06 B5
        or   lx                 ; 0C07 DD B5
        or   ly                 ; 0C09 FD B5
        or   xh                 ; 0C0B DD B4
        or   xl                 ; 0C0D DD B5
        or   yh                 ; 0C0F FD B4
        or   yl                 ; 0C11 FD B5
        otdr                    ; 0C13 ED BB
        OTDR                    ; 0C15 ED BB
        otir                    ; 0C17 ED B3
        OTIR                    ; 0C19 ED B3
        out  (255),a            ; 0C1B D3 FF
        OUT  (255),A            ; 0C1D D3 FF
        out  (c),0              ; 0C1F ED 71
        out  (c),a              ; 0C21 ED 79
        out  (c),b              ; 0C23 ED 41
        out  (c),c              ; 0C25 ED 49
        out  (c),d              ; 0C27 ED 51
        out  (c),e              ; 0C29 ED 59
        out  (c),h              ; 0C2B ED 61
        out  (c),l              ; 0C2D ED 69
        out  [255],a            ; 0C2F D3 FF
        out  [c],0              ; 0C31 ED 71
        out  [c],a              ; 0C33 ED 79
        out  [c],b              ; 0C35 ED 41
        out  [c],c              ; 0C37 ED 49
        out  [c],d              ; 0C39 ED 51
        out  [c],e              ; 0C3B ED 59
        out  [c],h              ; 0C3D ED 61
        out  [c],l              ; 0C3F ED 69
        outd                    ; 0C41 ED AB
        OUTD                    ; 0C43 ED AB
        outi                    ; 0C45 ED A3
        OUTI                    ; 0C47 ED A3
        pop  af                 ; 0C49 F1
        POP  AF                 ; 0C4A F1
        pop  bc                 ; 0C4B C1
        pop  de                 ; 0C4C D1
        pop  hl                 ; 0C4D E1
        pop  ix                 ; 0C4E DD E1
        pop  iy                 ; 0C50 FD E1
        push af                 ; 0C52 F5
        PUSH AF                 ; 0C53 F5
        push bc                 ; 0C54 C5
        push de                 ; 0C55 D5
        push hl                 ; 0C56 E5
        push ix                 ; 0C57 DD E5
        push iy                 ; 0C59 FD E5
        res  0,(hl)             ; 0C5B CB 86
        RES  0,(HL)             ; 0C5D CB 86
        res  0,(ix+127)         ; 0C5F DD CB 7F 86
        res  0,(ix+127),a       ; 0C63 DD CB 7F 87
        res  0,(ix+127),b       ; 0C67 DD CB 7F 80
        res  0,(ix+127),c       ; 0C6B DD CB 7F 81
        res  0,(ix+127),d       ; 0C6F DD CB 7F 82
        res  0,(ix+127),e       ; 0C73 DD CB 7F 83
        res  0,(ix+127),h       ; 0C77 DD CB 7F 84
        res  0,(ix+127),l       ; 0C7B DD CB 7F 85
        res  0,(iy+127)         ; 0C7F FD CB 7F 86
        res  0,(iy+127),a       ; 0C83 FD CB 7F 87
        res  0,(iy+127),b       ; 0C87 FD CB 7F 80
        res  0,(iy+127),c       ; 0C8B FD CB 7F 81
        res  0,(iy+127),d       ; 0C8F FD CB 7F 82
        res  0,(iy+127),e       ; 0C93 FD CB 7F 83
        res  0,(iy+127),h       ; 0C97 FD CB 7F 84
        res  0,(iy+127),l       ; 0C9B FD CB 7F 85
        res  0,[hl]             ; 0C9F CB 86
        res  0,[ix+127]         ; 0CA1 DD CB 7F 86
        res  0,[ix+127],a       ; 0CA5 DD CB 7F 87
        res  0,[ix+127],b       ; 0CA9 DD CB 7F 80
        res  0,[ix+127],c       ; 0CAD DD CB 7F 81
        res  0,[ix+127],d       ; 0CB1 DD CB 7F 82
        res  0,[ix+127],e       ; 0CB5 DD CB 7F 83
        res  0,[ix+127],h       ; 0CB9 DD CB 7F 84
        res  0,[ix+127],l       ; 0CBD DD CB 7F 85
        res  0,[iy+127]         ; 0CC1 FD CB 7F 86
        res  0,[iy+127],a       ; 0CC5 FD CB 7F 87
        res  0,[iy+127],b       ; 0CC9 FD CB 7F 80
        res  0,[iy+127],c       ; 0CCD FD CB 7F 81
        res  0,[iy+127],d       ; 0CD1 FD CB 7F 82
        res  0,[iy+127],e       ; 0CD5 FD CB 7F 83
        res  0,[iy+127],h       ; 0CD9 FD CB 7F 84
        res  0,[iy+127],l       ; 0CDD FD CB 7F 85
        res  0,a                ; 0CE1 CB 87
        res  0,b                ; 0CE3 CB 80
        res  0,c                ; 0CE5 CB 81
        res  0,d                ; 0CE7 CB 82
        res  0,e                ; 0CE9 CB 83
        res  0,h                ; 0CEB CB 84
        res  0,l                ; 0CED CB 85
        res  1,(hl)             ; 0CEF CB 8E
        res  1,(ix+127)         ; 0CF1 DD CB 7F 8E
        res  1,(ix+127),a       ; 0CF5 DD CB 7F 8F
        res  1,(ix+127),b       ; 0CF9 DD CB 7F 88
        res  1,(ix+127),c       ; 0CFD DD CB 7F 89
        res  1,(ix+127),d       ; 0D01 DD CB 7F 8A
        res  1,(ix+127),e       ; 0D05 DD CB 7F 8B
        res  1,(ix+127),h       ; 0D09 DD CB 7F 8C
        res  1,(ix+127),l       ; 0D0D DD CB 7F 8D
        res  1,(iy+127)         ; 0D11 FD CB 7F 8E
        res  1,(iy+127),a       ; 0D15 FD CB 7F 8F
        res  1,(iy+127),b       ; 0D19 FD CB 7F 88
        res  1,(iy+127),c       ; 0D1D FD CB 7F 89
        res  1,(iy+127),d       ; 0D21 FD CB 7F 8A
        res  1,(iy+127),e       ; 0D25 FD CB 7F 8B
        res  1,(iy+127),h       ; 0D29 FD CB 7F 8C
        res  1,(iy+127),l       ; 0D2D FD CB 7F 8D
        res  1,[hl]             ; 0D31 CB 8E
        res  1,[ix+127]         ; 0D33 DD CB 7F 8E
        res  1,[ix+127],a       ; 0D37 DD CB 7F 8F
        res  1,[ix+127],b       ; 0D3B DD CB 7F 88
        res  1,[ix+127],c       ; 0D3F DD CB 7F 89
        res  1,[ix+127],d       ; 0D43 DD CB 7F 8A
        res  1,[ix+127],e       ; 0D47 DD CB 7F 8B
        res  1,[ix+127],h       ; 0D4B DD CB 7F 8C
        res  1,[ix+127],l       ; 0D4F DD CB 7F 8D
        res  1,[iy+127]         ; 0D53 FD CB 7F 8E
        res  1,[iy+127],a       ; 0D57 FD CB 7F 8F
        res  1,[iy+127],b       ; 0D5B FD CB 7F 88
        res  1,[iy+127],c       ; 0D5F FD CB 7F 89
        res  1,[iy+127],d       ; 0D63 FD CB 7F 8A
        res  1,[iy+127],e       ; 0D67 FD CB 7F 8B
        res  1,[iy+127],h       ; 0D6B FD CB 7F 8C
        res  1,[iy+127],l       ; 0D6F FD CB 7F 8D
        res  1,a                ; 0D73 CB 8F
        res  1,b                ; 0D75 CB 88
        res  1,c                ; 0D77 CB 89
        res  1,d                ; 0D79 CB 8A
        res  1,e                ; 0D7B CB 8B
        res  1,h                ; 0D7D CB 8C
        res  1,l                ; 0D7F CB 8D
        res  2,(hl)             ; 0D81 CB 96
        res  2,(ix+127)         ; 0D83 DD CB 7F 96
        res  2,(ix+127),a       ; 0D87 DD CB 7F 97
        res  2,(ix+127),b       ; 0D8B DD CB 7F 90
        res  2,(ix+127),c       ; 0D8F DD CB 7F 91
        res  2,(ix+127),d       ; 0D93 DD CB 7F 92
        res  2,(ix+127),e       ; 0D97 DD CB 7F 93
        res  2,(ix+127),h       ; 0D9B DD CB 7F 94
        res  2,(ix+127),l       ; 0D9F DD CB 7F 95
        res  2,(iy+127)         ; 0DA3 FD CB 7F 96
        res  2,(iy+127),a       ; 0DA7 FD CB 7F 97
        res  2,(iy+127),b       ; 0DAB FD CB 7F 90
        res  2,(iy+127),c       ; 0DAF FD CB 7F 91
        res  2,(iy+127),d       ; 0DB3 FD CB 7F 92
        res  2,(iy+127),e       ; 0DB7 FD CB 7F 93
        res  2,(iy+127),h       ; 0DBB FD CB 7F 94
        res  2,(iy+127),l       ; 0DBF FD CB 7F 95
        res  2,[hl]             ; 0DC3 CB 96
        res  2,[ix+127]         ; 0DC5 DD CB 7F 96
        res  2,[ix+127],a       ; 0DC9 DD CB 7F 97
        res  2,[ix+127],b       ; 0DCD DD CB 7F 90
        res  2,[ix+127],c       ; 0DD1 DD CB 7F 91
        res  2,[ix+127],d       ; 0DD5 DD CB 7F 92
        res  2,[ix+127],e       ; 0DD9 DD CB 7F 93
        res  2,[ix+127],h       ; 0DDD DD CB 7F 94
        res  2,[ix+127],l       ; 0DE1 DD CB 7F 95
        res  2,[iy+127]         ; 0DE5 FD CB 7F 96
        res  2,[iy+127],a       ; 0DE9 FD CB 7F 97
        res  2,[iy+127],b       ; 0DED FD CB 7F 90
        res  2,[iy+127],c       ; 0DF1 FD CB 7F 91
        res  2,[iy+127],d       ; 0DF5 FD CB 7F 92
        res  2,[iy+127],e       ; 0DF9 FD CB 7F 93
        res  2,[iy+127],h       ; 0DFD FD CB 7F 94
        res  2,[iy+127],l       ; 0E01 FD CB 7F 95
        res  2,a                ; 0E05 CB 97
        res  2,b                ; 0E07 CB 90
        res  2,c                ; 0E09 CB 91
        res  2,d                ; 0E0B CB 92
        res  2,e                ; 0E0D CB 93
        res  2,h                ; 0E0F CB 94
        res  2,l                ; 0E11 CB 95
        res  3,(hl)             ; 0E13 CB 9E
        res  3,(ix+127)         ; 0E15 DD CB 7F 9E
        res  3,(ix+127),a       ; 0E19 DD CB 7F 9F
        res  3,(ix+127),b       ; 0E1D DD CB 7F 98
        res  3,(ix+127),c       ; 0E21 DD CB 7F 99
        res  3,(ix+127),d       ; 0E25 DD CB 7F 9A
        res  3,(ix+127),e       ; 0E29 DD CB 7F 9B
        res  3,(ix+127),h       ; 0E2D DD CB 7F 9C
        res  3,(ix+127),l       ; 0E31 DD CB 7F 9D
        res  3,(iy+127)         ; 0E35 FD CB 7F 9E
        res  3,(iy+127),a       ; 0E39 FD CB 7F 9F
        res  3,(iy+127),b       ; 0E3D FD CB 7F 98
        res  3,(iy+127),c       ; 0E41 FD CB 7F 99
        res  3,(iy+127),d       ; 0E45 FD CB 7F 9A
        res  3,(iy+127),e       ; 0E49 FD CB 7F 9B
        res  3,(iy+127),h       ; 0E4D FD CB 7F 9C
        res  3,(iy+127),l       ; 0E51 FD CB 7F 9D
        res  3,[hl]             ; 0E55 CB 9E
        res  3,[ix+127]         ; 0E57 DD CB 7F 9E
        res  3,[ix+127],a       ; 0E5B DD CB 7F 9F
        res  3,[ix+127],b       ; 0E5F DD CB 7F 98
        res  3,[ix+127],c       ; 0E63 DD CB 7F 99
        res  3,[ix+127],d       ; 0E67 DD CB 7F 9A
        res  3,[ix+127],e       ; 0E6B DD CB 7F 9B
        res  3,[ix+127],h       ; 0E6F DD CB 7F 9C
        res  3,[ix+127],l       ; 0E73 DD CB 7F 9D
        res  3,[iy+127]         ; 0E77 FD CB 7F 9E
        res  3,[iy+127],a       ; 0E7B FD CB 7F 9F
        res  3,[iy+127],b       ; 0E7F FD CB 7F 98
        res  3,[iy+127],c       ; 0E83 FD CB 7F 99
        res  3,[iy+127],d       ; 0E87 FD CB 7F 9A
        res  3,[iy+127],e       ; 0E8B FD CB 7F 9B
        res  3,[iy+127],h       ; 0E8F FD CB 7F 9C
        res  3,[iy+127],l       ; 0E93 FD CB 7F 9D
        res  3,a                ; 0E97 CB 9F
        res  3,b                ; 0E99 CB 98
        res  3,c                ; 0E9B CB 99
        res  3,d                ; 0E9D CB 9A
        res  3,e                ; 0E9F CB 9B
        res  3,h                ; 0EA1 CB 9C
        res  3,l                ; 0EA3 CB 9D
        res  4,(hl)             ; 0EA5 CB A6
        res  4,(ix+127)         ; 0EA7 DD CB 7F A6
        res  4,(ix+127),a       ; 0EAB DD CB 7F A7
        res  4,(ix+127),b       ; 0EAF DD CB 7F A0
        res  4,(ix+127),c       ; 0EB3 DD CB 7F A1
        res  4,(ix+127),d       ; 0EB7 DD CB 7F A2
        res  4,(ix+127),e       ; 0EBB DD CB 7F A3
        res  4,(ix+127),h       ; 0EBF DD CB 7F A4
        res  4,(ix+127),l       ; 0EC3 DD CB 7F A5
        res  4,(iy+127)         ; 0EC7 FD CB 7F A6
        res  4,(iy+127),a       ; 0ECB FD CB 7F A7
        res  4,(iy+127),b       ; 0ECF FD CB 7F A0
        res  4,(iy+127),c       ; 0ED3 FD CB 7F A1
        res  4,(iy+127),d       ; 0ED7 FD CB 7F A2
        res  4,(iy+127),e       ; 0EDB FD CB 7F A3
        res  4,(iy+127),h       ; 0EDF FD CB 7F A4
        res  4,(iy+127),l       ; 0EE3 FD CB 7F A5
        res  4,[hl]             ; 0EE7 CB A6
        res  4,[ix+127]         ; 0EE9 DD CB 7F A6
        res  4,[ix+127],a       ; 0EED DD CB 7F A7
        res  4,[ix+127],b       ; 0EF1 DD CB 7F A0
        res  4,[ix+127],c       ; 0EF5 DD CB 7F A1
        res  4,[ix+127],d       ; 0EF9 DD CB 7F A2
        res  4,[ix+127],e       ; 0EFD DD CB 7F A3
        res  4,[ix+127],h       ; 0F01 DD CB 7F A4
        res  4,[ix+127],l       ; 0F05 DD CB 7F A5
        res  4,[iy+127]         ; 0F09 FD CB 7F A6
        res  4,[iy+127],a       ; 0F0D FD CB 7F A7
        res  4,[iy+127],b       ; 0F11 FD CB 7F A0
        res  4,[iy+127],c       ; 0F15 FD CB 7F A1
        res  4,[iy+127],d       ; 0F19 FD CB 7F A2
        res  4,[iy+127],e       ; 0F1D FD CB 7F A3
        res  4,[iy+127],h       ; 0F21 FD CB 7F A4
        res  4,[iy+127],l       ; 0F25 FD CB 7F A5
        res  4,a                ; 0F29 CB A7
        res  4,b                ; 0F2B CB A0
        res  4,c                ; 0F2D CB A1
        res  4,d                ; 0F2F CB A2
        res  4,e                ; 0F31 CB A3
        res  4,h                ; 0F33 CB A4
        res  4,l                ; 0F35 CB A5
        res  5,(hl)             ; 0F37 CB AE
        res  5,(ix+127)         ; 0F39 DD CB 7F AE
        res  5,(ix+127),a       ; 0F3D DD CB 7F AF
        res  5,(ix+127),b       ; 0F41 DD CB 7F A8
        res  5,(ix+127),c       ; 0F45 DD CB 7F A9
        res  5,(ix+127),d       ; 0F49 DD CB 7F AA
        res  5,(ix+127),e       ; 0F4D DD CB 7F AB
        res  5,(ix+127),h       ; 0F51 DD CB 7F AC
        res  5,(ix+127),l       ; 0F55 DD CB 7F AD
        res  5,(iy+127)         ; 0F59 FD CB 7F AE
        res  5,(iy+127),a       ; 0F5D FD CB 7F AF
        res  5,(iy+127),b       ; 0F61 FD CB 7F A8
        res  5,(iy+127),c       ; 0F65 FD CB 7F A9
        res  5,(iy+127),d       ; 0F69 FD CB 7F AA
        res  5,(iy+127),e       ; 0F6D FD CB 7F AB
        res  5,(iy+127),h       ; 0F71 FD CB 7F AC
        res  5,(iy+127),l       ; 0F75 FD CB 7F AD
        res  5,[hl]             ; 0F79 CB AE
        res  5,[ix+127]         ; 0F7B DD CB 7F AE
        res  5,[ix+127],a       ; 0F7F DD CB 7F AF
        res  5,[ix+127],b       ; 0F83 DD CB 7F A8
        res  5,[ix+127],c       ; 0F87 DD CB 7F A9
        res  5,[ix+127],d       ; 0F8B DD CB 7F AA
        res  5,[ix+127],e       ; 0F8F DD CB 7F AB
        res  5,[ix+127],h       ; 0F93 DD CB 7F AC
        res  5,[ix+127],l       ; 0F97 DD CB 7F AD
        res  5,[iy+127]         ; 0F9B FD CB 7F AE
        res  5,[iy+127],a       ; 0F9F FD CB 7F AF
        res  5,[iy+127],b       ; 0FA3 FD CB 7F A8
        res  5,[iy+127],c       ; 0FA7 FD CB 7F A9
        res  5,[iy+127],d       ; 0FAB FD CB 7F AA
        res  5,[iy+127],e       ; 0FAF FD CB 7F AB
        res  5,[iy+127],h       ; 0FB3 FD CB 7F AC
        res  5,[iy+127],l       ; 0FB7 FD CB 7F AD
        res  5,a                ; 0FBB CB AF
        res  5,b                ; 0FBD CB A8
        res  5,c                ; 0FBF CB A9
        res  5,d                ; 0FC1 CB AA
        res  5,e                ; 0FC3 CB AB
        res  5,h                ; 0FC5 CB AC
        res  5,l                ; 0FC7 CB AD
        res  6,(hl)             ; 0FC9 CB B6
        res  6,(ix+127)         ; 0FCB DD CB 7F B6
        res  6,(ix+127),a       ; 0FCF DD CB 7F B7
        res  6,(ix+127),b       ; 0FD3 DD CB 7F B0
        res  6,(ix+127),c       ; 0FD7 DD CB 7F B1
        res  6,(ix+127),d       ; 0FDB DD CB 7F B2
        res  6,(ix+127),e       ; 0FDF DD CB 7F B3
        res  6,(ix+127),h       ; 0FE3 DD CB 7F B4
        res  6,(ix+127),l       ; 0FE7 DD CB 7F B5
        res  6,(iy+127)         ; 0FEB FD CB 7F B6
        res  6,(iy+127),a       ; 0FEF FD CB 7F B7
        res  6,(iy+127),b       ; 0FF3 FD CB 7F B0
        res  6,(iy+127),c       ; 0FF7 FD CB 7F B1
        res  6,(iy+127),d       ; 0FFB FD CB 7F B2
        res  6,(iy+127),e       ; 0FFF FD CB 7F B3
        res  6,(iy+127),h       ; 1003 FD CB 7F B4
        res  6,(iy+127),l       ; 1007 FD CB 7F B5
        res  6,[hl]             ; 100B CB B6
        res  6,[ix+127]         ; 100D DD CB 7F B6
        res  6,[ix+127],a       ; 1011 DD CB 7F B7
        res  6,[ix+127],b       ; 1015 DD CB 7F B0
        res  6,[ix+127],c       ; 1019 DD CB 7F B1
        res  6,[ix+127],d       ; 101D DD CB 7F B2
        res  6,[ix+127],e       ; 1021 DD CB 7F B3
        res  6,[ix+127],h       ; 1025 DD CB 7F B4
        res  6,[ix+127],l       ; 1029 DD CB 7F B5
        res  6,[iy+127]         ; 102D FD CB 7F B6
        res  6,[iy+127],a       ; 1031 FD CB 7F B7
        res  6,[iy+127],b       ; 1035 FD CB 7F B0
        res  6,[iy+127],c       ; 1039 FD CB 7F B1
        res  6,[iy+127],d       ; 103D FD CB 7F B2
        res  6,[iy+127],e       ; 1041 FD CB 7F B3
        res  6,[iy+127],h       ; 1045 FD CB 7F B4
        res  6,[iy+127],l       ; 1049 FD CB 7F B5
        res  6,a                ; 104D CB B7
        res  6,b                ; 104F CB B0
        res  6,c                ; 1051 CB B1
        res  6,d                ; 1053 CB B2
        res  6,e                ; 1055 CB B3
        res  6,h                ; 1057 CB B4
        res  6,l                ; 1059 CB B5
        res  7,(hl)             ; 105B CB BE
        res  7,(ix+127)         ; 105D DD CB 7F BE
        res  7,(ix+127),a       ; 1061 DD CB 7F BF
        res  7,(ix+127),b       ; 1065 DD CB 7F B8
        res  7,(ix+127),c       ; 1069 DD CB 7F B9
        res  7,(ix+127),d       ; 106D DD CB 7F BA
        res  7,(ix+127),e       ; 1071 DD CB 7F BB
        res  7,(ix+127),h       ; 1075 DD CB 7F BC
        res  7,(ix+127),l       ; 1079 DD CB 7F BD
        res  7,(iy+127)         ; 107D FD CB 7F BE
        res  7,(iy+127),a       ; 1081 FD CB 7F BF
        res  7,(iy+127),b       ; 1085 FD CB 7F B8
        res  7,(iy+127),c       ; 1089 FD CB 7F B9
        res  7,(iy+127),d       ; 108D FD CB 7F BA
        res  7,(iy+127),e       ; 1091 FD CB 7F BB
        res  7,(iy+127),h       ; 1095 FD CB 7F BC
        res  7,(iy+127),l       ; 1099 FD CB 7F BD
        res  7,[hl]             ; 109D CB BE
        res  7,[ix+127]         ; 109F DD CB 7F BE
        res  7,[ix+127],a       ; 10A3 DD CB 7F BF
        res  7,[ix+127],b       ; 10A7 DD CB 7F B8
        res  7,[ix+127],c       ; 10AB DD CB 7F B9
        res  7,[ix+127],d       ; 10AF DD CB 7F BA
        res  7,[ix+127],e       ; 10B3 DD CB 7F BB
        res  7,[ix+127],h       ; 10B7 DD CB 7F BC
        res  7,[ix+127],l       ; 10BB DD CB 7F BD
        res  7,[iy+127]         ; 10BF FD CB 7F BE
        res  7,[iy+127],a       ; 10C3 FD CB 7F BF
        res  7,[iy+127],b       ; 10C7 FD CB 7F B8
        res  7,[iy+127],c       ; 10CB FD CB 7F B9
        res  7,[iy+127],d       ; 10CF FD CB 7F BA
        res  7,[iy+127],e       ; 10D3 FD CB 7F BB
        res  7,[iy+127],h       ; 10D7 FD CB 7F BC
        res  7,[iy+127],l       ; 10DB FD CB 7F BD
        res  7,a                ; 10DF CB BF
        res  7,b                ; 10E1 CB B8
        res  7,c                ; 10E3 CB B9
        res  7,d                ; 10E5 CB BA
        res  7,e                ; 10E7 CB BB
        res  7,h                ; 10E9 CB BC
        res  7,l                ; 10EB CB BD
        ret                     ; 10ED C9
        RET                     ; 10EE C9
        ret  c                  ; 10EF D8
        ret  m                  ; 10F0 F8
        ret  nc                 ; 10F1 D0
        ret  nz                 ; 10F2 C0
        ret  p                  ; 10F3 F0
        ret  pe                 ; 10F4 E8
        ret  po                 ; 10F5 E0
        ret  z                  ; 10F6 C8
        reti                    ; 10F7 ED 4D
        RETI                    ; 10F9 ED 4D
        retn                    ; 10FB ED 45
        RETN                    ; 10FD ED 45
        rl   (hl)               ; 10FF CB 16
        RL   (HL)               ; 1101 CB 16
        rl   (ix+127)           ; 1103 DD CB 7F 16
        rl   (ix+127),a         ; 1107 DD CB 7F 17
        rl   (ix+127),b         ; 110B DD CB 7F 10
        rl   (ix+127),c         ; 110F DD CB 7F 11
        rl   (ix+127),d         ; 1113 DD CB 7F 12
        rl   (ix+127),e         ; 1117 DD CB 7F 13
        rl   (ix+127),h         ; 111B DD CB 7F 14
        rl   (ix+127),l         ; 111F DD CB 7F 15
        rl   (iy+127)           ; 1123 FD CB 7F 16
        rl   (iy+127),a         ; 1127 FD CB 7F 17
        rl   (iy+127),b         ; 112B FD CB 7F 10
        rl   (iy+127),c         ; 112F FD CB 7F 11
        rl   (iy+127),d         ; 1133 FD CB 7F 12
        rl   (iy+127),e         ; 1137 FD CB 7F 13
        rl   (iy+127),h         ; 113B FD CB 7F 14
        rl   (iy+127),l         ; 113F FD CB 7F 15
        rl   [hl]               ; 1143 CB 16
        rl   [ix+127]           ; 1145 DD CB 7F 16
        rl   [ix+127],a         ; 1149 DD CB 7F 17
        rl   [ix+127],b         ; 114D DD CB 7F 10
        rl   [ix+127],c         ; 1151 DD CB 7F 11
        rl   [ix+127],d         ; 1155 DD CB 7F 12
        rl   [ix+127],e         ; 1159 DD CB 7F 13
        rl   [ix+127],h         ; 115D DD CB 7F 14
        rl   [ix+127],l         ; 1161 DD CB 7F 15
        rl   [iy+127]           ; 1165 FD CB 7F 16
        rl   [iy+127],a         ; 1169 FD CB 7F 17
        rl   [iy+127],b         ; 116D FD CB 7F 10
        rl   [iy+127],c         ; 1171 FD CB 7F 11
        rl   [iy+127],d         ; 1175 FD CB 7F 12
        rl   [iy+127],e         ; 1179 FD CB 7F 13
        rl   [iy+127],h         ; 117D FD CB 7F 14
        rl   [iy+127],l         ; 1181 FD CB 7F 15
        rl   a                  ; 1185 CB 17
        rl   b                  ; 1187 CB 10
        rl   bc                 ; 1189 CB 11 CB 10
        rl   c                  ; 118D CB 11
        rl   d                  ; 118F CB 12
        rl   de                 ; 1191 CB 13 CB 12
        rl   e                  ; 1195 CB 13
        rl   h                  ; 1197 CB 14
        rl   hl                 ; 1199 CB 15 CB 14
        rl   l                  ; 119D CB 15
        rla                     ; 119F 17
        RLA                     ; 11A0 17
        rlc  (hl)               ; 11A1 CB 06
        RLC  (HL)               ; 11A3 CB 06
        rlc  (ix+127)           ; 11A5 DD CB 7F 06
        rlc  (ix+127),a         ; 11A9 DD CB 7F 07
        rlc  (ix+127),b         ; 11AD DD CB 7F 00
        rlc  (ix+127),c         ; 11B1 DD CB 7F 01
        rlc  (ix+127),d         ; 11B5 DD CB 7F 02
        rlc  (ix+127),e         ; 11B9 DD CB 7F 03
        rlc  (ix+127),h         ; 11BD DD CB 7F 04
        rlc  (ix+127),l         ; 11C1 DD CB 7F 05
        rlc  (iy+127)           ; 11C5 FD CB 7F 06
        rlc  (iy+127),a         ; 11C9 FD CB 7F 07
        rlc  (iy+127),b         ; 11CD FD CB 7F 00
        rlc  (iy+127),c         ; 11D1 FD CB 7F 01
        rlc  (iy+127),d         ; 11D5 FD CB 7F 02
        rlc  (iy+127),e         ; 11D9 FD CB 7F 03
        rlc  (iy+127),h         ; 11DD FD CB 7F 04
        rlc  (iy+127),l         ; 11E1 FD CB 7F 05
        rlc  [hl]               ; 11E5 CB 06
        rlc  [ix+127]           ; 11E7 DD CB 7F 06
        rlc  [ix+127],a         ; 11EB DD CB 7F 07
        rlc  [ix+127],b         ; 11EF DD CB 7F 00
        rlc  [ix+127],c         ; 11F3 DD CB 7F 01
        rlc  [ix+127],d         ; 11F7 DD CB 7F 02
        rlc  [ix+127],e         ; 11FB DD CB 7F 03
        rlc  [ix+127],h         ; 11FF DD CB 7F 04
        rlc  [ix+127],l         ; 1203 DD CB 7F 05
        rlc  [iy+127]           ; 1207 FD CB 7F 06
        rlc  [iy+127],a         ; 120B FD CB 7F 07
        rlc  [iy+127],b         ; 120F FD CB 7F 00
        rlc  [iy+127],c         ; 1213 FD CB 7F 01
        rlc  [iy+127],d         ; 1217 FD CB 7F 02
        rlc  [iy+127],e         ; 121B FD CB 7F 03
        rlc  [iy+127],h         ; 121F FD CB 7F 04
        rlc  [iy+127],l         ; 1223 FD CB 7F 05
        rlc  a                  ; 1227 CB 07
        rlc  b                  ; 1229 CB 00
        rlc  c                  ; 122B CB 01
        rlc  d                  ; 122D CB 02
        rlc  e                  ; 122F CB 03
        rlc  h                  ; 1231 CB 04
        rlc  l                  ; 1233 CB 05
        rlca                    ; 1235 07
        RLCA                    ; 1236 07
        rld                     ; 1237 ED 6F
        RLD                     ; 1239 ED 6F
        rr   (hl)               ; 123B CB 1E
        RR   (HL)               ; 123D CB 1E
        rr   (ix+127)           ; 123F DD CB 7F 1E
        rr   (ix+127),a         ; 1243 DD CB 7F 1F
        rr   (ix+127),b         ; 1247 DD CB 7F 18
        rr   (ix+127),c         ; 124B DD CB 7F 19
        rr   (ix+127),d         ; 124F DD CB 7F 1A
        rr   (ix+127),e         ; 1253 DD CB 7F 1B
        rr   (ix+127),h         ; 1257 DD CB 7F 1C
        rr   (ix+127),l         ; 125B DD CB 7F 1D
        rr   (iy+127)           ; 125F FD CB 7F 1E
        rr   (iy+127),a         ; 1263 FD CB 7F 1F
        rr   (iy+127),b         ; 1267 FD CB 7F 18
        rr   (iy+127),c         ; 126B FD CB 7F 19
        rr   (iy+127),d         ; 126F FD CB 7F 1A
        rr   (iy+127),e         ; 1273 FD CB 7F 1B
        rr   (iy+127),h         ; 1277 FD CB 7F 1C
        rr   (iy+127),l         ; 127B FD CB 7F 1D
        rr   [hl]               ; 127F CB 1E
        rr   [ix+127]           ; 1281 DD CB 7F 1E
        rr   [ix+127],a         ; 1285 DD CB 7F 1F
        rr   [ix+127],b         ; 1289 DD CB 7F 18
        rr   [ix+127],c         ; 128D DD CB 7F 19
        rr   [ix+127],d         ; 1291 DD CB 7F 1A
        rr   [ix+127],e         ; 1295 DD CB 7F 1B
        rr   [ix+127],h         ; 1299 DD CB 7F 1C
        rr   [ix+127],l         ; 129D DD CB 7F 1D
        rr   [iy+127]           ; 12A1 FD CB 7F 1E
        rr   [iy+127],a         ; 12A5 FD CB 7F 1F
        rr   [iy+127],b         ; 12A9 FD CB 7F 18
        rr   [iy+127],c         ; 12AD FD CB 7F 19
        rr   [iy+127],d         ; 12B1 FD CB 7F 1A
        rr   [iy+127],e         ; 12B5 FD CB 7F 1B
        rr   [iy+127],h         ; 12B9 FD CB 7F 1C
        rr   [iy+127],l         ; 12BD FD CB 7F 1D
        rr   a                  ; 12C1 CB 1F
        rr   b                  ; 12C3 CB 18
        rr   bc                 ; 12C5 CB 18 CB 19
        rr   c                  ; 12C9 CB 19
        rr   d                  ; 12CB CB 1A
        rr   de                 ; 12CD CB 1A CB 1B
        rr   e                  ; 12D1 CB 1B
        rr   h                  ; 12D3 CB 1C
        rr   hl                 ; 12D5 CB 1C CB 1D
        rr   l                  ; 12D9 CB 1D
        rra                     ; 12DB 1F
        RRA                     ; 12DC 1F
        rrc  (hl)               ; 12DD CB 0E
        RRC  (HL)               ; 12DF CB 0E
        rrc  (ix+127)           ; 12E1 DD CB 7F 0E
        rrc  (ix+127),a         ; 12E5 DD CB 7F 0F
        rrc  (ix+127),b         ; 12E9 DD CB 7F 08
        rrc  (ix+127),c         ; 12ED DD CB 7F 09
        rrc  (ix+127),d         ; 12F1 DD CB 7F 0A
        rrc  (ix+127),e         ; 12F5 DD CB 7F 0B
        rrc  (ix+127),h         ; 12F9 DD CB 7F 0C
        rrc  (ix+127),l         ; 12FD DD CB 7F 0D
        rrc  (iy+127)           ; 1301 FD CB 7F 0E
        rrc  (iy+127),a         ; 1305 FD CB 7F 0F
        rrc  (iy+127),b         ; 1309 FD CB 7F 08
        rrc  (iy+127),c         ; 130D FD CB 7F 09
        rrc  (iy+127),d         ; 1311 FD CB 7F 0A
        rrc  (iy+127),e         ; 1315 FD CB 7F 0B
        rrc  (iy+127),h         ; 1319 FD CB 7F 0C
        rrc  (iy+127),l         ; 131D FD CB 7F 0D
        rrc  [hl]               ; 1321 CB 0E
        rrc  [ix+127]           ; 1323 DD CB 7F 0E
        rrc  [ix+127],a         ; 1327 DD CB 7F 0F
        rrc  [ix+127],b         ; 132B DD CB 7F 08
        rrc  [ix+127],c         ; 132F DD CB 7F 09
        rrc  [ix+127],d         ; 1333 DD CB 7F 0A
        rrc  [ix+127],e         ; 1337 DD CB 7F 0B
        rrc  [ix+127],h         ; 133B DD CB 7F 0C
        rrc  [ix+127],l         ; 133F DD CB 7F 0D
        rrc  [iy+127]           ; 1343 FD CB 7F 0E
        rrc  [iy+127],a         ; 1347 FD CB 7F 0F
        rrc  [iy+127],b         ; 134B FD CB 7F 08
        rrc  [iy+127],c         ; 134F FD CB 7F 09
        rrc  [iy+127],d         ; 1353 FD CB 7F 0A
        rrc  [iy+127],e         ; 1357 FD CB 7F 0B
        rrc  [iy+127],h         ; 135B FD CB 7F 0C
        rrc  [iy+127],l         ; 135F FD CB 7F 0D
        rrc  a                  ; 1363 CB 0F
        rrc  b                  ; 1365 CB 08
        rrc  c                  ; 1367 CB 09
        rrc  d                  ; 1369 CB 0A
        rrc  e                  ; 136B CB 0B
        rrc  h                  ; 136D CB 0C
        rrc  l                  ; 136F CB 0D
        rrca                    ; 1371 0F
        RRCA                    ; 1372 0F
        rrd                     ; 1373 ED 67
        RRD                     ; 1375 ED 67
        rst  0                  ; 1377 C7
        RST  0                  ; 1378 C7
        rst  1                  ; 1379 CF
        rst  16                 ; 137A D7
        rst  2                  ; 137B D7
        rst  24                 ; 137C DF
        rst  3                  ; 137D DF
        rst  32                 ; 137E E7
        rst  4                  ; 137F E7
        rst  40                 ; 1380 EF
        rst  48                 ; 1381 F7
        rst  5                  ; 1382 EF
        rst  56                 ; 1383 FF
        rst  6                  ; 1384 F7
        rst  7                  ; 1385 FF
        rst  8                  ; 1386 CF
        sbc  a,(hl)             ; 1387 9E
        SBC  A,(HL)             ; 1388 9E
        sbc  a,(ix+127)         ; 1389 DD 9E 7F
        sbc  a,(iy+127)         ; 138C FD 9E 7F
        sbc  a,255              ; 138F DE FF
        sbc  a,[hl]             ; 1391 9E
        sbc  a,[ix+127]         ; 1392 DD 9E 7F
        sbc  a,[iy+127]         ; 1395 FD 9E 7F
        sbc  a,a                ; 1398 9F
        sbc  a,b                ; 1399 98
        sbc  a,c                ; 139A 99
        sbc  a,d                ; 139B 9A
        sbc  a,e                ; 139C 9B
        sbc  a,h                ; 139D 9C
        sbc  a,hx               ; 139E DD 9C
        sbc  a,hy               ; 13A0 FD 9C
        sbc  a,ixh              ; 13A2 DD 9C
        sbc  a,ixl              ; 13A4 DD 9D
        sbc  a,iyh              ; 13A6 FD 9C
        sbc  a,iyl              ; 13A8 FD 9D
        sbc  a,l                ; 13AA 9D
        sbc  a,lx               ; 13AB DD 9D
        sbc  a,ly               ; 13AD FD 9D
        sbc  a,xh               ; 13AF DD 9C
        sbc  a,xl               ; 13B1 DD 9D
        sbc  a,yh               ; 13B3 FD 9C
        sbc  a,yl               ; 13B5 FD 9D
        sbc  hl,bc              ; 13B7 ED 42
        sbc  hl,de              ; 13B9 ED 52
        sbc  hl,hl              ; 13BB ED 62
        sbc  hl,sp              ; 13BD ED 72
        scf                     ; 13BF 37
        SCF                     ; 13C0 37
        set  0,(hl)             ; 13C1 CB C6
        SET  0,(HL)             ; 13C3 CB C6
        set  0,(ix+127)         ; 13C5 DD CB 7F C6
        set  0,(ix+127),a       ; 13C9 DD CB 7F C7
        set  0,(ix+127),b       ; 13CD DD CB 7F C0
        set  0,(ix+127),c       ; 13D1 DD CB 7F C1
        set  0,(ix+127),d       ; 13D5 DD CB 7F C2
        set  0,(ix+127),e       ; 13D9 DD CB 7F C3
        set  0,(ix+127),h       ; 13DD DD CB 7F C4
        set  0,(ix+127),l       ; 13E1 DD CB 7F C5
        set  0,(iy+127)         ; 13E5 FD CB 7F C6
        set  0,(iy+127),a       ; 13E9 FD CB 7F C7
        set  0,(iy+127),b       ; 13ED FD CB 7F C0
        set  0,(iy+127),c       ; 13F1 FD CB 7F C1
        set  0,(iy+127),d       ; 13F5 FD CB 7F C2
        set  0,(iy+127),e       ; 13F9 FD CB 7F C3
        set  0,(iy+127),h       ; 13FD FD CB 7F C4
        set  0,(iy+127),l       ; 1401 FD CB 7F C5
        set  0,[hl]             ; 1405 CB C6
        set  0,[ix+127]         ; 1407 DD CB 7F C6
        set  0,[ix+127],a       ; 140B DD CB 7F C7
        set  0,[ix+127],b       ; 140F DD CB 7F C0
        set  0,[ix+127],c       ; 1413 DD CB 7F C1
        set  0,[ix+127],d       ; 1417 DD CB 7F C2
        set  0,[ix+127],e       ; 141B DD CB 7F C3
        set  0,[ix+127],h       ; 141F DD CB 7F C4
        set  0,[ix+127],l       ; 1423 DD CB 7F C5
        set  0,[iy+127]         ; 1427 FD CB 7F C6
        set  0,[iy+127],a       ; 142B FD CB 7F C7
        set  0,[iy+127],b       ; 142F FD CB 7F C0
        set  0,[iy+127],c       ; 1433 FD CB 7F C1
        set  0,[iy+127],d       ; 1437 FD CB 7F C2
        set  0,[iy+127],e       ; 143B FD CB 7F C3
        set  0,[iy+127],h       ; 143F FD CB 7F C4
        set  0,[iy+127],l       ; 1443 FD CB 7F C5
        set  0,a                ; 1447 CB C7
        set  0,b                ; 1449 CB C0
        set  0,c                ; 144B CB C1
        set  0,d                ; 144D CB C2
        set  0,e                ; 144F CB C3
        set  0,h                ; 1451 CB C4
        set  0,l                ; 1453 CB C5
        set  1,(hl)             ; 1455 CB CE
        set  1,(ix+127)         ; 1457 DD CB 7F CE
        set  1,(ix+127),a       ; 145B DD CB 7F CF
        set  1,(ix+127),b       ; 145F DD CB 7F C8
        set  1,(ix+127),c       ; 1463 DD CB 7F C9
        set  1,(ix+127),d       ; 1467 DD CB 7F CA
        set  1,(ix+127),e       ; 146B DD CB 7F CB
        set  1,(ix+127),h       ; 146F DD CB 7F CC
        set  1,(ix+127),l       ; 1473 DD CB 7F CD
        set  1,(iy+127)         ; 1477 FD CB 7F CE
        set  1,(iy+127),a       ; 147B FD CB 7F CF
        set  1,(iy+127),b       ; 147F FD CB 7F C8
        set  1,(iy+127),c       ; 1483 FD CB 7F C9
        set  1,(iy+127),d       ; 1487 FD CB 7F CA
        set  1,(iy+127),e       ; 148B FD CB 7F CB
        set  1,(iy+127),h       ; 148F FD CB 7F CC
        set  1,(iy+127),l       ; 1493 FD CB 7F CD
        set  1,[hl]             ; 1497 CB CE
        set  1,[ix+127]         ; 1499 DD CB 7F CE
        set  1,[ix+127],a       ; 149D DD CB 7F CF
        set  1,[ix+127],b       ; 14A1 DD CB 7F C8
        set  1,[ix+127],c       ; 14A5 DD CB 7F C9
        set  1,[ix+127],d       ; 14A9 DD CB 7F CA
        set  1,[ix+127],e       ; 14AD DD CB 7F CB
        set  1,[ix+127],h       ; 14B1 DD CB 7F CC
        set  1,[ix+127],l       ; 14B5 DD CB 7F CD
        set  1,[iy+127]         ; 14B9 FD CB 7F CE
        set  1,[iy+127],a       ; 14BD FD CB 7F CF
        set  1,[iy+127],b       ; 14C1 FD CB 7F C8
        set  1,[iy+127],c       ; 14C5 FD CB 7F C9
        set  1,[iy+127],d       ; 14C9 FD CB 7F CA
        set  1,[iy+127],e       ; 14CD FD CB 7F CB
        set  1,[iy+127],h       ; 14D1 FD CB 7F CC
        set  1,[iy+127],l       ; 14D5 FD CB 7F CD
        set  1,a                ; 14D9 CB CF
        set  1,b                ; 14DB CB C8
        set  1,c                ; 14DD CB C9
        set  1,d                ; 14DF CB CA
        set  1,e                ; 14E1 CB CB
        set  1,h                ; 14E3 CB CC
        set  1,l                ; 14E5 CB CD
        set  2,(hl)             ; 14E7 CB D6
        set  2,(ix+127)         ; 14E9 DD CB 7F D6
        set  2,(ix+127),a       ; 14ED DD CB 7F D7
        set  2,(ix+127),b       ; 14F1 DD CB 7F D0
        set  2,(ix+127),c       ; 14F5 DD CB 7F D1
        set  2,(ix+127),d       ; 14F9 DD CB 7F D2
        set  2,(ix+127),e       ; 14FD DD CB 7F D3
        set  2,(ix+127),h       ; 1501 DD CB 7F D4
        set  2,(ix+127),l       ; 1505 DD CB 7F D5
        set  2,(iy+127)         ; 1509 FD CB 7F D6
        set  2,(iy+127),a       ; 150D FD CB 7F D7
        set  2,(iy+127),b       ; 1511 FD CB 7F D0
        set  2,(iy+127),c       ; 1515 FD CB 7F D1
        set  2,(iy+127),d       ; 1519 FD CB 7F D2
        set  2,(iy+127),e       ; 151D FD CB 7F D3
        set  2,(iy+127),h       ; 1521 FD CB 7F D4
        set  2,(iy+127),l       ; 1525 FD CB 7F D5
        set  2,[hl]             ; 1529 CB D6
        set  2,[ix+127]         ; 152B DD CB 7F D6
        set  2,[ix+127],a       ; 152F DD CB 7F D7
        set  2,[ix+127],b       ; 1533 DD CB 7F D0
        set  2,[ix+127],c       ; 1537 DD CB 7F D1
        set  2,[ix+127],d       ; 153B DD CB 7F D2
        set  2,[ix+127],e       ; 153F DD CB 7F D3
        set  2,[ix+127],h       ; 1543 DD CB 7F D4
        set  2,[ix+127],l       ; 1547 DD CB 7F D5
        set  2,[iy+127]         ; 154B FD CB 7F D6
        set  2,[iy+127],a       ; 154F FD CB 7F D7
        set  2,[iy+127],b       ; 1553 FD CB 7F D0
        set  2,[iy+127],c       ; 1557 FD CB 7F D1
        set  2,[iy+127],d       ; 155B FD CB 7F D2
        set  2,[iy+127],e       ; 155F FD CB 7F D3
        set  2,[iy+127],h       ; 1563 FD CB 7F D4
        set  2,[iy+127],l       ; 1567 FD CB 7F D5
        set  2,a                ; 156B CB D7
        set  2,b                ; 156D CB D0
        set  2,c                ; 156F CB D1
        set  2,d                ; 1571 CB D2
        set  2,e                ; 1573 CB D3
        set  2,h                ; 1575 CB D4
        set  2,l                ; 1577 CB D5
        set  3,(hl)             ; 1579 CB DE
        set  3,(ix+127)         ; 157B DD CB 7F DE
        set  3,(ix+127),a       ; 157F DD CB 7F DF
        set  3,(ix+127),b       ; 1583 DD CB 7F D8
        set  3,(ix+127),c       ; 1587 DD CB 7F D9
        set  3,(ix+127),d       ; 158B DD CB 7F DA
        set  3,(ix+127),e       ; 158F DD CB 7F DB
        set  3,(ix+127),h       ; 1593 DD CB 7F DC
        set  3,(ix+127),l       ; 1597 DD CB 7F DD
        set  3,(iy+127)         ; 159B FD CB 7F DE
        set  3,(iy+127),a       ; 159F FD CB 7F DF
        set  3,(iy+127),b       ; 15A3 FD CB 7F D8
        set  3,(iy+127),c       ; 15A7 FD CB 7F D9
        set  3,(iy+127),d       ; 15AB FD CB 7F DA
        set  3,(iy+127),e       ; 15AF FD CB 7F DB
        set  3,(iy+127),h       ; 15B3 FD CB 7F DC
        set  3,(iy+127),l       ; 15B7 FD CB 7F DD
        set  3,[hl]             ; 15BB CB DE
        set  3,[ix+127]         ; 15BD DD CB 7F DE
        set  3,[ix+127],a       ; 15C1 DD CB 7F DF
        set  3,[ix+127],b       ; 15C5 DD CB 7F D8
        set  3,[ix+127],c       ; 15C9 DD CB 7F D9
        set  3,[ix+127],d       ; 15CD DD CB 7F DA
        set  3,[ix+127],e       ; 15D1 DD CB 7F DB
        set  3,[ix+127],h       ; 15D5 DD CB 7F DC
        set  3,[ix+127],l       ; 15D9 DD CB 7F DD
        set  3,[iy+127]         ; 15DD FD CB 7F DE
        set  3,[iy+127],a       ; 15E1 FD CB 7F DF
        set  3,[iy+127],b       ; 15E5 FD CB 7F D8
        set  3,[iy+127],c       ; 15E9 FD CB 7F D9
        set  3,[iy+127],d       ; 15ED FD CB 7F DA
        set  3,[iy+127],e       ; 15F1 FD CB 7F DB
        set  3,[iy+127],h       ; 15F5 FD CB 7F DC
        set  3,[iy+127],l       ; 15F9 FD CB 7F DD
        set  3,a                ; 15FD CB DF
        set  3,b                ; 15FF CB D8
        set  3,c                ; 1601 CB D9
        set  3,d                ; 1603 CB DA
        set  3,e                ; 1605 CB DB
        set  3,h                ; 1607 CB DC
        set  3,l                ; 1609 CB DD
        set  4,(hl)             ; 160B CB E6
        set  4,(ix+127)         ; 160D DD CB 7F E6
        set  4,(ix+127),a       ; 1611 DD CB 7F E7
        set  4,(ix+127),b       ; 1615 DD CB 7F E0
        set  4,(ix+127),c       ; 1619 DD CB 7F E1
        set  4,(ix+127),d       ; 161D DD CB 7F E2
        set  4,(ix+127),e       ; 1621 DD CB 7F E3
        set  4,(ix+127),h       ; 1625 DD CB 7F E4
        set  4,(ix+127),l       ; 1629 DD CB 7F E5
        set  4,(iy+127)         ; 162D FD CB 7F E6
        set  4,(iy+127),a       ; 1631 FD CB 7F E7
        set  4,(iy+127),b       ; 1635 FD CB 7F E0
        set  4,(iy+127),c       ; 1639 FD CB 7F E1
        set  4,(iy+127),d       ; 163D FD CB 7F E2
        set  4,(iy+127),e       ; 1641 FD CB 7F E3
        set  4,(iy+127),h       ; 1645 FD CB 7F E4
        set  4,(iy+127),l       ; 1649 FD CB 7F E5
        set  4,[hl]             ; 164D CB E6
        set  4,[ix+127]         ; 164F DD CB 7F E6
        set  4,[ix+127],a       ; 1653 DD CB 7F E7
        set  4,[ix+127],b       ; 1657 DD CB 7F E0
        set  4,[ix+127],c       ; 165B DD CB 7F E1
        set  4,[ix+127],d       ; 165F DD CB 7F E2
        set  4,[ix+127],e       ; 1663 DD CB 7F E3
        set  4,[ix+127],h       ; 1667 DD CB 7F E4
        set  4,[ix+127],l       ; 166B DD CB 7F E5
        set  4,[iy+127]         ; 166F FD CB 7F E6
        set  4,[iy+127],a       ; 1673 FD CB 7F E7
        set  4,[iy+127],b       ; 1677 FD CB 7F E0
        set  4,[iy+127],c       ; 167B FD CB 7F E1
        set  4,[iy+127],d       ; 167F FD CB 7F E2
        set  4,[iy+127],e       ; 1683 FD CB 7F E3
        set  4,[iy+127],h       ; 1687 FD CB 7F E4
        set  4,[iy+127],l       ; 168B FD CB 7F E5
        set  4,a                ; 168F CB E7
        set  4,b                ; 1691 CB E0
        set  4,c                ; 1693 CB E1
        set  4,d                ; 1695 CB E2
        set  4,e                ; 1697 CB E3
        set  4,h                ; 1699 CB E4
        set  4,l                ; 169B CB E5
        set  5,(hl)             ; 169D CB EE
        set  5,(ix+127)         ; 169F DD CB 7F EE
        set  5,(ix+127),a       ; 16A3 DD CB 7F EF
        set  5,(ix+127),b       ; 16A7 DD CB 7F E8
        set  5,(ix+127),c       ; 16AB DD CB 7F E9
        set  5,(ix+127),d       ; 16AF DD CB 7F EA
        set  5,(ix+127),e       ; 16B3 DD CB 7F EB
        set  5,(ix+127),h       ; 16B7 DD CB 7F EC
        set  5,(ix+127),l       ; 16BB DD CB 7F ED
        set  5,(iy+127)         ; 16BF FD CB 7F EE
        set  5,(iy+127),a       ; 16C3 FD CB 7F EF
        set  5,(iy+127),b       ; 16C7 FD CB 7F E8
        set  5,(iy+127),c       ; 16CB FD CB 7F E9
        set  5,(iy+127),d       ; 16CF FD CB 7F EA
        set  5,(iy+127),e       ; 16D3 FD CB 7F EB
        set  5,(iy+127),h       ; 16D7 FD CB 7F EC
        set  5,(iy+127),l       ; 16DB FD CB 7F ED
        set  5,[hl]             ; 16DF CB EE
        set  5,[ix+127]         ; 16E1 DD CB 7F EE
        set  5,[ix+127],a       ; 16E5 DD CB 7F EF
        set  5,[ix+127],b       ; 16E9 DD CB 7F E8
        set  5,[ix+127],c       ; 16ED DD CB 7F E9
        set  5,[ix+127],d       ; 16F1 DD CB 7F EA
        set  5,[ix+127],e       ; 16F5 DD CB 7F EB
        set  5,[ix+127],h       ; 16F9 DD CB 7F EC
        set  5,[ix+127],l       ; 16FD DD CB 7F ED
        set  5,[iy+127]         ; 1701 FD CB 7F EE
        set  5,[iy+127],a       ; 1705 FD CB 7F EF
        set  5,[iy+127],b       ; 1709 FD CB 7F E8
        set  5,[iy+127],c       ; 170D FD CB 7F E9
        set  5,[iy+127],d       ; 1711 FD CB 7F EA
        set  5,[iy+127],e       ; 1715 FD CB 7F EB
        set  5,[iy+127],h       ; 1719 FD CB 7F EC
        set  5,[iy+127],l       ; 171D FD CB 7F ED
        set  5,a                ; 1721 CB EF
        set  5,b                ; 1723 CB E8
        set  5,c                ; 1725 CB E9
        set  5,d                ; 1727 CB EA
        set  5,e                ; 1729 CB EB
        set  5,h                ; 172B CB EC
        set  5,l                ; 172D CB ED
        set  6,(hl)             ; 172F CB F6
        set  6,(ix+127)         ; 1731 DD CB 7F F6
        set  6,(ix+127),a       ; 1735 DD CB 7F F7
        set  6,(ix+127),b       ; 1739 DD CB 7F F0
        set  6,(ix+127),c       ; 173D DD CB 7F F1
        set  6,(ix+127),d       ; 1741 DD CB 7F F2
        set  6,(ix+127),e       ; 1745 DD CB 7F F3
        set  6,(ix+127),h       ; 1749 DD CB 7F F4
        set  6,(ix+127),l       ; 174D DD CB 7F F5
        set  6,(iy+127)         ; 1751 FD CB 7F F6
        set  6,(iy+127),a       ; 1755 FD CB 7F F7
        set  6,(iy+127),b       ; 1759 FD CB 7F F0
        set  6,(iy+127),c       ; 175D FD CB 7F F1
        set  6,(iy+127),d       ; 1761 FD CB 7F F2
        set  6,(iy+127),e       ; 1765 FD CB 7F F3
        set  6,(iy+127),h       ; 1769 FD CB 7F F4
        set  6,(iy+127),l       ; 176D FD CB 7F F5
        set  6,[hl]             ; 1771 CB F6
        set  6,[ix+127]         ; 1773 DD CB 7F F6
        set  6,[ix+127],a       ; 1777 DD CB 7F F7
        set  6,[ix+127],b       ; 177B DD CB 7F F0
        set  6,[ix+127],c       ; 177F DD CB 7F F1
        set  6,[ix+127],d       ; 1783 DD CB 7F F2
        set  6,[ix+127],e       ; 1787 DD CB 7F F3
        set  6,[ix+127],h       ; 178B DD CB 7F F4
        set  6,[ix+127],l       ; 178F DD CB 7F F5
        set  6,[iy+127]         ; 1793 FD CB 7F F6
        set  6,[iy+127],a       ; 1797 FD CB 7F F7
        set  6,[iy+127],b       ; 179B FD CB 7F F0
        set  6,[iy+127],c       ; 179F FD CB 7F F1
        set  6,[iy+127],d       ; 17A3 FD CB 7F F2
        set  6,[iy+127],e       ; 17A7 FD CB 7F F3
        set  6,[iy+127],h       ; 17AB FD CB 7F F4
        set  6,[iy+127],l       ; 17AF FD CB 7F F5
        set  6,a                ; 17B3 CB F7
        set  6,b                ; 17B5 CB F0
        set  6,c                ; 17B7 CB F1
        set  6,d                ; 17B9 CB F2
        set  6,e                ; 17BB CB F3
        set  6,h                ; 17BD CB F4
        set  6,l                ; 17BF CB F5
        set  7,(hl)             ; 17C1 CB FE
        set  7,(ix+127)         ; 17C3 DD CB 7F FE
        set  7,(ix+127),a       ; 17C7 DD CB 7F FF
        set  7,(ix+127),b       ; 17CB DD CB 7F F8
        set  7,(ix+127),c       ; 17CF DD CB 7F F9
        set  7,(ix+127),d       ; 17D3 DD CB 7F FA
        set  7,(ix+127),e       ; 17D7 DD CB 7F FB
        set  7,(ix+127),h       ; 17DB DD CB 7F FC
        set  7,(ix+127),l       ; 17DF DD CB 7F FD
        set  7,(iy+127)         ; 17E3 FD CB 7F FE
        set  7,(iy+127),a       ; 17E7 FD CB 7F FF
        set  7,(iy+127),b       ; 17EB FD CB 7F F8
        set  7,(iy+127),c       ; 17EF FD CB 7F F9
        set  7,(iy+127),d       ; 17F3 FD CB 7F FA
        set  7,(iy+127),e       ; 17F7 FD CB 7F FB
        set  7,(iy+127),h       ; 17FB FD CB 7F FC
        set  7,(iy+127),l       ; 17FF FD CB 7F FD
        set  7,[hl]             ; 1803 CB FE
        set  7,[ix+127]         ; 1805 DD CB 7F FE
        set  7,[ix+127],a       ; 1809 DD CB 7F FF
        set  7,[ix+127],b       ; 180D DD CB 7F F8
        set  7,[ix+127],c       ; 1811 DD CB 7F F9
        set  7,[ix+127],d       ; 1815 DD CB 7F FA
        set  7,[ix+127],e       ; 1819 DD CB 7F FB
        set  7,[ix+127],h       ; 181D DD CB 7F FC
        set  7,[ix+127],l       ; 1821 DD CB 7F FD
        set  7,[iy+127]         ; 1825 FD CB 7F FE
        set  7,[iy+127],a       ; 1829 FD CB 7F FF
        set  7,[iy+127],b       ; 182D FD CB 7F F8
        set  7,[iy+127],c       ; 1831 FD CB 7F F9
        set  7,[iy+127],d       ; 1835 FD CB 7F FA
        set  7,[iy+127],e       ; 1839 FD CB 7F FB
        set  7,[iy+127],h       ; 183D FD CB 7F FC
        set  7,[iy+127],l       ; 1841 FD CB 7F FD
        set  7,a                ; 1845 CB FF
        set  7,b                ; 1847 CB F8
        set  7,c                ; 1849 CB F9
        set  7,d                ; 184B CB FA
        set  7,e                ; 184D CB FB
        set  7,h                ; 184F CB FC
        set  7,l                ; 1851 CB FD
        sla  (hl)               ; 1853 CB 26
        SLA  (HL)               ; 1855 CB 26
        sla  (ix+127)           ; 1857 DD CB 7F 26
        sla  (ix+127),a         ; 185B DD CB 7F 27
        sla  (ix+127),b         ; 185F DD CB 7F 20
        sla  (ix+127),c         ; 1863 DD CB 7F 21
        sla  (ix+127),d         ; 1867 DD CB 7F 22
        sla  (ix+127),e         ; 186B DD CB 7F 23
        sla  (ix+127),h         ; 186F DD CB 7F 24
        sla  (ix+127),l         ; 1873 DD CB 7F 25
        sla  (iy+127)           ; 1877 FD CB 7F 26
        sla  (iy+127),a         ; 187B FD CB 7F 27
        sla  (iy+127),b         ; 187F FD CB 7F 20
        sla  (iy+127),c         ; 1883 FD CB 7F 21
        sla  (iy+127),d         ; 1887 FD CB 7F 22
        sla  (iy+127),e         ; 188B FD CB 7F 23
        sla  (iy+127),h         ; 188F FD CB 7F 24
        sla  (iy+127),l         ; 1893 FD CB 7F 25
        sla  [hl]               ; 1897 CB 26
        sla  [ix+127]           ; 1899 DD CB 7F 26
        sla  [ix+127],a         ; 189D DD CB 7F 27
        sla  [ix+127],b         ; 18A1 DD CB 7F 20
        sla  [ix+127],c         ; 18A5 DD CB 7F 21
        sla  [ix+127],d         ; 18A9 DD CB 7F 22
        sla  [ix+127],e         ; 18AD DD CB 7F 23
        sla  [ix+127],h         ; 18B1 DD CB 7F 24
        sla  [ix+127],l         ; 18B5 DD CB 7F 25
        sla  [iy+127]           ; 18B9 FD CB 7F 26
        sla  [iy+127],a         ; 18BD FD CB 7F 27
        sla  [iy+127],b         ; 18C1 FD CB 7F 20
        sla  [iy+127],c         ; 18C5 FD CB 7F 21
        sla  [iy+127],d         ; 18C9 FD CB 7F 22
        sla  [iy+127],e         ; 18CD FD CB 7F 23
        sla  [iy+127],h         ; 18D1 FD CB 7F 24
        sla  [iy+127],l         ; 18D5 FD CB 7F 25
        sla  a                  ; 18D9 CB 27
        sla  b                  ; 18DB CB 20
        sla  bc                 ; 18DD CB 21 CB 10
        sla  c                  ; 18E1 CB 21
        sla  d                  ; 18E3 CB 22
        sla  de                 ; 18E5 CB 23 CB 12
        sla  e                  ; 18E9 CB 23
        sla  h                  ; 18EB CB 24
        sla  hl                 ; 18ED 29
        sla  l                  ; 18EE CB 25
        sli  (hl)               ; 18F0 CB 36
        SLI  (HL)               ; 18F2 CB 36
        sli  (ix+127)           ; 18F4 DD CB 7F 36
        sli  (ix+127),a         ; 18F8 DD CB 7F 37
        sli  (ix+127),b         ; 18FC DD CB 7F 30
        sli  (ix+127),c         ; 1900 DD CB 7F 31
        sli  (ix+127),d         ; 1904 DD CB 7F 32
        sli  (ix+127),e         ; 1908 DD CB 7F 33
        sli  (ix+127),h         ; 190C DD CB 7F 34
        sli  (ix+127),l         ; 1910 DD CB 7F 35
        sli  (iy+127)           ; 1914 FD CB 7F 36
        sli  (iy+127),a         ; 1918 FD CB 7F 37
        sli  (iy+127),b         ; 191C FD CB 7F 30
        sli  (iy+127),c         ; 1920 FD CB 7F 31
        sli  (iy+127),d         ; 1924 FD CB 7F 32
        sli  (iy+127),e         ; 1928 FD CB 7F 33
        sli  (iy+127),h         ; 192C FD CB 7F 34
        sli  (iy+127),l         ; 1930 FD CB 7F 35
        sli  [hl]               ; 1934 CB 36
        sli  [ix+127]           ; 1936 DD CB 7F 36
        sli  [ix+127],a         ; 193A DD CB 7F 37
        sli  [ix+127],b         ; 193E DD CB 7F 30
        sli  [ix+127],c         ; 1942 DD CB 7F 31
        sli  [ix+127],d         ; 1946 DD CB 7F 32
        sli  [ix+127],e         ; 194A DD CB 7F 33
        sli  [ix+127],h         ; 194E DD CB 7F 34
        sli  [ix+127],l         ; 1952 DD CB 7F 35
        sli  [iy+127]           ; 1956 FD CB 7F 36
        sli  [iy+127],a         ; 195A FD CB 7F 37
        sli  [iy+127],b         ; 195E FD CB 7F 30
        sli  [iy+127],c         ; 1962 FD CB 7F 31
        sli  [iy+127],d         ; 1966 FD CB 7F 32
        sli  [iy+127],e         ; 196A FD CB 7F 33
        sli  [iy+127],h         ; 196E FD CB 7F 34
        sli  [iy+127],l         ; 1972 FD CB 7F 35
        sli  a                  ; 1976 CB 37
        sli  b                  ; 1978 CB 30
        sli  bc                 ; 197A CB 31 CB 10
        sli  c                  ; 197E CB 31
        sli  d                  ; 1980 CB 32
        sli  de                 ; 1982 CB 33 CB 12
        sli  e                  ; 1986 CB 33
        sli  h                  ; 1988 CB 34
        sli  hl                 ; 198A CB 35 CB 14
        sli  l                  ; 198E CB 35
        sll  (hl)               ; 1990 CB 36
        SLL  (HL)               ; 1992 CB 36
        sll  (ix+127)           ; 1994 DD CB 7F 36
        sll  (ix+127),a         ; 1998 DD CB 7F 37
        sll  (ix+127),b         ; 199C DD CB 7F 30
        sll  (ix+127),c         ; 19A0 DD CB 7F 31
        sll  (ix+127),d         ; 19A4 DD CB 7F 32
        sll  (ix+127),e         ; 19A8 DD CB 7F 33
        sll  (ix+127),h         ; 19AC DD CB 7F 34
        sll  (ix+127),l         ; 19B0 DD CB 7F 35
        sll  (iy+127)           ; 19B4 FD CB 7F 36
        sll  (iy+127),a         ; 19B8 FD CB 7F 37
        sll  (iy+127),b         ; 19BC FD CB 7F 30
        sll  (iy+127),c         ; 19C0 FD CB 7F 31
        sll  (iy+127),d         ; 19C4 FD CB 7F 32
        sll  (iy+127),e         ; 19C8 FD CB 7F 33
        sll  (iy+127),h         ; 19CC FD CB 7F 34
        sll  (iy+127),l         ; 19D0 FD CB 7F 35
        sll  [hl]               ; 19D4 CB 36
        sll  [ix+127]           ; 19D6 DD CB 7F 36
        sll  [ix+127],a         ; 19DA DD CB 7F 37
        sll  [ix+127],b         ; 19DE DD CB 7F 30
        sll  [ix+127],c         ; 19E2 DD CB 7F 31
        sll  [ix+127],d         ; 19E6 DD CB 7F 32
        sll  [ix+127],e         ; 19EA DD CB 7F 33
        sll  [ix+127],h         ; 19EE DD CB 7F 34
        sll  [ix+127],l         ; 19F2 DD CB 7F 35
        sll  [iy+127]           ; 19F6 FD CB 7F 36
        sll  [iy+127],a         ; 19FA FD CB 7F 37
        sll  [iy+127],b         ; 19FE FD CB 7F 30
        sll  [iy+127],c         ; 1A02 FD CB 7F 31
        sll  [iy+127],d         ; 1A06 FD CB 7F 32
        sll  [iy+127],e         ; 1A0A FD CB 7F 33
        sll  [iy+127],h         ; 1A0E FD CB 7F 34
        sll  [iy+127],l         ; 1A12 FD CB 7F 35
        sll  a                  ; 1A16 CB 37
        sll  b                  ; 1A18 CB 30
        sll  bc                 ; 1A1A CB 31 CB 10
        sll  c                  ; 1A1E CB 31
        sll  d                  ; 1A20 CB 32
        sll  de                 ; 1A22 CB 33 CB 12
        sll  e                  ; 1A26 CB 33
        sll  h                  ; 1A28 CB 34
        sll  hl                 ; 1A2A CB 35 CB 14
        sll  l                  ; 1A2E CB 35
        sra  (hl)               ; 1A30 CB 2E
        SRA  (HL)               ; 1A32 CB 2E
        sra  (ix+127)           ; 1A34 DD CB 7F 2E
        sra  (ix+127),a         ; 1A38 DD CB 7F 2F
        sra  (ix+127),b         ; 1A3C DD CB 7F 28
        sra  (ix+127),c         ; 1A40 DD CB 7F 29
        sra  (ix+127),d         ; 1A44 DD CB 7F 2A
        sra  (ix+127),e         ; 1A48 DD CB 7F 2B
        sra  (ix+127),h         ; 1A4C DD CB 7F 2C
        sra  (ix+127),l         ; 1A50 DD CB 7F 2D
        sra  (iy+127)           ; 1A54 FD CB 7F 2E
        sra  (iy+127),a         ; 1A58 FD CB 7F 2F
        sra  (iy+127),b         ; 1A5C FD CB 7F 28
        sra  (iy+127),c         ; 1A60 FD CB 7F 29
        sra  (iy+127),d         ; 1A64 FD CB 7F 2A
        sra  (iy+127),e         ; 1A68 FD CB 7F 2B
        sra  (iy+127),h         ; 1A6C FD CB 7F 2C
        sra  (iy+127),l         ; 1A70 FD CB 7F 2D
        sra  [hl]               ; 1A74 CB 2E
        sra  [ix+127]           ; 1A76 DD CB 7F 2E
        sra  [ix+127],a         ; 1A7A DD CB 7F 2F
        sra  [ix+127],b         ; 1A7E DD CB 7F 28
        sra  [ix+127],c         ; 1A82 DD CB 7F 29
        sra  [ix+127],d         ; 1A86 DD CB 7F 2A
        sra  [ix+127],e         ; 1A8A DD CB 7F 2B
        sra  [ix+127],h         ; 1A8E DD CB 7F 2C
        sra  [ix+127],l         ; 1A92 DD CB 7F 2D
        sra  [iy+127]           ; 1A96 FD CB 7F 2E
        sra  [iy+127],a         ; 1A9A FD CB 7F 2F
        sra  [iy+127],b         ; 1A9E FD CB 7F 28
        sra  [iy+127],c         ; 1AA2 FD CB 7F 29
        sra  [iy+127],d         ; 1AA6 FD CB 7F 2A
        sra  [iy+127],e         ; 1AAA FD CB 7F 2B
        sra  [iy+127],h         ; 1AAE FD CB 7F 2C
        sra  [iy+127],l         ; 1AB2 FD CB 7F 2D
        sra  a                  ; 1AB6 CB 2F
        sra  b                  ; 1AB8 CB 28
        sra  bc                 ; 1ABA CB 28 CB 19
        sra  c                  ; 1ABE CB 29
        sra  d                  ; 1AC0 CB 2A
        sra  de                 ; 1AC2 CB 2A CB 1B
        sra  e                  ; 1AC6 CB 2B
        sra  h                  ; 1AC8 CB 2C
        sra  hl                 ; 1ACA CB 2C CB 1D
        sra  l                  ; 1ACE CB 2D
        srl  (hl)               ; 1AD0 CB 3E
        SRL  (HL)               ; 1AD2 CB 3E
        srl  (ix+127)           ; 1AD4 DD CB 7F 3E
        srl  (ix+127),a         ; 1AD8 DD CB 7F 3F
        srl  (ix+127),b         ; 1ADC DD CB 7F 38
        srl  (ix+127),c         ; 1AE0 DD CB 7F 39
        srl  (ix+127),d         ; 1AE4 DD CB 7F 3A
        srl  (ix+127),e         ; 1AE8 DD CB 7F 3B
        srl  (ix+127),h         ; 1AEC DD CB 7F 3C
        srl  (ix+127),l         ; 1AF0 DD CB 7F 3D
        srl  (iy+127)           ; 1AF4 FD CB 7F 3E
        srl  (iy+127),a         ; 1AF8 FD CB 7F 3F
        srl  (iy+127),b         ; 1AFC FD CB 7F 38
        srl  (iy+127),c         ; 1B00 FD CB 7F 39
        srl  (iy+127),d         ; 1B04 FD CB 7F 3A
        srl  (iy+127),e         ; 1B08 FD CB 7F 3B
        srl  (iy+127),h         ; 1B0C FD CB 7F 3C
        srl  (iy+127),l         ; 1B10 FD CB 7F 3D
        srl  [hl]               ; 1B14 CB 3E
        srl  [ix+127]           ; 1B16 DD CB 7F 3E
        srl  [ix+127],a         ; 1B1A DD CB 7F 3F
        srl  [ix+127],b         ; 1B1E DD CB 7F 38
        srl  [ix+127],c         ; 1B22 DD CB 7F 39
        srl  [ix+127],d         ; 1B26 DD CB 7F 3A
        srl  [ix+127],e         ; 1B2A DD CB 7F 3B
        srl  [ix+127],h         ; 1B2E DD CB 7F 3C
        srl  [ix+127],l         ; 1B32 DD CB 7F 3D
        srl  [iy+127]           ; 1B36 FD CB 7F 3E
        srl  [iy+127],a         ; 1B3A FD CB 7F 3F
        srl  [iy+127],b         ; 1B3E FD CB 7F 38
        srl  [iy+127],c         ; 1B42 FD CB 7F 39
        srl  [iy+127],d         ; 1B46 FD CB 7F 3A
        srl  [iy+127],e         ; 1B4A FD CB 7F 3B
        srl  [iy+127],h         ; 1B4E FD CB 7F 3C
        srl  [iy+127],l         ; 1B52 FD CB 7F 3D
        srl  a                  ; 1B56 CB 3F
        srl  b                  ; 1B58 CB 38
        srl  bc                 ; 1B5A CB 38 CB 19
        srl  c                  ; 1B5E CB 39
        srl  d                  ; 1B60 CB 3A
        srl  de                 ; 1B62 CB 3A CB 1B
        srl  e                  ; 1B66 CB 3B
        srl  h                  ; 1B68 CB 3C
        srl  hl                 ; 1B6A CB 3C CB 1D
        srl  l                  ; 1B6E CB 3D
        stop                    ; 1B70 DD DD 00
        STOP                    ; 1B73 DD DD 00
        sub  (hl)               ; 1B76 96
        SUB  (HL)               ; 1B77 96
        sub  (ix+127)           ; 1B78 DD 96 7F
        sub  (iy+127)           ; 1B7B FD 96 7F
        sub  255                ; 1B7E D6 FF
        sub  [hl]               ; 1B80 96
        sub  [ix+127]           ; 1B81 DD 96 7F
        sub  [iy+127]           ; 1B84 FD 96 7F
        sub  a                  ; 1B87 97
        sub  b                  ; 1B88 90
        sub  c                  ; 1B89 91
        sub  d                  ; 1B8A 92
        sub  e                  ; 1B8B 93
        sub  h                  ; 1B8C 94
        sub  hl,bc              ; 1B8D B7 ED 42
        sub  hl,de              ; 1B90 B7 ED 52
        sub  hl,hl              ; 1B93 B7 ED 62
        sub  hl,sp              ; 1B96 B7 ED 72
        sub  hx                 ; 1B99 DD 94
        sub  hy                 ; 1B9B FD 94
        sub  ixh                ; 1B9D DD 94
        sub  ixl                ; 1B9F DD 95
        sub  iyh                ; 1BA1 FD 94
        sub  iyl                ; 1BA3 FD 95
        sub  l                  ; 1BA5 95
        sub  lx                 ; 1BA6 DD 95
        sub  ly                 ; 1BA8 FD 95
        sub  xh                 ; 1BAA DD 94
        sub  xl                 ; 1BAC DD 95
        sub  yh                 ; 1BAE FD 94
        sub  yl                 ; 1BB0 FD 95
        xor  (hl)               ; 1BB2 AE
        XOR  (HL)               ; 1BB3 AE
        xor  (ix+127)           ; 1BB4 DD AE 7F
        xor  (iy+127)           ; 1BB7 FD AE 7F
        xor  255                ; 1BBA EE FF
        xor  [hl]               ; 1BBC AE
        xor  [ix+127]           ; 1BBD DD AE 7F
        xor  [iy+127]           ; 1BC0 FD AE 7F
        xor  a                  ; 1BC3 AF
        xor  b                  ; 1BC4 A8
        xor  c                  ; 1BC5 A9
        xor  d                  ; 1BC6 AA
        xor  e                  ; 1BC7 AB
        xor  h                  ; 1BC8 AC
        xor  hx                 ; 1BC9 DD AC
        xor  hy                 ; 1BCB FD AC
        xor  ixh                ; 1BCD DD AC
        xor  ixl                ; 1BCF DD AD
        xor  iyh                ; 1BD1 FD AC
        xor  iyl                ; 1BD3 FD AD
        xor  l                  ; 1BD5 AD
        xor  lx                 ; 1BD6 DD AD
        xor  ly                 ; 1BD8 FD AD
        xor  xh                 ; 1BDA DD AC
        xor  xl                 ; 1BDC DD AD
        xor  yh                 ; 1BDE FD AC
        xor  yl                 ; 1BE0 FD AD
