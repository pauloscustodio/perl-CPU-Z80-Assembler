        org 0
        adc  a,(hl)             ; 0000 8E
        ADC  A,(HL)             ; 0001 8E
        adc  a,(ix)             ; 0002 DD 8E 00
        ADC  A,(IX)             ; 0005 DD 8E 00
        adc  a,(ix+-128)        ; 0008 DD 8E 80
        adc  a,(ix-128)         ; 000B DD 8E 80
        adc  a,(ix+-127)        ; 000E DD 8E 81
        adc  a,(ix-127)         ; 0011 DD 8E 81
        adc  a,(ix+-1)          ; 0014 DD 8E FF
        adc  a,(ix-1)           ; 0017 DD 8E FF
        adc  a,(ix+-0)          ; 001A DD 8E 00
        adc  a,(ix-0)           ; 001D DD 8E 00
        adc  a,(ix+0)           ; 0020 DD 8E 00
        adc  a,(ix)             ; 0023 DD 8E 00
        adc  a,(ix+1)           ; 0026 DD 8E 01
        adc  a,(ix+126)         ; 0029 DD 8E 7E
        adc  a,(ix+127)         ; 002C DD 8E 7F
        adc  a,(ix+127)         ; 002F DD 8E 7F
        adc  a,(iy)             ; 0032 FD 8E 00
        ADC  A,(IY)             ; 0035 FD 8E 00
        adc  a,(iy+127)         ; 0038 FD 8E 7F
        adc  a,(iy+127)         ; 003B FD 8E 7F
        adc  a,-128             ; 003E CE 80
        adc  a,-127             ; 0040 CE 81
        adc  a,-2               ; 0042 CE FE
        adc  a,-1               ; 0044 CE FF
        adc  a,0                ; 0046 CE 00
        adc  a,1                ; 0048 CE 01
        adc  a,126              ; 004A CE 7E
        adc  a,127              ; 004C CE 7F
        adc  a,128              ; 004E CE 80
        adc  a,129              ; 0050 CE 81
        adc  a,254              ; 0052 CE FE
        adc  a,255              ; 0054 CE FF
        adc  a,[hl]             ; 0056 8E
        adc  a,[ix+127]         ; 0057 DD 8E 7F
        adc  a,[ix+127]         ; 005A DD 8E 7F
        adc  a,[ix]             ; 005D DD 8E 00
        adc  a,[iy+127]         ; 0060 FD 8E 7F
        adc  a,[iy+127]         ; 0063 FD 8E 7F
        adc  a,[iy]             ; 0066 FD 8E 00
        adc  a,a                ; 0069 8F
        adc  a,b                ; 006A 88
        ADC  A,B                ; 006B 88
        adc  a,c                ; 006C 89
        ADC  A,C                ; 006D 89
        adc  a,d                ; 006E 8A
        ADC  A,D                ; 006F 8A
        adc  a,e                ; 0070 8B
        ADC  A,E                ; 0071 8B
        adc  a,h                ; 0072 8C
        ADC  A,H                ; 0073 8C
        adc  a,hx               ; 0074 DD 8C
        ADC  A,HX               ; 0076 DD 8C
        adc  a,hy               ; 0078 FD 8C
        ADC  A,HY               ; 007A FD 8C
        adc  a,ixh              ; 007C DD 8C
        ADC  A,IXH              ; 007E DD 8C
        adc  a,ixl              ; 0080 DD 8D
        ADC  A,IXL              ; 0082 DD 8D
        adc  a,iyh              ; 0084 FD 8C
        ADC  A,IYH              ; 0086 FD 8C
        adc  a,iyl              ; 0088 FD 8D
        ADC  A,IYL              ; 008A FD 8D
        adc  a,l                ; 008C 8D
        ADC  A,L                ; 008D 8D
        adc  a,lx               ; 008E DD 8D
        ADC  A,LX               ; 0090 DD 8D
        adc  a,ly               ; 0092 FD 8D
        ADC  A,LY               ; 0094 FD 8D
        adc  a,xh               ; 0096 DD 8C
        ADC  A,XH               ; 0098 DD 8C
        adc  a,xl               ; 009A DD 8D
        ADC  A,XL               ; 009C DD 8D
        adc  a,yh               ; 009E FD 8C
        ADC  A,YH               ; 00A0 FD 8C
        adc  a,yl               ; 00A2 FD 8D
        ADC  A,YL               ; 00A4 FD 8D
        adc  hl,bc              ; 00A6 ED 4A
        ADC  HL,BC              ; 00A8 ED 4A
        adc  hl,de              ; 00AA ED 5A
        ADC  HL,DE              ; 00AC ED 5A
        adc  hl,hl              ; 00AE ED 6A
        adc  hl,sp              ; 00B0 ED 7A
        ADC  HL,SP              ; 00B2 ED 7A
        add  a,(hl)             ; 00B4 86
        ADD  A,(HL)             ; 00B5 86
        add  a,(ix)             ; 00B6 DD 86 00
        add  a,(ix+127)         ; 00B9 DD 86 7F
        add  a,(ix+127)         ; 00BC DD 86 7F
        add  a,(iy)             ; 00BF FD 86 00
        add  a,(iy+127)         ; 00C2 FD 86 7F
        add  a,(iy+127)         ; 00C5 FD 86 7F
        add  a,255              ; 00C8 C6 FF
        add  a,[hl]             ; 00CA 86
        add  a,[ix+127]         ; 00CB DD 86 7F
        add  a,[ix+127]         ; 00CE DD 86 7F
        add  a,[ix]             ; 00D1 DD 86 00
        add  a,[iy+127]         ; 00D4 FD 86 7F
        add  a,[iy+127]         ; 00D7 FD 86 7F
        add  a,[iy]             ; 00DA FD 86 00
        add  a,a                ; 00DD 87
        add  a,b                ; 00DE 80
        add  a,c                ; 00DF 81
        add  a,d                ; 00E0 82
        add  a,e                ; 00E1 83
        add  a,h                ; 00E2 84
        add  a,hx               ; 00E3 DD 84
        add  a,hy               ; 00E5 FD 84
        add  a,ixh              ; 00E7 DD 84
        add  a,ixl              ; 00E9 DD 85
        add  a,iyh              ; 00EB FD 84
        add  a,iyl              ; 00ED FD 85
        add  a,l                ; 00EF 85
        add  a,lx               ; 00F0 DD 85
        add  a,ly               ; 00F2 FD 85
        add  a,xh               ; 00F4 DD 84
        add  a,xl               ; 00F6 DD 85
        add  a,yh               ; 00F8 FD 84
        add  a,yl               ; 00FA FD 85
        add  hl,bc              ; 00FC 09
        add  hl,de              ; 00FD 19
        add  hl,hl              ; 00FE 29
        add  hl,sp              ; 00FF 39
        add  ix,bc              ; 0100 DD 09
        add  ix,de              ; 0102 DD 19
        add  ix,ix              ; 0104 DD 29
        add  ix,sp              ; 0106 DD 39
        add  iy,bc              ; 0108 FD 09
        add  iy,de              ; 010A FD 19
        add  iy,iy              ; 010C FD 29
        add  iy,sp              ; 010E FD 39
        and  (hl)               ; 0110 A6
        AND  (HL)               ; 0111 A6
        and  (ix)               ; 0112 DD A6 00
        and  (ix+127)           ; 0115 DD A6 7F
        and  (ix+127)           ; 0118 DD A6 7F
        and  (iy)               ; 011B FD A6 00
        and  (iy+127)           ; 011E FD A6 7F
        and  (iy+127)           ; 0121 FD A6 7F
        and  255                ; 0124 E6 FF
        and  [hl]               ; 0126 A6
        and  [ix+127]           ; 0127 DD A6 7F
        and  [ix+127]           ; 012A DD A6 7F
        and  [ix]               ; 012D DD A6 00
        and  [iy+127]           ; 0130 FD A6 7F
        and  [iy+127]           ; 0133 FD A6 7F
        and  [iy]               ; 0136 FD A6 00
        and  a                  ; 0139 A7
        and  b                  ; 013A A0
        and  c                  ; 013B A1
        and  d                  ; 013C A2
        and  e                  ; 013D A3
        and  h                  ; 013E A4
        and  hx                 ; 013F DD A4
        and  hy                 ; 0141 FD A4
        and  ixh                ; 0143 DD A4
        and  ixl                ; 0145 DD A5
        and  iyh                ; 0147 FD A4
        and  iyl                ; 0149 FD A5
        and  l                  ; 014B A5
        and  lx                 ; 014C DD A5
        and  ly                 ; 014E FD A5
        and  xh                 ; 0150 DD A4
        and  xl                 ; 0152 DD A5
        and  yh                 ; 0154 FD A4
        and  yl                 ; 0156 FD A5
        bit  0,(hl)             ; 0158 CB 46
        BIT  0,(HL)             ; 015A CB 46
        bit  0,(ix)             ; 015C DD CB 00 46
        bit  0,(ix+127)         ; 0160 DD CB 7F 46
        bit  0,(ix+127)         ; 0164 DD CB 7F 46
        bit  0,(iy)             ; 0168 FD CB 00 46
        bit  0,(iy+127)         ; 016C FD CB 7F 46
        bit  0,(iy+127)         ; 0170 FD CB 7F 46
        bit  0,[hl]             ; 0174 CB 46
        bit  0,[ix+127]         ; 0176 DD CB 7F 46
        bit  0,[ix+127]         ; 017A DD CB 7F 46
        bit  0,[ix]             ; 017E DD CB 00 46
        bit  0,[iy+127]         ; 0182 FD CB 7F 46
        bit  0,[iy+127]         ; 0186 FD CB 7F 46
        bit  0,[iy]             ; 018A FD CB 00 46
        bit  0,a                ; 018E CB 47
        bit  0,b                ; 0190 CB 40
        bit  0,c                ; 0192 CB 41
        bit  0,d                ; 0194 CB 42
        bit  0,e                ; 0196 CB 43
        bit  0,h                ; 0198 CB 44
        bit  0,l                ; 019A CB 45
        bit  1,(hl)             ; 019C CB 4E
        bit  1,(ix)             ; 019E DD CB 00 4E
        bit  1,(ix+127)         ; 01A2 DD CB 7F 4E
        bit  1,(ix+127)         ; 01A6 DD CB 7F 4E
        bit  1,(iy)             ; 01AA FD CB 00 4E
        bit  1,(iy+127)         ; 01AE FD CB 7F 4E
        bit  1,(iy+127)         ; 01B2 FD CB 7F 4E
        bit  1,[hl]             ; 01B6 CB 4E
        bit  1,[ix+127]         ; 01B8 DD CB 7F 4E
        bit  1,[ix+127]         ; 01BC DD CB 7F 4E
        bit  1,[ix]             ; 01C0 DD CB 00 4E
        bit  1,[iy+127]         ; 01C4 FD CB 7F 4E
        bit  1,[iy+127]         ; 01C8 FD CB 7F 4E
        bit  1,[iy]             ; 01CC FD CB 00 4E
        bit  1,a                ; 01D0 CB 4F
        bit  1,b                ; 01D2 CB 48
        bit  1,c                ; 01D4 CB 49
        bit  1,d                ; 01D6 CB 4A
        bit  1,e                ; 01D8 CB 4B
        bit  1,h                ; 01DA CB 4C
        bit  1,l                ; 01DC CB 4D
        bit  2,(hl)             ; 01DE CB 56
        bit  2,(ix)             ; 01E0 DD CB 00 56
        bit  2,(ix+127)         ; 01E4 DD CB 7F 56
        bit  2,(ix+127)         ; 01E8 DD CB 7F 56
        bit  2,(iy)             ; 01EC FD CB 00 56
        bit  2,(iy+127)         ; 01F0 FD CB 7F 56
        bit  2,(iy+127)         ; 01F4 FD CB 7F 56
        bit  2,[hl]             ; 01F8 CB 56
        bit  2,[ix+127]         ; 01FA DD CB 7F 56
        bit  2,[ix+127]         ; 01FE DD CB 7F 56
        bit  2,[ix]             ; 0202 DD CB 00 56
        bit  2,[iy+127]         ; 0206 FD CB 7F 56
        bit  2,[iy+127]         ; 020A FD CB 7F 56
        bit  2,[iy]             ; 020E FD CB 00 56
        bit  2,a                ; 0212 CB 57
        bit  2,b                ; 0214 CB 50
        bit  2,c                ; 0216 CB 51
        bit  2,d                ; 0218 CB 52
        bit  2,e                ; 021A CB 53
        bit  2,h                ; 021C CB 54
        bit  2,l                ; 021E CB 55
        bit  3,(hl)             ; 0220 CB 5E
        bit  3,(ix)             ; 0222 DD CB 00 5E
        bit  3,(ix+127)         ; 0226 DD CB 7F 5E
        bit  3,(ix+127)         ; 022A DD CB 7F 5E
        bit  3,(iy)             ; 022E FD CB 00 5E
        bit  3,(iy+127)         ; 0232 FD CB 7F 5E
        bit  3,(iy+127)         ; 0236 FD CB 7F 5E
        bit  3,[hl]             ; 023A CB 5E
        bit  3,[ix+127]         ; 023C DD CB 7F 5E
        bit  3,[ix+127]         ; 0240 DD CB 7F 5E
        bit  3,[ix]             ; 0244 DD CB 00 5E
        bit  3,[iy+127]         ; 0248 FD CB 7F 5E
        bit  3,[iy+127]         ; 024C FD CB 7F 5E
        bit  3,[iy]             ; 0250 FD CB 00 5E
        bit  3,a                ; 0254 CB 5F
        bit  3,b                ; 0256 CB 58
        bit  3,c                ; 0258 CB 59
        bit  3,d                ; 025A CB 5A
        bit  3,e                ; 025C CB 5B
        bit  3,h                ; 025E CB 5C
        bit  3,l                ; 0260 CB 5D
        bit  4,(hl)             ; 0262 CB 66
        bit  4,(ix)             ; 0264 DD CB 00 66
        bit  4,(ix+127)         ; 0268 DD CB 7F 66
        bit  4,(ix+127)         ; 026C DD CB 7F 66
        bit  4,(iy)             ; 0270 FD CB 00 66
        bit  4,(iy+127)         ; 0274 FD CB 7F 66
        bit  4,(iy+127)         ; 0278 FD CB 7F 66
        bit  4,[hl]             ; 027C CB 66
        bit  4,[ix+127]         ; 027E DD CB 7F 66
        bit  4,[ix+127]         ; 0282 DD CB 7F 66
        bit  4,[ix]             ; 0286 DD CB 00 66
        bit  4,[iy+127]         ; 028A FD CB 7F 66
        bit  4,[iy+127]         ; 028E FD CB 7F 66
        bit  4,[iy]             ; 0292 FD CB 00 66
        bit  4,a                ; 0296 CB 67
        bit  4,b                ; 0298 CB 60
        bit  4,c                ; 029A CB 61
        bit  4,d                ; 029C CB 62
        bit  4,e                ; 029E CB 63
        bit  4,h                ; 02A0 CB 64
        bit  4,l                ; 02A2 CB 65
        bit  5,(hl)             ; 02A4 CB 6E
        bit  5,(ix)             ; 02A6 DD CB 00 6E
        bit  5,(ix+127)         ; 02AA DD CB 7F 6E
        bit  5,(ix+127)         ; 02AE DD CB 7F 6E
        bit  5,(iy)             ; 02B2 FD CB 00 6E
        bit  5,(iy+127)         ; 02B6 FD CB 7F 6E
        bit  5,(iy+127)         ; 02BA FD CB 7F 6E
        bit  5,[hl]             ; 02BE CB 6E
        bit  5,[ix+127]         ; 02C0 DD CB 7F 6E
        bit  5,[ix+127]         ; 02C4 DD CB 7F 6E
        bit  5,[ix]             ; 02C8 DD CB 00 6E
        bit  5,[iy+127]         ; 02CC FD CB 7F 6E
        bit  5,[iy+127]         ; 02D0 FD CB 7F 6E
        bit  5,[iy]             ; 02D4 FD CB 00 6E
        bit  5,a                ; 02D8 CB 6F
        bit  5,b                ; 02DA CB 68
        bit  5,c                ; 02DC CB 69
        bit  5,d                ; 02DE CB 6A
        bit  5,e                ; 02E0 CB 6B
        bit  5,h                ; 02E2 CB 6C
        bit  5,l                ; 02E4 CB 6D
        bit  6,(hl)             ; 02E6 CB 76
        bit  6,(ix)             ; 02E8 DD CB 00 76
        bit  6,(ix+127)         ; 02EC DD CB 7F 76
        bit  6,(ix+127)         ; 02F0 DD CB 7F 76
        bit  6,(iy)             ; 02F4 FD CB 00 76
        bit  6,(iy+127)         ; 02F8 FD CB 7F 76
        bit  6,(iy+127)         ; 02FC FD CB 7F 76
        bit  6,[hl]             ; 0300 CB 76
        bit  6,[ix+127]         ; 0302 DD CB 7F 76
        bit  6,[ix+127]         ; 0306 DD CB 7F 76
        bit  6,[ix]             ; 030A DD CB 00 76
        bit  6,[iy+127]         ; 030E FD CB 7F 76
        bit  6,[iy+127]         ; 0312 FD CB 7F 76
        bit  6,[iy]             ; 0316 FD CB 00 76
        bit  6,a                ; 031A CB 77
        bit  6,b                ; 031C CB 70
        bit  6,c                ; 031E CB 71
        bit  6,d                ; 0320 CB 72
        bit  6,e                ; 0322 CB 73
        bit  6,h                ; 0324 CB 74
        bit  6,l                ; 0326 CB 75
        bit  7,(hl)             ; 0328 CB 7E
        bit  7,(ix)             ; 032A DD CB 00 7E
        bit  7,(ix+127)         ; 032E DD CB 7F 7E
        bit  7,(ix+127)         ; 0332 DD CB 7F 7E
        bit  7,(iy)             ; 0336 FD CB 00 7E
        bit  7,(iy+127)         ; 033A FD CB 7F 7E
        bit  7,(iy+127)         ; 033E FD CB 7F 7E
        bit  7,[hl]             ; 0342 CB 7E
        bit  7,[ix+127]         ; 0344 DD CB 7F 7E
        bit  7,[ix+127]         ; 0348 DD CB 7F 7E
        bit  7,[ix]             ; 034C DD CB 00 7E
        bit  7,[iy+127]         ; 0350 FD CB 7F 7E
        bit  7,[iy+127]         ; 0354 FD CB 7F 7E
        bit  7,[iy]             ; 0358 FD CB 00 7E
        bit  7,a                ; 035C CB 7F
        bit  7,b                ; 035E CB 78
        bit  7,c                ; 0360 CB 79
        bit  7,d                ; 0362 CB 7A
        bit  7,e                ; 0364 CB 7B
        bit  7,h                ; 0366 CB 7C
        bit  7,l                ; 0368 CB 7D
        call -32768             ; 036A CD 00 80
        CALL -32768             ; 036D CD 00 80
        call -32767             ; 0370 CD 01 80
        call -128               ; 0373 CD 80 FF
        call -1                 ; 0376 CD FF FF
        call 0                  ; 0379 CD 00 00
        call 1                  ; 037C CD 01 00
        call 127                ; 037F CD 7F 00
        call 128                ; 0382 CD 80 00
        call 255                ; 0385 CD FF 00
        call 256                ; 0388 CD 00 01
        call 32767              ; 038B CD FF 7F
        call 32768              ; 038E CD 00 80
        call 65534              ; 0391 CD FE FF
        call 65535              ; 0394 CD FF FF
        call c,65535            ; 0397 DC FF FF
        call m,65535            ; 039A FC FF FF
        CALL M,65535            ; 039D FC FF FF
        call nc,65535           ; 03A0 D4 FF FF
        CALL NC,65535           ; 03A3 D4 FF FF
        call nz,65535           ; 03A6 C4 FF FF
        CALL NZ,65535           ; 03A9 C4 FF FF
        call p,65535            ; 03AC F4 FF FF
        CALL P,65535            ; 03AF F4 FF FF
        call pe,65535           ; 03B2 EC FF FF
        CALL PE,65535           ; 03B5 EC FF FF
        call po,65535           ; 03B8 E4 FF FF
        CALL PO,65535           ; 03BB E4 FF FF
        call z,65535            ; 03BE CC FF FF
        CALL Z,65535            ; 03C1 CC FF FF
        ccf                     ; 03C4 3F
        CCF                     ; 03C5 3F
        cp   (hl)               ; 03C6 BE
        CP   (HL)               ; 03C7 BE
        cp   (ix)               ; 03C8 DD BE 00
        cp   (ix+127)           ; 03CB DD BE 7F
        cp   (ix+127)           ; 03CE DD BE 7F
        cp   (iy)               ; 03D1 FD BE 00
        cp   (iy+127)           ; 03D4 FD BE 7F
        cp   (iy+127)           ; 03D7 FD BE 7F
        cp   255                ; 03DA FE FF
        cp   [hl]               ; 03DC BE
        cp   [ix+127]           ; 03DD DD BE 7F
        cp   [ix+127]           ; 03E0 DD BE 7F
        cp   [ix]               ; 03E3 DD BE 00
        cp   [iy+127]           ; 03E6 FD BE 7F
        cp   [iy+127]           ; 03E9 FD BE 7F
        cp   [iy]               ; 03EC FD BE 00
        cp   a                  ; 03EF BF
        cp   b                  ; 03F0 B8
        cp   c                  ; 03F1 B9
        cp   d                  ; 03F2 BA
        cp   e                  ; 03F3 BB
        cp   h                  ; 03F4 BC
        cp   hx                 ; 03F5 DD BC
        cp   hy                 ; 03F7 FD BC
        cp   ixh                ; 03F9 DD BC
        cp   ixl                ; 03FB DD BD
        cp   iyh                ; 03FD FD BC
        cp   iyl                ; 03FF FD BD
        cp   l                  ; 0401 BD
        cp   lx                 ; 0402 DD BD
        cp   ly                 ; 0404 FD BD
        cp   xh                 ; 0406 DD BC
        cp   xl                 ; 0408 DD BD
        cp   yh                 ; 040A FD BC
        cp   yl                 ; 040C FD BD
        cpd                     ; 040E ED A9
        CPD                     ; 0410 ED A9
        cpdr                    ; 0412 ED B9
        CPDR                    ; 0414 ED B9
        cpi                     ; 0416 ED A1
        CPI                     ; 0418 ED A1
        cpir                    ; 041A ED B1
        CPIR                    ; 041C ED B1
        cpl                     ; 041E 2F
        CPL                     ; 041F 2F
        daa                     ; 0420 27
        DAA                     ; 0421 27
        dec  (hl)               ; 0422 35
        DEC  (HL)               ; 0423 35
        dec  (ix)               ; 0424 DD 35 00
        dec  (ix+127)           ; 0427 DD 35 7F
        dec  (ix+127)           ; 042A DD 35 7F
        dec  (iy)               ; 042D FD 35 00
        dec  (iy+127)           ; 0430 FD 35 7F
        dec  (iy+127)           ; 0433 FD 35 7F
        dec  [hl]               ; 0436 35
        dec  [ix+127]           ; 0437 DD 35 7F
        dec  [ix+127]           ; 043A DD 35 7F
        dec  [ix]               ; 043D DD 35 00
        dec  [iy+127]           ; 0440 FD 35 7F
        dec  [iy+127]           ; 0443 FD 35 7F
        dec  [iy]               ; 0446 FD 35 00
        dec  a                  ; 0449 3D
        dec  b                  ; 044A 05
        dec  bc                 ; 044B 0B
        dec  c                  ; 044C 0D
        dec  d                  ; 044D 15
        dec  de                 ; 044E 1B
        dec  e                  ; 044F 1D
        dec  h                  ; 0450 25
        dec  hl                 ; 0451 2B
        dec  hx                 ; 0452 DD 25
        dec  hy                 ; 0454 FD 25
        dec  ix                 ; 0456 DD 2B
        dec  ixh                ; 0458 DD 25
        dec  ixl                ; 045A DD 2D
        dec  iy                 ; 045C FD 2B
        dec  iyh                ; 045E FD 25
        dec  iyl                ; 0460 FD 2D
        dec  l                  ; 0462 2D
        dec  lx                 ; 0463 DD 2D
        dec  ly                 ; 0465 FD 2D
        dec  sp                 ; 0467 3B
        dec  xh                 ; 0468 DD 25
        dec  xl                 ; 046A DD 2D
        dec  yh                 ; 046C FD 25
        dec  yl                 ; 046E FD 2D
        di                      ; 0470 F3
        DI                      ; 0471 F3
        djnz 1012               ; 0472 10 80
        DJNZ 1014               ; 0474 10 80
        djnz 1017               ; 0476 10 81
        djnz 1144               ; 0478 10 FE
        djnz 1148               ; 047A 10 00
        djnz 1151               ; 047C 10 01
        djnz 1278               ; 047E 10 7E
        djnz 1281               ; 0480 10 7F
        ei                      ; 0482 FB
        EI                      ; 0483 FB
        ex   (sp),hl            ; 0484 E3
        EX   (SP),HL            ; 0485 E3
        ex   (sp),ix            ; 0486 DD E3
        ex   (sp),iy            ; 0488 FD E3
        ex   [sp],hl            ; 048A E3
        ex   [sp],ix            ; 048B DD E3
        ex   [sp],iy            ; 048D FD E3
        ex   af                 ; 048F 08
        EX   AF                 ; 0490 08
        ex   af,af              ; 0491 08
        ex   af,af'             ; 0492 08
        EX   AF,AF'             ; 0493 08
        ex   de,hl              ; 0494 EB
        exa                     ; 0495 08
        EXA                     ; 0496 08
        exx                     ; 0497 D9
        EXX                     ; 0498 D9
        halt                    ; 0499 76
        HALT                    ; 049A 76
        im   0                  ; 049B ED 46
        IM   0                  ; 049D ED 46
        im   1                  ; 049F ED 56
        im   2                  ; 04A1 ED 5E
        in   a,(255)            ; 04A3 DB FF
        IN   A,(255)            ; 04A5 DB FF
        in   a,(c)              ; 04A7 ED 78
        in   a,[255]            ; 04A9 DB FF
        in   a,[c]              ; 04AB ED 78
        in   b,(c)              ; 04AD ED 40
        in   b,[c]              ; 04AF ED 40
        in   c,(c)              ; 04B1 ED 48
        in   c,[c]              ; 04B3 ED 48
        in   d,(c)              ; 04B5 ED 50
        in   d,[c]              ; 04B7 ED 50
        in   e,(c)              ; 04B9 ED 58
        in   e,[c]              ; 04BB ED 58
        in   f,(c)              ; 04BD ED 70
        IN   F,(C)              ; 04BF ED 70
        in   f,[c]              ; 04C1 ED 70
        in   h,(c)              ; 04C3 ED 60
        in   h,[c]              ; 04C5 ED 60
        in   l,(c)              ; 04C7 ED 68
        in   l,[c]              ; 04C9 ED 68
        inc  (hl)               ; 04CB 34
        INC  (HL)               ; 04CC 34
        inc  (ix)               ; 04CD DD 34 00
        inc  (ix+127)           ; 04D0 DD 34 7F
        inc  (ix+127)           ; 04D3 DD 34 7F
        inc  (iy)               ; 04D6 FD 34 00
        inc  (iy+127)           ; 04D9 FD 34 7F
        inc  (iy+127)           ; 04DC FD 34 7F
        inc  [hl]               ; 04DF 34
        inc  [ix+127]           ; 04E0 DD 34 7F
        inc  [ix+127]           ; 04E3 DD 34 7F
        inc  [ix]               ; 04E6 DD 34 00
        inc  [iy+127]           ; 04E9 FD 34 7F
        inc  [iy+127]           ; 04EC FD 34 7F
        inc  [iy]               ; 04EF FD 34 00
        inc  a                  ; 04F2 3C
        inc  b                  ; 04F3 04
        inc  bc                 ; 04F4 03
        inc  c                  ; 04F5 0C
        inc  d                  ; 04F6 14
        inc  de                 ; 04F7 13
        inc  e                  ; 04F8 1C
        inc  h                  ; 04F9 24
        inc  hl                 ; 04FA 23
        inc  hx                 ; 04FB DD 24
        inc  hy                 ; 04FD FD 24
        inc  ix                 ; 04FF DD 23
        inc  ixh                ; 0501 DD 24
        inc  ixl                ; 0503 DD 2C
        inc  iy                 ; 0505 FD 23
        inc  iyh                ; 0507 FD 24
        inc  iyl                ; 0509 FD 2C
        inc  l                  ; 050B 2C
        inc  lx                 ; 050C DD 2C
        inc  ly                 ; 050E FD 2C
        inc  sp                 ; 0510 33
        inc  xh                 ; 0511 DD 24
        inc  xl                 ; 0513 DD 2C
        inc  yh                 ; 0515 FD 24
        inc  yl                 ; 0517 FD 2C
        ind                     ; 0519 ED AA
        IND                     ; 051B ED AA
        indr                    ; 051D ED BA
        INDR                    ; 051F ED BA
        ini                     ; 0521 ED A2
        INI                     ; 0523 ED A2
        inir                    ; 0525 ED B2
        INIR                    ; 0527 ED B2
        jp   (hl)               ; 0529 E9
        JP   (HL)               ; 052A E9
        jp   (ix)               ; 052B DD E9
        jp   (iy)               ; 052D FD E9
        jp   65535              ; 052F C3 FF FF
        jp   [hl]               ; 0532 E9
        jp   [ix]               ; 0533 DD E9
        jp   [iy]               ; 0535 FD E9
        jp   c,65535            ; 0537 DA FF FF
        jp   hl                 ; 053A E9
        jp   ix                 ; 053B DD E9
        jp   iy                 ; 053D FD E9
        jp   m,65535            ; 053F FA FF FF
        jp   nc,65535           ; 0542 D2 FF FF
        jp   nz,65535           ; 0545 C2 FF FF
        jp   p,65535            ; 0548 F2 FF FF
        jp   pe,65535           ; 054B EA FF FF
        jp   po,65535           ; 054E E2 FF FF
        jp   z,65535            ; 0551 CA FF FF
        jr   1493               ; 0554 18 7F
        JR   1495               ; 0556 18 7F
        jr   c,1497             ; 0558 38 7F
        jr   nc,1499            ; 055A 30 7F
        jr   nz,1501            ; 055C 20 7F
        jr   z,1503             ; 055E 28 7F
        ld   (65535),a          ; 0560 32 FF FF
        LD   (65535),A          ; 0563 32 FF FF
        ld   (65535),bc         ; 0566 ED 43 FF FF
        ld   (65535),de         ; 056A ED 53 FF FF
        ld   (65535),hl         ; 056E 22 FF FF
        ld   (65535),ix         ; 0571 DD 22 FF FF
        ld   (65535),iy         ; 0575 FD 22 FF FF
        ld   (65535),sp         ; 0579 ED 73 FF FF
        ld   (bc),a             ; 057D 02
        ld   (de),a             ; 057E 12
        ld   (hl),255           ; 057F 36 FF
        ld   (hl),a             ; 0581 77
        ld   (hl),b             ; 0582 70
        ld   (hl),bc            ; 0583 71 23 70 2B
        ld   (hl),c             ; 0587 71
        ld   (hl),d             ; 0588 72
        ld   (hl),de            ; 0589 73 23 72 2B
        ld   (hl),e             ; 058D 73
        ld   (hl),h             ; 058E 74
        ld   (hl),l             ; 058F 75
        ld   (ix),255           ; 0590 DD 36 00 FF
        ld   (ix),a             ; 0594 DD 77 00
        ld   (ix),b             ; 0597 DD 70 00
        ld   (ix),bc            ; 059A DD 71 00 DD 70 01
        ld   (ix),c             ; 05A0 DD 71 00
        ld   (ix),d             ; 05A3 DD 72 00
        ld   (ix),de            ; 05A6 DD 73 00 DD 72 01
        ld   (ix),e             ; 05AC DD 73 00
        ld   (ix),h             ; 05AF DD 74 00
        ld   (ix),hl            ; 05B2 DD 75 00 DD 74 01
        ld   (ix),l             ; 05B8 DD 75 00
        ld   (ix+127),255       ; 05BB DD 36 7F FF
        ld   (ix+127),a         ; 05BF DD 77 7F
        ld   (ix+127),b         ; 05C2 DD 70 7F
        ld   (ix+126),bc        ; 05C5 DD 71 7E DD 70 7F
        ld   (ix+127),c         ; 05CB DD 71 7F
        ld   (ix+127),d         ; 05CE DD 72 7F
        ld   (ix+126),de        ; 05D1 DD 73 7E DD 72 7F
        ld   (ix+127),e         ; 05D7 DD 73 7F
        ld   (ix+127),h         ; 05DA DD 74 7F
        ld   (ix+126),hl        ; 05DD DD 75 7E DD 74 7F
        ld   (ix+127),l         ; 05E3 DD 75 7F
        ld   (ix+127),255       ; 05E6 DD 36 7F FF
        ld   (ix+127),a         ; 05EA DD 77 7F
        ld   (ix+127),b         ; 05ED DD 70 7F
        ld   (ix+126),bc        ; 05F0 DD 71 7E DD 70 7F
        ld   (ix+127),c         ; 05F6 DD 71 7F
        ld   (ix+127),d         ; 05F9 DD 72 7F
        ld   (ix+126),de        ; 05FC DD 73 7E DD 72 7F
        ld   (ix+127),e         ; 0602 DD 73 7F
        ld   (ix+127),h         ; 0605 DD 74 7F
        ld   (ix+126),hl        ; 0608 DD 75 7E DD 74 7F
        ld   (ix+127),l         ; 060E DD 75 7F
        ld   (iy),255           ; 0611 FD 36 00 FF
        ld   (iy),a             ; 0615 FD 77 00
        ld   (iy),b             ; 0618 FD 70 00
        ld   (iy),bc            ; 061B FD 71 00 FD 70 01
        ld   (iy),c             ; 0621 FD 71 00
        ld   (iy),d             ; 0624 FD 72 00
        ld   (iy),de            ; 0627 FD 73 00 FD 72 01
        ld   (iy),e             ; 062D FD 73 00
        ld   (iy),h             ; 0630 FD 74 00
        ld   (iy),hl            ; 0633 FD 75 00 FD 74 01
        ld   (iy),l             ; 0639 FD 75 00
        ld   (iy+127),255       ; 063C FD 36 7F FF
        ld   (iy+127),a         ; 0640 FD 77 7F
        ld   (iy+127),b         ; 0643 FD 70 7F
        ld   (iy+126),bc        ; 0646 FD 71 7E FD 70 7F
        ld   (iy+127),c         ; 064C FD 71 7F
        ld   (iy+127),d         ; 064F FD 72 7F
        ld   (iy+126),de        ; 0652 FD 73 7E FD 72 7F
        ld   (iy+127),e         ; 0658 FD 73 7F
        ld   (iy+127),h         ; 065B FD 74 7F
        ld   (iy+126),hl        ; 065E FD 75 7E FD 74 7F
        ld   (iy+127),l         ; 0664 FD 75 7F
        ld   (iy+127),255       ; 0667 FD 36 7F FF
        ld   (iy+127),a         ; 066B FD 77 7F
        ld   (iy+127),b         ; 066E FD 70 7F
        ld   (iy+126),bc        ; 0671 FD 71 7E FD 70 7F
        ld   (iy+127),c         ; 0677 FD 71 7F
        ld   (iy+127),d         ; 067A FD 72 7F
        ld   (iy+126),de        ; 067D FD 73 7E FD 72 7F
        ld   (iy+127),e         ; 0683 FD 73 7F
        ld   (iy+127),h         ; 0686 FD 74 7F
        ld   (iy+126),hl        ; 0689 FD 75 7E FD 74 7F
        ld   (iy+127),l         ; 068F FD 75 7F
        ld   [65535],a          ; 0692 32 FF FF
        ld   [65535],bc         ; 0695 ED 43 FF FF
        ld   [65535],de         ; 0699 ED 53 FF FF
        ld   [65535],hl         ; 069D 22 FF FF
        ld   [65535],ix         ; 06A0 DD 22 FF FF
        ld   [65535],iy         ; 06A4 FD 22 FF FF
        ld   [65535],sp         ; 06A8 ED 73 FF FF
        ld   [bc],a             ; 06AC 02
        ld   [de],a             ; 06AD 12
        ld   [hl],255           ; 06AE 36 FF
        ld   [hl],a             ; 06B0 77
        ld   [hl],b             ; 06B1 70
        ld   [hl],bc            ; 06B2 71 23 70 2B
        ld   [hl],c             ; 06B6 71
        ld   [hl],d             ; 06B7 72
        ld   [hl],de            ; 06B8 73 23 72 2B
        ld   [hl],e             ; 06BC 73
        ld   [hl],h             ; 06BD 74
        ld   [hl],l             ; 06BE 75
        ld   [ix+127],255       ; 06BF DD 36 7F FF
        ld   [ix+127],a         ; 06C3 DD 77 7F
        ld   [ix+127],b         ; 06C6 DD 70 7F
        ld   [ix+126],bc        ; 06C9 DD 71 7E DD 70 7F
        ld   [ix+127],c         ; 06CF DD 71 7F
        ld   [ix+127],d         ; 06D2 DD 72 7F
        ld   [ix+126],de        ; 06D5 DD 73 7E DD 72 7F
        ld   [ix+127],e         ; 06DB DD 73 7F
        ld   [ix+127],h         ; 06DE DD 74 7F
        ld   [ix+126],hl        ; 06E1 DD 75 7E DD 74 7F
        ld   [ix+127],l         ; 06E7 DD 75 7F
        ld   [ix+127],255       ; 06EA DD 36 7F FF
        ld   [ix+127],a         ; 06EE DD 77 7F
        ld   [ix+127],b         ; 06F1 DD 70 7F
        ld   [ix+126],bc        ; 06F4 DD 71 7E DD 70 7F
        ld   [ix+127],c         ; 06FA DD 71 7F
        ld   [ix+127],d         ; 06FD DD 72 7F
        ld   [ix+126],de        ; 0700 DD 73 7E DD 72 7F
        ld   [ix+127],e         ; 0706 DD 73 7F
        ld   [ix+127],h         ; 0709 DD 74 7F
        ld   [ix+126],hl        ; 070C DD 75 7E DD 74 7F
        ld   [ix+127],l         ; 0712 DD 75 7F
        ld   [ix],255           ; 0715 DD 36 00 FF
        ld   [ix],a             ; 0719 DD 77 00
        ld   [ix],b             ; 071C DD 70 00
        ld   [ix],bc            ; 071F DD 71 00 DD 70 01
        ld   [ix],c             ; 0725 DD 71 00
        ld   [ix],d             ; 0728 DD 72 00
        ld   [ix],de            ; 072B DD 73 00 DD 72 01
        ld   [ix],e             ; 0731 DD 73 00
        ld   [ix],h             ; 0734 DD 74 00
        ld   [ix],hl            ; 0737 DD 75 00 DD 74 01
        ld   [ix],l             ; 073D DD 75 00
        ld   [iy+127],255       ; 0740 FD 36 7F FF
        ld   [iy+127],a         ; 0744 FD 77 7F
        ld   [iy+127],b         ; 0747 FD 70 7F
        ld   [iy+126],bc        ; 074A FD 71 7E FD 70 7F
        ld   [iy+127],c         ; 0750 FD 71 7F
        ld   [iy+127],d         ; 0753 FD 72 7F
        ld   [iy+126],de        ; 0756 FD 73 7E FD 72 7F
        ld   [iy+127],e         ; 075C FD 73 7F
        ld   [iy+127],h         ; 075F FD 74 7F
        ld   [iy+126],hl        ; 0762 FD 75 7E FD 74 7F
        ld   [iy+127],l         ; 0768 FD 75 7F
        ld   [iy+127],255       ; 076B FD 36 7F FF
        ld   [iy+127],a         ; 076F FD 77 7F
        ld   [iy+127],b         ; 0772 FD 70 7F
        ld   [iy+126],bc        ; 0775 FD 71 7E FD 70 7F
        ld   [iy+127],c         ; 077B FD 71 7F
        ld   [iy+127],d         ; 077E FD 72 7F
        ld   [iy+126],de        ; 0781 FD 73 7E FD 72 7F
        ld   [iy+127],e         ; 0787 FD 73 7F
        ld   [iy+127],h         ; 078A FD 74 7F
        ld   [iy+126],hl        ; 078D FD 75 7E FD 74 7F
        ld   [iy+127],l         ; 0793 FD 75 7F
        ld   [iy],255           ; 0796 FD 36 00 FF
        ld   [iy],a             ; 079A FD 77 00
        ld   [iy],b             ; 079D FD 70 00
        ld   [iy],bc            ; 07A0 FD 71 00 FD 70 01
        ld   [iy],c             ; 07A6 FD 71 00
        ld   [iy],d             ; 07A9 FD 72 00
        ld   [iy],de            ; 07AC FD 73 00 FD 72 01
        ld   [iy],e             ; 07B2 FD 73 00
        ld   [iy],h             ; 07B5 FD 74 00
        ld   [iy],hl            ; 07B8 FD 75 00 FD 74 01
        ld   [iy],l             ; 07BE FD 75 00
        ld   a,(65535)          ; 07C1 3A FF FF
        ld   a,(bc)             ; 07C4 0A
        ld   a,(de)             ; 07C5 1A
        ld   a,(hl)             ; 07C6 7E
        ld   a,(ix)             ; 07C7 DD 7E 00
        ld   a,(ix+127)         ; 07CA DD 7E 7F
        ld   a,(ix+127)         ; 07CD DD 7E 7F
        ld   a,(iy)             ; 07D0 FD 7E 00
        ld   a,(iy+127)         ; 07D3 FD 7E 7F
        ld   a,(iy+127)         ; 07D6 FD 7E 7F
        ld   a,255              ; 07D9 3E FF
        ld   a,[65535]          ; 07DB 3A FF FF
        ld   a,[bc]             ; 07DE 0A
        ld   a,[de]             ; 07DF 1A
        ld   a,[hl]             ; 07E0 7E
        ld   a,[ix+127]         ; 07E1 DD 7E 7F
        ld   a,[ix+127]         ; 07E4 DD 7E 7F
        ld   a,[ix]             ; 07E7 DD 7E 00
        ld   a,[iy+127]         ; 07EA FD 7E 7F
        ld   a,[iy+127]         ; 07ED FD 7E 7F
        ld   a,[iy]             ; 07F0 FD 7E 00
        ld   a,a                ; 07F3 7F
        ld   a,b                ; 07F4 78
        ld   a,c                ; 07F5 79
        ld   a,d                ; 07F6 7A
        ld   a,e                ; 07F7 7B
        ld   a,h                ; 07F8 7C
        ld   a,hx               ; 07F9 DD 7C
        ld   a,hy               ; 07FB FD 7C
        ld   a,i                ; 07FD ED 57
        LD   A,I                ; 07FF ED 57
        ld   a,ixh              ; 0801 DD 7C
        ld   a,ixl              ; 0803 DD 7D
        ld   a,iyh              ; 0805 FD 7C
        ld   a,iyl              ; 0807 FD 7D
        ld   a,l                ; 0809 7D
        ld   a,lx               ; 080A DD 7D
        ld   a,ly               ; 080C FD 7D
        ld   a,r                ; 080E ED 5F
        LD   A,R                ; 0810 ED 5F
        ld   a,xh               ; 0812 DD 7C
        ld   a,xl               ; 0814 DD 7D
        ld   a,yh               ; 0816 FD 7C
        ld   a,yl               ; 0818 FD 7D
        ld   b,(hl)             ; 081A 46
        ld   b,(ix)             ; 081B DD 46 00
        ld   b,(ix+127)         ; 081E DD 46 7F
        ld   b,(ix+127)         ; 0821 DD 46 7F
        ld   b,(iy)             ; 0824 FD 46 00
        ld   b,(iy+127)         ; 0827 FD 46 7F
        ld   b,(iy+127)         ; 082A FD 46 7F
        ld   b,255              ; 082D 06 FF
        ld   b,[hl]             ; 082F 46
        ld   b,[ix+127]         ; 0830 DD 46 7F
        ld   b,[ix+127]         ; 0833 DD 46 7F
        ld   b,[ix]             ; 0836 DD 46 00
        ld   b,[iy+127]         ; 0839 FD 46 7F
        ld   b,[iy+127]         ; 083C FD 46 7F
        ld   b,[iy]             ; 083F FD 46 00
        ld   b,a                ; 0842 47
        ld   b,b                ; 0843 40
        ld   b,c                ; 0844 41
        ld   b,d                ; 0845 42
        ld   b,e                ; 0846 43
        ld   b,h                ; 0847 44
        ld   b,hx               ; 0848 DD 44
        ld   b,hy               ; 084A FD 44
        ld   b,ixh              ; 084C DD 44
        ld   b,ixl              ; 084E DD 45
        ld   b,iyh              ; 0850 FD 44
        ld   b,iyl              ; 0852 FD 45
        ld   b,l                ; 0854 45
        ld   b,lx               ; 0855 DD 45
        ld   b,ly               ; 0857 FD 45
        ld   b,xh               ; 0859 DD 44
        ld   b,xl               ; 085B DD 45
        ld   b,yh               ; 085D FD 44
        ld   b,yl               ; 085F FD 45
        ld   bc,(65535)         ; 0861 ED 4B FF FF
        ld   bc,(hl)            ; 0865 4E 23 46 2B
        ld   bc,(ix)            ; 0869 DD 4E 00 DD 46 01
        ld   bc,(ix+126)        ; 086F DD 4E 7E DD 46 7F
        ld   bc,(ix+126)        ; 0875 DD 4E 7E DD 46 7F
        ld   bc,(iy)            ; 087B FD 4E 00 FD 46 01
        ld   bc,(iy+126)        ; 0881 FD 4E 7E FD 46 7F
        ld   bc,(iy+126)        ; 0887 FD 4E 7E FD 46 7F
        ld   bc,65535           ; 088D 01 FF FF
        ld   bc,[65535]         ; 0890 ED 4B FF FF
        ld   bc,[hl]            ; 0894 4E 23 46 2B
        ld   bc,[ix+126]        ; 0898 DD 4E 7E DD 46 7F
        ld   bc,[ix+126]        ; 089E DD 4E 7E DD 46 7F
        ld   bc,[ix]            ; 08A4 DD 4E 00 DD 46 01
        ld   bc,[iy+126]        ; 08AA FD 4E 7E FD 46 7F
        ld   bc,[iy+126]        ; 08B0 FD 4E 7E FD 46 7F
        ld   bc,[iy]            ; 08B6 FD 4E 00 FD 46 01
        ld   bc,bc              ; 08BC 40 49
        ld   bc,de              ; 08BE 42 4B
        ld   bc,hl              ; 08C0 44 4D
        ld   bc,ix              ; 08C2 DD 44 DD 4D
        ld   bc,iy              ; 08C6 FD 44 FD 4D
        ld   c,(hl)             ; 08CA 4E
        ld   c,(ix)             ; 08CB DD 4E 00
        ld   c,(ix+127)         ; 08CE DD 4E 7F
        ld   c,(ix+127)         ; 08D1 DD 4E 7F
        ld   c,(iy)             ; 08D4 FD 4E 00
        ld   c,(iy+127)         ; 08D7 FD 4E 7F
        ld   c,(iy+127)         ; 08DA FD 4E 7F
        ld   c,255              ; 08DD 0E FF
        ld   c,[hl]             ; 08DF 4E
        ld   c,[ix+127]         ; 08E0 DD 4E 7F
        ld   c,[ix+127]         ; 08E3 DD 4E 7F
        ld   c,[ix]             ; 08E6 DD 4E 00
        ld   c,[iy+127]         ; 08E9 FD 4E 7F
        ld   c,[iy+127]         ; 08EC FD 4E 7F
        ld   c,[iy]             ; 08EF FD 4E 00
        ld   c,a                ; 08F2 4F
        ld   c,b                ; 08F3 48
        ld   c,c                ; 08F4 49
        ld   c,d                ; 08F5 4A
        ld   c,e                ; 08F6 4B
        ld   c,h                ; 08F7 4C
        ld   c,hx               ; 08F8 DD 4C
        ld   c,hy               ; 08FA FD 4C
        ld   c,ixh              ; 08FC DD 4C
        ld   c,ixl              ; 08FE DD 4D
        ld   c,iyh              ; 0900 FD 4C
        ld   c,iyl              ; 0902 FD 4D
        ld   c,l                ; 0904 4D
        ld   c,lx               ; 0905 DD 4D
        ld   c,ly               ; 0907 FD 4D
        ld   c,xh               ; 0909 DD 4C
        ld   c,xl               ; 090B DD 4D
        ld   c,yh               ; 090D FD 4C
        ld   c,yl               ; 090F FD 4D
        ld   d,(hl)             ; 0911 56
        ld   d,(ix)             ; 0912 DD 56 00
        ld   d,(ix+127)         ; 0915 DD 56 7F
        ld   d,(ix+127)         ; 0918 DD 56 7F
        ld   d,(iy)             ; 091B FD 56 00
        ld   d,(iy+127)         ; 091E FD 56 7F
        ld   d,(iy+127)         ; 0921 FD 56 7F
        ld   d,255              ; 0924 16 FF
        ld   d,[hl]             ; 0926 56
        ld   d,[ix+127]         ; 0927 DD 56 7F
        ld   d,[ix+127]         ; 092A DD 56 7F
        ld   d,[ix]             ; 092D DD 56 00
        ld   d,[iy+127]         ; 0930 FD 56 7F
        ld   d,[iy+127]         ; 0933 FD 56 7F
        ld   d,[iy]             ; 0936 FD 56 00
        ld   d,a                ; 0939 57
        ld   d,b                ; 093A 50
        ld   d,c                ; 093B 51
        ld   d,d                ; 093C 52
        ld   d,e                ; 093D 53
        ld   d,h                ; 093E 54
        ld   d,hx               ; 093F DD 54
        ld   d,hy               ; 0941 FD 54
        ld   d,ixh              ; 0943 DD 54
        ld   d,ixl              ; 0945 DD 55
        ld   d,iyh              ; 0947 FD 54
        ld   d,iyl              ; 0949 FD 55
        ld   d,l                ; 094B 55
        ld   d,lx               ; 094C DD 55
        ld   d,ly               ; 094E FD 55
        ld   d,xh               ; 0950 DD 54
        ld   d,xl               ; 0952 DD 55
        ld   d,yh               ; 0954 FD 54
        ld   d,yl               ; 0956 FD 55
        ld   de,(65535)         ; 0958 ED 5B FF FF
        ld   de,(hl)            ; 095C 5E 23 56 2B
        ld   de,(ix)            ; 0960 DD 5E 00 DD 56 01
        ld   de,(ix+126)        ; 0966 DD 5E 7E DD 56 7F
        ld   de,(ix+126)        ; 096C DD 5E 7E DD 56 7F
        ld   de,(iy)            ; 0972 FD 5E 00 FD 56 01
        ld   de,(iy+126)        ; 0978 FD 5E 7E FD 56 7F
        ld   de,(iy+126)        ; 097E FD 5E 7E FD 56 7F
        ld   de,65535           ; 0984 11 FF FF
        ld   de,[65535]         ; 0987 ED 5B FF FF
        ld   de,[hl]            ; 098B 5E 23 56 2B
        ld   de,[ix+126]        ; 098F DD 5E 7E DD 56 7F
        ld   de,[ix+126]        ; 0995 DD 5E 7E DD 56 7F
        ld   de,[ix]            ; 099B DD 5E 00 DD 56 01
        ld   de,[iy+126]        ; 09A1 FD 5E 7E FD 56 7F
        ld   de,[iy+126]        ; 09A7 FD 5E 7E FD 56 7F
        ld   de,[iy]            ; 09AD FD 5E 00 FD 56 01
        ld   de,bc              ; 09B3 50 59
        ld   de,de              ; 09B5 52 5B
        ld   de,hl              ; 09B7 54 5D
        ld   de,ix              ; 09B9 DD 54 DD 5D
        ld   de,iy              ; 09BD FD 54 FD 5D
        ld   e,(hl)             ; 09C1 5E
        ld   e,(ix)             ; 09C2 DD 5E 00
        ld   e,(ix+127)         ; 09C5 DD 5E 7F
        ld   e,(ix+127)         ; 09C8 DD 5E 7F
        ld   e,(iy)             ; 09CB FD 5E 00
        ld   e,(iy+127)         ; 09CE FD 5E 7F
        ld   e,(iy+127)         ; 09D1 FD 5E 7F
        ld   e,255              ; 09D4 1E FF
        ld   e,[hl]             ; 09D6 5E
        ld   e,[ix+127]         ; 09D7 DD 5E 7F
        ld   e,[ix+127]         ; 09DA DD 5E 7F
        ld   e,[ix]             ; 09DD DD 5E 00
        ld   e,[iy+127]         ; 09E0 FD 5E 7F
        ld   e,[iy+127]         ; 09E3 FD 5E 7F
        ld   e,[iy]             ; 09E6 FD 5E 00
        ld   e,a                ; 09E9 5F
        ld   e,b                ; 09EA 58
        ld   e,c                ; 09EB 59
        ld   e,d                ; 09EC 5A
        ld   e,e                ; 09ED 5B
        ld   e,h                ; 09EE 5C
        ld   e,hx               ; 09EF DD 5C
        ld   e,hy               ; 09F1 FD 5C
        ld   e,ixh              ; 09F3 DD 5C
        ld   e,ixl              ; 09F5 DD 5D
        ld   e,iyh              ; 09F7 FD 5C
        ld   e,iyl              ; 09F9 FD 5D
        ld   e,l                ; 09FB 5D
        ld   e,lx               ; 09FC DD 5D
        ld   e,ly               ; 09FE FD 5D
        ld   e,xh               ; 0A00 DD 5C
        ld   e,xl               ; 0A02 DD 5D
        ld   e,yh               ; 0A04 FD 5C
        ld   e,yl               ; 0A06 FD 5D
        ld   h,(hl)             ; 0A08 66
        ld   h,(ix)             ; 0A09 DD 66 00
        ld   h,(ix+127)         ; 0A0C DD 66 7F
        ld   h,(ix+127)         ; 0A0F DD 66 7F
        ld   h,(iy)             ; 0A12 FD 66 00
        ld   h,(iy+127)         ; 0A15 FD 66 7F
        ld   h,(iy+127)         ; 0A18 FD 66 7F
        ld   h,255              ; 0A1B 26 FF
        ld   h,[hl]             ; 0A1D 66
        ld   h,[ix+127]         ; 0A1E DD 66 7F
        ld   h,[ix+127]         ; 0A21 DD 66 7F
        ld   h,[ix]             ; 0A24 DD 66 00
        ld   h,[iy+127]         ; 0A27 FD 66 7F
        ld   h,[iy+127]         ; 0A2A FD 66 7F
        ld   h,[iy]             ; 0A2D FD 66 00
        ld   h,a                ; 0A30 67
        ld   h,b                ; 0A31 60
        ld   h,c                ; 0A32 61
        ld   h,d                ; 0A33 62
        ld   h,e                ; 0A34 63
        ld   h,h                ; 0A35 64
        ld   h,l                ; 0A36 65
        ld   hl,(65535)         ; 0A37 2A FF FF
        ld   hl,(ix)            ; 0A3A DD 6E 00 DD 66 01
        ld   hl,(ix+126)        ; 0A40 DD 6E 7E DD 66 7F
        ld   hl,(ix+126)        ; 0A46 DD 6E 7E DD 66 7F
        ld   hl,(iy)            ; 0A4C FD 6E 00 FD 66 01
        ld   hl,(iy+126)        ; 0A52 FD 6E 7E FD 66 7F
        ld   hl,(iy+126)        ; 0A58 FD 6E 7E FD 66 7F
        ld   hl,65535           ; 0A5E 21 FF FF
        ld   hl,[65535]         ; 0A61 2A FF FF
        ld   hl,[ix+126]        ; 0A64 DD 6E 7E DD 66 7F
        ld   hl,[ix+126]        ; 0A6A DD 6E 7E DD 66 7F
        ld   hl,[ix]            ; 0A70 DD 6E 00 DD 66 01
        ld   hl,[iy+126]        ; 0A76 FD 6E 7E FD 66 7F
        ld   hl,[iy+126]        ; 0A7C FD 6E 7E FD 66 7F
        ld   hl,[iy]            ; 0A82 FD 6E 00 FD 66 01
        ld   hl,bc              ; 0A88 60 69
        ld   hl,de              ; 0A8A 62 6B
        ld   hl,hl              ; 0A8C 64 6D
        ld   hl,ix              ; 0A8E DD E5 E1
        ld   hl,iy              ; 0A91 FD E5 E1
        ld   hx,255             ; 0A94 DD 26 FF
        ld   hx,a               ; 0A97 DD 67
        ld   hx,b               ; 0A99 DD 60
        ld   hx,c               ; 0A9B DD 61
        ld   hx,d               ; 0A9D DD 62
        ld   hx,e               ; 0A9F DD 63
        ld   hx,hx              ; 0AA1 DD 64
        ld   hx,lx              ; 0AA3 DD 65
        ld   hy,255             ; 0AA5 FD 26 FF
        ld   hy,a               ; 0AA8 FD 67
        ld   hy,b               ; 0AAA FD 60
        ld   hy,c               ; 0AAC FD 61
        ld   hy,d               ; 0AAE FD 62
        ld   hy,e               ; 0AB0 FD 63
        ld   hy,hy              ; 0AB2 FD 64
        ld   hy,ly              ; 0AB4 FD 65
        ld   i,a                ; 0AB6 ED 47
        ld   ix,(65535)         ; 0AB8 DD 2A FF FF
        ld   ix,65535           ; 0ABC DD 21 FF FF
        ld   ix,[65535]         ; 0AC0 DD 2A FF FF
        ld   ix,bc              ; 0AC4 DD 69 DD 60
        ld   ix,de              ; 0AC8 DD 6B DD 62
        ld   ix,hl              ; 0ACC E5 DD E1
        ld   ix,ix              ; 0ACF DD 6D DD 64
        ld   ix,iy              ; 0AD3 FD E5 DD E1
        ld   ixh,255            ; 0AD7 DD 26 FF
        ld   ixh,a              ; 0ADA DD 67
        ld   ixh,b              ; 0ADC DD 60
        ld   ixh,c              ; 0ADE DD 61
        ld   ixh,d              ; 0AE0 DD 62
        ld   ixh,e              ; 0AE2 DD 63
        ld   ixh,ixh            ; 0AE4 DD 64
        ld   ixh,ixl            ; 0AE6 DD 65
        ld   ixl,255            ; 0AE8 DD 2E FF
        ld   ixl,a              ; 0AEB DD 6F
        ld   ixl,b              ; 0AED DD 68
        ld   ixl,c              ; 0AEF DD 69
        ld   ixl,d              ; 0AF1 DD 6A
        ld   ixl,e              ; 0AF3 DD 6B
        ld   ixl,ixh            ; 0AF5 DD 6C
        ld   ixl,ixl            ; 0AF7 DD 6D
        ld   iy,(65535)         ; 0AF9 FD 2A FF FF
        ld   iy,65535           ; 0AFD FD 21 FF FF
        ld   iy,[65535]         ; 0B01 FD 2A FF FF
        ld   iy,bc              ; 0B05 FD 69 FD 60
        ld   iy,de              ; 0B09 FD 6B FD 62
        ld   iy,hl              ; 0B0D E5 FD E1
        ld   iy,ix              ; 0B10 DD E5 FD E1
        ld   iy,iy              ; 0B14 FD 6D FD 64
        ld   iyh,255            ; 0B18 FD 26 FF
        ld   iyh,a              ; 0B1B FD 67
        ld   iyh,b              ; 0B1D FD 60
        ld   iyh,c              ; 0B1F FD 61
        ld   iyh,d              ; 0B21 FD 62
        ld   iyh,e              ; 0B23 FD 63
        ld   iyh,iyh            ; 0B25 FD 64
        ld   iyh,iyl            ; 0B27 FD 65
        ld   iyl,255            ; 0B29 FD 2E FF
        ld   iyl,a              ; 0B2C FD 6F
        ld   iyl,b              ; 0B2E FD 68
        ld   iyl,c              ; 0B30 FD 69
        ld   iyl,d              ; 0B32 FD 6A
        ld   iyl,e              ; 0B34 FD 6B
        ld   iyl,iyh            ; 0B36 FD 6C
        ld   iyl,iyl            ; 0B38 FD 6D
        ld   l,(hl)             ; 0B3A 6E
        ld   l,(ix)             ; 0B3B DD 6E 00
        ld   l,(ix+127)         ; 0B3E DD 6E 7F
        ld   l,(ix+127)         ; 0B41 DD 6E 7F
        ld   l,(iy)             ; 0B44 FD 6E 00
        ld   l,(iy+127)         ; 0B47 FD 6E 7F
        ld   l,(iy+127)         ; 0B4A FD 6E 7F
        ld   l,255              ; 0B4D 2E FF
        ld   l,[hl]             ; 0B4F 6E
        ld   l,[ix+127]         ; 0B50 DD 6E 7F
        ld   l,[ix+127]         ; 0B53 DD 6E 7F
        ld   l,[ix]             ; 0B56 DD 6E 00
        ld   l,[iy+127]         ; 0B59 FD 6E 7F
        ld   l,[iy+127]         ; 0B5C FD 6E 7F
        ld   l,[iy]             ; 0B5F FD 6E 00
        ld   l,a                ; 0B62 6F
        ld   l,b                ; 0B63 68
        ld   l,c                ; 0B64 69
        ld   l,d                ; 0B65 6A
        ld   l,e                ; 0B66 6B
        ld   l,h                ; 0B67 6C
        ld   l,l                ; 0B68 6D
        ld   lx,255             ; 0B69 DD 2E FF
        ld   lx,a               ; 0B6C DD 6F
        ld   lx,b               ; 0B6E DD 68
        ld   lx,c               ; 0B70 DD 69
        ld   lx,d               ; 0B72 DD 6A
        ld   lx,e               ; 0B74 DD 6B
        ld   lx,hx              ; 0B76 DD 6C
        ld   lx,lx              ; 0B78 DD 6D
        ld   ly,255             ; 0B7A FD 2E FF
        ld   ly,a               ; 0B7D FD 6F
        ld   ly,b               ; 0B7F FD 68
        ld   ly,c               ; 0B81 FD 69
        ld   ly,d               ; 0B83 FD 6A
        ld   ly,e               ; 0B85 FD 6B
        ld   ly,hy              ; 0B87 FD 6C
        ld   ly,ly              ; 0B89 FD 6D
        ld   r,a                ; 0B8B ED 4F
        ld   sp,(65535)         ; 0B8D ED 7B FF FF
        ld   sp,65535           ; 0B91 31 FF FF
        ld   sp,[65535]         ; 0B94 ED 7B FF FF
        ld   sp,hl              ; 0B98 F9
        ld   sp,ix              ; 0B99 DD F9
        ld   sp,iy              ; 0B9B FD F9
        ld   xh,255             ; 0B9D DD 26 FF
        ld   xh,a               ; 0BA0 DD 67
        ld   xh,b               ; 0BA2 DD 60
        ld   xh,c               ; 0BA4 DD 61
        ld   xh,d               ; 0BA6 DD 62
        ld   xh,e               ; 0BA8 DD 63
        ld   xh,xh              ; 0BAA DD 64
        ld   xh,xl              ; 0BAC DD 65
        ld   xl,255             ; 0BAE DD 2E FF
        ld   xl,a               ; 0BB1 DD 6F
        ld   xl,b               ; 0BB3 DD 68
        ld   xl,c               ; 0BB5 DD 69
        ld   xl,d               ; 0BB7 DD 6A
        ld   xl,e               ; 0BB9 DD 6B
        ld   xl,xh              ; 0BBB DD 6C
        ld   xl,xl              ; 0BBD DD 6D
        ld   yh,255             ; 0BBF FD 26 FF
        ld   yh,a               ; 0BC2 FD 67
        ld   yh,b               ; 0BC4 FD 60
        ld   yh,c               ; 0BC6 FD 61
        ld   yh,d               ; 0BC8 FD 62
        ld   yh,e               ; 0BCA FD 63
        ld   yh,yh              ; 0BCC FD 64
        ld   yh,yl              ; 0BCE FD 65
        ld   yl,255             ; 0BD0 FD 2E FF
        ld   yl,a               ; 0BD3 FD 6F
        ld   yl,b               ; 0BD5 FD 68
        ld   yl,c               ; 0BD7 FD 69
        ld   yl,d               ; 0BD9 FD 6A
        ld   yl,e               ; 0BDB FD 6B
        ld   yl,yh              ; 0BDD FD 6C
        ld   yl,yl              ; 0BDF FD 6D
        ldd                     ; 0BE1 ED A8
        LDD                     ; 0BE3 ED A8
        ldd  (bc),a             ; 0BE5 02 0B
        ldd  (de),a             ; 0BE7 12 1B
        ldd  (hl),255           ; 0BE9 36 FF 2B
        ldd  (hl),a             ; 0BEC 77 2B
        ldd  (hl),b             ; 0BEE 70 2B
        ldd  (hl),c             ; 0BF0 71 2B
        ldd  (hl),d             ; 0BF2 72 2B
        ldd  (hl),e             ; 0BF4 73 2B
        ldd  (hl),h             ; 0BF6 74 2B
        ldd  (hl),l             ; 0BF8 75 2B
        ldd  (ix),255           ; 0BFA DD 36 00 FF DD 2B
        ldd  (ix),a             ; 0C00 DD 77 00 DD 2B
        ldd  (ix),b             ; 0C05 DD 70 00 DD 2B
        ldd  (ix),c             ; 0C0A DD 71 00 DD 2B
        ldd  (ix),d             ; 0C0F DD 72 00 DD 2B
        ldd  (ix),e             ; 0C14 DD 73 00 DD 2B
        ldd  (ix),h             ; 0C19 DD 74 00 DD 2B
        ldd  (ix),l             ; 0C1E DD 75 00 DD 2B
        ldd  (ix+127),255       ; 0C23 DD 36 7F FF DD 2B
        ldd  (ix+127),a         ; 0C29 DD 77 7F DD 2B
        ldd  (ix+127),b         ; 0C2E DD 70 7F DD 2B
        ldd  (ix+127),c         ; 0C33 DD 71 7F DD 2B
        ldd  (ix+127),d         ; 0C38 DD 72 7F DD 2B
        ldd  (ix+127),e         ; 0C3D DD 73 7F DD 2B
        ldd  (ix+127),h         ; 0C42 DD 74 7F DD 2B
        ldd  (ix+127),l         ; 0C47 DD 75 7F DD 2B
        ldd  (ix+127),255       ; 0C4C DD 36 7F FF DD 2B
        ldd  (ix+127),a         ; 0C52 DD 77 7F DD 2B
        ldd  (ix+127),b         ; 0C57 DD 70 7F DD 2B
        ldd  (ix+127),c         ; 0C5C DD 71 7F DD 2B
        ldd  (ix+127),d         ; 0C61 DD 72 7F DD 2B
        ldd  (ix+127),e         ; 0C66 DD 73 7F DD 2B
        ldd  (ix+127),h         ; 0C6B DD 74 7F DD 2B
        ldd  (ix+127),l         ; 0C70 DD 75 7F DD 2B
        ldd  (iy),255           ; 0C75 FD 36 00 FF FD 2B
        ldd  (iy),a             ; 0C7B FD 77 00 FD 2B
        ldd  (iy),b             ; 0C80 FD 70 00 FD 2B
        ldd  (iy),c             ; 0C85 FD 71 00 FD 2B
        ldd  (iy),d             ; 0C8A FD 72 00 FD 2B
        ldd  (iy),e             ; 0C8F FD 73 00 FD 2B
        ldd  (iy),h             ; 0C94 FD 74 00 FD 2B
        ldd  (iy),l             ; 0C99 FD 75 00 FD 2B
        ldd  (iy+127),255       ; 0C9E FD 36 7F FF FD 2B
        ldd  (iy+127),a         ; 0CA4 FD 77 7F FD 2B
        ldd  (iy+127),b         ; 0CA9 FD 70 7F FD 2B
        ldd  (iy+127),c         ; 0CAE FD 71 7F FD 2B
        ldd  (iy+127),d         ; 0CB3 FD 72 7F FD 2B
        ldd  (iy+127),e         ; 0CB8 FD 73 7F FD 2B
        ldd  (iy+127),h         ; 0CBD FD 74 7F FD 2B
        ldd  (iy+127),l         ; 0CC2 FD 75 7F FD 2B
        ldd  (iy+127),255       ; 0CC7 FD 36 7F FF FD 2B
        ldd  (iy+127),a         ; 0CCD FD 77 7F FD 2B
        ldd  (iy+127),b         ; 0CD2 FD 70 7F FD 2B
        ldd  (iy+127),c         ; 0CD7 FD 71 7F FD 2B
        ldd  (iy+127),d         ; 0CDC FD 72 7F FD 2B
        ldd  (iy+127),e         ; 0CE1 FD 73 7F FD 2B
        ldd  (iy+127),h         ; 0CE6 FD 74 7F FD 2B
        ldd  (iy+127),l         ; 0CEB FD 75 7F FD 2B
        ldd  [bc],a             ; 0CF0 02 0B
        ldd  [de],a             ; 0CF2 12 1B
        ldd  [hl],255           ; 0CF4 36 FF 2B
        ldd  [hl],a             ; 0CF7 77 2B
        ldd  [hl],b             ; 0CF9 70 2B
        ldd  [hl],c             ; 0CFB 71 2B
        ldd  [hl],d             ; 0CFD 72 2B
        ldd  [hl],e             ; 0CFF 73 2B
        ldd  [hl],h             ; 0D01 74 2B
        ldd  [hl],l             ; 0D03 75 2B
        ldd  [ix+127],255       ; 0D05 DD 36 7F FF DD 2B
        ldd  [ix+127],a         ; 0D0B DD 77 7F DD 2B
        ldd  [ix+127],b         ; 0D10 DD 70 7F DD 2B
        ldd  [ix+127],c         ; 0D15 DD 71 7F DD 2B
        ldd  [ix+127],d         ; 0D1A DD 72 7F DD 2B
        ldd  [ix+127],e         ; 0D1F DD 73 7F DD 2B
        ldd  [ix+127],h         ; 0D24 DD 74 7F DD 2B
        ldd  [ix+127],l         ; 0D29 DD 75 7F DD 2B
        ldd  [ix+127],255       ; 0D2E DD 36 7F FF DD 2B
        ldd  [ix+127],a         ; 0D34 DD 77 7F DD 2B
        ldd  [ix+127],b         ; 0D39 DD 70 7F DD 2B
        ldd  [ix+127],c         ; 0D3E DD 71 7F DD 2B
        ldd  [ix+127],d         ; 0D43 DD 72 7F DD 2B
        ldd  [ix+127],e         ; 0D48 DD 73 7F DD 2B
        ldd  [ix+127],h         ; 0D4D DD 74 7F DD 2B
        ldd  [ix+127],l         ; 0D52 DD 75 7F DD 2B
        ldd  [ix],255           ; 0D57 DD 36 00 FF DD 2B
        ldd  [ix],a             ; 0D5D DD 77 00 DD 2B
        ldd  [ix],b             ; 0D62 DD 70 00 DD 2B
        ldd  [ix],c             ; 0D67 DD 71 00 DD 2B
        ldd  [ix],d             ; 0D6C DD 72 00 DD 2B
        ldd  [ix],e             ; 0D71 DD 73 00 DD 2B
        ldd  [ix],h             ; 0D76 DD 74 00 DD 2B
        ldd  [ix],l             ; 0D7B DD 75 00 DD 2B
        ldd  [iy+127],255       ; 0D80 FD 36 7F FF FD 2B
        ldd  [iy+127],a         ; 0D86 FD 77 7F FD 2B
        ldd  [iy+127],b         ; 0D8B FD 70 7F FD 2B
        ldd  [iy+127],c         ; 0D90 FD 71 7F FD 2B
        ldd  [iy+127],d         ; 0D95 FD 72 7F FD 2B
        ldd  [iy+127],e         ; 0D9A FD 73 7F FD 2B
        ldd  [iy+127],h         ; 0D9F FD 74 7F FD 2B
        ldd  [iy+127],l         ; 0DA4 FD 75 7F FD 2B
        ldd  [iy+127],255       ; 0DA9 FD 36 7F FF FD 2B
        ldd  [iy+127],a         ; 0DAF FD 77 7F FD 2B
        ldd  [iy+127],b         ; 0DB4 FD 70 7F FD 2B
        ldd  [iy+127],c         ; 0DB9 FD 71 7F FD 2B
        ldd  [iy+127],d         ; 0DBE FD 72 7F FD 2B
        ldd  [iy+127],e         ; 0DC3 FD 73 7F FD 2B
        ldd  [iy+127],h         ; 0DC8 FD 74 7F FD 2B
        ldd  [iy+127],l         ; 0DCD FD 75 7F FD 2B
        ldd  [iy],255           ; 0DD2 FD 36 00 FF FD 2B
        ldd  [iy],a             ; 0DD8 FD 77 00 FD 2B
        ldd  [iy],b             ; 0DDD FD 70 00 FD 2B
        ldd  [iy],c             ; 0DE2 FD 71 00 FD 2B
        ldd  [iy],d             ; 0DE7 FD 72 00 FD 2B
        ldd  [iy],e             ; 0DEC FD 73 00 FD 2B
        ldd  [iy],h             ; 0DF1 FD 74 00 FD 2B
        ldd  [iy],l             ; 0DF6 FD 75 00 FD 2B
        ldd  a,(bc)             ; 0DFB 0A 0B
        ldd  a,(de)             ; 0DFD 1A 1B
        ldd  a,(hl)             ; 0DFF 7E 2B
        ldd  a,(ix)             ; 0E01 DD 7E 00 DD 2B
        ldd  a,(ix+127)         ; 0E06 DD 7E 7F DD 2B
        ldd  a,(ix+127)         ; 0E0B DD 7E 7F DD 2B
        ldd  a,(iy)             ; 0E10 FD 7E 00 FD 2B
        ldd  a,(iy+127)         ; 0E15 FD 7E 7F FD 2B
        ldd  a,(iy+127)         ; 0E1A FD 7E 7F FD 2B
        ldd  a,[bc]             ; 0E1F 0A 0B
        ldd  a,[de]             ; 0E21 1A 1B
        ldd  a,[hl]             ; 0E23 7E 2B
        ldd  a,[ix+127]         ; 0E25 DD 7E 7F DD 2B
        ldd  a,[ix+127]         ; 0E2A DD 7E 7F DD 2B
        ldd  a,[ix]             ; 0E2F DD 7E 00 DD 2B
        ldd  a,[iy+127]         ; 0E34 FD 7E 7F FD 2B
        ldd  a,[iy+127]         ; 0E39 FD 7E 7F FD 2B
        ldd  a,[iy]             ; 0E3E FD 7E 00 FD 2B
        ldd  b,(hl)             ; 0E43 46 2B
        ldd  b,(ix)             ; 0E45 DD 46 00 DD 2B
        ldd  b,(ix+127)         ; 0E4A DD 46 7F DD 2B
        ldd  b,(ix+127)         ; 0E4F DD 46 7F DD 2B
        ldd  b,(iy)             ; 0E54 FD 46 00 FD 2B
        ldd  b,(iy+127)         ; 0E59 FD 46 7F FD 2B
        ldd  b,(iy+127)         ; 0E5E FD 46 7F FD 2B
        ldd  b,[hl]             ; 0E63 46 2B
        ldd  b,[ix+127]         ; 0E65 DD 46 7F DD 2B
        ldd  b,[ix+127]         ; 0E6A DD 46 7F DD 2B
        ldd  b,[ix]             ; 0E6F DD 46 00 DD 2B
        ldd  b,[iy+127]         ; 0E74 FD 46 7F FD 2B
        ldd  b,[iy+127]         ; 0E79 FD 46 7F FD 2B
        ldd  b,[iy]             ; 0E7E FD 46 00 FD 2B
        ldd  c,(hl)             ; 0E83 4E 2B
        ldd  c,(ix)             ; 0E85 DD 4E 00 DD 2B
        ldd  c,(ix+127)         ; 0E8A DD 4E 7F DD 2B
        ldd  c,(ix+127)         ; 0E8F DD 4E 7F DD 2B
        ldd  c,(iy)             ; 0E94 FD 4E 00 FD 2B
        ldd  c,(iy+127)         ; 0E99 FD 4E 7F FD 2B
        ldd  c,(iy+127)         ; 0E9E FD 4E 7F FD 2B
        ldd  c,[hl]             ; 0EA3 4E 2B
        ldd  c,[ix+127]         ; 0EA5 DD 4E 7F DD 2B
        ldd  c,[ix+127]         ; 0EAA DD 4E 7F DD 2B
        ldd  c,[ix]             ; 0EAF DD 4E 00 DD 2B
        ldd  c,[iy+127]         ; 0EB4 FD 4E 7F FD 2B
        ldd  c,[iy+127]         ; 0EB9 FD 4E 7F FD 2B
        ldd  c,[iy]             ; 0EBE FD 4E 00 FD 2B
        ldd  d,(hl)             ; 0EC3 56 2B
        ldd  d,(ix)             ; 0EC5 DD 56 00 DD 2B
        ldd  d,(ix+127)         ; 0ECA DD 56 7F DD 2B
        ldd  d,(ix+127)         ; 0ECF DD 56 7F DD 2B
        ldd  d,(iy)             ; 0ED4 FD 56 00 FD 2B
        ldd  d,(iy+127)         ; 0ED9 FD 56 7F FD 2B
        ldd  d,(iy+127)         ; 0EDE FD 56 7F FD 2B
        ldd  d,[hl]             ; 0EE3 56 2B
        ldd  d,[ix+127]         ; 0EE5 DD 56 7F DD 2B
        ldd  d,[ix+127]         ; 0EEA DD 56 7F DD 2B
        ldd  d,[ix]             ; 0EEF DD 56 00 DD 2B
        ldd  d,[iy+127]         ; 0EF4 FD 56 7F FD 2B
        ldd  d,[iy+127]         ; 0EF9 FD 56 7F FD 2B
        ldd  d,[iy]             ; 0EFE FD 56 00 FD 2B
        ldd  e,(hl)             ; 0F03 5E 2B
        ldd  e,(ix)             ; 0F05 DD 5E 00 DD 2B
        ldd  e,(ix+127)         ; 0F0A DD 5E 7F DD 2B
        ldd  e,(ix+127)         ; 0F0F DD 5E 7F DD 2B
        ldd  e,(iy)             ; 0F14 FD 5E 00 FD 2B
        ldd  e,(iy+127)         ; 0F19 FD 5E 7F FD 2B
        ldd  e,(iy+127)         ; 0F1E FD 5E 7F FD 2B
        ldd  e,[hl]             ; 0F23 5E 2B
        ldd  e,[ix+127]         ; 0F25 DD 5E 7F DD 2B
        ldd  e,[ix+127]         ; 0F2A DD 5E 7F DD 2B
        ldd  e,[ix]             ; 0F2F DD 5E 00 DD 2B
        ldd  e,[iy+127]         ; 0F34 FD 5E 7F FD 2B
        ldd  e,[iy+127]         ; 0F39 FD 5E 7F FD 2B
        ldd  e,[iy]             ; 0F3E FD 5E 00 FD 2B
        ldd  h,(hl)             ; 0F43 66 2B
        ldd  h,(ix)             ; 0F45 DD 66 00 DD 2B
        ldd  h,(ix+127)         ; 0F4A DD 66 7F DD 2B
        ldd  h,(ix+127)         ; 0F4F DD 66 7F DD 2B
        ldd  h,(iy)             ; 0F54 FD 66 00 FD 2B
        ldd  h,(iy+127)         ; 0F59 FD 66 7F FD 2B
        ldd  h,(iy+127)         ; 0F5E FD 66 7F FD 2B
        ldd  h,[hl]             ; 0F63 66 2B
        ldd  h,[ix+127]         ; 0F65 DD 66 7F DD 2B
        ldd  h,[ix+127]         ; 0F6A DD 66 7F DD 2B
        ldd  h,[ix]             ; 0F6F DD 66 00 DD 2B
        ldd  h,[iy+127]         ; 0F74 FD 66 7F FD 2B
        ldd  h,[iy+127]         ; 0F79 FD 66 7F FD 2B
        ldd  h,[iy]             ; 0F7E FD 66 00 FD 2B
        ldd  l,(hl)             ; 0F83 6E 2B
        ldd  l,(ix)             ; 0F85 DD 6E 00 DD 2B
        ldd  l,(ix+127)         ; 0F8A DD 6E 7F DD 2B
        ldd  l,(ix+127)         ; 0F8F DD 6E 7F DD 2B
        ldd  l,(iy)             ; 0F94 FD 6E 00 FD 2B
        ldd  l,(iy+127)         ; 0F99 FD 6E 7F FD 2B
        ldd  l,(iy+127)         ; 0F9E FD 6E 7F FD 2B
        ldd  l,[hl]             ; 0FA3 6E 2B
        ldd  l,[ix+127]         ; 0FA5 DD 6E 7F DD 2B
        ldd  l,[ix+127]         ; 0FAA DD 6E 7F DD 2B
        ldd  l,[ix]             ; 0FAF DD 6E 00 DD 2B
        ldd  l,[iy+127]         ; 0FB4 FD 6E 7F FD 2B
        ldd  l,[iy+127]         ; 0FB9 FD 6E 7F FD 2B
        ldd  l,[iy]             ; 0FBE FD 6E 00 FD 2B
        lddr                    ; 0FC3 ED B8
        LDDR                    ; 0FC5 ED B8
        ldi                     ; 0FC7 ED A0
        LDI                     ; 0FC9 ED A0
        ldi  (bc),a             ; 0FCB 02 03
        ldi  (de),a             ; 0FCD 12 13
        ldi  (hl),255           ; 0FCF 36 FF 23
        ldi  (hl),a             ; 0FD2 77 23
        ldi  (hl),b             ; 0FD4 70 23
        ldi  (hl),bc            ; 0FD6 71 23 70 23
        ldi  (hl),c             ; 0FDA 71 23
        ldi  (hl),d             ; 0FDC 72 23
        ldi  (hl),de            ; 0FDE 73 23 72 23
        ldi  (hl),e             ; 0FE2 73 23
        ldi  (hl),h             ; 0FE4 74 23
        ldi  (hl),l             ; 0FE6 75 23
        ldi  (ix),255           ; 0FE8 DD 36 00 FF DD 23
        ldi  (ix),a             ; 0FEE DD 77 00 DD 23
        ldi  (ix),b             ; 0FF3 DD 70 00 DD 23
        ldi  (ix),bc            ; 0FF8 DD 71 00 DD 23 DD 70 00 DD 23
        ldi  (ix),c             ; 1002 DD 71 00 DD 23
        ldi  (ix),d             ; 1007 DD 72 00 DD 23
        ldi  (ix),de            ; 100C DD 73 00 DD 23 DD 72 00 DD 23
        ldi  (ix),e             ; 1016 DD 73 00 DD 23
        ldi  (ix),h             ; 101B DD 74 00 DD 23
        ldi  (ix),hl            ; 1020 DD 75 00 DD 23 DD 74 00 DD 23
        ldi  (ix),l             ; 102A DD 75 00 DD 23
        ldi  (ix+127),255       ; 102F DD 36 7F FF DD 23
        ldi  (ix+127),a         ; 1035 DD 77 7F DD 23
        ldi  (ix+127),b         ; 103A DD 70 7F DD 23
        ldi  (ix+126),bc        ; 103F DD 71 7E DD 23 DD 70 7E DD 23
        ldi  (ix+127),c         ; 1049 DD 71 7F DD 23
        ldi  (ix+127),d         ; 104E DD 72 7F DD 23
        ldi  (ix+126),de        ; 1053 DD 73 7E DD 23 DD 72 7E DD 23
        ldi  (ix+127),e         ; 105D DD 73 7F DD 23
        ldi  (ix+127),h         ; 1062 DD 74 7F DD 23
        ldi  (ix+126),hl        ; 1067 DD 75 7E DD 23 DD 74 7E DD 23
        ldi  (ix+127),l         ; 1071 DD 75 7F DD 23
        ldi  (ix+127),255       ; 1076 DD 36 7F FF DD 23
        ldi  (ix+127),a         ; 107C DD 77 7F DD 23
        ldi  (ix+127),b         ; 1081 DD 70 7F DD 23
        ldi  (ix+126),bc        ; 1086 DD 71 7E DD 23 DD 70 7E DD 23
        ldi  (ix+127),c         ; 1090 DD 71 7F DD 23
        ldi  (ix+127),d         ; 1095 DD 72 7F DD 23
        ldi  (ix+126),de        ; 109A DD 73 7E DD 23 DD 72 7E DD 23
        ldi  (ix+127),e         ; 10A4 DD 73 7F DD 23
        ldi  (ix+127),h         ; 10A9 DD 74 7F DD 23
        ldi  (ix+126),hl        ; 10AE DD 75 7E DD 23 DD 74 7E DD 23
        ldi  (ix+127),l         ; 10B8 DD 75 7F DD 23
        ldi  (iy),255           ; 10BD FD 36 00 FF FD 23
        ldi  (iy),a             ; 10C3 FD 77 00 FD 23
        ldi  (iy),b             ; 10C8 FD 70 00 FD 23
        ldi  (iy),bc            ; 10CD FD 71 00 FD 23 FD 70 00 FD 23
        ldi  (iy),c             ; 10D7 FD 71 00 FD 23
        ldi  (iy),d             ; 10DC FD 72 00 FD 23
        ldi  (iy),de            ; 10E1 FD 73 00 FD 23 FD 72 00 FD 23
        ldi  (iy),e             ; 10EB FD 73 00 FD 23
        ldi  (iy),h             ; 10F0 FD 74 00 FD 23
        ldi  (iy),hl            ; 10F5 FD 75 00 FD 23 FD 74 00 FD 23
        ldi  (iy),l             ; 10FF FD 75 00 FD 23
        ldi  (iy+127),255       ; 1104 FD 36 7F FF FD 23
        ldi  (iy+127),a         ; 110A FD 77 7F FD 23
        ldi  (iy+127),b         ; 110F FD 70 7F FD 23
        ldi  (iy+126),bc        ; 1114 FD 71 7E FD 23 FD 70 7E FD 23
        ldi  (iy+127),c         ; 111E FD 71 7F FD 23
        ldi  (iy+127),d         ; 1123 FD 72 7F FD 23
        ldi  (iy+126),de        ; 1128 FD 73 7E FD 23 FD 72 7E FD 23
        ldi  (iy+127),e         ; 1132 FD 73 7F FD 23
        ldi  (iy+127),h         ; 1137 FD 74 7F FD 23
        ldi  (iy+126),hl        ; 113C FD 75 7E FD 23 FD 74 7E FD 23
        ldi  (iy+127),l         ; 1146 FD 75 7F FD 23
        ldi  (iy+127),255       ; 114B FD 36 7F FF FD 23
        ldi  (iy+127),a         ; 1151 FD 77 7F FD 23
        ldi  (iy+127),b         ; 1156 FD 70 7F FD 23
        ldi  (iy+126),bc        ; 115B FD 71 7E FD 23 FD 70 7E FD 23
        ldi  (iy+127),c         ; 1165 FD 71 7F FD 23
        ldi  (iy+127),d         ; 116A FD 72 7F FD 23
        ldi  (iy+126),de        ; 116F FD 73 7E FD 23 FD 72 7E FD 23
        ldi  (iy+127),e         ; 1179 FD 73 7F FD 23
        ldi  (iy+127),h         ; 117E FD 74 7F FD 23
        ldi  (iy+126),hl        ; 1183 FD 75 7E FD 23 FD 74 7E FD 23
        ldi  (iy+127),l         ; 118D FD 75 7F FD 23
        ldi  [bc],a             ; 1192 02 03
        ldi  [de],a             ; 1194 12 13
        ldi  [hl],255           ; 1196 36 FF 23
        ldi  [hl],a             ; 1199 77 23
        ldi  [hl],b             ; 119B 70 23
        ldi  [hl],bc            ; 119D 71 23 70 23
        ldi  [hl],c             ; 11A1 71 23
        ldi  [hl],d             ; 11A3 72 23
        ldi  [hl],de            ; 11A5 73 23 72 23
        ldi  [hl],e             ; 11A9 73 23
        ldi  [hl],h             ; 11AB 74 23
        ldi  [hl],l             ; 11AD 75 23
        ldi  [ix+127],255       ; 11AF DD 36 7F FF DD 23
        ldi  [ix+127],a         ; 11B5 DD 77 7F DD 23
        ldi  [ix+127],b         ; 11BA DD 70 7F DD 23
        ldi  [ix+126],bc        ; 11BF DD 71 7E DD 23 DD 70 7E DD 23
        ldi  [ix+127],c         ; 11C9 DD 71 7F DD 23
        ldi  [ix+127],d         ; 11CE DD 72 7F DD 23
        ldi  [ix+126],de        ; 11D3 DD 73 7E DD 23 DD 72 7E DD 23
        ldi  [ix+127],e         ; 11DD DD 73 7F DD 23
        ldi  [ix+127],h         ; 11E2 DD 74 7F DD 23
        ldi  [ix+126],hl        ; 11E7 DD 75 7E DD 23 DD 74 7E DD 23
        ldi  [ix+127],l         ; 11F1 DD 75 7F DD 23
        ldi  [ix+127],255       ; 11F6 DD 36 7F FF DD 23
        ldi  [ix+127],a         ; 11FC DD 77 7F DD 23
        ldi  [ix+127],b         ; 1201 DD 70 7F DD 23
        ldi  [ix+126],bc        ; 1206 DD 71 7E DD 23 DD 70 7E DD 23
        ldi  [ix+127],c         ; 1210 DD 71 7F DD 23
        ldi  [ix+127],d         ; 1215 DD 72 7F DD 23
        ldi  [ix+126],de        ; 121A DD 73 7E DD 23 DD 72 7E DD 23
        ldi  [ix+127],e         ; 1224 DD 73 7F DD 23
        ldi  [ix+127],h         ; 1229 DD 74 7F DD 23
        ldi  [ix+126],hl        ; 122E DD 75 7E DD 23 DD 74 7E DD 23
        ldi  [ix+127],l         ; 1238 DD 75 7F DD 23
        ldi  [ix],255           ; 123D DD 36 00 FF DD 23
        ldi  [ix],a             ; 1243 DD 77 00 DD 23
        ldi  [ix],b             ; 1248 DD 70 00 DD 23
        ldi  [ix],bc            ; 124D DD 71 00 DD 23 DD 70 00 DD 23
        ldi  [ix],c             ; 1257 DD 71 00 DD 23
        ldi  [ix],d             ; 125C DD 72 00 DD 23
        ldi  [ix],de            ; 1261 DD 73 00 DD 23 DD 72 00 DD 23
        ldi  [ix],e             ; 126B DD 73 00 DD 23
        ldi  [ix],h             ; 1270 DD 74 00 DD 23
        ldi  [ix],hl            ; 1275 DD 75 00 DD 23 DD 74 00 DD 23
        ldi  [ix],l             ; 127F DD 75 00 DD 23
        ldi  [iy+127],255       ; 1284 FD 36 7F FF FD 23
        ldi  [iy+127],a         ; 128A FD 77 7F FD 23
        ldi  [iy+127],b         ; 128F FD 70 7F FD 23
        ldi  [iy+126],bc        ; 1294 FD 71 7E FD 23 FD 70 7E FD 23
        ldi  [iy+127],c         ; 129E FD 71 7F FD 23
        ldi  [iy+127],d         ; 12A3 FD 72 7F FD 23
        ldi  [iy+126],de        ; 12A8 FD 73 7E FD 23 FD 72 7E FD 23
        ldi  [iy+127],e         ; 12B2 FD 73 7F FD 23
        ldi  [iy+127],h         ; 12B7 FD 74 7F FD 23
        ldi  [iy+126],hl        ; 12BC FD 75 7E FD 23 FD 74 7E FD 23
        ldi  [iy+127],l         ; 12C6 FD 75 7F FD 23
        ldi  [iy+127],255       ; 12CB FD 36 7F FF FD 23
        ldi  [iy+127],a         ; 12D1 FD 77 7F FD 23
        ldi  [iy+127],b         ; 12D6 FD 70 7F FD 23
        ldi  [iy+126],bc        ; 12DB FD 71 7E FD 23 FD 70 7E FD 23
        ldi  [iy+127],c         ; 12E5 FD 71 7F FD 23
        ldi  [iy+127],d         ; 12EA FD 72 7F FD 23
        ldi  [iy+126],de        ; 12EF FD 73 7E FD 23 FD 72 7E FD 23
        ldi  [iy+127],e         ; 12F9 FD 73 7F FD 23
        ldi  [iy+127],h         ; 12FE FD 74 7F FD 23
        ldi  [iy+126],hl        ; 1303 FD 75 7E FD 23 FD 74 7E FD 23
        ldi  [iy+127],l         ; 130D FD 75 7F FD 23
        ldi  [iy],255           ; 1312 FD 36 00 FF FD 23
        ldi  [iy],a             ; 1318 FD 77 00 FD 23
        ldi  [iy],b             ; 131D FD 70 00 FD 23
        ldi  [iy],bc            ; 1322 FD 71 00 FD 23 FD 70 00 FD 23
        ldi  [iy],c             ; 132C FD 71 00 FD 23
        ldi  [iy],d             ; 1331 FD 72 00 FD 23
        ldi  [iy],de            ; 1336 FD 73 00 FD 23 FD 72 00 FD 23
        ldi  [iy],e             ; 1340 FD 73 00 FD 23
        ldi  [iy],h             ; 1345 FD 74 00 FD 23
        ldi  [iy],hl            ; 134A FD 75 00 FD 23 FD 74 00 FD 23
        ldi  [iy],l             ; 1354 FD 75 00 FD 23
        ldi  a,(bc)             ; 1359 0A 03
        ldi  a,(de)             ; 135B 1A 13
        ldi  a,(hl)             ; 135D 7E 23
        ldi  a,(ix)             ; 135F DD 7E 00 DD 23
        ldi  a,(ix+127)         ; 1364 DD 7E 7F DD 23
        ldi  a,(ix+127)         ; 1369 DD 7E 7F DD 23
        ldi  a,(iy)             ; 136E FD 7E 00 FD 23
        ldi  a,(iy+127)         ; 1373 FD 7E 7F FD 23
        ldi  a,(iy+127)         ; 1378 FD 7E 7F FD 23
        ldi  a,[bc]             ; 137D 0A 03
        ldi  a,[de]             ; 137F 1A 13
        ldi  a,[hl]             ; 1381 7E 23
        ldi  a,[ix+127]         ; 1383 DD 7E 7F DD 23
        ldi  a,[ix+127]         ; 1388 DD 7E 7F DD 23
        ldi  a,[ix]             ; 138D DD 7E 00 DD 23
        ldi  a,[iy+127]         ; 1392 FD 7E 7F FD 23
        ldi  a,[iy+127]         ; 1397 FD 7E 7F FD 23
        ldi  a,[iy]             ; 139C FD 7E 00 FD 23
        ldi  b,(hl)             ; 13A1 46 23
        ldi  b,(ix)             ; 13A3 DD 46 00 DD 23
        ldi  b,(ix+127)         ; 13A8 DD 46 7F DD 23
        ldi  b,(ix+127)         ; 13AD DD 46 7F DD 23
        ldi  b,(iy)             ; 13B2 FD 46 00 FD 23
        ldi  b,(iy+127)         ; 13B7 FD 46 7F FD 23
        ldi  b,(iy+127)         ; 13BC FD 46 7F FD 23
        ldi  b,[hl]             ; 13C1 46 23
        ldi  b,[ix+127]         ; 13C3 DD 46 7F DD 23
        ldi  b,[ix+127]         ; 13C8 DD 46 7F DD 23
        ldi  b,[ix]             ; 13CD DD 46 00 DD 23
        ldi  b,[iy+127]         ; 13D2 FD 46 7F FD 23
        ldi  b,[iy+127]         ; 13D7 FD 46 7F FD 23
        ldi  b,[iy]             ; 13DC FD 46 00 FD 23
        ldi  bc,(hl)            ; 13E1 4E 23 46 23
        ldi  bc,(ix)            ; 13E5 DD 4E 00 DD 23 DD 46 00 DD 23
        ldi  bc,(ix+126)        ; 13EF DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,(ix+126)        ; 13F9 DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,(iy)            ; 1403 FD 4E 00 FD 23 FD 46 00 FD 23
        ldi  bc,(iy+126)        ; 140D FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  bc,(iy+126)        ; 1417 FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  bc,[hl]            ; 1421 4E 23 46 23
        ldi  bc,[ix+126]        ; 1425 DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,[ix+126]        ; 142F DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,[ix]            ; 1439 DD 4E 00 DD 23 DD 46 00 DD 23
        ldi  bc,[iy+126]        ; 1443 FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  bc,[iy+126]        ; 144D FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  bc,[iy]            ; 1457 FD 4E 00 FD 23 FD 46 00 FD 23
        ldi  c,(hl)             ; 1461 4E 23
        ldi  c,(ix)             ; 1463 DD 4E 00 DD 23
        ldi  c,(ix+127)         ; 1468 DD 4E 7F DD 23
        ldi  c,(ix+127)         ; 146D DD 4E 7F DD 23
        ldi  c,(iy)             ; 1472 FD 4E 00 FD 23
        ldi  c,(iy+127)         ; 1477 FD 4E 7F FD 23
        ldi  c,(iy+127)         ; 147C FD 4E 7F FD 23
        ldi  c,[hl]             ; 1481 4E 23
        ldi  c,[ix+127]         ; 1483 DD 4E 7F DD 23
        ldi  c,[ix+127]         ; 1488 DD 4E 7F DD 23
        ldi  c,[ix]             ; 148D DD 4E 00 DD 23
        ldi  c,[iy+127]         ; 1492 FD 4E 7F FD 23
        ldi  c,[iy+127]         ; 1497 FD 4E 7F FD 23
        ldi  c,[iy]             ; 149C FD 4E 00 FD 23
        ldi  d,(hl)             ; 14A1 56 23
        ldi  d,(ix)             ; 14A3 DD 56 00 DD 23
        ldi  d,(ix+127)         ; 14A8 DD 56 7F DD 23
        ldi  d,(ix+127)         ; 14AD DD 56 7F DD 23
        ldi  d,(iy)             ; 14B2 FD 56 00 FD 23
        ldi  d,(iy+127)         ; 14B7 FD 56 7F FD 23
        ldi  d,(iy+127)         ; 14BC FD 56 7F FD 23
        ldi  d,[hl]             ; 14C1 56 23
        ldi  d,[ix+127]         ; 14C3 DD 56 7F DD 23
        ldi  d,[ix+127]         ; 14C8 DD 56 7F DD 23
        ldi  d,[ix]             ; 14CD DD 56 00 DD 23
        ldi  d,[iy+127]         ; 14D2 FD 56 7F FD 23
        ldi  d,[iy+127]         ; 14D7 FD 56 7F FD 23
        ldi  d,[iy]             ; 14DC FD 56 00 FD 23
        ldi  de,(hl)            ; 14E1 5E 23 56 23
        ldi  de,(ix)            ; 14E5 DD 5E 00 DD 23 DD 56 00 DD 23
        ldi  de,(ix+126)        ; 14EF DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,(ix+126)        ; 14F9 DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,(iy)            ; 1503 FD 5E 00 FD 23 FD 56 00 FD 23
        ldi  de,(iy+126)        ; 150D FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  de,(iy+126)        ; 1517 FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  de,[hl]            ; 1521 5E 23 56 23
        ldi  de,[ix+126]        ; 1525 DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,[ix+126]        ; 152F DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,[ix]            ; 1539 DD 5E 00 DD 23 DD 56 00 DD 23
        ldi  de,[iy+126]        ; 1543 FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  de,[iy+126]        ; 154D FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  de,[iy]            ; 1557 FD 5E 00 FD 23 FD 56 00 FD 23
        ldi  e,(hl)             ; 1561 5E 23
        ldi  e,(ix)             ; 1563 DD 5E 00 DD 23
        ldi  e,(ix+127)         ; 1568 DD 5E 7F DD 23
        ldi  e,(ix+127)         ; 156D DD 5E 7F DD 23
        ldi  e,(iy)             ; 1572 FD 5E 00 FD 23
        ldi  e,(iy+127)         ; 1577 FD 5E 7F FD 23
        ldi  e,(iy+127)         ; 157C FD 5E 7F FD 23
        ldi  e,[hl]             ; 1581 5E 23
        ldi  e,[ix+127]         ; 1583 DD 5E 7F DD 23
        ldi  e,[ix+127]         ; 1588 DD 5E 7F DD 23
        ldi  e,[ix]             ; 158D DD 5E 00 DD 23
        ldi  e,[iy+127]         ; 1592 FD 5E 7F FD 23
        ldi  e,[iy+127]         ; 1597 FD 5E 7F FD 23
        ldi  e,[iy]             ; 159C FD 5E 00 FD 23
        ldi  h,(hl)             ; 15A1 66 23
        ldi  h,(ix)             ; 15A3 DD 66 00 DD 23
        ldi  h,(ix+127)         ; 15A8 DD 66 7F DD 23
        ldi  h,(ix+127)         ; 15AD DD 66 7F DD 23
        ldi  h,(iy)             ; 15B2 FD 66 00 FD 23
        ldi  h,(iy+127)         ; 15B7 FD 66 7F FD 23
        ldi  h,(iy+127)         ; 15BC FD 66 7F FD 23
        ldi  h,[hl]             ; 15C1 66 23
        ldi  h,[ix+127]         ; 15C3 DD 66 7F DD 23
        ldi  h,[ix+127]         ; 15C8 DD 66 7F DD 23
        ldi  h,[ix]             ; 15CD DD 66 00 DD 23
        ldi  h,[iy+127]         ; 15D2 FD 66 7F FD 23
        ldi  h,[iy+127]         ; 15D7 FD 66 7F FD 23
        ldi  h,[iy]             ; 15DC FD 66 00 FD 23
        ldi  hl,(ix)            ; 15E1 DD 6E 00 DD 23 DD 66 00 DD 23
        ldi  hl,(ix+126)        ; 15EB DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,(ix+126)        ; 15F5 DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,(iy)            ; 15FF FD 6E 00 FD 23 FD 66 00 FD 23
        ldi  hl,(iy+126)        ; 1609 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  hl,(iy+126)        ; 1613 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  hl,[ix+126]        ; 161D DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,[ix+126]        ; 1627 DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,[ix]            ; 1631 DD 6E 00 DD 23 DD 66 00 DD 23
        ldi  hl,[iy+126]        ; 163B FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  hl,[iy+126]        ; 1645 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  hl,[iy]            ; 164F FD 6E 00 FD 23 FD 66 00 FD 23
        ldi  l,(hl)             ; 1659 6E 23
        ldi  l,(ix)             ; 165B DD 6E 00 DD 23
        ldi  l,(ix+127)         ; 1660 DD 6E 7F DD 23
        ldi  l,(ix+127)         ; 1665 DD 6E 7F DD 23
        ldi  l,(iy)             ; 166A FD 6E 00 FD 23
        ldi  l,(iy+127)         ; 166F FD 6E 7F FD 23
        ldi  l,(iy+127)         ; 1674 FD 6E 7F FD 23
        ldi  l,[hl]             ; 1679 6E 23
        ldi  l,[ix+127]         ; 167B DD 6E 7F DD 23
        ldi  l,[ix+127]         ; 1680 DD 6E 7F DD 23
        ldi  l,[ix]             ; 1685 DD 6E 00 DD 23
        ldi  l,[iy+127]         ; 168A FD 6E 7F FD 23
        ldi  l,[iy+127]         ; 168F FD 6E 7F FD 23
        ldi  l,[iy]             ; 1694 FD 6E 00 FD 23
        ldir                    ; 1699 ED B0
        LDIR                    ; 169B ED B0
        neg                     ; 169D ED 44
        NEG                     ; 169F ED 44
        nop                     ; 16A1 00
        NOP                     ; 16A2 00
        or   (hl)               ; 16A3 B6
        OR   (HL)               ; 16A4 B6
        or   (ix)               ; 16A5 DD B6 00
        or   (ix+127)           ; 16A8 DD B6 7F
        or   (ix+127)           ; 16AB DD B6 7F
        or   (iy)               ; 16AE FD B6 00
        or   (iy+127)           ; 16B1 FD B6 7F
        or   (iy+127)           ; 16B4 FD B6 7F
        or   255                ; 16B7 F6 FF
        or   [hl]               ; 16B9 B6
        or   [ix+127]           ; 16BA DD B6 7F
        or   [ix+127]           ; 16BD DD B6 7F
        or   [ix]               ; 16C0 DD B6 00
        or   [iy+127]           ; 16C3 FD B6 7F
        or   [iy+127]           ; 16C6 FD B6 7F
        or   [iy]               ; 16C9 FD B6 00
        or   a                  ; 16CC B7
        or   b                  ; 16CD B0
        or   c                  ; 16CE B1
        or   d                  ; 16CF B2
        or   e                  ; 16D0 B3
        or   h                  ; 16D1 B4
        or   hx                 ; 16D2 DD B4
        or   hy                 ; 16D4 FD B4
        or   ixh                ; 16D6 DD B4
        or   ixl                ; 16D8 DD B5
        or   iyh                ; 16DA FD B4
        or   iyl                ; 16DC FD B5
        or   l                  ; 16DE B5
        or   lx                 ; 16DF DD B5
        or   ly                 ; 16E1 FD B5
        or   xh                 ; 16E3 DD B4
        or   xl                 ; 16E5 DD B5
        or   yh                 ; 16E7 FD B4
        or   yl                 ; 16E9 FD B5
        otdr                    ; 16EB ED BB
        OTDR                    ; 16ED ED BB
        otir                    ; 16EF ED B3
        OTIR                    ; 16F1 ED B3
        out  (255),a            ; 16F3 D3 FF
        OUT  (255),A            ; 16F5 D3 FF
        out  (c),0              ; 16F7 ED 71
        out  (c),a              ; 16F9 ED 79
        out  (c),b              ; 16FB ED 41
        out  (c),c              ; 16FD ED 49
        out  (c),d              ; 16FF ED 51
        out  (c),e              ; 1701 ED 59
        out  (c),h              ; 1703 ED 61
        out  (c),l              ; 1705 ED 69
        out  [255],a            ; 1707 D3 FF
        out  [c],0              ; 1709 ED 71
        out  [c],a              ; 170B ED 79
        out  [c],b              ; 170D ED 41
        out  [c],c              ; 170F ED 49
        out  [c],d              ; 1711 ED 51
        out  [c],e              ; 1713 ED 59
        out  [c],h              ; 1715 ED 61
        out  [c],l              ; 1717 ED 69
        outd                    ; 1719 ED AB
        OUTD                    ; 171B ED AB
        outi                    ; 171D ED A3
        OUTI                    ; 171F ED A3
        pop  af                 ; 1721 F1
        POP  AF                 ; 1722 F1
        pop  bc                 ; 1723 C1
        pop  de                 ; 1724 D1
        pop  hl                 ; 1725 E1
        pop  ix                 ; 1726 DD E1
        pop  iy                 ; 1728 FD E1
        push af                 ; 172A F5
        PUSH AF                 ; 172B F5
        push bc                 ; 172C C5
        push de                 ; 172D D5
        push hl                 ; 172E E5
        push ix                 ; 172F DD E5
        push iy                 ; 1731 FD E5
        res  0,(hl)             ; 1733 CB 86
        RES  0,(HL)             ; 1735 CB 86
        res  0,(ix)             ; 1737 DD CB 00 86
        res  0,(ix),a           ; 173B DD CB 00 87
        res  0,(ix),b           ; 173F DD CB 00 80
        res  0,(ix),c           ; 1743 DD CB 00 81
        res  0,(ix),d           ; 1747 DD CB 00 82
        res  0,(ix),e           ; 174B DD CB 00 83
        res  0,(ix),h           ; 174F DD CB 00 84
        res  0,(ix),l           ; 1753 DD CB 00 85
        res  0,(ix+127)         ; 1757 DD CB 7F 86
        res  0,(ix+127),a       ; 175B DD CB 7F 87
        res  0,(ix+127),b       ; 175F DD CB 7F 80
        res  0,(ix+127),c       ; 1763 DD CB 7F 81
        res  0,(ix+127),d       ; 1767 DD CB 7F 82
        res  0,(ix+127),e       ; 176B DD CB 7F 83
        res  0,(ix+127),h       ; 176F DD CB 7F 84
        res  0,(ix+127),l       ; 1773 DD CB 7F 85
        res  0,(ix+127)         ; 1777 DD CB 7F 86
        res  0,(ix+127),a       ; 177B DD CB 7F 87
        res  0,(ix+127),b       ; 177F DD CB 7F 80
        res  0,(ix+127),c       ; 1783 DD CB 7F 81
        res  0,(ix+127),d       ; 1787 DD CB 7F 82
        res  0,(ix+127),e       ; 178B DD CB 7F 83
        res  0,(ix+127),h       ; 178F DD CB 7F 84
        res  0,(ix+127),l       ; 1793 DD CB 7F 85
        res  0,(iy)             ; 1797 FD CB 00 86
        res  0,(iy),a           ; 179B FD CB 00 87
        res  0,(iy),b           ; 179F FD CB 00 80
        res  0,(iy),c           ; 17A3 FD CB 00 81
        res  0,(iy),d           ; 17A7 FD CB 00 82
        res  0,(iy),e           ; 17AB FD CB 00 83
        res  0,(iy),h           ; 17AF FD CB 00 84
        res  0,(iy),l           ; 17B3 FD CB 00 85
        res  0,(iy+127)         ; 17B7 FD CB 7F 86
        res  0,(iy+127),a       ; 17BB FD CB 7F 87
        res  0,(iy+127),b       ; 17BF FD CB 7F 80
        res  0,(iy+127),c       ; 17C3 FD CB 7F 81
        res  0,(iy+127),d       ; 17C7 FD CB 7F 82
        res  0,(iy+127),e       ; 17CB FD CB 7F 83
        res  0,(iy+127),h       ; 17CF FD CB 7F 84
        res  0,(iy+127),l       ; 17D3 FD CB 7F 85
        res  0,(iy+127)         ; 17D7 FD CB 7F 86
        res  0,(iy+127),a       ; 17DB FD CB 7F 87
        res  0,(iy+127),b       ; 17DF FD CB 7F 80
        res  0,(iy+127),c       ; 17E3 FD CB 7F 81
        res  0,(iy+127),d       ; 17E7 FD CB 7F 82
        res  0,(iy+127),e       ; 17EB FD CB 7F 83
        res  0,(iy+127),h       ; 17EF FD CB 7F 84
        res  0,(iy+127),l       ; 17F3 FD CB 7F 85
        res  0,[hl]             ; 17F7 CB 86
        res  0,[ix+127]         ; 17F9 DD CB 7F 86
        res  0,[ix+127],a       ; 17FD DD CB 7F 87
        res  0,[ix+127],b       ; 1801 DD CB 7F 80
        res  0,[ix+127],c       ; 1805 DD CB 7F 81
        res  0,[ix+127],d       ; 1809 DD CB 7F 82
        res  0,[ix+127],e       ; 180D DD CB 7F 83
        res  0,[ix+127],h       ; 1811 DD CB 7F 84
        res  0,[ix+127],l       ; 1815 DD CB 7F 85
        res  0,[ix+127]         ; 1819 DD CB 7F 86
        res  0,[ix+127],a       ; 181D DD CB 7F 87
        res  0,[ix+127],b       ; 1821 DD CB 7F 80
        res  0,[ix+127],c       ; 1825 DD CB 7F 81
        res  0,[ix+127],d       ; 1829 DD CB 7F 82
        res  0,[ix+127],e       ; 182D DD CB 7F 83
        res  0,[ix+127],h       ; 1831 DD CB 7F 84
        res  0,[ix+127],l       ; 1835 DD CB 7F 85
        res  0,[ix]             ; 1839 DD CB 00 86
        res  0,[ix],a           ; 183D DD CB 00 87
        res  0,[ix],b           ; 1841 DD CB 00 80
        res  0,[ix],c           ; 1845 DD CB 00 81
        res  0,[ix],d           ; 1849 DD CB 00 82
        res  0,[ix],e           ; 184D DD CB 00 83
        res  0,[ix],h           ; 1851 DD CB 00 84
        res  0,[ix],l           ; 1855 DD CB 00 85
        res  0,[iy+127]         ; 1859 FD CB 7F 86
        res  0,[iy+127],a       ; 185D FD CB 7F 87
        res  0,[iy+127],b       ; 1861 FD CB 7F 80
        res  0,[iy+127],c       ; 1865 FD CB 7F 81
        res  0,[iy+127],d       ; 1869 FD CB 7F 82
        res  0,[iy+127],e       ; 186D FD CB 7F 83
        res  0,[iy+127],h       ; 1871 FD CB 7F 84
        res  0,[iy+127],l       ; 1875 FD CB 7F 85
        res  0,[iy+127]         ; 1879 FD CB 7F 86
        res  0,[iy+127],a       ; 187D FD CB 7F 87
        res  0,[iy+127],b       ; 1881 FD CB 7F 80
        res  0,[iy+127],c       ; 1885 FD CB 7F 81
        res  0,[iy+127],d       ; 1889 FD CB 7F 82
        res  0,[iy+127],e       ; 188D FD CB 7F 83
        res  0,[iy+127],h       ; 1891 FD CB 7F 84
        res  0,[iy+127],l       ; 1895 FD CB 7F 85
        res  0,[iy]             ; 1899 FD CB 00 86
        res  0,[iy],a           ; 189D FD CB 00 87
        res  0,[iy],b           ; 18A1 FD CB 00 80
        res  0,[iy],c           ; 18A5 FD CB 00 81
        res  0,[iy],d           ; 18A9 FD CB 00 82
        res  0,[iy],e           ; 18AD FD CB 00 83
        res  0,[iy],h           ; 18B1 FD CB 00 84
        res  0,[iy],l           ; 18B5 FD CB 00 85
        res  0,a                ; 18B9 CB 87
        res  0,b                ; 18BB CB 80
        res  0,c                ; 18BD CB 81
        res  0,d                ; 18BF CB 82
        res  0,e                ; 18C1 CB 83
        res  0,h                ; 18C3 CB 84
        res  0,l                ; 18C5 CB 85
        res  1,(hl)             ; 18C7 CB 8E
        res  1,(ix)             ; 18C9 DD CB 00 8E
        res  1,(ix),a           ; 18CD DD CB 00 8F
        res  1,(ix),b           ; 18D1 DD CB 00 88
        res  1,(ix),c           ; 18D5 DD CB 00 89
        res  1,(ix),d           ; 18D9 DD CB 00 8A
        res  1,(ix),e           ; 18DD DD CB 00 8B
        res  1,(ix),h           ; 18E1 DD CB 00 8C
        res  1,(ix),l           ; 18E5 DD CB 00 8D
        res  1,(ix+127)         ; 18E9 DD CB 7F 8E
        res  1,(ix+127),a       ; 18ED DD CB 7F 8F
        res  1,(ix+127),b       ; 18F1 DD CB 7F 88
        res  1,(ix+127),c       ; 18F5 DD CB 7F 89
        res  1,(ix+127),d       ; 18F9 DD CB 7F 8A
        res  1,(ix+127),e       ; 18FD DD CB 7F 8B
        res  1,(ix+127),h       ; 1901 DD CB 7F 8C
        res  1,(ix+127),l       ; 1905 DD CB 7F 8D
        res  1,(ix+127)         ; 1909 DD CB 7F 8E
        res  1,(ix+127),a       ; 190D DD CB 7F 8F
        res  1,(ix+127),b       ; 1911 DD CB 7F 88
        res  1,(ix+127),c       ; 1915 DD CB 7F 89
        res  1,(ix+127),d       ; 1919 DD CB 7F 8A
        res  1,(ix+127),e       ; 191D DD CB 7F 8B
        res  1,(ix+127),h       ; 1921 DD CB 7F 8C
        res  1,(ix+127),l       ; 1925 DD CB 7F 8D
        res  1,(iy)             ; 1929 FD CB 00 8E
        res  1,(iy),a           ; 192D FD CB 00 8F
        res  1,(iy),b           ; 1931 FD CB 00 88
        res  1,(iy),c           ; 1935 FD CB 00 89
        res  1,(iy),d           ; 1939 FD CB 00 8A
        res  1,(iy),e           ; 193D FD CB 00 8B
        res  1,(iy),h           ; 1941 FD CB 00 8C
        res  1,(iy),l           ; 1945 FD CB 00 8D
        res  1,(iy+127)         ; 1949 FD CB 7F 8E
        res  1,(iy+127),a       ; 194D FD CB 7F 8F
        res  1,(iy+127),b       ; 1951 FD CB 7F 88
        res  1,(iy+127),c       ; 1955 FD CB 7F 89
        res  1,(iy+127),d       ; 1959 FD CB 7F 8A
        res  1,(iy+127),e       ; 195D FD CB 7F 8B
        res  1,(iy+127),h       ; 1961 FD CB 7F 8C
        res  1,(iy+127),l       ; 1965 FD CB 7F 8D
        res  1,(iy+127)         ; 1969 FD CB 7F 8E
        res  1,(iy+127),a       ; 196D FD CB 7F 8F
        res  1,(iy+127),b       ; 1971 FD CB 7F 88
        res  1,(iy+127),c       ; 1975 FD CB 7F 89
        res  1,(iy+127),d       ; 1979 FD CB 7F 8A
        res  1,(iy+127),e       ; 197D FD CB 7F 8B
        res  1,(iy+127),h       ; 1981 FD CB 7F 8C
        res  1,(iy+127),l       ; 1985 FD CB 7F 8D
        res  1,[hl]             ; 1989 CB 8E
        res  1,[ix+127]         ; 198B DD CB 7F 8E
        res  1,[ix+127],a       ; 198F DD CB 7F 8F
        res  1,[ix+127],b       ; 1993 DD CB 7F 88
        res  1,[ix+127],c       ; 1997 DD CB 7F 89
        res  1,[ix+127],d       ; 199B DD CB 7F 8A
        res  1,[ix+127],e       ; 199F DD CB 7F 8B
        res  1,[ix+127],h       ; 19A3 DD CB 7F 8C
        res  1,[ix+127],l       ; 19A7 DD CB 7F 8D
        res  1,[ix+127]         ; 19AB DD CB 7F 8E
        res  1,[ix+127],a       ; 19AF DD CB 7F 8F
        res  1,[ix+127],b       ; 19B3 DD CB 7F 88
        res  1,[ix+127],c       ; 19B7 DD CB 7F 89
        res  1,[ix+127],d       ; 19BB DD CB 7F 8A
        res  1,[ix+127],e       ; 19BF DD CB 7F 8B
        res  1,[ix+127],h       ; 19C3 DD CB 7F 8C
        res  1,[ix+127],l       ; 19C7 DD CB 7F 8D
        res  1,[ix]             ; 19CB DD CB 00 8E
        res  1,[ix],a           ; 19CF DD CB 00 8F
        res  1,[ix],b           ; 19D3 DD CB 00 88
        res  1,[ix],c           ; 19D7 DD CB 00 89
        res  1,[ix],d           ; 19DB DD CB 00 8A
        res  1,[ix],e           ; 19DF DD CB 00 8B
        res  1,[ix],h           ; 19E3 DD CB 00 8C
        res  1,[ix],l           ; 19E7 DD CB 00 8D
        res  1,[iy+127]         ; 19EB FD CB 7F 8E
        res  1,[iy+127],a       ; 19EF FD CB 7F 8F
        res  1,[iy+127],b       ; 19F3 FD CB 7F 88
        res  1,[iy+127],c       ; 19F7 FD CB 7F 89
        res  1,[iy+127],d       ; 19FB FD CB 7F 8A
        res  1,[iy+127],e       ; 19FF FD CB 7F 8B
        res  1,[iy+127],h       ; 1A03 FD CB 7F 8C
        res  1,[iy+127],l       ; 1A07 FD CB 7F 8D
        res  1,[iy+127]         ; 1A0B FD CB 7F 8E
        res  1,[iy+127],a       ; 1A0F FD CB 7F 8F
        res  1,[iy+127],b       ; 1A13 FD CB 7F 88
        res  1,[iy+127],c       ; 1A17 FD CB 7F 89
        res  1,[iy+127],d       ; 1A1B FD CB 7F 8A
        res  1,[iy+127],e       ; 1A1F FD CB 7F 8B
        res  1,[iy+127],h       ; 1A23 FD CB 7F 8C
        res  1,[iy+127],l       ; 1A27 FD CB 7F 8D
        res  1,[iy]             ; 1A2B FD CB 00 8E
        res  1,[iy],a           ; 1A2F FD CB 00 8F
        res  1,[iy],b           ; 1A33 FD CB 00 88
        res  1,[iy],c           ; 1A37 FD CB 00 89
        res  1,[iy],d           ; 1A3B FD CB 00 8A
        res  1,[iy],e           ; 1A3F FD CB 00 8B
        res  1,[iy],h           ; 1A43 FD CB 00 8C
        res  1,[iy],l           ; 1A47 FD CB 00 8D
        res  1,a                ; 1A4B CB 8F
        res  1,b                ; 1A4D CB 88
        res  1,c                ; 1A4F CB 89
        res  1,d                ; 1A51 CB 8A
        res  1,e                ; 1A53 CB 8B
        res  1,h                ; 1A55 CB 8C
        res  1,l                ; 1A57 CB 8D
        res  2,(hl)             ; 1A59 CB 96
        res  2,(ix)             ; 1A5B DD CB 00 96
        res  2,(ix),a           ; 1A5F DD CB 00 97
        res  2,(ix),b           ; 1A63 DD CB 00 90
        res  2,(ix),c           ; 1A67 DD CB 00 91
        res  2,(ix),d           ; 1A6B DD CB 00 92
        res  2,(ix),e           ; 1A6F DD CB 00 93
        res  2,(ix),h           ; 1A73 DD CB 00 94
        res  2,(ix),l           ; 1A77 DD CB 00 95
        res  2,(ix+127)         ; 1A7B DD CB 7F 96
        res  2,(ix+127),a       ; 1A7F DD CB 7F 97
        res  2,(ix+127),b       ; 1A83 DD CB 7F 90
        res  2,(ix+127),c       ; 1A87 DD CB 7F 91
        res  2,(ix+127),d       ; 1A8B DD CB 7F 92
        res  2,(ix+127),e       ; 1A8F DD CB 7F 93
        res  2,(ix+127),h       ; 1A93 DD CB 7F 94
        res  2,(ix+127),l       ; 1A97 DD CB 7F 95
        res  2,(ix+127)         ; 1A9B DD CB 7F 96
        res  2,(ix+127),a       ; 1A9F DD CB 7F 97
        res  2,(ix+127),b       ; 1AA3 DD CB 7F 90
        res  2,(ix+127),c       ; 1AA7 DD CB 7F 91
        res  2,(ix+127),d       ; 1AAB DD CB 7F 92
        res  2,(ix+127),e       ; 1AAF DD CB 7F 93
        res  2,(ix+127),h       ; 1AB3 DD CB 7F 94
        res  2,(ix+127),l       ; 1AB7 DD CB 7F 95
        res  2,(iy)             ; 1ABB FD CB 00 96
        res  2,(iy),a           ; 1ABF FD CB 00 97
        res  2,(iy),b           ; 1AC3 FD CB 00 90
        res  2,(iy),c           ; 1AC7 FD CB 00 91
        res  2,(iy),d           ; 1ACB FD CB 00 92
        res  2,(iy),e           ; 1ACF FD CB 00 93
        res  2,(iy),h           ; 1AD3 FD CB 00 94
        res  2,(iy),l           ; 1AD7 FD CB 00 95
        res  2,(iy+127)         ; 1ADB FD CB 7F 96
        res  2,(iy+127),a       ; 1ADF FD CB 7F 97
        res  2,(iy+127),b       ; 1AE3 FD CB 7F 90
        res  2,(iy+127),c       ; 1AE7 FD CB 7F 91
        res  2,(iy+127),d       ; 1AEB FD CB 7F 92
        res  2,(iy+127),e       ; 1AEF FD CB 7F 93
        res  2,(iy+127),h       ; 1AF3 FD CB 7F 94
        res  2,(iy+127),l       ; 1AF7 FD CB 7F 95
        res  2,(iy+127)         ; 1AFB FD CB 7F 96
        res  2,(iy+127),a       ; 1AFF FD CB 7F 97
        res  2,(iy+127),b       ; 1B03 FD CB 7F 90
        res  2,(iy+127),c       ; 1B07 FD CB 7F 91
        res  2,(iy+127),d       ; 1B0B FD CB 7F 92
        res  2,(iy+127),e       ; 1B0F FD CB 7F 93
        res  2,(iy+127),h       ; 1B13 FD CB 7F 94
        res  2,(iy+127),l       ; 1B17 FD CB 7F 95
        res  2,[hl]             ; 1B1B CB 96
        res  2,[ix+127]         ; 1B1D DD CB 7F 96
        res  2,[ix+127],a       ; 1B21 DD CB 7F 97
        res  2,[ix+127],b       ; 1B25 DD CB 7F 90
        res  2,[ix+127],c       ; 1B29 DD CB 7F 91
        res  2,[ix+127],d       ; 1B2D DD CB 7F 92
        res  2,[ix+127],e       ; 1B31 DD CB 7F 93
        res  2,[ix+127],h       ; 1B35 DD CB 7F 94
        res  2,[ix+127],l       ; 1B39 DD CB 7F 95
        res  2,[ix+127]         ; 1B3D DD CB 7F 96
        res  2,[ix+127],a       ; 1B41 DD CB 7F 97
        res  2,[ix+127],b       ; 1B45 DD CB 7F 90
        res  2,[ix+127],c       ; 1B49 DD CB 7F 91
        res  2,[ix+127],d       ; 1B4D DD CB 7F 92
        res  2,[ix+127],e       ; 1B51 DD CB 7F 93
        res  2,[ix+127],h       ; 1B55 DD CB 7F 94
        res  2,[ix+127],l       ; 1B59 DD CB 7F 95
        res  2,[ix]             ; 1B5D DD CB 00 96
        res  2,[ix],a           ; 1B61 DD CB 00 97
        res  2,[ix],b           ; 1B65 DD CB 00 90
        res  2,[ix],c           ; 1B69 DD CB 00 91
        res  2,[ix],d           ; 1B6D DD CB 00 92
        res  2,[ix],e           ; 1B71 DD CB 00 93
        res  2,[ix],h           ; 1B75 DD CB 00 94
        res  2,[ix],l           ; 1B79 DD CB 00 95
        res  2,[iy+127]         ; 1B7D FD CB 7F 96
        res  2,[iy+127],a       ; 1B81 FD CB 7F 97
        res  2,[iy+127],b       ; 1B85 FD CB 7F 90
        res  2,[iy+127],c       ; 1B89 FD CB 7F 91
        res  2,[iy+127],d       ; 1B8D FD CB 7F 92
        res  2,[iy+127],e       ; 1B91 FD CB 7F 93
        res  2,[iy+127],h       ; 1B95 FD CB 7F 94
        res  2,[iy+127],l       ; 1B99 FD CB 7F 95
        res  2,[iy+127]         ; 1B9D FD CB 7F 96
        res  2,[iy+127],a       ; 1BA1 FD CB 7F 97
        res  2,[iy+127],b       ; 1BA5 FD CB 7F 90
        res  2,[iy+127],c       ; 1BA9 FD CB 7F 91
        res  2,[iy+127],d       ; 1BAD FD CB 7F 92
        res  2,[iy+127],e       ; 1BB1 FD CB 7F 93
        res  2,[iy+127],h       ; 1BB5 FD CB 7F 94
        res  2,[iy+127],l       ; 1BB9 FD CB 7F 95
        res  2,[iy]             ; 1BBD FD CB 00 96
        res  2,[iy],a           ; 1BC1 FD CB 00 97
        res  2,[iy],b           ; 1BC5 FD CB 00 90
        res  2,[iy],c           ; 1BC9 FD CB 00 91
        res  2,[iy],d           ; 1BCD FD CB 00 92
        res  2,[iy],e           ; 1BD1 FD CB 00 93
        res  2,[iy],h           ; 1BD5 FD CB 00 94
        res  2,[iy],l           ; 1BD9 FD CB 00 95
        res  2,a                ; 1BDD CB 97
        res  2,b                ; 1BDF CB 90
        res  2,c                ; 1BE1 CB 91
        res  2,d                ; 1BE3 CB 92
        res  2,e                ; 1BE5 CB 93
        res  2,h                ; 1BE7 CB 94
        res  2,l                ; 1BE9 CB 95
        res  3,(hl)             ; 1BEB CB 9E
        res  3,(ix)             ; 1BED DD CB 00 9E
        res  3,(ix),a           ; 1BF1 DD CB 00 9F
        res  3,(ix),b           ; 1BF5 DD CB 00 98
        res  3,(ix),c           ; 1BF9 DD CB 00 99
        res  3,(ix),d           ; 1BFD DD CB 00 9A
        res  3,(ix),e           ; 1C01 DD CB 00 9B
        res  3,(ix),h           ; 1C05 DD CB 00 9C
        res  3,(ix),l           ; 1C09 DD CB 00 9D
        res  3,(ix+127)         ; 1C0D DD CB 7F 9E
        res  3,(ix+127),a       ; 1C11 DD CB 7F 9F
        res  3,(ix+127),b       ; 1C15 DD CB 7F 98
        res  3,(ix+127),c       ; 1C19 DD CB 7F 99
        res  3,(ix+127),d       ; 1C1D DD CB 7F 9A
        res  3,(ix+127),e       ; 1C21 DD CB 7F 9B
        res  3,(ix+127),h       ; 1C25 DD CB 7F 9C
        res  3,(ix+127),l       ; 1C29 DD CB 7F 9D
        res  3,(ix+127)         ; 1C2D DD CB 7F 9E
        res  3,(ix+127),a       ; 1C31 DD CB 7F 9F
        res  3,(ix+127),b       ; 1C35 DD CB 7F 98
        res  3,(ix+127),c       ; 1C39 DD CB 7F 99
        res  3,(ix+127),d       ; 1C3D DD CB 7F 9A
        res  3,(ix+127),e       ; 1C41 DD CB 7F 9B
        res  3,(ix+127),h       ; 1C45 DD CB 7F 9C
        res  3,(ix+127),l       ; 1C49 DD CB 7F 9D
        res  3,(iy)             ; 1C4D FD CB 00 9E
        res  3,(iy),a           ; 1C51 FD CB 00 9F
        res  3,(iy),b           ; 1C55 FD CB 00 98
        res  3,(iy),c           ; 1C59 FD CB 00 99
        res  3,(iy),d           ; 1C5D FD CB 00 9A
        res  3,(iy),e           ; 1C61 FD CB 00 9B
        res  3,(iy),h           ; 1C65 FD CB 00 9C
        res  3,(iy),l           ; 1C69 FD CB 00 9D
        res  3,(iy+127)         ; 1C6D FD CB 7F 9E
        res  3,(iy+127),a       ; 1C71 FD CB 7F 9F
        res  3,(iy+127),b       ; 1C75 FD CB 7F 98
        res  3,(iy+127),c       ; 1C79 FD CB 7F 99
        res  3,(iy+127),d       ; 1C7D FD CB 7F 9A
        res  3,(iy+127),e       ; 1C81 FD CB 7F 9B
        res  3,(iy+127),h       ; 1C85 FD CB 7F 9C
        res  3,(iy+127),l       ; 1C89 FD CB 7F 9D
        res  3,(iy+127)         ; 1C8D FD CB 7F 9E
        res  3,(iy+127),a       ; 1C91 FD CB 7F 9F
        res  3,(iy+127),b       ; 1C95 FD CB 7F 98
        res  3,(iy+127),c       ; 1C99 FD CB 7F 99
        res  3,(iy+127),d       ; 1C9D FD CB 7F 9A
        res  3,(iy+127),e       ; 1CA1 FD CB 7F 9B
        res  3,(iy+127),h       ; 1CA5 FD CB 7F 9C
        res  3,(iy+127),l       ; 1CA9 FD CB 7F 9D
        res  3,[hl]             ; 1CAD CB 9E
        res  3,[ix+127]         ; 1CAF DD CB 7F 9E
        res  3,[ix+127],a       ; 1CB3 DD CB 7F 9F
        res  3,[ix+127],b       ; 1CB7 DD CB 7F 98
        res  3,[ix+127],c       ; 1CBB DD CB 7F 99
        res  3,[ix+127],d       ; 1CBF DD CB 7F 9A
        res  3,[ix+127],e       ; 1CC3 DD CB 7F 9B
        res  3,[ix+127],h       ; 1CC7 DD CB 7F 9C
        res  3,[ix+127],l       ; 1CCB DD CB 7F 9D
        res  3,[ix+127]         ; 1CCF DD CB 7F 9E
        res  3,[ix+127],a       ; 1CD3 DD CB 7F 9F
        res  3,[ix+127],b       ; 1CD7 DD CB 7F 98
        res  3,[ix+127],c       ; 1CDB DD CB 7F 99
        res  3,[ix+127],d       ; 1CDF DD CB 7F 9A
        res  3,[ix+127],e       ; 1CE3 DD CB 7F 9B
        res  3,[ix+127],h       ; 1CE7 DD CB 7F 9C
        res  3,[ix+127],l       ; 1CEB DD CB 7F 9D
        res  3,[ix]             ; 1CEF DD CB 00 9E
        res  3,[ix],a           ; 1CF3 DD CB 00 9F
        res  3,[ix],b           ; 1CF7 DD CB 00 98
        res  3,[ix],c           ; 1CFB DD CB 00 99
        res  3,[ix],d           ; 1CFF DD CB 00 9A
        res  3,[ix],e           ; 1D03 DD CB 00 9B
        res  3,[ix],h           ; 1D07 DD CB 00 9C
        res  3,[ix],l           ; 1D0B DD CB 00 9D
        res  3,[iy+127]         ; 1D0F FD CB 7F 9E
        res  3,[iy+127],a       ; 1D13 FD CB 7F 9F
        res  3,[iy+127],b       ; 1D17 FD CB 7F 98
        res  3,[iy+127],c       ; 1D1B FD CB 7F 99
        res  3,[iy+127],d       ; 1D1F FD CB 7F 9A
        res  3,[iy+127],e       ; 1D23 FD CB 7F 9B
        res  3,[iy+127],h       ; 1D27 FD CB 7F 9C
        res  3,[iy+127],l       ; 1D2B FD CB 7F 9D
        res  3,[iy+127]         ; 1D2F FD CB 7F 9E
        res  3,[iy+127],a       ; 1D33 FD CB 7F 9F
        res  3,[iy+127],b       ; 1D37 FD CB 7F 98
        res  3,[iy+127],c       ; 1D3B FD CB 7F 99
        res  3,[iy+127],d       ; 1D3F FD CB 7F 9A
        res  3,[iy+127],e       ; 1D43 FD CB 7F 9B
        res  3,[iy+127],h       ; 1D47 FD CB 7F 9C
        res  3,[iy+127],l       ; 1D4B FD CB 7F 9D
        res  3,[iy]             ; 1D4F FD CB 00 9E
        res  3,[iy],a           ; 1D53 FD CB 00 9F
        res  3,[iy],b           ; 1D57 FD CB 00 98
        res  3,[iy],c           ; 1D5B FD CB 00 99
        res  3,[iy],d           ; 1D5F FD CB 00 9A
        res  3,[iy],e           ; 1D63 FD CB 00 9B
        res  3,[iy],h           ; 1D67 FD CB 00 9C
        res  3,[iy],l           ; 1D6B FD CB 00 9D
        res  3,a                ; 1D6F CB 9F
        res  3,b                ; 1D71 CB 98
        res  3,c                ; 1D73 CB 99
        res  3,d                ; 1D75 CB 9A
        res  3,e                ; 1D77 CB 9B
        res  3,h                ; 1D79 CB 9C
        res  3,l                ; 1D7B CB 9D
        res  4,(hl)             ; 1D7D CB A6
        res  4,(ix)             ; 1D7F DD CB 00 A6
        res  4,(ix),a           ; 1D83 DD CB 00 A7
        res  4,(ix),b           ; 1D87 DD CB 00 A0
        res  4,(ix),c           ; 1D8B DD CB 00 A1
        res  4,(ix),d           ; 1D8F DD CB 00 A2
        res  4,(ix),e           ; 1D93 DD CB 00 A3
        res  4,(ix),h           ; 1D97 DD CB 00 A4
        res  4,(ix),l           ; 1D9B DD CB 00 A5
        res  4,(ix+127)         ; 1D9F DD CB 7F A6
        res  4,(ix+127),a       ; 1DA3 DD CB 7F A7
        res  4,(ix+127),b       ; 1DA7 DD CB 7F A0
        res  4,(ix+127),c       ; 1DAB DD CB 7F A1
        res  4,(ix+127),d       ; 1DAF DD CB 7F A2
        res  4,(ix+127),e       ; 1DB3 DD CB 7F A3
        res  4,(ix+127),h       ; 1DB7 DD CB 7F A4
        res  4,(ix+127),l       ; 1DBB DD CB 7F A5
        res  4,(ix+127)         ; 1DBF DD CB 7F A6
        res  4,(ix+127),a       ; 1DC3 DD CB 7F A7
        res  4,(ix+127),b       ; 1DC7 DD CB 7F A0
        res  4,(ix+127),c       ; 1DCB DD CB 7F A1
        res  4,(ix+127),d       ; 1DCF DD CB 7F A2
        res  4,(ix+127),e       ; 1DD3 DD CB 7F A3
        res  4,(ix+127),h       ; 1DD7 DD CB 7F A4
        res  4,(ix+127),l       ; 1DDB DD CB 7F A5
        res  4,(iy)             ; 1DDF FD CB 00 A6
        res  4,(iy),a           ; 1DE3 FD CB 00 A7
        res  4,(iy),b           ; 1DE7 FD CB 00 A0
        res  4,(iy),c           ; 1DEB FD CB 00 A1
        res  4,(iy),d           ; 1DEF FD CB 00 A2
        res  4,(iy),e           ; 1DF3 FD CB 00 A3
        res  4,(iy),h           ; 1DF7 FD CB 00 A4
        res  4,(iy),l           ; 1DFB FD CB 00 A5
        res  4,(iy+127)         ; 1DFF FD CB 7F A6
        res  4,(iy+127),a       ; 1E03 FD CB 7F A7
        res  4,(iy+127),b       ; 1E07 FD CB 7F A0
        res  4,(iy+127),c       ; 1E0B FD CB 7F A1
        res  4,(iy+127),d       ; 1E0F FD CB 7F A2
        res  4,(iy+127),e       ; 1E13 FD CB 7F A3
        res  4,(iy+127),h       ; 1E17 FD CB 7F A4
        res  4,(iy+127),l       ; 1E1B FD CB 7F A5
        res  4,(iy+127)         ; 1E1F FD CB 7F A6
        res  4,(iy+127),a       ; 1E23 FD CB 7F A7
        res  4,(iy+127),b       ; 1E27 FD CB 7F A0
        res  4,(iy+127),c       ; 1E2B FD CB 7F A1
        res  4,(iy+127),d       ; 1E2F FD CB 7F A2
        res  4,(iy+127),e       ; 1E33 FD CB 7F A3
        res  4,(iy+127),h       ; 1E37 FD CB 7F A4
        res  4,(iy+127),l       ; 1E3B FD CB 7F A5
        res  4,[hl]             ; 1E3F CB A6
        res  4,[ix+127]         ; 1E41 DD CB 7F A6
        res  4,[ix+127],a       ; 1E45 DD CB 7F A7
        res  4,[ix+127],b       ; 1E49 DD CB 7F A0
        res  4,[ix+127],c       ; 1E4D DD CB 7F A1
        res  4,[ix+127],d       ; 1E51 DD CB 7F A2
        res  4,[ix+127],e       ; 1E55 DD CB 7F A3
        res  4,[ix+127],h       ; 1E59 DD CB 7F A4
        res  4,[ix+127],l       ; 1E5D DD CB 7F A5
        res  4,[ix+127]         ; 1E61 DD CB 7F A6
        res  4,[ix+127],a       ; 1E65 DD CB 7F A7
        res  4,[ix+127],b       ; 1E69 DD CB 7F A0
        res  4,[ix+127],c       ; 1E6D DD CB 7F A1
        res  4,[ix+127],d       ; 1E71 DD CB 7F A2
        res  4,[ix+127],e       ; 1E75 DD CB 7F A3
        res  4,[ix+127],h       ; 1E79 DD CB 7F A4
        res  4,[ix+127],l       ; 1E7D DD CB 7F A5
        res  4,[ix]             ; 1E81 DD CB 00 A6
        res  4,[ix],a           ; 1E85 DD CB 00 A7
        res  4,[ix],b           ; 1E89 DD CB 00 A0
        res  4,[ix],c           ; 1E8D DD CB 00 A1
        res  4,[ix],d           ; 1E91 DD CB 00 A2
        res  4,[ix],e           ; 1E95 DD CB 00 A3
        res  4,[ix],h           ; 1E99 DD CB 00 A4
        res  4,[ix],l           ; 1E9D DD CB 00 A5
        res  4,[iy+127]         ; 1EA1 FD CB 7F A6
        res  4,[iy+127],a       ; 1EA5 FD CB 7F A7
        res  4,[iy+127],b       ; 1EA9 FD CB 7F A0
        res  4,[iy+127],c       ; 1EAD FD CB 7F A1
        res  4,[iy+127],d       ; 1EB1 FD CB 7F A2
        res  4,[iy+127],e       ; 1EB5 FD CB 7F A3
        res  4,[iy+127],h       ; 1EB9 FD CB 7F A4
        res  4,[iy+127],l       ; 1EBD FD CB 7F A5
        res  4,[iy+127]         ; 1EC1 FD CB 7F A6
        res  4,[iy+127],a       ; 1EC5 FD CB 7F A7
        res  4,[iy+127],b       ; 1EC9 FD CB 7F A0
        res  4,[iy+127],c       ; 1ECD FD CB 7F A1
        res  4,[iy+127],d       ; 1ED1 FD CB 7F A2
        res  4,[iy+127],e       ; 1ED5 FD CB 7F A3
        res  4,[iy+127],h       ; 1ED9 FD CB 7F A4
        res  4,[iy+127],l       ; 1EDD FD CB 7F A5
        res  4,[iy]             ; 1EE1 FD CB 00 A6
        res  4,[iy],a           ; 1EE5 FD CB 00 A7
        res  4,[iy],b           ; 1EE9 FD CB 00 A0
        res  4,[iy],c           ; 1EED FD CB 00 A1
        res  4,[iy],d           ; 1EF1 FD CB 00 A2
        res  4,[iy],e           ; 1EF5 FD CB 00 A3
        res  4,[iy],h           ; 1EF9 FD CB 00 A4
        res  4,[iy],l           ; 1EFD FD CB 00 A5
        res  4,a                ; 1F01 CB A7
        res  4,b                ; 1F03 CB A0
        res  4,c                ; 1F05 CB A1
        res  4,d                ; 1F07 CB A2
        res  4,e                ; 1F09 CB A3
        res  4,h                ; 1F0B CB A4
        res  4,l                ; 1F0D CB A5
        res  5,(hl)             ; 1F0F CB AE
        res  5,(ix)             ; 1F11 DD CB 00 AE
        res  5,(ix),a           ; 1F15 DD CB 00 AF
        res  5,(ix),b           ; 1F19 DD CB 00 A8
        res  5,(ix),c           ; 1F1D DD CB 00 A9
        res  5,(ix),d           ; 1F21 DD CB 00 AA
        res  5,(ix),e           ; 1F25 DD CB 00 AB
        res  5,(ix),h           ; 1F29 DD CB 00 AC
        res  5,(ix),l           ; 1F2D DD CB 00 AD
        res  5,(ix+127)         ; 1F31 DD CB 7F AE
        res  5,(ix+127),a       ; 1F35 DD CB 7F AF
        res  5,(ix+127),b       ; 1F39 DD CB 7F A8
        res  5,(ix+127),c       ; 1F3D DD CB 7F A9
        res  5,(ix+127),d       ; 1F41 DD CB 7F AA
        res  5,(ix+127),e       ; 1F45 DD CB 7F AB
        res  5,(ix+127),h       ; 1F49 DD CB 7F AC
        res  5,(ix+127),l       ; 1F4D DD CB 7F AD
        res  5,(ix+127)         ; 1F51 DD CB 7F AE
        res  5,(ix+127),a       ; 1F55 DD CB 7F AF
        res  5,(ix+127),b       ; 1F59 DD CB 7F A8
        res  5,(ix+127),c       ; 1F5D DD CB 7F A9
        res  5,(ix+127),d       ; 1F61 DD CB 7F AA
        res  5,(ix+127),e       ; 1F65 DD CB 7F AB
        res  5,(ix+127),h       ; 1F69 DD CB 7F AC
        res  5,(ix+127),l       ; 1F6D DD CB 7F AD
        res  5,(iy)             ; 1F71 FD CB 00 AE
        res  5,(iy),a           ; 1F75 FD CB 00 AF
        res  5,(iy),b           ; 1F79 FD CB 00 A8
        res  5,(iy),c           ; 1F7D FD CB 00 A9
        res  5,(iy),d           ; 1F81 FD CB 00 AA
        res  5,(iy),e           ; 1F85 FD CB 00 AB
        res  5,(iy),h           ; 1F89 FD CB 00 AC
        res  5,(iy),l           ; 1F8D FD CB 00 AD
        res  5,(iy+127)         ; 1F91 FD CB 7F AE
        res  5,(iy+127),a       ; 1F95 FD CB 7F AF
        res  5,(iy+127),b       ; 1F99 FD CB 7F A8
        res  5,(iy+127),c       ; 1F9D FD CB 7F A9
        res  5,(iy+127),d       ; 1FA1 FD CB 7F AA
        res  5,(iy+127),e       ; 1FA5 FD CB 7F AB
        res  5,(iy+127),h       ; 1FA9 FD CB 7F AC
        res  5,(iy+127),l       ; 1FAD FD CB 7F AD
        res  5,(iy+127)         ; 1FB1 FD CB 7F AE
        res  5,(iy+127),a       ; 1FB5 FD CB 7F AF
        res  5,(iy+127),b       ; 1FB9 FD CB 7F A8
        res  5,(iy+127),c       ; 1FBD FD CB 7F A9
        res  5,(iy+127),d       ; 1FC1 FD CB 7F AA
        res  5,(iy+127),e       ; 1FC5 FD CB 7F AB
        res  5,(iy+127),h       ; 1FC9 FD CB 7F AC
        res  5,(iy+127),l       ; 1FCD FD CB 7F AD
        res  5,[hl]             ; 1FD1 CB AE
        res  5,[ix+127]         ; 1FD3 DD CB 7F AE
        res  5,[ix+127],a       ; 1FD7 DD CB 7F AF
        res  5,[ix+127],b       ; 1FDB DD CB 7F A8
        res  5,[ix+127],c       ; 1FDF DD CB 7F A9
        res  5,[ix+127],d       ; 1FE3 DD CB 7F AA
        res  5,[ix+127],e       ; 1FE7 DD CB 7F AB
        res  5,[ix+127],h       ; 1FEB DD CB 7F AC
        res  5,[ix+127],l       ; 1FEF DD CB 7F AD
        res  5,[ix+127]         ; 1FF3 DD CB 7F AE
        res  5,[ix+127],a       ; 1FF7 DD CB 7F AF
        res  5,[ix+127],b       ; 1FFB DD CB 7F A8
        res  5,[ix+127],c       ; 1FFF DD CB 7F A9
        res  5,[ix+127],d       ; 2003 DD CB 7F AA
        res  5,[ix+127],e       ; 2007 DD CB 7F AB
        res  5,[ix+127],h       ; 200B DD CB 7F AC
        res  5,[ix+127],l       ; 200F DD CB 7F AD
        res  5,[ix]             ; 2013 DD CB 00 AE
        res  5,[ix],a           ; 2017 DD CB 00 AF
        res  5,[ix],b           ; 201B DD CB 00 A8
        res  5,[ix],c           ; 201F DD CB 00 A9
        res  5,[ix],d           ; 2023 DD CB 00 AA
        res  5,[ix],e           ; 2027 DD CB 00 AB
        res  5,[ix],h           ; 202B DD CB 00 AC
        res  5,[ix],l           ; 202F DD CB 00 AD
        res  5,[iy+127]         ; 2033 FD CB 7F AE
        res  5,[iy+127],a       ; 2037 FD CB 7F AF
        res  5,[iy+127],b       ; 203B FD CB 7F A8
        res  5,[iy+127],c       ; 203F FD CB 7F A9
        res  5,[iy+127],d       ; 2043 FD CB 7F AA
        res  5,[iy+127],e       ; 2047 FD CB 7F AB
        res  5,[iy+127],h       ; 204B FD CB 7F AC
        res  5,[iy+127],l       ; 204F FD CB 7F AD
        res  5,[iy+127]         ; 2053 FD CB 7F AE
        res  5,[iy+127],a       ; 2057 FD CB 7F AF
        res  5,[iy+127],b       ; 205B FD CB 7F A8
        res  5,[iy+127],c       ; 205F FD CB 7F A9
        res  5,[iy+127],d       ; 2063 FD CB 7F AA
        res  5,[iy+127],e       ; 2067 FD CB 7F AB
        res  5,[iy+127],h       ; 206B FD CB 7F AC
        res  5,[iy+127],l       ; 206F FD CB 7F AD
        res  5,[iy]             ; 2073 FD CB 00 AE
        res  5,[iy],a           ; 2077 FD CB 00 AF
        res  5,[iy],b           ; 207B FD CB 00 A8
        res  5,[iy],c           ; 207F FD CB 00 A9
        res  5,[iy],d           ; 2083 FD CB 00 AA
        res  5,[iy],e           ; 2087 FD CB 00 AB
        res  5,[iy],h           ; 208B FD CB 00 AC
        res  5,[iy],l           ; 208F FD CB 00 AD
        res  5,a                ; 2093 CB AF
        res  5,b                ; 2095 CB A8
        res  5,c                ; 2097 CB A9
        res  5,d                ; 2099 CB AA
        res  5,e                ; 209B CB AB
        res  5,h                ; 209D CB AC
        res  5,l                ; 209F CB AD
        res  6,(hl)             ; 20A1 CB B6
        res  6,(ix)             ; 20A3 DD CB 00 B6
        res  6,(ix),a           ; 20A7 DD CB 00 B7
        res  6,(ix),b           ; 20AB DD CB 00 B0
        res  6,(ix),c           ; 20AF DD CB 00 B1
        res  6,(ix),d           ; 20B3 DD CB 00 B2
        res  6,(ix),e           ; 20B7 DD CB 00 B3
        res  6,(ix),h           ; 20BB DD CB 00 B4
        res  6,(ix),l           ; 20BF DD CB 00 B5
        res  6,(ix+127)         ; 20C3 DD CB 7F B6
        res  6,(ix+127),a       ; 20C7 DD CB 7F B7
        res  6,(ix+127),b       ; 20CB DD CB 7F B0
        res  6,(ix+127),c       ; 20CF DD CB 7F B1
        res  6,(ix+127),d       ; 20D3 DD CB 7F B2
        res  6,(ix+127),e       ; 20D7 DD CB 7F B3
        res  6,(ix+127),h       ; 20DB DD CB 7F B4
        res  6,(ix+127),l       ; 20DF DD CB 7F B5
        res  6,(ix+127)         ; 20E3 DD CB 7F B6
        res  6,(ix+127),a       ; 20E7 DD CB 7F B7
        res  6,(ix+127),b       ; 20EB DD CB 7F B0
        res  6,(ix+127),c       ; 20EF DD CB 7F B1
        res  6,(ix+127),d       ; 20F3 DD CB 7F B2
        res  6,(ix+127),e       ; 20F7 DD CB 7F B3
        res  6,(ix+127),h       ; 20FB DD CB 7F B4
        res  6,(ix+127),l       ; 20FF DD CB 7F B5
        res  6,(iy)             ; 2103 FD CB 00 B6
        res  6,(iy),a           ; 2107 FD CB 00 B7
        res  6,(iy),b           ; 210B FD CB 00 B0
        res  6,(iy),c           ; 210F FD CB 00 B1
        res  6,(iy),d           ; 2113 FD CB 00 B2
        res  6,(iy),e           ; 2117 FD CB 00 B3
        res  6,(iy),h           ; 211B FD CB 00 B4
        res  6,(iy),l           ; 211F FD CB 00 B5
        res  6,(iy+127)         ; 2123 FD CB 7F B6
        res  6,(iy+127),a       ; 2127 FD CB 7F B7
        res  6,(iy+127),b       ; 212B FD CB 7F B0
        res  6,(iy+127),c       ; 212F FD CB 7F B1
        res  6,(iy+127),d       ; 2133 FD CB 7F B2
        res  6,(iy+127),e       ; 2137 FD CB 7F B3
        res  6,(iy+127),h       ; 213B FD CB 7F B4
        res  6,(iy+127),l       ; 213F FD CB 7F B5
        res  6,(iy+127)         ; 2143 FD CB 7F B6
        res  6,(iy+127),a       ; 2147 FD CB 7F B7
        res  6,(iy+127),b       ; 214B FD CB 7F B0
        res  6,(iy+127),c       ; 214F FD CB 7F B1
        res  6,(iy+127),d       ; 2153 FD CB 7F B2
        res  6,(iy+127),e       ; 2157 FD CB 7F B3
        res  6,(iy+127),h       ; 215B FD CB 7F B4
        res  6,(iy+127),l       ; 215F FD CB 7F B5
        res  6,[hl]             ; 2163 CB B6
        res  6,[ix+127]         ; 2165 DD CB 7F B6
        res  6,[ix+127],a       ; 2169 DD CB 7F B7
        res  6,[ix+127],b       ; 216D DD CB 7F B0
        res  6,[ix+127],c       ; 2171 DD CB 7F B1
        res  6,[ix+127],d       ; 2175 DD CB 7F B2
        res  6,[ix+127],e       ; 2179 DD CB 7F B3
        res  6,[ix+127],h       ; 217D DD CB 7F B4
        res  6,[ix+127],l       ; 2181 DD CB 7F B5
        res  6,[ix+127]         ; 2185 DD CB 7F B6
        res  6,[ix+127],a       ; 2189 DD CB 7F B7
        res  6,[ix+127],b       ; 218D DD CB 7F B0
        res  6,[ix+127],c       ; 2191 DD CB 7F B1
        res  6,[ix+127],d       ; 2195 DD CB 7F B2
        res  6,[ix+127],e       ; 2199 DD CB 7F B3
        res  6,[ix+127],h       ; 219D DD CB 7F B4
        res  6,[ix+127],l       ; 21A1 DD CB 7F B5
        res  6,[ix]             ; 21A5 DD CB 00 B6
        res  6,[ix],a           ; 21A9 DD CB 00 B7
        res  6,[ix],b           ; 21AD DD CB 00 B0
        res  6,[ix],c           ; 21B1 DD CB 00 B1
        res  6,[ix],d           ; 21B5 DD CB 00 B2
        res  6,[ix],e           ; 21B9 DD CB 00 B3
        res  6,[ix],h           ; 21BD DD CB 00 B4
        res  6,[ix],l           ; 21C1 DD CB 00 B5
        res  6,[iy+127]         ; 21C5 FD CB 7F B6
        res  6,[iy+127],a       ; 21C9 FD CB 7F B7
        res  6,[iy+127],b       ; 21CD FD CB 7F B0
        res  6,[iy+127],c       ; 21D1 FD CB 7F B1
        res  6,[iy+127],d       ; 21D5 FD CB 7F B2
        res  6,[iy+127],e       ; 21D9 FD CB 7F B3
        res  6,[iy+127],h       ; 21DD FD CB 7F B4
        res  6,[iy+127],l       ; 21E1 FD CB 7F B5
        res  6,[iy+127]         ; 21E5 FD CB 7F B6
        res  6,[iy+127],a       ; 21E9 FD CB 7F B7
        res  6,[iy+127],b       ; 21ED FD CB 7F B0
        res  6,[iy+127],c       ; 21F1 FD CB 7F B1
        res  6,[iy+127],d       ; 21F5 FD CB 7F B2
        res  6,[iy+127],e       ; 21F9 FD CB 7F B3
        res  6,[iy+127],h       ; 21FD FD CB 7F B4
        res  6,[iy+127],l       ; 2201 FD CB 7F B5
        res  6,[iy]             ; 2205 FD CB 00 B6
        res  6,[iy],a           ; 2209 FD CB 00 B7
        res  6,[iy],b           ; 220D FD CB 00 B0
        res  6,[iy],c           ; 2211 FD CB 00 B1
        res  6,[iy],d           ; 2215 FD CB 00 B2
        res  6,[iy],e           ; 2219 FD CB 00 B3
        res  6,[iy],h           ; 221D FD CB 00 B4
        res  6,[iy],l           ; 2221 FD CB 00 B5
        res  6,a                ; 2225 CB B7
        res  6,b                ; 2227 CB B0
        res  6,c                ; 2229 CB B1
        res  6,d                ; 222B CB B2
        res  6,e                ; 222D CB B3
        res  6,h                ; 222F CB B4
        res  6,l                ; 2231 CB B5
        res  7,(hl)             ; 2233 CB BE
        res  7,(ix)             ; 2235 DD CB 00 BE
        res  7,(ix),a           ; 2239 DD CB 00 BF
        res  7,(ix),b           ; 223D DD CB 00 B8
        res  7,(ix),c           ; 2241 DD CB 00 B9
        res  7,(ix),d           ; 2245 DD CB 00 BA
        res  7,(ix),e           ; 2249 DD CB 00 BB
        res  7,(ix),h           ; 224D DD CB 00 BC
        res  7,(ix),l           ; 2251 DD CB 00 BD
        res  7,(ix+127)         ; 2255 DD CB 7F BE
        res  7,(ix+127),a       ; 2259 DD CB 7F BF
        res  7,(ix+127),b       ; 225D DD CB 7F B8
        res  7,(ix+127),c       ; 2261 DD CB 7F B9
        res  7,(ix+127),d       ; 2265 DD CB 7F BA
        res  7,(ix+127),e       ; 2269 DD CB 7F BB
        res  7,(ix+127),h       ; 226D DD CB 7F BC
        res  7,(ix+127),l       ; 2271 DD CB 7F BD
        res  7,(ix+127)         ; 2275 DD CB 7F BE
        res  7,(ix+127),a       ; 2279 DD CB 7F BF
        res  7,(ix+127),b       ; 227D DD CB 7F B8
        res  7,(ix+127),c       ; 2281 DD CB 7F B9
        res  7,(ix+127),d       ; 2285 DD CB 7F BA
        res  7,(ix+127),e       ; 2289 DD CB 7F BB
        res  7,(ix+127),h       ; 228D DD CB 7F BC
        res  7,(ix+127),l       ; 2291 DD CB 7F BD
        res  7,(iy)             ; 2295 FD CB 00 BE
        res  7,(iy),a           ; 2299 FD CB 00 BF
        res  7,(iy),b           ; 229D FD CB 00 B8
        res  7,(iy),c           ; 22A1 FD CB 00 B9
        res  7,(iy),d           ; 22A5 FD CB 00 BA
        res  7,(iy),e           ; 22A9 FD CB 00 BB
        res  7,(iy),h           ; 22AD FD CB 00 BC
        res  7,(iy),l           ; 22B1 FD CB 00 BD
        res  7,(iy+127)         ; 22B5 FD CB 7F BE
        res  7,(iy+127),a       ; 22B9 FD CB 7F BF
        res  7,(iy+127),b       ; 22BD FD CB 7F B8
        res  7,(iy+127),c       ; 22C1 FD CB 7F B9
        res  7,(iy+127),d       ; 22C5 FD CB 7F BA
        res  7,(iy+127),e       ; 22C9 FD CB 7F BB
        res  7,(iy+127),h       ; 22CD FD CB 7F BC
        res  7,(iy+127),l       ; 22D1 FD CB 7F BD
        res  7,(iy+127)         ; 22D5 FD CB 7F BE
        res  7,(iy+127),a       ; 22D9 FD CB 7F BF
        res  7,(iy+127),b       ; 22DD FD CB 7F B8
        res  7,(iy+127),c       ; 22E1 FD CB 7F B9
        res  7,(iy+127),d       ; 22E5 FD CB 7F BA
        res  7,(iy+127),e       ; 22E9 FD CB 7F BB
        res  7,(iy+127),h       ; 22ED FD CB 7F BC
        res  7,(iy+127),l       ; 22F1 FD CB 7F BD
        res  7,[hl]             ; 22F5 CB BE
        res  7,[ix+127]         ; 22F7 DD CB 7F BE
        res  7,[ix+127],a       ; 22FB DD CB 7F BF
        res  7,[ix+127],b       ; 22FF DD CB 7F B8
        res  7,[ix+127],c       ; 2303 DD CB 7F B9
        res  7,[ix+127],d       ; 2307 DD CB 7F BA
        res  7,[ix+127],e       ; 230B DD CB 7F BB
        res  7,[ix+127],h       ; 230F DD CB 7F BC
        res  7,[ix+127],l       ; 2313 DD CB 7F BD
        res  7,[ix+127]         ; 2317 DD CB 7F BE
        res  7,[ix+127],a       ; 231B DD CB 7F BF
        res  7,[ix+127],b       ; 231F DD CB 7F B8
        res  7,[ix+127],c       ; 2323 DD CB 7F B9
        res  7,[ix+127],d       ; 2327 DD CB 7F BA
        res  7,[ix+127],e       ; 232B DD CB 7F BB
        res  7,[ix+127],h       ; 232F DD CB 7F BC
        res  7,[ix+127],l       ; 2333 DD CB 7F BD
        res  7,[ix]             ; 2337 DD CB 00 BE
        res  7,[ix],a           ; 233B DD CB 00 BF
        res  7,[ix],b           ; 233F DD CB 00 B8
        res  7,[ix],c           ; 2343 DD CB 00 B9
        res  7,[ix],d           ; 2347 DD CB 00 BA
        res  7,[ix],e           ; 234B DD CB 00 BB
        res  7,[ix],h           ; 234F DD CB 00 BC
        res  7,[ix],l           ; 2353 DD CB 00 BD
        res  7,[iy+127]         ; 2357 FD CB 7F BE
        res  7,[iy+127],a       ; 235B FD CB 7F BF
        res  7,[iy+127],b       ; 235F FD CB 7F B8
        res  7,[iy+127],c       ; 2363 FD CB 7F B9
        res  7,[iy+127],d       ; 2367 FD CB 7F BA
        res  7,[iy+127],e       ; 236B FD CB 7F BB
        res  7,[iy+127],h       ; 236F FD CB 7F BC
        res  7,[iy+127],l       ; 2373 FD CB 7F BD
        res  7,[iy+127]         ; 2377 FD CB 7F BE
        res  7,[iy+127],a       ; 237B FD CB 7F BF
        res  7,[iy+127],b       ; 237F FD CB 7F B8
        res  7,[iy+127],c       ; 2383 FD CB 7F B9
        res  7,[iy+127],d       ; 2387 FD CB 7F BA
        res  7,[iy+127],e       ; 238B FD CB 7F BB
        res  7,[iy+127],h       ; 238F FD CB 7F BC
        res  7,[iy+127],l       ; 2393 FD CB 7F BD
        res  7,[iy]             ; 2397 FD CB 00 BE
        res  7,[iy],a           ; 239B FD CB 00 BF
        res  7,[iy],b           ; 239F FD CB 00 B8
        res  7,[iy],c           ; 23A3 FD CB 00 B9
        res  7,[iy],d           ; 23A7 FD CB 00 BA
        res  7,[iy],e           ; 23AB FD CB 00 BB
        res  7,[iy],h           ; 23AF FD CB 00 BC
        res  7,[iy],l           ; 23B3 FD CB 00 BD
        res  7,a                ; 23B7 CB BF
        res  7,b                ; 23B9 CB B8
        res  7,c                ; 23BB CB B9
        res  7,d                ; 23BD CB BA
        res  7,e                ; 23BF CB BB
        res  7,h                ; 23C1 CB BC
        res  7,l                ; 23C3 CB BD
        ret                     ; 23C5 C9
        RET                     ; 23C6 C9
        ret  c                  ; 23C7 D8
        ret  m                  ; 23C8 F8
        ret  nc                 ; 23C9 D0
        ret  nz                 ; 23CA C0
        ret  p                  ; 23CB F0
        ret  pe                 ; 23CC E8
        ret  po                 ; 23CD E0
        ret  z                  ; 23CE C8
        reti                    ; 23CF ED 4D
        RETI                    ; 23D1 ED 4D
        retn                    ; 23D3 ED 45
        RETN                    ; 23D5 ED 45
        rl   (hl)               ; 23D7 CB 16
        RL   (HL)               ; 23D9 CB 16
        rl   (ix)               ; 23DB DD CB 00 16
        rl   (ix),a             ; 23DF DD CB 00 17
        rl   (ix),b             ; 23E3 DD CB 00 10
        rl   (ix),c             ; 23E7 DD CB 00 11
        rl   (ix),d             ; 23EB DD CB 00 12
        rl   (ix),e             ; 23EF DD CB 00 13
        rl   (ix),h             ; 23F3 DD CB 00 14
        rl   (ix),l             ; 23F7 DD CB 00 15
        rl   (ix+127)           ; 23FB DD CB 7F 16
        rl   (ix+127),a         ; 23FF DD CB 7F 17
        rl   (ix+127),b         ; 2403 DD CB 7F 10
        rl   (ix+127),c         ; 2407 DD CB 7F 11
        rl   (ix+127),d         ; 240B DD CB 7F 12
        rl   (ix+127),e         ; 240F DD CB 7F 13
        rl   (ix+127),h         ; 2413 DD CB 7F 14
        rl   (ix+127),l         ; 2417 DD CB 7F 15
        rl   (ix+127)           ; 241B DD CB 7F 16
        rl   (ix+127),a         ; 241F DD CB 7F 17
        rl   (ix+127),b         ; 2423 DD CB 7F 10
        rl   (ix+127),c         ; 2427 DD CB 7F 11
        rl   (ix+127),d         ; 242B DD CB 7F 12
        rl   (ix+127),e         ; 242F DD CB 7F 13
        rl   (ix+127),h         ; 2433 DD CB 7F 14
        rl   (ix+127),l         ; 2437 DD CB 7F 15
        rl   (iy)               ; 243B FD CB 00 16
        rl   (iy),a             ; 243F FD CB 00 17
        rl   (iy),b             ; 2443 FD CB 00 10
        rl   (iy),c             ; 2447 FD CB 00 11
        rl   (iy),d             ; 244B FD CB 00 12
        rl   (iy),e             ; 244F FD CB 00 13
        rl   (iy),h             ; 2453 FD CB 00 14
        rl   (iy),l             ; 2457 FD CB 00 15
        rl   (iy+127)           ; 245B FD CB 7F 16
        rl   (iy+127),a         ; 245F FD CB 7F 17
        rl   (iy+127),b         ; 2463 FD CB 7F 10
        rl   (iy+127),c         ; 2467 FD CB 7F 11
        rl   (iy+127),d         ; 246B FD CB 7F 12
        rl   (iy+127),e         ; 246F FD CB 7F 13
        rl   (iy+127),h         ; 2473 FD CB 7F 14
        rl   (iy+127),l         ; 2477 FD CB 7F 15
        rl   (iy+127)           ; 247B FD CB 7F 16
        rl   (iy+127),a         ; 247F FD CB 7F 17
        rl   (iy+127),b         ; 2483 FD CB 7F 10
        rl   (iy+127),c         ; 2487 FD CB 7F 11
        rl   (iy+127),d         ; 248B FD CB 7F 12
        rl   (iy+127),e         ; 248F FD CB 7F 13
        rl   (iy+127),h         ; 2493 FD CB 7F 14
        rl   (iy+127),l         ; 2497 FD CB 7F 15
        rl   [hl]               ; 249B CB 16
        rl   [ix+127]           ; 249D DD CB 7F 16
        rl   [ix+127],a         ; 24A1 DD CB 7F 17
        rl   [ix+127],b         ; 24A5 DD CB 7F 10
        rl   [ix+127],c         ; 24A9 DD CB 7F 11
        rl   [ix+127],d         ; 24AD DD CB 7F 12
        rl   [ix+127],e         ; 24B1 DD CB 7F 13
        rl   [ix+127],h         ; 24B5 DD CB 7F 14
        rl   [ix+127],l         ; 24B9 DD CB 7F 15
        rl   [ix+127]           ; 24BD DD CB 7F 16
        rl   [ix+127],a         ; 24C1 DD CB 7F 17
        rl   [ix+127],b         ; 24C5 DD CB 7F 10
        rl   [ix+127],c         ; 24C9 DD CB 7F 11
        rl   [ix+127],d         ; 24CD DD CB 7F 12
        rl   [ix+127],e         ; 24D1 DD CB 7F 13
        rl   [ix+127],h         ; 24D5 DD CB 7F 14
        rl   [ix+127],l         ; 24D9 DD CB 7F 15
        rl   [ix]               ; 24DD DD CB 00 16
        rl   [ix],a             ; 24E1 DD CB 00 17
        rl   [ix],b             ; 24E5 DD CB 00 10
        rl   [ix],c             ; 24E9 DD CB 00 11
        rl   [ix],d             ; 24ED DD CB 00 12
        rl   [ix],e             ; 24F1 DD CB 00 13
        rl   [ix],h             ; 24F5 DD CB 00 14
        rl   [ix],l             ; 24F9 DD CB 00 15
        rl   [iy+127]           ; 24FD FD CB 7F 16
        rl   [iy+127],a         ; 2501 FD CB 7F 17
        rl   [iy+127],b         ; 2505 FD CB 7F 10
        rl   [iy+127],c         ; 2509 FD CB 7F 11
        rl   [iy+127],d         ; 250D FD CB 7F 12
        rl   [iy+127],e         ; 2511 FD CB 7F 13
        rl   [iy+127],h         ; 2515 FD CB 7F 14
        rl   [iy+127],l         ; 2519 FD CB 7F 15
        rl   [iy+127]           ; 251D FD CB 7F 16
        rl   [iy+127],a         ; 2521 FD CB 7F 17
        rl   [iy+127],b         ; 2525 FD CB 7F 10
        rl   [iy+127],c         ; 2529 FD CB 7F 11
        rl   [iy+127],d         ; 252D FD CB 7F 12
        rl   [iy+127],e         ; 2531 FD CB 7F 13
        rl   [iy+127],h         ; 2535 FD CB 7F 14
        rl   [iy+127],l         ; 2539 FD CB 7F 15
        rl   [iy]               ; 253D FD CB 00 16
        rl   [iy],a             ; 2541 FD CB 00 17
        rl   [iy],b             ; 2545 FD CB 00 10
        rl   [iy],c             ; 2549 FD CB 00 11
        rl   [iy],d             ; 254D FD CB 00 12
        rl   [iy],e             ; 2551 FD CB 00 13
        rl   [iy],h             ; 2555 FD CB 00 14
        rl   [iy],l             ; 2559 FD CB 00 15
        rl   a                  ; 255D CB 17
        rl   b                  ; 255F CB 10
        rl   bc                 ; 2561 CB 11 CB 10
        rl   c                  ; 2565 CB 11
        rl   d                  ; 2567 CB 12
        rl   de                 ; 2569 CB 13 CB 12
        rl   e                  ; 256D CB 13
        rl   h                  ; 256F CB 14
        rl   hl                 ; 2571 CB 15 CB 14
        rl   l                  ; 2575 CB 15
        rla                     ; 2577 17
        RLA                     ; 2578 17
        rlc  (hl)               ; 2579 CB 06
        RLC  (HL)               ; 257B CB 06
        rlc  (ix)               ; 257D DD CB 00 06
        rlc  (ix),a             ; 2581 DD CB 00 07
        rlc  (ix),b             ; 2585 DD CB 00 00
        rlc  (ix),c             ; 2589 DD CB 00 01
        rlc  (ix),d             ; 258D DD CB 00 02
        rlc  (ix),e             ; 2591 DD CB 00 03
        rlc  (ix),h             ; 2595 DD CB 00 04
        rlc  (ix),l             ; 2599 DD CB 00 05
        rlc  (ix+127)           ; 259D DD CB 7F 06
        rlc  (ix+127),a         ; 25A1 DD CB 7F 07
        rlc  (ix+127),b         ; 25A5 DD CB 7F 00
        rlc  (ix+127),c         ; 25A9 DD CB 7F 01
        rlc  (ix+127),d         ; 25AD DD CB 7F 02
        rlc  (ix+127),e         ; 25B1 DD CB 7F 03
        rlc  (ix+127),h         ; 25B5 DD CB 7F 04
        rlc  (ix+127),l         ; 25B9 DD CB 7F 05
        rlc  (ix+127)           ; 25BD DD CB 7F 06
        rlc  (ix+127),a         ; 25C1 DD CB 7F 07
        rlc  (ix+127),b         ; 25C5 DD CB 7F 00
        rlc  (ix+127),c         ; 25C9 DD CB 7F 01
        rlc  (ix+127),d         ; 25CD DD CB 7F 02
        rlc  (ix+127),e         ; 25D1 DD CB 7F 03
        rlc  (ix+127),h         ; 25D5 DD CB 7F 04
        rlc  (ix+127),l         ; 25D9 DD CB 7F 05
        rlc  (iy)               ; 25DD FD CB 00 06
        rlc  (iy),a             ; 25E1 FD CB 00 07
        rlc  (iy),b             ; 25E5 FD CB 00 00
        rlc  (iy),c             ; 25E9 FD CB 00 01
        rlc  (iy),d             ; 25ED FD CB 00 02
        rlc  (iy),e             ; 25F1 FD CB 00 03
        rlc  (iy),h             ; 25F5 FD CB 00 04
        rlc  (iy),l             ; 25F9 FD CB 00 05
        rlc  (iy+127)           ; 25FD FD CB 7F 06
        rlc  (iy+127),a         ; 2601 FD CB 7F 07
        rlc  (iy+127),b         ; 2605 FD CB 7F 00
        rlc  (iy+127),c         ; 2609 FD CB 7F 01
        rlc  (iy+127),d         ; 260D FD CB 7F 02
        rlc  (iy+127),e         ; 2611 FD CB 7F 03
        rlc  (iy+127),h         ; 2615 FD CB 7F 04
        rlc  (iy+127),l         ; 2619 FD CB 7F 05
        rlc  (iy+127)           ; 261D FD CB 7F 06
        rlc  (iy+127),a         ; 2621 FD CB 7F 07
        rlc  (iy+127),b         ; 2625 FD CB 7F 00
        rlc  (iy+127),c         ; 2629 FD CB 7F 01
        rlc  (iy+127),d         ; 262D FD CB 7F 02
        rlc  (iy+127),e         ; 2631 FD CB 7F 03
        rlc  (iy+127),h         ; 2635 FD CB 7F 04
        rlc  (iy+127),l         ; 2639 FD CB 7F 05
        rlc  [hl]               ; 263D CB 06
        rlc  [ix+127]           ; 263F DD CB 7F 06
        rlc  [ix+127],a         ; 2643 DD CB 7F 07
        rlc  [ix+127],b         ; 2647 DD CB 7F 00
        rlc  [ix+127],c         ; 264B DD CB 7F 01
        rlc  [ix+127],d         ; 264F DD CB 7F 02
        rlc  [ix+127],e         ; 2653 DD CB 7F 03
        rlc  [ix+127],h         ; 2657 DD CB 7F 04
        rlc  [ix+127],l         ; 265B DD CB 7F 05
        rlc  [ix+127]           ; 265F DD CB 7F 06
        rlc  [ix+127],a         ; 2663 DD CB 7F 07
        rlc  [ix+127],b         ; 2667 DD CB 7F 00
        rlc  [ix+127],c         ; 266B DD CB 7F 01
        rlc  [ix+127],d         ; 266F DD CB 7F 02
        rlc  [ix+127],e         ; 2673 DD CB 7F 03
        rlc  [ix+127],h         ; 2677 DD CB 7F 04
        rlc  [ix+127],l         ; 267B DD CB 7F 05
        rlc  [ix]               ; 267F DD CB 00 06
        rlc  [ix],a             ; 2683 DD CB 00 07
        rlc  [ix],b             ; 2687 DD CB 00 00
        rlc  [ix],c             ; 268B DD CB 00 01
        rlc  [ix],d             ; 268F DD CB 00 02
        rlc  [ix],e             ; 2693 DD CB 00 03
        rlc  [ix],h             ; 2697 DD CB 00 04
        rlc  [ix],l             ; 269B DD CB 00 05
        rlc  [iy+127]           ; 269F FD CB 7F 06
        rlc  [iy+127],a         ; 26A3 FD CB 7F 07
        rlc  [iy+127],b         ; 26A7 FD CB 7F 00
        rlc  [iy+127],c         ; 26AB FD CB 7F 01
        rlc  [iy+127],d         ; 26AF FD CB 7F 02
        rlc  [iy+127],e         ; 26B3 FD CB 7F 03
        rlc  [iy+127],h         ; 26B7 FD CB 7F 04
        rlc  [iy+127],l         ; 26BB FD CB 7F 05
        rlc  [iy+127]           ; 26BF FD CB 7F 06
        rlc  [iy+127],a         ; 26C3 FD CB 7F 07
        rlc  [iy+127],b         ; 26C7 FD CB 7F 00
        rlc  [iy+127],c         ; 26CB FD CB 7F 01
        rlc  [iy+127],d         ; 26CF FD CB 7F 02
        rlc  [iy+127],e         ; 26D3 FD CB 7F 03
        rlc  [iy+127],h         ; 26D7 FD CB 7F 04
        rlc  [iy+127],l         ; 26DB FD CB 7F 05
        rlc  [iy]               ; 26DF FD CB 00 06
        rlc  [iy],a             ; 26E3 FD CB 00 07
        rlc  [iy],b             ; 26E7 FD CB 00 00
        rlc  [iy],c             ; 26EB FD CB 00 01
        rlc  [iy],d             ; 26EF FD CB 00 02
        rlc  [iy],e             ; 26F3 FD CB 00 03
        rlc  [iy],h             ; 26F7 FD CB 00 04
        rlc  [iy],l             ; 26FB FD CB 00 05
        rlc  a                  ; 26FF CB 07
        rlc  b                  ; 2701 CB 00
        rlc  c                  ; 2703 CB 01
        rlc  d                  ; 2705 CB 02
        rlc  e                  ; 2707 CB 03
        rlc  h                  ; 2709 CB 04
        rlc  l                  ; 270B CB 05
        rlca                    ; 270D 07
        RLCA                    ; 270E 07
        rld                     ; 270F ED 6F
        RLD                     ; 2711 ED 6F
        rr   (hl)               ; 2713 CB 1E
        RR   (HL)               ; 2715 CB 1E
        rr   (ix)               ; 2717 DD CB 00 1E
        rr   (ix),a             ; 271B DD CB 00 1F
        rr   (ix),b             ; 271F DD CB 00 18
        rr   (ix),c             ; 2723 DD CB 00 19
        rr   (ix),d             ; 2727 DD CB 00 1A
        rr   (ix),e             ; 272B DD CB 00 1B
        rr   (ix),h             ; 272F DD CB 00 1C
        rr   (ix),l             ; 2733 DD CB 00 1D
        rr   (ix+127)           ; 2737 DD CB 7F 1E
        rr   (ix+127),a         ; 273B DD CB 7F 1F
        rr   (ix+127),b         ; 273F DD CB 7F 18
        rr   (ix+127),c         ; 2743 DD CB 7F 19
        rr   (ix+127),d         ; 2747 DD CB 7F 1A
        rr   (ix+127),e         ; 274B DD CB 7F 1B
        rr   (ix+127),h         ; 274F DD CB 7F 1C
        rr   (ix+127),l         ; 2753 DD CB 7F 1D
        rr   (ix+127)           ; 2757 DD CB 7F 1E
        rr   (ix+127),a         ; 275B DD CB 7F 1F
        rr   (ix+127),b         ; 275F DD CB 7F 18
        rr   (ix+127),c         ; 2763 DD CB 7F 19
        rr   (ix+127),d         ; 2767 DD CB 7F 1A
        rr   (ix+127),e         ; 276B DD CB 7F 1B
        rr   (ix+127),h         ; 276F DD CB 7F 1C
        rr   (ix+127),l         ; 2773 DD CB 7F 1D
        rr   (iy)               ; 2777 FD CB 00 1E
        rr   (iy),a             ; 277B FD CB 00 1F
        rr   (iy),b             ; 277F FD CB 00 18
        rr   (iy),c             ; 2783 FD CB 00 19
        rr   (iy),d             ; 2787 FD CB 00 1A
        rr   (iy),e             ; 278B FD CB 00 1B
        rr   (iy),h             ; 278F FD CB 00 1C
        rr   (iy),l             ; 2793 FD CB 00 1D
        rr   (iy+127)           ; 2797 FD CB 7F 1E
        rr   (iy+127),a         ; 279B FD CB 7F 1F
        rr   (iy+127),b         ; 279F FD CB 7F 18
        rr   (iy+127),c         ; 27A3 FD CB 7F 19
        rr   (iy+127),d         ; 27A7 FD CB 7F 1A
        rr   (iy+127),e         ; 27AB FD CB 7F 1B
        rr   (iy+127),h         ; 27AF FD CB 7F 1C
        rr   (iy+127),l         ; 27B3 FD CB 7F 1D
        rr   (iy+127)           ; 27B7 FD CB 7F 1E
        rr   (iy+127),a         ; 27BB FD CB 7F 1F
        rr   (iy+127),b         ; 27BF FD CB 7F 18
        rr   (iy+127),c         ; 27C3 FD CB 7F 19
        rr   (iy+127),d         ; 27C7 FD CB 7F 1A
        rr   (iy+127),e         ; 27CB FD CB 7F 1B
        rr   (iy+127),h         ; 27CF FD CB 7F 1C
        rr   (iy+127),l         ; 27D3 FD CB 7F 1D
        rr   [hl]               ; 27D7 CB 1E
        rr   [ix+127]           ; 27D9 DD CB 7F 1E
        rr   [ix+127],a         ; 27DD DD CB 7F 1F
        rr   [ix+127],b         ; 27E1 DD CB 7F 18
        rr   [ix+127],c         ; 27E5 DD CB 7F 19
        rr   [ix+127],d         ; 27E9 DD CB 7F 1A
        rr   [ix+127],e         ; 27ED DD CB 7F 1B
        rr   [ix+127],h         ; 27F1 DD CB 7F 1C
        rr   [ix+127],l         ; 27F5 DD CB 7F 1D
        rr   [ix+127]           ; 27F9 DD CB 7F 1E
        rr   [ix+127],a         ; 27FD DD CB 7F 1F
        rr   [ix+127],b         ; 2801 DD CB 7F 18
        rr   [ix+127],c         ; 2805 DD CB 7F 19
        rr   [ix+127],d         ; 2809 DD CB 7F 1A
        rr   [ix+127],e         ; 280D DD CB 7F 1B
        rr   [ix+127],h         ; 2811 DD CB 7F 1C
        rr   [ix+127],l         ; 2815 DD CB 7F 1D
        rr   [ix]               ; 2819 DD CB 00 1E
        rr   [ix],a             ; 281D DD CB 00 1F
        rr   [ix],b             ; 2821 DD CB 00 18
        rr   [ix],c             ; 2825 DD CB 00 19
        rr   [ix],d             ; 2829 DD CB 00 1A
        rr   [ix],e             ; 282D DD CB 00 1B
        rr   [ix],h             ; 2831 DD CB 00 1C
        rr   [ix],l             ; 2835 DD CB 00 1D
        rr   [iy+127]           ; 2839 FD CB 7F 1E
        rr   [iy+127],a         ; 283D FD CB 7F 1F
        rr   [iy+127],b         ; 2841 FD CB 7F 18
        rr   [iy+127],c         ; 2845 FD CB 7F 19
        rr   [iy+127],d         ; 2849 FD CB 7F 1A
        rr   [iy+127],e         ; 284D FD CB 7F 1B
        rr   [iy+127],h         ; 2851 FD CB 7F 1C
        rr   [iy+127],l         ; 2855 FD CB 7F 1D
        rr   [iy+127]           ; 2859 FD CB 7F 1E
        rr   [iy+127],a         ; 285D FD CB 7F 1F
        rr   [iy+127],b         ; 2861 FD CB 7F 18
        rr   [iy+127],c         ; 2865 FD CB 7F 19
        rr   [iy+127],d         ; 2869 FD CB 7F 1A
        rr   [iy+127],e         ; 286D FD CB 7F 1B
        rr   [iy+127],h         ; 2871 FD CB 7F 1C
        rr   [iy+127],l         ; 2875 FD CB 7F 1D
        rr   [iy]               ; 2879 FD CB 00 1E
        rr   [iy],a             ; 287D FD CB 00 1F
        rr   [iy],b             ; 2881 FD CB 00 18
        rr   [iy],c             ; 2885 FD CB 00 19
        rr   [iy],d             ; 2889 FD CB 00 1A
        rr   [iy],e             ; 288D FD CB 00 1B
        rr   [iy],h             ; 2891 FD CB 00 1C
        rr   [iy],l             ; 2895 FD CB 00 1D
        rr   a                  ; 2899 CB 1F
        rr   b                  ; 289B CB 18
        rr   bc                 ; 289D CB 18 CB 19
        rr   c                  ; 28A1 CB 19
        rr   d                  ; 28A3 CB 1A
        rr   de                 ; 28A5 CB 1A CB 1B
        rr   e                  ; 28A9 CB 1B
        rr   h                  ; 28AB CB 1C
        rr   hl                 ; 28AD CB 1C CB 1D
        rr   l                  ; 28B1 CB 1D
        rra                     ; 28B3 1F
        RRA                     ; 28B4 1F
        rrc  (hl)               ; 28B5 CB 0E
        RRC  (HL)               ; 28B7 CB 0E
        rrc  (ix)               ; 28B9 DD CB 00 0E
        rrc  (ix),a             ; 28BD DD CB 00 0F
        rrc  (ix),b             ; 28C1 DD CB 00 08
        rrc  (ix),c             ; 28C5 DD CB 00 09
        rrc  (ix),d             ; 28C9 DD CB 00 0A
        rrc  (ix),e             ; 28CD DD CB 00 0B
        rrc  (ix),h             ; 28D1 DD CB 00 0C
        rrc  (ix),l             ; 28D5 DD CB 00 0D
        rrc  (ix+127)           ; 28D9 DD CB 7F 0E
        rrc  (ix+127),a         ; 28DD DD CB 7F 0F
        rrc  (ix+127),b         ; 28E1 DD CB 7F 08
        rrc  (ix+127),c         ; 28E5 DD CB 7F 09
        rrc  (ix+127),d         ; 28E9 DD CB 7F 0A
        rrc  (ix+127),e         ; 28ED DD CB 7F 0B
        rrc  (ix+127),h         ; 28F1 DD CB 7F 0C
        rrc  (ix+127),l         ; 28F5 DD CB 7F 0D
        rrc  (ix+127)           ; 28F9 DD CB 7F 0E
        rrc  (ix+127),a         ; 28FD DD CB 7F 0F
        rrc  (ix+127),b         ; 2901 DD CB 7F 08
        rrc  (ix+127),c         ; 2905 DD CB 7F 09
        rrc  (ix+127),d         ; 2909 DD CB 7F 0A
        rrc  (ix+127),e         ; 290D DD CB 7F 0B
        rrc  (ix+127),h         ; 2911 DD CB 7F 0C
        rrc  (ix+127),l         ; 2915 DD CB 7F 0D
        rrc  (iy)               ; 2919 FD CB 00 0E
        rrc  (iy),a             ; 291D FD CB 00 0F
        rrc  (iy),b             ; 2921 FD CB 00 08
        rrc  (iy),c             ; 2925 FD CB 00 09
        rrc  (iy),d             ; 2929 FD CB 00 0A
        rrc  (iy),e             ; 292D FD CB 00 0B
        rrc  (iy),h             ; 2931 FD CB 00 0C
        rrc  (iy),l             ; 2935 FD CB 00 0D
        rrc  (iy+127)           ; 2939 FD CB 7F 0E
        rrc  (iy+127),a         ; 293D FD CB 7F 0F
        rrc  (iy+127),b         ; 2941 FD CB 7F 08
        rrc  (iy+127),c         ; 2945 FD CB 7F 09
        rrc  (iy+127),d         ; 2949 FD CB 7F 0A
        rrc  (iy+127),e         ; 294D FD CB 7F 0B
        rrc  (iy+127),h         ; 2951 FD CB 7F 0C
        rrc  (iy+127),l         ; 2955 FD CB 7F 0D
        rrc  (iy+127)           ; 2959 FD CB 7F 0E
        rrc  (iy+127),a         ; 295D FD CB 7F 0F
        rrc  (iy+127),b         ; 2961 FD CB 7F 08
        rrc  (iy+127),c         ; 2965 FD CB 7F 09
        rrc  (iy+127),d         ; 2969 FD CB 7F 0A
        rrc  (iy+127),e         ; 296D FD CB 7F 0B
        rrc  (iy+127),h         ; 2971 FD CB 7F 0C
        rrc  (iy+127),l         ; 2975 FD CB 7F 0D
        rrc  [hl]               ; 2979 CB 0E
        rrc  [ix+127]           ; 297B DD CB 7F 0E
        rrc  [ix+127],a         ; 297F DD CB 7F 0F
        rrc  [ix+127],b         ; 2983 DD CB 7F 08
        rrc  [ix+127],c         ; 2987 DD CB 7F 09
        rrc  [ix+127],d         ; 298B DD CB 7F 0A
        rrc  [ix+127],e         ; 298F DD CB 7F 0B
        rrc  [ix+127],h         ; 2993 DD CB 7F 0C
        rrc  [ix+127],l         ; 2997 DD CB 7F 0D
        rrc  [ix+127]           ; 299B DD CB 7F 0E
        rrc  [ix+127],a         ; 299F DD CB 7F 0F
        rrc  [ix+127],b         ; 29A3 DD CB 7F 08
        rrc  [ix+127],c         ; 29A7 DD CB 7F 09
        rrc  [ix+127],d         ; 29AB DD CB 7F 0A
        rrc  [ix+127],e         ; 29AF DD CB 7F 0B
        rrc  [ix+127],h         ; 29B3 DD CB 7F 0C
        rrc  [ix+127],l         ; 29B7 DD CB 7F 0D
        rrc  [ix]               ; 29BB DD CB 00 0E
        rrc  [ix],a             ; 29BF DD CB 00 0F
        rrc  [ix],b             ; 29C3 DD CB 00 08
        rrc  [ix],c             ; 29C7 DD CB 00 09
        rrc  [ix],d             ; 29CB DD CB 00 0A
        rrc  [ix],e             ; 29CF DD CB 00 0B
        rrc  [ix],h             ; 29D3 DD CB 00 0C
        rrc  [ix],l             ; 29D7 DD CB 00 0D
        rrc  [iy+127]           ; 29DB FD CB 7F 0E
        rrc  [iy+127],a         ; 29DF FD CB 7F 0F
        rrc  [iy+127],b         ; 29E3 FD CB 7F 08
        rrc  [iy+127],c         ; 29E7 FD CB 7F 09
        rrc  [iy+127],d         ; 29EB FD CB 7F 0A
        rrc  [iy+127],e         ; 29EF FD CB 7F 0B
        rrc  [iy+127],h         ; 29F3 FD CB 7F 0C
        rrc  [iy+127],l         ; 29F7 FD CB 7F 0D
        rrc  [iy+127]           ; 29FB FD CB 7F 0E
        rrc  [iy+127],a         ; 29FF FD CB 7F 0F
        rrc  [iy+127],b         ; 2A03 FD CB 7F 08
        rrc  [iy+127],c         ; 2A07 FD CB 7F 09
        rrc  [iy+127],d         ; 2A0B FD CB 7F 0A
        rrc  [iy+127],e         ; 2A0F FD CB 7F 0B
        rrc  [iy+127],h         ; 2A13 FD CB 7F 0C
        rrc  [iy+127],l         ; 2A17 FD CB 7F 0D
        rrc  [iy]               ; 2A1B FD CB 00 0E
        rrc  [iy],a             ; 2A1F FD CB 00 0F
        rrc  [iy],b             ; 2A23 FD CB 00 08
        rrc  [iy],c             ; 2A27 FD CB 00 09
        rrc  [iy],d             ; 2A2B FD CB 00 0A
        rrc  [iy],e             ; 2A2F FD CB 00 0B
        rrc  [iy],h             ; 2A33 FD CB 00 0C
        rrc  [iy],l             ; 2A37 FD CB 00 0D
        rrc  a                  ; 2A3B CB 0F
        rrc  b                  ; 2A3D CB 08
        rrc  c                  ; 2A3F CB 09
        rrc  d                  ; 2A41 CB 0A
        rrc  e                  ; 2A43 CB 0B
        rrc  h                  ; 2A45 CB 0C
        rrc  l                  ; 2A47 CB 0D
        rrca                    ; 2A49 0F
        RRCA                    ; 2A4A 0F
        rrd                     ; 2A4B ED 67
        RRD                     ; 2A4D ED 67
        rst  0                  ; 2A4F C7
        RST  0                  ; 2A50 C7
        rst  1                  ; 2A51 CF
        rst  16                 ; 2A52 D7
        rst  2                  ; 2A53 D7
        rst  24                 ; 2A54 DF
        rst  3                  ; 2A55 DF
        rst  32                 ; 2A56 E7
        rst  4                  ; 2A57 E7
        rst  40                 ; 2A58 EF
        rst  48                 ; 2A59 F7
        rst  5                  ; 2A5A EF
        rst  56                 ; 2A5B FF
        rst  6                  ; 2A5C F7
        rst  7                  ; 2A5D FF
        rst  8                  ; 2A5E CF
        sbc  a,(hl)             ; 2A5F 9E
        SBC  A,(HL)             ; 2A60 9E
        sbc  a,(ix)             ; 2A61 DD 9E 00
        sbc  a,(ix+127)         ; 2A64 DD 9E 7F
        sbc  a,(ix+127)         ; 2A67 DD 9E 7F
        sbc  a,(iy)             ; 2A6A FD 9E 00
        sbc  a,(iy+127)         ; 2A6D FD 9E 7F
        sbc  a,(iy+127)         ; 2A70 FD 9E 7F
        sbc  a,255              ; 2A73 DE FF
        sbc  a,[hl]             ; 2A75 9E
        sbc  a,[ix+127]         ; 2A76 DD 9E 7F
        sbc  a,[ix+127]         ; 2A79 DD 9E 7F
        sbc  a,[ix]             ; 2A7C DD 9E 00
        sbc  a,[iy+127]         ; 2A7F FD 9E 7F
        sbc  a,[iy+127]         ; 2A82 FD 9E 7F
        sbc  a,[iy]             ; 2A85 FD 9E 00
        sbc  a,a                ; 2A88 9F
        sbc  a,b                ; 2A89 98
        sbc  a,c                ; 2A8A 99
        sbc  a,d                ; 2A8B 9A
        sbc  a,e                ; 2A8C 9B
        sbc  a,h                ; 2A8D 9C
        sbc  a,hx               ; 2A8E DD 9C
        sbc  a,hy               ; 2A90 FD 9C
        sbc  a,ixh              ; 2A92 DD 9C
        sbc  a,ixl              ; 2A94 DD 9D
        sbc  a,iyh              ; 2A96 FD 9C
        sbc  a,iyl              ; 2A98 FD 9D
        sbc  a,l                ; 2A9A 9D
        sbc  a,lx               ; 2A9B DD 9D
        sbc  a,ly               ; 2A9D FD 9D
        sbc  a,xh               ; 2A9F DD 9C
        sbc  a,xl               ; 2AA1 DD 9D
        sbc  a,yh               ; 2AA3 FD 9C
        sbc  a,yl               ; 2AA5 FD 9D
        sbc  hl,bc              ; 2AA7 ED 42
        sbc  hl,de              ; 2AA9 ED 52
        sbc  hl,hl              ; 2AAB ED 62
        sbc  hl,sp              ; 2AAD ED 72
        scf                     ; 2AAF 37
        SCF                     ; 2AB0 37
        set  0,(hl)             ; 2AB1 CB C6
        SET  0,(HL)             ; 2AB3 CB C6
        set  0,(ix)             ; 2AB5 DD CB 00 C6
        set  0,(ix),a           ; 2AB9 DD CB 00 C7
        set  0,(ix),b           ; 2ABD DD CB 00 C0
        set  0,(ix),c           ; 2AC1 DD CB 00 C1
        set  0,(ix),d           ; 2AC5 DD CB 00 C2
        set  0,(ix),e           ; 2AC9 DD CB 00 C3
        set  0,(ix),h           ; 2ACD DD CB 00 C4
        set  0,(ix),l           ; 2AD1 DD CB 00 C5
        set  0,(ix+127)         ; 2AD5 DD CB 7F C6
        set  0,(ix+127),a       ; 2AD9 DD CB 7F C7
        set  0,(ix+127),b       ; 2ADD DD CB 7F C0
        set  0,(ix+127),c       ; 2AE1 DD CB 7F C1
        set  0,(ix+127),d       ; 2AE5 DD CB 7F C2
        set  0,(ix+127),e       ; 2AE9 DD CB 7F C3
        set  0,(ix+127),h       ; 2AED DD CB 7F C4
        set  0,(ix+127),l       ; 2AF1 DD CB 7F C5
        set  0,(ix+127)         ; 2AF5 DD CB 7F C6
        set  0,(ix+127),a       ; 2AF9 DD CB 7F C7
        set  0,(ix+127),b       ; 2AFD DD CB 7F C0
        set  0,(ix+127),c       ; 2B01 DD CB 7F C1
        set  0,(ix+127),d       ; 2B05 DD CB 7F C2
        set  0,(ix+127),e       ; 2B09 DD CB 7F C3
        set  0,(ix+127),h       ; 2B0D DD CB 7F C4
        set  0,(ix+127),l       ; 2B11 DD CB 7F C5
        set  0,(iy)             ; 2B15 FD CB 00 C6
        set  0,(iy),a           ; 2B19 FD CB 00 C7
        set  0,(iy),b           ; 2B1D FD CB 00 C0
        set  0,(iy),c           ; 2B21 FD CB 00 C1
        set  0,(iy),d           ; 2B25 FD CB 00 C2
        set  0,(iy),e           ; 2B29 FD CB 00 C3
        set  0,(iy),h           ; 2B2D FD CB 00 C4
        set  0,(iy),l           ; 2B31 FD CB 00 C5
        set  0,(iy+127)         ; 2B35 FD CB 7F C6
        set  0,(iy+127),a       ; 2B39 FD CB 7F C7
        set  0,(iy+127),b       ; 2B3D FD CB 7F C0
        set  0,(iy+127),c       ; 2B41 FD CB 7F C1
        set  0,(iy+127),d       ; 2B45 FD CB 7F C2
        set  0,(iy+127),e       ; 2B49 FD CB 7F C3
        set  0,(iy+127),h       ; 2B4D FD CB 7F C4
        set  0,(iy+127),l       ; 2B51 FD CB 7F C5
        set  0,(iy+127)         ; 2B55 FD CB 7F C6
        set  0,(iy+127),a       ; 2B59 FD CB 7F C7
        set  0,(iy+127),b       ; 2B5D FD CB 7F C0
        set  0,(iy+127),c       ; 2B61 FD CB 7F C1
        set  0,(iy+127),d       ; 2B65 FD CB 7F C2
        set  0,(iy+127),e       ; 2B69 FD CB 7F C3
        set  0,(iy+127),h       ; 2B6D FD CB 7F C4
        set  0,(iy+127),l       ; 2B71 FD CB 7F C5
        set  0,[hl]             ; 2B75 CB C6
        set  0,[ix+127]         ; 2B77 DD CB 7F C6
        set  0,[ix+127],a       ; 2B7B DD CB 7F C7
        set  0,[ix+127],b       ; 2B7F DD CB 7F C0
        set  0,[ix+127],c       ; 2B83 DD CB 7F C1
        set  0,[ix+127],d       ; 2B87 DD CB 7F C2
        set  0,[ix+127],e       ; 2B8B DD CB 7F C3
        set  0,[ix+127],h       ; 2B8F DD CB 7F C4
        set  0,[ix+127],l       ; 2B93 DD CB 7F C5
        set  0,[ix+127]         ; 2B97 DD CB 7F C6
        set  0,[ix+127],a       ; 2B9B DD CB 7F C7
        set  0,[ix+127],b       ; 2B9F DD CB 7F C0
        set  0,[ix+127],c       ; 2BA3 DD CB 7F C1
        set  0,[ix+127],d       ; 2BA7 DD CB 7F C2
        set  0,[ix+127],e       ; 2BAB DD CB 7F C3
        set  0,[ix+127],h       ; 2BAF DD CB 7F C4
        set  0,[ix+127],l       ; 2BB3 DD CB 7F C5
        set  0,[ix]             ; 2BB7 DD CB 00 C6
        set  0,[ix],a           ; 2BBB DD CB 00 C7
        set  0,[ix],b           ; 2BBF DD CB 00 C0
        set  0,[ix],c           ; 2BC3 DD CB 00 C1
        set  0,[ix],d           ; 2BC7 DD CB 00 C2
        set  0,[ix],e           ; 2BCB DD CB 00 C3
        set  0,[ix],h           ; 2BCF DD CB 00 C4
        set  0,[ix],l           ; 2BD3 DD CB 00 C5
        set  0,[iy+127]         ; 2BD7 FD CB 7F C6
        set  0,[iy+127],a       ; 2BDB FD CB 7F C7
        set  0,[iy+127],b       ; 2BDF FD CB 7F C0
        set  0,[iy+127],c       ; 2BE3 FD CB 7F C1
        set  0,[iy+127],d       ; 2BE7 FD CB 7F C2
        set  0,[iy+127],e       ; 2BEB FD CB 7F C3
        set  0,[iy+127],h       ; 2BEF FD CB 7F C4
        set  0,[iy+127],l       ; 2BF3 FD CB 7F C5
        set  0,[iy+127]         ; 2BF7 FD CB 7F C6
        set  0,[iy+127],a       ; 2BFB FD CB 7F C7
        set  0,[iy+127],b       ; 2BFF FD CB 7F C0
        set  0,[iy+127],c       ; 2C03 FD CB 7F C1
        set  0,[iy+127],d       ; 2C07 FD CB 7F C2
        set  0,[iy+127],e       ; 2C0B FD CB 7F C3
        set  0,[iy+127],h       ; 2C0F FD CB 7F C4
        set  0,[iy+127],l       ; 2C13 FD CB 7F C5
        set  0,[iy]             ; 2C17 FD CB 00 C6
        set  0,[iy],a           ; 2C1B FD CB 00 C7
        set  0,[iy],b           ; 2C1F FD CB 00 C0
        set  0,[iy],c           ; 2C23 FD CB 00 C1
        set  0,[iy],d           ; 2C27 FD CB 00 C2
        set  0,[iy],e           ; 2C2B FD CB 00 C3
        set  0,[iy],h           ; 2C2F FD CB 00 C4
        set  0,[iy],l           ; 2C33 FD CB 00 C5
        set  0,a                ; 2C37 CB C7
        set  0,b                ; 2C39 CB C0
        set  0,c                ; 2C3B CB C1
        set  0,d                ; 2C3D CB C2
        set  0,e                ; 2C3F CB C3
        set  0,h                ; 2C41 CB C4
        set  0,l                ; 2C43 CB C5
        set  1,(hl)             ; 2C45 CB CE
        set  1,(ix)             ; 2C47 DD CB 00 CE
        set  1,(ix),a           ; 2C4B DD CB 00 CF
        set  1,(ix),b           ; 2C4F DD CB 00 C8
        set  1,(ix),c           ; 2C53 DD CB 00 C9
        set  1,(ix),d           ; 2C57 DD CB 00 CA
        set  1,(ix),e           ; 2C5B DD CB 00 CB
        set  1,(ix),h           ; 2C5F DD CB 00 CC
        set  1,(ix),l           ; 2C63 DD CB 00 CD
        set  1,(ix+127)         ; 2C67 DD CB 7F CE
        set  1,(ix+127),a       ; 2C6B DD CB 7F CF
        set  1,(ix+127),b       ; 2C6F DD CB 7F C8
        set  1,(ix+127),c       ; 2C73 DD CB 7F C9
        set  1,(ix+127),d       ; 2C77 DD CB 7F CA
        set  1,(ix+127),e       ; 2C7B DD CB 7F CB
        set  1,(ix+127),h       ; 2C7F DD CB 7F CC
        set  1,(ix+127),l       ; 2C83 DD CB 7F CD
        set  1,(ix+127)         ; 2C87 DD CB 7F CE
        set  1,(ix+127),a       ; 2C8B DD CB 7F CF
        set  1,(ix+127),b       ; 2C8F DD CB 7F C8
        set  1,(ix+127),c       ; 2C93 DD CB 7F C9
        set  1,(ix+127),d       ; 2C97 DD CB 7F CA
        set  1,(ix+127),e       ; 2C9B DD CB 7F CB
        set  1,(ix+127),h       ; 2C9F DD CB 7F CC
        set  1,(ix+127),l       ; 2CA3 DD CB 7F CD
        set  1,(iy)             ; 2CA7 FD CB 00 CE
        set  1,(iy),a           ; 2CAB FD CB 00 CF
        set  1,(iy),b           ; 2CAF FD CB 00 C8
        set  1,(iy),c           ; 2CB3 FD CB 00 C9
        set  1,(iy),d           ; 2CB7 FD CB 00 CA
        set  1,(iy),e           ; 2CBB FD CB 00 CB
        set  1,(iy),h           ; 2CBF FD CB 00 CC
        set  1,(iy),l           ; 2CC3 FD CB 00 CD
        set  1,(iy+127)         ; 2CC7 FD CB 7F CE
        set  1,(iy+127),a       ; 2CCB FD CB 7F CF
        set  1,(iy+127),b       ; 2CCF FD CB 7F C8
        set  1,(iy+127),c       ; 2CD3 FD CB 7F C9
        set  1,(iy+127),d       ; 2CD7 FD CB 7F CA
        set  1,(iy+127),e       ; 2CDB FD CB 7F CB
        set  1,(iy+127),h       ; 2CDF FD CB 7F CC
        set  1,(iy+127),l       ; 2CE3 FD CB 7F CD
        set  1,(iy+127)         ; 2CE7 FD CB 7F CE
        set  1,(iy+127),a       ; 2CEB FD CB 7F CF
        set  1,(iy+127),b       ; 2CEF FD CB 7F C8
        set  1,(iy+127),c       ; 2CF3 FD CB 7F C9
        set  1,(iy+127),d       ; 2CF7 FD CB 7F CA
        set  1,(iy+127),e       ; 2CFB FD CB 7F CB
        set  1,(iy+127),h       ; 2CFF FD CB 7F CC
        set  1,(iy+127),l       ; 2D03 FD CB 7F CD
        set  1,[hl]             ; 2D07 CB CE
        set  1,[ix+127]         ; 2D09 DD CB 7F CE
        set  1,[ix+127],a       ; 2D0D DD CB 7F CF
        set  1,[ix+127],b       ; 2D11 DD CB 7F C8
        set  1,[ix+127],c       ; 2D15 DD CB 7F C9
        set  1,[ix+127],d       ; 2D19 DD CB 7F CA
        set  1,[ix+127],e       ; 2D1D DD CB 7F CB
        set  1,[ix+127],h       ; 2D21 DD CB 7F CC
        set  1,[ix+127],l       ; 2D25 DD CB 7F CD
        set  1,[ix+127]         ; 2D29 DD CB 7F CE
        set  1,[ix+127],a       ; 2D2D DD CB 7F CF
        set  1,[ix+127],b       ; 2D31 DD CB 7F C8
        set  1,[ix+127],c       ; 2D35 DD CB 7F C9
        set  1,[ix+127],d       ; 2D39 DD CB 7F CA
        set  1,[ix+127],e       ; 2D3D DD CB 7F CB
        set  1,[ix+127],h       ; 2D41 DD CB 7F CC
        set  1,[ix+127],l       ; 2D45 DD CB 7F CD
        set  1,[ix]             ; 2D49 DD CB 00 CE
        set  1,[ix],a           ; 2D4D DD CB 00 CF
        set  1,[ix],b           ; 2D51 DD CB 00 C8
        set  1,[ix],c           ; 2D55 DD CB 00 C9
        set  1,[ix],d           ; 2D59 DD CB 00 CA
        set  1,[ix],e           ; 2D5D DD CB 00 CB
        set  1,[ix],h           ; 2D61 DD CB 00 CC
        set  1,[ix],l           ; 2D65 DD CB 00 CD
        set  1,[iy+127]         ; 2D69 FD CB 7F CE
        set  1,[iy+127],a       ; 2D6D FD CB 7F CF
        set  1,[iy+127],b       ; 2D71 FD CB 7F C8
        set  1,[iy+127],c       ; 2D75 FD CB 7F C9
        set  1,[iy+127],d       ; 2D79 FD CB 7F CA
        set  1,[iy+127],e       ; 2D7D FD CB 7F CB
        set  1,[iy+127],h       ; 2D81 FD CB 7F CC
        set  1,[iy+127],l       ; 2D85 FD CB 7F CD
        set  1,[iy+127]         ; 2D89 FD CB 7F CE
        set  1,[iy+127],a       ; 2D8D FD CB 7F CF
        set  1,[iy+127],b       ; 2D91 FD CB 7F C8
        set  1,[iy+127],c       ; 2D95 FD CB 7F C9
        set  1,[iy+127],d       ; 2D99 FD CB 7F CA
        set  1,[iy+127],e       ; 2D9D FD CB 7F CB
        set  1,[iy+127],h       ; 2DA1 FD CB 7F CC
        set  1,[iy+127],l       ; 2DA5 FD CB 7F CD
        set  1,[iy]             ; 2DA9 FD CB 00 CE
        set  1,[iy],a           ; 2DAD FD CB 00 CF
        set  1,[iy],b           ; 2DB1 FD CB 00 C8
        set  1,[iy],c           ; 2DB5 FD CB 00 C9
        set  1,[iy],d           ; 2DB9 FD CB 00 CA
        set  1,[iy],e           ; 2DBD FD CB 00 CB
        set  1,[iy],h           ; 2DC1 FD CB 00 CC
        set  1,[iy],l           ; 2DC5 FD CB 00 CD
        set  1,a                ; 2DC9 CB CF
        set  1,b                ; 2DCB CB C8
        set  1,c                ; 2DCD CB C9
        set  1,d                ; 2DCF CB CA
        set  1,e                ; 2DD1 CB CB
        set  1,h                ; 2DD3 CB CC
        set  1,l                ; 2DD5 CB CD
        set  2,(hl)             ; 2DD7 CB D6
        set  2,(ix)             ; 2DD9 DD CB 00 D6
        set  2,(ix),a           ; 2DDD DD CB 00 D7
        set  2,(ix),b           ; 2DE1 DD CB 00 D0
        set  2,(ix),c           ; 2DE5 DD CB 00 D1
        set  2,(ix),d           ; 2DE9 DD CB 00 D2
        set  2,(ix),e           ; 2DED DD CB 00 D3
        set  2,(ix),h           ; 2DF1 DD CB 00 D4
        set  2,(ix),l           ; 2DF5 DD CB 00 D5
        set  2,(ix+127)         ; 2DF9 DD CB 7F D6
        set  2,(ix+127),a       ; 2DFD DD CB 7F D7
        set  2,(ix+127),b       ; 2E01 DD CB 7F D0
        set  2,(ix+127),c       ; 2E05 DD CB 7F D1
        set  2,(ix+127),d       ; 2E09 DD CB 7F D2
        set  2,(ix+127),e       ; 2E0D DD CB 7F D3
        set  2,(ix+127),h       ; 2E11 DD CB 7F D4
        set  2,(ix+127),l       ; 2E15 DD CB 7F D5
        set  2,(ix+127)         ; 2E19 DD CB 7F D6
        set  2,(ix+127),a       ; 2E1D DD CB 7F D7
        set  2,(ix+127),b       ; 2E21 DD CB 7F D0
        set  2,(ix+127),c       ; 2E25 DD CB 7F D1
        set  2,(ix+127),d       ; 2E29 DD CB 7F D2
        set  2,(ix+127),e       ; 2E2D DD CB 7F D3
        set  2,(ix+127),h       ; 2E31 DD CB 7F D4
        set  2,(ix+127),l       ; 2E35 DD CB 7F D5
        set  2,(iy)             ; 2E39 FD CB 00 D6
        set  2,(iy),a           ; 2E3D FD CB 00 D7
        set  2,(iy),b           ; 2E41 FD CB 00 D0
        set  2,(iy),c           ; 2E45 FD CB 00 D1
        set  2,(iy),d           ; 2E49 FD CB 00 D2
        set  2,(iy),e           ; 2E4D FD CB 00 D3
        set  2,(iy),h           ; 2E51 FD CB 00 D4
        set  2,(iy),l           ; 2E55 FD CB 00 D5
        set  2,(iy+127)         ; 2E59 FD CB 7F D6
        set  2,(iy+127),a       ; 2E5D FD CB 7F D7
        set  2,(iy+127),b       ; 2E61 FD CB 7F D0
        set  2,(iy+127),c       ; 2E65 FD CB 7F D1
        set  2,(iy+127),d       ; 2E69 FD CB 7F D2
        set  2,(iy+127),e       ; 2E6D FD CB 7F D3
        set  2,(iy+127),h       ; 2E71 FD CB 7F D4
        set  2,(iy+127),l       ; 2E75 FD CB 7F D5
        set  2,(iy+127)         ; 2E79 FD CB 7F D6
        set  2,(iy+127),a       ; 2E7D FD CB 7F D7
        set  2,(iy+127),b       ; 2E81 FD CB 7F D0
        set  2,(iy+127),c       ; 2E85 FD CB 7F D1
        set  2,(iy+127),d       ; 2E89 FD CB 7F D2
        set  2,(iy+127),e       ; 2E8D FD CB 7F D3
        set  2,(iy+127),h       ; 2E91 FD CB 7F D4
        set  2,(iy+127),l       ; 2E95 FD CB 7F D5
        set  2,[hl]             ; 2E99 CB D6
        set  2,[ix+127]         ; 2E9B DD CB 7F D6
        set  2,[ix+127],a       ; 2E9F DD CB 7F D7
        set  2,[ix+127],b       ; 2EA3 DD CB 7F D0
        set  2,[ix+127],c       ; 2EA7 DD CB 7F D1
        set  2,[ix+127],d       ; 2EAB DD CB 7F D2
        set  2,[ix+127],e       ; 2EAF DD CB 7F D3
        set  2,[ix+127],h       ; 2EB3 DD CB 7F D4
        set  2,[ix+127],l       ; 2EB7 DD CB 7F D5
        set  2,[ix+127]         ; 2EBB DD CB 7F D6
        set  2,[ix+127],a       ; 2EBF DD CB 7F D7
        set  2,[ix+127],b       ; 2EC3 DD CB 7F D0
        set  2,[ix+127],c       ; 2EC7 DD CB 7F D1
        set  2,[ix+127],d       ; 2ECB DD CB 7F D2
        set  2,[ix+127],e       ; 2ECF DD CB 7F D3
        set  2,[ix+127],h       ; 2ED3 DD CB 7F D4
        set  2,[ix+127],l       ; 2ED7 DD CB 7F D5
        set  2,[ix]             ; 2EDB DD CB 00 D6
        set  2,[ix],a           ; 2EDF DD CB 00 D7
        set  2,[ix],b           ; 2EE3 DD CB 00 D0
        set  2,[ix],c           ; 2EE7 DD CB 00 D1
        set  2,[ix],d           ; 2EEB DD CB 00 D2
        set  2,[ix],e           ; 2EEF DD CB 00 D3
        set  2,[ix],h           ; 2EF3 DD CB 00 D4
        set  2,[ix],l           ; 2EF7 DD CB 00 D5
        set  2,[iy+127]         ; 2EFB FD CB 7F D6
        set  2,[iy+127],a       ; 2EFF FD CB 7F D7
        set  2,[iy+127],b       ; 2F03 FD CB 7F D0
        set  2,[iy+127],c       ; 2F07 FD CB 7F D1
        set  2,[iy+127],d       ; 2F0B FD CB 7F D2
        set  2,[iy+127],e       ; 2F0F FD CB 7F D3
        set  2,[iy+127],h       ; 2F13 FD CB 7F D4
        set  2,[iy+127],l       ; 2F17 FD CB 7F D5
        set  2,[iy+127]         ; 2F1B FD CB 7F D6
        set  2,[iy+127],a       ; 2F1F FD CB 7F D7
        set  2,[iy+127],b       ; 2F23 FD CB 7F D0
        set  2,[iy+127],c       ; 2F27 FD CB 7F D1
        set  2,[iy+127],d       ; 2F2B FD CB 7F D2
        set  2,[iy+127],e       ; 2F2F FD CB 7F D3
        set  2,[iy+127],h       ; 2F33 FD CB 7F D4
        set  2,[iy+127],l       ; 2F37 FD CB 7F D5
        set  2,[iy]             ; 2F3B FD CB 00 D6
        set  2,[iy],a           ; 2F3F FD CB 00 D7
        set  2,[iy],b           ; 2F43 FD CB 00 D0
        set  2,[iy],c           ; 2F47 FD CB 00 D1
        set  2,[iy],d           ; 2F4B FD CB 00 D2
        set  2,[iy],e           ; 2F4F FD CB 00 D3
        set  2,[iy],h           ; 2F53 FD CB 00 D4
        set  2,[iy],l           ; 2F57 FD CB 00 D5
        set  2,a                ; 2F5B CB D7
        set  2,b                ; 2F5D CB D0
        set  2,c                ; 2F5F CB D1
        set  2,d                ; 2F61 CB D2
        set  2,e                ; 2F63 CB D3
        set  2,h                ; 2F65 CB D4
        set  2,l                ; 2F67 CB D5
        set  3,(hl)             ; 2F69 CB DE
        set  3,(ix)             ; 2F6B DD CB 00 DE
        set  3,(ix),a           ; 2F6F DD CB 00 DF
        set  3,(ix),b           ; 2F73 DD CB 00 D8
        set  3,(ix),c           ; 2F77 DD CB 00 D9
        set  3,(ix),d           ; 2F7B DD CB 00 DA
        set  3,(ix),e           ; 2F7F DD CB 00 DB
        set  3,(ix),h           ; 2F83 DD CB 00 DC
        set  3,(ix),l           ; 2F87 DD CB 00 DD
        set  3,(ix+127)         ; 2F8B DD CB 7F DE
        set  3,(ix+127),a       ; 2F8F DD CB 7F DF
        set  3,(ix+127),b       ; 2F93 DD CB 7F D8
        set  3,(ix+127),c       ; 2F97 DD CB 7F D9
        set  3,(ix+127),d       ; 2F9B DD CB 7F DA
        set  3,(ix+127),e       ; 2F9F DD CB 7F DB
        set  3,(ix+127),h       ; 2FA3 DD CB 7F DC
        set  3,(ix+127),l       ; 2FA7 DD CB 7F DD
        set  3,(ix+127)         ; 2FAB DD CB 7F DE
        set  3,(ix+127),a       ; 2FAF DD CB 7F DF
        set  3,(ix+127),b       ; 2FB3 DD CB 7F D8
        set  3,(ix+127),c       ; 2FB7 DD CB 7F D9
        set  3,(ix+127),d       ; 2FBB DD CB 7F DA
        set  3,(ix+127),e       ; 2FBF DD CB 7F DB
        set  3,(ix+127),h       ; 2FC3 DD CB 7F DC
        set  3,(ix+127),l       ; 2FC7 DD CB 7F DD
        set  3,(iy)             ; 2FCB FD CB 00 DE
        set  3,(iy),a           ; 2FCF FD CB 00 DF
        set  3,(iy),b           ; 2FD3 FD CB 00 D8
        set  3,(iy),c           ; 2FD7 FD CB 00 D9
        set  3,(iy),d           ; 2FDB FD CB 00 DA
        set  3,(iy),e           ; 2FDF FD CB 00 DB
        set  3,(iy),h           ; 2FE3 FD CB 00 DC
        set  3,(iy),l           ; 2FE7 FD CB 00 DD
        set  3,(iy+127)         ; 2FEB FD CB 7F DE
        set  3,(iy+127),a       ; 2FEF FD CB 7F DF
        set  3,(iy+127),b       ; 2FF3 FD CB 7F D8
        set  3,(iy+127),c       ; 2FF7 FD CB 7F D9
        set  3,(iy+127),d       ; 2FFB FD CB 7F DA
        set  3,(iy+127),e       ; 2FFF FD CB 7F DB
        set  3,(iy+127),h       ; 3003 FD CB 7F DC
        set  3,(iy+127),l       ; 3007 FD CB 7F DD
        set  3,(iy+127)         ; 300B FD CB 7F DE
        set  3,(iy+127),a       ; 300F FD CB 7F DF
        set  3,(iy+127),b       ; 3013 FD CB 7F D8
        set  3,(iy+127),c       ; 3017 FD CB 7F D9
        set  3,(iy+127),d       ; 301B FD CB 7F DA
        set  3,(iy+127),e       ; 301F FD CB 7F DB
        set  3,(iy+127),h       ; 3023 FD CB 7F DC
        set  3,(iy+127),l       ; 3027 FD CB 7F DD
        set  3,[hl]             ; 302B CB DE
        set  3,[ix+127]         ; 302D DD CB 7F DE
        set  3,[ix+127],a       ; 3031 DD CB 7F DF
        set  3,[ix+127],b       ; 3035 DD CB 7F D8
        set  3,[ix+127],c       ; 3039 DD CB 7F D9
        set  3,[ix+127],d       ; 303D DD CB 7F DA
        set  3,[ix+127],e       ; 3041 DD CB 7F DB
        set  3,[ix+127],h       ; 3045 DD CB 7F DC
        set  3,[ix+127],l       ; 3049 DD CB 7F DD
        set  3,[ix+127]         ; 304D DD CB 7F DE
        set  3,[ix+127],a       ; 3051 DD CB 7F DF
        set  3,[ix+127],b       ; 3055 DD CB 7F D8
        set  3,[ix+127],c       ; 3059 DD CB 7F D9
        set  3,[ix+127],d       ; 305D DD CB 7F DA
        set  3,[ix+127],e       ; 3061 DD CB 7F DB
        set  3,[ix+127],h       ; 3065 DD CB 7F DC
        set  3,[ix+127],l       ; 3069 DD CB 7F DD
        set  3,[ix]             ; 306D DD CB 00 DE
        set  3,[ix],a           ; 3071 DD CB 00 DF
        set  3,[ix],b           ; 3075 DD CB 00 D8
        set  3,[ix],c           ; 3079 DD CB 00 D9
        set  3,[ix],d           ; 307D DD CB 00 DA
        set  3,[ix],e           ; 3081 DD CB 00 DB
        set  3,[ix],h           ; 3085 DD CB 00 DC
        set  3,[ix],l           ; 3089 DD CB 00 DD
        set  3,[iy+127]         ; 308D FD CB 7F DE
        set  3,[iy+127],a       ; 3091 FD CB 7F DF
        set  3,[iy+127],b       ; 3095 FD CB 7F D8
        set  3,[iy+127],c       ; 3099 FD CB 7F D9
        set  3,[iy+127],d       ; 309D FD CB 7F DA
        set  3,[iy+127],e       ; 30A1 FD CB 7F DB
        set  3,[iy+127],h       ; 30A5 FD CB 7F DC
        set  3,[iy+127],l       ; 30A9 FD CB 7F DD
        set  3,[iy+127]         ; 30AD FD CB 7F DE
        set  3,[iy+127],a       ; 30B1 FD CB 7F DF
        set  3,[iy+127],b       ; 30B5 FD CB 7F D8
        set  3,[iy+127],c       ; 30B9 FD CB 7F D9
        set  3,[iy+127],d       ; 30BD FD CB 7F DA
        set  3,[iy+127],e       ; 30C1 FD CB 7F DB
        set  3,[iy+127],h       ; 30C5 FD CB 7F DC
        set  3,[iy+127],l       ; 30C9 FD CB 7F DD
        set  3,[iy]             ; 30CD FD CB 00 DE
        set  3,[iy],a           ; 30D1 FD CB 00 DF
        set  3,[iy],b           ; 30D5 FD CB 00 D8
        set  3,[iy],c           ; 30D9 FD CB 00 D9
        set  3,[iy],d           ; 30DD FD CB 00 DA
        set  3,[iy],e           ; 30E1 FD CB 00 DB
        set  3,[iy],h           ; 30E5 FD CB 00 DC
        set  3,[iy],l           ; 30E9 FD CB 00 DD
        set  3,a                ; 30ED CB DF
        set  3,b                ; 30EF CB D8
        set  3,c                ; 30F1 CB D9
        set  3,d                ; 30F3 CB DA
        set  3,e                ; 30F5 CB DB
        set  3,h                ; 30F7 CB DC
        set  3,l                ; 30F9 CB DD
        set  4,(hl)             ; 30FB CB E6
        set  4,(ix)             ; 30FD DD CB 00 E6
        set  4,(ix),a           ; 3101 DD CB 00 E7
        set  4,(ix),b           ; 3105 DD CB 00 E0
        set  4,(ix),c           ; 3109 DD CB 00 E1
        set  4,(ix),d           ; 310D DD CB 00 E2
        set  4,(ix),e           ; 3111 DD CB 00 E3
        set  4,(ix),h           ; 3115 DD CB 00 E4
        set  4,(ix),l           ; 3119 DD CB 00 E5
        set  4,(ix+127)         ; 311D DD CB 7F E6
        set  4,(ix+127),a       ; 3121 DD CB 7F E7
        set  4,(ix+127),b       ; 3125 DD CB 7F E0
        set  4,(ix+127),c       ; 3129 DD CB 7F E1
        set  4,(ix+127),d       ; 312D DD CB 7F E2
        set  4,(ix+127),e       ; 3131 DD CB 7F E3
        set  4,(ix+127),h       ; 3135 DD CB 7F E4
        set  4,(ix+127),l       ; 3139 DD CB 7F E5
        set  4,(ix+127)         ; 313D DD CB 7F E6
        set  4,(ix+127),a       ; 3141 DD CB 7F E7
        set  4,(ix+127),b       ; 3145 DD CB 7F E0
        set  4,(ix+127),c       ; 3149 DD CB 7F E1
        set  4,(ix+127),d       ; 314D DD CB 7F E2
        set  4,(ix+127),e       ; 3151 DD CB 7F E3
        set  4,(ix+127),h       ; 3155 DD CB 7F E4
        set  4,(ix+127),l       ; 3159 DD CB 7F E5
        set  4,(iy)             ; 315D FD CB 00 E6
        set  4,(iy),a           ; 3161 FD CB 00 E7
        set  4,(iy),b           ; 3165 FD CB 00 E0
        set  4,(iy),c           ; 3169 FD CB 00 E1
        set  4,(iy),d           ; 316D FD CB 00 E2
        set  4,(iy),e           ; 3171 FD CB 00 E3
        set  4,(iy),h           ; 3175 FD CB 00 E4
        set  4,(iy),l           ; 3179 FD CB 00 E5
        set  4,(iy+127)         ; 317D FD CB 7F E6
        set  4,(iy+127),a       ; 3181 FD CB 7F E7
        set  4,(iy+127),b       ; 3185 FD CB 7F E0
        set  4,(iy+127),c       ; 3189 FD CB 7F E1
        set  4,(iy+127),d       ; 318D FD CB 7F E2
        set  4,(iy+127),e       ; 3191 FD CB 7F E3
        set  4,(iy+127),h       ; 3195 FD CB 7F E4
        set  4,(iy+127),l       ; 3199 FD CB 7F E5
        set  4,(iy+127)         ; 319D FD CB 7F E6
        set  4,(iy+127),a       ; 31A1 FD CB 7F E7
        set  4,(iy+127),b       ; 31A5 FD CB 7F E0
        set  4,(iy+127),c       ; 31A9 FD CB 7F E1
        set  4,(iy+127),d       ; 31AD FD CB 7F E2
        set  4,(iy+127),e       ; 31B1 FD CB 7F E3
        set  4,(iy+127),h       ; 31B5 FD CB 7F E4
        set  4,(iy+127),l       ; 31B9 FD CB 7F E5
        set  4,[hl]             ; 31BD CB E6
        set  4,[ix+127]         ; 31BF DD CB 7F E6
        set  4,[ix+127],a       ; 31C3 DD CB 7F E7
        set  4,[ix+127],b       ; 31C7 DD CB 7F E0
        set  4,[ix+127],c       ; 31CB DD CB 7F E1
        set  4,[ix+127],d       ; 31CF DD CB 7F E2
        set  4,[ix+127],e       ; 31D3 DD CB 7F E3
        set  4,[ix+127],h       ; 31D7 DD CB 7F E4
        set  4,[ix+127],l       ; 31DB DD CB 7F E5
        set  4,[ix+127]         ; 31DF DD CB 7F E6
        set  4,[ix+127],a       ; 31E3 DD CB 7F E7
        set  4,[ix+127],b       ; 31E7 DD CB 7F E0
        set  4,[ix+127],c       ; 31EB DD CB 7F E1
        set  4,[ix+127],d       ; 31EF DD CB 7F E2
        set  4,[ix+127],e       ; 31F3 DD CB 7F E3
        set  4,[ix+127],h       ; 31F7 DD CB 7F E4
        set  4,[ix+127],l       ; 31FB DD CB 7F E5
        set  4,[ix]             ; 31FF DD CB 00 E6
        set  4,[ix],a           ; 3203 DD CB 00 E7
        set  4,[ix],b           ; 3207 DD CB 00 E0
        set  4,[ix],c           ; 320B DD CB 00 E1
        set  4,[ix],d           ; 320F DD CB 00 E2
        set  4,[ix],e           ; 3213 DD CB 00 E3
        set  4,[ix],h           ; 3217 DD CB 00 E4
        set  4,[ix],l           ; 321B DD CB 00 E5
        set  4,[iy+127]         ; 321F FD CB 7F E6
        set  4,[iy+127],a       ; 3223 FD CB 7F E7
        set  4,[iy+127],b       ; 3227 FD CB 7F E0
        set  4,[iy+127],c       ; 322B FD CB 7F E1
        set  4,[iy+127],d       ; 322F FD CB 7F E2
        set  4,[iy+127],e       ; 3233 FD CB 7F E3
        set  4,[iy+127],h       ; 3237 FD CB 7F E4
        set  4,[iy+127],l       ; 323B FD CB 7F E5
        set  4,[iy+127]         ; 323F FD CB 7F E6
        set  4,[iy+127],a       ; 3243 FD CB 7F E7
        set  4,[iy+127],b       ; 3247 FD CB 7F E0
        set  4,[iy+127],c       ; 324B FD CB 7F E1
        set  4,[iy+127],d       ; 324F FD CB 7F E2
        set  4,[iy+127],e       ; 3253 FD CB 7F E3
        set  4,[iy+127],h       ; 3257 FD CB 7F E4
        set  4,[iy+127],l       ; 325B FD CB 7F E5
        set  4,[iy]             ; 325F FD CB 00 E6
        set  4,[iy],a           ; 3263 FD CB 00 E7
        set  4,[iy],b           ; 3267 FD CB 00 E0
        set  4,[iy],c           ; 326B FD CB 00 E1
        set  4,[iy],d           ; 326F FD CB 00 E2
        set  4,[iy],e           ; 3273 FD CB 00 E3
        set  4,[iy],h           ; 3277 FD CB 00 E4
        set  4,[iy],l           ; 327B FD CB 00 E5
        set  4,a                ; 327F CB E7
        set  4,b                ; 3281 CB E0
        set  4,c                ; 3283 CB E1
        set  4,d                ; 3285 CB E2
        set  4,e                ; 3287 CB E3
        set  4,h                ; 3289 CB E4
        set  4,l                ; 328B CB E5
        set  5,(hl)             ; 328D CB EE
        set  5,(ix)             ; 328F DD CB 00 EE
        set  5,(ix),a           ; 3293 DD CB 00 EF
        set  5,(ix),b           ; 3297 DD CB 00 E8
        set  5,(ix),c           ; 329B DD CB 00 E9
        set  5,(ix),d           ; 329F DD CB 00 EA
        set  5,(ix),e           ; 32A3 DD CB 00 EB
        set  5,(ix),h           ; 32A7 DD CB 00 EC
        set  5,(ix),l           ; 32AB DD CB 00 ED
        set  5,(ix+127)         ; 32AF DD CB 7F EE
        set  5,(ix+127),a       ; 32B3 DD CB 7F EF
        set  5,(ix+127),b       ; 32B7 DD CB 7F E8
        set  5,(ix+127),c       ; 32BB DD CB 7F E9
        set  5,(ix+127),d       ; 32BF DD CB 7F EA
        set  5,(ix+127),e       ; 32C3 DD CB 7F EB
        set  5,(ix+127),h       ; 32C7 DD CB 7F EC
        set  5,(ix+127),l       ; 32CB DD CB 7F ED
        set  5,(ix+127)         ; 32CF DD CB 7F EE
        set  5,(ix+127),a       ; 32D3 DD CB 7F EF
        set  5,(ix+127),b       ; 32D7 DD CB 7F E8
        set  5,(ix+127),c       ; 32DB DD CB 7F E9
        set  5,(ix+127),d       ; 32DF DD CB 7F EA
        set  5,(ix+127),e       ; 32E3 DD CB 7F EB
        set  5,(ix+127),h       ; 32E7 DD CB 7F EC
        set  5,(ix+127),l       ; 32EB DD CB 7F ED
        set  5,(iy)             ; 32EF FD CB 00 EE
        set  5,(iy),a           ; 32F3 FD CB 00 EF
        set  5,(iy),b           ; 32F7 FD CB 00 E8
        set  5,(iy),c           ; 32FB FD CB 00 E9
        set  5,(iy),d           ; 32FF FD CB 00 EA
        set  5,(iy),e           ; 3303 FD CB 00 EB
        set  5,(iy),h           ; 3307 FD CB 00 EC
        set  5,(iy),l           ; 330B FD CB 00 ED
        set  5,(iy+127)         ; 330F FD CB 7F EE
        set  5,(iy+127),a       ; 3313 FD CB 7F EF
        set  5,(iy+127),b       ; 3317 FD CB 7F E8
        set  5,(iy+127),c       ; 331B FD CB 7F E9
        set  5,(iy+127),d       ; 331F FD CB 7F EA
        set  5,(iy+127),e       ; 3323 FD CB 7F EB
        set  5,(iy+127),h       ; 3327 FD CB 7F EC
        set  5,(iy+127),l       ; 332B FD CB 7F ED
        set  5,(iy+127)         ; 332F FD CB 7F EE
        set  5,(iy+127),a       ; 3333 FD CB 7F EF
        set  5,(iy+127),b       ; 3337 FD CB 7F E8
        set  5,(iy+127),c       ; 333B FD CB 7F E9
        set  5,(iy+127),d       ; 333F FD CB 7F EA
        set  5,(iy+127),e       ; 3343 FD CB 7F EB
        set  5,(iy+127),h       ; 3347 FD CB 7F EC
        set  5,(iy+127),l       ; 334B FD CB 7F ED
        set  5,[hl]             ; 334F CB EE
        set  5,[ix+127]         ; 3351 DD CB 7F EE
        set  5,[ix+127],a       ; 3355 DD CB 7F EF
        set  5,[ix+127],b       ; 3359 DD CB 7F E8
        set  5,[ix+127],c       ; 335D DD CB 7F E9
        set  5,[ix+127],d       ; 3361 DD CB 7F EA
        set  5,[ix+127],e       ; 3365 DD CB 7F EB
        set  5,[ix+127],h       ; 3369 DD CB 7F EC
        set  5,[ix+127],l       ; 336D DD CB 7F ED
        set  5,[ix+127]         ; 3371 DD CB 7F EE
        set  5,[ix+127],a       ; 3375 DD CB 7F EF
        set  5,[ix+127],b       ; 3379 DD CB 7F E8
        set  5,[ix+127],c       ; 337D DD CB 7F E9
        set  5,[ix+127],d       ; 3381 DD CB 7F EA
        set  5,[ix+127],e       ; 3385 DD CB 7F EB
        set  5,[ix+127],h       ; 3389 DD CB 7F EC
        set  5,[ix+127],l       ; 338D DD CB 7F ED
        set  5,[ix]             ; 3391 DD CB 00 EE
        set  5,[ix],a           ; 3395 DD CB 00 EF
        set  5,[ix],b           ; 3399 DD CB 00 E8
        set  5,[ix],c           ; 339D DD CB 00 E9
        set  5,[ix],d           ; 33A1 DD CB 00 EA
        set  5,[ix],e           ; 33A5 DD CB 00 EB
        set  5,[ix],h           ; 33A9 DD CB 00 EC
        set  5,[ix],l           ; 33AD DD CB 00 ED
        set  5,[iy+127]         ; 33B1 FD CB 7F EE
        set  5,[iy+127],a       ; 33B5 FD CB 7F EF
        set  5,[iy+127],b       ; 33B9 FD CB 7F E8
        set  5,[iy+127],c       ; 33BD FD CB 7F E9
        set  5,[iy+127],d       ; 33C1 FD CB 7F EA
        set  5,[iy+127],e       ; 33C5 FD CB 7F EB
        set  5,[iy+127],h       ; 33C9 FD CB 7F EC
        set  5,[iy+127],l       ; 33CD FD CB 7F ED
        set  5,[iy+127]         ; 33D1 FD CB 7F EE
        set  5,[iy+127],a       ; 33D5 FD CB 7F EF
        set  5,[iy+127],b       ; 33D9 FD CB 7F E8
        set  5,[iy+127],c       ; 33DD FD CB 7F E9
        set  5,[iy+127],d       ; 33E1 FD CB 7F EA
        set  5,[iy+127],e       ; 33E5 FD CB 7F EB
        set  5,[iy+127],h       ; 33E9 FD CB 7F EC
        set  5,[iy+127],l       ; 33ED FD CB 7F ED
        set  5,[iy]             ; 33F1 FD CB 00 EE
        set  5,[iy],a           ; 33F5 FD CB 00 EF
        set  5,[iy],b           ; 33F9 FD CB 00 E8
        set  5,[iy],c           ; 33FD FD CB 00 E9
        set  5,[iy],d           ; 3401 FD CB 00 EA
        set  5,[iy],e           ; 3405 FD CB 00 EB
        set  5,[iy],h           ; 3409 FD CB 00 EC
        set  5,[iy],l           ; 340D FD CB 00 ED
        set  5,a                ; 3411 CB EF
        set  5,b                ; 3413 CB E8
        set  5,c                ; 3415 CB E9
        set  5,d                ; 3417 CB EA
        set  5,e                ; 3419 CB EB
        set  5,h                ; 341B CB EC
        set  5,l                ; 341D CB ED
        set  6,(hl)             ; 341F CB F6
        set  6,(ix)             ; 3421 DD CB 00 F6
        set  6,(ix),a           ; 3425 DD CB 00 F7
        set  6,(ix),b           ; 3429 DD CB 00 F0
        set  6,(ix),c           ; 342D DD CB 00 F1
        set  6,(ix),d           ; 3431 DD CB 00 F2
        set  6,(ix),e           ; 3435 DD CB 00 F3
        set  6,(ix),h           ; 3439 DD CB 00 F4
        set  6,(ix),l           ; 343D DD CB 00 F5
        set  6,(ix+127)         ; 3441 DD CB 7F F6
        set  6,(ix+127),a       ; 3445 DD CB 7F F7
        set  6,(ix+127),b       ; 3449 DD CB 7F F0
        set  6,(ix+127),c       ; 344D DD CB 7F F1
        set  6,(ix+127),d       ; 3451 DD CB 7F F2
        set  6,(ix+127),e       ; 3455 DD CB 7F F3
        set  6,(ix+127),h       ; 3459 DD CB 7F F4
        set  6,(ix+127),l       ; 345D DD CB 7F F5
        set  6,(ix+127)         ; 3461 DD CB 7F F6
        set  6,(ix+127),a       ; 3465 DD CB 7F F7
        set  6,(ix+127),b       ; 3469 DD CB 7F F0
        set  6,(ix+127),c       ; 346D DD CB 7F F1
        set  6,(ix+127),d       ; 3471 DD CB 7F F2
        set  6,(ix+127),e       ; 3475 DD CB 7F F3
        set  6,(ix+127),h       ; 3479 DD CB 7F F4
        set  6,(ix+127),l       ; 347D DD CB 7F F5
        set  6,(iy)             ; 3481 FD CB 00 F6
        set  6,(iy),a           ; 3485 FD CB 00 F7
        set  6,(iy),b           ; 3489 FD CB 00 F0
        set  6,(iy),c           ; 348D FD CB 00 F1
        set  6,(iy),d           ; 3491 FD CB 00 F2
        set  6,(iy),e           ; 3495 FD CB 00 F3
        set  6,(iy),h           ; 3499 FD CB 00 F4
        set  6,(iy),l           ; 349D FD CB 00 F5
        set  6,(iy+127)         ; 34A1 FD CB 7F F6
        set  6,(iy+127),a       ; 34A5 FD CB 7F F7
        set  6,(iy+127),b       ; 34A9 FD CB 7F F0
        set  6,(iy+127),c       ; 34AD FD CB 7F F1
        set  6,(iy+127),d       ; 34B1 FD CB 7F F2
        set  6,(iy+127),e       ; 34B5 FD CB 7F F3
        set  6,(iy+127),h       ; 34B9 FD CB 7F F4
        set  6,(iy+127),l       ; 34BD FD CB 7F F5
        set  6,(iy+127)         ; 34C1 FD CB 7F F6
        set  6,(iy+127),a       ; 34C5 FD CB 7F F7
        set  6,(iy+127),b       ; 34C9 FD CB 7F F0
        set  6,(iy+127),c       ; 34CD FD CB 7F F1
        set  6,(iy+127),d       ; 34D1 FD CB 7F F2
        set  6,(iy+127),e       ; 34D5 FD CB 7F F3
        set  6,(iy+127),h       ; 34D9 FD CB 7F F4
        set  6,(iy+127),l       ; 34DD FD CB 7F F5
        set  6,[hl]             ; 34E1 CB F6
        set  6,[ix+127]         ; 34E3 DD CB 7F F6
        set  6,[ix+127],a       ; 34E7 DD CB 7F F7
        set  6,[ix+127],b       ; 34EB DD CB 7F F0
        set  6,[ix+127],c       ; 34EF DD CB 7F F1
        set  6,[ix+127],d       ; 34F3 DD CB 7F F2
        set  6,[ix+127],e       ; 34F7 DD CB 7F F3
        set  6,[ix+127],h       ; 34FB DD CB 7F F4
        set  6,[ix+127],l       ; 34FF DD CB 7F F5
        set  6,[ix+127]         ; 3503 DD CB 7F F6
        set  6,[ix+127],a       ; 3507 DD CB 7F F7
        set  6,[ix+127],b       ; 350B DD CB 7F F0
        set  6,[ix+127],c       ; 350F DD CB 7F F1
        set  6,[ix+127],d       ; 3513 DD CB 7F F2
        set  6,[ix+127],e       ; 3517 DD CB 7F F3
        set  6,[ix+127],h       ; 351B DD CB 7F F4
        set  6,[ix+127],l       ; 351F DD CB 7F F5
        set  6,[ix]             ; 3523 DD CB 00 F6
        set  6,[ix],a           ; 3527 DD CB 00 F7
        set  6,[ix],b           ; 352B DD CB 00 F0
        set  6,[ix],c           ; 352F DD CB 00 F1
        set  6,[ix],d           ; 3533 DD CB 00 F2
        set  6,[ix],e           ; 3537 DD CB 00 F3
        set  6,[ix],h           ; 353B DD CB 00 F4
        set  6,[ix],l           ; 353F DD CB 00 F5
        set  6,[iy+127]         ; 3543 FD CB 7F F6
        set  6,[iy+127],a       ; 3547 FD CB 7F F7
        set  6,[iy+127],b       ; 354B FD CB 7F F0
        set  6,[iy+127],c       ; 354F FD CB 7F F1
        set  6,[iy+127],d       ; 3553 FD CB 7F F2
        set  6,[iy+127],e       ; 3557 FD CB 7F F3
        set  6,[iy+127],h       ; 355B FD CB 7F F4
        set  6,[iy+127],l       ; 355F FD CB 7F F5
        set  6,[iy+127]         ; 3563 FD CB 7F F6
        set  6,[iy+127],a       ; 3567 FD CB 7F F7
        set  6,[iy+127],b       ; 356B FD CB 7F F0
        set  6,[iy+127],c       ; 356F FD CB 7F F1
        set  6,[iy+127],d       ; 3573 FD CB 7F F2
        set  6,[iy+127],e       ; 3577 FD CB 7F F3
        set  6,[iy+127],h       ; 357B FD CB 7F F4
        set  6,[iy+127],l       ; 357F FD CB 7F F5
        set  6,[iy]             ; 3583 FD CB 00 F6
        set  6,[iy],a           ; 3587 FD CB 00 F7
        set  6,[iy],b           ; 358B FD CB 00 F0
        set  6,[iy],c           ; 358F FD CB 00 F1
        set  6,[iy],d           ; 3593 FD CB 00 F2
        set  6,[iy],e           ; 3597 FD CB 00 F3
        set  6,[iy],h           ; 359B FD CB 00 F4
        set  6,[iy],l           ; 359F FD CB 00 F5
        set  6,a                ; 35A3 CB F7
        set  6,b                ; 35A5 CB F0
        set  6,c                ; 35A7 CB F1
        set  6,d                ; 35A9 CB F2
        set  6,e                ; 35AB CB F3
        set  6,h                ; 35AD CB F4
        set  6,l                ; 35AF CB F5
        set  7,(hl)             ; 35B1 CB FE
        set  7,(ix)             ; 35B3 DD CB 00 FE
        set  7,(ix),a           ; 35B7 DD CB 00 FF
        set  7,(ix),b           ; 35BB DD CB 00 F8
        set  7,(ix),c           ; 35BF DD CB 00 F9
        set  7,(ix),d           ; 35C3 DD CB 00 FA
        set  7,(ix),e           ; 35C7 DD CB 00 FB
        set  7,(ix),h           ; 35CB DD CB 00 FC
        set  7,(ix),l           ; 35CF DD CB 00 FD
        set  7,(ix+127)         ; 35D3 DD CB 7F FE
        set  7,(ix+127),a       ; 35D7 DD CB 7F FF
        set  7,(ix+127),b       ; 35DB DD CB 7F F8
        set  7,(ix+127),c       ; 35DF DD CB 7F F9
        set  7,(ix+127),d       ; 35E3 DD CB 7F FA
        set  7,(ix+127),e       ; 35E7 DD CB 7F FB
        set  7,(ix+127),h       ; 35EB DD CB 7F FC
        set  7,(ix+127),l       ; 35EF DD CB 7F FD
        set  7,(ix+127)         ; 35F3 DD CB 7F FE
        set  7,(ix+127),a       ; 35F7 DD CB 7F FF
        set  7,(ix+127),b       ; 35FB DD CB 7F F8
        set  7,(ix+127),c       ; 35FF DD CB 7F F9
        set  7,(ix+127),d       ; 3603 DD CB 7F FA
        set  7,(ix+127),e       ; 3607 DD CB 7F FB
        set  7,(ix+127),h       ; 360B DD CB 7F FC
        set  7,(ix+127),l       ; 360F DD CB 7F FD
        set  7,(iy)             ; 3613 FD CB 00 FE
        set  7,(iy),a           ; 3617 FD CB 00 FF
        set  7,(iy),b           ; 361B FD CB 00 F8
        set  7,(iy),c           ; 361F FD CB 00 F9
        set  7,(iy),d           ; 3623 FD CB 00 FA
        set  7,(iy),e           ; 3627 FD CB 00 FB
        set  7,(iy),h           ; 362B FD CB 00 FC
        set  7,(iy),l           ; 362F FD CB 00 FD
        set  7,(iy+127)         ; 3633 FD CB 7F FE
        set  7,(iy+127),a       ; 3637 FD CB 7F FF
        set  7,(iy+127),b       ; 363B FD CB 7F F8
        set  7,(iy+127),c       ; 363F FD CB 7F F9
        set  7,(iy+127),d       ; 3643 FD CB 7F FA
        set  7,(iy+127),e       ; 3647 FD CB 7F FB
        set  7,(iy+127),h       ; 364B FD CB 7F FC
        set  7,(iy+127),l       ; 364F FD CB 7F FD
        set  7,(iy+127)         ; 3653 FD CB 7F FE
        set  7,(iy+127),a       ; 3657 FD CB 7F FF
        set  7,(iy+127),b       ; 365B FD CB 7F F8
        set  7,(iy+127),c       ; 365F FD CB 7F F9
        set  7,(iy+127),d       ; 3663 FD CB 7F FA
        set  7,(iy+127),e       ; 3667 FD CB 7F FB
        set  7,(iy+127),h       ; 366B FD CB 7F FC
        set  7,(iy+127),l       ; 366F FD CB 7F FD
        set  7,[hl]             ; 3673 CB FE
        set  7,[ix+127]         ; 3675 DD CB 7F FE
        set  7,[ix+127],a       ; 3679 DD CB 7F FF
        set  7,[ix+127],b       ; 367D DD CB 7F F8
        set  7,[ix+127],c       ; 3681 DD CB 7F F9
        set  7,[ix+127],d       ; 3685 DD CB 7F FA
        set  7,[ix+127],e       ; 3689 DD CB 7F FB
        set  7,[ix+127],h       ; 368D DD CB 7F FC
        set  7,[ix+127],l       ; 3691 DD CB 7F FD
        set  7,[ix+127]         ; 3695 DD CB 7F FE
        set  7,[ix+127],a       ; 3699 DD CB 7F FF
        set  7,[ix+127],b       ; 369D DD CB 7F F8
        set  7,[ix+127],c       ; 36A1 DD CB 7F F9
        set  7,[ix+127],d       ; 36A5 DD CB 7F FA
        set  7,[ix+127],e       ; 36A9 DD CB 7F FB
        set  7,[ix+127],h       ; 36AD DD CB 7F FC
        set  7,[ix+127],l       ; 36B1 DD CB 7F FD
        set  7,[ix]             ; 36B5 DD CB 00 FE
        set  7,[ix],a           ; 36B9 DD CB 00 FF
        set  7,[ix],b           ; 36BD DD CB 00 F8
        set  7,[ix],c           ; 36C1 DD CB 00 F9
        set  7,[ix],d           ; 36C5 DD CB 00 FA
        set  7,[ix],e           ; 36C9 DD CB 00 FB
        set  7,[ix],h           ; 36CD DD CB 00 FC
        set  7,[ix],l           ; 36D1 DD CB 00 FD
        set  7,[iy+127]         ; 36D5 FD CB 7F FE
        set  7,[iy+127],a       ; 36D9 FD CB 7F FF
        set  7,[iy+127],b       ; 36DD FD CB 7F F8
        set  7,[iy+127],c       ; 36E1 FD CB 7F F9
        set  7,[iy+127],d       ; 36E5 FD CB 7F FA
        set  7,[iy+127],e       ; 36E9 FD CB 7F FB
        set  7,[iy+127],h       ; 36ED FD CB 7F FC
        set  7,[iy+127],l       ; 36F1 FD CB 7F FD
        set  7,[iy+127]         ; 36F5 FD CB 7F FE
        set  7,[iy+127],a       ; 36F9 FD CB 7F FF
        set  7,[iy+127],b       ; 36FD FD CB 7F F8
        set  7,[iy+127],c       ; 3701 FD CB 7F F9
        set  7,[iy+127],d       ; 3705 FD CB 7F FA
        set  7,[iy+127],e       ; 3709 FD CB 7F FB
        set  7,[iy+127],h       ; 370D FD CB 7F FC
        set  7,[iy+127],l       ; 3711 FD CB 7F FD
        set  7,[iy]             ; 3715 FD CB 00 FE
        set  7,[iy],a           ; 3719 FD CB 00 FF
        set  7,[iy],b           ; 371D FD CB 00 F8
        set  7,[iy],c           ; 3721 FD CB 00 F9
        set  7,[iy],d           ; 3725 FD CB 00 FA
        set  7,[iy],e           ; 3729 FD CB 00 FB
        set  7,[iy],h           ; 372D FD CB 00 FC
        set  7,[iy],l           ; 3731 FD CB 00 FD
        set  7,a                ; 3735 CB FF
        set  7,b                ; 3737 CB F8
        set  7,c                ; 3739 CB F9
        set  7,d                ; 373B CB FA
        set  7,e                ; 373D CB FB
        set  7,h                ; 373F CB FC
        set  7,l                ; 3741 CB FD
        sla  (hl)               ; 3743 CB 26
        SLA  (HL)               ; 3745 CB 26
        sla  (ix)               ; 3747 DD CB 00 26
        sla  (ix),a             ; 374B DD CB 00 27
        sla  (ix),b             ; 374F DD CB 00 20
        sla  (ix),c             ; 3753 DD CB 00 21
        sla  (ix),d             ; 3757 DD CB 00 22
        sla  (ix),e             ; 375B DD CB 00 23
        sla  (ix),h             ; 375F DD CB 00 24
        sla  (ix),l             ; 3763 DD CB 00 25
        sla  (ix+127)           ; 3767 DD CB 7F 26
        sla  (ix+127),a         ; 376B DD CB 7F 27
        sla  (ix+127),b         ; 376F DD CB 7F 20
        sla  (ix+127),c         ; 3773 DD CB 7F 21
        sla  (ix+127),d         ; 3777 DD CB 7F 22
        sla  (ix+127),e         ; 377B DD CB 7F 23
        sla  (ix+127),h         ; 377F DD CB 7F 24
        sla  (ix+127),l         ; 3783 DD CB 7F 25
        sla  (ix+127)           ; 3787 DD CB 7F 26
        sla  (ix+127),a         ; 378B DD CB 7F 27
        sla  (ix+127),b         ; 378F DD CB 7F 20
        sla  (ix+127),c         ; 3793 DD CB 7F 21
        sla  (ix+127),d         ; 3797 DD CB 7F 22
        sla  (ix+127),e         ; 379B DD CB 7F 23
        sla  (ix+127),h         ; 379F DD CB 7F 24
        sla  (ix+127),l         ; 37A3 DD CB 7F 25
        sla  (iy)               ; 37A7 FD CB 00 26
        sla  (iy),a             ; 37AB FD CB 00 27
        sla  (iy),b             ; 37AF FD CB 00 20
        sla  (iy),c             ; 37B3 FD CB 00 21
        sla  (iy),d             ; 37B7 FD CB 00 22
        sla  (iy),e             ; 37BB FD CB 00 23
        sla  (iy),h             ; 37BF FD CB 00 24
        sla  (iy),l             ; 37C3 FD CB 00 25
        sla  (iy+127)           ; 37C7 FD CB 7F 26
        sla  (iy+127),a         ; 37CB FD CB 7F 27
        sla  (iy+127),b         ; 37CF FD CB 7F 20
        sla  (iy+127),c         ; 37D3 FD CB 7F 21
        sla  (iy+127),d         ; 37D7 FD CB 7F 22
        sla  (iy+127),e         ; 37DB FD CB 7F 23
        sla  (iy+127),h         ; 37DF FD CB 7F 24
        sla  (iy+127),l         ; 37E3 FD CB 7F 25
        sla  (iy+127)           ; 37E7 FD CB 7F 26
        sla  (iy+127),a         ; 37EB FD CB 7F 27
        sla  (iy+127),b         ; 37EF FD CB 7F 20
        sla  (iy+127),c         ; 37F3 FD CB 7F 21
        sla  (iy+127),d         ; 37F7 FD CB 7F 22
        sla  (iy+127),e         ; 37FB FD CB 7F 23
        sla  (iy+127),h         ; 37FF FD CB 7F 24
        sla  (iy+127),l         ; 3803 FD CB 7F 25
        sla  [hl]               ; 3807 CB 26
        sla  [ix+127]           ; 3809 DD CB 7F 26
        sla  [ix+127],a         ; 380D DD CB 7F 27
        sla  [ix+127],b         ; 3811 DD CB 7F 20
        sla  [ix+127],c         ; 3815 DD CB 7F 21
        sla  [ix+127],d         ; 3819 DD CB 7F 22
        sla  [ix+127],e         ; 381D DD CB 7F 23
        sla  [ix+127],h         ; 3821 DD CB 7F 24
        sla  [ix+127],l         ; 3825 DD CB 7F 25
        sla  [ix+127]           ; 3829 DD CB 7F 26
        sla  [ix+127],a         ; 382D DD CB 7F 27
        sla  [ix+127],b         ; 3831 DD CB 7F 20
        sla  [ix+127],c         ; 3835 DD CB 7F 21
        sla  [ix+127],d         ; 3839 DD CB 7F 22
        sla  [ix+127],e         ; 383D DD CB 7F 23
        sla  [ix+127],h         ; 3841 DD CB 7F 24
        sla  [ix+127],l         ; 3845 DD CB 7F 25
        sla  [ix]               ; 3849 DD CB 00 26
        sla  [ix],a             ; 384D DD CB 00 27
        sla  [ix],b             ; 3851 DD CB 00 20
        sla  [ix],c             ; 3855 DD CB 00 21
        sla  [ix],d             ; 3859 DD CB 00 22
        sla  [ix],e             ; 385D DD CB 00 23
        sla  [ix],h             ; 3861 DD CB 00 24
        sla  [ix],l             ; 3865 DD CB 00 25
        sla  [iy+127]           ; 3869 FD CB 7F 26
        sla  [iy+127],a         ; 386D FD CB 7F 27
        sla  [iy+127],b         ; 3871 FD CB 7F 20
        sla  [iy+127],c         ; 3875 FD CB 7F 21
        sla  [iy+127],d         ; 3879 FD CB 7F 22
        sla  [iy+127],e         ; 387D FD CB 7F 23
        sla  [iy+127],h         ; 3881 FD CB 7F 24
        sla  [iy+127],l         ; 3885 FD CB 7F 25
        sla  [iy+127]           ; 3889 FD CB 7F 26
        sla  [iy+127],a         ; 388D FD CB 7F 27
        sla  [iy+127],b         ; 3891 FD CB 7F 20
        sla  [iy+127],c         ; 3895 FD CB 7F 21
        sla  [iy+127],d         ; 3899 FD CB 7F 22
        sla  [iy+127],e         ; 389D FD CB 7F 23
        sla  [iy+127],h         ; 38A1 FD CB 7F 24
        sla  [iy+127],l         ; 38A5 FD CB 7F 25
        sla  [iy]               ; 38A9 FD CB 00 26
        sla  [iy],a             ; 38AD FD CB 00 27
        sla  [iy],b             ; 38B1 FD CB 00 20
        sla  [iy],c             ; 38B5 FD CB 00 21
        sla  [iy],d             ; 38B9 FD CB 00 22
        sla  [iy],e             ; 38BD FD CB 00 23
        sla  [iy],h             ; 38C1 FD CB 00 24
        sla  [iy],l             ; 38C5 FD CB 00 25
        sla  a                  ; 38C9 CB 27
        sla  b                  ; 38CB CB 20
        sla  bc                 ; 38CD CB 21 CB 10
        sla  c                  ; 38D1 CB 21
        sla  d                  ; 38D3 CB 22
        sla  de                 ; 38D5 CB 23 CB 12
        sla  e                  ; 38D9 CB 23
        sla  h                  ; 38DB CB 24
        sla  hl                 ; 38DD 29
        sla  l                  ; 38DE CB 25
        sli  (hl)               ; 38E0 CB 36
        SLI  (HL)               ; 38E2 CB 36
        sli  (ix)               ; 38E4 DD CB 00 36
        sli  (ix),a             ; 38E8 DD CB 00 37
        sli  (ix),b             ; 38EC DD CB 00 30
        sli  (ix),c             ; 38F0 DD CB 00 31
        sli  (ix),d             ; 38F4 DD CB 00 32
        sli  (ix),e             ; 38F8 DD CB 00 33
        sli  (ix),h             ; 38FC DD CB 00 34
        sli  (ix),l             ; 3900 DD CB 00 35
        sli  (ix+127)           ; 3904 DD CB 7F 36
        sli  (ix+127),a         ; 3908 DD CB 7F 37
        sli  (ix+127),b         ; 390C DD CB 7F 30
        sli  (ix+127),c         ; 3910 DD CB 7F 31
        sli  (ix+127),d         ; 3914 DD CB 7F 32
        sli  (ix+127),e         ; 3918 DD CB 7F 33
        sli  (ix+127),h         ; 391C DD CB 7F 34
        sli  (ix+127),l         ; 3920 DD CB 7F 35
        sli  (ix+127)           ; 3924 DD CB 7F 36
        sli  (ix+127),a         ; 3928 DD CB 7F 37
        sli  (ix+127),b         ; 392C DD CB 7F 30
        sli  (ix+127),c         ; 3930 DD CB 7F 31
        sli  (ix+127),d         ; 3934 DD CB 7F 32
        sli  (ix+127),e         ; 3938 DD CB 7F 33
        sli  (ix+127),h         ; 393C DD CB 7F 34
        sli  (ix+127),l         ; 3940 DD CB 7F 35
        sli  (iy)               ; 3944 FD CB 00 36
        sli  (iy),a             ; 3948 FD CB 00 37
        sli  (iy),b             ; 394C FD CB 00 30
        sli  (iy),c             ; 3950 FD CB 00 31
        sli  (iy),d             ; 3954 FD CB 00 32
        sli  (iy),e             ; 3958 FD CB 00 33
        sli  (iy),h             ; 395C FD CB 00 34
        sli  (iy),l             ; 3960 FD CB 00 35
        sli  (iy+127)           ; 3964 FD CB 7F 36
        sli  (iy+127),a         ; 3968 FD CB 7F 37
        sli  (iy+127),b         ; 396C FD CB 7F 30
        sli  (iy+127),c         ; 3970 FD CB 7F 31
        sli  (iy+127),d         ; 3974 FD CB 7F 32
        sli  (iy+127),e         ; 3978 FD CB 7F 33
        sli  (iy+127),h         ; 397C FD CB 7F 34
        sli  (iy+127),l         ; 3980 FD CB 7F 35
        sli  (iy+127)           ; 3984 FD CB 7F 36
        sli  (iy+127),a         ; 3988 FD CB 7F 37
        sli  (iy+127),b         ; 398C FD CB 7F 30
        sli  (iy+127),c         ; 3990 FD CB 7F 31
        sli  (iy+127),d         ; 3994 FD CB 7F 32
        sli  (iy+127),e         ; 3998 FD CB 7F 33
        sli  (iy+127),h         ; 399C FD CB 7F 34
        sli  (iy+127),l         ; 39A0 FD CB 7F 35
        sli  [hl]               ; 39A4 CB 36
        sli  [ix+127]           ; 39A6 DD CB 7F 36
        sli  [ix+127],a         ; 39AA DD CB 7F 37
        sli  [ix+127],b         ; 39AE DD CB 7F 30
        sli  [ix+127],c         ; 39B2 DD CB 7F 31
        sli  [ix+127],d         ; 39B6 DD CB 7F 32
        sli  [ix+127],e         ; 39BA DD CB 7F 33
        sli  [ix+127],h         ; 39BE DD CB 7F 34
        sli  [ix+127],l         ; 39C2 DD CB 7F 35
        sli  [ix+127]           ; 39C6 DD CB 7F 36
        sli  [ix+127],a         ; 39CA DD CB 7F 37
        sli  [ix+127],b         ; 39CE DD CB 7F 30
        sli  [ix+127],c         ; 39D2 DD CB 7F 31
        sli  [ix+127],d         ; 39D6 DD CB 7F 32
        sli  [ix+127],e         ; 39DA DD CB 7F 33
        sli  [ix+127],h         ; 39DE DD CB 7F 34
        sli  [ix+127],l         ; 39E2 DD CB 7F 35
        sli  [ix]               ; 39E6 DD CB 00 36
        sli  [ix],a             ; 39EA DD CB 00 37
        sli  [ix],b             ; 39EE DD CB 00 30
        sli  [ix],c             ; 39F2 DD CB 00 31
        sli  [ix],d             ; 39F6 DD CB 00 32
        sli  [ix],e             ; 39FA DD CB 00 33
        sli  [ix],h             ; 39FE DD CB 00 34
        sli  [ix],l             ; 3A02 DD CB 00 35
        sli  [iy+127]           ; 3A06 FD CB 7F 36
        sli  [iy+127],a         ; 3A0A FD CB 7F 37
        sli  [iy+127],b         ; 3A0E FD CB 7F 30
        sli  [iy+127],c         ; 3A12 FD CB 7F 31
        sli  [iy+127],d         ; 3A16 FD CB 7F 32
        sli  [iy+127],e         ; 3A1A FD CB 7F 33
        sli  [iy+127],h         ; 3A1E FD CB 7F 34
        sli  [iy+127],l         ; 3A22 FD CB 7F 35
        sli  [iy+127]           ; 3A26 FD CB 7F 36
        sli  [iy+127],a         ; 3A2A FD CB 7F 37
        sli  [iy+127],b         ; 3A2E FD CB 7F 30
        sli  [iy+127],c         ; 3A32 FD CB 7F 31
        sli  [iy+127],d         ; 3A36 FD CB 7F 32
        sli  [iy+127],e         ; 3A3A FD CB 7F 33
        sli  [iy+127],h         ; 3A3E FD CB 7F 34
        sli  [iy+127],l         ; 3A42 FD CB 7F 35
        sli  [iy]               ; 3A46 FD CB 00 36
        sli  [iy],a             ; 3A4A FD CB 00 37
        sli  [iy],b             ; 3A4E FD CB 00 30
        sli  [iy],c             ; 3A52 FD CB 00 31
        sli  [iy],d             ; 3A56 FD CB 00 32
        sli  [iy],e             ; 3A5A FD CB 00 33
        sli  [iy],h             ; 3A5E FD CB 00 34
        sli  [iy],l             ; 3A62 FD CB 00 35
        sli  a                  ; 3A66 CB 37
        sli  b                  ; 3A68 CB 30
        sli  bc                 ; 3A6A CB 31 CB 10
        sli  c                  ; 3A6E CB 31
        sli  d                  ; 3A70 CB 32
        sli  de                 ; 3A72 CB 33 CB 12
        sli  e                  ; 3A76 CB 33
        sli  h                  ; 3A78 CB 34
        sli  hl                 ; 3A7A CB 35 CB 14
        sli  l                  ; 3A7E CB 35
        sll  (hl)               ; 3A80 CB 36
        SLL  (HL)               ; 3A82 CB 36
        sll  (ix)               ; 3A84 DD CB 00 36
        sll  (ix),a             ; 3A88 DD CB 00 37
        sll  (ix),b             ; 3A8C DD CB 00 30
        sll  (ix),c             ; 3A90 DD CB 00 31
        sll  (ix),d             ; 3A94 DD CB 00 32
        sll  (ix),e             ; 3A98 DD CB 00 33
        sll  (ix),h             ; 3A9C DD CB 00 34
        sll  (ix),l             ; 3AA0 DD CB 00 35
        sll  (ix+127)           ; 3AA4 DD CB 7F 36
        sll  (ix+127),a         ; 3AA8 DD CB 7F 37
        sll  (ix+127),b         ; 3AAC DD CB 7F 30
        sll  (ix+127),c         ; 3AB0 DD CB 7F 31
        sll  (ix+127),d         ; 3AB4 DD CB 7F 32
        sll  (ix+127),e         ; 3AB8 DD CB 7F 33
        sll  (ix+127),h         ; 3ABC DD CB 7F 34
        sll  (ix+127),l         ; 3AC0 DD CB 7F 35
        sll  (ix+127)           ; 3AC4 DD CB 7F 36
        sll  (ix+127),a         ; 3AC8 DD CB 7F 37
        sll  (ix+127),b         ; 3ACC DD CB 7F 30
        sll  (ix+127),c         ; 3AD0 DD CB 7F 31
        sll  (ix+127),d         ; 3AD4 DD CB 7F 32
        sll  (ix+127),e         ; 3AD8 DD CB 7F 33
        sll  (ix+127),h         ; 3ADC DD CB 7F 34
        sll  (ix+127),l         ; 3AE0 DD CB 7F 35
        sll  (iy)               ; 3AE4 FD CB 00 36
        sll  (iy),a             ; 3AE8 FD CB 00 37
        sll  (iy),b             ; 3AEC FD CB 00 30
        sll  (iy),c             ; 3AF0 FD CB 00 31
        sll  (iy),d             ; 3AF4 FD CB 00 32
        sll  (iy),e             ; 3AF8 FD CB 00 33
        sll  (iy),h             ; 3AFC FD CB 00 34
        sll  (iy),l             ; 3B00 FD CB 00 35
        sll  (iy+127)           ; 3B04 FD CB 7F 36
        sll  (iy+127),a         ; 3B08 FD CB 7F 37
        sll  (iy+127),b         ; 3B0C FD CB 7F 30
        sll  (iy+127),c         ; 3B10 FD CB 7F 31
        sll  (iy+127),d         ; 3B14 FD CB 7F 32
        sll  (iy+127),e         ; 3B18 FD CB 7F 33
        sll  (iy+127),h         ; 3B1C FD CB 7F 34
        sll  (iy+127),l         ; 3B20 FD CB 7F 35
        sll  (iy+127)           ; 3B24 FD CB 7F 36
        sll  (iy+127),a         ; 3B28 FD CB 7F 37
        sll  (iy+127),b         ; 3B2C FD CB 7F 30
        sll  (iy+127),c         ; 3B30 FD CB 7F 31
        sll  (iy+127),d         ; 3B34 FD CB 7F 32
        sll  (iy+127),e         ; 3B38 FD CB 7F 33
        sll  (iy+127),h         ; 3B3C FD CB 7F 34
        sll  (iy+127),l         ; 3B40 FD CB 7F 35
        sll  [hl]               ; 3B44 CB 36
        sll  [ix+127]           ; 3B46 DD CB 7F 36
        sll  [ix+127],a         ; 3B4A DD CB 7F 37
        sll  [ix+127],b         ; 3B4E DD CB 7F 30
        sll  [ix+127],c         ; 3B52 DD CB 7F 31
        sll  [ix+127],d         ; 3B56 DD CB 7F 32
        sll  [ix+127],e         ; 3B5A DD CB 7F 33
        sll  [ix+127],h         ; 3B5E DD CB 7F 34
        sll  [ix+127],l         ; 3B62 DD CB 7F 35
        sll  [ix+127]           ; 3B66 DD CB 7F 36
        sll  [ix+127],a         ; 3B6A DD CB 7F 37
        sll  [ix+127],b         ; 3B6E DD CB 7F 30
        sll  [ix+127],c         ; 3B72 DD CB 7F 31
        sll  [ix+127],d         ; 3B76 DD CB 7F 32
        sll  [ix+127],e         ; 3B7A DD CB 7F 33
        sll  [ix+127],h         ; 3B7E DD CB 7F 34
        sll  [ix+127],l         ; 3B82 DD CB 7F 35
        sll  [ix]               ; 3B86 DD CB 00 36
        sll  [ix],a             ; 3B8A DD CB 00 37
        sll  [ix],b             ; 3B8E DD CB 00 30
        sll  [ix],c             ; 3B92 DD CB 00 31
        sll  [ix],d             ; 3B96 DD CB 00 32
        sll  [ix],e             ; 3B9A DD CB 00 33
        sll  [ix],h             ; 3B9E DD CB 00 34
        sll  [ix],l             ; 3BA2 DD CB 00 35
        sll  [iy+127]           ; 3BA6 FD CB 7F 36
        sll  [iy+127],a         ; 3BAA FD CB 7F 37
        sll  [iy+127],b         ; 3BAE FD CB 7F 30
        sll  [iy+127],c         ; 3BB2 FD CB 7F 31
        sll  [iy+127],d         ; 3BB6 FD CB 7F 32
        sll  [iy+127],e         ; 3BBA FD CB 7F 33
        sll  [iy+127],h         ; 3BBE FD CB 7F 34
        sll  [iy+127],l         ; 3BC2 FD CB 7F 35
        sll  [iy+127]           ; 3BC6 FD CB 7F 36
        sll  [iy+127],a         ; 3BCA FD CB 7F 37
        sll  [iy+127],b         ; 3BCE FD CB 7F 30
        sll  [iy+127],c         ; 3BD2 FD CB 7F 31
        sll  [iy+127],d         ; 3BD6 FD CB 7F 32
        sll  [iy+127],e         ; 3BDA FD CB 7F 33
        sll  [iy+127],h         ; 3BDE FD CB 7F 34
        sll  [iy+127],l         ; 3BE2 FD CB 7F 35
        sll  [iy]               ; 3BE6 FD CB 00 36
        sll  [iy],a             ; 3BEA FD CB 00 37
        sll  [iy],b             ; 3BEE FD CB 00 30
        sll  [iy],c             ; 3BF2 FD CB 00 31
        sll  [iy],d             ; 3BF6 FD CB 00 32
        sll  [iy],e             ; 3BFA FD CB 00 33
        sll  [iy],h             ; 3BFE FD CB 00 34
        sll  [iy],l             ; 3C02 FD CB 00 35
        sll  a                  ; 3C06 CB 37
        sll  b                  ; 3C08 CB 30
        sll  bc                 ; 3C0A CB 31 CB 10
        sll  c                  ; 3C0E CB 31
        sll  d                  ; 3C10 CB 32
        sll  de                 ; 3C12 CB 33 CB 12
        sll  e                  ; 3C16 CB 33
        sll  h                  ; 3C18 CB 34
        sll  hl                 ; 3C1A CB 35 CB 14
        sll  l                  ; 3C1E CB 35
        sra  (hl)               ; 3C20 CB 2E
        SRA  (HL)               ; 3C22 CB 2E
        sra  (ix)               ; 3C24 DD CB 00 2E
        sra  (ix),a             ; 3C28 DD CB 00 2F
        sra  (ix),b             ; 3C2C DD CB 00 28
        sra  (ix),c             ; 3C30 DD CB 00 29
        sra  (ix),d             ; 3C34 DD CB 00 2A
        sra  (ix),e             ; 3C38 DD CB 00 2B
        sra  (ix),h             ; 3C3C DD CB 00 2C
        sra  (ix),l             ; 3C40 DD CB 00 2D
        sra  (ix+127)           ; 3C44 DD CB 7F 2E
        sra  (ix+127),a         ; 3C48 DD CB 7F 2F
        sra  (ix+127),b         ; 3C4C DD CB 7F 28
        sra  (ix+127),c         ; 3C50 DD CB 7F 29
        sra  (ix+127),d         ; 3C54 DD CB 7F 2A
        sra  (ix+127),e         ; 3C58 DD CB 7F 2B
        sra  (ix+127),h         ; 3C5C DD CB 7F 2C
        sra  (ix+127),l         ; 3C60 DD CB 7F 2D
        sra  (ix+127)           ; 3C64 DD CB 7F 2E
        sra  (ix+127),a         ; 3C68 DD CB 7F 2F
        sra  (ix+127),b         ; 3C6C DD CB 7F 28
        sra  (ix+127),c         ; 3C70 DD CB 7F 29
        sra  (ix+127),d         ; 3C74 DD CB 7F 2A
        sra  (ix+127),e         ; 3C78 DD CB 7F 2B
        sra  (ix+127),h         ; 3C7C DD CB 7F 2C
        sra  (ix+127),l         ; 3C80 DD CB 7F 2D
        sra  (iy)               ; 3C84 FD CB 00 2E
        sra  (iy),a             ; 3C88 FD CB 00 2F
        sra  (iy),b             ; 3C8C FD CB 00 28
        sra  (iy),c             ; 3C90 FD CB 00 29
        sra  (iy),d             ; 3C94 FD CB 00 2A
        sra  (iy),e             ; 3C98 FD CB 00 2B
        sra  (iy),h             ; 3C9C FD CB 00 2C
        sra  (iy),l             ; 3CA0 FD CB 00 2D
        sra  (iy+127)           ; 3CA4 FD CB 7F 2E
        sra  (iy+127),a         ; 3CA8 FD CB 7F 2F
        sra  (iy+127),b         ; 3CAC FD CB 7F 28
        sra  (iy+127),c         ; 3CB0 FD CB 7F 29
        sra  (iy+127),d         ; 3CB4 FD CB 7F 2A
        sra  (iy+127),e         ; 3CB8 FD CB 7F 2B
        sra  (iy+127),h         ; 3CBC FD CB 7F 2C
        sra  (iy+127),l         ; 3CC0 FD CB 7F 2D
        sra  (iy+127)           ; 3CC4 FD CB 7F 2E
        sra  (iy+127),a         ; 3CC8 FD CB 7F 2F
        sra  (iy+127),b         ; 3CCC FD CB 7F 28
        sra  (iy+127),c         ; 3CD0 FD CB 7F 29
        sra  (iy+127),d         ; 3CD4 FD CB 7F 2A
        sra  (iy+127),e         ; 3CD8 FD CB 7F 2B
        sra  (iy+127),h         ; 3CDC FD CB 7F 2C
        sra  (iy+127),l         ; 3CE0 FD CB 7F 2D
        sra  [hl]               ; 3CE4 CB 2E
        sra  [ix+127]           ; 3CE6 DD CB 7F 2E
        sra  [ix+127],a         ; 3CEA DD CB 7F 2F
        sra  [ix+127],b         ; 3CEE DD CB 7F 28
        sra  [ix+127],c         ; 3CF2 DD CB 7F 29
        sra  [ix+127],d         ; 3CF6 DD CB 7F 2A
        sra  [ix+127],e         ; 3CFA DD CB 7F 2B
        sra  [ix+127],h         ; 3CFE DD CB 7F 2C
        sra  [ix+127],l         ; 3D02 DD CB 7F 2D
        sra  [ix+127]           ; 3D06 DD CB 7F 2E
        sra  [ix+127],a         ; 3D0A DD CB 7F 2F
        sra  [ix+127],b         ; 3D0E DD CB 7F 28
        sra  [ix+127],c         ; 3D12 DD CB 7F 29
        sra  [ix+127],d         ; 3D16 DD CB 7F 2A
        sra  [ix+127],e         ; 3D1A DD CB 7F 2B
        sra  [ix+127],h         ; 3D1E DD CB 7F 2C
        sra  [ix+127],l         ; 3D22 DD CB 7F 2D
        sra  [ix]               ; 3D26 DD CB 00 2E
        sra  [ix],a             ; 3D2A DD CB 00 2F
        sra  [ix],b             ; 3D2E DD CB 00 28
        sra  [ix],c             ; 3D32 DD CB 00 29
        sra  [ix],d             ; 3D36 DD CB 00 2A
        sra  [ix],e             ; 3D3A DD CB 00 2B
        sra  [ix],h             ; 3D3E DD CB 00 2C
        sra  [ix],l             ; 3D42 DD CB 00 2D
        sra  [iy+127]           ; 3D46 FD CB 7F 2E
        sra  [iy+127],a         ; 3D4A FD CB 7F 2F
        sra  [iy+127],b         ; 3D4E FD CB 7F 28
        sra  [iy+127],c         ; 3D52 FD CB 7F 29
        sra  [iy+127],d         ; 3D56 FD CB 7F 2A
        sra  [iy+127],e         ; 3D5A FD CB 7F 2B
        sra  [iy+127],h         ; 3D5E FD CB 7F 2C
        sra  [iy+127],l         ; 3D62 FD CB 7F 2D
        sra  [iy+127]           ; 3D66 FD CB 7F 2E
        sra  [iy+127],a         ; 3D6A FD CB 7F 2F
        sra  [iy+127],b         ; 3D6E FD CB 7F 28
        sra  [iy+127],c         ; 3D72 FD CB 7F 29
        sra  [iy+127],d         ; 3D76 FD CB 7F 2A
        sra  [iy+127],e         ; 3D7A FD CB 7F 2B
        sra  [iy+127],h         ; 3D7E FD CB 7F 2C
        sra  [iy+127],l         ; 3D82 FD CB 7F 2D
        sra  [iy]               ; 3D86 FD CB 00 2E
        sra  [iy],a             ; 3D8A FD CB 00 2F
        sra  [iy],b             ; 3D8E FD CB 00 28
        sra  [iy],c             ; 3D92 FD CB 00 29
        sra  [iy],d             ; 3D96 FD CB 00 2A
        sra  [iy],e             ; 3D9A FD CB 00 2B
        sra  [iy],h             ; 3D9E FD CB 00 2C
        sra  [iy],l             ; 3DA2 FD CB 00 2D
        sra  a                  ; 3DA6 CB 2F
        sra  b                  ; 3DA8 CB 28
        sra  bc                 ; 3DAA CB 28 CB 19
        sra  c                  ; 3DAE CB 29
        sra  d                  ; 3DB0 CB 2A
        sra  de                 ; 3DB2 CB 2A CB 1B
        sra  e                  ; 3DB6 CB 2B
        sra  h                  ; 3DB8 CB 2C
        sra  hl                 ; 3DBA CB 2C CB 1D
        sra  l                  ; 3DBE CB 2D
        srl  (hl)               ; 3DC0 CB 3E
        SRL  (HL)               ; 3DC2 CB 3E
        srl  (ix)               ; 3DC4 DD CB 00 3E
        srl  (ix),a             ; 3DC8 DD CB 00 3F
        srl  (ix),b             ; 3DCC DD CB 00 38
        srl  (ix),c             ; 3DD0 DD CB 00 39
        srl  (ix),d             ; 3DD4 DD CB 00 3A
        srl  (ix),e             ; 3DD8 DD CB 00 3B
        srl  (ix),h             ; 3DDC DD CB 00 3C
        srl  (ix),l             ; 3DE0 DD CB 00 3D
        srl  (ix+127)           ; 3DE4 DD CB 7F 3E
        srl  (ix+127),a         ; 3DE8 DD CB 7F 3F
        srl  (ix+127),b         ; 3DEC DD CB 7F 38
        srl  (ix+127),c         ; 3DF0 DD CB 7F 39
        srl  (ix+127),d         ; 3DF4 DD CB 7F 3A
        srl  (ix+127),e         ; 3DF8 DD CB 7F 3B
        srl  (ix+127),h         ; 3DFC DD CB 7F 3C
        srl  (ix+127),l         ; 3E00 DD CB 7F 3D
        srl  (ix+127)           ; 3E04 DD CB 7F 3E
        srl  (ix+127),a         ; 3E08 DD CB 7F 3F
        srl  (ix+127),b         ; 3E0C DD CB 7F 38
        srl  (ix+127),c         ; 3E10 DD CB 7F 39
        srl  (ix+127),d         ; 3E14 DD CB 7F 3A
        srl  (ix+127),e         ; 3E18 DD CB 7F 3B
        srl  (ix+127),h         ; 3E1C DD CB 7F 3C
        srl  (ix+127),l         ; 3E20 DD CB 7F 3D
        srl  (iy)               ; 3E24 FD CB 00 3E
        srl  (iy),a             ; 3E28 FD CB 00 3F
        srl  (iy),b             ; 3E2C FD CB 00 38
        srl  (iy),c             ; 3E30 FD CB 00 39
        srl  (iy),d             ; 3E34 FD CB 00 3A
        srl  (iy),e             ; 3E38 FD CB 00 3B
        srl  (iy),h             ; 3E3C FD CB 00 3C
        srl  (iy),l             ; 3E40 FD CB 00 3D
        srl  (iy+127)           ; 3E44 FD CB 7F 3E
        srl  (iy+127),a         ; 3E48 FD CB 7F 3F
        srl  (iy+127),b         ; 3E4C FD CB 7F 38
        srl  (iy+127),c         ; 3E50 FD CB 7F 39
        srl  (iy+127),d         ; 3E54 FD CB 7F 3A
        srl  (iy+127),e         ; 3E58 FD CB 7F 3B
        srl  (iy+127),h         ; 3E5C FD CB 7F 3C
        srl  (iy+127),l         ; 3E60 FD CB 7F 3D
        srl  (iy+127)           ; 3E64 FD CB 7F 3E
        srl  (iy+127),a         ; 3E68 FD CB 7F 3F
        srl  (iy+127),b         ; 3E6C FD CB 7F 38
        srl  (iy+127),c         ; 3E70 FD CB 7F 39
        srl  (iy+127),d         ; 3E74 FD CB 7F 3A
        srl  (iy+127),e         ; 3E78 FD CB 7F 3B
        srl  (iy+127),h         ; 3E7C FD CB 7F 3C
        srl  (iy+127),l         ; 3E80 FD CB 7F 3D
        srl  [hl]               ; 3E84 CB 3E
        srl  [ix+127]           ; 3E86 DD CB 7F 3E
        srl  [ix+127],a         ; 3E8A DD CB 7F 3F
        srl  [ix+127],b         ; 3E8E DD CB 7F 38
        srl  [ix+127],c         ; 3E92 DD CB 7F 39
        srl  [ix+127],d         ; 3E96 DD CB 7F 3A
        srl  [ix+127],e         ; 3E9A DD CB 7F 3B
        srl  [ix+127],h         ; 3E9E DD CB 7F 3C
        srl  [ix+127],l         ; 3EA2 DD CB 7F 3D
        srl  [ix+127]           ; 3EA6 DD CB 7F 3E
        srl  [ix+127],a         ; 3EAA DD CB 7F 3F
        srl  [ix+127],b         ; 3EAE DD CB 7F 38
        srl  [ix+127],c         ; 3EB2 DD CB 7F 39
        srl  [ix+127],d         ; 3EB6 DD CB 7F 3A
        srl  [ix+127],e         ; 3EBA DD CB 7F 3B
        srl  [ix+127],h         ; 3EBE DD CB 7F 3C
        srl  [ix+127],l         ; 3EC2 DD CB 7F 3D
        srl  [ix]               ; 3EC6 DD CB 00 3E
        srl  [ix],a             ; 3ECA DD CB 00 3F
        srl  [ix],b             ; 3ECE DD CB 00 38
        srl  [ix],c             ; 3ED2 DD CB 00 39
        srl  [ix],d             ; 3ED6 DD CB 00 3A
        srl  [ix],e             ; 3EDA DD CB 00 3B
        srl  [ix],h             ; 3EDE DD CB 00 3C
        srl  [ix],l             ; 3EE2 DD CB 00 3D
        srl  [iy+127]           ; 3EE6 FD CB 7F 3E
        srl  [iy+127],a         ; 3EEA FD CB 7F 3F
        srl  [iy+127],b         ; 3EEE FD CB 7F 38
        srl  [iy+127],c         ; 3EF2 FD CB 7F 39
        srl  [iy+127],d         ; 3EF6 FD CB 7F 3A
        srl  [iy+127],e         ; 3EFA FD CB 7F 3B
        srl  [iy+127],h         ; 3EFE FD CB 7F 3C
        srl  [iy+127],l         ; 3F02 FD CB 7F 3D
        srl  [iy+127]           ; 3F06 FD CB 7F 3E
        srl  [iy+127],a         ; 3F0A FD CB 7F 3F
        srl  [iy+127],b         ; 3F0E FD CB 7F 38
        srl  [iy+127],c         ; 3F12 FD CB 7F 39
        srl  [iy+127],d         ; 3F16 FD CB 7F 3A
        srl  [iy+127],e         ; 3F1A FD CB 7F 3B
        srl  [iy+127],h         ; 3F1E FD CB 7F 3C
        srl  [iy+127],l         ; 3F22 FD CB 7F 3D
        srl  [iy]               ; 3F26 FD CB 00 3E
        srl  [iy],a             ; 3F2A FD CB 00 3F
        srl  [iy],b             ; 3F2E FD CB 00 38
        srl  [iy],c             ; 3F32 FD CB 00 39
        srl  [iy],d             ; 3F36 FD CB 00 3A
        srl  [iy],e             ; 3F3A FD CB 00 3B
        srl  [iy],h             ; 3F3E FD CB 00 3C
        srl  [iy],l             ; 3F42 FD CB 00 3D
        srl  a                  ; 3F46 CB 3F
        srl  b                  ; 3F48 CB 38
        srl  bc                 ; 3F4A CB 38 CB 19
        srl  c                  ; 3F4E CB 39
        srl  d                  ; 3F50 CB 3A
        srl  de                 ; 3F52 CB 3A CB 1B
        srl  e                  ; 3F56 CB 3B
        srl  h                  ; 3F58 CB 3C
        srl  hl                 ; 3F5A CB 3C CB 1D
        srl  l                  ; 3F5E CB 3D
        stop                    ; 3F60 DD DD 00
        STOP                    ; 3F63 DD DD 00
        sub  (hl)               ; 3F66 96
        SUB  (HL)               ; 3F67 96
        sub  (ix)               ; 3F68 DD 96 00
        sub  (ix+127)           ; 3F6B DD 96 7F
        sub  (ix+127)           ; 3F6E DD 96 7F
        sub  (iy)               ; 3F71 FD 96 00
        sub  (iy+127)           ; 3F74 FD 96 7F
        sub  (iy+127)           ; 3F77 FD 96 7F
        sub  255                ; 3F7A D6 FF
        sub  [hl]               ; 3F7C 96
        sub  [ix+127]           ; 3F7D DD 96 7F
        sub  [ix+127]           ; 3F80 DD 96 7F
        sub  [ix]               ; 3F83 DD 96 00
        sub  [iy+127]           ; 3F86 FD 96 7F
        sub  [iy+127]           ; 3F89 FD 96 7F
        sub  [iy]               ; 3F8C FD 96 00
        sub  a                  ; 3F8F 97
        sub  b                  ; 3F90 90
        sub  c                  ; 3F91 91
        sub  d                  ; 3F92 92
        sub  e                  ; 3F93 93
        sub  h                  ; 3F94 94
        sub  hl,bc              ; 3F95 B7 ED 42
        sub  hl,de              ; 3F98 B7 ED 52
        sub  hl,hl              ; 3F9B B7 ED 62
        sub  hl,sp              ; 3F9E B7 ED 72
        sub  hx                 ; 3FA1 DD 94
        sub  hy                 ; 3FA3 FD 94
        sub  ixh                ; 3FA5 DD 94
        sub  ixl                ; 3FA7 DD 95
        sub  iyh                ; 3FA9 FD 94
        sub  iyl                ; 3FAB FD 95
        sub  l                  ; 3FAD 95
        sub  lx                 ; 3FAE DD 95
        sub  ly                 ; 3FB0 FD 95
        sub  xh                 ; 3FB2 DD 94
        sub  xl                 ; 3FB4 DD 95
        sub  yh                 ; 3FB6 FD 94
        sub  yl                 ; 3FB8 FD 95
        xor  (hl)               ; 3FBA AE
        XOR  (HL)               ; 3FBB AE
        xor  (ix)               ; 3FBC DD AE 00
        xor  (ix+127)           ; 3FBF DD AE 7F
        xor  (ix+127)           ; 3FC2 DD AE 7F
        xor  (iy)               ; 3FC5 FD AE 00
        xor  (iy+127)           ; 3FC8 FD AE 7F
        xor  (iy+127)           ; 3FCB FD AE 7F
        xor  255                ; 3FCE EE FF
        xor  [hl]               ; 3FD0 AE
        xor  [ix+127]           ; 3FD1 DD AE 7F
        xor  [ix+127]           ; 3FD4 DD AE 7F
        xor  [ix]               ; 3FD7 DD AE 00
        xor  [iy+127]           ; 3FDA FD AE 7F
        xor  [iy+127]           ; 3FDD FD AE 7F
        xor  [iy]               ; 3FE0 FD AE 00
        xor  a                  ; 3FE3 AF
        xor  b                  ; 3FE4 A8
        xor  c                  ; 3FE5 A9
        xor  d                  ; 3FE6 AA
        xor  e                  ; 3FE7 AB
        xor  h                  ; 3FE8 AC
        xor  hx                 ; 3FE9 DD AC
        xor  hy                 ; 3FEB FD AC
        xor  ixh                ; 3FED DD AC
        xor  ixl                ; 3FEF DD AD
        xor  iyh                ; 3FF1 FD AC
        xor  iyl                ; 3FF3 FD AD
        xor  l                  ; 3FF5 AD
        xor  lx                 ; 3FF6 DD AD
        xor  ly                 ; 3FF8 FD AD
        xor  xh                 ; 3FFA DD AC
        xor  xl                 ; 3FFC DD AD
        xor  yh                 ; 3FFE FD AC
        xor  yl                 ; 4000 FD AD
