        org 0
        adc  a,(hl)             ; 0000 8E
        ADC  A,(HL)             ; 0001 8E
        adc  a,(ix+-128)        ; 0002 DD 8E 80
        ADC  A,(IX+-128)        ; 0005 DD 8E 80
        adc  a,(ix+-1)          ; 0008 DD 8E FF
        ADC  A,(IX+-1)          ; 000B DD 8E FF
        adc  a,(ix+0)           ; 000E DD 8E 00
        ADC  A,(IX+0)           ; 0011 DD 8E 00
        adc  a,(ix+127)         ; 0014 DD 8E 7F
        ADC  A,(IX+127)         ; 0017 DD 8E 7F
        adc  a,(iy+-128)        ; 001A FD 8E 80
        ADC  A,(IY+-128)        ; 001D FD 8E 80
        adc  a,(iy+-1)          ; 0020 FD 8E FF
        ADC  A,(IY+-1)          ; 0023 FD 8E FF
        adc  a,(iy+0)           ; 0026 FD 8E 00
        ADC  A,(IY+0)           ; 0029 FD 8E 00
        adc  a,(iy+127)         ; 002C FD 8E 7F
        ADC  A,(IY+127)         ; 002F FD 8E 7F
        adc  a,-128             ; 0032 CE 80
        ADC  A,-128             ; 0034 CE 80
        adc  a,-1               ; 0036 CE FF
        ADC  A,-1               ; 0038 CE FF
        adc  a,0                ; 003A CE 00
        ADC  A,0                ; 003C CE 00
        adc  a,127              ; 003E CE 7F
        ADC  A,127              ; 0040 CE 7F
        adc  a,255              ; 0042 CE FF
        ADC  A,255              ; 0044 CE FF
        adc  a,[hl]             ; 0046 8E
        ADC  A,[HL]             ; 0047 8E
        adc  a,[ix+-128]        ; 0048 DD 8E 80
        ADC  A,[IX+-128]        ; 004B DD 8E 80
        adc  a,[ix+-1]          ; 004E DD 8E FF
        ADC  A,[IX+-1]          ; 0051 DD 8E FF
        adc  a,[ix+0]           ; 0054 DD 8E 00
        ADC  A,[IX+0]           ; 0057 DD 8E 00
        adc  a,[ix+127]         ; 005A DD 8E 7F
        ADC  A,[IX+127]         ; 005D DD 8E 7F
        adc  a,[iy+-128]        ; 0060 FD 8E 80
        ADC  A,[IY+-128]        ; 0063 FD 8E 80
        adc  a,[iy+-1]          ; 0066 FD 8E FF
        ADC  A,[IY+-1]          ; 0069 FD 8E FF
        adc  a,[iy+0]           ; 006C FD 8E 00
        ADC  A,[IY+0]           ; 006F FD 8E 00
        adc  a,[iy+127]         ; 0072 FD 8E 7F
        ADC  A,[IY+127]         ; 0075 FD 8E 7F
        adc  a,a                ; 0078 8F
        ADC  A,A                ; 0079 8F
        adc  a,b                ; 007A 88
        ADC  A,B                ; 007B 88
        adc  a,c                ; 007C 89
        ADC  A,C                ; 007D 89
        adc  a,d                ; 007E 8A
        ADC  A,D                ; 007F 8A
        adc  a,e                ; 0080 8B
        ADC  A,E                ; 0081 8B
        adc  a,h                ; 0082 8C
        ADC  A,H                ; 0083 8C
        adc  a,hx               ; 0084 DD 8C
        ADC  A,HX               ; 0086 DD 8C
        adc  a,hy               ; 0088 FD 8C
        ADC  A,HY               ; 008A FD 8C
        adc  a,ixh              ; 008C DD 8C
        ADC  A,IXH              ; 008E DD 8C
        adc  a,ixl              ; 0090 DD 8D
        ADC  A,IXL              ; 0092 DD 8D
        adc  a,iyh              ; 0094 FD 8C
        ADC  A,IYH              ; 0096 FD 8C
        adc  a,iyl              ; 0098 FD 8D
        ADC  A,IYL              ; 009A FD 8D
        adc  a,l                ; 009C 8D
        ADC  A,L                ; 009D 8D
        adc  a,lx               ; 009E DD 8D
        ADC  A,LX               ; 00A0 DD 8D
        adc  a,ly               ; 00A2 FD 8D
        ADC  A,LY               ; 00A4 FD 8D
        adc  a,xh               ; 00A6 DD 8C
        ADC  A,XH               ; 00A8 DD 8C
        adc  a,xl               ; 00AA DD 8D
        ADC  A,XL               ; 00AC DD 8D
        adc  a,yh               ; 00AE FD 8C
        ADC  A,YH               ; 00B0 FD 8C
        adc  a,yl               ; 00B2 FD 8D
        ADC  A,YL               ; 00B4 FD 8D
        adc  hl,bc              ; 00B6 ED 4A
        ADC  HL,BC              ; 00B8 ED 4A
        adc  hl,de              ; 00BA ED 5A
        ADC  HL,DE              ; 00BC ED 5A
        adc  hl,hl              ; 00BE ED 6A
        ADC  HL,HL              ; 00C0 ED 6A
        adc  hl,sp              ; 00C2 ED 7A
        ADC  HL,SP              ; 00C4 ED 7A
        add  a,(hl)             ; 00C6 86
        ADD  A,(HL)             ; 00C7 86
        add  a,(ix+-128)        ; 00C8 DD 86 80
        ADD  A,(IX+-128)        ; 00CB DD 86 80
        add  a,(ix+-1)          ; 00CE DD 86 FF
        ADD  A,(IX+-1)          ; 00D1 DD 86 FF
        add  a,(ix+0)           ; 00D4 DD 86 00
        ADD  A,(IX+0)           ; 00D7 DD 86 00
        add  a,(ix+127)         ; 00DA DD 86 7F
        ADD  A,(IX+127)         ; 00DD DD 86 7F
        add  a,(iy+-128)        ; 00E0 FD 86 80
        ADD  A,(IY+-128)        ; 00E3 FD 86 80
        add  a,(iy+-1)          ; 00E6 FD 86 FF
        ADD  A,(IY+-1)          ; 00E9 FD 86 FF
        add  a,(iy+0)           ; 00EC FD 86 00
        ADD  A,(IY+0)           ; 00EF FD 86 00
        add  a,(iy+127)         ; 00F2 FD 86 7F
        ADD  A,(IY+127)         ; 00F5 FD 86 7F
        add  a,-128             ; 00F8 C6 80
        ADD  A,-128             ; 00FA C6 80
        add  a,-1               ; 00FC C6 FF
        ADD  A,-1               ; 00FE C6 FF
        add  a,0                ; 0100 C6 00
        ADD  A,0                ; 0102 C6 00
        add  a,127              ; 0104 C6 7F
        ADD  A,127              ; 0106 C6 7F
        add  a,255              ; 0108 C6 FF
        ADD  A,255              ; 010A C6 FF
        add  a,[hl]             ; 010C 86
        ADD  A,[HL]             ; 010D 86
        add  a,[ix+-128]        ; 010E DD 86 80
        ADD  A,[IX+-128]        ; 0111 DD 86 80
        add  a,[ix+-1]          ; 0114 DD 86 FF
        ADD  A,[IX+-1]          ; 0117 DD 86 FF
        add  a,[ix+0]           ; 011A DD 86 00
        ADD  A,[IX+0]           ; 011D DD 86 00
        add  a,[ix+127]         ; 0120 DD 86 7F
        ADD  A,[IX+127]         ; 0123 DD 86 7F
        add  a,[iy+-128]        ; 0126 FD 86 80
        ADD  A,[IY+-128]        ; 0129 FD 86 80
        add  a,[iy+-1]          ; 012C FD 86 FF
        ADD  A,[IY+-1]          ; 012F FD 86 FF
        add  a,[iy+0]           ; 0132 FD 86 00
        ADD  A,[IY+0]           ; 0135 FD 86 00
        add  a,[iy+127]         ; 0138 FD 86 7F
        ADD  A,[IY+127]         ; 013B FD 86 7F
        add  a,a                ; 013E 87
        ADD  A,A                ; 013F 87
        add  a,b                ; 0140 80
        ADD  A,B                ; 0141 80
        add  a,c                ; 0142 81
        ADD  A,C                ; 0143 81
        add  a,d                ; 0144 82
        ADD  A,D                ; 0145 82
        add  a,e                ; 0146 83
        ADD  A,E                ; 0147 83
        add  a,h                ; 0148 84
        ADD  A,H                ; 0149 84
        add  a,hx               ; 014A DD 84
        ADD  A,HX               ; 014C DD 84
        add  a,hy               ; 014E FD 84
        ADD  A,HY               ; 0150 FD 84
        add  a,ixh              ; 0152 DD 84
        ADD  A,IXH              ; 0154 DD 84
        add  a,ixl              ; 0156 DD 85
        ADD  A,IXL              ; 0158 DD 85
        add  a,iyh              ; 015A FD 84
        ADD  A,IYH              ; 015C FD 84
        add  a,iyl              ; 015E FD 85
        ADD  A,IYL              ; 0160 FD 85
        add  a,l                ; 0162 85
        ADD  A,L                ; 0163 85
        add  a,lx               ; 0164 DD 85
        ADD  A,LX               ; 0166 DD 85
        add  a,ly               ; 0168 FD 85
        ADD  A,LY               ; 016A FD 85
        add  a,xh               ; 016C DD 84
        ADD  A,XH               ; 016E DD 84
        add  a,xl               ; 0170 DD 85
        ADD  A,XL               ; 0172 DD 85
        add  a,yh               ; 0174 FD 84
        ADD  A,YH               ; 0176 FD 84
        add  a,yl               ; 0178 FD 85
        ADD  A,YL               ; 017A FD 85
        add  hl,bc              ; 017C 09
        ADD  HL,BC              ; 017D 09
        add  hl,de              ; 017E 19
        ADD  HL,DE              ; 017F 19
        add  hl,hl              ; 0180 29
        ADD  HL,HL              ; 0181 29
        add  hl,sp              ; 0182 39
        ADD  HL,SP              ; 0183 39
        add  ix,bc              ; 0184 DD 09
        ADD  IX,BC              ; 0186 DD 09
        add  ix,de              ; 0188 DD 19
        ADD  IX,DE              ; 018A DD 19
        add  ix,ix              ; 018C DD 29
        ADD  IX,IX              ; 018E DD 29
        add  ix,sp              ; 0190 DD 39
        ADD  IX,SP              ; 0192 DD 39
        add  iy,bc              ; 0194 FD 09
        ADD  IY,BC              ; 0196 FD 09
        add  iy,de              ; 0198 FD 19
        ADD  IY,DE              ; 019A FD 19
        add  iy,iy              ; 019C FD 29
        ADD  IY,IY              ; 019E FD 29
        add  iy,sp              ; 01A0 FD 39
        ADD  IY,SP              ; 01A2 FD 39
        and  (hl)               ; 01A4 A6
        AND  (HL)               ; 01A5 A6
        and  (ix+-128)          ; 01A6 DD A6 80
        AND  (IX+-128)          ; 01A9 DD A6 80
        and  (ix+-1)            ; 01AC DD A6 FF
        AND  (IX+-1)            ; 01AF DD A6 FF
        and  (ix+0)             ; 01B2 DD A6 00
        AND  (IX+0)             ; 01B5 DD A6 00
        and  (ix+127)           ; 01B8 DD A6 7F
        AND  (IX+127)           ; 01BB DD A6 7F
        and  (iy+-128)          ; 01BE FD A6 80
        AND  (IY+-128)          ; 01C1 FD A6 80
        and  (iy+-1)            ; 01C4 FD A6 FF
        AND  (IY+-1)            ; 01C7 FD A6 FF
        and  (iy+0)             ; 01CA FD A6 00
        AND  (IY+0)             ; 01CD FD A6 00
        and  (iy+127)           ; 01D0 FD A6 7F
        AND  (IY+127)           ; 01D3 FD A6 7F
        and  -128               ; 01D6 E6 80
        AND  -128               ; 01D8 E6 80
        and  -1                 ; 01DA E6 FF
        AND  -1                 ; 01DC E6 FF
        and  0                  ; 01DE E6 00
        AND  0                  ; 01E0 E6 00
        and  127                ; 01E2 E6 7F
        AND  127                ; 01E4 E6 7F
        and  255                ; 01E6 E6 FF
        AND  255                ; 01E8 E6 FF
        and  [hl]               ; 01EA A6
        AND  [HL]               ; 01EB A6
        and  [ix+-128]          ; 01EC DD A6 80
        AND  [IX+-128]          ; 01EF DD A6 80
        and  [ix+-1]            ; 01F2 DD A6 FF
        AND  [IX+-1]            ; 01F5 DD A6 FF
        and  [ix+0]             ; 01F8 DD A6 00
        AND  [IX+0]             ; 01FB DD A6 00
        and  [ix+127]           ; 01FE DD A6 7F
        AND  [IX+127]           ; 0201 DD A6 7F
        and  [iy+-128]          ; 0204 FD A6 80
        AND  [IY+-128]          ; 0207 FD A6 80
        and  [iy+-1]            ; 020A FD A6 FF
        AND  [IY+-1]            ; 020D FD A6 FF
        and  [iy+0]             ; 0210 FD A6 00
        AND  [IY+0]             ; 0213 FD A6 00
        and  [iy+127]           ; 0216 FD A6 7F
        AND  [IY+127]           ; 0219 FD A6 7F
        and  a                  ; 021C A7
        AND  A                  ; 021D A7
        and  b                  ; 021E A0
        AND  B                  ; 021F A0
        and  c                  ; 0220 A1
        AND  C                  ; 0221 A1
        and  d                  ; 0222 A2
        AND  D                  ; 0223 A2
        and  e                  ; 0224 A3
        AND  E                  ; 0225 A3
        and  h                  ; 0226 A4
        AND  H                  ; 0227 A4
        and  hx                 ; 0228 DD A4
        AND  HX                 ; 022A DD A4
        and  hy                 ; 022C FD A4
        AND  HY                 ; 022E FD A4
        and  ixh                ; 0230 DD A4
        AND  IXH                ; 0232 DD A4
        and  ixl                ; 0234 DD A5
        AND  IXL                ; 0236 DD A5
        and  iyh                ; 0238 FD A4
        AND  IYH                ; 023A FD A4
        and  iyl                ; 023C FD A5
        AND  IYL                ; 023E FD A5
        and  l                  ; 0240 A5
        AND  L                  ; 0241 A5
        and  lx                 ; 0242 DD A5
        AND  LX                 ; 0244 DD A5
        and  ly                 ; 0246 FD A5
        AND  LY                 ; 0248 FD A5
        and  xh                 ; 024A DD A4
        AND  XH                 ; 024C DD A4
        and  xl                 ; 024E DD A5
        AND  XL                 ; 0250 DD A5
        and  yh                 ; 0252 FD A4
        AND  YH                 ; 0254 FD A4
        and  yl                 ; 0256 FD A5
        AND  YL                 ; 0258 FD A5
        bit  0,(hl)             ; 025A CB 46
        BIT  0,(HL)             ; 025C CB 46
        bit  0,(ix+-128)        ; 025E DD CB 80 46
        BIT  0,(IX+-128)        ; 0262 DD CB 80 46
        bit  0,(ix+-1)          ; 0266 DD CB FF 46
        BIT  0,(IX+-1)          ; 026A DD CB FF 46
        bit  0,(ix+0)           ; 026E DD CB 00 46
        BIT  0,(IX+0)           ; 0272 DD CB 00 46
        bit  0,(ix+127)         ; 0276 DD CB 7F 46
        BIT  0,(IX+127)         ; 027A DD CB 7F 46
        bit  0,(iy+-128)        ; 027E FD CB 80 46
        BIT  0,(IY+-128)        ; 0282 FD CB 80 46
        bit  0,(iy+-1)          ; 0286 FD CB FF 46
        BIT  0,(IY+-1)          ; 028A FD CB FF 46
        bit  0,(iy+0)           ; 028E FD CB 00 46
        BIT  0,(IY+0)           ; 0292 FD CB 00 46
        bit  0,(iy+127)         ; 0296 FD CB 7F 46
        BIT  0,(IY+127)         ; 029A FD CB 7F 46
        bit  0,[hl]             ; 029E CB 46
        BIT  0,[HL]             ; 02A0 CB 46
        bit  0,[ix+-128]        ; 02A2 DD CB 80 46
        BIT  0,[IX+-128]        ; 02A6 DD CB 80 46
        bit  0,[ix+-1]          ; 02AA DD CB FF 46
        BIT  0,[IX+-1]          ; 02AE DD CB FF 46
        bit  0,[ix+0]           ; 02B2 DD CB 00 46
        BIT  0,[IX+0]           ; 02B6 DD CB 00 46
        bit  0,[ix+127]         ; 02BA DD CB 7F 46
        BIT  0,[IX+127]         ; 02BE DD CB 7F 46
        bit  0,[iy+-128]        ; 02C2 FD CB 80 46
        BIT  0,[IY+-128]        ; 02C6 FD CB 80 46
        bit  0,[iy+-1]          ; 02CA FD CB FF 46
        BIT  0,[IY+-1]          ; 02CE FD CB FF 46
        bit  0,[iy+0]           ; 02D2 FD CB 00 46
        BIT  0,[IY+0]           ; 02D6 FD CB 00 46
        bit  0,[iy+127]         ; 02DA FD CB 7F 46
        BIT  0,[IY+127]         ; 02DE FD CB 7F 46
        bit  0,a                ; 02E2 CB 47
        BIT  0,A                ; 02E4 CB 47
        bit  0,b                ; 02E6 CB 40
        BIT  0,B                ; 02E8 CB 40
        bit  0,c                ; 02EA CB 41
        BIT  0,C                ; 02EC CB 41
        bit  0,d                ; 02EE CB 42
        BIT  0,D                ; 02F0 CB 42
        bit  0,e                ; 02F2 CB 43
        BIT  0,E                ; 02F4 CB 43
        bit  0,h                ; 02F6 CB 44
        BIT  0,H                ; 02F8 CB 44
        bit  0,l                ; 02FA CB 45
        BIT  0,L                ; 02FC CB 45
        bit  1,(hl)             ; 02FE CB 4E
        BIT  1,(HL)             ; 0300 CB 4E
        bit  1,(ix+-128)        ; 0302 DD CB 80 4E
        BIT  1,(IX+-128)        ; 0306 DD CB 80 4E
        bit  1,(ix+-1)          ; 030A DD CB FF 4E
        BIT  1,(IX+-1)          ; 030E DD CB FF 4E
        bit  1,(ix+0)           ; 0312 DD CB 00 4E
        BIT  1,(IX+0)           ; 0316 DD CB 00 4E
        bit  1,(ix+127)         ; 031A DD CB 7F 4E
        BIT  1,(IX+127)         ; 031E DD CB 7F 4E
        bit  1,(iy+-128)        ; 0322 FD CB 80 4E
        BIT  1,(IY+-128)        ; 0326 FD CB 80 4E
        bit  1,(iy+-1)          ; 032A FD CB FF 4E
        BIT  1,(IY+-1)          ; 032E FD CB FF 4E
        bit  1,(iy+0)           ; 0332 FD CB 00 4E
        BIT  1,(IY+0)           ; 0336 FD CB 00 4E
        bit  1,(iy+127)         ; 033A FD CB 7F 4E
        BIT  1,(IY+127)         ; 033E FD CB 7F 4E
        bit  1,[hl]             ; 0342 CB 4E
        BIT  1,[HL]             ; 0344 CB 4E
        bit  1,[ix+-128]        ; 0346 DD CB 80 4E
        BIT  1,[IX+-128]        ; 034A DD CB 80 4E
        bit  1,[ix+-1]          ; 034E DD CB FF 4E
        BIT  1,[IX+-1]          ; 0352 DD CB FF 4E
        bit  1,[ix+0]           ; 0356 DD CB 00 4E
        BIT  1,[IX+0]           ; 035A DD CB 00 4E
        bit  1,[ix+127]         ; 035E DD CB 7F 4E
        BIT  1,[IX+127]         ; 0362 DD CB 7F 4E
        bit  1,[iy+-128]        ; 0366 FD CB 80 4E
        BIT  1,[IY+-128]        ; 036A FD CB 80 4E
        bit  1,[iy+-1]          ; 036E FD CB FF 4E
        BIT  1,[IY+-1]          ; 0372 FD CB FF 4E
        bit  1,[iy+0]           ; 0376 FD CB 00 4E
        BIT  1,[IY+0]           ; 037A FD CB 00 4E
        bit  1,[iy+127]         ; 037E FD CB 7F 4E
        BIT  1,[IY+127]         ; 0382 FD CB 7F 4E
        bit  1,a                ; 0386 CB 4F
        BIT  1,A                ; 0388 CB 4F
        bit  1,b                ; 038A CB 48
        BIT  1,B                ; 038C CB 48
        bit  1,c                ; 038E CB 49
        BIT  1,C                ; 0390 CB 49
        bit  1,d                ; 0392 CB 4A
        BIT  1,D                ; 0394 CB 4A
        bit  1,e                ; 0396 CB 4B
        BIT  1,E                ; 0398 CB 4B
        bit  1,h                ; 039A CB 4C
        BIT  1,H                ; 039C CB 4C
        bit  1,l                ; 039E CB 4D
        BIT  1,L                ; 03A0 CB 4D
        bit  2,(hl)             ; 03A2 CB 56
        BIT  2,(HL)             ; 03A4 CB 56
        bit  2,(ix+-128)        ; 03A6 DD CB 80 56
        BIT  2,(IX+-128)        ; 03AA DD CB 80 56
        bit  2,(ix+-1)          ; 03AE DD CB FF 56
        BIT  2,(IX+-1)          ; 03B2 DD CB FF 56
        bit  2,(ix+0)           ; 03B6 DD CB 00 56
        BIT  2,(IX+0)           ; 03BA DD CB 00 56
        bit  2,(ix+127)         ; 03BE DD CB 7F 56
        BIT  2,(IX+127)         ; 03C2 DD CB 7F 56
        bit  2,(iy+-128)        ; 03C6 FD CB 80 56
        BIT  2,(IY+-128)        ; 03CA FD CB 80 56
        bit  2,(iy+-1)          ; 03CE FD CB FF 56
        BIT  2,(IY+-1)          ; 03D2 FD CB FF 56
        bit  2,(iy+0)           ; 03D6 FD CB 00 56
        BIT  2,(IY+0)           ; 03DA FD CB 00 56
        bit  2,(iy+127)         ; 03DE FD CB 7F 56
        BIT  2,(IY+127)         ; 03E2 FD CB 7F 56
        bit  2,[hl]             ; 03E6 CB 56
        BIT  2,[HL]             ; 03E8 CB 56
        bit  2,[ix+-128]        ; 03EA DD CB 80 56
        BIT  2,[IX+-128]        ; 03EE DD CB 80 56
        bit  2,[ix+-1]          ; 03F2 DD CB FF 56
        BIT  2,[IX+-1]          ; 03F6 DD CB FF 56
        bit  2,[ix+0]           ; 03FA DD CB 00 56
        BIT  2,[IX+0]           ; 03FE DD CB 00 56
        bit  2,[ix+127]         ; 0402 DD CB 7F 56
        BIT  2,[IX+127]         ; 0406 DD CB 7F 56
        bit  2,[iy+-128]        ; 040A FD CB 80 56
        BIT  2,[IY+-128]        ; 040E FD CB 80 56
        bit  2,[iy+-1]          ; 0412 FD CB FF 56
        BIT  2,[IY+-1]          ; 0416 FD CB FF 56
        bit  2,[iy+0]           ; 041A FD CB 00 56
        BIT  2,[IY+0]           ; 041E FD CB 00 56
        bit  2,[iy+127]         ; 0422 FD CB 7F 56
        BIT  2,[IY+127]         ; 0426 FD CB 7F 56
        bit  2,a                ; 042A CB 57
        BIT  2,A                ; 042C CB 57
        bit  2,b                ; 042E CB 50
        BIT  2,B                ; 0430 CB 50
        bit  2,c                ; 0432 CB 51
        BIT  2,C                ; 0434 CB 51
        bit  2,d                ; 0436 CB 52
        BIT  2,D                ; 0438 CB 52
        bit  2,e                ; 043A CB 53
        BIT  2,E                ; 043C CB 53
        bit  2,h                ; 043E CB 54
        BIT  2,H                ; 0440 CB 54
        bit  2,l                ; 0442 CB 55
        BIT  2,L                ; 0444 CB 55
        bit  3,(hl)             ; 0446 CB 5E
        BIT  3,(HL)             ; 0448 CB 5E
        bit  3,(ix+-128)        ; 044A DD CB 80 5E
        BIT  3,(IX+-128)        ; 044E DD CB 80 5E
        bit  3,(ix+-1)          ; 0452 DD CB FF 5E
        BIT  3,(IX+-1)          ; 0456 DD CB FF 5E
        bit  3,(ix+0)           ; 045A DD CB 00 5E
        BIT  3,(IX+0)           ; 045E DD CB 00 5E
        bit  3,(ix+127)         ; 0462 DD CB 7F 5E
        BIT  3,(IX+127)         ; 0466 DD CB 7F 5E
        bit  3,(iy+-128)        ; 046A FD CB 80 5E
        BIT  3,(IY+-128)        ; 046E FD CB 80 5E
        bit  3,(iy+-1)          ; 0472 FD CB FF 5E
        BIT  3,(IY+-1)          ; 0476 FD CB FF 5E
        bit  3,(iy+0)           ; 047A FD CB 00 5E
        BIT  3,(IY+0)           ; 047E FD CB 00 5E
        bit  3,(iy+127)         ; 0482 FD CB 7F 5E
        BIT  3,(IY+127)         ; 0486 FD CB 7F 5E
        bit  3,[hl]             ; 048A CB 5E
        BIT  3,[HL]             ; 048C CB 5E
        bit  3,[ix+-128]        ; 048E DD CB 80 5E
        BIT  3,[IX+-128]        ; 0492 DD CB 80 5E
        bit  3,[ix+-1]          ; 0496 DD CB FF 5E
        BIT  3,[IX+-1]          ; 049A DD CB FF 5E
        bit  3,[ix+0]           ; 049E DD CB 00 5E
        BIT  3,[IX+0]           ; 04A2 DD CB 00 5E
        bit  3,[ix+127]         ; 04A6 DD CB 7F 5E
        BIT  3,[IX+127]         ; 04AA DD CB 7F 5E
        bit  3,[iy+-128]        ; 04AE FD CB 80 5E
        BIT  3,[IY+-128]        ; 04B2 FD CB 80 5E
        bit  3,[iy+-1]          ; 04B6 FD CB FF 5E
        BIT  3,[IY+-1]          ; 04BA FD CB FF 5E
        bit  3,[iy+0]           ; 04BE FD CB 00 5E
        BIT  3,[IY+0]           ; 04C2 FD CB 00 5E
        bit  3,[iy+127]         ; 04C6 FD CB 7F 5E
        BIT  3,[IY+127]         ; 04CA FD CB 7F 5E
        bit  3,a                ; 04CE CB 5F
        BIT  3,A                ; 04D0 CB 5F
        bit  3,b                ; 04D2 CB 58
        BIT  3,B                ; 04D4 CB 58
        bit  3,c                ; 04D6 CB 59
        BIT  3,C                ; 04D8 CB 59
        bit  3,d                ; 04DA CB 5A
        BIT  3,D                ; 04DC CB 5A
        bit  3,e                ; 04DE CB 5B
        BIT  3,E                ; 04E0 CB 5B
        bit  3,h                ; 04E2 CB 5C
        BIT  3,H                ; 04E4 CB 5C
        bit  3,l                ; 04E6 CB 5D
        BIT  3,L                ; 04E8 CB 5D
        bit  4,(hl)             ; 04EA CB 66
        BIT  4,(HL)             ; 04EC CB 66
        bit  4,(ix+-128)        ; 04EE DD CB 80 66
        BIT  4,(IX+-128)        ; 04F2 DD CB 80 66
        bit  4,(ix+-1)          ; 04F6 DD CB FF 66
        BIT  4,(IX+-1)          ; 04FA DD CB FF 66
        bit  4,(ix+0)           ; 04FE DD CB 00 66
        BIT  4,(IX+0)           ; 0502 DD CB 00 66
        bit  4,(ix+127)         ; 0506 DD CB 7F 66
        BIT  4,(IX+127)         ; 050A DD CB 7F 66
        bit  4,(iy+-128)        ; 050E FD CB 80 66
        BIT  4,(IY+-128)        ; 0512 FD CB 80 66
        bit  4,(iy+-1)          ; 0516 FD CB FF 66
        BIT  4,(IY+-1)          ; 051A FD CB FF 66
        bit  4,(iy+0)           ; 051E FD CB 00 66
        BIT  4,(IY+0)           ; 0522 FD CB 00 66
        bit  4,(iy+127)         ; 0526 FD CB 7F 66
        BIT  4,(IY+127)         ; 052A FD CB 7F 66
        bit  4,[hl]             ; 052E CB 66
        BIT  4,[HL]             ; 0530 CB 66
        bit  4,[ix+-128]        ; 0532 DD CB 80 66
        BIT  4,[IX+-128]        ; 0536 DD CB 80 66
        bit  4,[ix+-1]          ; 053A DD CB FF 66
        BIT  4,[IX+-1]          ; 053E DD CB FF 66
        bit  4,[ix+0]           ; 0542 DD CB 00 66
        BIT  4,[IX+0]           ; 0546 DD CB 00 66
        bit  4,[ix+127]         ; 054A DD CB 7F 66
        BIT  4,[IX+127]         ; 054E DD CB 7F 66
        bit  4,[iy+-128]        ; 0552 FD CB 80 66
        BIT  4,[IY+-128]        ; 0556 FD CB 80 66
        bit  4,[iy+-1]          ; 055A FD CB FF 66
        BIT  4,[IY+-1]          ; 055E FD CB FF 66
        bit  4,[iy+0]           ; 0562 FD CB 00 66
        BIT  4,[IY+0]           ; 0566 FD CB 00 66
        bit  4,[iy+127]         ; 056A FD CB 7F 66
        BIT  4,[IY+127]         ; 056E FD CB 7F 66
        bit  4,a                ; 0572 CB 67
        BIT  4,A                ; 0574 CB 67
        bit  4,b                ; 0576 CB 60
        BIT  4,B                ; 0578 CB 60
        bit  4,c                ; 057A CB 61
        BIT  4,C                ; 057C CB 61
        bit  4,d                ; 057E CB 62
        BIT  4,D                ; 0580 CB 62
        bit  4,e                ; 0582 CB 63
        BIT  4,E                ; 0584 CB 63
        bit  4,h                ; 0586 CB 64
        BIT  4,H                ; 0588 CB 64
        bit  4,l                ; 058A CB 65
        BIT  4,L                ; 058C CB 65
        bit  5,(hl)             ; 058E CB 6E
        BIT  5,(HL)             ; 0590 CB 6E
        bit  5,(ix+-128)        ; 0592 DD CB 80 6E
        BIT  5,(IX+-128)        ; 0596 DD CB 80 6E
        bit  5,(ix+-1)          ; 059A DD CB FF 6E
        BIT  5,(IX+-1)          ; 059E DD CB FF 6E
        bit  5,(ix+0)           ; 05A2 DD CB 00 6E
        BIT  5,(IX+0)           ; 05A6 DD CB 00 6E
        bit  5,(ix+127)         ; 05AA DD CB 7F 6E
        BIT  5,(IX+127)         ; 05AE DD CB 7F 6E
        bit  5,(iy+-128)        ; 05B2 FD CB 80 6E
        BIT  5,(IY+-128)        ; 05B6 FD CB 80 6E
        bit  5,(iy+-1)          ; 05BA FD CB FF 6E
        BIT  5,(IY+-1)          ; 05BE FD CB FF 6E
        bit  5,(iy+0)           ; 05C2 FD CB 00 6E
        BIT  5,(IY+0)           ; 05C6 FD CB 00 6E
        bit  5,(iy+127)         ; 05CA FD CB 7F 6E
        BIT  5,(IY+127)         ; 05CE FD CB 7F 6E
        bit  5,[hl]             ; 05D2 CB 6E
        BIT  5,[HL]             ; 05D4 CB 6E
        bit  5,[ix+-128]        ; 05D6 DD CB 80 6E
        BIT  5,[IX+-128]        ; 05DA DD CB 80 6E
        bit  5,[ix+-1]          ; 05DE DD CB FF 6E
        BIT  5,[IX+-1]          ; 05E2 DD CB FF 6E
        bit  5,[ix+0]           ; 05E6 DD CB 00 6E
        BIT  5,[IX+0]           ; 05EA DD CB 00 6E
        bit  5,[ix+127]         ; 05EE DD CB 7F 6E
        BIT  5,[IX+127]         ; 05F2 DD CB 7F 6E
        bit  5,[iy+-128]        ; 05F6 FD CB 80 6E
        BIT  5,[IY+-128]        ; 05FA FD CB 80 6E
        bit  5,[iy+-1]          ; 05FE FD CB FF 6E
        BIT  5,[IY+-1]          ; 0602 FD CB FF 6E
        bit  5,[iy+0]           ; 0606 FD CB 00 6E
        BIT  5,[IY+0]           ; 060A FD CB 00 6E
        bit  5,[iy+127]         ; 060E FD CB 7F 6E
        BIT  5,[IY+127]         ; 0612 FD CB 7F 6E
        bit  5,a                ; 0616 CB 6F
        BIT  5,A                ; 0618 CB 6F
        bit  5,b                ; 061A CB 68
        BIT  5,B                ; 061C CB 68
        bit  5,c                ; 061E CB 69
        BIT  5,C                ; 0620 CB 69
        bit  5,d                ; 0622 CB 6A
        BIT  5,D                ; 0624 CB 6A
        bit  5,e                ; 0626 CB 6B
        BIT  5,E                ; 0628 CB 6B
        bit  5,h                ; 062A CB 6C
        BIT  5,H                ; 062C CB 6C
        bit  5,l                ; 062E CB 6D
        BIT  5,L                ; 0630 CB 6D
        bit  6,(hl)             ; 0632 CB 76
        BIT  6,(HL)             ; 0634 CB 76
        bit  6,(ix+-128)        ; 0636 DD CB 80 76
        BIT  6,(IX+-128)        ; 063A DD CB 80 76
        bit  6,(ix+-1)          ; 063E DD CB FF 76
        BIT  6,(IX+-1)          ; 0642 DD CB FF 76
        bit  6,(ix+0)           ; 0646 DD CB 00 76
        BIT  6,(IX+0)           ; 064A DD CB 00 76
        bit  6,(ix+127)         ; 064E DD CB 7F 76
        BIT  6,(IX+127)         ; 0652 DD CB 7F 76
        bit  6,(iy+-128)        ; 0656 FD CB 80 76
        BIT  6,(IY+-128)        ; 065A FD CB 80 76
        bit  6,(iy+-1)          ; 065E FD CB FF 76
        BIT  6,(IY+-1)          ; 0662 FD CB FF 76
        bit  6,(iy+0)           ; 0666 FD CB 00 76
        BIT  6,(IY+0)           ; 066A FD CB 00 76
        bit  6,(iy+127)         ; 066E FD CB 7F 76
        BIT  6,(IY+127)         ; 0672 FD CB 7F 76
        bit  6,[hl]             ; 0676 CB 76
        BIT  6,[HL]             ; 0678 CB 76
        bit  6,[ix+-128]        ; 067A DD CB 80 76
        BIT  6,[IX+-128]        ; 067E DD CB 80 76
        bit  6,[ix+-1]          ; 0682 DD CB FF 76
        BIT  6,[IX+-1]          ; 0686 DD CB FF 76
        bit  6,[ix+0]           ; 068A DD CB 00 76
        BIT  6,[IX+0]           ; 068E DD CB 00 76
        bit  6,[ix+127]         ; 0692 DD CB 7F 76
        BIT  6,[IX+127]         ; 0696 DD CB 7F 76
        bit  6,[iy+-128]        ; 069A FD CB 80 76
        BIT  6,[IY+-128]        ; 069E FD CB 80 76
        bit  6,[iy+-1]          ; 06A2 FD CB FF 76
        BIT  6,[IY+-1]          ; 06A6 FD CB FF 76
        bit  6,[iy+0]           ; 06AA FD CB 00 76
        BIT  6,[IY+0]           ; 06AE FD CB 00 76
        bit  6,[iy+127]         ; 06B2 FD CB 7F 76
        BIT  6,[IY+127]         ; 06B6 FD CB 7F 76
        bit  6,a                ; 06BA CB 77
        BIT  6,A                ; 06BC CB 77
        bit  6,b                ; 06BE CB 70
        BIT  6,B                ; 06C0 CB 70
        bit  6,c                ; 06C2 CB 71
        BIT  6,C                ; 06C4 CB 71
        bit  6,d                ; 06C6 CB 72
        BIT  6,D                ; 06C8 CB 72
        bit  6,e                ; 06CA CB 73
        BIT  6,E                ; 06CC CB 73
        bit  6,h                ; 06CE CB 74
        BIT  6,H                ; 06D0 CB 74
        bit  6,l                ; 06D2 CB 75
        BIT  6,L                ; 06D4 CB 75
        bit  7,(hl)             ; 06D6 CB 7E
        BIT  7,(HL)             ; 06D8 CB 7E
        bit  7,(ix+-128)        ; 06DA DD CB 80 7E
        BIT  7,(IX+-128)        ; 06DE DD CB 80 7E
        bit  7,(ix+-1)          ; 06E2 DD CB FF 7E
        BIT  7,(IX+-1)          ; 06E6 DD CB FF 7E
        bit  7,(ix+0)           ; 06EA DD CB 00 7E
        BIT  7,(IX+0)           ; 06EE DD CB 00 7E
        bit  7,(ix+127)         ; 06F2 DD CB 7F 7E
        BIT  7,(IX+127)         ; 06F6 DD CB 7F 7E
        bit  7,(iy+-128)        ; 06FA FD CB 80 7E
        BIT  7,(IY+-128)        ; 06FE FD CB 80 7E
        bit  7,(iy+-1)          ; 0702 FD CB FF 7E
        BIT  7,(IY+-1)          ; 0706 FD CB FF 7E
        bit  7,(iy+0)           ; 070A FD CB 00 7E
        BIT  7,(IY+0)           ; 070E FD CB 00 7E
        bit  7,(iy+127)         ; 0712 FD CB 7F 7E
        BIT  7,(IY+127)         ; 0716 FD CB 7F 7E
        bit  7,[hl]             ; 071A CB 7E
        BIT  7,[HL]             ; 071C CB 7E
        bit  7,[ix+-128]        ; 071E DD CB 80 7E
        BIT  7,[IX+-128]        ; 0722 DD CB 80 7E
        bit  7,[ix+-1]          ; 0726 DD CB FF 7E
        BIT  7,[IX+-1]          ; 072A DD CB FF 7E
        bit  7,[ix+0]           ; 072E DD CB 00 7E
        BIT  7,[IX+0]           ; 0732 DD CB 00 7E
        bit  7,[ix+127]         ; 0736 DD CB 7F 7E
        BIT  7,[IX+127]         ; 073A DD CB 7F 7E
        bit  7,[iy+-128]        ; 073E FD CB 80 7E
        BIT  7,[IY+-128]        ; 0742 FD CB 80 7E
        bit  7,[iy+-1]          ; 0746 FD CB FF 7E
        BIT  7,[IY+-1]          ; 074A FD CB FF 7E
        bit  7,[iy+0]           ; 074E FD CB 00 7E
        BIT  7,[IY+0]           ; 0752 FD CB 00 7E
        bit  7,[iy+127]         ; 0756 FD CB 7F 7E
        BIT  7,[IY+127]         ; 075A FD CB 7F 7E
        bit  7,a                ; 075E CB 7F
        BIT  7,A                ; 0760 CB 7F
        bit  7,b                ; 0762 CB 78
        BIT  7,B                ; 0764 CB 78
        bit  7,c                ; 0766 CB 79
        BIT  7,C                ; 0768 CB 79
        bit  7,d                ; 076A CB 7A
        BIT  7,D                ; 076C CB 7A
        bit  7,e                ; 076E CB 7B
        BIT  7,E                ; 0770 CB 7B
        bit  7,h                ; 0772 CB 7C
        BIT  7,H                ; 0774 CB 7C
        bit  7,l                ; 0776 CB 7D
        BIT  7,L                ; 0778 CB 7D
        call -32768             ; 077A CD 00 80
        CALL -32768             ; 077D CD 00 80
        call -128               ; 0780 CD 80 FF
        CALL -128               ; 0783 CD 80 FF
        call -1                 ; 0786 CD FF FF
        CALL -1                 ; 0789 CD FF FF
        call 0                  ; 078C CD 00 00
        CALL 0                  ; 078F CD 00 00
        call 127                ; 0792 CD 7F 00
        CALL 127                ; 0795 CD 7F 00
        call 255                ; 0798 CD FF 00
        CALL 255                ; 079B CD FF 00
        call 32767              ; 079E CD FF 7F
        CALL 32767              ; 07A1 CD FF 7F
        call 65535              ; 07A4 CD FF FF
        CALL 65535              ; 07A7 CD FF FF
        call c,-32768           ; 07AA DC 00 80
        CALL C,-32768           ; 07AD DC 00 80
        call c,-128             ; 07B0 DC 80 FF
        CALL C,-128             ; 07B3 DC 80 FF
        call c,-1               ; 07B6 DC FF FF
        CALL C,-1               ; 07B9 DC FF FF
        call c,0                ; 07BC DC 00 00
        CALL C,0                ; 07BF DC 00 00
        call c,127              ; 07C2 DC 7F 00
        CALL C,127              ; 07C5 DC 7F 00
        call c,255              ; 07C8 DC FF 00
        CALL C,255              ; 07CB DC FF 00
        call c,32767            ; 07CE DC FF 7F
        CALL C,32767            ; 07D1 DC FF 7F
        call c,65535            ; 07D4 DC FF FF
        CALL C,65535            ; 07D7 DC FF FF
        call m,-32768           ; 07DA FC 00 80
        CALL M,-32768           ; 07DD FC 00 80
        call m,-128             ; 07E0 FC 80 FF
        CALL M,-128             ; 07E3 FC 80 FF
        call m,-1               ; 07E6 FC FF FF
        CALL M,-1               ; 07E9 FC FF FF
        call m,0                ; 07EC FC 00 00
        CALL M,0                ; 07EF FC 00 00
        call m,127              ; 07F2 FC 7F 00
        CALL M,127              ; 07F5 FC 7F 00
        call m,255              ; 07F8 FC FF 00
        CALL M,255              ; 07FB FC FF 00
        call m,32767            ; 07FE FC FF 7F
        CALL M,32767            ; 0801 FC FF 7F
        call m,65535            ; 0804 FC FF FF
        CALL M,65535            ; 0807 FC FF FF
        call nc,-32768          ; 080A D4 00 80
        CALL NC,-32768          ; 080D D4 00 80
        call nc,-128            ; 0810 D4 80 FF
        CALL NC,-128            ; 0813 D4 80 FF
        call nc,-1              ; 0816 D4 FF FF
        CALL NC,-1              ; 0819 D4 FF FF
        call nc,0               ; 081C D4 00 00
        CALL NC,0               ; 081F D4 00 00
        call nc,127             ; 0822 D4 7F 00
        CALL NC,127             ; 0825 D4 7F 00
        call nc,255             ; 0828 D4 FF 00
        CALL NC,255             ; 082B D4 FF 00
        call nc,32767           ; 082E D4 FF 7F
        CALL NC,32767           ; 0831 D4 FF 7F
        call nc,65535           ; 0834 D4 FF FF
        CALL NC,65535           ; 0837 D4 FF FF
        call nz,-32768          ; 083A C4 00 80
        CALL NZ,-32768          ; 083D C4 00 80
        call nz,-128            ; 0840 C4 80 FF
        CALL NZ,-128            ; 0843 C4 80 FF
        call nz,-1              ; 0846 C4 FF FF
        CALL NZ,-1              ; 0849 C4 FF FF
        call nz,0               ; 084C C4 00 00
        CALL NZ,0               ; 084F C4 00 00
        call nz,127             ; 0852 C4 7F 00
        CALL NZ,127             ; 0855 C4 7F 00
        call nz,255             ; 0858 C4 FF 00
        CALL NZ,255             ; 085B C4 FF 00
        call nz,32767           ; 085E C4 FF 7F
        CALL NZ,32767           ; 0861 C4 FF 7F
        call nz,65535           ; 0864 C4 FF FF
        CALL NZ,65535           ; 0867 C4 FF FF
        call p,-32768           ; 086A F4 00 80
        CALL P,-32768           ; 086D F4 00 80
        call p,-128             ; 0870 F4 80 FF
        CALL P,-128             ; 0873 F4 80 FF
        call p,-1               ; 0876 F4 FF FF
        CALL P,-1               ; 0879 F4 FF FF
        call p,0                ; 087C F4 00 00
        CALL P,0                ; 087F F4 00 00
        call p,127              ; 0882 F4 7F 00
        CALL P,127              ; 0885 F4 7F 00
        call p,255              ; 0888 F4 FF 00
        CALL P,255              ; 088B F4 FF 00
        call p,32767            ; 088E F4 FF 7F
        CALL P,32767            ; 0891 F4 FF 7F
        call p,65535            ; 0894 F4 FF FF
        CALL P,65535            ; 0897 F4 FF FF
        call pe,-32768          ; 089A EC 00 80
        CALL PE,-32768          ; 089D EC 00 80
        call pe,-128            ; 08A0 EC 80 FF
        CALL PE,-128            ; 08A3 EC 80 FF
        call pe,-1              ; 08A6 EC FF FF
        CALL PE,-1              ; 08A9 EC FF FF
        call pe,0               ; 08AC EC 00 00
        CALL PE,0               ; 08AF EC 00 00
        call pe,127             ; 08B2 EC 7F 00
        CALL PE,127             ; 08B5 EC 7F 00
        call pe,255             ; 08B8 EC FF 00
        CALL PE,255             ; 08BB EC FF 00
        call pe,32767           ; 08BE EC FF 7F
        CALL PE,32767           ; 08C1 EC FF 7F
        call pe,65535           ; 08C4 EC FF FF
        CALL PE,65535           ; 08C7 EC FF FF
        call po,-32768          ; 08CA E4 00 80
        CALL PO,-32768          ; 08CD E4 00 80
        call po,-128            ; 08D0 E4 80 FF
        CALL PO,-128            ; 08D3 E4 80 FF
        call po,-1              ; 08D6 E4 FF FF
        CALL PO,-1              ; 08D9 E4 FF FF
        call po,0               ; 08DC E4 00 00
        CALL PO,0               ; 08DF E4 00 00
        call po,127             ; 08E2 E4 7F 00
        CALL PO,127             ; 08E5 E4 7F 00
        call po,255             ; 08E8 E4 FF 00
        CALL PO,255             ; 08EB E4 FF 00
        call po,32767           ; 08EE E4 FF 7F
        CALL PO,32767           ; 08F1 E4 FF 7F
        call po,65535           ; 08F4 E4 FF FF
        CALL PO,65535           ; 08F7 E4 FF FF
        call z,-32768           ; 08FA CC 00 80
        CALL Z,-32768           ; 08FD CC 00 80
        call z,-128             ; 0900 CC 80 FF
        CALL Z,-128             ; 0903 CC 80 FF
        call z,-1               ; 0906 CC FF FF
        CALL Z,-1               ; 0909 CC FF FF
        call z,0                ; 090C CC 00 00
        CALL Z,0                ; 090F CC 00 00
        call z,127              ; 0912 CC 7F 00
        CALL Z,127              ; 0915 CC 7F 00
        call z,255              ; 0918 CC FF 00
        CALL Z,255              ; 091B CC FF 00
        call z,32767            ; 091E CC FF 7F
        CALL Z,32767            ; 0921 CC FF 7F
        call z,65535            ; 0924 CC FF FF
        CALL Z,65535            ; 0927 CC FF FF
        ccf                     ; 092A 3F
        CCF                     ; 092B 3F
        cp   (hl)               ; 092C BE
        CP   (HL)               ; 092D BE
        cp   (ix+-128)          ; 092E DD BE 80
        CP   (IX+-128)          ; 0931 DD BE 80
        cp   (ix+-1)            ; 0934 DD BE FF
        CP   (IX+-1)            ; 0937 DD BE FF
        cp   (ix+0)             ; 093A DD BE 00
        CP   (IX+0)             ; 093D DD BE 00
        cp   (ix+127)           ; 0940 DD BE 7F
        CP   (IX+127)           ; 0943 DD BE 7F
        cp   (iy+-128)          ; 0946 FD BE 80
        CP   (IY+-128)          ; 0949 FD BE 80
        cp   (iy+-1)            ; 094C FD BE FF
        CP   (IY+-1)            ; 094F FD BE FF
        cp   (iy+0)             ; 0952 FD BE 00
        CP   (IY+0)             ; 0955 FD BE 00
        cp   (iy+127)           ; 0958 FD BE 7F
        CP   (IY+127)           ; 095B FD BE 7F
        cp   -128               ; 095E FE 80
        CP   -128               ; 0960 FE 80
        cp   -1                 ; 0962 FE FF
        CP   -1                 ; 0964 FE FF
        cp   0                  ; 0966 FE 00
        CP   0                  ; 0968 FE 00
        cp   127                ; 096A FE 7F
        CP   127                ; 096C FE 7F
        cp   255                ; 096E FE FF
        CP   255                ; 0970 FE FF
        cp   [hl]               ; 0972 BE
        CP   [HL]               ; 0973 BE
        cp   [ix+-128]          ; 0974 DD BE 80
        CP   [IX+-128]          ; 0977 DD BE 80
        cp   [ix+-1]            ; 097A DD BE FF
        CP   [IX+-1]            ; 097D DD BE FF
        cp   [ix+0]             ; 0980 DD BE 00
        CP   [IX+0]             ; 0983 DD BE 00
        cp   [ix+127]           ; 0986 DD BE 7F
        CP   [IX+127]           ; 0989 DD BE 7F
        cp   [iy+-128]          ; 098C FD BE 80
        CP   [IY+-128]          ; 098F FD BE 80
        cp   [iy+-1]            ; 0992 FD BE FF
        CP   [IY+-1]            ; 0995 FD BE FF
        cp   [iy+0]             ; 0998 FD BE 00
        CP   [IY+0]             ; 099B FD BE 00
        cp   [iy+127]           ; 099E FD BE 7F
        CP   [IY+127]           ; 09A1 FD BE 7F
        cp   a                  ; 09A4 BF
        CP   A                  ; 09A5 BF
        cp   b                  ; 09A6 B8
        CP   B                  ; 09A7 B8
        cp   c                  ; 09A8 B9
        CP   C                  ; 09A9 B9
        cp   d                  ; 09AA BA
        CP   D                  ; 09AB BA
        cp   e                  ; 09AC BB
        CP   E                  ; 09AD BB
        cp   h                  ; 09AE BC
        CP   H                  ; 09AF BC
        cp   hx                 ; 09B0 DD BC
        CP   HX                 ; 09B2 DD BC
        cp   hy                 ; 09B4 FD BC
        CP   HY                 ; 09B6 FD BC
        cp   ixh                ; 09B8 DD BC
        CP   IXH                ; 09BA DD BC
        cp   ixl                ; 09BC DD BD
        CP   IXL                ; 09BE DD BD
        cp   iyh                ; 09C0 FD BC
        CP   IYH                ; 09C2 FD BC
        cp   iyl                ; 09C4 FD BD
        CP   IYL                ; 09C6 FD BD
        cp   l                  ; 09C8 BD
        CP   L                  ; 09C9 BD
        cp   lx                 ; 09CA DD BD
        CP   LX                 ; 09CC DD BD
        cp   ly                 ; 09CE FD BD
        CP   LY                 ; 09D0 FD BD
        cp   xh                 ; 09D2 DD BC
        CP   XH                 ; 09D4 DD BC
        cp   xl                 ; 09D6 DD BD
        CP   XL                 ; 09D8 DD BD
        cp   yh                 ; 09DA FD BC
        CP   YH                 ; 09DC FD BC
        cp   yl                 ; 09DE FD BD
        CP   YL                 ; 09E0 FD BD
        cpd                     ; 09E2 ED A9
        CPD                     ; 09E4 ED A9
        cpdr                    ; 09E6 ED B9
        CPDR                    ; 09E8 ED B9
        cpi                     ; 09EA ED A1
        CPI                     ; 09EC ED A1
        cpir                    ; 09EE ED B1
        CPIR                    ; 09F0 ED B1
        cpl                     ; 09F2 2F
        CPL                     ; 09F3 2F
        daa                     ; 09F4 27
        DAA                     ; 09F5 27
        dec  (hl)               ; 09F6 35
        DEC  (HL)               ; 09F7 35
        dec  (ix+-128)          ; 09F8 DD 35 80
        DEC  (IX+-128)          ; 09FB DD 35 80
        dec  (ix+-1)            ; 09FE DD 35 FF
        DEC  (IX+-1)            ; 0A01 DD 35 FF
        dec  (ix+0)             ; 0A04 DD 35 00
        DEC  (IX+0)             ; 0A07 DD 35 00
        dec  (ix+127)           ; 0A0A DD 35 7F
        DEC  (IX+127)           ; 0A0D DD 35 7F
        dec  (iy+-128)          ; 0A10 FD 35 80
        DEC  (IY+-128)          ; 0A13 FD 35 80
        dec  (iy+-1)            ; 0A16 FD 35 FF
        DEC  (IY+-1)            ; 0A19 FD 35 FF
        dec  (iy+0)             ; 0A1C FD 35 00
        DEC  (IY+0)             ; 0A1F FD 35 00
        dec  (iy+127)           ; 0A22 FD 35 7F
        DEC  (IY+127)           ; 0A25 FD 35 7F
        dec  [hl]               ; 0A28 35
        DEC  [HL]               ; 0A29 35
        dec  [ix+-128]          ; 0A2A DD 35 80
        DEC  [IX+-128]          ; 0A2D DD 35 80
        dec  [ix+-1]            ; 0A30 DD 35 FF
        DEC  [IX+-1]            ; 0A33 DD 35 FF
        dec  [ix+0]             ; 0A36 DD 35 00
        DEC  [IX+0]             ; 0A39 DD 35 00
        dec  [ix+127]           ; 0A3C DD 35 7F
        DEC  [IX+127]           ; 0A3F DD 35 7F
        dec  [iy+-128]          ; 0A42 FD 35 80
        DEC  [IY+-128]          ; 0A45 FD 35 80
        dec  [iy+-1]            ; 0A48 FD 35 FF
        DEC  [IY+-1]            ; 0A4B FD 35 FF
        dec  [iy+0]             ; 0A4E FD 35 00
        DEC  [IY+0]             ; 0A51 FD 35 00
        dec  [iy+127]           ; 0A54 FD 35 7F
        DEC  [IY+127]           ; 0A57 FD 35 7F
        dec  a                  ; 0A5A 3D
        DEC  A                  ; 0A5B 3D
        dec  b                  ; 0A5C 05
        DEC  B                  ; 0A5D 05
        dec  bc                 ; 0A5E 0B
        DEC  BC                 ; 0A5F 0B
        dec  c                  ; 0A60 0D
        DEC  C                  ; 0A61 0D
        dec  d                  ; 0A62 15
        DEC  D                  ; 0A63 15
        dec  de                 ; 0A64 1B
        DEC  DE                 ; 0A65 1B
        dec  e                  ; 0A66 1D
        DEC  E                  ; 0A67 1D
        dec  h                  ; 0A68 25
        DEC  H                  ; 0A69 25
        dec  hl                 ; 0A6A 2B
        DEC  HL                 ; 0A6B 2B
        dec  hx                 ; 0A6C DD 25
        DEC  HX                 ; 0A6E DD 25
        dec  hy                 ; 0A70 FD 25
        DEC  HY                 ; 0A72 FD 25
        dec  ix                 ; 0A74 DD 2B
        DEC  IX                 ; 0A76 DD 2B
        dec  ixh                ; 0A78 DD 25
        DEC  IXH                ; 0A7A DD 25
        dec  ixl                ; 0A7C DD 2D
        DEC  IXL                ; 0A7E DD 2D
        dec  iy                 ; 0A80 FD 2B
        DEC  IY                 ; 0A82 FD 2B
        dec  iyh                ; 0A84 FD 25
        DEC  IYH                ; 0A86 FD 25
        dec  iyl                ; 0A88 FD 2D
        DEC  IYL                ; 0A8A FD 2D
        dec  l                  ; 0A8C 2D
        DEC  L                  ; 0A8D 2D
        dec  lx                 ; 0A8E DD 2D
        DEC  LX                 ; 0A90 DD 2D
        dec  ly                 ; 0A92 FD 2D
        DEC  LY                 ; 0A94 FD 2D
        dec  sp                 ; 0A96 3B
        DEC  SP                 ; 0A97 3B
        dec  xh                 ; 0A98 DD 25
        DEC  XH                 ; 0A9A DD 25
        dec  xl                 ; 0A9C DD 2D
        DEC  XL                 ; 0A9E DD 2D
        dec  yh                 ; 0AA0 FD 25
        DEC  YH                 ; 0AA2 FD 25
        dec  yl                 ; 0AA4 FD 2D
        DEC  YL                 ; 0AA6 FD 2D
        di                      ; 0AA8 F3
        DI                      ; 0AA9 F3
        djnz 2604               ; 0AAA 10 80
        DJNZ 2606               ; 0AAC 10 80
        djnz 2735               ; 0AAE 10 FF
        DJNZ 2737               ; 0AB0 10 FF
        djnz 2740               ; 0AB2 10 00
        DJNZ 2742               ; 0AB4 10 00
        djnz 2871               ; 0AB6 10 7F
        DJNZ 2873               ; 0AB8 10 7F
        ei                      ; 0ABA FB
        EI                      ; 0ABB FB
        ex   (sp),hl            ; 0ABC E3
        EX   (SP),HL            ; 0ABD E3
        ex   (sp),ix            ; 0ABE DD E3
        EX   (SP),IX            ; 0AC0 DD E3
        ex   (sp),iy            ; 0AC2 FD E3
        EX   (SP),IY            ; 0AC4 FD E3
        ex   [sp],hl            ; 0AC6 E3
        EX   [SP],HL            ; 0AC7 E3
        ex   [sp],ix            ; 0AC8 DD E3
        EX   [SP],IX            ; 0ACA DD E3
        ex   [sp],iy            ; 0ACC FD E3
        EX   [SP],IY            ; 0ACE FD E3
        ex   af                 ; 0AD0 08
        EX   AF                 ; 0AD1 08
        ex   af,af              ; 0AD2 08
        EX   AF,AF              ; 0AD3 08
        ex   af,af'             ; 0AD4 08
        EX   AF,AF'             ; 0AD5 08
        ex   de,hl              ; 0AD6 EB
        EX   DE,HL              ; 0AD7 EB
        exa                     ; 0AD8 08
        EXA                     ; 0AD9 08
        exx                     ; 0ADA D9
        EXX                     ; 0ADB D9
        halt                    ; 0ADC 76
        HALT                    ; 0ADD 76
        im   0                  ; 0ADE ED 46
        IM   0                  ; 0AE0 ED 46
        im   1                  ; 0AE2 ED 56
        IM   1                  ; 0AE4 ED 56
        im   2                  ; 0AE6 ED 5E
        IM   2                  ; 0AE8 ED 5E
        in   a,(-128)           ; 0AEA DB 80
        IN   A,(-128)           ; 0AEC DB 80
        in   a,(-1)             ; 0AEE DB FF
        IN   A,(-1)             ; 0AF0 DB FF
        in   a,(0)              ; 0AF2 DB 00
        IN   A,(0)              ; 0AF4 DB 00
        in   a,(127)            ; 0AF6 DB 7F
        IN   A,(127)            ; 0AF8 DB 7F
        in   a,(255)            ; 0AFA DB FF
        IN   A,(255)            ; 0AFC DB FF
        in   a,(c)              ; 0AFE ED 78
        IN   A,(C)              ; 0B00 ED 78
        in   a,[-128]           ; 0B02 DB 80
        IN   A,[-128]           ; 0B04 DB 80
        in   a,[-1]             ; 0B06 DB FF
        IN   A,[-1]             ; 0B08 DB FF
        in   a,[0]              ; 0B0A DB 00
        IN   A,[0]              ; 0B0C DB 00
        in   a,[127]            ; 0B0E DB 7F
        IN   A,[127]            ; 0B10 DB 7F
        in   a,[255]            ; 0B12 DB FF
        IN   A,[255]            ; 0B14 DB FF
        in   a,[c]              ; 0B16 ED 78
        IN   A,[C]              ; 0B18 ED 78
        in   b,(c)              ; 0B1A ED 40
        IN   B,(C)              ; 0B1C ED 40
        in   b,[c]              ; 0B1E ED 40
        IN   B,[C]              ; 0B20 ED 40
        in   c,(c)              ; 0B22 ED 48
        IN   C,(C)              ; 0B24 ED 48
        in   c,[c]              ; 0B26 ED 48
        IN   C,[C]              ; 0B28 ED 48
        in   d,(c)              ; 0B2A ED 50
        IN   D,(C)              ; 0B2C ED 50
        in   d,[c]              ; 0B2E ED 50
        IN   D,[C]              ; 0B30 ED 50
        in   e,(c)              ; 0B32 ED 58
        IN   E,(C)              ; 0B34 ED 58
        in   e,[c]              ; 0B36 ED 58
        IN   E,[C]              ; 0B38 ED 58
        in   f,(c)              ; 0B3A ED 70
        IN   F,(C)              ; 0B3C ED 70
        in   f,[c]              ; 0B3E ED 70
        IN   F,[C]              ; 0B40 ED 70
        in   h,(c)              ; 0B42 ED 60
        IN   H,(C)              ; 0B44 ED 60
        in   h,[c]              ; 0B46 ED 60
        IN   H,[C]              ; 0B48 ED 60
        in   l,(c)              ; 0B4A ED 68
        IN   L,(C)              ; 0B4C ED 68
        in   l,[c]              ; 0B4E ED 68
        IN   L,[C]              ; 0B50 ED 68
        inc  (hl)               ; 0B52 34
        INC  (HL)               ; 0B53 34
        inc  (ix+-128)          ; 0B54 DD 34 80
        INC  (IX+-128)          ; 0B57 DD 34 80
        inc  (ix+-1)            ; 0B5A DD 34 FF
        INC  (IX+-1)            ; 0B5D DD 34 FF
        inc  (ix+0)             ; 0B60 DD 34 00
        INC  (IX+0)             ; 0B63 DD 34 00
        inc  (ix+127)           ; 0B66 DD 34 7F
        INC  (IX+127)           ; 0B69 DD 34 7F
        inc  (iy+-128)          ; 0B6C FD 34 80
        INC  (IY+-128)          ; 0B6F FD 34 80
        inc  (iy+-1)            ; 0B72 FD 34 FF
        INC  (IY+-1)            ; 0B75 FD 34 FF
        inc  (iy+0)             ; 0B78 FD 34 00
        INC  (IY+0)             ; 0B7B FD 34 00
        inc  (iy+127)           ; 0B7E FD 34 7F
        INC  (IY+127)           ; 0B81 FD 34 7F
        inc  [hl]               ; 0B84 34
        INC  [HL]               ; 0B85 34
        inc  [ix+-128]          ; 0B86 DD 34 80
        INC  [IX+-128]          ; 0B89 DD 34 80
        inc  [ix+-1]            ; 0B8C DD 34 FF
        INC  [IX+-1]            ; 0B8F DD 34 FF
        inc  [ix+0]             ; 0B92 DD 34 00
        INC  [IX+0]             ; 0B95 DD 34 00
        inc  [ix+127]           ; 0B98 DD 34 7F
        INC  [IX+127]           ; 0B9B DD 34 7F
        inc  [iy+-128]          ; 0B9E FD 34 80
        INC  [IY+-128]          ; 0BA1 FD 34 80
        inc  [iy+-1]            ; 0BA4 FD 34 FF
        INC  [IY+-1]            ; 0BA7 FD 34 FF
        inc  [iy+0]             ; 0BAA FD 34 00
        INC  [IY+0]             ; 0BAD FD 34 00
        inc  [iy+127]           ; 0BB0 FD 34 7F
        INC  [IY+127]           ; 0BB3 FD 34 7F
        inc  a                  ; 0BB6 3C
        INC  A                  ; 0BB7 3C
        inc  b                  ; 0BB8 04
        INC  B                  ; 0BB9 04
        inc  bc                 ; 0BBA 03
        INC  BC                 ; 0BBB 03
        inc  c                  ; 0BBC 0C
        INC  C                  ; 0BBD 0C
        inc  d                  ; 0BBE 14
        INC  D                  ; 0BBF 14
        inc  de                 ; 0BC0 13
        INC  DE                 ; 0BC1 13
        inc  e                  ; 0BC2 1C
        INC  E                  ; 0BC3 1C
        inc  h                  ; 0BC4 24
        INC  H                  ; 0BC5 24
        inc  hl                 ; 0BC6 23
        INC  HL                 ; 0BC7 23
        inc  hx                 ; 0BC8 DD 24
        INC  HX                 ; 0BCA DD 24
        inc  hy                 ; 0BCC FD 24
        INC  HY                 ; 0BCE FD 24
        inc  ix                 ; 0BD0 DD 23
        INC  IX                 ; 0BD2 DD 23
        inc  ixh                ; 0BD4 DD 24
        INC  IXH                ; 0BD6 DD 24
        inc  ixl                ; 0BD8 DD 2C
        INC  IXL                ; 0BDA DD 2C
        inc  iy                 ; 0BDC FD 23
        INC  IY                 ; 0BDE FD 23
        inc  iyh                ; 0BE0 FD 24
        INC  IYH                ; 0BE2 FD 24
        inc  iyl                ; 0BE4 FD 2C
        INC  IYL                ; 0BE6 FD 2C
        inc  l                  ; 0BE8 2C
        INC  L                  ; 0BE9 2C
        inc  lx                 ; 0BEA DD 2C
        INC  LX                 ; 0BEC DD 2C
        inc  ly                 ; 0BEE FD 2C
        INC  LY                 ; 0BF0 FD 2C
        inc  sp                 ; 0BF2 33
        INC  SP                 ; 0BF3 33
        inc  xh                 ; 0BF4 DD 24
        INC  XH                 ; 0BF6 DD 24
        inc  xl                 ; 0BF8 DD 2C
        INC  XL                 ; 0BFA DD 2C
        inc  yh                 ; 0BFC FD 24
        INC  YH                 ; 0BFE FD 24
        inc  yl                 ; 0C00 FD 2C
        INC  YL                 ; 0C02 FD 2C
        ind                     ; 0C04 ED AA
        IND                     ; 0C06 ED AA
        indr                    ; 0C08 ED BA
        INDR                    ; 0C0A ED BA
        ini                     ; 0C0C ED A2
        INI                     ; 0C0E ED A2
        inir                    ; 0C10 ED B2
        INIR                    ; 0C12 ED B2
        jp   (hl)               ; 0C14 E9
        JP   (HL)               ; 0C15 E9
        jp   (ix)               ; 0C16 DD E9
        JP   (IX)               ; 0C18 DD E9
        jp   (iy)               ; 0C1A FD E9
        JP   (IY)               ; 0C1C FD E9
        jp   -32768             ; 0C1E C3 00 80
        JP   -32768             ; 0C21 C3 00 80
        jp   -128               ; 0C24 C3 80 FF
        JP   -128               ; 0C27 C3 80 FF
        jp   -1                 ; 0C2A C3 FF FF
        JP   -1                 ; 0C2D C3 FF FF
        jp   0                  ; 0C30 C3 00 00
        JP   0                  ; 0C33 C3 00 00
        jp   127                ; 0C36 C3 7F 00
        JP   127                ; 0C39 C3 7F 00
        jp   255                ; 0C3C C3 FF 00
        JP   255                ; 0C3F C3 FF 00
        jp   32767              ; 0C42 C3 FF 7F
        JP   32767              ; 0C45 C3 FF 7F
        jp   65535              ; 0C48 C3 FF FF
        JP   65535              ; 0C4B C3 FF FF
        jp   [hl]               ; 0C4E E9
        JP   [HL]               ; 0C4F E9
        jp   [ix]               ; 0C50 DD E9
        JP   [IX]               ; 0C52 DD E9
        jp   [iy]               ; 0C54 FD E9
        JP   [IY]               ; 0C56 FD E9
        jp   c,-32768           ; 0C58 DA 00 80
        JP   C,-32768           ; 0C5B DA 00 80
        jp   c,-128             ; 0C5E DA 80 FF
        JP   C,-128             ; 0C61 DA 80 FF
        jp   c,-1               ; 0C64 DA FF FF
        JP   C,-1               ; 0C67 DA FF FF
        jp   c,0                ; 0C6A DA 00 00
        JP   C,0                ; 0C6D DA 00 00
        jp   c,127              ; 0C70 DA 7F 00
        JP   C,127              ; 0C73 DA 7F 00
        jp   c,255              ; 0C76 DA FF 00
        JP   C,255              ; 0C79 DA FF 00
        jp   c,32767            ; 0C7C DA FF 7F
        JP   C,32767            ; 0C7F DA FF 7F
        jp   c,65535            ; 0C82 DA FF FF
        JP   C,65535            ; 0C85 DA FF FF
        jp   hl                 ; 0C88 E9
        JP   HL                 ; 0C89 E9
        jp   ix                 ; 0C8A DD E9
        JP   IX                 ; 0C8C DD E9
        jp   iy                 ; 0C8E FD E9
        JP   IY                 ; 0C90 FD E9
        jp   m,-32768           ; 0C92 FA 00 80
        JP   M,-32768           ; 0C95 FA 00 80
        jp   m,-128             ; 0C98 FA 80 FF
        JP   M,-128             ; 0C9B FA 80 FF
        jp   m,-1               ; 0C9E FA FF FF
        JP   M,-1               ; 0CA1 FA FF FF
        jp   m,0                ; 0CA4 FA 00 00
        JP   M,0                ; 0CA7 FA 00 00
        jp   m,127              ; 0CAA FA 7F 00
        JP   M,127              ; 0CAD FA 7F 00
        jp   m,255              ; 0CB0 FA FF 00
        JP   M,255              ; 0CB3 FA FF 00
        jp   m,32767            ; 0CB6 FA FF 7F
        JP   M,32767            ; 0CB9 FA FF 7F
        jp   m,65535            ; 0CBC FA FF FF
        JP   M,65535            ; 0CBF FA FF FF
        jp   nc,-32768          ; 0CC2 D2 00 80
        JP   NC,-32768          ; 0CC5 D2 00 80
        jp   nc,-128            ; 0CC8 D2 80 FF
        JP   NC,-128            ; 0CCB D2 80 FF
        jp   nc,-1              ; 0CCE D2 FF FF
        JP   NC,-1              ; 0CD1 D2 FF FF
        jp   nc,0               ; 0CD4 D2 00 00
        JP   NC,0               ; 0CD7 D2 00 00
        jp   nc,127             ; 0CDA D2 7F 00
        JP   NC,127             ; 0CDD D2 7F 00
        jp   nc,255             ; 0CE0 D2 FF 00
        JP   NC,255             ; 0CE3 D2 FF 00
        jp   nc,32767           ; 0CE6 D2 FF 7F
        JP   NC,32767           ; 0CE9 D2 FF 7F
        jp   nc,65535           ; 0CEC D2 FF FF
        JP   NC,65535           ; 0CEF D2 FF FF
        jp   nz,-32768          ; 0CF2 C2 00 80
        JP   NZ,-32768          ; 0CF5 C2 00 80
        jp   nz,-128            ; 0CF8 C2 80 FF
        JP   NZ,-128            ; 0CFB C2 80 FF
        jp   nz,-1              ; 0CFE C2 FF FF
        JP   NZ,-1              ; 0D01 C2 FF FF
        jp   nz,0               ; 0D04 C2 00 00
        JP   NZ,0               ; 0D07 C2 00 00
        jp   nz,127             ; 0D0A C2 7F 00
        JP   NZ,127             ; 0D0D C2 7F 00
        jp   nz,255             ; 0D10 C2 FF 00
        JP   NZ,255             ; 0D13 C2 FF 00
        jp   nz,32767           ; 0D16 C2 FF 7F
        JP   NZ,32767           ; 0D19 C2 FF 7F
        jp   nz,65535           ; 0D1C C2 FF FF
        JP   NZ,65535           ; 0D1F C2 FF FF
        jp   p,-32768           ; 0D22 F2 00 80
        JP   P,-32768           ; 0D25 F2 00 80
        jp   p,-128             ; 0D28 F2 80 FF
        JP   P,-128             ; 0D2B F2 80 FF
        jp   p,-1               ; 0D2E F2 FF FF
        JP   P,-1               ; 0D31 F2 FF FF
        jp   p,0                ; 0D34 F2 00 00
        JP   P,0                ; 0D37 F2 00 00
        jp   p,127              ; 0D3A F2 7F 00
        JP   P,127              ; 0D3D F2 7F 00
        jp   p,255              ; 0D40 F2 FF 00
        JP   P,255              ; 0D43 F2 FF 00
        jp   p,32767            ; 0D46 F2 FF 7F
        JP   P,32767            ; 0D49 F2 FF 7F
        jp   p,65535            ; 0D4C F2 FF FF
        JP   P,65535            ; 0D4F F2 FF FF
        jp   pe,-32768          ; 0D52 EA 00 80
        JP   PE,-32768          ; 0D55 EA 00 80
        jp   pe,-128            ; 0D58 EA 80 FF
        JP   PE,-128            ; 0D5B EA 80 FF
        jp   pe,-1              ; 0D5E EA FF FF
        JP   PE,-1              ; 0D61 EA FF FF
        jp   pe,0               ; 0D64 EA 00 00
        JP   PE,0               ; 0D67 EA 00 00
        jp   pe,127             ; 0D6A EA 7F 00
        JP   PE,127             ; 0D6D EA 7F 00
        jp   pe,255             ; 0D70 EA FF 00
        JP   PE,255             ; 0D73 EA FF 00
        jp   pe,32767           ; 0D76 EA FF 7F
        JP   PE,32767           ; 0D79 EA FF 7F
        jp   pe,65535           ; 0D7C EA FF FF
        JP   PE,65535           ; 0D7F EA FF FF
        jp   po,-32768          ; 0D82 E2 00 80
        JP   PO,-32768          ; 0D85 E2 00 80
        jp   po,-128            ; 0D88 E2 80 FF
        JP   PO,-128            ; 0D8B E2 80 FF
        jp   po,-1              ; 0D8E E2 FF FF
        JP   PO,-1              ; 0D91 E2 FF FF
        jp   po,0               ; 0D94 E2 00 00
        JP   PO,0               ; 0D97 E2 00 00
        jp   po,127             ; 0D9A E2 7F 00
        JP   PO,127             ; 0D9D E2 7F 00
        jp   po,255             ; 0DA0 E2 FF 00
        JP   PO,255             ; 0DA3 E2 FF 00
        jp   po,32767           ; 0DA6 E2 FF 7F
        JP   PO,32767           ; 0DA9 E2 FF 7F
        jp   po,65535           ; 0DAC E2 FF FF
        JP   PO,65535           ; 0DAF E2 FF FF
        jp   z,-32768           ; 0DB2 CA 00 80
        JP   Z,-32768           ; 0DB5 CA 00 80
        jp   z,-128             ; 0DB8 CA 80 FF
        JP   Z,-128             ; 0DBB CA 80 FF
        jp   z,-1               ; 0DBE CA FF FF
        JP   Z,-1               ; 0DC1 CA FF FF
        jp   z,0                ; 0DC4 CA 00 00
        JP   Z,0                ; 0DC7 CA 00 00
        jp   z,127              ; 0DCA CA 7F 00
        JP   Z,127              ; 0DCD CA 7F 00
        jp   z,255              ; 0DD0 CA FF 00
        JP   Z,255              ; 0DD3 CA FF 00
        jp   z,32767            ; 0DD6 CA FF 7F
        JP   Z,32767            ; 0DD9 CA FF 7F
        jp   z,65535            ; 0DDC CA FF FF
        JP   Z,65535            ; 0DDF CA FF FF
        jr   3428               ; 0DE2 18 80
        JR   3430               ; 0DE4 18 80
        jr   3559               ; 0DE6 18 FF
        JR   3561               ; 0DE8 18 FF
        jr   3564               ; 0DEA 18 00
        JR   3566               ; 0DEC 18 00
        jr   3695               ; 0DEE 18 7F
        JR   3697               ; 0DF0 18 7F
        jr   c,3444             ; 0DF2 38 80
        JR   C,3446             ; 0DF4 38 80
        jr   c,3575             ; 0DF6 38 FF
        JR   C,3577             ; 0DF8 38 FF
        jr   c,3580             ; 0DFA 38 00
        JR   C,3582             ; 0DFC 38 00
        jr   c,3711             ; 0DFE 38 7F
        JR   C,3713             ; 0E00 38 7F
        jr   nc,3460            ; 0E02 30 80
        JR   NC,3462            ; 0E04 30 80
        jr   nc,3591            ; 0E06 30 FF
        JR   NC,3593            ; 0E08 30 FF
        jr   nc,3596            ; 0E0A 30 00
        JR   NC,3598            ; 0E0C 30 00
        jr   nc,3727            ; 0E0E 30 7F
        JR   NC,3729            ; 0E10 30 7F
        jr   nz,3476            ; 0E12 20 80
        JR   NZ,3478            ; 0E14 20 80
        jr   nz,3607            ; 0E16 20 FF
        JR   NZ,3609            ; 0E18 20 FF
        jr   nz,3612            ; 0E1A 20 00
        JR   NZ,3614            ; 0E1C 20 00
        jr   nz,3743            ; 0E1E 20 7F
        JR   NZ,3745            ; 0E20 20 7F
        jr   z,3492             ; 0E22 28 80
        JR   Z,3494             ; 0E24 28 80
        jr   z,3623             ; 0E26 28 FF
        JR   Z,3625             ; 0E28 28 FF
        jr   z,3628             ; 0E2A 28 00
        JR   Z,3630             ; 0E2C 28 00
        jr   z,3759             ; 0E2E 28 7F
        JR   Z,3761             ; 0E30 28 7F
        ld   (-32768),a         ; 0E32 32 00 80
        LD   (-32768),A         ; 0E35 32 00 80
        ld   (-128),a           ; 0E38 32 80 FF
        LD   (-128),A           ; 0E3B 32 80 FF
        ld   (-1),a             ; 0E3E 32 FF FF
        LD   (-1),A             ; 0E41 32 FF FF
        ld   (0),a              ; 0E44 32 00 00
        LD   (0),A              ; 0E47 32 00 00
        ld   (127),a            ; 0E4A 32 7F 00
        LD   (127),A            ; 0E4D 32 7F 00
        ld   (255),a            ; 0E50 32 FF 00
        LD   (255),A            ; 0E53 32 FF 00
        ld   (32767),a          ; 0E56 32 FF 7F
        LD   (32767),A          ; 0E59 32 FF 7F
        ld   (65535),a          ; 0E5C 32 FF FF
        LD   (65535),A          ; 0E5F 32 FF FF
        ld   (-32768),bc        ; 0E62 ED 43 00 80
        LD   (-32768),BC        ; 0E66 ED 43 00 80
        ld   (-128),bc          ; 0E6A ED 43 80 FF
        LD   (-128),BC          ; 0E6E ED 43 80 FF
        ld   (-1),bc            ; 0E72 ED 43 FF FF
        LD   (-1),BC            ; 0E76 ED 43 FF FF
        ld   (0),bc             ; 0E7A ED 43 00 00
        LD   (0),BC             ; 0E7E ED 43 00 00
        ld   (127),bc           ; 0E82 ED 43 7F 00
        LD   (127),BC           ; 0E86 ED 43 7F 00
        ld   (255),bc           ; 0E8A ED 43 FF 00
        LD   (255),BC           ; 0E8E ED 43 FF 00
        ld   (32767),bc         ; 0E92 ED 43 FF 7F
        LD   (32767),BC         ; 0E96 ED 43 FF 7F
        ld   (65535),bc         ; 0E9A ED 43 FF FF
        LD   (65535),BC         ; 0E9E ED 43 FF FF
        ld   (-32768),de        ; 0EA2 ED 53 00 80
        LD   (-32768),DE        ; 0EA6 ED 53 00 80
        ld   (-128),de          ; 0EAA ED 53 80 FF
        LD   (-128),DE          ; 0EAE ED 53 80 FF
        ld   (-1),de            ; 0EB2 ED 53 FF FF
        LD   (-1),DE            ; 0EB6 ED 53 FF FF
        ld   (0),de             ; 0EBA ED 53 00 00
        LD   (0),DE             ; 0EBE ED 53 00 00
        ld   (127),de           ; 0EC2 ED 53 7F 00
        LD   (127),DE           ; 0EC6 ED 53 7F 00
        ld   (255),de           ; 0ECA ED 53 FF 00
        LD   (255),DE           ; 0ECE ED 53 FF 00
        ld   (32767),de         ; 0ED2 ED 53 FF 7F
        LD   (32767),DE         ; 0ED6 ED 53 FF 7F
        ld   (65535),de         ; 0EDA ED 53 FF FF
        LD   (65535),DE         ; 0EDE ED 53 FF FF
        ld   (-32768),hl        ; 0EE2 22 00 80
        LD   (-32768),HL        ; 0EE5 22 00 80
        ld   (-128),hl          ; 0EE8 22 80 FF
        LD   (-128),HL          ; 0EEB 22 80 FF
        ld   (-1),hl            ; 0EEE 22 FF FF
        LD   (-1),HL            ; 0EF1 22 FF FF
        ld   (0),hl             ; 0EF4 22 00 00
        LD   (0),HL             ; 0EF7 22 00 00
        ld   (127),hl           ; 0EFA 22 7F 00
        LD   (127),HL           ; 0EFD 22 7F 00
        ld   (255),hl           ; 0F00 22 FF 00
        LD   (255),HL           ; 0F03 22 FF 00
        ld   (32767),hl         ; 0F06 22 FF 7F
        LD   (32767),HL         ; 0F09 22 FF 7F
        ld   (65535),hl         ; 0F0C 22 FF FF
        LD   (65535),HL         ; 0F0F 22 FF FF
        ld   (-32768),ix        ; 0F12 DD 22 00 80
        LD   (-32768),IX        ; 0F16 DD 22 00 80
        ld   (-128),ix          ; 0F1A DD 22 80 FF
        LD   (-128),IX          ; 0F1E DD 22 80 FF
        ld   (-1),ix            ; 0F22 DD 22 FF FF
        LD   (-1),IX            ; 0F26 DD 22 FF FF
        ld   (0),ix             ; 0F2A DD 22 00 00
        LD   (0),IX             ; 0F2E DD 22 00 00
        ld   (127),ix           ; 0F32 DD 22 7F 00
        LD   (127),IX           ; 0F36 DD 22 7F 00
        ld   (255),ix           ; 0F3A DD 22 FF 00
        LD   (255),IX           ; 0F3E DD 22 FF 00
        ld   (32767),ix         ; 0F42 DD 22 FF 7F
        LD   (32767),IX         ; 0F46 DD 22 FF 7F
        ld   (65535),ix         ; 0F4A DD 22 FF FF
        LD   (65535),IX         ; 0F4E DD 22 FF FF
        ld   (-32768),iy        ; 0F52 FD 22 00 80
        LD   (-32768),IY        ; 0F56 FD 22 00 80
        ld   (-128),iy          ; 0F5A FD 22 80 FF
        LD   (-128),IY          ; 0F5E FD 22 80 FF
        ld   (-1),iy            ; 0F62 FD 22 FF FF
        LD   (-1),IY            ; 0F66 FD 22 FF FF
        ld   (0),iy             ; 0F6A FD 22 00 00
        LD   (0),IY             ; 0F6E FD 22 00 00
        ld   (127),iy           ; 0F72 FD 22 7F 00
        LD   (127),IY           ; 0F76 FD 22 7F 00
        ld   (255),iy           ; 0F7A FD 22 FF 00
        LD   (255),IY           ; 0F7E FD 22 FF 00
        ld   (32767),iy         ; 0F82 FD 22 FF 7F
        LD   (32767),IY         ; 0F86 FD 22 FF 7F
        ld   (65535),iy         ; 0F8A FD 22 FF FF
        LD   (65535),IY         ; 0F8E FD 22 FF FF
        ld   (-32768),sp        ; 0F92 ED 73 00 80
        LD   (-32768),SP        ; 0F96 ED 73 00 80
        ld   (-128),sp          ; 0F9A ED 73 80 FF
        LD   (-128),SP          ; 0F9E ED 73 80 FF
        ld   (-1),sp            ; 0FA2 ED 73 FF FF
        LD   (-1),SP            ; 0FA6 ED 73 FF FF
        ld   (0),sp             ; 0FAA ED 73 00 00
        LD   (0),SP             ; 0FAE ED 73 00 00
        ld   (127),sp           ; 0FB2 ED 73 7F 00
        LD   (127),SP           ; 0FB6 ED 73 7F 00
        ld   (255),sp           ; 0FBA ED 73 FF 00
        LD   (255),SP           ; 0FBE ED 73 FF 00
        ld   (32767),sp         ; 0FC2 ED 73 FF 7F
        LD   (32767),SP         ; 0FC6 ED 73 FF 7F
        ld   (65535),sp         ; 0FCA ED 73 FF FF
        LD   (65535),SP         ; 0FCE ED 73 FF FF
        ld   (bc),a             ; 0FD2 02
        LD   (BC),A             ; 0FD3 02
        ld   (de),a             ; 0FD4 12
        LD   (DE),A             ; 0FD5 12
        ld   (hl),-128          ; 0FD6 36 80
        LD   (HL),-128          ; 0FD8 36 80
        ld   (hl),-1            ; 0FDA 36 FF
        LD   (HL),-1            ; 0FDC 36 FF
        ld   (hl),0             ; 0FDE 36 00
        LD   (HL),0             ; 0FE0 36 00
        ld   (hl),127           ; 0FE2 36 7F
        LD   (HL),127           ; 0FE4 36 7F
        ld   (hl),255           ; 0FE6 36 FF
        LD   (HL),255           ; 0FE8 36 FF
        ld   (hl),a             ; 0FEA 77
        LD   (HL),A             ; 0FEB 77
        ld   (hl),b             ; 0FEC 70
        LD   (HL),B             ; 0FED 70
        ld   (hl),bc            ; 0FEE 71 23 70 2B
        LD   (HL),BC            ; 0FF2 71 23 70 2B
        ld   (hl),c             ; 0FF6 71
        LD   (HL),C             ; 0FF7 71
        ld   (hl),d             ; 0FF8 72
        LD   (HL),D             ; 0FF9 72
        ld   (hl),de            ; 0FFA 73 23 72 2B
        LD   (HL),DE            ; 0FFE 73 23 72 2B
        ld   (hl),e             ; 1002 73
        LD   (HL),E             ; 1003 73
        ld   (hl),h             ; 1004 74
        LD   (HL),H             ; 1005 74
        ld   (hl),l             ; 1006 75
        LD   (HL),L             ; 1007 75
        ld   (ix+-128),-128     ; 1008 DD 36 80 80
        LD   (IX+-128),-128     ; 100C DD 36 80 80
        ld   (ix+-128),-1       ; 1010 DD 36 80 FF
        LD   (IX+-128),-1       ; 1014 DD 36 80 FF
        ld   (ix+-128),0        ; 1018 DD 36 80 00
        LD   (IX+-128),0        ; 101C DD 36 80 00
        ld   (ix+-128),127      ; 1020 DD 36 80 7F
        LD   (IX+-128),127      ; 1024 DD 36 80 7F
        ld   (ix+-128),255      ; 1028 DD 36 80 FF
        LD   (IX+-128),255      ; 102C DD 36 80 FF
        ld   (ix+-1),-128       ; 1030 DD 36 FF 80
        LD   (IX+-1),-128       ; 1034 DD 36 FF 80
        ld   (ix+-1),-1         ; 1038 DD 36 FF FF
        LD   (IX+-1),-1         ; 103C DD 36 FF FF
        ld   (ix+-1),0          ; 1040 DD 36 FF 00
        LD   (IX+-1),0          ; 1044 DD 36 FF 00
        ld   (ix+-1),127        ; 1048 DD 36 FF 7F
        LD   (IX+-1),127        ; 104C DD 36 FF 7F
        ld   (ix+-1),255        ; 1050 DD 36 FF FF
        LD   (IX+-1),255        ; 1054 DD 36 FF FF
        ld   (ix+0),-128        ; 1058 DD 36 00 80
        LD   (IX+0),-128        ; 105C DD 36 00 80
        ld   (ix+0),-1          ; 1060 DD 36 00 FF
        LD   (IX+0),-1          ; 1064 DD 36 00 FF
        ld   (ix+0),0           ; 1068 DD 36 00 00
        LD   (IX+0),0           ; 106C DD 36 00 00
        ld   (ix+0),127         ; 1070 DD 36 00 7F
        LD   (IX+0),127         ; 1074 DD 36 00 7F
        ld   (ix+0),255         ; 1078 DD 36 00 FF
        LD   (IX+0),255         ; 107C DD 36 00 FF
        ld   (ix+127),-128      ; 1080 DD 36 7F 80
        LD   (IX+127),-128      ; 1084 DD 36 7F 80
        ld   (ix+127),-1        ; 1088 DD 36 7F FF
        LD   (IX+127),-1        ; 108C DD 36 7F FF
        ld   (ix+127),0         ; 1090 DD 36 7F 00
        LD   (IX+127),0         ; 1094 DD 36 7F 00
        ld   (ix+127),127       ; 1098 DD 36 7F 7F
        LD   (IX+127),127       ; 109C DD 36 7F 7F
        ld   (ix+127),255       ; 10A0 DD 36 7F FF
        LD   (IX+127),255       ; 10A4 DD 36 7F FF
        ld   (ix+-128),a        ; 10A8 DD 77 80
        LD   (IX+-128),A        ; 10AB DD 77 80
        ld   (ix+-1),a          ; 10AE DD 77 FF
        LD   (IX+-1),A          ; 10B1 DD 77 FF
        ld   (ix+0),a           ; 10B4 DD 77 00
        LD   (IX+0),A           ; 10B7 DD 77 00
        ld   (ix+127),a         ; 10BA DD 77 7F
        LD   (IX+127),A         ; 10BD DD 77 7F
        ld   (ix+-128),b        ; 10C0 DD 70 80
        LD   (IX+-128),B        ; 10C3 DD 70 80
        ld   (ix+-1),b          ; 10C6 DD 70 FF
        LD   (IX+-1),B          ; 10C9 DD 70 FF
        ld   (ix+0),b           ; 10CC DD 70 00
        LD   (IX+0),B           ; 10CF DD 70 00
        ld   (ix+127),b         ; 10D2 DD 70 7F
        LD   (IX+127),B         ; 10D5 DD 70 7F
        ld   (ix+-128),bc       ; 10D8 DD 71 80 DD 70 81
        LD   (IX+-128),BC       ; 10DE DD 71 80 DD 70 81
        ld   (ix+-1),bc         ; 10E4 DD 71 FF DD 70 00
        LD   (IX+-1),BC         ; 10EA DD 71 FF DD 70 00
        ld   (ix+0),bc          ; 10F0 DD 71 00 DD 70 01
        LD   (IX+0),BC          ; 10F6 DD 71 00 DD 70 01
        ld   (ix+126),bc        ; 10FC DD 71 7E DD 70 7F
        LD   (IX+126),BC        ; 1102 DD 71 7E DD 70 7F
        ld   (ix+-128),c        ; 1108 DD 71 80
        LD   (IX+-128),C        ; 110B DD 71 80
        ld   (ix+-1),c          ; 110E DD 71 FF
        LD   (IX+-1),C          ; 1111 DD 71 FF
        ld   (ix+0),c           ; 1114 DD 71 00
        LD   (IX+0),C           ; 1117 DD 71 00
        ld   (ix+127),c         ; 111A DD 71 7F
        LD   (IX+127),C         ; 111D DD 71 7F
        ld   (ix+-128),d        ; 1120 DD 72 80
        LD   (IX+-128),D        ; 1123 DD 72 80
        ld   (ix+-1),d          ; 1126 DD 72 FF
        LD   (IX+-1),D          ; 1129 DD 72 FF
        ld   (ix+0),d           ; 112C DD 72 00
        LD   (IX+0),D           ; 112F DD 72 00
        ld   (ix+127),d         ; 1132 DD 72 7F
        LD   (IX+127),D         ; 1135 DD 72 7F
        ld   (ix+-128),de       ; 1138 DD 73 80 DD 72 81
        LD   (IX+-128),DE       ; 113E DD 73 80 DD 72 81
        ld   (ix+-1),de         ; 1144 DD 73 FF DD 72 00
        LD   (IX+-1),DE         ; 114A DD 73 FF DD 72 00
        ld   (ix+0),de          ; 1150 DD 73 00 DD 72 01
        LD   (IX+0),DE          ; 1156 DD 73 00 DD 72 01
        ld   (ix+126),de        ; 115C DD 73 7E DD 72 7F
        LD   (IX+126),DE        ; 1162 DD 73 7E DD 72 7F
        ld   (ix+-128),e        ; 1168 DD 73 80
        LD   (IX+-128),E        ; 116B DD 73 80
        ld   (ix+-1),e          ; 116E DD 73 FF
        LD   (IX+-1),E          ; 1171 DD 73 FF
        ld   (ix+0),e           ; 1174 DD 73 00
        LD   (IX+0),E           ; 1177 DD 73 00
        ld   (ix+127),e         ; 117A DD 73 7F
        LD   (IX+127),E         ; 117D DD 73 7F
        ld   (ix+-128),h        ; 1180 DD 74 80
        LD   (IX+-128),H        ; 1183 DD 74 80
        ld   (ix+-1),h          ; 1186 DD 74 FF
        LD   (IX+-1),H          ; 1189 DD 74 FF
        ld   (ix+0),h           ; 118C DD 74 00
        LD   (IX+0),H           ; 118F DD 74 00
        ld   (ix+127),h         ; 1192 DD 74 7F
        LD   (IX+127),H         ; 1195 DD 74 7F
        ld   (ix+-128),hl       ; 1198 DD 75 80 DD 74 81
        LD   (IX+-128),HL       ; 119E DD 75 80 DD 74 81
        ld   (ix+-1),hl         ; 11A4 DD 75 FF DD 74 00
        LD   (IX+-1),HL         ; 11AA DD 75 FF DD 74 00
        ld   (ix+0),hl          ; 11B0 DD 75 00 DD 74 01
        LD   (IX+0),HL          ; 11B6 DD 75 00 DD 74 01
        ld   (ix+126),hl        ; 11BC DD 75 7E DD 74 7F
        LD   (IX+126),HL        ; 11C2 DD 75 7E DD 74 7F
        ld   (ix+-128),l        ; 11C8 DD 75 80
        LD   (IX+-128),L        ; 11CB DD 75 80
        ld   (ix+-1),l          ; 11CE DD 75 FF
        LD   (IX+-1),L          ; 11D1 DD 75 FF
        ld   (ix+0),l           ; 11D4 DD 75 00
        LD   (IX+0),L           ; 11D7 DD 75 00
        ld   (ix+127),l         ; 11DA DD 75 7F
        LD   (IX+127),L         ; 11DD DD 75 7F
        ld   (iy+-128),-128     ; 11E0 FD 36 80 80
        LD   (IY+-128),-128     ; 11E4 FD 36 80 80
        ld   (iy+-128),-1       ; 11E8 FD 36 80 FF
        LD   (IY+-128),-1       ; 11EC FD 36 80 FF
        ld   (iy+-128),0        ; 11F0 FD 36 80 00
        LD   (IY+-128),0        ; 11F4 FD 36 80 00
        ld   (iy+-128),127      ; 11F8 FD 36 80 7F
        LD   (IY+-128),127      ; 11FC FD 36 80 7F
        ld   (iy+-128),255      ; 1200 FD 36 80 FF
        LD   (IY+-128),255      ; 1204 FD 36 80 FF
        ld   (iy+-1),-128       ; 1208 FD 36 FF 80
        LD   (IY+-1),-128       ; 120C FD 36 FF 80
        ld   (iy+-1),-1         ; 1210 FD 36 FF FF
        LD   (IY+-1),-1         ; 1214 FD 36 FF FF
        ld   (iy+-1),0          ; 1218 FD 36 FF 00
        LD   (IY+-1),0          ; 121C FD 36 FF 00
        ld   (iy+-1),127        ; 1220 FD 36 FF 7F
        LD   (IY+-1),127        ; 1224 FD 36 FF 7F
        ld   (iy+-1),255        ; 1228 FD 36 FF FF
        LD   (IY+-1),255        ; 122C FD 36 FF FF
        ld   (iy+0),-128        ; 1230 FD 36 00 80
        LD   (IY+0),-128        ; 1234 FD 36 00 80
        ld   (iy+0),-1          ; 1238 FD 36 00 FF
        LD   (IY+0),-1          ; 123C FD 36 00 FF
        ld   (iy+0),0           ; 1240 FD 36 00 00
        LD   (IY+0),0           ; 1244 FD 36 00 00
        ld   (iy+0),127         ; 1248 FD 36 00 7F
        LD   (IY+0),127         ; 124C FD 36 00 7F
        ld   (iy+0),255         ; 1250 FD 36 00 FF
        LD   (IY+0),255         ; 1254 FD 36 00 FF
        ld   (iy+127),-128      ; 1258 FD 36 7F 80
        LD   (IY+127),-128      ; 125C FD 36 7F 80
        ld   (iy+127),-1        ; 1260 FD 36 7F FF
        LD   (IY+127),-1        ; 1264 FD 36 7F FF
        ld   (iy+127),0         ; 1268 FD 36 7F 00
        LD   (IY+127),0         ; 126C FD 36 7F 00
        ld   (iy+127),127       ; 1270 FD 36 7F 7F
        LD   (IY+127),127       ; 1274 FD 36 7F 7F
        ld   (iy+127),255       ; 1278 FD 36 7F FF
        LD   (IY+127),255       ; 127C FD 36 7F FF
        ld   (iy+-128),a        ; 1280 FD 77 80
        LD   (IY+-128),A        ; 1283 FD 77 80
        ld   (iy+-1),a          ; 1286 FD 77 FF
        LD   (IY+-1),A          ; 1289 FD 77 FF
        ld   (iy+0),a           ; 128C FD 77 00
        LD   (IY+0),A           ; 128F FD 77 00
        ld   (iy+127),a         ; 1292 FD 77 7F
        LD   (IY+127),A         ; 1295 FD 77 7F
        ld   (iy+-128),b        ; 1298 FD 70 80
        LD   (IY+-128),B        ; 129B FD 70 80
        ld   (iy+-1),b          ; 129E FD 70 FF
        LD   (IY+-1),B          ; 12A1 FD 70 FF
        ld   (iy+0),b           ; 12A4 FD 70 00
        LD   (IY+0),B           ; 12A7 FD 70 00
        ld   (iy+127),b         ; 12AA FD 70 7F
        LD   (IY+127),B         ; 12AD FD 70 7F
        ld   (iy+-128),bc       ; 12B0 FD 71 80 FD 70 81
        LD   (IY+-128),BC       ; 12B6 FD 71 80 FD 70 81
        ld   (iy+-1),bc         ; 12BC FD 71 FF FD 70 00
        LD   (IY+-1),BC         ; 12C2 FD 71 FF FD 70 00
        ld   (iy+0),bc          ; 12C8 FD 71 00 FD 70 01
        LD   (IY+0),BC          ; 12CE FD 71 00 FD 70 01
        ld   (iy+126),bc        ; 12D4 FD 71 7E FD 70 7F
        LD   (IY+126),BC        ; 12DA FD 71 7E FD 70 7F
        ld   (iy+-128),c        ; 12E0 FD 71 80
        LD   (IY+-128),C        ; 12E3 FD 71 80
        ld   (iy+-1),c          ; 12E6 FD 71 FF
        LD   (IY+-1),C          ; 12E9 FD 71 FF
        ld   (iy+0),c           ; 12EC FD 71 00
        LD   (IY+0),C           ; 12EF FD 71 00
        ld   (iy+127),c         ; 12F2 FD 71 7F
        LD   (IY+127),C         ; 12F5 FD 71 7F
        ld   (iy+-128),d        ; 12F8 FD 72 80
        LD   (IY+-128),D        ; 12FB FD 72 80
        ld   (iy+-1),d          ; 12FE FD 72 FF
        LD   (IY+-1),D          ; 1301 FD 72 FF
        ld   (iy+0),d           ; 1304 FD 72 00
        LD   (IY+0),D           ; 1307 FD 72 00
        ld   (iy+127),d         ; 130A FD 72 7F
        LD   (IY+127),D         ; 130D FD 72 7F
        ld   (iy+-128),de       ; 1310 FD 73 80 FD 72 81
        LD   (IY+-128),DE       ; 1316 FD 73 80 FD 72 81
        ld   (iy+-1),de         ; 131C FD 73 FF FD 72 00
        LD   (IY+-1),DE         ; 1322 FD 73 FF FD 72 00
        ld   (iy+0),de          ; 1328 FD 73 00 FD 72 01
        LD   (IY+0),DE          ; 132E FD 73 00 FD 72 01
        ld   (iy+126),de        ; 1334 FD 73 7E FD 72 7F
        LD   (IY+126),DE        ; 133A FD 73 7E FD 72 7F
        ld   (iy+-128),e        ; 1340 FD 73 80
        LD   (IY+-128),E        ; 1343 FD 73 80
        ld   (iy+-1),e          ; 1346 FD 73 FF
        LD   (IY+-1),E          ; 1349 FD 73 FF
        ld   (iy+0),e           ; 134C FD 73 00
        LD   (IY+0),E           ; 134F FD 73 00
        ld   (iy+127),e         ; 1352 FD 73 7F
        LD   (IY+127),E         ; 1355 FD 73 7F
        ld   (iy+-128),h        ; 1358 FD 74 80
        LD   (IY+-128),H        ; 135B FD 74 80
        ld   (iy+-1),h          ; 135E FD 74 FF
        LD   (IY+-1),H          ; 1361 FD 74 FF
        ld   (iy+0),h           ; 1364 FD 74 00
        LD   (IY+0),H           ; 1367 FD 74 00
        ld   (iy+127),h         ; 136A FD 74 7F
        LD   (IY+127),H         ; 136D FD 74 7F
        ld   (iy+-128),hl       ; 1370 FD 75 80 FD 74 81
        LD   (IY+-128),HL       ; 1376 FD 75 80 FD 74 81
        ld   (iy+-1),hl         ; 137C FD 75 FF FD 74 00
        LD   (IY+-1),HL         ; 1382 FD 75 FF FD 74 00
        ld   (iy+0),hl          ; 1388 FD 75 00 FD 74 01
        LD   (IY+0),HL          ; 138E FD 75 00 FD 74 01
        ld   (iy+126),hl        ; 1394 FD 75 7E FD 74 7F
        LD   (IY+126),HL        ; 139A FD 75 7E FD 74 7F
        ld   (iy+-128),l        ; 13A0 FD 75 80
        LD   (IY+-128),L        ; 13A3 FD 75 80
        ld   (iy+-1),l          ; 13A6 FD 75 FF
        LD   (IY+-1),L          ; 13A9 FD 75 FF
        ld   (iy+0),l           ; 13AC FD 75 00
        LD   (IY+0),L           ; 13AF FD 75 00
        ld   (iy+127),l         ; 13B2 FD 75 7F
        LD   (IY+127),L         ; 13B5 FD 75 7F
        ld   [-32768],a         ; 13B8 32 00 80
        LD   [-32768],A         ; 13BB 32 00 80
        ld   [-128],a           ; 13BE 32 80 FF
        LD   [-128],A           ; 13C1 32 80 FF
        ld   [-1],a             ; 13C4 32 FF FF
        LD   [-1],A             ; 13C7 32 FF FF
        ld   [0],a              ; 13CA 32 00 00
        LD   [0],A              ; 13CD 32 00 00
        ld   [127],a            ; 13D0 32 7F 00
        LD   [127],A            ; 13D3 32 7F 00
        ld   [255],a            ; 13D6 32 FF 00
        LD   [255],A            ; 13D9 32 FF 00
        ld   [32767],a          ; 13DC 32 FF 7F
        LD   [32767],A          ; 13DF 32 FF 7F
        ld   [65535],a          ; 13E2 32 FF FF
        LD   [65535],A          ; 13E5 32 FF FF
        ld   [-32768],bc        ; 13E8 ED 43 00 80
        LD   [-32768],BC        ; 13EC ED 43 00 80
        ld   [-128],bc          ; 13F0 ED 43 80 FF
        LD   [-128],BC          ; 13F4 ED 43 80 FF
        ld   [-1],bc            ; 13F8 ED 43 FF FF
        LD   [-1],BC            ; 13FC ED 43 FF FF
        ld   [0],bc             ; 1400 ED 43 00 00
        LD   [0],BC             ; 1404 ED 43 00 00
        ld   [127],bc           ; 1408 ED 43 7F 00
        LD   [127],BC           ; 140C ED 43 7F 00
        ld   [255],bc           ; 1410 ED 43 FF 00
        LD   [255],BC           ; 1414 ED 43 FF 00
        ld   [32767],bc         ; 1418 ED 43 FF 7F
        LD   [32767],BC         ; 141C ED 43 FF 7F
        ld   [65535],bc         ; 1420 ED 43 FF FF
        LD   [65535],BC         ; 1424 ED 43 FF FF
        ld   [-32768],de        ; 1428 ED 53 00 80
        LD   [-32768],DE        ; 142C ED 53 00 80
        ld   [-128],de          ; 1430 ED 53 80 FF
        LD   [-128],DE          ; 1434 ED 53 80 FF
        ld   [-1],de            ; 1438 ED 53 FF FF
        LD   [-1],DE            ; 143C ED 53 FF FF
        ld   [0],de             ; 1440 ED 53 00 00
        LD   [0],DE             ; 1444 ED 53 00 00
        ld   [127],de           ; 1448 ED 53 7F 00
        LD   [127],DE           ; 144C ED 53 7F 00
        ld   [255],de           ; 1450 ED 53 FF 00
        LD   [255],DE           ; 1454 ED 53 FF 00
        ld   [32767],de         ; 1458 ED 53 FF 7F
        LD   [32767],DE         ; 145C ED 53 FF 7F
        ld   [65535],de         ; 1460 ED 53 FF FF
        LD   [65535],DE         ; 1464 ED 53 FF FF
        ld   [-32768],hl        ; 1468 22 00 80
        LD   [-32768],HL        ; 146B 22 00 80
        ld   [-128],hl          ; 146E 22 80 FF
        LD   [-128],HL          ; 1471 22 80 FF
        ld   [-1],hl            ; 1474 22 FF FF
        LD   [-1],HL            ; 1477 22 FF FF
        ld   [0],hl             ; 147A 22 00 00
        LD   [0],HL             ; 147D 22 00 00
        ld   [127],hl           ; 1480 22 7F 00
        LD   [127],HL           ; 1483 22 7F 00
        ld   [255],hl           ; 1486 22 FF 00
        LD   [255],HL           ; 1489 22 FF 00
        ld   [32767],hl         ; 148C 22 FF 7F
        LD   [32767],HL         ; 148F 22 FF 7F
        ld   [65535],hl         ; 1492 22 FF FF
        LD   [65535],HL         ; 1495 22 FF FF
        ld   [-32768],ix        ; 1498 DD 22 00 80
        LD   [-32768],IX        ; 149C DD 22 00 80
        ld   [-128],ix          ; 14A0 DD 22 80 FF
        LD   [-128],IX          ; 14A4 DD 22 80 FF
        ld   [-1],ix            ; 14A8 DD 22 FF FF
        LD   [-1],IX            ; 14AC DD 22 FF FF
        ld   [0],ix             ; 14B0 DD 22 00 00
        LD   [0],IX             ; 14B4 DD 22 00 00
        ld   [127],ix           ; 14B8 DD 22 7F 00
        LD   [127],IX           ; 14BC DD 22 7F 00
        ld   [255],ix           ; 14C0 DD 22 FF 00
        LD   [255],IX           ; 14C4 DD 22 FF 00
        ld   [32767],ix         ; 14C8 DD 22 FF 7F
        LD   [32767],IX         ; 14CC DD 22 FF 7F
        ld   [65535],ix         ; 14D0 DD 22 FF FF
        LD   [65535],IX         ; 14D4 DD 22 FF FF
        ld   [-32768],iy        ; 14D8 FD 22 00 80
        LD   [-32768],IY        ; 14DC FD 22 00 80
        ld   [-128],iy          ; 14E0 FD 22 80 FF
        LD   [-128],IY          ; 14E4 FD 22 80 FF
        ld   [-1],iy            ; 14E8 FD 22 FF FF
        LD   [-1],IY            ; 14EC FD 22 FF FF
        ld   [0],iy             ; 14F0 FD 22 00 00
        LD   [0],IY             ; 14F4 FD 22 00 00
        ld   [127],iy           ; 14F8 FD 22 7F 00
        LD   [127],IY           ; 14FC FD 22 7F 00
        ld   [255],iy           ; 1500 FD 22 FF 00
        LD   [255],IY           ; 1504 FD 22 FF 00
        ld   [32767],iy         ; 1508 FD 22 FF 7F
        LD   [32767],IY         ; 150C FD 22 FF 7F
        ld   [65535],iy         ; 1510 FD 22 FF FF
        LD   [65535],IY         ; 1514 FD 22 FF FF
        ld   [-32768],sp        ; 1518 ED 73 00 80
        LD   [-32768],SP        ; 151C ED 73 00 80
        ld   [-128],sp          ; 1520 ED 73 80 FF
        LD   [-128],SP          ; 1524 ED 73 80 FF
        ld   [-1],sp            ; 1528 ED 73 FF FF
        LD   [-1],SP            ; 152C ED 73 FF FF
        ld   [0],sp             ; 1530 ED 73 00 00
        LD   [0],SP             ; 1534 ED 73 00 00
        ld   [127],sp           ; 1538 ED 73 7F 00
        LD   [127],SP           ; 153C ED 73 7F 00
        ld   [255],sp           ; 1540 ED 73 FF 00
        LD   [255],SP           ; 1544 ED 73 FF 00
        ld   [32767],sp         ; 1548 ED 73 FF 7F
        LD   [32767],SP         ; 154C ED 73 FF 7F
        ld   [65535],sp         ; 1550 ED 73 FF FF
        LD   [65535],SP         ; 1554 ED 73 FF FF
        ld   [bc],a             ; 1558 02
        LD   [BC],A             ; 1559 02
        ld   [de],a             ; 155A 12
        LD   [DE],A             ; 155B 12
        ld   [hl],-128          ; 155C 36 80
        LD   [HL],-128          ; 155E 36 80
        ld   [hl],-1            ; 1560 36 FF
        LD   [HL],-1            ; 1562 36 FF
        ld   [hl],0             ; 1564 36 00
        LD   [HL],0             ; 1566 36 00
        ld   [hl],127           ; 1568 36 7F
        LD   [HL],127           ; 156A 36 7F
        ld   [hl],255           ; 156C 36 FF
        LD   [HL],255           ; 156E 36 FF
        ld   [hl],a             ; 1570 77
        LD   [HL],A             ; 1571 77
        ld   [hl],b             ; 1572 70
        LD   [HL],B             ; 1573 70
        ld   [hl],bc            ; 1574 71 23 70 2B
        LD   [HL],BC            ; 1578 71 23 70 2B
        ld   [hl],c             ; 157C 71
        LD   [HL],C             ; 157D 71
        ld   [hl],d             ; 157E 72
        LD   [HL],D             ; 157F 72
        ld   [hl],de            ; 1580 73 23 72 2B
        LD   [HL],DE            ; 1584 73 23 72 2B
        ld   [hl],e             ; 1588 73
        LD   [HL],E             ; 1589 73
        ld   [hl],h             ; 158A 74
        LD   [HL],H             ; 158B 74
        ld   [hl],l             ; 158C 75
        LD   [HL],L             ; 158D 75
        ld   [ix+-128],-128     ; 158E DD 36 80 80
        LD   [IX+-128],-128     ; 1592 DD 36 80 80
        ld   [ix+-128],-1       ; 1596 DD 36 80 FF
        LD   [IX+-128],-1       ; 159A DD 36 80 FF
        ld   [ix+-128],0        ; 159E DD 36 80 00
        LD   [IX+-128],0        ; 15A2 DD 36 80 00
        ld   [ix+-128],127      ; 15A6 DD 36 80 7F
        LD   [IX+-128],127      ; 15AA DD 36 80 7F
        ld   [ix+-128],255      ; 15AE DD 36 80 FF
        LD   [IX+-128],255      ; 15B2 DD 36 80 FF
        ld   [ix+-1],-128       ; 15B6 DD 36 FF 80
        LD   [IX+-1],-128       ; 15BA DD 36 FF 80
        ld   [ix+-1],-1         ; 15BE DD 36 FF FF
        LD   [IX+-1],-1         ; 15C2 DD 36 FF FF
        ld   [ix+-1],0          ; 15C6 DD 36 FF 00
        LD   [IX+-1],0          ; 15CA DD 36 FF 00
        ld   [ix+-1],127        ; 15CE DD 36 FF 7F
        LD   [IX+-1],127        ; 15D2 DD 36 FF 7F
        ld   [ix+-1],255        ; 15D6 DD 36 FF FF
        LD   [IX+-1],255        ; 15DA DD 36 FF FF
        ld   [ix+0],-128        ; 15DE DD 36 00 80
        LD   [IX+0],-128        ; 15E2 DD 36 00 80
        ld   [ix+0],-1          ; 15E6 DD 36 00 FF
        LD   [IX+0],-1          ; 15EA DD 36 00 FF
        ld   [ix+0],0           ; 15EE DD 36 00 00
        LD   [IX+0],0           ; 15F2 DD 36 00 00
        ld   [ix+0],127         ; 15F6 DD 36 00 7F
        LD   [IX+0],127         ; 15FA DD 36 00 7F
        ld   [ix+0],255         ; 15FE DD 36 00 FF
        LD   [IX+0],255         ; 1602 DD 36 00 FF
        ld   [ix+127],-128      ; 1606 DD 36 7F 80
        LD   [IX+127],-128      ; 160A DD 36 7F 80
        ld   [ix+127],-1        ; 160E DD 36 7F FF
        LD   [IX+127],-1        ; 1612 DD 36 7F FF
        ld   [ix+127],0         ; 1616 DD 36 7F 00
        LD   [IX+127],0         ; 161A DD 36 7F 00
        ld   [ix+127],127       ; 161E DD 36 7F 7F
        LD   [IX+127],127       ; 1622 DD 36 7F 7F
        ld   [ix+127],255       ; 1626 DD 36 7F FF
        LD   [IX+127],255       ; 162A DD 36 7F FF
        ld   [ix+-128],a        ; 162E DD 77 80
        LD   [IX+-128],A        ; 1631 DD 77 80
        ld   [ix+-1],a          ; 1634 DD 77 FF
        LD   [IX+-1],A          ; 1637 DD 77 FF
        ld   [ix+0],a           ; 163A DD 77 00
        LD   [IX+0],A           ; 163D DD 77 00
        ld   [ix+127],a         ; 1640 DD 77 7F
        LD   [IX+127],A         ; 1643 DD 77 7F
        ld   [ix+-128],b        ; 1646 DD 70 80
        LD   [IX+-128],B        ; 1649 DD 70 80
        ld   [ix+-1],b          ; 164C DD 70 FF
        LD   [IX+-1],B          ; 164F DD 70 FF
        ld   [ix+0],b           ; 1652 DD 70 00
        LD   [IX+0],B           ; 1655 DD 70 00
        ld   [ix+127],b         ; 1658 DD 70 7F
        LD   [IX+127],B         ; 165B DD 70 7F
        ld   [ix+-128],bc       ; 165E DD 71 80 DD 70 81
        LD   [IX+-128],BC       ; 1664 DD 71 80 DD 70 81
        ld   [ix+-1],bc         ; 166A DD 71 FF DD 70 00
        LD   [IX+-1],BC         ; 1670 DD 71 FF DD 70 00
        ld   [ix+0],bc          ; 1676 DD 71 00 DD 70 01
        LD   [IX+0],BC          ; 167C DD 71 00 DD 70 01
        ld   [ix+126],bc        ; 1682 DD 71 7E DD 70 7F
        LD   [IX+126],BC        ; 1688 DD 71 7E DD 70 7F
        ld   [ix+-128],c        ; 168E DD 71 80
        LD   [IX+-128],C        ; 1691 DD 71 80
        ld   [ix+-1],c          ; 1694 DD 71 FF
        LD   [IX+-1],C          ; 1697 DD 71 FF
        ld   [ix+0],c           ; 169A DD 71 00
        LD   [IX+0],C           ; 169D DD 71 00
        ld   [ix+127],c         ; 16A0 DD 71 7F
        LD   [IX+127],C         ; 16A3 DD 71 7F
        ld   [ix+-128],d        ; 16A6 DD 72 80
        LD   [IX+-128],D        ; 16A9 DD 72 80
        ld   [ix+-1],d          ; 16AC DD 72 FF
        LD   [IX+-1],D          ; 16AF DD 72 FF
        ld   [ix+0],d           ; 16B2 DD 72 00
        LD   [IX+0],D           ; 16B5 DD 72 00
        ld   [ix+127],d         ; 16B8 DD 72 7F
        LD   [IX+127],D         ; 16BB DD 72 7F
        ld   [ix+-128],de       ; 16BE DD 73 80 DD 72 81
        LD   [IX+-128],DE       ; 16C4 DD 73 80 DD 72 81
        ld   [ix+-1],de         ; 16CA DD 73 FF DD 72 00
        LD   [IX+-1],DE         ; 16D0 DD 73 FF DD 72 00
        ld   [ix+0],de          ; 16D6 DD 73 00 DD 72 01
        LD   [IX+0],DE          ; 16DC DD 73 00 DD 72 01
        ld   [ix+126],de        ; 16E2 DD 73 7E DD 72 7F
        LD   [IX+126],DE        ; 16E8 DD 73 7E DD 72 7F
        ld   [ix+-128],e        ; 16EE DD 73 80
        LD   [IX+-128],E        ; 16F1 DD 73 80
        ld   [ix+-1],e          ; 16F4 DD 73 FF
        LD   [IX+-1],E          ; 16F7 DD 73 FF
        ld   [ix+0],e           ; 16FA DD 73 00
        LD   [IX+0],E           ; 16FD DD 73 00
        ld   [ix+127],e         ; 1700 DD 73 7F
        LD   [IX+127],E         ; 1703 DD 73 7F
        ld   [ix+-128],h        ; 1706 DD 74 80
        LD   [IX+-128],H        ; 1709 DD 74 80
        ld   [ix+-1],h          ; 170C DD 74 FF
        LD   [IX+-1],H          ; 170F DD 74 FF
        ld   [ix+0],h           ; 1712 DD 74 00
        LD   [IX+0],H           ; 1715 DD 74 00
        ld   [ix+127],h         ; 1718 DD 74 7F
        LD   [IX+127],H         ; 171B DD 74 7F
        ld   [ix+-128],hl       ; 171E DD 75 80 DD 74 81
        LD   [IX+-128],HL       ; 1724 DD 75 80 DD 74 81
        ld   [ix+-1],hl         ; 172A DD 75 FF DD 74 00
        LD   [IX+-1],HL         ; 1730 DD 75 FF DD 74 00
        ld   [ix+0],hl          ; 1736 DD 75 00 DD 74 01
        LD   [IX+0],HL          ; 173C DD 75 00 DD 74 01
        ld   [ix+126],hl        ; 1742 DD 75 7E DD 74 7F
        LD   [IX+126],HL        ; 1748 DD 75 7E DD 74 7F
        ld   [ix+-128],l        ; 174E DD 75 80
        LD   [IX+-128],L        ; 1751 DD 75 80
        ld   [ix+-1],l          ; 1754 DD 75 FF
        LD   [IX+-1],L          ; 1757 DD 75 FF
        ld   [ix+0],l           ; 175A DD 75 00
        LD   [IX+0],L           ; 175D DD 75 00
        ld   [ix+127],l         ; 1760 DD 75 7F
        LD   [IX+127],L         ; 1763 DD 75 7F
        ld   [iy+-128],-128     ; 1766 FD 36 80 80
        LD   [IY+-128],-128     ; 176A FD 36 80 80
        ld   [iy+-128],-1       ; 176E FD 36 80 FF
        LD   [IY+-128],-1       ; 1772 FD 36 80 FF
        ld   [iy+-128],0        ; 1776 FD 36 80 00
        LD   [IY+-128],0        ; 177A FD 36 80 00
        ld   [iy+-128],127      ; 177E FD 36 80 7F
        LD   [IY+-128],127      ; 1782 FD 36 80 7F
        ld   [iy+-128],255      ; 1786 FD 36 80 FF
        LD   [IY+-128],255      ; 178A FD 36 80 FF
        ld   [iy+-1],-128       ; 178E FD 36 FF 80
        LD   [IY+-1],-128       ; 1792 FD 36 FF 80
        ld   [iy+-1],-1         ; 1796 FD 36 FF FF
        LD   [IY+-1],-1         ; 179A FD 36 FF FF
        ld   [iy+-1],0          ; 179E FD 36 FF 00
        LD   [IY+-1],0          ; 17A2 FD 36 FF 00
        ld   [iy+-1],127        ; 17A6 FD 36 FF 7F
        LD   [IY+-1],127        ; 17AA FD 36 FF 7F
        ld   [iy+-1],255        ; 17AE FD 36 FF FF
        LD   [IY+-1],255        ; 17B2 FD 36 FF FF
        ld   [iy+0],-128        ; 17B6 FD 36 00 80
        LD   [IY+0],-128        ; 17BA FD 36 00 80
        ld   [iy+0],-1          ; 17BE FD 36 00 FF
        LD   [IY+0],-1          ; 17C2 FD 36 00 FF
        ld   [iy+0],0           ; 17C6 FD 36 00 00
        LD   [IY+0],0           ; 17CA FD 36 00 00
        ld   [iy+0],127         ; 17CE FD 36 00 7F
        LD   [IY+0],127         ; 17D2 FD 36 00 7F
        ld   [iy+0],255         ; 17D6 FD 36 00 FF
        LD   [IY+0],255         ; 17DA FD 36 00 FF
        ld   [iy+127],-128      ; 17DE FD 36 7F 80
        LD   [IY+127],-128      ; 17E2 FD 36 7F 80
        ld   [iy+127],-1        ; 17E6 FD 36 7F FF
        LD   [IY+127],-1        ; 17EA FD 36 7F FF
        ld   [iy+127],0         ; 17EE FD 36 7F 00
        LD   [IY+127],0         ; 17F2 FD 36 7F 00
        ld   [iy+127],127       ; 17F6 FD 36 7F 7F
        LD   [IY+127],127       ; 17FA FD 36 7F 7F
        ld   [iy+127],255       ; 17FE FD 36 7F FF
        LD   [IY+127],255       ; 1802 FD 36 7F FF
        ld   [iy+-128],a        ; 1806 FD 77 80
        LD   [IY+-128],A        ; 1809 FD 77 80
        ld   [iy+-1],a          ; 180C FD 77 FF
        LD   [IY+-1],A          ; 180F FD 77 FF
        ld   [iy+0],a           ; 1812 FD 77 00
        LD   [IY+0],A           ; 1815 FD 77 00
        ld   [iy+127],a         ; 1818 FD 77 7F
        LD   [IY+127],A         ; 181B FD 77 7F
        ld   [iy+-128],b        ; 181E FD 70 80
        LD   [IY+-128],B        ; 1821 FD 70 80
        ld   [iy+-1],b          ; 1824 FD 70 FF
        LD   [IY+-1],B          ; 1827 FD 70 FF
        ld   [iy+0],b           ; 182A FD 70 00
        LD   [IY+0],B           ; 182D FD 70 00
        ld   [iy+127],b         ; 1830 FD 70 7F
        LD   [IY+127],B         ; 1833 FD 70 7F
        ld   [iy+-128],bc       ; 1836 FD 71 80 FD 70 81
        LD   [IY+-128],BC       ; 183C FD 71 80 FD 70 81
        ld   [iy+-1],bc         ; 1842 FD 71 FF FD 70 00
        LD   [IY+-1],BC         ; 1848 FD 71 FF FD 70 00
        ld   [iy+0],bc          ; 184E FD 71 00 FD 70 01
        LD   [IY+0],BC          ; 1854 FD 71 00 FD 70 01
        ld   [iy+126],bc        ; 185A FD 71 7E FD 70 7F
        LD   [IY+126],BC        ; 1860 FD 71 7E FD 70 7F
        ld   [iy+-128],c        ; 1866 FD 71 80
        LD   [IY+-128],C        ; 1869 FD 71 80
        ld   [iy+-1],c          ; 186C FD 71 FF
        LD   [IY+-1],C          ; 186F FD 71 FF
        ld   [iy+0],c           ; 1872 FD 71 00
        LD   [IY+0],C           ; 1875 FD 71 00
        ld   [iy+127],c         ; 1878 FD 71 7F
        LD   [IY+127],C         ; 187B FD 71 7F
        ld   [iy+-128],d        ; 187E FD 72 80
        LD   [IY+-128],D        ; 1881 FD 72 80
        ld   [iy+-1],d          ; 1884 FD 72 FF
        LD   [IY+-1],D          ; 1887 FD 72 FF
        ld   [iy+0],d           ; 188A FD 72 00
        LD   [IY+0],D           ; 188D FD 72 00
        ld   [iy+127],d         ; 1890 FD 72 7F
        LD   [IY+127],D         ; 1893 FD 72 7F
        ld   [iy+-128],de       ; 1896 FD 73 80 FD 72 81
        LD   [IY+-128],DE       ; 189C FD 73 80 FD 72 81
        ld   [iy+-1],de         ; 18A2 FD 73 FF FD 72 00
        LD   [IY+-1],DE         ; 18A8 FD 73 FF FD 72 00
        ld   [iy+0],de          ; 18AE FD 73 00 FD 72 01
        LD   [IY+0],DE          ; 18B4 FD 73 00 FD 72 01
        ld   [iy+126],de        ; 18BA FD 73 7E FD 72 7F
        LD   [IY+126],DE        ; 18C0 FD 73 7E FD 72 7F
        ld   [iy+-128],e        ; 18C6 FD 73 80
        LD   [IY+-128],E        ; 18C9 FD 73 80
        ld   [iy+-1],e          ; 18CC FD 73 FF
        LD   [IY+-1],E          ; 18CF FD 73 FF
        ld   [iy+0],e           ; 18D2 FD 73 00
        LD   [IY+0],E           ; 18D5 FD 73 00
        ld   [iy+127],e         ; 18D8 FD 73 7F
        LD   [IY+127],E         ; 18DB FD 73 7F
        ld   [iy+-128],h        ; 18DE FD 74 80
        LD   [IY+-128],H        ; 18E1 FD 74 80
        ld   [iy+-1],h          ; 18E4 FD 74 FF
        LD   [IY+-1],H          ; 18E7 FD 74 FF
        ld   [iy+0],h           ; 18EA FD 74 00
        LD   [IY+0],H           ; 18ED FD 74 00
        ld   [iy+127],h         ; 18F0 FD 74 7F
        LD   [IY+127],H         ; 18F3 FD 74 7F
        ld   [iy+-128],hl       ; 18F6 FD 75 80 FD 74 81
        LD   [IY+-128],HL       ; 18FC FD 75 80 FD 74 81
        ld   [iy+-1],hl         ; 1902 FD 75 FF FD 74 00
        LD   [IY+-1],HL         ; 1908 FD 75 FF FD 74 00
        ld   [iy+0],hl          ; 190E FD 75 00 FD 74 01
        LD   [IY+0],HL          ; 1914 FD 75 00 FD 74 01
        ld   [iy+126],hl        ; 191A FD 75 7E FD 74 7F
        LD   [IY+126],HL        ; 1920 FD 75 7E FD 74 7F
        ld   [iy+-128],l        ; 1926 FD 75 80
        LD   [IY+-128],L        ; 1929 FD 75 80
        ld   [iy+-1],l          ; 192C FD 75 FF
        LD   [IY+-1],L          ; 192F FD 75 FF
        ld   [iy+0],l           ; 1932 FD 75 00
        LD   [IY+0],L           ; 1935 FD 75 00
        ld   [iy+127],l         ; 1938 FD 75 7F
        LD   [IY+127],L         ; 193B FD 75 7F
        ld   a,(-32768)         ; 193E 3A 00 80
        LD   A,(-32768)         ; 1941 3A 00 80
        ld   a,(-128)           ; 1944 3A 80 FF
        LD   A,(-128)           ; 1947 3A 80 FF
        ld   a,(-1)             ; 194A 3A FF FF
        LD   A,(-1)             ; 194D 3A FF FF
        ld   a,(0)              ; 1950 3A 00 00
        LD   A,(0)              ; 1953 3A 00 00
        ld   a,(127)            ; 1956 3A 7F 00
        LD   A,(127)            ; 1959 3A 7F 00
        ld   a,(255)            ; 195C 3A FF 00
        LD   A,(255)            ; 195F 3A FF 00
        ld   a,(32767)          ; 1962 3A FF 7F
        LD   A,(32767)          ; 1965 3A FF 7F
        ld   a,(65535)          ; 1968 3A FF FF
        LD   A,(65535)          ; 196B 3A FF FF
        ld   a,(bc)             ; 196E 0A
        LD   A,(BC)             ; 196F 0A
        ld   a,(de)             ; 1970 1A
        LD   A,(DE)             ; 1971 1A
        ld   a,(hl)             ; 1972 7E
        LD   A,(HL)             ; 1973 7E
        ld   a,(ix+-128)        ; 1974 DD 7E 80
        LD   A,(IX+-128)        ; 1977 DD 7E 80
        ld   a,(ix+-1)          ; 197A DD 7E FF
        LD   A,(IX+-1)          ; 197D DD 7E FF
        ld   a,(ix+0)           ; 1980 DD 7E 00
        LD   A,(IX+0)           ; 1983 DD 7E 00
        ld   a,(ix+127)         ; 1986 DD 7E 7F
        LD   A,(IX+127)         ; 1989 DD 7E 7F
        ld   a,(iy+-128)        ; 198C FD 7E 80
        LD   A,(IY+-128)        ; 198F FD 7E 80
        ld   a,(iy+-1)          ; 1992 FD 7E FF
        LD   A,(IY+-1)          ; 1995 FD 7E FF
        ld   a,(iy+0)           ; 1998 FD 7E 00
        LD   A,(IY+0)           ; 199B FD 7E 00
        ld   a,(iy+127)         ; 199E FD 7E 7F
        LD   A,(IY+127)         ; 19A1 FD 7E 7F
        ld   a,-128             ; 19A4 3E 80
        LD   A,-128             ; 19A6 3E 80
        ld   a,-1               ; 19A8 3E FF
        LD   A,-1               ; 19AA 3E FF
        ld   a,0                ; 19AC 3E 00
        LD   A,0                ; 19AE 3E 00
        ld   a,127              ; 19B0 3E 7F
        LD   A,127              ; 19B2 3E 7F
        ld   a,255              ; 19B4 3E FF
        LD   A,255              ; 19B6 3E FF
        ld   a,[-32768]         ; 19B8 3A 00 80
        LD   A,[-32768]         ; 19BB 3A 00 80
        ld   a,[-128]           ; 19BE 3A 80 FF
        LD   A,[-128]           ; 19C1 3A 80 FF
        ld   a,[-1]             ; 19C4 3A FF FF
        LD   A,[-1]             ; 19C7 3A FF FF
        ld   a,[0]              ; 19CA 3A 00 00
        LD   A,[0]              ; 19CD 3A 00 00
        ld   a,[127]            ; 19D0 3A 7F 00
        LD   A,[127]            ; 19D3 3A 7F 00
        ld   a,[255]            ; 19D6 3A FF 00
        LD   A,[255]            ; 19D9 3A FF 00
        ld   a,[32767]          ; 19DC 3A FF 7F
        LD   A,[32767]          ; 19DF 3A FF 7F
        ld   a,[65535]          ; 19E2 3A FF FF
        LD   A,[65535]          ; 19E5 3A FF FF
        ld   a,[bc]             ; 19E8 0A
        LD   A,[BC]             ; 19E9 0A
        ld   a,[de]             ; 19EA 1A
        LD   A,[DE]             ; 19EB 1A
        ld   a,[hl]             ; 19EC 7E
        LD   A,[HL]             ; 19ED 7E
        ld   a,[ix+-128]        ; 19EE DD 7E 80
        LD   A,[IX+-128]        ; 19F1 DD 7E 80
        ld   a,[ix+-1]          ; 19F4 DD 7E FF
        LD   A,[IX+-1]          ; 19F7 DD 7E FF
        ld   a,[ix+0]           ; 19FA DD 7E 00
        LD   A,[IX+0]           ; 19FD DD 7E 00
        ld   a,[ix+127]         ; 1A00 DD 7E 7F
        LD   A,[IX+127]         ; 1A03 DD 7E 7F
        ld   a,[iy+-128]        ; 1A06 FD 7E 80
        LD   A,[IY+-128]        ; 1A09 FD 7E 80
        ld   a,[iy+-1]          ; 1A0C FD 7E FF
        LD   A,[IY+-1]          ; 1A0F FD 7E FF
        ld   a,[iy+0]           ; 1A12 FD 7E 00
        LD   A,[IY+0]           ; 1A15 FD 7E 00
        ld   a,[iy+127]         ; 1A18 FD 7E 7F
        LD   A,[IY+127]         ; 1A1B FD 7E 7F
        ld   a,a                ; 1A1E 7F
        LD   A,A                ; 1A1F 7F
        ld   a,b                ; 1A20 78
        LD   A,B                ; 1A21 78
        ld   a,c                ; 1A22 79
        LD   A,C                ; 1A23 79
        ld   a,d                ; 1A24 7A
        LD   A,D                ; 1A25 7A
        ld   a,e                ; 1A26 7B
        LD   A,E                ; 1A27 7B
        ld   a,h                ; 1A28 7C
        LD   A,H                ; 1A29 7C
        ld   a,hx               ; 1A2A DD 7C
        LD   A,HX               ; 1A2C DD 7C
        ld   a,hy               ; 1A2E FD 7C
        LD   A,HY               ; 1A30 FD 7C
        ld   a,i                ; 1A32 ED 57
        LD   A,I                ; 1A34 ED 57
        ld   a,ixh              ; 1A36 DD 7C
        LD   A,IXH              ; 1A38 DD 7C
        ld   a,ixl              ; 1A3A DD 7D
        LD   A,IXL              ; 1A3C DD 7D
        ld   a,iyh              ; 1A3E FD 7C
        LD   A,IYH              ; 1A40 FD 7C
        ld   a,iyl              ; 1A42 FD 7D
        LD   A,IYL              ; 1A44 FD 7D
        ld   a,l                ; 1A46 7D
        LD   A,L                ; 1A47 7D
        ld   a,lx               ; 1A48 DD 7D
        LD   A,LX               ; 1A4A DD 7D
        ld   a,ly               ; 1A4C FD 7D
        LD   A,LY               ; 1A4E FD 7D
        ld   a,r                ; 1A50 ED 5F
        LD   A,R                ; 1A52 ED 5F
        ld   a,xh               ; 1A54 DD 7C
        LD   A,XH               ; 1A56 DD 7C
        ld   a,xl               ; 1A58 DD 7D
        LD   A,XL               ; 1A5A DD 7D
        ld   a,yh               ; 1A5C FD 7C
        LD   A,YH               ; 1A5E FD 7C
        ld   a,yl               ; 1A60 FD 7D
        LD   A,YL               ; 1A62 FD 7D
        ld   b,(hl)             ; 1A64 46
        LD   B,(HL)             ; 1A65 46
        ld   b,(ix+-128)        ; 1A66 DD 46 80
        LD   B,(IX+-128)        ; 1A69 DD 46 80
        ld   b,(ix+-1)          ; 1A6C DD 46 FF
        LD   B,(IX+-1)          ; 1A6F DD 46 FF
        ld   b,(ix+0)           ; 1A72 DD 46 00
        LD   B,(IX+0)           ; 1A75 DD 46 00
        ld   b,(ix+127)         ; 1A78 DD 46 7F
        LD   B,(IX+127)         ; 1A7B DD 46 7F
        ld   b,(iy+-128)        ; 1A7E FD 46 80
        LD   B,(IY+-128)        ; 1A81 FD 46 80
        ld   b,(iy+-1)          ; 1A84 FD 46 FF
        LD   B,(IY+-1)          ; 1A87 FD 46 FF
        ld   b,(iy+0)           ; 1A8A FD 46 00
        LD   B,(IY+0)           ; 1A8D FD 46 00
        ld   b,(iy+127)         ; 1A90 FD 46 7F
        LD   B,(IY+127)         ; 1A93 FD 46 7F
        ld   b,-128             ; 1A96 06 80
        LD   B,-128             ; 1A98 06 80
        ld   b,-1               ; 1A9A 06 FF
        LD   B,-1               ; 1A9C 06 FF
        ld   b,0                ; 1A9E 06 00
        LD   B,0                ; 1AA0 06 00
        ld   b,127              ; 1AA2 06 7F
        LD   B,127              ; 1AA4 06 7F
        ld   b,255              ; 1AA6 06 FF
        LD   B,255              ; 1AA8 06 FF
        ld   b,[hl]             ; 1AAA 46
        LD   B,[HL]             ; 1AAB 46
        ld   b,[ix+-128]        ; 1AAC DD 46 80
        LD   B,[IX+-128]        ; 1AAF DD 46 80
        ld   b,[ix+-1]          ; 1AB2 DD 46 FF
        LD   B,[IX+-1]          ; 1AB5 DD 46 FF
        ld   b,[ix+0]           ; 1AB8 DD 46 00
        LD   B,[IX+0]           ; 1ABB DD 46 00
        ld   b,[ix+127]         ; 1ABE DD 46 7F
        LD   B,[IX+127]         ; 1AC1 DD 46 7F
        ld   b,[iy+-128]        ; 1AC4 FD 46 80
        LD   B,[IY+-128]        ; 1AC7 FD 46 80
        ld   b,[iy+-1]          ; 1ACA FD 46 FF
        LD   B,[IY+-1]          ; 1ACD FD 46 FF
        ld   b,[iy+0]           ; 1AD0 FD 46 00
        LD   B,[IY+0]           ; 1AD3 FD 46 00
        ld   b,[iy+127]         ; 1AD6 FD 46 7F
        LD   B,[IY+127]         ; 1AD9 FD 46 7F
        ld   b,a                ; 1ADC 47
        LD   B,A                ; 1ADD 47
        ld   b,b                ; 1ADE 40
        LD   B,B                ; 1ADF 40
        ld   b,c                ; 1AE0 41
        LD   B,C                ; 1AE1 41
        ld   b,d                ; 1AE2 42
        LD   B,D                ; 1AE3 42
        ld   b,e                ; 1AE4 43
        LD   B,E                ; 1AE5 43
        ld   b,h                ; 1AE6 44
        LD   B,H                ; 1AE7 44
        ld   b,hx               ; 1AE8 DD 44
        LD   B,HX               ; 1AEA DD 44
        ld   b,hy               ; 1AEC FD 44
        LD   B,HY               ; 1AEE FD 44
        ld   b,ixh              ; 1AF0 DD 44
        LD   B,IXH              ; 1AF2 DD 44
        ld   b,ixl              ; 1AF4 DD 45
        LD   B,IXL              ; 1AF6 DD 45
        ld   b,iyh              ; 1AF8 FD 44
        LD   B,IYH              ; 1AFA FD 44
        ld   b,iyl              ; 1AFC FD 45
        LD   B,IYL              ; 1AFE FD 45
        ld   b,l                ; 1B00 45
        LD   B,L                ; 1B01 45
        ld   b,lx               ; 1B02 DD 45
        LD   B,LX               ; 1B04 DD 45
        ld   b,ly               ; 1B06 FD 45
        LD   B,LY               ; 1B08 FD 45
        ld   b,xh               ; 1B0A DD 44
        LD   B,XH               ; 1B0C DD 44
        ld   b,xl               ; 1B0E DD 45
        LD   B,XL               ; 1B10 DD 45
        ld   b,yh               ; 1B12 FD 44
        LD   B,YH               ; 1B14 FD 44
        ld   b,yl               ; 1B16 FD 45
        LD   B,YL               ; 1B18 FD 45
        ld   bc,(-32768)        ; 1B1A ED 4B 00 80
        LD   BC,(-32768)        ; 1B1E ED 4B 00 80
        ld   bc,(-128)          ; 1B22 ED 4B 80 FF
        LD   BC,(-128)          ; 1B26 ED 4B 80 FF
        ld   bc,(-1)            ; 1B2A ED 4B FF FF
        LD   BC,(-1)            ; 1B2E ED 4B FF FF
        ld   bc,(0)             ; 1B32 ED 4B 00 00
        LD   BC,(0)             ; 1B36 ED 4B 00 00
        ld   bc,(127)           ; 1B3A ED 4B 7F 00
        LD   BC,(127)           ; 1B3E ED 4B 7F 00
        ld   bc,(255)           ; 1B42 ED 4B FF 00
        LD   BC,(255)           ; 1B46 ED 4B FF 00
        ld   bc,(32767)         ; 1B4A ED 4B FF 7F
        LD   BC,(32767)         ; 1B4E ED 4B FF 7F
        ld   bc,(65535)         ; 1B52 ED 4B FF FF
        LD   BC,(65535)         ; 1B56 ED 4B FF FF
        ld   bc,(hl)            ; 1B5A 4E 23 46 2B
        LD   BC,(HL)            ; 1B5E 4E 23 46 2B
        ld   bc,(ix+-128)       ; 1B62 DD 4E 80 DD 46 81
        LD   BC,(IX+-128)       ; 1B68 DD 4E 80 DD 46 81
        ld   bc,(ix+-1)         ; 1B6E DD 4E FF DD 46 00
        LD   BC,(IX+-1)         ; 1B74 DD 4E FF DD 46 00
        ld   bc,(ix+0)          ; 1B7A DD 4E 00 DD 46 01
        LD   BC,(IX+0)          ; 1B80 DD 4E 00 DD 46 01
        ld   bc,(ix+126)        ; 1B86 DD 4E 7E DD 46 7F
        LD   BC,(IX+126)        ; 1B8C DD 4E 7E DD 46 7F
        ld   bc,(iy+-128)       ; 1B92 FD 4E 80 FD 46 81
        LD   BC,(IY+-128)       ; 1B98 FD 4E 80 FD 46 81
        ld   bc,(iy+-1)         ; 1B9E FD 4E FF FD 46 00
        LD   BC,(IY+-1)         ; 1BA4 FD 4E FF FD 46 00
        ld   bc,(iy+0)          ; 1BAA FD 4E 00 FD 46 01
        LD   BC,(IY+0)          ; 1BB0 FD 4E 00 FD 46 01
        ld   bc,(iy+126)        ; 1BB6 FD 4E 7E FD 46 7F
        LD   BC,(IY+126)        ; 1BBC FD 4E 7E FD 46 7F
        ld   bc,-32768          ; 1BC2 01 00 80
        LD   BC,-32768          ; 1BC5 01 00 80
        ld   bc,-128            ; 1BC8 01 80 FF
        LD   BC,-128            ; 1BCB 01 80 FF
        ld   bc,-1              ; 1BCE 01 FF FF
        LD   BC,-1              ; 1BD1 01 FF FF
        ld   bc,0               ; 1BD4 01 00 00
        LD   BC,0               ; 1BD7 01 00 00
        ld   bc,127             ; 1BDA 01 7F 00
        LD   BC,127             ; 1BDD 01 7F 00
        ld   bc,255             ; 1BE0 01 FF 00
        LD   BC,255             ; 1BE3 01 FF 00
        ld   bc,32767           ; 1BE6 01 FF 7F
        LD   BC,32767           ; 1BE9 01 FF 7F
        ld   bc,65535           ; 1BEC 01 FF FF
        LD   BC,65535           ; 1BEF 01 FF FF
        ld   bc,[-32768]        ; 1BF2 ED 4B 00 80
        LD   BC,[-32768]        ; 1BF6 ED 4B 00 80
        ld   bc,[-128]          ; 1BFA ED 4B 80 FF
        LD   BC,[-128]          ; 1BFE ED 4B 80 FF
        ld   bc,[-1]            ; 1C02 ED 4B FF FF
        LD   BC,[-1]            ; 1C06 ED 4B FF FF
        ld   bc,[0]             ; 1C0A ED 4B 00 00
        LD   BC,[0]             ; 1C0E ED 4B 00 00
        ld   bc,[127]           ; 1C12 ED 4B 7F 00
        LD   BC,[127]           ; 1C16 ED 4B 7F 00
        ld   bc,[255]           ; 1C1A ED 4B FF 00
        LD   BC,[255]           ; 1C1E ED 4B FF 00
        ld   bc,[32767]         ; 1C22 ED 4B FF 7F
        LD   BC,[32767]         ; 1C26 ED 4B FF 7F
        ld   bc,[65535]         ; 1C2A ED 4B FF FF
        LD   BC,[65535]         ; 1C2E ED 4B FF FF
        ld   bc,[hl]            ; 1C32 4E 23 46 2B
        LD   BC,[HL]            ; 1C36 4E 23 46 2B
        ld   bc,[ix+-128]       ; 1C3A DD 4E 80 DD 46 81
        LD   BC,[IX+-128]       ; 1C40 DD 4E 80 DD 46 81
        ld   bc,[ix+-1]         ; 1C46 DD 4E FF DD 46 00
        LD   BC,[IX+-1]         ; 1C4C DD 4E FF DD 46 00
        ld   bc,[ix+0]          ; 1C52 DD 4E 00 DD 46 01
        LD   BC,[IX+0]          ; 1C58 DD 4E 00 DD 46 01
        ld   bc,[ix+126]        ; 1C5E DD 4E 7E DD 46 7F
        LD   BC,[IX+126]        ; 1C64 DD 4E 7E DD 46 7F
        ld   bc,[iy+-128]       ; 1C6A FD 4E 80 FD 46 81
        LD   BC,[IY+-128]       ; 1C70 FD 4E 80 FD 46 81
        ld   bc,[iy+-1]         ; 1C76 FD 4E FF FD 46 00
        LD   BC,[IY+-1]         ; 1C7C FD 4E FF FD 46 00
        ld   bc,[iy+0]          ; 1C82 FD 4E 00 FD 46 01
        LD   BC,[IY+0]          ; 1C88 FD 4E 00 FD 46 01
        ld   bc,[iy+126]        ; 1C8E FD 4E 7E FD 46 7F
        LD   BC,[IY+126]        ; 1C94 FD 4E 7E FD 46 7F
        ld   bc,bc              ; 1C9A 40 49
        LD   BC,BC              ; 1C9C 40 49
        ld   bc,de              ; 1C9E 42 4B
        LD   BC,DE              ; 1CA0 42 4B
        ld   bc,hl              ; 1CA2 44 4D
        LD   BC,HL              ; 1CA4 44 4D
        ld   bc,ix              ; 1CA6 DD 44 DD 4D
        LD   BC,IX              ; 1CAA DD 44 DD 4D
        ld   bc,iy              ; 1CAE FD 44 FD 4D
        LD   BC,IY              ; 1CB2 FD 44 FD 4D
        ld   c,(hl)             ; 1CB6 4E
        LD   C,(HL)             ; 1CB7 4E
        ld   c,(ix+-128)        ; 1CB8 DD 4E 80
        LD   C,(IX+-128)        ; 1CBB DD 4E 80
        ld   c,(ix+-1)          ; 1CBE DD 4E FF
        LD   C,(IX+-1)          ; 1CC1 DD 4E FF
        ld   c,(ix+0)           ; 1CC4 DD 4E 00
        LD   C,(IX+0)           ; 1CC7 DD 4E 00
        ld   c,(ix+127)         ; 1CCA DD 4E 7F
        LD   C,(IX+127)         ; 1CCD DD 4E 7F
        ld   c,(iy+-128)        ; 1CD0 FD 4E 80
        LD   C,(IY+-128)        ; 1CD3 FD 4E 80
        ld   c,(iy+-1)          ; 1CD6 FD 4E FF
        LD   C,(IY+-1)          ; 1CD9 FD 4E FF
        ld   c,(iy+0)           ; 1CDC FD 4E 00
        LD   C,(IY+0)           ; 1CDF FD 4E 00
        ld   c,(iy+127)         ; 1CE2 FD 4E 7F
        LD   C,(IY+127)         ; 1CE5 FD 4E 7F
        ld   c,-128             ; 1CE8 0E 80
        LD   C,-128             ; 1CEA 0E 80
        ld   c,-1               ; 1CEC 0E FF
        LD   C,-1               ; 1CEE 0E FF
        ld   c,0                ; 1CF0 0E 00
        LD   C,0                ; 1CF2 0E 00
        ld   c,127              ; 1CF4 0E 7F
        LD   C,127              ; 1CF6 0E 7F
        ld   c,255              ; 1CF8 0E FF
        LD   C,255              ; 1CFA 0E FF
        ld   c,[hl]             ; 1CFC 4E
        LD   C,[HL]             ; 1CFD 4E
        ld   c,[ix+-128]        ; 1CFE DD 4E 80
        LD   C,[IX+-128]        ; 1D01 DD 4E 80
        ld   c,[ix+-1]          ; 1D04 DD 4E FF
        LD   C,[IX+-1]          ; 1D07 DD 4E FF
        ld   c,[ix+0]           ; 1D0A DD 4E 00
        LD   C,[IX+0]           ; 1D0D DD 4E 00
        ld   c,[ix+127]         ; 1D10 DD 4E 7F
        LD   C,[IX+127]         ; 1D13 DD 4E 7F
        ld   c,[iy+-128]        ; 1D16 FD 4E 80
        LD   C,[IY+-128]        ; 1D19 FD 4E 80
        ld   c,[iy+-1]          ; 1D1C FD 4E FF
        LD   C,[IY+-1]          ; 1D1F FD 4E FF
        ld   c,[iy+0]           ; 1D22 FD 4E 00
        LD   C,[IY+0]           ; 1D25 FD 4E 00
        ld   c,[iy+127]         ; 1D28 FD 4E 7F
        LD   C,[IY+127]         ; 1D2B FD 4E 7F
        ld   c,a                ; 1D2E 4F
        LD   C,A                ; 1D2F 4F
        ld   c,b                ; 1D30 48
        LD   C,B                ; 1D31 48
        ld   c,c                ; 1D32 49
        LD   C,C                ; 1D33 49
        ld   c,d                ; 1D34 4A
        LD   C,D                ; 1D35 4A
        ld   c,e                ; 1D36 4B
        LD   C,E                ; 1D37 4B
        ld   c,h                ; 1D38 4C
        LD   C,H                ; 1D39 4C
        ld   c,hx               ; 1D3A DD 4C
        LD   C,HX               ; 1D3C DD 4C
        ld   c,hy               ; 1D3E FD 4C
        LD   C,HY               ; 1D40 FD 4C
        ld   c,ixh              ; 1D42 DD 4C
        LD   C,IXH              ; 1D44 DD 4C
        ld   c,ixl              ; 1D46 DD 4D
        LD   C,IXL              ; 1D48 DD 4D
        ld   c,iyh              ; 1D4A FD 4C
        LD   C,IYH              ; 1D4C FD 4C
        ld   c,iyl              ; 1D4E FD 4D
        LD   C,IYL              ; 1D50 FD 4D
        ld   c,l                ; 1D52 4D
        LD   C,L                ; 1D53 4D
        ld   c,lx               ; 1D54 DD 4D
        LD   C,LX               ; 1D56 DD 4D
        ld   c,ly               ; 1D58 FD 4D
        LD   C,LY               ; 1D5A FD 4D
        ld   c,xh               ; 1D5C DD 4C
        LD   C,XH               ; 1D5E DD 4C
        ld   c,xl               ; 1D60 DD 4D
        LD   C,XL               ; 1D62 DD 4D
        ld   c,yh               ; 1D64 FD 4C
        LD   C,YH               ; 1D66 FD 4C
        ld   c,yl               ; 1D68 FD 4D
        LD   C,YL               ; 1D6A FD 4D
        ld   d,(hl)             ; 1D6C 56
        LD   D,(HL)             ; 1D6D 56
        ld   d,(ix+-128)        ; 1D6E DD 56 80
        LD   D,(IX+-128)        ; 1D71 DD 56 80
        ld   d,(ix+-1)          ; 1D74 DD 56 FF
        LD   D,(IX+-1)          ; 1D77 DD 56 FF
        ld   d,(ix+0)           ; 1D7A DD 56 00
        LD   D,(IX+0)           ; 1D7D DD 56 00
        ld   d,(ix+127)         ; 1D80 DD 56 7F
        LD   D,(IX+127)         ; 1D83 DD 56 7F
        ld   d,(iy+-128)        ; 1D86 FD 56 80
        LD   D,(IY+-128)        ; 1D89 FD 56 80
        ld   d,(iy+-1)          ; 1D8C FD 56 FF
        LD   D,(IY+-1)          ; 1D8F FD 56 FF
        ld   d,(iy+0)           ; 1D92 FD 56 00
        LD   D,(IY+0)           ; 1D95 FD 56 00
        ld   d,(iy+127)         ; 1D98 FD 56 7F
        LD   D,(IY+127)         ; 1D9B FD 56 7F
        ld   d,-128             ; 1D9E 16 80
        LD   D,-128             ; 1DA0 16 80
        ld   d,-1               ; 1DA2 16 FF
        LD   D,-1               ; 1DA4 16 FF
        ld   d,0                ; 1DA6 16 00
        LD   D,0                ; 1DA8 16 00
        ld   d,127              ; 1DAA 16 7F
        LD   D,127              ; 1DAC 16 7F
        ld   d,255              ; 1DAE 16 FF
        LD   D,255              ; 1DB0 16 FF
        ld   d,[hl]             ; 1DB2 56
        LD   D,[HL]             ; 1DB3 56
        ld   d,[ix+-128]        ; 1DB4 DD 56 80
        LD   D,[IX+-128]        ; 1DB7 DD 56 80
        ld   d,[ix+-1]          ; 1DBA DD 56 FF
        LD   D,[IX+-1]          ; 1DBD DD 56 FF
        ld   d,[ix+0]           ; 1DC0 DD 56 00
        LD   D,[IX+0]           ; 1DC3 DD 56 00
        ld   d,[ix+127]         ; 1DC6 DD 56 7F
        LD   D,[IX+127]         ; 1DC9 DD 56 7F
        ld   d,[iy+-128]        ; 1DCC FD 56 80
        LD   D,[IY+-128]        ; 1DCF FD 56 80
        ld   d,[iy+-1]          ; 1DD2 FD 56 FF
        LD   D,[IY+-1]          ; 1DD5 FD 56 FF
        ld   d,[iy+0]           ; 1DD8 FD 56 00
        LD   D,[IY+0]           ; 1DDB FD 56 00
        ld   d,[iy+127]         ; 1DDE FD 56 7F
        LD   D,[IY+127]         ; 1DE1 FD 56 7F
        ld   d,a                ; 1DE4 57
        LD   D,A                ; 1DE5 57
        ld   d,b                ; 1DE6 50
        LD   D,B                ; 1DE7 50
        ld   d,c                ; 1DE8 51
        LD   D,C                ; 1DE9 51
        ld   d,d                ; 1DEA 52
        LD   D,D                ; 1DEB 52
        ld   d,e                ; 1DEC 53
        LD   D,E                ; 1DED 53
        ld   d,h                ; 1DEE 54
        LD   D,H                ; 1DEF 54
        ld   d,hx               ; 1DF0 DD 54
        LD   D,HX               ; 1DF2 DD 54
        ld   d,hy               ; 1DF4 FD 54
        LD   D,HY               ; 1DF6 FD 54
        ld   d,ixh              ; 1DF8 DD 54
        LD   D,IXH              ; 1DFA DD 54
        ld   d,ixl              ; 1DFC DD 55
        LD   D,IXL              ; 1DFE DD 55
        ld   d,iyh              ; 1E00 FD 54
        LD   D,IYH              ; 1E02 FD 54
        ld   d,iyl              ; 1E04 FD 55
        LD   D,IYL              ; 1E06 FD 55
        ld   d,l                ; 1E08 55
        LD   D,L                ; 1E09 55
        ld   d,lx               ; 1E0A DD 55
        LD   D,LX               ; 1E0C DD 55
        ld   d,ly               ; 1E0E FD 55
        LD   D,LY               ; 1E10 FD 55
        ld   d,xh               ; 1E12 DD 54
        LD   D,XH               ; 1E14 DD 54
        ld   d,xl               ; 1E16 DD 55
        LD   D,XL               ; 1E18 DD 55
        ld   d,yh               ; 1E1A FD 54
        LD   D,YH               ; 1E1C FD 54
        ld   d,yl               ; 1E1E FD 55
        LD   D,YL               ; 1E20 FD 55
        ld   de,(-32768)        ; 1E22 ED 5B 00 80
        LD   DE,(-32768)        ; 1E26 ED 5B 00 80
        ld   de,(-128)          ; 1E2A ED 5B 80 FF
        LD   DE,(-128)          ; 1E2E ED 5B 80 FF
        ld   de,(-1)            ; 1E32 ED 5B FF FF
        LD   DE,(-1)            ; 1E36 ED 5B FF FF
        ld   de,(0)             ; 1E3A ED 5B 00 00
        LD   DE,(0)             ; 1E3E ED 5B 00 00
        ld   de,(127)           ; 1E42 ED 5B 7F 00
        LD   DE,(127)           ; 1E46 ED 5B 7F 00
        ld   de,(255)           ; 1E4A ED 5B FF 00
        LD   DE,(255)           ; 1E4E ED 5B FF 00
        ld   de,(32767)         ; 1E52 ED 5B FF 7F
        LD   DE,(32767)         ; 1E56 ED 5B FF 7F
        ld   de,(65535)         ; 1E5A ED 5B FF FF
        LD   DE,(65535)         ; 1E5E ED 5B FF FF
        ld   de,(hl)            ; 1E62 5E 23 56 2B
        LD   DE,(HL)            ; 1E66 5E 23 56 2B
        ld   de,(ix+-128)       ; 1E6A DD 5E 80 DD 56 81
        LD   DE,(IX+-128)       ; 1E70 DD 5E 80 DD 56 81
        ld   de,(ix+-1)         ; 1E76 DD 5E FF DD 56 00
        LD   DE,(IX+-1)         ; 1E7C DD 5E FF DD 56 00
        ld   de,(ix+0)          ; 1E82 DD 5E 00 DD 56 01
        LD   DE,(IX+0)          ; 1E88 DD 5E 00 DD 56 01
        ld   de,(ix+126)        ; 1E8E DD 5E 7E DD 56 7F
        LD   DE,(IX+126)        ; 1E94 DD 5E 7E DD 56 7F
        ld   de,(iy+-128)       ; 1E9A FD 5E 80 FD 56 81
        LD   DE,(IY+-128)       ; 1EA0 FD 5E 80 FD 56 81
        ld   de,(iy+-1)         ; 1EA6 FD 5E FF FD 56 00
        LD   DE,(IY+-1)         ; 1EAC FD 5E FF FD 56 00
        ld   de,(iy+0)          ; 1EB2 FD 5E 00 FD 56 01
        LD   DE,(IY+0)          ; 1EB8 FD 5E 00 FD 56 01
        ld   de,(iy+126)        ; 1EBE FD 5E 7E FD 56 7F
        LD   DE,(IY+126)        ; 1EC4 FD 5E 7E FD 56 7F
        ld   de,-32768          ; 1ECA 11 00 80
        LD   DE,-32768          ; 1ECD 11 00 80
        ld   de,-128            ; 1ED0 11 80 FF
        LD   DE,-128            ; 1ED3 11 80 FF
        ld   de,-1              ; 1ED6 11 FF FF
        LD   DE,-1              ; 1ED9 11 FF FF
        ld   de,0               ; 1EDC 11 00 00
        LD   DE,0               ; 1EDF 11 00 00
        ld   de,127             ; 1EE2 11 7F 00
        LD   DE,127             ; 1EE5 11 7F 00
        ld   de,255             ; 1EE8 11 FF 00
        LD   DE,255             ; 1EEB 11 FF 00
        ld   de,32767           ; 1EEE 11 FF 7F
        LD   DE,32767           ; 1EF1 11 FF 7F
        ld   de,65535           ; 1EF4 11 FF FF
        LD   DE,65535           ; 1EF7 11 FF FF
        ld   de,[-32768]        ; 1EFA ED 5B 00 80
        LD   DE,[-32768]        ; 1EFE ED 5B 00 80
        ld   de,[-128]          ; 1F02 ED 5B 80 FF
        LD   DE,[-128]          ; 1F06 ED 5B 80 FF
        ld   de,[-1]            ; 1F0A ED 5B FF FF
        LD   DE,[-1]            ; 1F0E ED 5B FF FF
        ld   de,[0]             ; 1F12 ED 5B 00 00
        LD   DE,[0]             ; 1F16 ED 5B 00 00
        ld   de,[127]           ; 1F1A ED 5B 7F 00
        LD   DE,[127]           ; 1F1E ED 5B 7F 00
        ld   de,[255]           ; 1F22 ED 5B FF 00
        LD   DE,[255]           ; 1F26 ED 5B FF 00
        ld   de,[32767]         ; 1F2A ED 5B FF 7F
        LD   DE,[32767]         ; 1F2E ED 5B FF 7F
        ld   de,[65535]         ; 1F32 ED 5B FF FF
        LD   DE,[65535]         ; 1F36 ED 5B FF FF
        ld   de,[hl]            ; 1F3A 5E 23 56 2B
        LD   DE,[HL]            ; 1F3E 5E 23 56 2B
        ld   de,[ix+-128]       ; 1F42 DD 5E 80 DD 56 81
        LD   DE,[IX+-128]       ; 1F48 DD 5E 80 DD 56 81
        ld   de,[ix+-1]         ; 1F4E DD 5E FF DD 56 00
        LD   DE,[IX+-1]         ; 1F54 DD 5E FF DD 56 00
        ld   de,[ix+0]          ; 1F5A DD 5E 00 DD 56 01
        LD   DE,[IX+0]          ; 1F60 DD 5E 00 DD 56 01
        ld   de,[ix+126]        ; 1F66 DD 5E 7E DD 56 7F
        LD   DE,[IX+126]        ; 1F6C DD 5E 7E DD 56 7F
        ld   de,[iy+-128]       ; 1F72 FD 5E 80 FD 56 81
        LD   DE,[IY+-128]       ; 1F78 FD 5E 80 FD 56 81
        ld   de,[iy+-1]         ; 1F7E FD 5E FF FD 56 00
        LD   DE,[IY+-1]         ; 1F84 FD 5E FF FD 56 00
        ld   de,[iy+0]          ; 1F8A FD 5E 00 FD 56 01
        LD   DE,[IY+0]          ; 1F90 FD 5E 00 FD 56 01
        ld   de,[iy+126]        ; 1F96 FD 5E 7E FD 56 7F
        LD   DE,[IY+126]        ; 1F9C FD 5E 7E FD 56 7F
        ld   de,bc              ; 1FA2 50 59
        LD   DE,BC              ; 1FA4 50 59
        ld   de,de              ; 1FA6 52 5B
        LD   DE,DE              ; 1FA8 52 5B
        ld   de,hl              ; 1FAA 54 5D
        LD   DE,HL              ; 1FAC 54 5D
        ld   de,ix              ; 1FAE DD 54 DD 5D
        LD   DE,IX              ; 1FB2 DD 54 DD 5D
        ld   de,iy              ; 1FB6 FD 54 FD 5D
        LD   DE,IY              ; 1FBA FD 54 FD 5D
        ld   e,(hl)             ; 1FBE 5E
        LD   E,(HL)             ; 1FBF 5E
        ld   e,(ix+-128)        ; 1FC0 DD 5E 80
        LD   E,(IX+-128)        ; 1FC3 DD 5E 80
        ld   e,(ix+-1)          ; 1FC6 DD 5E FF
        LD   E,(IX+-1)          ; 1FC9 DD 5E FF
        ld   e,(ix+0)           ; 1FCC DD 5E 00
        LD   E,(IX+0)           ; 1FCF DD 5E 00
        ld   e,(ix+127)         ; 1FD2 DD 5E 7F
        LD   E,(IX+127)         ; 1FD5 DD 5E 7F
        ld   e,(iy+-128)        ; 1FD8 FD 5E 80
        LD   E,(IY+-128)        ; 1FDB FD 5E 80
        ld   e,(iy+-1)          ; 1FDE FD 5E FF
        LD   E,(IY+-1)          ; 1FE1 FD 5E FF
        ld   e,(iy+0)           ; 1FE4 FD 5E 00
        LD   E,(IY+0)           ; 1FE7 FD 5E 00
        ld   e,(iy+127)         ; 1FEA FD 5E 7F
        LD   E,(IY+127)         ; 1FED FD 5E 7F
        ld   e,-128             ; 1FF0 1E 80
        LD   E,-128             ; 1FF2 1E 80
        ld   e,-1               ; 1FF4 1E FF
        LD   E,-1               ; 1FF6 1E FF
        ld   e,0                ; 1FF8 1E 00
        LD   E,0                ; 1FFA 1E 00
        ld   e,127              ; 1FFC 1E 7F
        LD   E,127              ; 1FFE 1E 7F
        ld   e,255              ; 2000 1E FF
        LD   E,255              ; 2002 1E FF
        ld   e,[hl]             ; 2004 5E
        LD   E,[HL]             ; 2005 5E
        ld   e,[ix+-128]        ; 2006 DD 5E 80
        LD   E,[IX+-128]        ; 2009 DD 5E 80
        ld   e,[ix+-1]          ; 200C DD 5E FF
        LD   E,[IX+-1]          ; 200F DD 5E FF
        ld   e,[ix+0]           ; 2012 DD 5E 00
        LD   E,[IX+0]           ; 2015 DD 5E 00
        ld   e,[ix+127]         ; 2018 DD 5E 7F
        LD   E,[IX+127]         ; 201B DD 5E 7F
        ld   e,[iy+-128]        ; 201E FD 5E 80
        LD   E,[IY+-128]        ; 2021 FD 5E 80
        ld   e,[iy+-1]          ; 2024 FD 5E FF
        LD   E,[IY+-1]          ; 2027 FD 5E FF
        ld   e,[iy+0]           ; 202A FD 5E 00
        LD   E,[IY+0]           ; 202D FD 5E 00
        ld   e,[iy+127]         ; 2030 FD 5E 7F
        LD   E,[IY+127]         ; 2033 FD 5E 7F
        ld   e,a                ; 2036 5F
        LD   E,A                ; 2037 5F
        ld   e,b                ; 2038 58
        LD   E,B                ; 2039 58
        ld   e,c                ; 203A 59
        LD   E,C                ; 203B 59
        ld   e,d                ; 203C 5A
        LD   E,D                ; 203D 5A
        ld   e,e                ; 203E 5B
        LD   E,E                ; 203F 5B
        ld   e,h                ; 2040 5C
        LD   E,H                ; 2041 5C
        ld   e,hx               ; 2042 DD 5C
        LD   E,HX               ; 2044 DD 5C
        ld   e,hy               ; 2046 FD 5C
        LD   E,HY               ; 2048 FD 5C
        ld   e,ixh              ; 204A DD 5C
        LD   E,IXH              ; 204C DD 5C
        ld   e,ixl              ; 204E DD 5D
        LD   E,IXL              ; 2050 DD 5D
        ld   e,iyh              ; 2052 FD 5C
        LD   E,IYH              ; 2054 FD 5C
        ld   e,iyl              ; 2056 FD 5D
        LD   E,IYL              ; 2058 FD 5D
        ld   e,l                ; 205A 5D
        LD   E,L                ; 205B 5D
        ld   e,lx               ; 205C DD 5D
        LD   E,LX               ; 205E DD 5D
        ld   e,ly               ; 2060 FD 5D
        LD   E,LY               ; 2062 FD 5D
        ld   e,xh               ; 2064 DD 5C
        LD   E,XH               ; 2066 DD 5C
        ld   e,xl               ; 2068 DD 5D
        LD   E,XL               ; 206A DD 5D
        ld   e,yh               ; 206C FD 5C
        LD   E,YH               ; 206E FD 5C
        ld   e,yl               ; 2070 FD 5D
        LD   E,YL               ; 2072 FD 5D
        ld   h,(hl)             ; 2074 66
        LD   H,(HL)             ; 2075 66
        ld   h,(ix+-128)        ; 2076 DD 66 80
        LD   H,(IX+-128)        ; 2079 DD 66 80
        ld   h,(ix+-1)          ; 207C DD 66 FF
        LD   H,(IX+-1)          ; 207F DD 66 FF
        ld   h,(ix+0)           ; 2082 DD 66 00
        LD   H,(IX+0)           ; 2085 DD 66 00
        ld   h,(ix+127)         ; 2088 DD 66 7F
        LD   H,(IX+127)         ; 208B DD 66 7F
        ld   h,(iy+-128)        ; 208E FD 66 80
        LD   H,(IY+-128)        ; 2091 FD 66 80
        ld   h,(iy+-1)          ; 2094 FD 66 FF
        LD   H,(IY+-1)          ; 2097 FD 66 FF
        ld   h,(iy+0)           ; 209A FD 66 00
        LD   H,(IY+0)           ; 209D FD 66 00
        ld   h,(iy+127)         ; 20A0 FD 66 7F
        LD   H,(IY+127)         ; 20A3 FD 66 7F
        ld   h,-128             ; 20A6 26 80
        LD   H,-128             ; 20A8 26 80
        ld   h,-1               ; 20AA 26 FF
        LD   H,-1               ; 20AC 26 FF
        ld   h,0                ; 20AE 26 00
        LD   H,0                ; 20B0 26 00
        ld   h,127              ; 20B2 26 7F
        LD   H,127              ; 20B4 26 7F
        ld   h,255              ; 20B6 26 FF
        LD   H,255              ; 20B8 26 FF
        ld   h,[hl]             ; 20BA 66
        LD   H,[HL]             ; 20BB 66
        ld   h,[ix+-128]        ; 20BC DD 66 80
        LD   H,[IX+-128]        ; 20BF DD 66 80
        ld   h,[ix+-1]          ; 20C2 DD 66 FF
        LD   H,[IX+-1]          ; 20C5 DD 66 FF
        ld   h,[ix+0]           ; 20C8 DD 66 00
        LD   H,[IX+0]           ; 20CB DD 66 00
        ld   h,[ix+127]         ; 20CE DD 66 7F
        LD   H,[IX+127]         ; 20D1 DD 66 7F
        ld   h,[iy+-128]        ; 20D4 FD 66 80
        LD   H,[IY+-128]        ; 20D7 FD 66 80
        ld   h,[iy+-1]          ; 20DA FD 66 FF
        LD   H,[IY+-1]          ; 20DD FD 66 FF
        ld   h,[iy+0]           ; 20E0 FD 66 00
        LD   H,[IY+0]           ; 20E3 FD 66 00
        ld   h,[iy+127]         ; 20E6 FD 66 7F
        LD   H,[IY+127]         ; 20E9 FD 66 7F
        ld   h,a                ; 20EC 67
        LD   H,A                ; 20ED 67
        ld   h,b                ; 20EE 60
        LD   H,B                ; 20EF 60
        ld   h,c                ; 20F0 61
        LD   H,C                ; 20F1 61
        ld   h,d                ; 20F2 62
        LD   H,D                ; 20F3 62
        ld   h,e                ; 20F4 63
        LD   H,E                ; 20F5 63
        ld   h,h                ; 20F6 64
        LD   H,H                ; 20F7 64
        ld   h,l                ; 20F8 65
        LD   H,L                ; 20F9 65
        ld   hl,(-32768)        ; 20FA 2A 00 80
        LD   HL,(-32768)        ; 20FD 2A 00 80
        ld   hl,(-128)          ; 2100 2A 80 FF
        LD   HL,(-128)          ; 2103 2A 80 FF
        ld   hl,(-1)            ; 2106 2A FF FF
        LD   HL,(-1)            ; 2109 2A FF FF
        ld   hl,(0)             ; 210C 2A 00 00
        LD   HL,(0)             ; 210F 2A 00 00
        ld   hl,(127)           ; 2112 2A 7F 00
        LD   HL,(127)           ; 2115 2A 7F 00
        ld   hl,(255)           ; 2118 2A FF 00
        LD   HL,(255)           ; 211B 2A FF 00
        ld   hl,(32767)         ; 211E 2A FF 7F
        LD   HL,(32767)         ; 2121 2A FF 7F
        ld   hl,(65535)         ; 2124 2A FF FF
        LD   HL,(65535)         ; 2127 2A FF FF
        ld   hl,(ix+-128)       ; 212A DD 6E 80 DD 66 81
        LD   HL,(IX+-128)       ; 2130 DD 6E 80 DD 66 81
        ld   hl,(ix+-1)         ; 2136 DD 6E FF DD 66 00
        LD   HL,(IX+-1)         ; 213C DD 6E FF DD 66 00
        ld   hl,(ix+0)          ; 2142 DD 6E 00 DD 66 01
        LD   HL,(IX+0)          ; 2148 DD 6E 00 DD 66 01
        ld   hl,(ix+126)        ; 214E DD 6E 7E DD 66 7F
        LD   HL,(IX+126)        ; 2154 DD 6E 7E DD 66 7F
        ld   hl,(iy+-128)       ; 215A FD 6E 80 FD 66 81
        LD   HL,(IY+-128)       ; 2160 FD 6E 80 FD 66 81
        ld   hl,(iy+-1)         ; 2166 FD 6E FF FD 66 00
        LD   HL,(IY+-1)         ; 216C FD 6E FF FD 66 00
        ld   hl,(iy+0)          ; 2172 FD 6E 00 FD 66 01
        LD   HL,(IY+0)          ; 2178 FD 6E 00 FD 66 01
        ld   hl,(iy+126)        ; 217E FD 6E 7E FD 66 7F
        LD   HL,(IY+126)        ; 2184 FD 6E 7E FD 66 7F
        ld   hl,-32768          ; 218A 21 00 80
        LD   HL,-32768          ; 218D 21 00 80
        ld   hl,-128            ; 2190 21 80 FF
        LD   HL,-128            ; 2193 21 80 FF
        ld   hl,-1              ; 2196 21 FF FF
        LD   HL,-1              ; 2199 21 FF FF
        ld   hl,0               ; 219C 21 00 00
        LD   HL,0               ; 219F 21 00 00
        ld   hl,127             ; 21A2 21 7F 00
        LD   HL,127             ; 21A5 21 7F 00
        ld   hl,255             ; 21A8 21 FF 00
        LD   HL,255             ; 21AB 21 FF 00
        ld   hl,32767           ; 21AE 21 FF 7F
        LD   HL,32767           ; 21B1 21 FF 7F
        ld   hl,65535           ; 21B4 21 FF FF
        LD   HL,65535           ; 21B7 21 FF FF
        ld   hl,[-32768]        ; 21BA 2A 00 80
        LD   HL,[-32768]        ; 21BD 2A 00 80
        ld   hl,[-128]          ; 21C0 2A 80 FF
        LD   HL,[-128]          ; 21C3 2A 80 FF
        ld   hl,[-1]            ; 21C6 2A FF FF
        LD   HL,[-1]            ; 21C9 2A FF FF
        ld   hl,[0]             ; 21CC 2A 00 00
        LD   HL,[0]             ; 21CF 2A 00 00
        ld   hl,[127]           ; 21D2 2A 7F 00
        LD   HL,[127]           ; 21D5 2A 7F 00
        ld   hl,[255]           ; 21D8 2A FF 00
        LD   HL,[255]           ; 21DB 2A FF 00
        ld   hl,[32767]         ; 21DE 2A FF 7F
        LD   HL,[32767]         ; 21E1 2A FF 7F
        ld   hl,[65535]         ; 21E4 2A FF FF
        LD   HL,[65535]         ; 21E7 2A FF FF
        ld   hl,[ix+-128]       ; 21EA DD 6E 80 DD 66 81
        LD   HL,[IX+-128]       ; 21F0 DD 6E 80 DD 66 81
        ld   hl,[ix+-1]         ; 21F6 DD 6E FF DD 66 00
        LD   HL,[IX+-1]         ; 21FC DD 6E FF DD 66 00
        ld   hl,[ix+0]          ; 2202 DD 6E 00 DD 66 01
        LD   HL,[IX+0]          ; 2208 DD 6E 00 DD 66 01
        ld   hl,[ix+126]        ; 220E DD 6E 7E DD 66 7F
        LD   HL,[IX+126]        ; 2214 DD 6E 7E DD 66 7F
        ld   hl,[iy+-128]       ; 221A FD 6E 80 FD 66 81
        LD   HL,[IY+-128]       ; 2220 FD 6E 80 FD 66 81
        ld   hl,[iy+-1]         ; 2226 FD 6E FF FD 66 00
        LD   HL,[IY+-1]         ; 222C FD 6E FF FD 66 00
        ld   hl,[iy+0]          ; 2232 FD 6E 00 FD 66 01
        LD   HL,[IY+0]          ; 2238 FD 6E 00 FD 66 01
        ld   hl,[iy+126]        ; 223E FD 6E 7E FD 66 7F
        LD   HL,[IY+126]        ; 2244 FD 6E 7E FD 66 7F
        ld   hl,bc              ; 224A 60 69
        LD   HL,BC              ; 224C 60 69
        ld   hl,de              ; 224E 62 6B
        LD   HL,DE              ; 2250 62 6B
        ld   hl,hl              ; 2252 64 6D
        LD   HL,HL              ; 2254 64 6D
        ld   hl,ix              ; 2256 DD E5 E1
        LD   HL,IX              ; 2259 DD E5 E1
        ld   hl,iy              ; 225C FD E5 E1
        LD   HL,IY              ; 225F FD E5 E1
        ld   hx,-128            ; 2262 DD 26 80
        LD   HX,-128            ; 2265 DD 26 80
        ld   hx,-1              ; 2268 DD 26 FF
        LD   HX,-1              ; 226B DD 26 FF
        ld   hx,0               ; 226E DD 26 00
        LD   HX,0               ; 2271 DD 26 00
        ld   hx,127             ; 2274 DD 26 7F
        LD   HX,127             ; 2277 DD 26 7F
        ld   hx,255             ; 227A DD 26 FF
        LD   HX,255             ; 227D DD 26 FF
        ld   hx,a               ; 2280 DD 67
        LD   HX,A               ; 2282 DD 67
        ld   hx,b               ; 2284 DD 60
        LD   HX,B               ; 2286 DD 60
        ld   hx,c               ; 2288 DD 61
        LD   HX,C               ; 228A DD 61
        ld   hx,d               ; 228C DD 62
        LD   HX,D               ; 228E DD 62
        ld   hx,e               ; 2290 DD 63
        LD   HX,E               ; 2292 DD 63
        ld   hx,hx              ; 2294 DD 64
        LD   HX,HX              ; 2296 DD 64
        ld   hx,lx              ; 2298 DD 65
        LD   HX,LX              ; 229A DD 65
        ld   hy,-128            ; 229C FD 26 80
        LD   HY,-128            ; 229F FD 26 80
        ld   hy,-1              ; 22A2 FD 26 FF
        LD   HY,-1              ; 22A5 FD 26 FF
        ld   hy,0               ; 22A8 FD 26 00
        LD   HY,0               ; 22AB FD 26 00
        ld   hy,127             ; 22AE FD 26 7F
        LD   HY,127             ; 22B1 FD 26 7F
        ld   hy,255             ; 22B4 FD 26 FF
        LD   HY,255             ; 22B7 FD 26 FF
        ld   hy,a               ; 22BA FD 67
        LD   HY,A               ; 22BC FD 67
        ld   hy,b               ; 22BE FD 60
        LD   HY,B               ; 22C0 FD 60
        ld   hy,c               ; 22C2 FD 61
        LD   HY,C               ; 22C4 FD 61
        ld   hy,d               ; 22C6 FD 62
        LD   HY,D               ; 22C8 FD 62
        ld   hy,e               ; 22CA FD 63
        LD   HY,E               ; 22CC FD 63
        ld   hy,hy              ; 22CE FD 64
        LD   HY,HY              ; 22D0 FD 64
        ld   hy,ly              ; 22D2 FD 65
        LD   HY,LY              ; 22D4 FD 65
        ld   i,a                ; 22D6 ED 47
        LD   I,A                ; 22D8 ED 47
        ld   ix,(-32768)        ; 22DA DD 2A 00 80
        LD   IX,(-32768)        ; 22DE DD 2A 00 80
        ld   ix,(-128)          ; 22E2 DD 2A 80 FF
        LD   IX,(-128)          ; 22E6 DD 2A 80 FF
        ld   ix,(-1)            ; 22EA DD 2A FF FF
        LD   IX,(-1)            ; 22EE DD 2A FF FF
        ld   ix,(0)             ; 22F2 DD 2A 00 00
        LD   IX,(0)             ; 22F6 DD 2A 00 00
        ld   ix,(127)           ; 22FA DD 2A 7F 00
        LD   IX,(127)           ; 22FE DD 2A 7F 00
        ld   ix,(255)           ; 2302 DD 2A FF 00
        LD   IX,(255)           ; 2306 DD 2A FF 00
        ld   ix,(32767)         ; 230A DD 2A FF 7F
        LD   IX,(32767)         ; 230E DD 2A FF 7F
        ld   ix,(65535)         ; 2312 DD 2A FF FF
        LD   IX,(65535)         ; 2316 DD 2A FF FF
        ld   ix,-32768          ; 231A DD 21 00 80
        LD   IX,-32768          ; 231E DD 21 00 80
        ld   ix,-128            ; 2322 DD 21 80 FF
        LD   IX,-128            ; 2326 DD 21 80 FF
        ld   ix,-1              ; 232A DD 21 FF FF
        LD   IX,-1              ; 232E DD 21 FF FF
        ld   ix,0               ; 2332 DD 21 00 00
        LD   IX,0               ; 2336 DD 21 00 00
        ld   ix,127             ; 233A DD 21 7F 00
        LD   IX,127             ; 233E DD 21 7F 00
        ld   ix,255             ; 2342 DD 21 FF 00
        LD   IX,255             ; 2346 DD 21 FF 00
        ld   ix,32767           ; 234A DD 21 FF 7F
        LD   IX,32767           ; 234E DD 21 FF 7F
        ld   ix,65535           ; 2352 DD 21 FF FF
        LD   IX,65535           ; 2356 DD 21 FF FF
        ld   ix,[-32768]        ; 235A DD 2A 00 80
        LD   IX,[-32768]        ; 235E DD 2A 00 80
        ld   ix,[-128]          ; 2362 DD 2A 80 FF
        LD   IX,[-128]          ; 2366 DD 2A 80 FF
        ld   ix,[-1]            ; 236A DD 2A FF FF
        LD   IX,[-1]            ; 236E DD 2A FF FF
        ld   ix,[0]             ; 2372 DD 2A 00 00
        LD   IX,[0]             ; 2376 DD 2A 00 00
        ld   ix,[127]           ; 237A DD 2A 7F 00
        LD   IX,[127]           ; 237E DD 2A 7F 00
        ld   ix,[255]           ; 2382 DD 2A FF 00
        LD   IX,[255]           ; 2386 DD 2A FF 00
        ld   ix,[32767]         ; 238A DD 2A FF 7F
        LD   IX,[32767]         ; 238E DD 2A FF 7F
        ld   ix,[65535]         ; 2392 DD 2A FF FF
        LD   IX,[65535]         ; 2396 DD 2A FF FF
        ld   ix,bc              ; 239A DD 69 DD 60
        LD   IX,BC              ; 239E DD 69 DD 60
        ld   ix,de              ; 23A2 DD 6B DD 62
        LD   IX,DE              ; 23A6 DD 6B DD 62
        ld   ix,hl              ; 23AA E5 DD E1
        LD   IX,HL              ; 23AD E5 DD E1
        ld   ix,ix              ; 23B0 DD 6D DD 64
        LD   IX,IX              ; 23B4 DD 6D DD 64
        ld   ix,iy              ; 23B8 FD E5 DD E1
        LD   IX,IY              ; 23BC FD E5 DD E1
        ld   ixh,-128           ; 23C0 DD 26 80
        LD   IXH,-128           ; 23C3 DD 26 80
        ld   ixh,-1             ; 23C6 DD 26 FF
        LD   IXH,-1             ; 23C9 DD 26 FF
        ld   ixh,0              ; 23CC DD 26 00
        LD   IXH,0              ; 23CF DD 26 00
        ld   ixh,127            ; 23D2 DD 26 7F
        LD   IXH,127            ; 23D5 DD 26 7F
        ld   ixh,255            ; 23D8 DD 26 FF
        LD   IXH,255            ; 23DB DD 26 FF
        ld   ixh,a              ; 23DE DD 67
        LD   IXH,A              ; 23E0 DD 67
        ld   ixh,b              ; 23E2 DD 60
        LD   IXH,B              ; 23E4 DD 60
        ld   ixh,c              ; 23E6 DD 61
        LD   IXH,C              ; 23E8 DD 61
        ld   ixh,d              ; 23EA DD 62
        LD   IXH,D              ; 23EC DD 62
        ld   ixh,e              ; 23EE DD 63
        LD   IXH,E              ; 23F0 DD 63
        ld   ixh,ixh            ; 23F2 DD 64
        LD   IXH,IXH            ; 23F4 DD 64
        ld   ixh,ixl            ; 23F6 DD 65
        LD   IXH,IXL            ; 23F8 DD 65
        ld   ixl,-128           ; 23FA DD 2E 80
        LD   IXL,-128           ; 23FD DD 2E 80
        ld   ixl,-1             ; 2400 DD 2E FF
        LD   IXL,-1             ; 2403 DD 2E FF
        ld   ixl,0              ; 2406 DD 2E 00
        LD   IXL,0              ; 2409 DD 2E 00
        ld   ixl,127            ; 240C DD 2E 7F
        LD   IXL,127            ; 240F DD 2E 7F
        ld   ixl,255            ; 2412 DD 2E FF
        LD   IXL,255            ; 2415 DD 2E FF
        ld   ixl,a              ; 2418 DD 6F
        LD   IXL,A              ; 241A DD 6F
        ld   ixl,b              ; 241C DD 68
        LD   IXL,B              ; 241E DD 68
        ld   ixl,c              ; 2420 DD 69
        LD   IXL,C              ; 2422 DD 69
        ld   ixl,d              ; 2424 DD 6A
        LD   IXL,D              ; 2426 DD 6A
        ld   ixl,e              ; 2428 DD 6B
        LD   IXL,E              ; 242A DD 6B
        ld   ixl,ixh            ; 242C DD 6C
        LD   IXL,IXH            ; 242E DD 6C
        ld   ixl,ixl            ; 2430 DD 6D
        LD   IXL,IXL            ; 2432 DD 6D
        ld   iy,(-32768)        ; 2434 FD 2A 00 80
        LD   IY,(-32768)        ; 2438 FD 2A 00 80
        ld   iy,(-128)          ; 243C FD 2A 80 FF
        LD   IY,(-128)          ; 2440 FD 2A 80 FF
        ld   iy,(-1)            ; 2444 FD 2A FF FF
        LD   IY,(-1)            ; 2448 FD 2A FF FF
        ld   iy,(0)             ; 244C FD 2A 00 00
        LD   IY,(0)             ; 2450 FD 2A 00 00
        ld   iy,(127)           ; 2454 FD 2A 7F 00
        LD   IY,(127)           ; 2458 FD 2A 7F 00
        ld   iy,(255)           ; 245C FD 2A FF 00
        LD   IY,(255)           ; 2460 FD 2A FF 00
        ld   iy,(32767)         ; 2464 FD 2A FF 7F
        LD   IY,(32767)         ; 2468 FD 2A FF 7F
        ld   iy,(65535)         ; 246C FD 2A FF FF
        LD   IY,(65535)         ; 2470 FD 2A FF FF
        ld   iy,-32768          ; 2474 FD 21 00 80
        LD   IY,-32768          ; 2478 FD 21 00 80
        ld   iy,-128            ; 247C FD 21 80 FF
        LD   IY,-128            ; 2480 FD 21 80 FF
        ld   iy,-1              ; 2484 FD 21 FF FF
        LD   IY,-1              ; 2488 FD 21 FF FF
        ld   iy,0               ; 248C FD 21 00 00
        LD   IY,0               ; 2490 FD 21 00 00
        ld   iy,127             ; 2494 FD 21 7F 00
        LD   IY,127             ; 2498 FD 21 7F 00
        ld   iy,255             ; 249C FD 21 FF 00
        LD   IY,255             ; 24A0 FD 21 FF 00
        ld   iy,32767           ; 24A4 FD 21 FF 7F
        LD   IY,32767           ; 24A8 FD 21 FF 7F
        ld   iy,65535           ; 24AC FD 21 FF FF
        LD   IY,65535           ; 24B0 FD 21 FF FF
        ld   iy,[-32768]        ; 24B4 FD 2A 00 80
        LD   IY,[-32768]        ; 24B8 FD 2A 00 80
        ld   iy,[-128]          ; 24BC FD 2A 80 FF
        LD   IY,[-128]          ; 24C0 FD 2A 80 FF
        ld   iy,[-1]            ; 24C4 FD 2A FF FF
        LD   IY,[-1]            ; 24C8 FD 2A FF FF
        ld   iy,[0]             ; 24CC FD 2A 00 00
        LD   IY,[0]             ; 24D0 FD 2A 00 00
        ld   iy,[127]           ; 24D4 FD 2A 7F 00
        LD   IY,[127]           ; 24D8 FD 2A 7F 00
        ld   iy,[255]           ; 24DC FD 2A FF 00
        LD   IY,[255]           ; 24E0 FD 2A FF 00
        ld   iy,[32767]         ; 24E4 FD 2A FF 7F
        LD   IY,[32767]         ; 24E8 FD 2A FF 7F
        ld   iy,[65535]         ; 24EC FD 2A FF FF
        LD   IY,[65535]         ; 24F0 FD 2A FF FF
        ld   iy,bc              ; 24F4 FD 69 FD 60
        LD   IY,BC              ; 24F8 FD 69 FD 60
        ld   iy,de              ; 24FC FD 6B FD 62
        LD   IY,DE              ; 2500 FD 6B FD 62
        ld   iy,hl              ; 2504 E5 FD E1
        LD   IY,HL              ; 2507 E5 FD E1
        ld   iy,ix              ; 250A DD E5 FD E1
        LD   IY,IX              ; 250E DD E5 FD E1
        ld   iy,iy              ; 2512 FD 6D FD 64
        LD   IY,IY              ; 2516 FD 6D FD 64
        ld   iyh,-128           ; 251A FD 26 80
        LD   IYH,-128           ; 251D FD 26 80
        ld   iyh,-1             ; 2520 FD 26 FF
        LD   IYH,-1             ; 2523 FD 26 FF
        ld   iyh,0              ; 2526 FD 26 00
        LD   IYH,0              ; 2529 FD 26 00
        ld   iyh,127            ; 252C FD 26 7F
        LD   IYH,127            ; 252F FD 26 7F
        ld   iyh,255            ; 2532 FD 26 FF
        LD   IYH,255            ; 2535 FD 26 FF
        ld   iyh,a              ; 2538 FD 67
        LD   IYH,A              ; 253A FD 67
        ld   iyh,b              ; 253C FD 60
        LD   IYH,B              ; 253E FD 60
        ld   iyh,c              ; 2540 FD 61
        LD   IYH,C              ; 2542 FD 61
        ld   iyh,d              ; 2544 FD 62
        LD   IYH,D              ; 2546 FD 62
        ld   iyh,e              ; 2548 FD 63
        LD   IYH,E              ; 254A FD 63
        ld   iyh,iyh            ; 254C FD 64
        LD   IYH,IYH            ; 254E FD 64
        ld   iyh,iyl            ; 2550 FD 65
        LD   IYH,IYL            ; 2552 FD 65
        ld   iyl,-128           ; 2554 FD 2E 80
        LD   IYL,-128           ; 2557 FD 2E 80
        ld   iyl,-1             ; 255A FD 2E FF
        LD   IYL,-1             ; 255D FD 2E FF
        ld   iyl,0              ; 2560 FD 2E 00
        LD   IYL,0              ; 2563 FD 2E 00
        ld   iyl,127            ; 2566 FD 2E 7F
        LD   IYL,127            ; 2569 FD 2E 7F
        ld   iyl,255            ; 256C FD 2E FF
        LD   IYL,255            ; 256F FD 2E FF
        ld   iyl,a              ; 2572 FD 6F
        LD   IYL,A              ; 2574 FD 6F
        ld   iyl,b              ; 2576 FD 68
        LD   IYL,B              ; 2578 FD 68
        ld   iyl,c              ; 257A FD 69
        LD   IYL,C              ; 257C FD 69
        ld   iyl,d              ; 257E FD 6A
        LD   IYL,D              ; 2580 FD 6A
        ld   iyl,e              ; 2582 FD 6B
        LD   IYL,E              ; 2584 FD 6B
        ld   iyl,iyh            ; 2586 FD 6C
        LD   IYL,IYH            ; 2588 FD 6C
        ld   iyl,iyl            ; 258A FD 6D
        LD   IYL,IYL            ; 258C FD 6D
        ld   l,(hl)             ; 258E 6E
        LD   L,(HL)             ; 258F 6E
        ld   l,(ix+-128)        ; 2590 DD 6E 80
        LD   L,(IX+-128)        ; 2593 DD 6E 80
        ld   l,(ix+-1)          ; 2596 DD 6E FF
        LD   L,(IX+-1)          ; 2599 DD 6E FF
        ld   l,(ix+0)           ; 259C DD 6E 00
        LD   L,(IX+0)           ; 259F DD 6E 00
        ld   l,(ix+127)         ; 25A2 DD 6E 7F
        LD   L,(IX+127)         ; 25A5 DD 6E 7F
        ld   l,(iy+-128)        ; 25A8 FD 6E 80
        LD   L,(IY+-128)        ; 25AB FD 6E 80
        ld   l,(iy+-1)          ; 25AE FD 6E FF
        LD   L,(IY+-1)          ; 25B1 FD 6E FF
        ld   l,(iy+0)           ; 25B4 FD 6E 00
        LD   L,(IY+0)           ; 25B7 FD 6E 00
        ld   l,(iy+127)         ; 25BA FD 6E 7F
        LD   L,(IY+127)         ; 25BD FD 6E 7F
        ld   l,-128             ; 25C0 2E 80
        LD   L,-128             ; 25C2 2E 80
        ld   l,-1               ; 25C4 2E FF
        LD   L,-1               ; 25C6 2E FF
        ld   l,0                ; 25C8 2E 00
        LD   L,0                ; 25CA 2E 00
        ld   l,127              ; 25CC 2E 7F
        LD   L,127              ; 25CE 2E 7F
        ld   l,255              ; 25D0 2E FF
        LD   L,255              ; 25D2 2E FF
        ld   l,[hl]             ; 25D4 6E
        LD   L,[HL]             ; 25D5 6E
        ld   l,[ix+-128]        ; 25D6 DD 6E 80
        LD   L,[IX+-128]        ; 25D9 DD 6E 80
        ld   l,[ix+-1]          ; 25DC DD 6E FF
        LD   L,[IX+-1]          ; 25DF DD 6E FF
        ld   l,[ix+0]           ; 25E2 DD 6E 00
        LD   L,[IX+0]           ; 25E5 DD 6E 00
        ld   l,[ix+127]         ; 25E8 DD 6E 7F
        LD   L,[IX+127]         ; 25EB DD 6E 7F
        ld   l,[iy+-128]        ; 25EE FD 6E 80
        LD   L,[IY+-128]        ; 25F1 FD 6E 80
        ld   l,[iy+-1]          ; 25F4 FD 6E FF
        LD   L,[IY+-1]          ; 25F7 FD 6E FF
        ld   l,[iy+0]           ; 25FA FD 6E 00
        LD   L,[IY+0]           ; 25FD FD 6E 00
        ld   l,[iy+127]         ; 2600 FD 6E 7F
        LD   L,[IY+127]         ; 2603 FD 6E 7F
        ld   l,a                ; 2606 6F
        LD   L,A                ; 2607 6F
        ld   l,b                ; 2608 68
        LD   L,B                ; 2609 68
        ld   l,c                ; 260A 69
        LD   L,C                ; 260B 69
        ld   l,d                ; 260C 6A
        LD   L,D                ; 260D 6A
        ld   l,e                ; 260E 6B
        LD   L,E                ; 260F 6B
        ld   l,h                ; 2610 6C
        LD   L,H                ; 2611 6C
        ld   l,l                ; 2612 6D
        LD   L,L                ; 2613 6D
        ld   lx,-128            ; 2614 DD 2E 80
        LD   LX,-128            ; 2617 DD 2E 80
        ld   lx,-1              ; 261A DD 2E FF
        LD   LX,-1              ; 261D DD 2E FF
        ld   lx,0               ; 2620 DD 2E 00
        LD   LX,0               ; 2623 DD 2E 00
        ld   lx,127             ; 2626 DD 2E 7F
        LD   LX,127             ; 2629 DD 2E 7F
        ld   lx,255             ; 262C DD 2E FF
        LD   LX,255             ; 262F DD 2E FF
        ld   lx,a               ; 2632 DD 6F
        LD   LX,A               ; 2634 DD 6F
        ld   lx,b               ; 2636 DD 68
        LD   LX,B               ; 2638 DD 68
        ld   lx,c               ; 263A DD 69
        LD   LX,C               ; 263C DD 69
        ld   lx,d               ; 263E DD 6A
        LD   LX,D               ; 2640 DD 6A
        ld   lx,e               ; 2642 DD 6B
        LD   LX,E               ; 2644 DD 6B
        ld   lx,hx              ; 2646 DD 6C
        LD   LX,HX              ; 2648 DD 6C
        ld   lx,lx              ; 264A DD 6D
        LD   LX,LX              ; 264C DD 6D
        ld   ly,-128            ; 264E FD 2E 80
        LD   LY,-128            ; 2651 FD 2E 80
        ld   ly,-1              ; 2654 FD 2E FF
        LD   LY,-1              ; 2657 FD 2E FF
        ld   ly,0               ; 265A FD 2E 00
        LD   LY,0               ; 265D FD 2E 00
        ld   ly,127             ; 2660 FD 2E 7F
        LD   LY,127             ; 2663 FD 2E 7F
        ld   ly,255             ; 2666 FD 2E FF
        LD   LY,255             ; 2669 FD 2E FF
        ld   ly,a               ; 266C FD 6F
        LD   LY,A               ; 266E FD 6F
        ld   ly,b               ; 2670 FD 68
        LD   LY,B               ; 2672 FD 68
        ld   ly,c               ; 2674 FD 69
        LD   LY,C               ; 2676 FD 69
        ld   ly,d               ; 2678 FD 6A
        LD   LY,D               ; 267A FD 6A
        ld   ly,e               ; 267C FD 6B
        LD   LY,E               ; 267E FD 6B
        ld   ly,hy              ; 2680 FD 6C
        LD   LY,HY              ; 2682 FD 6C
        ld   ly,ly              ; 2684 FD 6D
        LD   LY,LY              ; 2686 FD 6D
        ld   r,a                ; 2688 ED 4F
        LD   R,A                ; 268A ED 4F
        ld   sp,(-32768)        ; 268C ED 7B 00 80
        LD   SP,(-32768)        ; 2690 ED 7B 00 80
        ld   sp,(-128)          ; 2694 ED 7B 80 FF
        LD   SP,(-128)          ; 2698 ED 7B 80 FF
        ld   sp,(-1)            ; 269C ED 7B FF FF
        LD   SP,(-1)            ; 26A0 ED 7B FF FF
        ld   sp,(0)             ; 26A4 ED 7B 00 00
        LD   SP,(0)             ; 26A8 ED 7B 00 00
        ld   sp,(127)           ; 26AC ED 7B 7F 00
        LD   SP,(127)           ; 26B0 ED 7B 7F 00
        ld   sp,(255)           ; 26B4 ED 7B FF 00
        LD   SP,(255)           ; 26B8 ED 7B FF 00
        ld   sp,(32767)         ; 26BC ED 7B FF 7F
        LD   SP,(32767)         ; 26C0 ED 7B FF 7F
        ld   sp,(65535)         ; 26C4 ED 7B FF FF
        LD   SP,(65535)         ; 26C8 ED 7B FF FF
        ld   sp,-32768          ; 26CC 31 00 80
        LD   SP,-32768          ; 26CF 31 00 80
        ld   sp,-128            ; 26D2 31 80 FF
        LD   SP,-128            ; 26D5 31 80 FF
        ld   sp,-1              ; 26D8 31 FF FF
        LD   SP,-1              ; 26DB 31 FF FF
        ld   sp,0               ; 26DE 31 00 00
        LD   SP,0               ; 26E1 31 00 00
        ld   sp,127             ; 26E4 31 7F 00
        LD   SP,127             ; 26E7 31 7F 00
        ld   sp,255             ; 26EA 31 FF 00
        LD   SP,255             ; 26ED 31 FF 00
        ld   sp,32767           ; 26F0 31 FF 7F
        LD   SP,32767           ; 26F3 31 FF 7F
        ld   sp,65535           ; 26F6 31 FF FF
        LD   SP,65535           ; 26F9 31 FF FF
        ld   sp,[-32768]        ; 26FC ED 7B 00 80
        LD   SP,[-32768]        ; 2700 ED 7B 00 80
        ld   sp,[-128]          ; 2704 ED 7B 80 FF
        LD   SP,[-128]          ; 2708 ED 7B 80 FF
        ld   sp,[-1]            ; 270C ED 7B FF FF
        LD   SP,[-1]            ; 2710 ED 7B FF FF
        ld   sp,[0]             ; 2714 ED 7B 00 00
        LD   SP,[0]             ; 2718 ED 7B 00 00
        ld   sp,[127]           ; 271C ED 7B 7F 00
        LD   SP,[127]           ; 2720 ED 7B 7F 00
        ld   sp,[255]           ; 2724 ED 7B FF 00
        LD   SP,[255]           ; 2728 ED 7B FF 00
        ld   sp,[32767]         ; 272C ED 7B FF 7F
        LD   SP,[32767]         ; 2730 ED 7B FF 7F
        ld   sp,[65535]         ; 2734 ED 7B FF FF
        LD   SP,[65535]         ; 2738 ED 7B FF FF
        ld   sp,hl              ; 273C F9
        LD   SP,HL              ; 273D F9
        ld   sp,ix              ; 273E DD F9
        LD   SP,IX              ; 2740 DD F9
        ld   sp,iy              ; 2742 FD F9
        LD   SP,IY              ; 2744 FD F9
        ld   xh,-128            ; 2746 DD 26 80
        LD   XH,-128            ; 2749 DD 26 80
        ld   xh,-1              ; 274C DD 26 FF
        LD   XH,-1              ; 274F DD 26 FF
        ld   xh,0               ; 2752 DD 26 00
        LD   XH,0               ; 2755 DD 26 00
        ld   xh,127             ; 2758 DD 26 7F
        LD   XH,127             ; 275B DD 26 7F
        ld   xh,255             ; 275E DD 26 FF
        LD   XH,255             ; 2761 DD 26 FF
        ld   xh,a               ; 2764 DD 67
        LD   XH,A               ; 2766 DD 67
        ld   xh,b               ; 2768 DD 60
        LD   XH,B               ; 276A DD 60
        ld   xh,c               ; 276C DD 61
        LD   XH,C               ; 276E DD 61
        ld   xh,d               ; 2770 DD 62
        LD   XH,D               ; 2772 DD 62
        ld   xh,e               ; 2774 DD 63
        LD   XH,E               ; 2776 DD 63
        ld   xh,xh              ; 2778 DD 64
        LD   XH,XH              ; 277A DD 64
        ld   xh,xl              ; 277C DD 65
        LD   XH,XL              ; 277E DD 65
        ld   xl,-128            ; 2780 DD 2E 80
        LD   XL,-128            ; 2783 DD 2E 80
        ld   xl,-1              ; 2786 DD 2E FF
        LD   XL,-1              ; 2789 DD 2E FF
        ld   xl,0               ; 278C DD 2E 00
        LD   XL,0               ; 278F DD 2E 00
        ld   xl,127             ; 2792 DD 2E 7F
        LD   XL,127             ; 2795 DD 2E 7F
        ld   xl,255             ; 2798 DD 2E FF
        LD   XL,255             ; 279B DD 2E FF
        ld   xl,a               ; 279E DD 6F
        LD   XL,A               ; 27A0 DD 6F
        ld   xl,b               ; 27A2 DD 68
        LD   XL,B               ; 27A4 DD 68
        ld   xl,c               ; 27A6 DD 69
        LD   XL,C               ; 27A8 DD 69
        ld   xl,d               ; 27AA DD 6A
        LD   XL,D               ; 27AC DD 6A
        ld   xl,e               ; 27AE DD 6B
        LD   XL,E               ; 27B0 DD 6B
        ld   xl,xh              ; 27B2 DD 6C
        LD   XL,XH              ; 27B4 DD 6C
        ld   xl,xl              ; 27B6 DD 6D
        LD   XL,XL              ; 27B8 DD 6D
        ld   yh,-128            ; 27BA FD 26 80
        LD   YH,-128            ; 27BD FD 26 80
        ld   yh,-1              ; 27C0 FD 26 FF
        LD   YH,-1              ; 27C3 FD 26 FF
        ld   yh,0               ; 27C6 FD 26 00
        LD   YH,0               ; 27C9 FD 26 00
        ld   yh,127             ; 27CC FD 26 7F
        LD   YH,127             ; 27CF FD 26 7F
        ld   yh,255             ; 27D2 FD 26 FF
        LD   YH,255             ; 27D5 FD 26 FF
        ld   yh,a               ; 27D8 FD 67
        LD   YH,A               ; 27DA FD 67
        ld   yh,b               ; 27DC FD 60
        LD   YH,B               ; 27DE FD 60
        ld   yh,c               ; 27E0 FD 61
        LD   YH,C               ; 27E2 FD 61
        ld   yh,d               ; 27E4 FD 62
        LD   YH,D               ; 27E6 FD 62
        ld   yh,e               ; 27E8 FD 63
        LD   YH,E               ; 27EA FD 63
        ld   yh,yh              ; 27EC FD 64
        LD   YH,YH              ; 27EE FD 64
        ld   yh,yl              ; 27F0 FD 65
        LD   YH,YL              ; 27F2 FD 65
        ld   yl,-128            ; 27F4 FD 2E 80
        LD   YL,-128            ; 27F7 FD 2E 80
        ld   yl,-1              ; 27FA FD 2E FF
        LD   YL,-1              ; 27FD FD 2E FF
        ld   yl,0               ; 2800 FD 2E 00
        LD   YL,0               ; 2803 FD 2E 00
        ld   yl,127             ; 2806 FD 2E 7F
        LD   YL,127             ; 2809 FD 2E 7F
        ld   yl,255             ; 280C FD 2E FF
        LD   YL,255             ; 280F FD 2E FF
        ld   yl,a               ; 2812 FD 6F
        LD   YL,A               ; 2814 FD 6F
        ld   yl,b               ; 2816 FD 68
        LD   YL,B               ; 2818 FD 68
        ld   yl,c               ; 281A FD 69
        LD   YL,C               ; 281C FD 69
        ld   yl,d               ; 281E FD 6A
        LD   YL,D               ; 2820 FD 6A
        ld   yl,e               ; 2822 FD 6B
        LD   YL,E               ; 2824 FD 6B
        ld   yl,yh              ; 2826 FD 6C
        LD   YL,YH              ; 2828 FD 6C
        ld   yl,yl              ; 282A FD 6D
        LD   YL,YL              ; 282C FD 6D
        ldd                     ; 282E ED A8
        LDD                     ; 2830 ED A8
        ldd  (bc),a             ; 2832 02 0B
        LDD  (BC),A             ; 2834 02 0B
        ldd  (de),a             ; 2836 12 1B
        LDD  (DE),A             ; 2838 12 1B
        ldd  (hl),-128          ; 283A 36 80 2B
        LDD  (HL),-128          ; 283D 36 80 2B
        ldd  (hl),-1            ; 2840 36 FF 2B
        LDD  (HL),-1            ; 2843 36 FF 2B
        ldd  (hl),0             ; 2846 36 00 2B
        LDD  (HL),0             ; 2849 36 00 2B
        ldd  (hl),127           ; 284C 36 7F 2B
        LDD  (HL),127           ; 284F 36 7F 2B
        ldd  (hl),255           ; 2852 36 FF 2B
        LDD  (HL),255           ; 2855 36 FF 2B
        ldd  (hl),a             ; 2858 77 2B
        LDD  (HL),A             ; 285A 77 2B
        ldd  (hl),b             ; 285C 70 2B
        LDD  (HL),B             ; 285E 70 2B
        ldd  (hl),c             ; 2860 71 2B
        LDD  (HL),C             ; 2862 71 2B
        ldd  (hl),d             ; 2864 72 2B
        LDD  (HL),D             ; 2866 72 2B
        ldd  (hl),e             ; 2868 73 2B
        LDD  (HL),E             ; 286A 73 2B
        ldd  (hl),h             ; 286C 74 2B
        LDD  (HL),H             ; 286E 74 2B
        ldd  (hl),l             ; 2870 75 2B
        LDD  (HL),L             ; 2872 75 2B
        ldd  (ix+-128),-128     ; 2874 DD 36 80 80 DD 2B
        LDD  (IX+-128),-128     ; 287A DD 36 80 80 DD 2B
        ldd  (ix+-128),-1       ; 2880 DD 36 80 FF DD 2B
        LDD  (IX+-128),-1       ; 2886 DD 36 80 FF DD 2B
        ldd  (ix+-128),0        ; 288C DD 36 80 00 DD 2B
        LDD  (IX+-128),0        ; 2892 DD 36 80 00 DD 2B
        ldd  (ix+-128),127      ; 2898 DD 36 80 7F DD 2B
        LDD  (IX+-128),127      ; 289E DD 36 80 7F DD 2B
        ldd  (ix+-128),255      ; 28A4 DD 36 80 FF DD 2B
        LDD  (IX+-128),255      ; 28AA DD 36 80 FF DD 2B
        ldd  (ix+-1),-128       ; 28B0 DD 36 FF 80 DD 2B
        LDD  (IX+-1),-128       ; 28B6 DD 36 FF 80 DD 2B
        ldd  (ix+-1),-1         ; 28BC DD 36 FF FF DD 2B
        LDD  (IX+-1),-1         ; 28C2 DD 36 FF FF DD 2B
        ldd  (ix+-1),0          ; 28C8 DD 36 FF 00 DD 2B
        LDD  (IX+-1),0          ; 28CE DD 36 FF 00 DD 2B
        ldd  (ix+-1),127        ; 28D4 DD 36 FF 7F DD 2B
        LDD  (IX+-1),127        ; 28DA DD 36 FF 7F DD 2B
        ldd  (ix+-1),255        ; 28E0 DD 36 FF FF DD 2B
        LDD  (IX+-1),255        ; 28E6 DD 36 FF FF DD 2B
        ldd  (ix+0),-128        ; 28EC DD 36 00 80 DD 2B
        LDD  (IX+0),-128        ; 28F2 DD 36 00 80 DD 2B
        ldd  (ix+0),-1          ; 28F8 DD 36 00 FF DD 2B
        LDD  (IX+0),-1          ; 28FE DD 36 00 FF DD 2B
        ldd  (ix+0),0           ; 2904 DD 36 00 00 DD 2B
        LDD  (IX+0),0           ; 290A DD 36 00 00 DD 2B
        ldd  (ix+0),127         ; 2910 DD 36 00 7F DD 2B
        LDD  (IX+0),127         ; 2916 DD 36 00 7F DD 2B
        ldd  (ix+0),255         ; 291C DD 36 00 FF DD 2B
        LDD  (IX+0),255         ; 2922 DD 36 00 FF DD 2B
        ldd  (ix+127),-128      ; 2928 DD 36 7F 80 DD 2B
        LDD  (IX+127),-128      ; 292E DD 36 7F 80 DD 2B
        ldd  (ix+127),-1        ; 2934 DD 36 7F FF DD 2B
        LDD  (IX+127),-1        ; 293A DD 36 7F FF DD 2B
        ldd  (ix+127),0         ; 2940 DD 36 7F 00 DD 2B
        LDD  (IX+127),0         ; 2946 DD 36 7F 00 DD 2B
        ldd  (ix+127),127       ; 294C DD 36 7F 7F DD 2B
        LDD  (IX+127),127       ; 2952 DD 36 7F 7F DD 2B
        ldd  (ix+127),255       ; 2958 DD 36 7F FF DD 2B
        LDD  (IX+127),255       ; 295E DD 36 7F FF DD 2B
        ldd  (ix+-128),a        ; 2964 DD 77 80 DD 2B
        LDD  (IX+-128),A        ; 2969 DD 77 80 DD 2B
        ldd  (ix+-1),a          ; 296E DD 77 FF DD 2B
        LDD  (IX+-1),A          ; 2973 DD 77 FF DD 2B
        ldd  (ix+0),a           ; 2978 DD 77 00 DD 2B
        LDD  (IX+0),A           ; 297D DD 77 00 DD 2B
        ldd  (ix+127),a         ; 2982 DD 77 7F DD 2B
        LDD  (IX+127),A         ; 2987 DD 77 7F DD 2B
        ldd  (ix+-128),b        ; 298C DD 70 80 DD 2B
        LDD  (IX+-128),B        ; 2991 DD 70 80 DD 2B
        ldd  (ix+-1),b          ; 2996 DD 70 FF DD 2B
        LDD  (IX+-1),B          ; 299B DD 70 FF DD 2B
        ldd  (ix+0),b           ; 29A0 DD 70 00 DD 2B
        LDD  (IX+0),B           ; 29A5 DD 70 00 DD 2B
        ldd  (ix+127),b         ; 29AA DD 70 7F DD 2B
        LDD  (IX+127),B         ; 29AF DD 70 7F DD 2B
        ldd  (ix+-128),c        ; 29B4 DD 71 80 DD 2B
        LDD  (IX+-128),C        ; 29B9 DD 71 80 DD 2B
        ldd  (ix+-1),c          ; 29BE DD 71 FF DD 2B
        LDD  (IX+-1),C          ; 29C3 DD 71 FF DD 2B
        ldd  (ix+0),c           ; 29C8 DD 71 00 DD 2B
        LDD  (IX+0),C           ; 29CD DD 71 00 DD 2B
        ldd  (ix+127),c         ; 29D2 DD 71 7F DD 2B
        LDD  (IX+127),C         ; 29D7 DD 71 7F DD 2B
        ldd  (ix+-128),d        ; 29DC DD 72 80 DD 2B
        LDD  (IX+-128),D        ; 29E1 DD 72 80 DD 2B
        ldd  (ix+-1),d          ; 29E6 DD 72 FF DD 2B
        LDD  (IX+-1),D          ; 29EB DD 72 FF DD 2B
        ldd  (ix+0),d           ; 29F0 DD 72 00 DD 2B
        LDD  (IX+0),D           ; 29F5 DD 72 00 DD 2B
        ldd  (ix+127),d         ; 29FA DD 72 7F DD 2B
        LDD  (IX+127),D         ; 29FF DD 72 7F DD 2B
        ldd  (ix+-128),e        ; 2A04 DD 73 80 DD 2B
        LDD  (IX+-128),E        ; 2A09 DD 73 80 DD 2B
        ldd  (ix+-1),e          ; 2A0E DD 73 FF DD 2B
        LDD  (IX+-1),E          ; 2A13 DD 73 FF DD 2B
        ldd  (ix+0),e           ; 2A18 DD 73 00 DD 2B
        LDD  (IX+0),E           ; 2A1D DD 73 00 DD 2B
        ldd  (ix+127),e         ; 2A22 DD 73 7F DD 2B
        LDD  (IX+127),E         ; 2A27 DD 73 7F DD 2B
        ldd  (ix+-128),h        ; 2A2C DD 74 80 DD 2B
        LDD  (IX+-128),H        ; 2A31 DD 74 80 DD 2B
        ldd  (ix+-1),h          ; 2A36 DD 74 FF DD 2B
        LDD  (IX+-1),H          ; 2A3B DD 74 FF DD 2B
        ldd  (ix+0),h           ; 2A40 DD 74 00 DD 2B
        LDD  (IX+0),H           ; 2A45 DD 74 00 DD 2B
        ldd  (ix+127),h         ; 2A4A DD 74 7F DD 2B
        LDD  (IX+127),H         ; 2A4F DD 74 7F DD 2B
        ldd  (ix+-128),l        ; 2A54 DD 75 80 DD 2B
        LDD  (IX+-128),L        ; 2A59 DD 75 80 DD 2B
        ldd  (ix+-1),l          ; 2A5E DD 75 FF DD 2B
        LDD  (IX+-1),L          ; 2A63 DD 75 FF DD 2B
        ldd  (ix+0),l           ; 2A68 DD 75 00 DD 2B
        LDD  (IX+0),L           ; 2A6D DD 75 00 DD 2B
        ldd  (ix+127),l         ; 2A72 DD 75 7F DD 2B
        LDD  (IX+127),L         ; 2A77 DD 75 7F DD 2B
        ldd  (iy+-128),-128     ; 2A7C FD 36 80 80 FD 2B
        LDD  (IY+-128),-128     ; 2A82 FD 36 80 80 FD 2B
        ldd  (iy+-128),-1       ; 2A88 FD 36 80 FF FD 2B
        LDD  (IY+-128),-1       ; 2A8E FD 36 80 FF FD 2B
        ldd  (iy+-128),0        ; 2A94 FD 36 80 00 FD 2B
        LDD  (IY+-128),0        ; 2A9A FD 36 80 00 FD 2B
        ldd  (iy+-128),127      ; 2AA0 FD 36 80 7F FD 2B
        LDD  (IY+-128),127      ; 2AA6 FD 36 80 7F FD 2B
        ldd  (iy+-128),255      ; 2AAC FD 36 80 FF FD 2B
        LDD  (IY+-128),255      ; 2AB2 FD 36 80 FF FD 2B
        ldd  (iy+-1),-128       ; 2AB8 FD 36 FF 80 FD 2B
        LDD  (IY+-1),-128       ; 2ABE FD 36 FF 80 FD 2B
        ldd  (iy+-1),-1         ; 2AC4 FD 36 FF FF FD 2B
        LDD  (IY+-1),-1         ; 2ACA FD 36 FF FF FD 2B
        ldd  (iy+-1),0          ; 2AD0 FD 36 FF 00 FD 2B
        LDD  (IY+-1),0          ; 2AD6 FD 36 FF 00 FD 2B
        ldd  (iy+-1),127        ; 2ADC FD 36 FF 7F FD 2B
        LDD  (IY+-1),127        ; 2AE2 FD 36 FF 7F FD 2B
        ldd  (iy+-1),255        ; 2AE8 FD 36 FF FF FD 2B
        LDD  (IY+-1),255        ; 2AEE FD 36 FF FF FD 2B
        ldd  (iy+0),-128        ; 2AF4 FD 36 00 80 FD 2B
        LDD  (IY+0),-128        ; 2AFA FD 36 00 80 FD 2B
        ldd  (iy+0),-1          ; 2B00 FD 36 00 FF FD 2B
        LDD  (IY+0),-1          ; 2B06 FD 36 00 FF FD 2B
        ldd  (iy+0),0           ; 2B0C FD 36 00 00 FD 2B
        LDD  (IY+0),0           ; 2B12 FD 36 00 00 FD 2B
        ldd  (iy+0),127         ; 2B18 FD 36 00 7F FD 2B
        LDD  (IY+0),127         ; 2B1E FD 36 00 7F FD 2B
        ldd  (iy+0),255         ; 2B24 FD 36 00 FF FD 2B
        LDD  (IY+0),255         ; 2B2A FD 36 00 FF FD 2B
        ldd  (iy+127),-128      ; 2B30 FD 36 7F 80 FD 2B
        LDD  (IY+127),-128      ; 2B36 FD 36 7F 80 FD 2B
        ldd  (iy+127),-1        ; 2B3C FD 36 7F FF FD 2B
        LDD  (IY+127),-1        ; 2B42 FD 36 7F FF FD 2B
        ldd  (iy+127),0         ; 2B48 FD 36 7F 00 FD 2B
        LDD  (IY+127),0         ; 2B4E FD 36 7F 00 FD 2B
        ldd  (iy+127),127       ; 2B54 FD 36 7F 7F FD 2B
        LDD  (IY+127),127       ; 2B5A FD 36 7F 7F FD 2B
        ldd  (iy+127),255       ; 2B60 FD 36 7F FF FD 2B
        LDD  (IY+127),255       ; 2B66 FD 36 7F FF FD 2B
        ldd  (iy+-128),a        ; 2B6C FD 77 80 FD 2B
        LDD  (IY+-128),A        ; 2B71 FD 77 80 FD 2B
        ldd  (iy+-1),a          ; 2B76 FD 77 FF FD 2B
        LDD  (IY+-1),A          ; 2B7B FD 77 FF FD 2B
        ldd  (iy+0),a           ; 2B80 FD 77 00 FD 2B
        LDD  (IY+0),A           ; 2B85 FD 77 00 FD 2B
        ldd  (iy+127),a         ; 2B8A FD 77 7F FD 2B
        LDD  (IY+127),A         ; 2B8F FD 77 7F FD 2B
        ldd  (iy+-128),b        ; 2B94 FD 70 80 FD 2B
        LDD  (IY+-128),B        ; 2B99 FD 70 80 FD 2B
        ldd  (iy+-1),b          ; 2B9E FD 70 FF FD 2B
        LDD  (IY+-1),B          ; 2BA3 FD 70 FF FD 2B
        ldd  (iy+0),b           ; 2BA8 FD 70 00 FD 2B
        LDD  (IY+0),B           ; 2BAD FD 70 00 FD 2B
        ldd  (iy+127),b         ; 2BB2 FD 70 7F FD 2B
        LDD  (IY+127),B         ; 2BB7 FD 70 7F FD 2B
        ldd  (iy+-128),c        ; 2BBC FD 71 80 FD 2B
        LDD  (IY+-128),C        ; 2BC1 FD 71 80 FD 2B
        ldd  (iy+-1),c          ; 2BC6 FD 71 FF FD 2B
        LDD  (IY+-1),C          ; 2BCB FD 71 FF FD 2B
        ldd  (iy+0),c           ; 2BD0 FD 71 00 FD 2B
        LDD  (IY+0),C           ; 2BD5 FD 71 00 FD 2B
        ldd  (iy+127),c         ; 2BDA FD 71 7F FD 2B
        LDD  (IY+127),C         ; 2BDF FD 71 7F FD 2B
        ldd  (iy+-128),d        ; 2BE4 FD 72 80 FD 2B
        LDD  (IY+-128),D        ; 2BE9 FD 72 80 FD 2B
        ldd  (iy+-1),d          ; 2BEE FD 72 FF FD 2B
        LDD  (IY+-1),D          ; 2BF3 FD 72 FF FD 2B
        ldd  (iy+0),d           ; 2BF8 FD 72 00 FD 2B
        LDD  (IY+0),D           ; 2BFD FD 72 00 FD 2B
        ldd  (iy+127),d         ; 2C02 FD 72 7F FD 2B
        LDD  (IY+127),D         ; 2C07 FD 72 7F FD 2B
        ldd  (iy+-128),e        ; 2C0C FD 73 80 FD 2B
        LDD  (IY+-128),E        ; 2C11 FD 73 80 FD 2B
        ldd  (iy+-1),e          ; 2C16 FD 73 FF FD 2B
        LDD  (IY+-1),E          ; 2C1B FD 73 FF FD 2B
        ldd  (iy+0),e           ; 2C20 FD 73 00 FD 2B
        LDD  (IY+0),E           ; 2C25 FD 73 00 FD 2B
        ldd  (iy+127),e         ; 2C2A FD 73 7F FD 2B
        LDD  (IY+127),E         ; 2C2F FD 73 7F FD 2B
        ldd  (iy+-128),h        ; 2C34 FD 74 80 FD 2B
        LDD  (IY+-128),H        ; 2C39 FD 74 80 FD 2B
        ldd  (iy+-1),h          ; 2C3E FD 74 FF FD 2B
        LDD  (IY+-1),H          ; 2C43 FD 74 FF FD 2B
        ldd  (iy+0),h           ; 2C48 FD 74 00 FD 2B
        LDD  (IY+0),H           ; 2C4D FD 74 00 FD 2B
        ldd  (iy+127),h         ; 2C52 FD 74 7F FD 2B
        LDD  (IY+127),H         ; 2C57 FD 74 7F FD 2B
        ldd  (iy+-128),l        ; 2C5C FD 75 80 FD 2B
        LDD  (IY+-128),L        ; 2C61 FD 75 80 FD 2B
        ldd  (iy+-1),l          ; 2C66 FD 75 FF FD 2B
        LDD  (IY+-1),L          ; 2C6B FD 75 FF FD 2B
        ldd  (iy+0),l           ; 2C70 FD 75 00 FD 2B
        LDD  (IY+0),L           ; 2C75 FD 75 00 FD 2B
        ldd  (iy+127),l         ; 2C7A FD 75 7F FD 2B
        LDD  (IY+127),L         ; 2C7F FD 75 7F FD 2B
        ldd  [bc],a             ; 2C84 02 0B
        LDD  [BC],A             ; 2C86 02 0B
        ldd  [de],a             ; 2C88 12 1B
        LDD  [DE],A             ; 2C8A 12 1B
        ldd  [hl],-128          ; 2C8C 36 80 2B
        LDD  [HL],-128          ; 2C8F 36 80 2B
        ldd  [hl],-1            ; 2C92 36 FF 2B
        LDD  [HL],-1            ; 2C95 36 FF 2B
        ldd  [hl],0             ; 2C98 36 00 2B
        LDD  [HL],0             ; 2C9B 36 00 2B
        ldd  [hl],127           ; 2C9E 36 7F 2B
        LDD  [HL],127           ; 2CA1 36 7F 2B
        ldd  [hl],255           ; 2CA4 36 FF 2B
        LDD  [HL],255           ; 2CA7 36 FF 2B
        ldd  [hl],a             ; 2CAA 77 2B
        LDD  [HL],A             ; 2CAC 77 2B
        ldd  [hl],b             ; 2CAE 70 2B
        LDD  [HL],B             ; 2CB0 70 2B
        ldd  [hl],c             ; 2CB2 71 2B
        LDD  [HL],C             ; 2CB4 71 2B
        ldd  [hl],d             ; 2CB6 72 2B
        LDD  [HL],D             ; 2CB8 72 2B
        ldd  [hl],e             ; 2CBA 73 2B
        LDD  [HL],E             ; 2CBC 73 2B
        ldd  [hl],h             ; 2CBE 74 2B
        LDD  [HL],H             ; 2CC0 74 2B
        ldd  [hl],l             ; 2CC2 75 2B
        LDD  [HL],L             ; 2CC4 75 2B
        ldd  [ix+-128],-128     ; 2CC6 DD 36 80 80 DD 2B
        LDD  [IX+-128],-128     ; 2CCC DD 36 80 80 DD 2B
        ldd  [ix+-128],-1       ; 2CD2 DD 36 80 FF DD 2B
        LDD  [IX+-128],-1       ; 2CD8 DD 36 80 FF DD 2B
        ldd  [ix+-128],0        ; 2CDE DD 36 80 00 DD 2B
        LDD  [IX+-128],0        ; 2CE4 DD 36 80 00 DD 2B
        ldd  [ix+-128],127      ; 2CEA DD 36 80 7F DD 2B
        LDD  [IX+-128],127      ; 2CF0 DD 36 80 7F DD 2B
        ldd  [ix+-128],255      ; 2CF6 DD 36 80 FF DD 2B
        LDD  [IX+-128],255      ; 2CFC DD 36 80 FF DD 2B
        ldd  [ix+-1],-128       ; 2D02 DD 36 FF 80 DD 2B
        LDD  [IX+-1],-128       ; 2D08 DD 36 FF 80 DD 2B
        ldd  [ix+-1],-1         ; 2D0E DD 36 FF FF DD 2B
        LDD  [IX+-1],-1         ; 2D14 DD 36 FF FF DD 2B
        ldd  [ix+-1],0          ; 2D1A DD 36 FF 00 DD 2B
        LDD  [IX+-1],0          ; 2D20 DD 36 FF 00 DD 2B
        ldd  [ix+-1],127        ; 2D26 DD 36 FF 7F DD 2B
        LDD  [IX+-1],127        ; 2D2C DD 36 FF 7F DD 2B
        ldd  [ix+-1],255        ; 2D32 DD 36 FF FF DD 2B
        LDD  [IX+-1],255        ; 2D38 DD 36 FF FF DD 2B
        ldd  [ix+0],-128        ; 2D3E DD 36 00 80 DD 2B
        LDD  [IX+0],-128        ; 2D44 DD 36 00 80 DD 2B
        ldd  [ix+0],-1          ; 2D4A DD 36 00 FF DD 2B
        LDD  [IX+0],-1          ; 2D50 DD 36 00 FF DD 2B
        ldd  [ix+0],0           ; 2D56 DD 36 00 00 DD 2B
        LDD  [IX+0],0           ; 2D5C DD 36 00 00 DD 2B
        ldd  [ix+0],127         ; 2D62 DD 36 00 7F DD 2B
        LDD  [IX+0],127         ; 2D68 DD 36 00 7F DD 2B
        ldd  [ix+0],255         ; 2D6E DD 36 00 FF DD 2B
        LDD  [IX+0],255         ; 2D74 DD 36 00 FF DD 2B
        ldd  [ix+127],-128      ; 2D7A DD 36 7F 80 DD 2B
        LDD  [IX+127],-128      ; 2D80 DD 36 7F 80 DD 2B
        ldd  [ix+127],-1        ; 2D86 DD 36 7F FF DD 2B
        LDD  [IX+127],-1        ; 2D8C DD 36 7F FF DD 2B
        ldd  [ix+127],0         ; 2D92 DD 36 7F 00 DD 2B
        LDD  [IX+127],0         ; 2D98 DD 36 7F 00 DD 2B
        ldd  [ix+127],127       ; 2D9E DD 36 7F 7F DD 2B
        LDD  [IX+127],127       ; 2DA4 DD 36 7F 7F DD 2B
        ldd  [ix+127],255       ; 2DAA DD 36 7F FF DD 2B
        LDD  [IX+127],255       ; 2DB0 DD 36 7F FF DD 2B
        ldd  [ix+-128],a        ; 2DB6 DD 77 80 DD 2B
        LDD  [IX+-128],A        ; 2DBB DD 77 80 DD 2B
        ldd  [ix+-1],a          ; 2DC0 DD 77 FF DD 2B
        LDD  [IX+-1],A          ; 2DC5 DD 77 FF DD 2B
        ldd  [ix+0],a           ; 2DCA DD 77 00 DD 2B
        LDD  [IX+0],A           ; 2DCF DD 77 00 DD 2B
        ldd  [ix+127],a         ; 2DD4 DD 77 7F DD 2B
        LDD  [IX+127],A         ; 2DD9 DD 77 7F DD 2B
        ldd  [ix+-128],b        ; 2DDE DD 70 80 DD 2B
        LDD  [IX+-128],B        ; 2DE3 DD 70 80 DD 2B
        ldd  [ix+-1],b          ; 2DE8 DD 70 FF DD 2B
        LDD  [IX+-1],B          ; 2DED DD 70 FF DD 2B
        ldd  [ix+0],b           ; 2DF2 DD 70 00 DD 2B
        LDD  [IX+0],B           ; 2DF7 DD 70 00 DD 2B
        ldd  [ix+127],b         ; 2DFC DD 70 7F DD 2B
        LDD  [IX+127],B         ; 2E01 DD 70 7F DD 2B
        ldd  [ix+-128],c        ; 2E06 DD 71 80 DD 2B
        LDD  [IX+-128],C        ; 2E0B DD 71 80 DD 2B
        ldd  [ix+-1],c          ; 2E10 DD 71 FF DD 2B
        LDD  [IX+-1],C          ; 2E15 DD 71 FF DD 2B
        ldd  [ix+0],c           ; 2E1A DD 71 00 DD 2B
        LDD  [IX+0],C           ; 2E1F DD 71 00 DD 2B
        ldd  [ix+127],c         ; 2E24 DD 71 7F DD 2B
        LDD  [IX+127],C         ; 2E29 DD 71 7F DD 2B
        ldd  [ix+-128],d        ; 2E2E DD 72 80 DD 2B
        LDD  [IX+-128],D        ; 2E33 DD 72 80 DD 2B
        ldd  [ix+-1],d          ; 2E38 DD 72 FF DD 2B
        LDD  [IX+-1],D          ; 2E3D DD 72 FF DD 2B
        ldd  [ix+0],d           ; 2E42 DD 72 00 DD 2B
        LDD  [IX+0],D           ; 2E47 DD 72 00 DD 2B
        ldd  [ix+127],d         ; 2E4C DD 72 7F DD 2B
        LDD  [IX+127],D         ; 2E51 DD 72 7F DD 2B
        ldd  [ix+-128],e        ; 2E56 DD 73 80 DD 2B
        LDD  [IX+-128],E        ; 2E5B DD 73 80 DD 2B
        ldd  [ix+-1],e          ; 2E60 DD 73 FF DD 2B
        LDD  [IX+-1],E          ; 2E65 DD 73 FF DD 2B
        ldd  [ix+0],e           ; 2E6A DD 73 00 DD 2B
        LDD  [IX+0],E           ; 2E6F DD 73 00 DD 2B
        ldd  [ix+127],e         ; 2E74 DD 73 7F DD 2B
        LDD  [IX+127],E         ; 2E79 DD 73 7F DD 2B
        ldd  [ix+-128],h        ; 2E7E DD 74 80 DD 2B
        LDD  [IX+-128],H        ; 2E83 DD 74 80 DD 2B
        ldd  [ix+-1],h          ; 2E88 DD 74 FF DD 2B
        LDD  [IX+-1],H          ; 2E8D DD 74 FF DD 2B
        ldd  [ix+0],h           ; 2E92 DD 74 00 DD 2B
        LDD  [IX+0],H           ; 2E97 DD 74 00 DD 2B
        ldd  [ix+127],h         ; 2E9C DD 74 7F DD 2B
        LDD  [IX+127],H         ; 2EA1 DD 74 7F DD 2B
        ldd  [ix+-128],l        ; 2EA6 DD 75 80 DD 2B
        LDD  [IX+-128],L        ; 2EAB DD 75 80 DD 2B
        ldd  [ix+-1],l          ; 2EB0 DD 75 FF DD 2B
        LDD  [IX+-1],L          ; 2EB5 DD 75 FF DD 2B
        ldd  [ix+0],l           ; 2EBA DD 75 00 DD 2B
        LDD  [IX+0],L           ; 2EBF DD 75 00 DD 2B
        ldd  [ix+127],l         ; 2EC4 DD 75 7F DD 2B
        LDD  [IX+127],L         ; 2EC9 DD 75 7F DD 2B
        ldd  [iy+-128],-128     ; 2ECE FD 36 80 80 FD 2B
        LDD  [IY+-128],-128     ; 2ED4 FD 36 80 80 FD 2B
        ldd  [iy+-128],-1       ; 2EDA FD 36 80 FF FD 2B
        LDD  [IY+-128],-1       ; 2EE0 FD 36 80 FF FD 2B
        ldd  [iy+-128],0        ; 2EE6 FD 36 80 00 FD 2B
        LDD  [IY+-128],0        ; 2EEC FD 36 80 00 FD 2B
        ldd  [iy+-128],127      ; 2EF2 FD 36 80 7F FD 2B
        LDD  [IY+-128],127      ; 2EF8 FD 36 80 7F FD 2B
        ldd  [iy+-128],255      ; 2EFE FD 36 80 FF FD 2B
        LDD  [IY+-128],255      ; 2F04 FD 36 80 FF FD 2B
        ldd  [iy+-1],-128       ; 2F0A FD 36 FF 80 FD 2B
        LDD  [IY+-1],-128       ; 2F10 FD 36 FF 80 FD 2B
        ldd  [iy+-1],-1         ; 2F16 FD 36 FF FF FD 2B
        LDD  [IY+-1],-1         ; 2F1C FD 36 FF FF FD 2B
        ldd  [iy+-1],0          ; 2F22 FD 36 FF 00 FD 2B
        LDD  [IY+-1],0          ; 2F28 FD 36 FF 00 FD 2B
        ldd  [iy+-1],127        ; 2F2E FD 36 FF 7F FD 2B
        LDD  [IY+-1],127        ; 2F34 FD 36 FF 7F FD 2B
        ldd  [iy+-1],255        ; 2F3A FD 36 FF FF FD 2B
        LDD  [IY+-1],255        ; 2F40 FD 36 FF FF FD 2B
        ldd  [iy+0],-128        ; 2F46 FD 36 00 80 FD 2B
        LDD  [IY+0],-128        ; 2F4C FD 36 00 80 FD 2B
        ldd  [iy+0],-1          ; 2F52 FD 36 00 FF FD 2B
        LDD  [IY+0],-1          ; 2F58 FD 36 00 FF FD 2B
        ldd  [iy+0],0           ; 2F5E FD 36 00 00 FD 2B
        LDD  [IY+0],0           ; 2F64 FD 36 00 00 FD 2B
        ldd  [iy+0],127         ; 2F6A FD 36 00 7F FD 2B
        LDD  [IY+0],127         ; 2F70 FD 36 00 7F FD 2B
        ldd  [iy+0],255         ; 2F76 FD 36 00 FF FD 2B
        LDD  [IY+0],255         ; 2F7C FD 36 00 FF FD 2B
        ldd  [iy+127],-128      ; 2F82 FD 36 7F 80 FD 2B
        LDD  [IY+127],-128      ; 2F88 FD 36 7F 80 FD 2B
        ldd  [iy+127],-1        ; 2F8E FD 36 7F FF FD 2B
        LDD  [IY+127],-1        ; 2F94 FD 36 7F FF FD 2B
        ldd  [iy+127],0         ; 2F9A FD 36 7F 00 FD 2B
        LDD  [IY+127],0         ; 2FA0 FD 36 7F 00 FD 2B
        ldd  [iy+127],127       ; 2FA6 FD 36 7F 7F FD 2B
        LDD  [IY+127],127       ; 2FAC FD 36 7F 7F FD 2B
        ldd  [iy+127],255       ; 2FB2 FD 36 7F FF FD 2B
        LDD  [IY+127],255       ; 2FB8 FD 36 7F FF FD 2B
        ldd  [iy+-128],a        ; 2FBE FD 77 80 FD 2B
        LDD  [IY+-128],A        ; 2FC3 FD 77 80 FD 2B
        ldd  [iy+-1],a          ; 2FC8 FD 77 FF FD 2B
        LDD  [IY+-1],A          ; 2FCD FD 77 FF FD 2B
        ldd  [iy+0],a           ; 2FD2 FD 77 00 FD 2B
        LDD  [IY+0],A           ; 2FD7 FD 77 00 FD 2B
        ldd  [iy+127],a         ; 2FDC FD 77 7F FD 2B
        LDD  [IY+127],A         ; 2FE1 FD 77 7F FD 2B
        ldd  [iy+-128],b        ; 2FE6 FD 70 80 FD 2B
        LDD  [IY+-128],B        ; 2FEB FD 70 80 FD 2B
        ldd  [iy+-1],b          ; 2FF0 FD 70 FF FD 2B
        LDD  [IY+-1],B          ; 2FF5 FD 70 FF FD 2B
        ldd  [iy+0],b           ; 2FFA FD 70 00 FD 2B
        LDD  [IY+0],B           ; 2FFF FD 70 00 FD 2B
        ldd  [iy+127],b         ; 3004 FD 70 7F FD 2B
        LDD  [IY+127],B         ; 3009 FD 70 7F FD 2B
        ldd  [iy+-128],c        ; 300E FD 71 80 FD 2B
        LDD  [IY+-128],C        ; 3013 FD 71 80 FD 2B
        ldd  [iy+-1],c          ; 3018 FD 71 FF FD 2B
        LDD  [IY+-1],C          ; 301D FD 71 FF FD 2B
        ldd  [iy+0],c           ; 3022 FD 71 00 FD 2B
        LDD  [IY+0],C           ; 3027 FD 71 00 FD 2B
        ldd  [iy+127],c         ; 302C FD 71 7F FD 2B
        LDD  [IY+127],C         ; 3031 FD 71 7F FD 2B
        ldd  [iy+-128],d        ; 3036 FD 72 80 FD 2B
        LDD  [IY+-128],D        ; 303B FD 72 80 FD 2B
        ldd  [iy+-1],d          ; 3040 FD 72 FF FD 2B
        LDD  [IY+-1],D          ; 3045 FD 72 FF FD 2B
        ldd  [iy+0],d           ; 304A FD 72 00 FD 2B
        LDD  [IY+0],D           ; 304F FD 72 00 FD 2B
        ldd  [iy+127],d         ; 3054 FD 72 7F FD 2B
        LDD  [IY+127],D         ; 3059 FD 72 7F FD 2B
        ldd  [iy+-128],e        ; 305E FD 73 80 FD 2B
        LDD  [IY+-128],E        ; 3063 FD 73 80 FD 2B
        ldd  [iy+-1],e          ; 3068 FD 73 FF FD 2B
        LDD  [IY+-1],E          ; 306D FD 73 FF FD 2B
        ldd  [iy+0],e           ; 3072 FD 73 00 FD 2B
        LDD  [IY+0],E           ; 3077 FD 73 00 FD 2B
        ldd  [iy+127],e         ; 307C FD 73 7F FD 2B
        LDD  [IY+127],E         ; 3081 FD 73 7F FD 2B
        ldd  [iy+-128],h        ; 3086 FD 74 80 FD 2B
        LDD  [IY+-128],H        ; 308B FD 74 80 FD 2B
        ldd  [iy+-1],h          ; 3090 FD 74 FF FD 2B
        LDD  [IY+-1],H          ; 3095 FD 74 FF FD 2B
        ldd  [iy+0],h           ; 309A FD 74 00 FD 2B
        LDD  [IY+0],H           ; 309F FD 74 00 FD 2B
        ldd  [iy+127],h         ; 30A4 FD 74 7F FD 2B
        LDD  [IY+127],H         ; 30A9 FD 74 7F FD 2B
        ldd  [iy+-128],l        ; 30AE FD 75 80 FD 2B
        LDD  [IY+-128],L        ; 30B3 FD 75 80 FD 2B
        ldd  [iy+-1],l          ; 30B8 FD 75 FF FD 2B
        LDD  [IY+-1],L          ; 30BD FD 75 FF FD 2B
        ldd  [iy+0],l           ; 30C2 FD 75 00 FD 2B
        LDD  [IY+0],L           ; 30C7 FD 75 00 FD 2B
        ldd  [iy+127],l         ; 30CC FD 75 7F FD 2B
        LDD  [IY+127],L         ; 30D1 FD 75 7F FD 2B
        ldd  a,(bc)             ; 30D6 0A 0B
        LDD  A,(BC)             ; 30D8 0A 0B
        ldd  a,(de)             ; 30DA 1A 1B
        LDD  A,(DE)             ; 30DC 1A 1B
        ldd  a,(hl)             ; 30DE 7E 2B
        LDD  A,(HL)             ; 30E0 7E 2B
        ldd  a,(ix+-128)        ; 30E2 DD 7E 80 DD 2B
        LDD  A,(IX+-128)        ; 30E7 DD 7E 80 DD 2B
        ldd  a,(ix+-1)          ; 30EC DD 7E FF DD 2B
        LDD  A,(IX+-1)          ; 30F1 DD 7E FF DD 2B
        ldd  a,(ix+0)           ; 30F6 DD 7E 00 DD 2B
        LDD  A,(IX+0)           ; 30FB DD 7E 00 DD 2B
        ldd  a,(ix+127)         ; 3100 DD 7E 7F DD 2B
        LDD  A,(IX+127)         ; 3105 DD 7E 7F DD 2B
        ldd  a,(iy+-128)        ; 310A FD 7E 80 FD 2B
        LDD  A,(IY+-128)        ; 310F FD 7E 80 FD 2B
        ldd  a,(iy+-1)          ; 3114 FD 7E FF FD 2B
        LDD  A,(IY+-1)          ; 3119 FD 7E FF FD 2B
        ldd  a,(iy+0)           ; 311E FD 7E 00 FD 2B
        LDD  A,(IY+0)           ; 3123 FD 7E 00 FD 2B
        ldd  a,(iy+127)         ; 3128 FD 7E 7F FD 2B
        LDD  A,(IY+127)         ; 312D FD 7E 7F FD 2B
        ldd  a,[bc]             ; 3132 0A 0B
        LDD  A,[BC]             ; 3134 0A 0B
        ldd  a,[de]             ; 3136 1A 1B
        LDD  A,[DE]             ; 3138 1A 1B
        ldd  a,[hl]             ; 313A 7E 2B
        LDD  A,[HL]             ; 313C 7E 2B
        ldd  a,[ix+-128]        ; 313E DD 7E 80 DD 2B
        LDD  A,[IX+-128]        ; 3143 DD 7E 80 DD 2B
        ldd  a,[ix+-1]          ; 3148 DD 7E FF DD 2B
        LDD  A,[IX+-1]          ; 314D DD 7E FF DD 2B
        ldd  a,[ix+0]           ; 3152 DD 7E 00 DD 2B
        LDD  A,[IX+0]           ; 3157 DD 7E 00 DD 2B
        ldd  a,[ix+127]         ; 315C DD 7E 7F DD 2B
        LDD  A,[IX+127]         ; 3161 DD 7E 7F DD 2B
        ldd  a,[iy+-128]        ; 3166 FD 7E 80 FD 2B
        LDD  A,[IY+-128]        ; 316B FD 7E 80 FD 2B
        ldd  a,[iy+-1]          ; 3170 FD 7E FF FD 2B
        LDD  A,[IY+-1]          ; 3175 FD 7E FF FD 2B
        ldd  a,[iy+0]           ; 317A FD 7E 00 FD 2B
        LDD  A,[IY+0]           ; 317F FD 7E 00 FD 2B
        ldd  a,[iy+127]         ; 3184 FD 7E 7F FD 2B
        LDD  A,[IY+127]         ; 3189 FD 7E 7F FD 2B
        ldd  b,(hl)             ; 318E 46 2B
        LDD  B,(HL)             ; 3190 46 2B
        ldd  b,(ix+-128)        ; 3192 DD 46 80 DD 2B
        LDD  B,(IX+-128)        ; 3197 DD 46 80 DD 2B
        ldd  b,(ix+-1)          ; 319C DD 46 FF DD 2B
        LDD  B,(IX+-1)          ; 31A1 DD 46 FF DD 2B
        ldd  b,(ix+0)           ; 31A6 DD 46 00 DD 2B
        LDD  B,(IX+0)           ; 31AB DD 46 00 DD 2B
        ldd  b,(ix+127)         ; 31B0 DD 46 7F DD 2B
        LDD  B,(IX+127)         ; 31B5 DD 46 7F DD 2B
        ldd  b,(iy+-128)        ; 31BA FD 46 80 FD 2B
        LDD  B,(IY+-128)        ; 31BF FD 46 80 FD 2B
        ldd  b,(iy+-1)          ; 31C4 FD 46 FF FD 2B
        LDD  B,(IY+-1)          ; 31C9 FD 46 FF FD 2B
        ldd  b,(iy+0)           ; 31CE FD 46 00 FD 2B
        LDD  B,(IY+0)           ; 31D3 FD 46 00 FD 2B
        ldd  b,(iy+127)         ; 31D8 FD 46 7F FD 2B
        LDD  B,(IY+127)         ; 31DD FD 46 7F FD 2B
        ldd  b,[hl]             ; 31E2 46 2B
        LDD  B,[HL]             ; 31E4 46 2B
        ldd  b,[ix+-128]        ; 31E6 DD 46 80 DD 2B
        LDD  B,[IX+-128]        ; 31EB DD 46 80 DD 2B
        ldd  b,[ix+-1]          ; 31F0 DD 46 FF DD 2B
        LDD  B,[IX+-1]          ; 31F5 DD 46 FF DD 2B
        ldd  b,[ix+0]           ; 31FA DD 46 00 DD 2B
        LDD  B,[IX+0]           ; 31FF DD 46 00 DD 2B
        ldd  b,[ix+127]         ; 3204 DD 46 7F DD 2B
        LDD  B,[IX+127]         ; 3209 DD 46 7F DD 2B
        ldd  b,[iy+-128]        ; 320E FD 46 80 FD 2B
        LDD  B,[IY+-128]        ; 3213 FD 46 80 FD 2B
        ldd  b,[iy+-1]          ; 3218 FD 46 FF FD 2B
        LDD  B,[IY+-1]          ; 321D FD 46 FF FD 2B
        ldd  b,[iy+0]           ; 3222 FD 46 00 FD 2B
        LDD  B,[IY+0]           ; 3227 FD 46 00 FD 2B
        ldd  b,[iy+127]         ; 322C FD 46 7F FD 2B
        LDD  B,[IY+127]         ; 3231 FD 46 7F FD 2B
        ldd  c,(hl)             ; 3236 4E 2B
        LDD  C,(HL)             ; 3238 4E 2B
        ldd  c,(ix+-128)        ; 323A DD 4E 80 DD 2B
        LDD  C,(IX+-128)        ; 323F DD 4E 80 DD 2B
        ldd  c,(ix+-1)          ; 3244 DD 4E FF DD 2B
        LDD  C,(IX+-1)          ; 3249 DD 4E FF DD 2B
        ldd  c,(ix+0)           ; 324E DD 4E 00 DD 2B
        LDD  C,(IX+0)           ; 3253 DD 4E 00 DD 2B
        ldd  c,(ix+127)         ; 3258 DD 4E 7F DD 2B
        LDD  C,(IX+127)         ; 325D DD 4E 7F DD 2B
        ldd  c,(iy+-128)        ; 3262 FD 4E 80 FD 2B
        LDD  C,(IY+-128)        ; 3267 FD 4E 80 FD 2B
        ldd  c,(iy+-1)          ; 326C FD 4E FF FD 2B
        LDD  C,(IY+-1)          ; 3271 FD 4E FF FD 2B
        ldd  c,(iy+0)           ; 3276 FD 4E 00 FD 2B
        LDD  C,(IY+0)           ; 327B FD 4E 00 FD 2B
        ldd  c,(iy+127)         ; 3280 FD 4E 7F FD 2B
        LDD  C,(IY+127)         ; 3285 FD 4E 7F FD 2B
        ldd  c,[hl]             ; 328A 4E 2B
        LDD  C,[HL]             ; 328C 4E 2B
        ldd  c,[ix+-128]        ; 328E DD 4E 80 DD 2B
        LDD  C,[IX+-128]        ; 3293 DD 4E 80 DD 2B
        ldd  c,[ix+-1]          ; 3298 DD 4E FF DD 2B
        LDD  C,[IX+-1]          ; 329D DD 4E FF DD 2B
        ldd  c,[ix+0]           ; 32A2 DD 4E 00 DD 2B
        LDD  C,[IX+0]           ; 32A7 DD 4E 00 DD 2B
        ldd  c,[ix+127]         ; 32AC DD 4E 7F DD 2B
        LDD  C,[IX+127]         ; 32B1 DD 4E 7F DD 2B
        ldd  c,[iy+-128]        ; 32B6 FD 4E 80 FD 2B
        LDD  C,[IY+-128]        ; 32BB FD 4E 80 FD 2B
        ldd  c,[iy+-1]          ; 32C0 FD 4E FF FD 2B
        LDD  C,[IY+-1]          ; 32C5 FD 4E FF FD 2B
        ldd  c,[iy+0]           ; 32CA FD 4E 00 FD 2B
        LDD  C,[IY+0]           ; 32CF FD 4E 00 FD 2B
        ldd  c,[iy+127]         ; 32D4 FD 4E 7F FD 2B
        LDD  C,[IY+127]         ; 32D9 FD 4E 7F FD 2B
        ldd  d,(hl)             ; 32DE 56 2B
        LDD  D,(HL)             ; 32E0 56 2B
        ldd  d,(ix+-128)        ; 32E2 DD 56 80 DD 2B
        LDD  D,(IX+-128)        ; 32E7 DD 56 80 DD 2B
        ldd  d,(ix+-1)          ; 32EC DD 56 FF DD 2B
        LDD  D,(IX+-1)          ; 32F1 DD 56 FF DD 2B
        ldd  d,(ix+0)           ; 32F6 DD 56 00 DD 2B
        LDD  D,(IX+0)           ; 32FB DD 56 00 DD 2B
        ldd  d,(ix+127)         ; 3300 DD 56 7F DD 2B
        LDD  D,(IX+127)         ; 3305 DD 56 7F DD 2B
        ldd  d,(iy+-128)        ; 330A FD 56 80 FD 2B
        LDD  D,(IY+-128)        ; 330F FD 56 80 FD 2B
        ldd  d,(iy+-1)          ; 3314 FD 56 FF FD 2B
        LDD  D,(IY+-1)          ; 3319 FD 56 FF FD 2B
        ldd  d,(iy+0)           ; 331E FD 56 00 FD 2B
        LDD  D,(IY+0)           ; 3323 FD 56 00 FD 2B
        ldd  d,(iy+127)         ; 3328 FD 56 7F FD 2B
        LDD  D,(IY+127)         ; 332D FD 56 7F FD 2B
        ldd  d,[hl]             ; 3332 56 2B
        LDD  D,[HL]             ; 3334 56 2B
        ldd  d,[ix+-128]        ; 3336 DD 56 80 DD 2B
        LDD  D,[IX+-128]        ; 333B DD 56 80 DD 2B
        ldd  d,[ix+-1]          ; 3340 DD 56 FF DD 2B
        LDD  D,[IX+-1]          ; 3345 DD 56 FF DD 2B
        ldd  d,[ix+0]           ; 334A DD 56 00 DD 2B
        LDD  D,[IX+0]           ; 334F DD 56 00 DD 2B
        ldd  d,[ix+127]         ; 3354 DD 56 7F DD 2B
        LDD  D,[IX+127]         ; 3359 DD 56 7F DD 2B
        ldd  d,[iy+-128]        ; 335E FD 56 80 FD 2B
        LDD  D,[IY+-128]        ; 3363 FD 56 80 FD 2B
        ldd  d,[iy+-1]          ; 3368 FD 56 FF FD 2B
        LDD  D,[IY+-1]          ; 336D FD 56 FF FD 2B
        ldd  d,[iy+0]           ; 3372 FD 56 00 FD 2B
        LDD  D,[IY+0]           ; 3377 FD 56 00 FD 2B
        ldd  d,[iy+127]         ; 337C FD 56 7F FD 2B
        LDD  D,[IY+127]         ; 3381 FD 56 7F FD 2B
        ldd  e,(hl)             ; 3386 5E 2B
        LDD  E,(HL)             ; 3388 5E 2B
        ldd  e,(ix+-128)        ; 338A DD 5E 80 DD 2B
        LDD  E,(IX+-128)        ; 338F DD 5E 80 DD 2B
        ldd  e,(ix+-1)          ; 3394 DD 5E FF DD 2B
        LDD  E,(IX+-1)          ; 3399 DD 5E FF DD 2B
        ldd  e,(ix+0)           ; 339E DD 5E 00 DD 2B
        LDD  E,(IX+0)           ; 33A3 DD 5E 00 DD 2B
        ldd  e,(ix+127)         ; 33A8 DD 5E 7F DD 2B
        LDD  E,(IX+127)         ; 33AD DD 5E 7F DD 2B
        ldd  e,(iy+-128)        ; 33B2 FD 5E 80 FD 2B
        LDD  E,(IY+-128)        ; 33B7 FD 5E 80 FD 2B
        ldd  e,(iy+-1)          ; 33BC FD 5E FF FD 2B
        LDD  E,(IY+-1)          ; 33C1 FD 5E FF FD 2B
        ldd  e,(iy+0)           ; 33C6 FD 5E 00 FD 2B
        LDD  E,(IY+0)           ; 33CB FD 5E 00 FD 2B
        ldd  e,(iy+127)         ; 33D0 FD 5E 7F FD 2B
        LDD  E,(IY+127)         ; 33D5 FD 5E 7F FD 2B
        ldd  e,[hl]             ; 33DA 5E 2B
        LDD  E,[HL]             ; 33DC 5E 2B
        ldd  e,[ix+-128]        ; 33DE DD 5E 80 DD 2B
        LDD  E,[IX+-128]        ; 33E3 DD 5E 80 DD 2B
        ldd  e,[ix+-1]          ; 33E8 DD 5E FF DD 2B
        LDD  E,[IX+-1]          ; 33ED DD 5E FF DD 2B
        ldd  e,[ix+0]           ; 33F2 DD 5E 00 DD 2B
        LDD  E,[IX+0]           ; 33F7 DD 5E 00 DD 2B
        ldd  e,[ix+127]         ; 33FC DD 5E 7F DD 2B
        LDD  E,[IX+127]         ; 3401 DD 5E 7F DD 2B
        ldd  e,[iy+-128]        ; 3406 FD 5E 80 FD 2B
        LDD  E,[IY+-128]        ; 340B FD 5E 80 FD 2B
        ldd  e,[iy+-1]          ; 3410 FD 5E FF FD 2B
        LDD  E,[IY+-1]          ; 3415 FD 5E FF FD 2B
        ldd  e,[iy+0]           ; 341A FD 5E 00 FD 2B
        LDD  E,[IY+0]           ; 341F FD 5E 00 FD 2B
        ldd  e,[iy+127]         ; 3424 FD 5E 7F FD 2B
        LDD  E,[IY+127]         ; 3429 FD 5E 7F FD 2B
        ldd  h,(hl)             ; 342E 66 2B
        LDD  H,(HL)             ; 3430 66 2B
        ldd  h,(ix+-128)        ; 3432 DD 66 80 DD 2B
        LDD  H,(IX+-128)        ; 3437 DD 66 80 DD 2B
        ldd  h,(ix+-1)          ; 343C DD 66 FF DD 2B
        LDD  H,(IX+-1)          ; 3441 DD 66 FF DD 2B
        ldd  h,(ix+0)           ; 3446 DD 66 00 DD 2B
        LDD  H,(IX+0)           ; 344B DD 66 00 DD 2B
        ldd  h,(ix+127)         ; 3450 DD 66 7F DD 2B
        LDD  H,(IX+127)         ; 3455 DD 66 7F DD 2B
        ldd  h,(iy+-128)        ; 345A FD 66 80 FD 2B
        LDD  H,(IY+-128)        ; 345F FD 66 80 FD 2B
        ldd  h,(iy+-1)          ; 3464 FD 66 FF FD 2B
        LDD  H,(IY+-1)          ; 3469 FD 66 FF FD 2B
        ldd  h,(iy+0)           ; 346E FD 66 00 FD 2B
        LDD  H,(IY+0)           ; 3473 FD 66 00 FD 2B
        ldd  h,(iy+127)         ; 3478 FD 66 7F FD 2B
        LDD  H,(IY+127)         ; 347D FD 66 7F FD 2B
        ldd  h,[hl]             ; 3482 66 2B
        LDD  H,[HL]             ; 3484 66 2B
        ldd  h,[ix+-128]        ; 3486 DD 66 80 DD 2B
        LDD  H,[IX+-128]        ; 348B DD 66 80 DD 2B
        ldd  h,[ix+-1]          ; 3490 DD 66 FF DD 2B
        LDD  H,[IX+-1]          ; 3495 DD 66 FF DD 2B
        ldd  h,[ix+0]           ; 349A DD 66 00 DD 2B
        LDD  H,[IX+0]           ; 349F DD 66 00 DD 2B
        ldd  h,[ix+127]         ; 34A4 DD 66 7F DD 2B
        LDD  H,[IX+127]         ; 34A9 DD 66 7F DD 2B
        ldd  h,[iy+-128]        ; 34AE FD 66 80 FD 2B
        LDD  H,[IY+-128]        ; 34B3 FD 66 80 FD 2B
        ldd  h,[iy+-1]          ; 34B8 FD 66 FF FD 2B
        LDD  H,[IY+-1]          ; 34BD FD 66 FF FD 2B
        ldd  h,[iy+0]           ; 34C2 FD 66 00 FD 2B
        LDD  H,[IY+0]           ; 34C7 FD 66 00 FD 2B
        ldd  h,[iy+127]         ; 34CC FD 66 7F FD 2B
        LDD  H,[IY+127]         ; 34D1 FD 66 7F FD 2B
        ldd  l,(hl)             ; 34D6 6E 2B
        LDD  L,(HL)             ; 34D8 6E 2B
        ldd  l,(ix+-128)        ; 34DA DD 6E 80 DD 2B
        LDD  L,(IX+-128)        ; 34DF DD 6E 80 DD 2B
        ldd  l,(ix+-1)          ; 34E4 DD 6E FF DD 2B
        LDD  L,(IX+-1)          ; 34E9 DD 6E FF DD 2B
        ldd  l,(ix+0)           ; 34EE DD 6E 00 DD 2B
        LDD  L,(IX+0)           ; 34F3 DD 6E 00 DD 2B
        ldd  l,(ix+127)         ; 34F8 DD 6E 7F DD 2B
        LDD  L,(IX+127)         ; 34FD DD 6E 7F DD 2B
        ldd  l,(iy+-128)        ; 3502 FD 6E 80 FD 2B
        LDD  L,(IY+-128)        ; 3507 FD 6E 80 FD 2B
        ldd  l,(iy+-1)          ; 350C FD 6E FF FD 2B
        LDD  L,(IY+-1)          ; 3511 FD 6E FF FD 2B
        ldd  l,(iy+0)           ; 3516 FD 6E 00 FD 2B
        LDD  L,(IY+0)           ; 351B FD 6E 00 FD 2B
        ldd  l,(iy+127)         ; 3520 FD 6E 7F FD 2B
        LDD  L,(IY+127)         ; 3525 FD 6E 7F FD 2B
        ldd  l,[hl]             ; 352A 6E 2B
        LDD  L,[HL]             ; 352C 6E 2B
        ldd  l,[ix+-128]        ; 352E DD 6E 80 DD 2B
        LDD  L,[IX+-128]        ; 3533 DD 6E 80 DD 2B
        ldd  l,[ix+-1]          ; 3538 DD 6E FF DD 2B
        LDD  L,[IX+-1]          ; 353D DD 6E FF DD 2B
        ldd  l,[ix+0]           ; 3542 DD 6E 00 DD 2B
        LDD  L,[IX+0]           ; 3547 DD 6E 00 DD 2B
        ldd  l,[ix+127]         ; 354C DD 6E 7F DD 2B
        LDD  L,[IX+127]         ; 3551 DD 6E 7F DD 2B
        ldd  l,[iy+-128]        ; 3556 FD 6E 80 FD 2B
        LDD  L,[IY+-128]        ; 355B FD 6E 80 FD 2B
        ldd  l,[iy+-1]          ; 3560 FD 6E FF FD 2B
        LDD  L,[IY+-1]          ; 3565 FD 6E FF FD 2B
        ldd  l,[iy+0]           ; 356A FD 6E 00 FD 2B
        LDD  L,[IY+0]           ; 356F FD 6E 00 FD 2B
        ldd  l,[iy+127]         ; 3574 FD 6E 7F FD 2B
        LDD  L,[IY+127]         ; 3579 FD 6E 7F FD 2B
        lddr                    ; 357E ED B8
        LDDR                    ; 3580 ED B8
        ldi                     ; 3582 ED A0
        LDI                     ; 3584 ED A0
        ldi  (bc),a             ; 3586 02 03
        LDI  (BC),A             ; 3588 02 03
        ldi  (de),a             ; 358A 12 13
        LDI  (DE),A             ; 358C 12 13
        ldi  (hl),-128          ; 358E 36 80 23
        LDI  (HL),-128          ; 3591 36 80 23
        ldi  (hl),-1            ; 3594 36 FF 23
        LDI  (HL),-1            ; 3597 36 FF 23
        ldi  (hl),0             ; 359A 36 00 23
        LDI  (HL),0             ; 359D 36 00 23
        ldi  (hl),127           ; 35A0 36 7F 23
        LDI  (HL),127           ; 35A3 36 7F 23
        ldi  (hl),255           ; 35A6 36 FF 23
        LDI  (HL),255           ; 35A9 36 FF 23
        ldi  (hl),a             ; 35AC 77 23
        LDI  (HL),A             ; 35AE 77 23
        ldi  (hl),b             ; 35B0 70 23
        LDI  (HL),B             ; 35B2 70 23
        ldi  (hl),bc            ; 35B4 71 23 70 23
        LDI  (HL),BC            ; 35B8 71 23 70 23
        ldi  (hl),c             ; 35BC 71 23
        LDI  (HL),C             ; 35BE 71 23
        ldi  (hl),d             ; 35C0 72 23
        LDI  (HL),D             ; 35C2 72 23
        ldi  (hl),de            ; 35C4 73 23 72 23
        LDI  (HL),DE            ; 35C8 73 23 72 23
        ldi  (hl),e             ; 35CC 73 23
        LDI  (HL),E             ; 35CE 73 23
        ldi  (hl),h             ; 35D0 74 23
        LDI  (HL),H             ; 35D2 74 23
        ldi  (hl),l             ; 35D4 75 23
        LDI  (HL),L             ; 35D6 75 23
        ldi  (ix+-128),-128     ; 35D8 DD 36 80 80 DD 23
        LDI  (IX+-128),-128     ; 35DE DD 36 80 80 DD 23
        ldi  (ix+-128),-1       ; 35E4 DD 36 80 FF DD 23
        LDI  (IX+-128),-1       ; 35EA DD 36 80 FF DD 23
        ldi  (ix+-128),0        ; 35F0 DD 36 80 00 DD 23
        LDI  (IX+-128),0        ; 35F6 DD 36 80 00 DD 23
        ldi  (ix+-128),127      ; 35FC DD 36 80 7F DD 23
        LDI  (IX+-128),127      ; 3602 DD 36 80 7F DD 23
        ldi  (ix+-128),255      ; 3608 DD 36 80 FF DD 23
        LDI  (IX+-128),255      ; 360E DD 36 80 FF DD 23
        ldi  (ix+-1),-128       ; 3614 DD 36 FF 80 DD 23
        LDI  (IX+-1),-128       ; 361A DD 36 FF 80 DD 23
        ldi  (ix+-1),-1         ; 3620 DD 36 FF FF DD 23
        LDI  (IX+-1),-1         ; 3626 DD 36 FF FF DD 23
        ldi  (ix+-1),0          ; 362C DD 36 FF 00 DD 23
        LDI  (IX+-1),0          ; 3632 DD 36 FF 00 DD 23
        ldi  (ix+-1),127        ; 3638 DD 36 FF 7F DD 23
        LDI  (IX+-1),127        ; 363E DD 36 FF 7F DD 23
        ldi  (ix+-1),255        ; 3644 DD 36 FF FF DD 23
        LDI  (IX+-1),255        ; 364A DD 36 FF FF DD 23
        ldi  (ix+0),-128        ; 3650 DD 36 00 80 DD 23
        LDI  (IX+0),-128        ; 3656 DD 36 00 80 DD 23
        ldi  (ix+0),-1          ; 365C DD 36 00 FF DD 23
        LDI  (IX+0),-1          ; 3662 DD 36 00 FF DD 23
        ldi  (ix+0),0           ; 3668 DD 36 00 00 DD 23
        LDI  (IX+0),0           ; 366E DD 36 00 00 DD 23
        ldi  (ix+0),127         ; 3674 DD 36 00 7F DD 23
        LDI  (IX+0),127         ; 367A DD 36 00 7F DD 23
        ldi  (ix+0),255         ; 3680 DD 36 00 FF DD 23
        LDI  (IX+0),255         ; 3686 DD 36 00 FF DD 23
        ldi  (ix+127),-128      ; 368C DD 36 7F 80 DD 23
        LDI  (IX+127),-128      ; 3692 DD 36 7F 80 DD 23
        ldi  (ix+127),-1        ; 3698 DD 36 7F FF DD 23
        LDI  (IX+127),-1        ; 369E DD 36 7F FF DD 23
        ldi  (ix+127),0         ; 36A4 DD 36 7F 00 DD 23
        LDI  (IX+127),0         ; 36AA DD 36 7F 00 DD 23
        ldi  (ix+127),127       ; 36B0 DD 36 7F 7F DD 23
        LDI  (IX+127),127       ; 36B6 DD 36 7F 7F DD 23
        ldi  (ix+127),255       ; 36BC DD 36 7F FF DD 23
        LDI  (IX+127),255       ; 36C2 DD 36 7F FF DD 23
        ldi  (ix+-128),a        ; 36C8 DD 77 80 DD 23
        LDI  (IX+-128),A        ; 36CD DD 77 80 DD 23
        ldi  (ix+-1),a          ; 36D2 DD 77 FF DD 23
        LDI  (IX+-1),A          ; 36D7 DD 77 FF DD 23
        ldi  (ix+0),a           ; 36DC DD 77 00 DD 23
        LDI  (IX+0),A           ; 36E1 DD 77 00 DD 23
        ldi  (ix+127),a         ; 36E6 DD 77 7F DD 23
        LDI  (IX+127),A         ; 36EB DD 77 7F DD 23
        ldi  (ix+-128),b        ; 36F0 DD 70 80 DD 23
        LDI  (IX+-128),B        ; 36F5 DD 70 80 DD 23
        ldi  (ix+-1),b          ; 36FA DD 70 FF DD 23
        LDI  (IX+-1),B          ; 36FF DD 70 FF DD 23
        ldi  (ix+0),b           ; 3704 DD 70 00 DD 23
        LDI  (IX+0),B           ; 3709 DD 70 00 DD 23
        ldi  (ix+127),b         ; 370E DD 70 7F DD 23
        LDI  (IX+127),B         ; 3713 DD 70 7F DD 23
        ldi  (ix+-128),bc       ; 3718 DD 71 80 DD 23 DD 70 80 DD 23
        LDI  (IX+-128),BC       ; 3722 DD 71 80 DD 23 DD 70 80 DD 23
        ldi  (ix+-1),bc         ; 372C DD 71 FF DD 23 DD 70 FF DD 23
        LDI  (IX+-1),BC         ; 3736 DD 71 FF DD 23 DD 70 FF DD 23
        ldi  (ix+0),bc          ; 3740 DD 71 00 DD 23 DD 70 00 DD 23
        LDI  (IX+0),BC          ; 374A DD 71 00 DD 23 DD 70 00 DD 23
        ldi  (ix+126),bc        ; 3754 DD 71 7E DD 23 DD 70 7E DD 23
        LDI  (IX+126),BC        ; 375E DD 71 7E DD 23 DD 70 7E DD 23
        ldi  (ix+-128),c        ; 3768 DD 71 80 DD 23
        LDI  (IX+-128),C        ; 376D DD 71 80 DD 23
        ldi  (ix+-1),c          ; 3772 DD 71 FF DD 23
        LDI  (IX+-1),C          ; 3777 DD 71 FF DD 23
        ldi  (ix+0),c           ; 377C DD 71 00 DD 23
        LDI  (IX+0),C           ; 3781 DD 71 00 DD 23
        ldi  (ix+127),c         ; 3786 DD 71 7F DD 23
        LDI  (IX+127),C         ; 378B DD 71 7F DD 23
        ldi  (ix+-128),d        ; 3790 DD 72 80 DD 23
        LDI  (IX+-128),D        ; 3795 DD 72 80 DD 23
        ldi  (ix+-1),d          ; 379A DD 72 FF DD 23
        LDI  (IX+-1),D          ; 379F DD 72 FF DD 23
        ldi  (ix+0),d           ; 37A4 DD 72 00 DD 23
        LDI  (IX+0),D           ; 37A9 DD 72 00 DD 23
        ldi  (ix+127),d         ; 37AE DD 72 7F DD 23
        LDI  (IX+127),D         ; 37B3 DD 72 7F DD 23
        ldi  (ix+-128),de       ; 37B8 DD 73 80 DD 23 DD 72 80 DD 23
        LDI  (IX+-128),DE       ; 37C2 DD 73 80 DD 23 DD 72 80 DD 23
        ldi  (ix+-1),de         ; 37CC DD 73 FF DD 23 DD 72 FF DD 23
        LDI  (IX+-1),DE         ; 37D6 DD 73 FF DD 23 DD 72 FF DD 23
        ldi  (ix+0),de          ; 37E0 DD 73 00 DD 23 DD 72 00 DD 23
        LDI  (IX+0),DE          ; 37EA DD 73 00 DD 23 DD 72 00 DD 23
        ldi  (ix+126),de        ; 37F4 DD 73 7E DD 23 DD 72 7E DD 23
        LDI  (IX+126),DE        ; 37FE DD 73 7E DD 23 DD 72 7E DD 23
        ldi  (ix+-128),e        ; 3808 DD 73 80 DD 23
        LDI  (IX+-128),E        ; 380D DD 73 80 DD 23
        ldi  (ix+-1),e          ; 3812 DD 73 FF DD 23
        LDI  (IX+-1),E          ; 3817 DD 73 FF DD 23
        ldi  (ix+0),e           ; 381C DD 73 00 DD 23
        LDI  (IX+0),E           ; 3821 DD 73 00 DD 23
        ldi  (ix+127),e         ; 3826 DD 73 7F DD 23
        LDI  (IX+127),E         ; 382B DD 73 7F DD 23
        ldi  (ix+-128),h        ; 3830 DD 74 80 DD 23
        LDI  (IX+-128),H        ; 3835 DD 74 80 DD 23
        ldi  (ix+-1),h          ; 383A DD 74 FF DD 23
        LDI  (IX+-1),H          ; 383F DD 74 FF DD 23
        ldi  (ix+0),h           ; 3844 DD 74 00 DD 23
        LDI  (IX+0),H           ; 3849 DD 74 00 DD 23
        ldi  (ix+127),h         ; 384E DD 74 7F DD 23
        LDI  (IX+127),H         ; 3853 DD 74 7F DD 23
        ldi  (ix+-128),hl       ; 3858 DD 75 80 DD 23 DD 74 80 DD 23
        LDI  (IX+-128),HL       ; 3862 DD 75 80 DD 23 DD 74 80 DD 23
        ldi  (ix+-1),hl         ; 386C DD 75 FF DD 23 DD 74 FF DD 23
        LDI  (IX+-1),HL         ; 3876 DD 75 FF DD 23 DD 74 FF DD 23
        ldi  (ix+0),hl          ; 3880 DD 75 00 DD 23 DD 74 00 DD 23
        LDI  (IX+0),HL          ; 388A DD 75 00 DD 23 DD 74 00 DD 23
        ldi  (ix+126),hl        ; 3894 DD 75 7E DD 23 DD 74 7E DD 23
        LDI  (IX+126),HL        ; 389E DD 75 7E DD 23 DD 74 7E DD 23
        ldi  (ix+-128),l        ; 38A8 DD 75 80 DD 23
        LDI  (IX+-128),L        ; 38AD DD 75 80 DD 23
        ldi  (ix+-1),l          ; 38B2 DD 75 FF DD 23
        LDI  (IX+-1),L          ; 38B7 DD 75 FF DD 23
        ldi  (ix+0),l           ; 38BC DD 75 00 DD 23
        LDI  (IX+0),L           ; 38C1 DD 75 00 DD 23
        ldi  (ix+127),l         ; 38C6 DD 75 7F DD 23
        LDI  (IX+127),L         ; 38CB DD 75 7F DD 23
        ldi  (iy+-128),-128     ; 38D0 FD 36 80 80 FD 23
        LDI  (IY+-128),-128     ; 38D6 FD 36 80 80 FD 23
        ldi  (iy+-128),-1       ; 38DC FD 36 80 FF FD 23
        LDI  (IY+-128),-1       ; 38E2 FD 36 80 FF FD 23
        ldi  (iy+-128),0        ; 38E8 FD 36 80 00 FD 23
        LDI  (IY+-128),0        ; 38EE FD 36 80 00 FD 23
        ldi  (iy+-128),127      ; 38F4 FD 36 80 7F FD 23
        LDI  (IY+-128),127      ; 38FA FD 36 80 7F FD 23
        ldi  (iy+-128),255      ; 3900 FD 36 80 FF FD 23
        LDI  (IY+-128),255      ; 3906 FD 36 80 FF FD 23
        ldi  (iy+-1),-128       ; 390C FD 36 FF 80 FD 23
        LDI  (IY+-1),-128       ; 3912 FD 36 FF 80 FD 23
        ldi  (iy+-1),-1         ; 3918 FD 36 FF FF FD 23
        LDI  (IY+-1),-1         ; 391E FD 36 FF FF FD 23
        ldi  (iy+-1),0          ; 3924 FD 36 FF 00 FD 23
        LDI  (IY+-1),0          ; 392A FD 36 FF 00 FD 23
        ldi  (iy+-1),127        ; 3930 FD 36 FF 7F FD 23
        LDI  (IY+-1),127        ; 3936 FD 36 FF 7F FD 23
        ldi  (iy+-1),255        ; 393C FD 36 FF FF FD 23
        LDI  (IY+-1),255        ; 3942 FD 36 FF FF FD 23
        ldi  (iy+0),-128        ; 3948 FD 36 00 80 FD 23
        LDI  (IY+0),-128        ; 394E FD 36 00 80 FD 23
        ldi  (iy+0),-1          ; 3954 FD 36 00 FF FD 23
        LDI  (IY+0),-1          ; 395A FD 36 00 FF FD 23
        ldi  (iy+0),0           ; 3960 FD 36 00 00 FD 23
        LDI  (IY+0),0           ; 3966 FD 36 00 00 FD 23
        ldi  (iy+0),127         ; 396C FD 36 00 7F FD 23
        LDI  (IY+0),127         ; 3972 FD 36 00 7F FD 23
        ldi  (iy+0),255         ; 3978 FD 36 00 FF FD 23
        LDI  (IY+0),255         ; 397E FD 36 00 FF FD 23
        ldi  (iy+127),-128      ; 3984 FD 36 7F 80 FD 23
        LDI  (IY+127),-128      ; 398A FD 36 7F 80 FD 23
        ldi  (iy+127),-1        ; 3990 FD 36 7F FF FD 23
        LDI  (IY+127),-1        ; 3996 FD 36 7F FF FD 23
        ldi  (iy+127),0         ; 399C FD 36 7F 00 FD 23
        LDI  (IY+127),0         ; 39A2 FD 36 7F 00 FD 23
        ldi  (iy+127),127       ; 39A8 FD 36 7F 7F FD 23
        LDI  (IY+127),127       ; 39AE FD 36 7F 7F FD 23
        ldi  (iy+127),255       ; 39B4 FD 36 7F FF FD 23
        LDI  (IY+127),255       ; 39BA FD 36 7F FF FD 23
        ldi  (iy+-128),a        ; 39C0 FD 77 80 FD 23
        LDI  (IY+-128),A        ; 39C5 FD 77 80 FD 23
        ldi  (iy+-1),a          ; 39CA FD 77 FF FD 23
        LDI  (IY+-1),A          ; 39CF FD 77 FF FD 23
        ldi  (iy+0),a           ; 39D4 FD 77 00 FD 23
        LDI  (IY+0),A           ; 39D9 FD 77 00 FD 23
        ldi  (iy+127),a         ; 39DE FD 77 7F FD 23
        LDI  (IY+127),A         ; 39E3 FD 77 7F FD 23
        ldi  (iy+-128),b        ; 39E8 FD 70 80 FD 23
        LDI  (IY+-128),B        ; 39ED FD 70 80 FD 23
        ldi  (iy+-1),b          ; 39F2 FD 70 FF FD 23
        LDI  (IY+-1),B          ; 39F7 FD 70 FF FD 23
        ldi  (iy+0),b           ; 39FC FD 70 00 FD 23
        LDI  (IY+0),B           ; 3A01 FD 70 00 FD 23
        ldi  (iy+127),b         ; 3A06 FD 70 7F FD 23
        LDI  (IY+127),B         ; 3A0B FD 70 7F FD 23
        ldi  (iy+-128),bc       ; 3A10 FD 71 80 FD 23 FD 70 80 FD 23
        LDI  (IY+-128),BC       ; 3A1A FD 71 80 FD 23 FD 70 80 FD 23
        ldi  (iy+-1),bc         ; 3A24 FD 71 FF FD 23 FD 70 FF FD 23
        LDI  (IY+-1),BC         ; 3A2E FD 71 FF FD 23 FD 70 FF FD 23
        ldi  (iy+0),bc          ; 3A38 FD 71 00 FD 23 FD 70 00 FD 23
        LDI  (IY+0),BC          ; 3A42 FD 71 00 FD 23 FD 70 00 FD 23
        ldi  (iy+126),bc        ; 3A4C FD 71 7E FD 23 FD 70 7E FD 23
        LDI  (IY+126),BC        ; 3A56 FD 71 7E FD 23 FD 70 7E FD 23
        ldi  (iy+-128),c        ; 3A60 FD 71 80 FD 23
        LDI  (IY+-128),C        ; 3A65 FD 71 80 FD 23
        ldi  (iy+-1),c          ; 3A6A FD 71 FF FD 23
        LDI  (IY+-1),C          ; 3A6F FD 71 FF FD 23
        ldi  (iy+0),c           ; 3A74 FD 71 00 FD 23
        LDI  (IY+0),C           ; 3A79 FD 71 00 FD 23
        ldi  (iy+127),c         ; 3A7E FD 71 7F FD 23
        LDI  (IY+127),C         ; 3A83 FD 71 7F FD 23
        ldi  (iy+-128),d        ; 3A88 FD 72 80 FD 23
        LDI  (IY+-128),D        ; 3A8D FD 72 80 FD 23
        ldi  (iy+-1),d          ; 3A92 FD 72 FF FD 23
        LDI  (IY+-1),D          ; 3A97 FD 72 FF FD 23
        ldi  (iy+0),d           ; 3A9C FD 72 00 FD 23
        LDI  (IY+0),D           ; 3AA1 FD 72 00 FD 23
        ldi  (iy+127),d         ; 3AA6 FD 72 7F FD 23
        LDI  (IY+127),D         ; 3AAB FD 72 7F FD 23
        ldi  (iy+-128),de       ; 3AB0 FD 73 80 FD 23 FD 72 80 FD 23
        LDI  (IY+-128),DE       ; 3ABA FD 73 80 FD 23 FD 72 80 FD 23
        ldi  (iy+-1),de         ; 3AC4 FD 73 FF FD 23 FD 72 FF FD 23
        LDI  (IY+-1),DE         ; 3ACE FD 73 FF FD 23 FD 72 FF FD 23
        ldi  (iy+0),de          ; 3AD8 FD 73 00 FD 23 FD 72 00 FD 23
        LDI  (IY+0),DE          ; 3AE2 FD 73 00 FD 23 FD 72 00 FD 23
        ldi  (iy+126),de        ; 3AEC FD 73 7E FD 23 FD 72 7E FD 23
        LDI  (IY+126),DE        ; 3AF6 FD 73 7E FD 23 FD 72 7E FD 23
        ldi  (iy+-128),e        ; 3B00 FD 73 80 FD 23
        LDI  (IY+-128),E        ; 3B05 FD 73 80 FD 23
        ldi  (iy+-1),e          ; 3B0A FD 73 FF FD 23
        LDI  (IY+-1),E          ; 3B0F FD 73 FF FD 23
        ldi  (iy+0),e           ; 3B14 FD 73 00 FD 23
        LDI  (IY+0),E           ; 3B19 FD 73 00 FD 23
        ldi  (iy+127),e         ; 3B1E FD 73 7F FD 23
        LDI  (IY+127),E         ; 3B23 FD 73 7F FD 23
        ldi  (iy+-128),h        ; 3B28 FD 74 80 FD 23
        LDI  (IY+-128),H        ; 3B2D FD 74 80 FD 23
        ldi  (iy+-1),h          ; 3B32 FD 74 FF FD 23
        LDI  (IY+-1),H          ; 3B37 FD 74 FF FD 23
        ldi  (iy+0),h           ; 3B3C FD 74 00 FD 23
        LDI  (IY+0),H           ; 3B41 FD 74 00 FD 23
        ldi  (iy+127),h         ; 3B46 FD 74 7F FD 23
        LDI  (IY+127),H         ; 3B4B FD 74 7F FD 23
        ldi  (iy+-128),hl       ; 3B50 FD 75 80 FD 23 FD 74 80 FD 23
        LDI  (IY+-128),HL       ; 3B5A FD 75 80 FD 23 FD 74 80 FD 23
        ldi  (iy+-1),hl         ; 3B64 FD 75 FF FD 23 FD 74 FF FD 23
        LDI  (IY+-1),HL         ; 3B6E FD 75 FF FD 23 FD 74 FF FD 23
        ldi  (iy+0),hl          ; 3B78 FD 75 00 FD 23 FD 74 00 FD 23
        LDI  (IY+0),HL          ; 3B82 FD 75 00 FD 23 FD 74 00 FD 23
        ldi  (iy+126),hl        ; 3B8C FD 75 7E FD 23 FD 74 7E FD 23
        LDI  (IY+126),HL        ; 3B96 FD 75 7E FD 23 FD 74 7E FD 23
        ldi  (iy+-128),l        ; 3BA0 FD 75 80 FD 23
        LDI  (IY+-128),L        ; 3BA5 FD 75 80 FD 23
        ldi  (iy+-1),l          ; 3BAA FD 75 FF FD 23
        LDI  (IY+-1),L          ; 3BAF FD 75 FF FD 23
        ldi  (iy+0),l           ; 3BB4 FD 75 00 FD 23
        LDI  (IY+0),L           ; 3BB9 FD 75 00 FD 23
        ldi  (iy+127),l         ; 3BBE FD 75 7F FD 23
        LDI  (IY+127),L         ; 3BC3 FD 75 7F FD 23
        ldi  [bc],a             ; 3BC8 02 03
        LDI  [BC],A             ; 3BCA 02 03
        ldi  [de],a             ; 3BCC 12 13
        LDI  [DE],A             ; 3BCE 12 13
        ldi  [hl],-128          ; 3BD0 36 80 23
        LDI  [HL],-128          ; 3BD3 36 80 23
        ldi  [hl],-1            ; 3BD6 36 FF 23
        LDI  [HL],-1            ; 3BD9 36 FF 23
        ldi  [hl],0             ; 3BDC 36 00 23
        LDI  [HL],0             ; 3BDF 36 00 23
        ldi  [hl],127           ; 3BE2 36 7F 23
        LDI  [HL],127           ; 3BE5 36 7F 23
        ldi  [hl],255           ; 3BE8 36 FF 23
        LDI  [HL],255           ; 3BEB 36 FF 23
        ldi  [hl],a             ; 3BEE 77 23
        LDI  [HL],A             ; 3BF0 77 23
        ldi  [hl],b             ; 3BF2 70 23
        LDI  [HL],B             ; 3BF4 70 23
        ldi  [hl],bc            ; 3BF6 71 23 70 23
        LDI  [HL],BC            ; 3BFA 71 23 70 23
        ldi  [hl],c             ; 3BFE 71 23
        LDI  [HL],C             ; 3C00 71 23
        ldi  [hl],d             ; 3C02 72 23
        LDI  [HL],D             ; 3C04 72 23
        ldi  [hl],de            ; 3C06 73 23 72 23
        LDI  [HL],DE            ; 3C0A 73 23 72 23
        ldi  [hl],e             ; 3C0E 73 23
        LDI  [HL],E             ; 3C10 73 23
        ldi  [hl],h             ; 3C12 74 23
        LDI  [HL],H             ; 3C14 74 23
        ldi  [hl],l             ; 3C16 75 23
        LDI  [HL],L             ; 3C18 75 23
        ldi  [ix+-128],-128     ; 3C1A DD 36 80 80 DD 23
        LDI  [IX+-128],-128     ; 3C20 DD 36 80 80 DD 23
        ldi  [ix+-128],-1       ; 3C26 DD 36 80 FF DD 23
        LDI  [IX+-128],-1       ; 3C2C DD 36 80 FF DD 23
        ldi  [ix+-128],0        ; 3C32 DD 36 80 00 DD 23
        LDI  [IX+-128],0        ; 3C38 DD 36 80 00 DD 23
        ldi  [ix+-128],127      ; 3C3E DD 36 80 7F DD 23
        LDI  [IX+-128],127      ; 3C44 DD 36 80 7F DD 23
        ldi  [ix+-128],255      ; 3C4A DD 36 80 FF DD 23
        LDI  [IX+-128],255      ; 3C50 DD 36 80 FF DD 23
        ldi  [ix+-1],-128       ; 3C56 DD 36 FF 80 DD 23
        LDI  [IX+-1],-128       ; 3C5C DD 36 FF 80 DD 23
        ldi  [ix+-1],-1         ; 3C62 DD 36 FF FF DD 23
        LDI  [IX+-1],-1         ; 3C68 DD 36 FF FF DD 23
        ldi  [ix+-1],0          ; 3C6E DD 36 FF 00 DD 23
        LDI  [IX+-1],0          ; 3C74 DD 36 FF 00 DD 23
        ldi  [ix+-1],127        ; 3C7A DD 36 FF 7F DD 23
        LDI  [IX+-1],127        ; 3C80 DD 36 FF 7F DD 23
        ldi  [ix+-1],255        ; 3C86 DD 36 FF FF DD 23
        LDI  [IX+-1],255        ; 3C8C DD 36 FF FF DD 23
        ldi  [ix+0],-128        ; 3C92 DD 36 00 80 DD 23
        LDI  [IX+0],-128        ; 3C98 DD 36 00 80 DD 23
        ldi  [ix+0],-1          ; 3C9E DD 36 00 FF DD 23
        LDI  [IX+0],-1          ; 3CA4 DD 36 00 FF DD 23
        ldi  [ix+0],0           ; 3CAA DD 36 00 00 DD 23
        LDI  [IX+0],0           ; 3CB0 DD 36 00 00 DD 23
        ldi  [ix+0],127         ; 3CB6 DD 36 00 7F DD 23
        LDI  [IX+0],127         ; 3CBC DD 36 00 7F DD 23
        ldi  [ix+0],255         ; 3CC2 DD 36 00 FF DD 23
        LDI  [IX+0],255         ; 3CC8 DD 36 00 FF DD 23
        ldi  [ix+127],-128      ; 3CCE DD 36 7F 80 DD 23
        LDI  [IX+127],-128      ; 3CD4 DD 36 7F 80 DD 23
        ldi  [ix+127],-1        ; 3CDA DD 36 7F FF DD 23
        LDI  [IX+127],-1        ; 3CE0 DD 36 7F FF DD 23
        ldi  [ix+127],0         ; 3CE6 DD 36 7F 00 DD 23
        LDI  [IX+127],0         ; 3CEC DD 36 7F 00 DD 23
        ldi  [ix+127],127       ; 3CF2 DD 36 7F 7F DD 23
        LDI  [IX+127],127       ; 3CF8 DD 36 7F 7F DD 23
        ldi  [ix+127],255       ; 3CFE DD 36 7F FF DD 23
        LDI  [IX+127],255       ; 3D04 DD 36 7F FF DD 23
        ldi  [ix+-128],a        ; 3D0A DD 77 80 DD 23
        LDI  [IX+-128],A        ; 3D0F DD 77 80 DD 23
        ldi  [ix+-1],a          ; 3D14 DD 77 FF DD 23
        LDI  [IX+-1],A          ; 3D19 DD 77 FF DD 23
        ldi  [ix+0],a           ; 3D1E DD 77 00 DD 23
        LDI  [IX+0],A           ; 3D23 DD 77 00 DD 23
        ldi  [ix+127],a         ; 3D28 DD 77 7F DD 23
        LDI  [IX+127],A         ; 3D2D DD 77 7F DD 23
        ldi  [ix+-128],b        ; 3D32 DD 70 80 DD 23
        LDI  [IX+-128],B        ; 3D37 DD 70 80 DD 23
        ldi  [ix+-1],b          ; 3D3C DD 70 FF DD 23
        LDI  [IX+-1],B          ; 3D41 DD 70 FF DD 23
        ldi  [ix+0],b           ; 3D46 DD 70 00 DD 23
        LDI  [IX+0],B           ; 3D4B DD 70 00 DD 23
        ldi  [ix+127],b         ; 3D50 DD 70 7F DD 23
        LDI  [IX+127],B         ; 3D55 DD 70 7F DD 23
        ldi  [ix+-128],bc       ; 3D5A DD 71 80 DD 23 DD 70 80 DD 23
        LDI  [IX+-128],BC       ; 3D64 DD 71 80 DD 23 DD 70 80 DD 23
        ldi  [ix+-1],bc         ; 3D6E DD 71 FF DD 23 DD 70 FF DD 23
        LDI  [IX+-1],BC         ; 3D78 DD 71 FF DD 23 DD 70 FF DD 23
        ldi  [ix+0],bc          ; 3D82 DD 71 00 DD 23 DD 70 00 DD 23
        LDI  [IX+0],BC          ; 3D8C DD 71 00 DD 23 DD 70 00 DD 23
        ldi  [ix+126],bc        ; 3D96 DD 71 7E DD 23 DD 70 7E DD 23
        LDI  [IX+126],BC        ; 3DA0 DD 71 7E DD 23 DD 70 7E DD 23
        ldi  [ix+-128],c        ; 3DAA DD 71 80 DD 23
        LDI  [IX+-128],C        ; 3DAF DD 71 80 DD 23
        ldi  [ix+-1],c          ; 3DB4 DD 71 FF DD 23
        LDI  [IX+-1],C          ; 3DB9 DD 71 FF DD 23
        ldi  [ix+0],c           ; 3DBE DD 71 00 DD 23
        LDI  [IX+0],C           ; 3DC3 DD 71 00 DD 23
        ldi  [ix+127],c         ; 3DC8 DD 71 7F DD 23
        LDI  [IX+127],C         ; 3DCD DD 71 7F DD 23
        ldi  [ix+-128],d        ; 3DD2 DD 72 80 DD 23
        LDI  [IX+-128],D        ; 3DD7 DD 72 80 DD 23
        ldi  [ix+-1],d          ; 3DDC DD 72 FF DD 23
        LDI  [IX+-1],D          ; 3DE1 DD 72 FF DD 23
        ldi  [ix+0],d           ; 3DE6 DD 72 00 DD 23
        LDI  [IX+0],D           ; 3DEB DD 72 00 DD 23
        ldi  [ix+127],d         ; 3DF0 DD 72 7F DD 23
        LDI  [IX+127],D         ; 3DF5 DD 72 7F DD 23
        ldi  [ix+-128],de       ; 3DFA DD 73 80 DD 23 DD 72 80 DD 23
        LDI  [IX+-128],DE       ; 3E04 DD 73 80 DD 23 DD 72 80 DD 23
        ldi  [ix+-1],de         ; 3E0E DD 73 FF DD 23 DD 72 FF DD 23
        LDI  [IX+-1],DE         ; 3E18 DD 73 FF DD 23 DD 72 FF DD 23
        ldi  [ix+0],de          ; 3E22 DD 73 00 DD 23 DD 72 00 DD 23
        LDI  [IX+0],DE          ; 3E2C DD 73 00 DD 23 DD 72 00 DD 23
        ldi  [ix+126],de        ; 3E36 DD 73 7E DD 23 DD 72 7E DD 23
        LDI  [IX+126],DE        ; 3E40 DD 73 7E DD 23 DD 72 7E DD 23
        ldi  [ix+-128],e        ; 3E4A DD 73 80 DD 23
        LDI  [IX+-128],E        ; 3E4F DD 73 80 DD 23
        ldi  [ix+-1],e          ; 3E54 DD 73 FF DD 23
        LDI  [IX+-1],E          ; 3E59 DD 73 FF DD 23
        ldi  [ix+0],e           ; 3E5E DD 73 00 DD 23
        LDI  [IX+0],E           ; 3E63 DD 73 00 DD 23
        ldi  [ix+127],e         ; 3E68 DD 73 7F DD 23
        LDI  [IX+127],E         ; 3E6D DD 73 7F DD 23
        ldi  [ix+-128],h        ; 3E72 DD 74 80 DD 23
        LDI  [IX+-128],H        ; 3E77 DD 74 80 DD 23
        ldi  [ix+-1],h          ; 3E7C DD 74 FF DD 23
        LDI  [IX+-1],H          ; 3E81 DD 74 FF DD 23
        ldi  [ix+0],h           ; 3E86 DD 74 00 DD 23
        LDI  [IX+0],H           ; 3E8B DD 74 00 DD 23
        ldi  [ix+127],h         ; 3E90 DD 74 7F DD 23
        LDI  [IX+127],H         ; 3E95 DD 74 7F DD 23
        ldi  [ix+-128],hl       ; 3E9A DD 75 80 DD 23 DD 74 80 DD 23
        LDI  [IX+-128],HL       ; 3EA4 DD 75 80 DD 23 DD 74 80 DD 23
        ldi  [ix+-1],hl         ; 3EAE DD 75 FF DD 23 DD 74 FF DD 23
        LDI  [IX+-1],HL         ; 3EB8 DD 75 FF DD 23 DD 74 FF DD 23
        ldi  [ix+0],hl          ; 3EC2 DD 75 00 DD 23 DD 74 00 DD 23
        LDI  [IX+0],HL          ; 3ECC DD 75 00 DD 23 DD 74 00 DD 23
        ldi  [ix+126],hl        ; 3ED6 DD 75 7E DD 23 DD 74 7E DD 23
        LDI  [IX+126],HL        ; 3EE0 DD 75 7E DD 23 DD 74 7E DD 23
        ldi  [ix+-128],l        ; 3EEA DD 75 80 DD 23
        LDI  [IX+-128],L        ; 3EEF DD 75 80 DD 23
        ldi  [ix+-1],l          ; 3EF4 DD 75 FF DD 23
        LDI  [IX+-1],L          ; 3EF9 DD 75 FF DD 23
        ldi  [ix+0],l           ; 3EFE DD 75 00 DD 23
        LDI  [IX+0],L           ; 3F03 DD 75 00 DD 23
        ldi  [ix+127],l         ; 3F08 DD 75 7F DD 23
        LDI  [IX+127],L         ; 3F0D DD 75 7F DD 23
        ldi  [iy+-128],-128     ; 3F12 FD 36 80 80 FD 23
        LDI  [IY+-128],-128     ; 3F18 FD 36 80 80 FD 23
        ldi  [iy+-128],-1       ; 3F1E FD 36 80 FF FD 23
        LDI  [IY+-128],-1       ; 3F24 FD 36 80 FF FD 23
        ldi  [iy+-128],0        ; 3F2A FD 36 80 00 FD 23
        LDI  [IY+-128],0        ; 3F30 FD 36 80 00 FD 23
        ldi  [iy+-128],127      ; 3F36 FD 36 80 7F FD 23
        LDI  [IY+-128],127      ; 3F3C FD 36 80 7F FD 23
        ldi  [iy+-128],255      ; 3F42 FD 36 80 FF FD 23
        LDI  [IY+-128],255      ; 3F48 FD 36 80 FF FD 23
        ldi  [iy+-1],-128       ; 3F4E FD 36 FF 80 FD 23
        LDI  [IY+-1],-128       ; 3F54 FD 36 FF 80 FD 23
        ldi  [iy+-1],-1         ; 3F5A FD 36 FF FF FD 23
        LDI  [IY+-1],-1         ; 3F60 FD 36 FF FF FD 23
        ldi  [iy+-1],0          ; 3F66 FD 36 FF 00 FD 23
        LDI  [IY+-1],0          ; 3F6C FD 36 FF 00 FD 23
        ldi  [iy+-1],127        ; 3F72 FD 36 FF 7F FD 23
        LDI  [IY+-1],127        ; 3F78 FD 36 FF 7F FD 23
        ldi  [iy+-1],255        ; 3F7E FD 36 FF FF FD 23
        LDI  [IY+-1],255        ; 3F84 FD 36 FF FF FD 23
        ldi  [iy+0],-128        ; 3F8A FD 36 00 80 FD 23
        LDI  [IY+0],-128        ; 3F90 FD 36 00 80 FD 23
        ldi  [iy+0],-1          ; 3F96 FD 36 00 FF FD 23
        LDI  [IY+0],-1          ; 3F9C FD 36 00 FF FD 23
        ldi  [iy+0],0           ; 3FA2 FD 36 00 00 FD 23
        LDI  [IY+0],0           ; 3FA8 FD 36 00 00 FD 23
        ldi  [iy+0],127         ; 3FAE FD 36 00 7F FD 23
        LDI  [IY+0],127         ; 3FB4 FD 36 00 7F FD 23
        ldi  [iy+0],255         ; 3FBA FD 36 00 FF FD 23
        LDI  [IY+0],255         ; 3FC0 FD 36 00 FF FD 23
        ldi  [iy+127],-128      ; 3FC6 FD 36 7F 80 FD 23
        LDI  [IY+127],-128      ; 3FCC FD 36 7F 80 FD 23
        ldi  [iy+127],-1        ; 3FD2 FD 36 7F FF FD 23
        LDI  [IY+127],-1        ; 3FD8 FD 36 7F FF FD 23
        ldi  [iy+127],0         ; 3FDE FD 36 7F 00 FD 23
        LDI  [IY+127],0         ; 3FE4 FD 36 7F 00 FD 23
        ldi  [iy+127],127       ; 3FEA FD 36 7F 7F FD 23
        LDI  [IY+127],127       ; 3FF0 FD 36 7F 7F FD 23
        ldi  [iy+127],255       ; 3FF6 FD 36 7F FF FD 23
        LDI  [IY+127],255       ; 3FFC FD 36 7F FF FD 23
        ldi  [iy+-128],a        ; 4002 FD 77 80 FD 23
        LDI  [IY+-128],A        ; 4007 FD 77 80 FD 23
        ldi  [iy+-1],a          ; 400C FD 77 FF FD 23
        LDI  [IY+-1],A          ; 4011 FD 77 FF FD 23
        ldi  [iy+0],a           ; 4016 FD 77 00 FD 23
        LDI  [IY+0],A           ; 401B FD 77 00 FD 23
        ldi  [iy+127],a         ; 4020 FD 77 7F FD 23
        LDI  [IY+127],A         ; 4025 FD 77 7F FD 23
        ldi  [iy+-128],b        ; 402A FD 70 80 FD 23
        LDI  [IY+-128],B        ; 402F FD 70 80 FD 23
        ldi  [iy+-1],b          ; 4034 FD 70 FF FD 23
        LDI  [IY+-1],B          ; 4039 FD 70 FF FD 23
        ldi  [iy+0],b           ; 403E FD 70 00 FD 23
        LDI  [IY+0],B           ; 4043 FD 70 00 FD 23
        ldi  [iy+127],b         ; 4048 FD 70 7F FD 23
        LDI  [IY+127],B         ; 404D FD 70 7F FD 23
        ldi  [iy+-128],bc       ; 4052 FD 71 80 FD 23 FD 70 80 FD 23
        LDI  [IY+-128],BC       ; 405C FD 71 80 FD 23 FD 70 80 FD 23
        ldi  [iy+-1],bc         ; 4066 FD 71 FF FD 23 FD 70 FF FD 23
        LDI  [IY+-1],BC         ; 4070 FD 71 FF FD 23 FD 70 FF FD 23
        ldi  [iy+0],bc          ; 407A FD 71 00 FD 23 FD 70 00 FD 23
        LDI  [IY+0],BC          ; 4084 FD 71 00 FD 23 FD 70 00 FD 23
        ldi  [iy+126],bc        ; 408E FD 71 7E FD 23 FD 70 7E FD 23
        LDI  [IY+126],BC        ; 4098 FD 71 7E FD 23 FD 70 7E FD 23
        ldi  [iy+-128],c        ; 40A2 FD 71 80 FD 23
        LDI  [IY+-128],C        ; 40A7 FD 71 80 FD 23
        ldi  [iy+-1],c          ; 40AC FD 71 FF FD 23
        LDI  [IY+-1],C          ; 40B1 FD 71 FF FD 23
        ldi  [iy+0],c           ; 40B6 FD 71 00 FD 23
        LDI  [IY+0],C           ; 40BB FD 71 00 FD 23
        ldi  [iy+127],c         ; 40C0 FD 71 7F FD 23
        LDI  [IY+127],C         ; 40C5 FD 71 7F FD 23
        ldi  [iy+-128],d        ; 40CA FD 72 80 FD 23
        LDI  [IY+-128],D        ; 40CF FD 72 80 FD 23
        ldi  [iy+-1],d          ; 40D4 FD 72 FF FD 23
        LDI  [IY+-1],D          ; 40D9 FD 72 FF FD 23
        ldi  [iy+0],d           ; 40DE FD 72 00 FD 23
        LDI  [IY+0],D           ; 40E3 FD 72 00 FD 23
        ldi  [iy+127],d         ; 40E8 FD 72 7F FD 23
        LDI  [IY+127],D         ; 40ED FD 72 7F FD 23
        ldi  [iy+-128],de       ; 40F2 FD 73 80 FD 23 FD 72 80 FD 23
        LDI  [IY+-128],DE       ; 40FC FD 73 80 FD 23 FD 72 80 FD 23
        ldi  [iy+-1],de         ; 4106 FD 73 FF FD 23 FD 72 FF FD 23
        LDI  [IY+-1],DE         ; 4110 FD 73 FF FD 23 FD 72 FF FD 23
        ldi  [iy+0],de          ; 411A FD 73 00 FD 23 FD 72 00 FD 23
        LDI  [IY+0],DE          ; 4124 FD 73 00 FD 23 FD 72 00 FD 23
        ldi  [iy+126],de        ; 412E FD 73 7E FD 23 FD 72 7E FD 23
        LDI  [IY+126],DE        ; 4138 FD 73 7E FD 23 FD 72 7E FD 23
        ldi  [iy+-128],e        ; 4142 FD 73 80 FD 23
        LDI  [IY+-128],E        ; 4147 FD 73 80 FD 23
        ldi  [iy+-1],e          ; 414C FD 73 FF FD 23
        LDI  [IY+-1],E          ; 4151 FD 73 FF FD 23
        ldi  [iy+0],e           ; 4156 FD 73 00 FD 23
        LDI  [IY+0],E           ; 415B FD 73 00 FD 23
        ldi  [iy+127],e         ; 4160 FD 73 7F FD 23
        LDI  [IY+127],E         ; 4165 FD 73 7F FD 23
        ldi  [iy+-128],h        ; 416A FD 74 80 FD 23
        LDI  [IY+-128],H        ; 416F FD 74 80 FD 23
        ldi  [iy+-1],h          ; 4174 FD 74 FF FD 23
        LDI  [IY+-1],H          ; 4179 FD 74 FF FD 23
        ldi  [iy+0],h           ; 417E FD 74 00 FD 23
        LDI  [IY+0],H           ; 4183 FD 74 00 FD 23
        ldi  [iy+127],h         ; 4188 FD 74 7F FD 23
        LDI  [IY+127],H         ; 418D FD 74 7F FD 23
        ldi  [iy+-128],hl       ; 4192 FD 75 80 FD 23 FD 74 80 FD 23
        LDI  [IY+-128],HL       ; 419C FD 75 80 FD 23 FD 74 80 FD 23
        ldi  [iy+-1],hl         ; 41A6 FD 75 FF FD 23 FD 74 FF FD 23
        LDI  [IY+-1],HL         ; 41B0 FD 75 FF FD 23 FD 74 FF FD 23
        ldi  [iy+0],hl          ; 41BA FD 75 00 FD 23 FD 74 00 FD 23
        LDI  [IY+0],HL          ; 41C4 FD 75 00 FD 23 FD 74 00 FD 23
        ldi  [iy+126],hl        ; 41CE FD 75 7E FD 23 FD 74 7E FD 23
        LDI  [IY+126],HL        ; 41D8 FD 75 7E FD 23 FD 74 7E FD 23
        ldi  [iy+-128],l        ; 41E2 FD 75 80 FD 23
        LDI  [IY+-128],L        ; 41E7 FD 75 80 FD 23
        ldi  [iy+-1],l          ; 41EC FD 75 FF FD 23
        LDI  [IY+-1],L          ; 41F1 FD 75 FF FD 23
        ldi  [iy+0],l           ; 41F6 FD 75 00 FD 23
        LDI  [IY+0],L           ; 41FB FD 75 00 FD 23
        ldi  [iy+127],l         ; 4200 FD 75 7F FD 23
        LDI  [IY+127],L         ; 4205 FD 75 7F FD 23
        ldi  a,(bc)             ; 420A 0A 03
        LDI  A,(BC)             ; 420C 0A 03
        ldi  a,(de)             ; 420E 1A 13
        LDI  A,(DE)             ; 4210 1A 13
        ldi  a,(hl)             ; 4212 7E 23
        LDI  A,(HL)             ; 4214 7E 23
        ldi  a,(ix+-128)        ; 4216 DD 7E 80 DD 23
        LDI  A,(IX+-128)        ; 421B DD 7E 80 DD 23
        ldi  a,(ix+-1)          ; 4220 DD 7E FF DD 23
        LDI  A,(IX+-1)          ; 4225 DD 7E FF DD 23
        ldi  a,(ix+0)           ; 422A DD 7E 00 DD 23
        LDI  A,(IX+0)           ; 422F DD 7E 00 DD 23
        ldi  a,(ix+127)         ; 4234 DD 7E 7F DD 23
        LDI  A,(IX+127)         ; 4239 DD 7E 7F DD 23
        ldi  a,(iy+-128)        ; 423E FD 7E 80 FD 23
        LDI  A,(IY+-128)        ; 4243 FD 7E 80 FD 23
        ldi  a,(iy+-1)          ; 4248 FD 7E FF FD 23
        LDI  A,(IY+-1)          ; 424D FD 7E FF FD 23
        ldi  a,(iy+0)           ; 4252 FD 7E 00 FD 23
        LDI  A,(IY+0)           ; 4257 FD 7E 00 FD 23
        ldi  a,(iy+127)         ; 425C FD 7E 7F FD 23
        LDI  A,(IY+127)         ; 4261 FD 7E 7F FD 23
        ldi  a,[bc]             ; 4266 0A 03
        LDI  A,[BC]             ; 4268 0A 03
        ldi  a,[de]             ; 426A 1A 13
        LDI  A,[DE]             ; 426C 1A 13
        ldi  a,[hl]             ; 426E 7E 23
        LDI  A,[HL]             ; 4270 7E 23
        ldi  a,[ix+-128]        ; 4272 DD 7E 80 DD 23
        LDI  A,[IX+-128]        ; 4277 DD 7E 80 DD 23
        ldi  a,[ix+-1]          ; 427C DD 7E FF DD 23
        LDI  A,[IX+-1]          ; 4281 DD 7E FF DD 23
        ldi  a,[ix+0]           ; 4286 DD 7E 00 DD 23
        LDI  A,[IX+0]           ; 428B DD 7E 00 DD 23
        ldi  a,[ix+127]         ; 4290 DD 7E 7F DD 23
        LDI  A,[IX+127]         ; 4295 DD 7E 7F DD 23
        ldi  a,[iy+-128]        ; 429A FD 7E 80 FD 23
        LDI  A,[IY+-128]        ; 429F FD 7E 80 FD 23
        ldi  a,[iy+-1]          ; 42A4 FD 7E FF FD 23
        LDI  A,[IY+-1]          ; 42A9 FD 7E FF FD 23
        ldi  a,[iy+0]           ; 42AE FD 7E 00 FD 23
        LDI  A,[IY+0]           ; 42B3 FD 7E 00 FD 23
        ldi  a,[iy+127]         ; 42B8 FD 7E 7F FD 23
        LDI  A,[IY+127]         ; 42BD FD 7E 7F FD 23
        ldi  b,(hl)             ; 42C2 46 23
        LDI  B,(HL)             ; 42C4 46 23
        ldi  b,(ix+-128)        ; 42C6 DD 46 80 DD 23
        LDI  B,(IX+-128)        ; 42CB DD 46 80 DD 23
        ldi  b,(ix+-1)          ; 42D0 DD 46 FF DD 23
        LDI  B,(IX+-1)          ; 42D5 DD 46 FF DD 23
        ldi  b,(ix+0)           ; 42DA DD 46 00 DD 23
        LDI  B,(IX+0)           ; 42DF DD 46 00 DD 23
        ldi  b,(ix+127)         ; 42E4 DD 46 7F DD 23
        LDI  B,(IX+127)         ; 42E9 DD 46 7F DD 23
        ldi  b,(iy+-128)        ; 42EE FD 46 80 FD 23
        LDI  B,(IY+-128)        ; 42F3 FD 46 80 FD 23
        ldi  b,(iy+-1)          ; 42F8 FD 46 FF FD 23
        LDI  B,(IY+-1)          ; 42FD FD 46 FF FD 23
        ldi  b,(iy+0)           ; 4302 FD 46 00 FD 23
        LDI  B,(IY+0)           ; 4307 FD 46 00 FD 23
        ldi  b,(iy+127)         ; 430C FD 46 7F FD 23
        LDI  B,(IY+127)         ; 4311 FD 46 7F FD 23
        ldi  b,[hl]             ; 4316 46 23
        LDI  B,[HL]             ; 4318 46 23
        ldi  b,[ix+-128]        ; 431A DD 46 80 DD 23
        LDI  B,[IX+-128]        ; 431F DD 46 80 DD 23
        ldi  b,[ix+-1]          ; 4324 DD 46 FF DD 23
        LDI  B,[IX+-1]          ; 4329 DD 46 FF DD 23
        ldi  b,[ix+0]           ; 432E DD 46 00 DD 23
        LDI  B,[IX+0]           ; 4333 DD 46 00 DD 23
        ldi  b,[ix+127]         ; 4338 DD 46 7F DD 23
        LDI  B,[IX+127]         ; 433D DD 46 7F DD 23
        ldi  b,[iy+-128]        ; 4342 FD 46 80 FD 23
        LDI  B,[IY+-128]        ; 4347 FD 46 80 FD 23
        ldi  b,[iy+-1]          ; 434C FD 46 FF FD 23
        LDI  B,[IY+-1]          ; 4351 FD 46 FF FD 23
        ldi  b,[iy+0]           ; 4356 FD 46 00 FD 23
        LDI  B,[IY+0]           ; 435B FD 46 00 FD 23
        ldi  b,[iy+127]         ; 4360 FD 46 7F FD 23
        LDI  B,[IY+127]         ; 4365 FD 46 7F FD 23
        ldi  bc,(hl)            ; 436A 4E 23 46 23
        LDI  BC,(HL)            ; 436E 4E 23 46 23
        ldi  bc,(ix+-128)       ; 4372 DD 4E 80 DD 23 DD 46 80 DD 23
        LDI  BC,(IX+-128)       ; 437C DD 4E 80 DD 23 DD 46 80 DD 23
        ldi  bc,(ix+-1)         ; 4386 DD 4E FF DD 23 DD 46 FF DD 23
        LDI  BC,(IX+-1)         ; 4390 DD 4E FF DD 23 DD 46 FF DD 23
        ldi  bc,(ix+0)          ; 439A DD 4E 00 DD 23 DD 46 00 DD 23
        LDI  BC,(IX+0)          ; 43A4 DD 4E 00 DD 23 DD 46 00 DD 23
        ldi  bc,(ix+126)        ; 43AE DD 4E 7E DD 23 DD 46 7E DD 23
        LDI  BC,(IX+126)        ; 43B8 DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,(iy+-128)       ; 43C2 FD 4E 80 FD 23 FD 46 80 FD 23
        LDI  BC,(IY+-128)       ; 43CC FD 4E 80 FD 23 FD 46 80 FD 23
        ldi  bc,(iy+-1)         ; 43D6 FD 4E FF FD 23 FD 46 FF FD 23
        LDI  BC,(IY+-1)         ; 43E0 FD 4E FF FD 23 FD 46 FF FD 23
        ldi  bc,(iy+0)          ; 43EA FD 4E 00 FD 23 FD 46 00 FD 23
        LDI  BC,(IY+0)          ; 43F4 FD 4E 00 FD 23 FD 46 00 FD 23
        ldi  bc,(iy+126)        ; 43FE FD 4E 7E FD 23 FD 46 7E FD 23
        LDI  BC,(IY+126)        ; 4408 FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  bc,[hl]            ; 4412 4E 23 46 23
        LDI  BC,[HL]            ; 4416 4E 23 46 23
        ldi  bc,[ix+-128]       ; 441A DD 4E 80 DD 23 DD 46 80 DD 23
        LDI  BC,[IX+-128]       ; 4424 DD 4E 80 DD 23 DD 46 80 DD 23
        ldi  bc,[ix+-1]         ; 442E DD 4E FF DD 23 DD 46 FF DD 23
        LDI  BC,[IX+-1]         ; 4438 DD 4E FF DD 23 DD 46 FF DD 23
        ldi  bc,[ix+0]          ; 4442 DD 4E 00 DD 23 DD 46 00 DD 23
        LDI  BC,[IX+0]          ; 444C DD 4E 00 DD 23 DD 46 00 DD 23
        ldi  bc,[ix+126]        ; 4456 DD 4E 7E DD 23 DD 46 7E DD 23
        LDI  BC,[IX+126]        ; 4460 DD 4E 7E DD 23 DD 46 7E DD 23
        ldi  bc,[iy+-128]       ; 446A FD 4E 80 FD 23 FD 46 80 FD 23
        LDI  BC,[IY+-128]       ; 4474 FD 4E 80 FD 23 FD 46 80 FD 23
        ldi  bc,[iy+-1]         ; 447E FD 4E FF FD 23 FD 46 FF FD 23
        LDI  BC,[IY+-1]         ; 4488 FD 4E FF FD 23 FD 46 FF FD 23
        ldi  bc,[iy+0]          ; 4492 FD 4E 00 FD 23 FD 46 00 FD 23
        LDI  BC,[IY+0]          ; 449C FD 4E 00 FD 23 FD 46 00 FD 23
        ldi  bc,[iy+126]        ; 44A6 FD 4E 7E FD 23 FD 46 7E FD 23
        LDI  BC,[IY+126]        ; 44B0 FD 4E 7E FD 23 FD 46 7E FD 23
        ldi  c,(hl)             ; 44BA 4E 23
        LDI  C,(HL)             ; 44BC 4E 23
        ldi  c,(ix+-128)        ; 44BE DD 4E 80 DD 23
        LDI  C,(IX+-128)        ; 44C3 DD 4E 80 DD 23
        ldi  c,(ix+-1)          ; 44C8 DD 4E FF DD 23
        LDI  C,(IX+-1)          ; 44CD DD 4E FF DD 23
        ldi  c,(ix+0)           ; 44D2 DD 4E 00 DD 23
        LDI  C,(IX+0)           ; 44D7 DD 4E 00 DD 23
        ldi  c,(ix+127)         ; 44DC DD 4E 7F DD 23
        LDI  C,(IX+127)         ; 44E1 DD 4E 7F DD 23
        ldi  c,(iy+-128)        ; 44E6 FD 4E 80 FD 23
        LDI  C,(IY+-128)        ; 44EB FD 4E 80 FD 23
        ldi  c,(iy+-1)          ; 44F0 FD 4E FF FD 23
        LDI  C,(IY+-1)          ; 44F5 FD 4E FF FD 23
        ldi  c,(iy+0)           ; 44FA FD 4E 00 FD 23
        LDI  C,(IY+0)           ; 44FF FD 4E 00 FD 23
        ldi  c,(iy+127)         ; 4504 FD 4E 7F FD 23
        LDI  C,(IY+127)         ; 4509 FD 4E 7F FD 23
        ldi  c,[hl]             ; 450E 4E 23
        LDI  C,[HL]             ; 4510 4E 23
        ldi  c,[ix+-128]        ; 4512 DD 4E 80 DD 23
        LDI  C,[IX+-128]        ; 4517 DD 4E 80 DD 23
        ldi  c,[ix+-1]          ; 451C DD 4E FF DD 23
        LDI  C,[IX+-1]          ; 4521 DD 4E FF DD 23
        ldi  c,[ix+0]           ; 4526 DD 4E 00 DD 23
        LDI  C,[IX+0]           ; 452B DD 4E 00 DD 23
        ldi  c,[ix+127]         ; 4530 DD 4E 7F DD 23
        LDI  C,[IX+127]         ; 4535 DD 4E 7F DD 23
        ldi  c,[iy+-128]        ; 453A FD 4E 80 FD 23
        LDI  C,[IY+-128]        ; 453F FD 4E 80 FD 23
        ldi  c,[iy+-1]          ; 4544 FD 4E FF FD 23
        LDI  C,[IY+-1]          ; 4549 FD 4E FF FD 23
        ldi  c,[iy+0]           ; 454E FD 4E 00 FD 23
        LDI  C,[IY+0]           ; 4553 FD 4E 00 FD 23
        ldi  c,[iy+127]         ; 4558 FD 4E 7F FD 23
        LDI  C,[IY+127]         ; 455D FD 4E 7F FD 23
        ldi  d,(hl)             ; 4562 56 23
        LDI  D,(HL)             ; 4564 56 23
        ldi  d,(ix+-128)        ; 4566 DD 56 80 DD 23
        LDI  D,(IX+-128)        ; 456B DD 56 80 DD 23
        ldi  d,(ix+-1)          ; 4570 DD 56 FF DD 23
        LDI  D,(IX+-1)          ; 4575 DD 56 FF DD 23
        ldi  d,(ix+0)           ; 457A DD 56 00 DD 23
        LDI  D,(IX+0)           ; 457F DD 56 00 DD 23
        ldi  d,(ix+127)         ; 4584 DD 56 7F DD 23
        LDI  D,(IX+127)         ; 4589 DD 56 7F DD 23
        ldi  d,(iy+-128)        ; 458E FD 56 80 FD 23
        LDI  D,(IY+-128)        ; 4593 FD 56 80 FD 23
        ldi  d,(iy+-1)          ; 4598 FD 56 FF FD 23
        LDI  D,(IY+-1)          ; 459D FD 56 FF FD 23
        ldi  d,(iy+0)           ; 45A2 FD 56 00 FD 23
        LDI  D,(IY+0)           ; 45A7 FD 56 00 FD 23
        ldi  d,(iy+127)         ; 45AC FD 56 7F FD 23
        LDI  D,(IY+127)         ; 45B1 FD 56 7F FD 23
        ldi  d,[hl]             ; 45B6 56 23
        LDI  D,[HL]             ; 45B8 56 23
        ldi  d,[ix+-128]        ; 45BA DD 56 80 DD 23
        LDI  D,[IX+-128]        ; 45BF DD 56 80 DD 23
        ldi  d,[ix+-1]          ; 45C4 DD 56 FF DD 23
        LDI  D,[IX+-1]          ; 45C9 DD 56 FF DD 23
        ldi  d,[ix+0]           ; 45CE DD 56 00 DD 23
        LDI  D,[IX+0]           ; 45D3 DD 56 00 DD 23
        ldi  d,[ix+127]         ; 45D8 DD 56 7F DD 23
        LDI  D,[IX+127]         ; 45DD DD 56 7F DD 23
        ldi  d,[iy+-128]        ; 45E2 FD 56 80 FD 23
        LDI  D,[IY+-128]        ; 45E7 FD 56 80 FD 23
        ldi  d,[iy+-1]          ; 45EC FD 56 FF FD 23
        LDI  D,[IY+-1]          ; 45F1 FD 56 FF FD 23
        ldi  d,[iy+0]           ; 45F6 FD 56 00 FD 23
        LDI  D,[IY+0]           ; 45FB FD 56 00 FD 23
        ldi  d,[iy+127]         ; 4600 FD 56 7F FD 23
        LDI  D,[IY+127]         ; 4605 FD 56 7F FD 23
        ldi  de,(hl)            ; 460A 5E 23 56 23
        LDI  DE,(HL)            ; 460E 5E 23 56 23
        ldi  de,(ix+-128)       ; 4612 DD 5E 80 DD 23 DD 56 80 DD 23
        LDI  DE,(IX+-128)       ; 461C DD 5E 80 DD 23 DD 56 80 DD 23
        ldi  de,(ix+-1)         ; 4626 DD 5E FF DD 23 DD 56 FF DD 23
        LDI  DE,(IX+-1)         ; 4630 DD 5E FF DD 23 DD 56 FF DD 23
        ldi  de,(ix+0)          ; 463A DD 5E 00 DD 23 DD 56 00 DD 23
        LDI  DE,(IX+0)          ; 4644 DD 5E 00 DD 23 DD 56 00 DD 23
        ldi  de,(ix+126)        ; 464E DD 5E 7E DD 23 DD 56 7E DD 23
        LDI  DE,(IX+126)        ; 4658 DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,(iy+-128)       ; 4662 FD 5E 80 FD 23 FD 56 80 FD 23
        LDI  DE,(IY+-128)       ; 466C FD 5E 80 FD 23 FD 56 80 FD 23
        ldi  de,(iy+-1)         ; 4676 FD 5E FF FD 23 FD 56 FF FD 23
        LDI  DE,(IY+-1)         ; 4680 FD 5E FF FD 23 FD 56 FF FD 23
        ldi  de,(iy+0)          ; 468A FD 5E 00 FD 23 FD 56 00 FD 23
        LDI  DE,(IY+0)          ; 4694 FD 5E 00 FD 23 FD 56 00 FD 23
        ldi  de,(iy+126)        ; 469E FD 5E 7E FD 23 FD 56 7E FD 23
        LDI  DE,(IY+126)        ; 46A8 FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  de,[hl]            ; 46B2 5E 23 56 23
        LDI  DE,[HL]            ; 46B6 5E 23 56 23
        ldi  de,[ix+-128]       ; 46BA DD 5E 80 DD 23 DD 56 80 DD 23
        LDI  DE,[IX+-128]       ; 46C4 DD 5E 80 DD 23 DD 56 80 DD 23
        ldi  de,[ix+-1]         ; 46CE DD 5E FF DD 23 DD 56 FF DD 23
        LDI  DE,[IX+-1]         ; 46D8 DD 5E FF DD 23 DD 56 FF DD 23
        ldi  de,[ix+0]          ; 46E2 DD 5E 00 DD 23 DD 56 00 DD 23
        LDI  DE,[IX+0]          ; 46EC DD 5E 00 DD 23 DD 56 00 DD 23
        ldi  de,[ix+126]        ; 46F6 DD 5E 7E DD 23 DD 56 7E DD 23
        LDI  DE,[IX+126]        ; 4700 DD 5E 7E DD 23 DD 56 7E DD 23
        ldi  de,[iy+-128]       ; 470A FD 5E 80 FD 23 FD 56 80 FD 23
        LDI  DE,[IY+-128]       ; 4714 FD 5E 80 FD 23 FD 56 80 FD 23
        ldi  de,[iy+-1]         ; 471E FD 5E FF FD 23 FD 56 FF FD 23
        LDI  DE,[IY+-1]         ; 4728 FD 5E FF FD 23 FD 56 FF FD 23
        ldi  de,[iy+0]          ; 4732 FD 5E 00 FD 23 FD 56 00 FD 23
        LDI  DE,[IY+0]          ; 473C FD 5E 00 FD 23 FD 56 00 FD 23
        ldi  de,[iy+126]        ; 4746 FD 5E 7E FD 23 FD 56 7E FD 23
        LDI  DE,[IY+126]        ; 4750 FD 5E 7E FD 23 FD 56 7E FD 23
        ldi  e,(hl)             ; 475A 5E 23
        LDI  E,(HL)             ; 475C 5E 23
        ldi  e,(ix+-128)        ; 475E DD 5E 80 DD 23
        LDI  E,(IX+-128)        ; 4763 DD 5E 80 DD 23
        ldi  e,(ix+-1)          ; 4768 DD 5E FF DD 23
        LDI  E,(IX+-1)          ; 476D DD 5E FF DD 23
        ldi  e,(ix+0)           ; 4772 DD 5E 00 DD 23
        LDI  E,(IX+0)           ; 4777 DD 5E 00 DD 23
        ldi  e,(ix+127)         ; 477C DD 5E 7F DD 23
        LDI  E,(IX+127)         ; 4781 DD 5E 7F DD 23
        ldi  e,(iy+-128)        ; 4786 FD 5E 80 FD 23
        LDI  E,(IY+-128)        ; 478B FD 5E 80 FD 23
        ldi  e,(iy+-1)          ; 4790 FD 5E FF FD 23
        LDI  E,(IY+-1)          ; 4795 FD 5E FF FD 23
        ldi  e,(iy+0)           ; 479A FD 5E 00 FD 23
        LDI  E,(IY+0)           ; 479F FD 5E 00 FD 23
        ldi  e,(iy+127)         ; 47A4 FD 5E 7F FD 23
        LDI  E,(IY+127)         ; 47A9 FD 5E 7F FD 23
        ldi  e,[hl]             ; 47AE 5E 23
        LDI  E,[HL]             ; 47B0 5E 23
        ldi  e,[ix+-128]        ; 47B2 DD 5E 80 DD 23
        LDI  E,[IX+-128]        ; 47B7 DD 5E 80 DD 23
        ldi  e,[ix+-1]          ; 47BC DD 5E FF DD 23
        LDI  E,[IX+-1]          ; 47C1 DD 5E FF DD 23
        ldi  e,[ix+0]           ; 47C6 DD 5E 00 DD 23
        LDI  E,[IX+0]           ; 47CB DD 5E 00 DD 23
        ldi  e,[ix+127]         ; 47D0 DD 5E 7F DD 23
        LDI  E,[IX+127]         ; 47D5 DD 5E 7F DD 23
        ldi  e,[iy+-128]        ; 47DA FD 5E 80 FD 23
        LDI  E,[IY+-128]        ; 47DF FD 5E 80 FD 23
        ldi  e,[iy+-1]          ; 47E4 FD 5E FF FD 23
        LDI  E,[IY+-1]          ; 47E9 FD 5E FF FD 23
        ldi  e,[iy+0]           ; 47EE FD 5E 00 FD 23
        LDI  E,[IY+0]           ; 47F3 FD 5E 00 FD 23
        ldi  e,[iy+127]         ; 47F8 FD 5E 7F FD 23
        LDI  E,[IY+127]         ; 47FD FD 5E 7F FD 23
        ldi  h,(hl)             ; 4802 66 23
        LDI  H,(HL)             ; 4804 66 23
        ldi  h,(ix+-128)        ; 4806 DD 66 80 DD 23
        LDI  H,(IX+-128)        ; 480B DD 66 80 DD 23
        ldi  h,(ix+-1)          ; 4810 DD 66 FF DD 23
        LDI  H,(IX+-1)          ; 4815 DD 66 FF DD 23
        ldi  h,(ix+0)           ; 481A DD 66 00 DD 23
        LDI  H,(IX+0)           ; 481F DD 66 00 DD 23
        ldi  h,(ix+127)         ; 4824 DD 66 7F DD 23
        LDI  H,(IX+127)         ; 4829 DD 66 7F DD 23
        ldi  h,(iy+-128)        ; 482E FD 66 80 FD 23
        LDI  H,(IY+-128)        ; 4833 FD 66 80 FD 23
        ldi  h,(iy+-1)          ; 4838 FD 66 FF FD 23
        LDI  H,(IY+-1)          ; 483D FD 66 FF FD 23
        ldi  h,(iy+0)           ; 4842 FD 66 00 FD 23
        LDI  H,(IY+0)           ; 4847 FD 66 00 FD 23
        ldi  h,(iy+127)         ; 484C FD 66 7F FD 23
        LDI  H,(IY+127)         ; 4851 FD 66 7F FD 23
        ldi  h,[hl]             ; 4856 66 23
        LDI  H,[HL]             ; 4858 66 23
        ldi  h,[ix+-128]        ; 485A DD 66 80 DD 23
        LDI  H,[IX+-128]        ; 485F DD 66 80 DD 23
        ldi  h,[ix+-1]          ; 4864 DD 66 FF DD 23
        LDI  H,[IX+-1]          ; 4869 DD 66 FF DD 23
        ldi  h,[ix+0]           ; 486E DD 66 00 DD 23
        LDI  H,[IX+0]           ; 4873 DD 66 00 DD 23
        ldi  h,[ix+127]         ; 4878 DD 66 7F DD 23
        LDI  H,[IX+127]         ; 487D DD 66 7F DD 23
        ldi  h,[iy+-128]        ; 4882 FD 66 80 FD 23
        LDI  H,[IY+-128]        ; 4887 FD 66 80 FD 23
        ldi  h,[iy+-1]          ; 488C FD 66 FF FD 23
        LDI  H,[IY+-1]          ; 4891 FD 66 FF FD 23
        ldi  h,[iy+0]           ; 4896 FD 66 00 FD 23
        LDI  H,[IY+0]           ; 489B FD 66 00 FD 23
        ldi  h,[iy+127]         ; 48A0 FD 66 7F FD 23
        LDI  H,[IY+127]         ; 48A5 FD 66 7F FD 23
        ldi  hl,(ix+-128)       ; 48AA DD 6E 80 DD 23 DD 66 80 DD 23
        LDI  HL,(IX+-128)       ; 48B4 DD 6E 80 DD 23 DD 66 80 DD 23
        ldi  hl,(ix+-1)         ; 48BE DD 6E FF DD 23 DD 66 FF DD 23
        LDI  HL,(IX+-1)         ; 48C8 DD 6E FF DD 23 DD 66 FF DD 23
        ldi  hl,(ix+0)          ; 48D2 DD 6E 00 DD 23 DD 66 00 DD 23
        LDI  HL,(IX+0)          ; 48DC DD 6E 00 DD 23 DD 66 00 DD 23
        ldi  hl,(ix+126)        ; 48E6 DD 6E 7E DD 23 DD 66 7E DD 23
        LDI  HL,(IX+126)        ; 48F0 DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,(iy+-128)       ; 48FA FD 6E 80 FD 23 FD 66 80 FD 23
        LDI  HL,(IY+-128)       ; 4904 FD 6E 80 FD 23 FD 66 80 FD 23
        ldi  hl,(iy+-1)         ; 490E FD 6E FF FD 23 FD 66 FF FD 23
        LDI  HL,(IY+-1)         ; 4918 FD 6E FF FD 23 FD 66 FF FD 23
        ldi  hl,(iy+0)          ; 4922 FD 6E 00 FD 23 FD 66 00 FD 23
        LDI  HL,(IY+0)          ; 492C FD 6E 00 FD 23 FD 66 00 FD 23
        ldi  hl,(iy+126)        ; 4936 FD 6E 7E FD 23 FD 66 7E FD 23
        LDI  HL,(IY+126)        ; 4940 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  hl,[ix+-128]       ; 494A DD 6E 80 DD 23 DD 66 80 DD 23
        LDI  HL,[IX+-128]       ; 4954 DD 6E 80 DD 23 DD 66 80 DD 23
        ldi  hl,[ix+-1]         ; 495E DD 6E FF DD 23 DD 66 FF DD 23
        LDI  HL,[IX+-1]         ; 4968 DD 6E FF DD 23 DD 66 FF DD 23
        ldi  hl,[ix+0]          ; 4972 DD 6E 00 DD 23 DD 66 00 DD 23
        LDI  HL,[IX+0]          ; 497C DD 6E 00 DD 23 DD 66 00 DD 23
        ldi  hl,[ix+126]        ; 4986 DD 6E 7E DD 23 DD 66 7E DD 23
        LDI  HL,[IX+126]        ; 4990 DD 6E 7E DD 23 DD 66 7E DD 23
        ldi  hl,[iy+-128]       ; 499A FD 6E 80 FD 23 FD 66 80 FD 23
        LDI  HL,[IY+-128]       ; 49A4 FD 6E 80 FD 23 FD 66 80 FD 23
        ldi  hl,[iy+-1]         ; 49AE FD 6E FF FD 23 FD 66 FF FD 23
        LDI  HL,[IY+-1]         ; 49B8 FD 6E FF FD 23 FD 66 FF FD 23
        ldi  hl,[iy+0]          ; 49C2 FD 6E 00 FD 23 FD 66 00 FD 23
        LDI  HL,[IY+0]          ; 49CC FD 6E 00 FD 23 FD 66 00 FD 23
        ldi  hl,[iy+126]        ; 49D6 FD 6E 7E FD 23 FD 66 7E FD 23
        LDI  HL,[IY+126]        ; 49E0 FD 6E 7E FD 23 FD 66 7E FD 23
        ldi  l,(hl)             ; 49EA 6E 23
        LDI  L,(HL)             ; 49EC 6E 23
        ldi  l,(ix+-128)        ; 49EE DD 6E 80 DD 23
        LDI  L,(IX+-128)        ; 49F3 DD 6E 80 DD 23
        ldi  l,(ix+-1)          ; 49F8 DD 6E FF DD 23
        LDI  L,(IX+-1)          ; 49FD DD 6E FF DD 23
        ldi  l,(ix+0)           ; 4A02 DD 6E 00 DD 23
        LDI  L,(IX+0)           ; 4A07 DD 6E 00 DD 23
        ldi  l,(ix+127)         ; 4A0C DD 6E 7F DD 23
        LDI  L,(IX+127)         ; 4A11 DD 6E 7F DD 23
        ldi  l,(iy+-128)        ; 4A16 FD 6E 80 FD 23
        LDI  L,(IY+-128)        ; 4A1B FD 6E 80 FD 23
        ldi  l,(iy+-1)          ; 4A20 FD 6E FF FD 23
        LDI  L,(IY+-1)          ; 4A25 FD 6E FF FD 23
        ldi  l,(iy+0)           ; 4A2A FD 6E 00 FD 23
        LDI  L,(IY+0)           ; 4A2F FD 6E 00 FD 23
        ldi  l,(iy+127)         ; 4A34 FD 6E 7F FD 23
        LDI  L,(IY+127)         ; 4A39 FD 6E 7F FD 23
        ldi  l,[hl]             ; 4A3E 6E 23
        LDI  L,[HL]             ; 4A40 6E 23
        ldi  l,[ix+-128]        ; 4A42 DD 6E 80 DD 23
        LDI  L,[IX+-128]        ; 4A47 DD 6E 80 DD 23
        ldi  l,[ix+-1]          ; 4A4C DD 6E FF DD 23
        LDI  L,[IX+-1]          ; 4A51 DD 6E FF DD 23
        ldi  l,[ix+0]           ; 4A56 DD 6E 00 DD 23
        LDI  L,[IX+0]           ; 4A5B DD 6E 00 DD 23
        ldi  l,[ix+127]         ; 4A60 DD 6E 7F DD 23
        LDI  L,[IX+127]         ; 4A65 DD 6E 7F DD 23
        ldi  l,[iy+-128]        ; 4A6A FD 6E 80 FD 23
        LDI  L,[IY+-128]        ; 4A6F FD 6E 80 FD 23
        ldi  l,[iy+-1]          ; 4A74 FD 6E FF FD 23
        LDI  L,[IY+-1]          ; 4A79 FD 6E FF FD 23
        ldi  l,[iy+0]           ; 4A7E FD 6E 00 FD 23
        LDI  L,[IY+0]           ; 4A83 FD 6E 00 FD 23
        ldi  l,[iy+127]         ; 4A88 FD 6E 7F FD 23
        LDI  L,[IY+127]         ; 4A8D FD 6E 7F FD 23
        ldir                    ; 4A92 ED B0
        LDIR                    ; 4A94 ED B0
        neg                     ; 4A96 ED 44
        NEG                     ; 4A98 ED 44
        nop                     ; 4A9A 00
        NOP                     ; 4A9B 00
        or   (hl)               ; 4A9C B6
        OR   (HL)               ; 4A9D B6
        or   (ix+-128)          ; 4A9E DD B6 80
        OR   (IX+-128)          ; 4AA1 DD B6 80
        or   (ix+-1)            ; 4AA4 DD B6 FF
        OR   (IX+-1)            ; 4AA7 DD B6 FF
        or   (ix+0)             ; 4AAA DD B6 00
        OR   (IX+0)             ; 4AAD DD B6 00
        or   (ix+127)           ; 4AB0 DD B6 7F
        OR   (IX+127)           ; 4AB3 DD B6 7F
        or   (iy+-128)          ; 4AB6 FD B6 80
        OR   (IY+-128)          ; 4AB9 FD B6 80
        or   (iy+-1)            ; 4ABC FD B6 FF
        OR   (IY+-1)            ; 4ABF FD B6 FF
        or   (iy+0)             ; 4AC2 FD B6 00
        OR   (IY+0)             ; 4AC5 FD B6 00
        or   (iy+127)           ; 4AC8 FD B6 7F
        OR   (IY+127)           ; 4ACB FD B6 7F
        or   -128               ; 4ACE F6 80
        OR   -128               ; 4AD0 F6 80
        or   -1                 ; 4AD2 F6 FF
        OR   -1                 ; 4AD4 F6 FF
        or   0                  ; 4AD6 F6 00
        OR   0                  ; 4AD8 F6 00
        or   127                ; 4ADA F6 7F
        OR   127                ; 4ADC F6 7F
        or   255                ; 4ADE F6 FF
        OR   255                ; 4AE0 F6 FF
        or   [hl]               ; 4AE2 B6
        OR   [HL]               ; 4AE3 B6
        or   [ix+-128]          ; 4AE4 DD B6 80
        OR   [IX+-128]          ; 4AE7 DD B6 80
        or   [ix+-1]            ; 4AEA DD B6 FF
        OR   [IX+-1]            ; 4AED DD B6 FF
        or   [ix+0]             ; 4AF0 DD B6 00
        OR   [IX+0]             ; 4AF3 DD B6 00
        or   [ix+127]           ; 4AF6 DD B6 7F
        OR   [IX+127]           ; 4AF9 DD B6 7F
        or   [iy+-128]          ; 4AFC FD B6 80
        OR   [IY+-128]          ; 4AFF FD B6 80
        or   [iy+-1]            ; 4B02 FD B6 FF
        OR   [IY+-1]            ; 4B05 FD B6 FF
        or   [iy+0]             ; 4B08 FD B6 00
        OR   [IY+0]             ; 4B0B FD B6 00
        or   [iy+127]           ; 4B0E FD B6 7F
        OR   [IY+127]           ; 4B11 FD B6 7F
        or   a                  ; 4B14 B7
        OR   A                  ; 4B15 B7
        or   b                  ; 4B16 B0
        OR   B                  ; 4B17 B0
        or   c                  ; 4B18 B1
        OR   C                  ; 4B19 B1
        or   d                  ; 4B1A B2
        OR   D                  ; 4B1B B2
        or   e                  ; 4B1C B3
        OR   E                  ; 4B1D B3
        or   h                  ; 4B1E B4
        OR   H                  ; 4B1F B4
        or   hx                 ; 4B20 DD B4
        OR   HX                 ; 4B22 DD B4
        or   hy                 ; 4B24 FD B4
        OR   HY                 ; 4B26 FD B4
        or   ixh                ; 4B28 DD B4
        OR   IXH                ; 4B2A DD B4
        or   ixl                ; 4B2C DD B5
        OR   IXL                ; 4B2E DD B5
        or   iyh                ; 4B30 FD B4
        OR   IYH                ; 4B32 FD B4
        or   iyl                ; 4B34 FD B5
        OR   IYL                ; 4B36 FD B5
        or   l                  ; 4B38 B5
        OR   L                  ; 4B39 B5
        or   lx                 ; 4B3A DD B5
        OR   LX                 ; 4B3C DD B5
        or   ly                 ; 4B3E FD B5
        OR   LY                 ; 4B40 FD B5
        or   xh                 ; 4B42 DD B4
        OR   XH                 ; 4B44 DD B4
        or   xl                 ; 4B46 DD B5
        OR   XL                 ; 4B48 DD B5
        or   yh                 ; 4B4A FD B4
        OR   YH                 ; 4B4C FD B4
        or   yl                 ; 4B4E FD B5
        OR   YL                 ; 4B50 FD B5
        otdr                    ; 4B52 ED BB
        OTDR                    ; 4B54 ED BB
        otir                    ; 4B56 ED B3
        OTIR                    ; 4B58 ED B3
        out  (-128),a           ; 4B5A D3 80
        OUT  (-128),A           ; 4B5C D3 80
        out  (-1),a             ; 4B5E D3 FF
        OUT  (-1),A             ; 4B60 D3 FF
        out  (0),a              ; 4B62 D3 00
        OUT  (0),A              ; 4B64 D3 00
        out  (127),a            ; 4B66 D3 7F
        OUT  (127),A            ; 4B68 D3 7F
        out  (255),a            ; 4B6A D3 FF
        OUT  (255),A            ; 4B6C D3 FF
        out  (c),0              ; 4B6E ED 71
        OUT  (C),0              ; 4B70 ED 71
        out  (c),a              ; 4B72 ED 79
        OUT  (C),A              ; 4B74 ED 79
        out  (c),b              ; 4B76 ED 41
        OUT  (C),B              ; 4B78 ED 41
        out  (c),c              ; 4B7A ED 49
        OUT  (C),C              ; 4B7C ED 49
        out  (c),d              ; 4B7E ED 51
        OUT  (C),D              ; 4B80 ED 51
        out  (c),e              ; 4B82 ED 59
        OUT  (C),E              ; 4B84 ED 59
        out  (c),h              ; 4B86 ED 61
        OUT  (C),H              ; 4B88 ED 61
        out  (c),l              ; 4B8A ED 69
        OUT  (C),L              ; 4B8C ED 69
        out  [-128],a           ; 4B8E D3 80
        OUT  [-128],A           ; 4B90 D3 80
        out  [-1],a             ; 4B92 D3 FF
        OUT  [-1],A             ; 4B94 D3 FF
        out  [0],a              ; 4B96 D3 00
        OUT  [0],A              ; 4B98 D3 00
        out  [127],a            ; 4B9A D3 7F
        OUT  [127],A            ; 4B9C D3 7F
        out  [255],a            ; 4B9E D3 FF
        OUT  [255],A            ; 4BA0 D3 FF
        out  [c],0              ; 4BA2 ED 71
        OUT  [C],0              ; 4BA4 ED 71
        out  [c],a              ; 4BA6 ED 79
        OUT  [C],A              ; 4BA8 ED 79
        out  [c],b              ; 4BAA ED 41
        OUT  [C],B              ; 4BAC ED 41
        out  [c],c              ; 4BAE ED 49
        OUT  [C],C              ; 4BB0 ED 49
        out  [c],d              ; 4BB2 ED 51
        OUT  [C],D              ; 4BB4 ED 51
        out  [c],e              ; 4BB6 ED 59
        OUT  [C],E              ; 4BB8 ED 59
        out  [c],h              ; 4BBA ED 61
        OUT  [C],H              ; 4BBC ED 61
        out  [c],l              ; 4BBE ED 69
        OUT  [C],L              ; 4BC0 ED 69
        outd                    ; 4BC2 ED AB
        OUTD                    ; 4BC4 ED AB
        outi                    ; 4BC6 ED A3
        OUTI                    ; 4BC8 ED A3
        pop  af                 ; 4BCA F1
        POP  AF                 ; 4BCB F1
        pop  bc                 ; 4BCC C1
        POP  BC                 ; 4BCD C1
        pop  de                 ; 4BCE D1
        POP  DE                 ; 4BCF D1
        pop  hl                 ; 4BD0 E1
        POP  HL                 ; 4BD1 E1
        pop  ix                 ; 4BD2 DD E1
        POP  IX                 ; 4BD4 DD E1
        pop  iy                 ; 4BD6 FD E1
        POP  IY                 ; 4BD8 FD E1
        push af                 ; 4BDA F5
        PUSH AF                 ; 4BDB F5
        push bc                 ; 4BDC C5
        PUSH BC                 ; 4BDD C5
        push de                 ; 4BDE D5
        PUSH DE                 ; 4BDF D5
        push hl                 ; 4BE0 E5
        PUSH HL                 ; 4BE1 E5
        push ix                 ; 4BE2 DD E5
        PUSH IX                 ; 4BE4 DD E5
        push iy                 ; 4BE6 FD E5
        PUSH IY                 ; 4BE8 FD E5
        res  0,(hl)             ; 4BEA CB 86
        RES  0,(HL)             ; 4BEC CB 86
        res  0,(ix+-128)        ; 4BEE DD CB 80 86
        RES  0,(IX+-128)        ; 4BF2 DD CB 80 86
        res  0,(ix+-1)          ; 4BF6 DD CB FF 86
        RES  0,(IX+-1)          ; 4BFA DD CB FF 86
        res  0,(ix+0)           ; 4BFE DD CB 00 86
        RES  0,(IX+0)           ; 4C02 DD CB 00 86
        res  0,(ix+127)         ; 4C06 DD CB 7F 86
        RES  0,(IX+127)         ; 4C0A DD CB 7F 86
        res  0,(ix+-128),a      ; 4C0E DD CB 80 87
        RES  0,(IX+-128),A      ; 4C12 DD CB 80 87
        res  0,(ix+-1),a        ; 4C16 DD CB FF 87
        RES  0,(IX+-1),A        ; 4C1A DD CB FF 87
        res  0,(ix+0),a         ; 4C1E DD CB 00 87
        RES  0,(IX+0),A         ; 4C22 DD CB 00 87
        res  0,(ix+127),a       ; 4C26 DD CB 7F 87
        RES  0,(IX+127),A       ; 4C2A DD CB 7F 87
        res  0,(ix+-128),b      ; 4C2E DD CB 80 80
        RES  0,(IX+-128),B      ; 4C32 DD CB 80 80
        res  0,(ix+-1),b        ; 4C36 DD CB FF 80
        RES  0,(IX+-1),B        ; 4C3A DD CB FF 80
        res  0,(ix+0),b         ; 4C3E DD CB 00 80
        RES  0,(IX+0),B         ; 4C42 DD CB 00 80
        res  0,(ix+127),b       ; 4C46 DD CB 7F 80
        RES  0,(IX+127),B       ; 4C4A DD CB 7F 80
        res  0,(ix+-128),c      ; 4C4E DD CB 80 81
        RES  0,(IX+-128),C      ; 4C52 DD CB 80 81
        res  0,(ix+-1),c        ; 4C56 DD CB FF 81
        RES  0,(IX+-1),C        ; 4C5A DD CB FF 81
        res  0,(ix+0),c         ; 4C5E DD CB 00 81
        RES  0,(IX+0),C         ; 4C62 DD CB 00 81
        res  0,(ix+127),c       ; 4C66 DD CB 7F 81
        RES  0,(IX+127),C       ; 4C6A DD CB 7F 81
        res  0,(ix+-128),d      ; 4C6E DD CB 80 82
        RES  0,(IX+-128),D      ; 4C72 DD CB 80 82
        res  0,(ix+-1),d        ; 4C76 DD CB FF 82
        RES  0,(IX+-1),D        ; 4C7A DD CB FF 82
        res  0,(ix+0),d         ; 4C7E DD CB 00 82
        RES  0,(IX+0),D         ; 4C82 DD CB 00 82
        res  0,(ix+127),d       ; 4C86 DD CB 7F 82
        RES  0,(IX+127),D       ; 4C8A DD CB 7F 82
        res  0,(ix+-128),e      ; 4C8E DD CB 80 83
        RES  0,(IX+-128),E      ; 4C92 DD CB 80 83
        res  0,(ix+-1),e        ; 4C96 DD CB FF 83
        RES  0,(IX+-1),E        ; 4C9A DD CB FF 83
        res  0,(ix+0),e         ; 4C9E DD CB 00 83
        RES  0,(IX+0),E         ; 4CA2 DD CB 00 83
        res  0,(ix+127),e       ; 4CA6 DD CB 7F 83
        RES  0,(IX+127),E       ; 4CAA DD CB 7F 83
        res  0,(ix+-128),h      ; 4CAE DD CB 80 84
        RES  0,(IX+-128),H      ; 4CB2 DD CB 80 84
        res  0,(ix+-1),h        ; 4CB6 DD CB FF 84
        RES  0,(IX+-1),H        ; 4CBA DD CB FF 84
        res  0,(ix+0),h         ; 4CBE DD CB 00 84
        RES  0,(IX+0),H         ; 4CC2 DD CB 00 84
        res  0,(ix+127),h       ; 4CC6 DD CB 7F 84
        RES  0,(IX+127),H       ; 4CCA DD CB 7F 84
        res  0,(ix+-128),l      ; 4CCE DD CB 80 85
        RES  0,(IX+-128),L      ; 4CD2 DD CB 80 85
        res  0,(ix+-1),l        ; 4CD6 DD CB FF 85
        RES  0,(IX+-1),L        ; 4CDA DD CB FF 85
        res  0,(ix+0),l         ; 4CDE DD CB 00 85
        RES  0,(IX+0),L         ; 4CE2 DD CB 00 85
        res  0,(ix+127),l       ; 4CE6 DD CB 7F 85
        RES  0,(IX+127),L       ; 4CEA DD CB 7F 85
        res  0,(iy+-128)        ; 4CEE FD CB 80 86
        RES  0,(IY+-128)        ; 4CF2 FD CB 80 86
        res  0,(iy+-1)          ; 4CF6 FD CB FF 86
        RES  0,(IY+-1)          ; 4CFA FD CB FF 86
        res  0,(iy+0)           ; 4CFE FD CB 00 86
        RES  0,(IY+0)           ; 4D02 FD CB 00 86
        res  0,(iy+127)         ; 4D06 FD CB 7F 86
        RES  0,(IY+127)         ; 4D0A FD CB 7F 86
        res  0,(iy+-128),a      ; 4D0E FD CB 80 87
        RES  0,(IY+-128),A      ; 4D12 FD CB 80 87
        res  0,(iy+-1),a        ; 4D16 FD CB FF 87
        RES  0,(IY+-1),A        ; 4D1A FD CB FF 87
        res  0,(iy+0),a         ; 4D1E FD CB 00 87
        RES  0,(IY+0),A         ; 4D22 FD CB 00 87
        res  0,(iy+127),a       ; 4D26 FD CB 7F 87
        RES  0,(IY+127),A       ; 4D2A FD CB 7F 87
        res  0,(iy+-128),b      ; 4D2E FD CB 80 80
        RES  0,(IY+-128),B      ; 4D32 FD CB 80 80
        res  0,(iy+-1),b        ; 4D36 FD CB FF 80
        RES  0,(IY+-1),B        ; 4D3A FD CB FF 80
        res  0,(iy+0),b         ; 4D3E FD CB 00 80
        RES  0,(IY+0),B         ; 4D42 FD CB 00 80
        res  0,(iy+127),b       ; 4D46 FD CB 7F 80
        RES  0,(IY+127),B       ; 4D4A FD CB 7F 80
        res  0,(iy+-128),c      ; 4D4E FD CB 80 81
        RES  0,(IY+-128),C      ; 4D52 FD CB 80 81
        res  0,(iy+-1),c        ; 4D56 FD CB FF 81
        RES  0,(IY+-1),C        ; 4D5A FD CB FF 81
        res  0,(iy+0),c         ; 4D5E FD CB 00 81
        RES  0,(IY+0),C         ; 4D62 FD CB 00 81
        res  0,(iy+127),c       ; 4D66 FD CB 7F 81
        RES  0,(IY+127),C       ; 4D6A FD CB 7F 81
        res  0,(iy+-128),d      ; 4D6E FD CB 80 82
        RES  0,(IY+-128),D      ; 4D72 FD CB 80 82
        res  0,(iy+-1),d        ; 4D76 FD CB FF 82
        RES  0,(IY+-1),D        ; 4D7A FD CB FF 82
        res  0,(iy+0),d         ; 4D7E FD CB 00 82
        RES  0,(IY+0),D         ; 4D82 FD CB 00 82
        res  0,(iy+127),d       ; 4D86 FD CB 7F 82
        RES  0,(IY+127),D       ; 4D8A FD CB 7F 82
        res  0,(iy+-128),e      ; 4D8E FD CB 80 83
        RES  0,(IY+-128),E      ; 4D92 FD CB 80 83
        res  0,(iy+-1),e        ; 4D96 FD CB FF 83
        RES  0,(IY+-1),E        ; 4D9A FD CB FF 83
        res  0,(iy+0),e         ; 4D9E FD CB 00 83
        RES  0,(IY+0),E         ; 4DA2 FD CB 00 83
        res  0,(iy+127),e       ; 4DA6 FD CB 7F 83
        RES  0,(IY+127),E       ; 4DAA FD CB 7F 83
        res  0,(iy+-128),h      ; 4DAE FD CB 80 84
        RES  0,(IY+-128),H      ; 4DB2 FD CB 80 84
        res  0,(iy+-1),h        ; 4DB6 FD CB FF 84
        RES  0,(IY+-1),H        ; 4DBA FD CB FF 84
        res  0,(iy+0),h         ; 4DBE FD CB 00 84
        RES  0,(IY+0),H         ; 4DC2 FD CB 00 84
        res  0,(iy+127),h       ; 4DC6 FD CB 7F 84
        RES  0,(IY+127),H       ; 4DCA FD CB 7F 84
        res  0,(iy+-128),l      ; 4DCE FD CB 80 85
        RES  0,(IY+-128),L      ; 4DD2 FD CB 80 85
        res  0,(iy+-1),l        ; 4DD6 FD CB FF 85
        RES  0,(IY+-1),L        ; 4DDA FD CB FF 85
        res  0,(iy+0),l         ; 4DDE FD CB 00 85
        RES  0,(IY+0),L         ; 4DE2 FD CB 00 85
        res  0,(iy+127),l       ; 4DE6 FD CB 7F 85
        RES  0,(IY+127),L       ; 4DEA FD CB 7F 85
        res  0,[hl]             ; 4DEE CB 86
        RES  0,[HL]             ; 4DF0 CB 86
        res  0,[ix+-128]        ; 4DF2 DD CB 80 86
        RES  0,[IX+-128]        ; 4DF6 DD CB 80 86
        res  0,[ix+-1]          ; 4DFA DD CB FF 86
        RES  0,[IX+-1]          ; 4DFE DD CB FF 86
        res  0,[ix+0]           ; 4E02 DD CB 00 86
        RES  0,[IX+0]           ; 4E06 DD CB 00 86
        res  0,[ix+127]         ; 4E0A DD CB 7F 86
        RES  0,[IX+127]         ; 4E0E DD CB 7F 86
        res  0,[ix+-128],a      ; 4E12 DD CB 80 87
        RES  0,[IX+-128],A      ; 4E16 DD CB 80 87
        res  0,[ix+-1],a        ; 4E1A DD CB FF 87
        RES  0,[IX+-1],A        ; 4E1E DD CB FF 87
        res  0,[ix+0],a         ; 4E22 DD CB 00 87
        RES  0,[IX+0],A         ; 4E26 DD CB 00 87
        res  0,[ix+127],a       ; 4E2A DD CB 7F 87
        RES  0,[IX+127],A       ; 4E2E DD CB 7F 87
        res  0,[ix+-128],b      ; 4E32 DD CB 80 80
        RES  0,[IX+-128],B      ; 4E36 DD CB 80 80
        res  0,[ix+-1],b        ; 4E3A DD CB FF 80
        RES  0,[IX+-1],B        ; 4E3E DD CB FF 80
        res  0,[ix+0],b         ; 4E42 DD CB 00 80
        RES  0,[IX+0],B         ; 4E46 DD CB 00 80
        res  0,[ix+127],b       ; 4E4A DD CB 7F 80
        RES  0,[IX+127],B       ; 4E4E DD CB 7F 80
        res  0,[ix+-128],c      ; 4E52 DD CB 80 81
        RES  0,[IX+-128],C      ; 4E56 DD CB 80 81
        res  0,[ix+-1],c        ; 4E5A DD CB FF 81
        RES  0,[IX+-1],C        ; 4E5E DD CB FF 81
        res  0,[ix+0],c         ; 4E62 DD CB 00 81
        RES  0,[IX+0],C         ; 4E66 DD CB 00 81
        res  0,[ix+127],c       ; 4E6A DD CB 7F 81
        RES  0,[IX+127],C       ; 4E6E DD CB 7F 81
        res  0,[ix+-128],d      ; 4E72 DD CB 80 82
        RES  0,[IX+-128],D      ; 4E76 DD CB 80 82
        res  0,[ix+-1],d        ; 4E7A DD CB FF 82
        RES  0,[IX+-1],D        ; 4E7E DD CB FF 82
        res  0,[ix+0],d         ; 4E82 DD CB 00 82
        RES  0,[IX+0],D         ; 4E86 DD CB 00 82
        res  0,[ix+127],d       ; 4E8A DD CB 7F 82
        RES  0,[IX+127],D       ; 4E8E DD CB 7F 82
        res  0,[ix+-128],e      ; 4E92 DD CB 80 83
        RES  0,[IX+-128],E      ; 4E96 DD CB 80 83
        res  0,[ix+-1],e        ; 4E9A DD CB FF 83
        RES  0,[IX+-1],E        ; 4E9E DD CB FF 83
        res  0,[ix+0],e         ; 4EA2 DD CB 00 83
        RES  0,[IX+0],E         ; 4EA6 DD CB 00 83
        res  0,[ix+127],e       ; 4EAA DD CB 7F 83
        RES  0,[IX+127],E       ; 4EAE DD CB 7F 83
        res  0,[ix+-128],h      ; 4EB2 DD CB 80 84
        RES  0,[IX+-128],H      ; 4EB6 DD CB 80 84
        res  0,[ix+-1],h        ; 4EBA DD CB FF 84
        RES  0,[IX+-1],H        ; 4EBE DD CB FF 84
        res  0,[ix+0],h         ; 4EC2 DD CB 00 84
        RES  0,[IX+0],H         ; 4EC6 DD CB 00 84
        res  0,[ix+127],h       ; 4ECA DD CB 7F 84
        RES  0,[IX+127],H       ; 4ECE DD CB 7F 84
        res  0,[ix+-128],l      ; 4ED2 DD CB 80 85
        RES  0,[IX+-128],L      ; 4ED6 DD CB 80 85
        res  0,[ix+-1],l        ; 4EDA DD CB FF 85
        RES  0,[IX+-1],L        ; 4EDE DD CB FF 85
        res  0,[ix+0],l         ; 4EE2 DD CB 00 85
        RES  0,[IX+0],L         ; 4EE6 DD CB 00 85
        res  0,[ix+127],l       ; 4EEA DD CB 7F 85
        RES  0,[IX+127],L       ; 4EEE DD CB 7F 85
        res  0,[iy+-128]        ; 4EF2 FD CB 80 86
        RES  0,[IY+-128]        ; 4EF6 FD CB 80 86
        res  0,[iy+-1]          ; 4EFA FD CB FF 86
        RES  0,[IY+-1]          ; 4EFE FD CB FF 86
        res  0,[iy+0]           ; 4F02 FD CB 00 86
        RES  0,[IY+0]           ; 4F06 FD CB 00 86
        res  0,[iy+127]         ; 4F0A FD CB 7F 86
        RES  0,[IY+127]         ; 4F0E FD CB 7F 86
        res  0,[iy+-128],a      ; 4F12 FD CB 80 87
        RES  0,[IY+-128],A      ; 4F16 FD CB 80 87
        res  0,[iy+-1],a        ; 4F1A FD CB FF 87
        RES  0,[IY+-1],A        ; 4F1E FD CB FF 87
        res  0,[iy+0],a         ; 4F22 FD CB 00 87
        RES  0,[IY+0],A         ; 4F26 FD CB 00 87
        res  0,[iy+127],a       ; 4F2A FD CB 7F 87
        RES  0,[IY+127],A       ; 4F2E FD CB 7F 87
        res  0,[iy+-128],b      ; 4F32 FD CB 80 80
        RES  0,[IY+-128],B      ; 4F36 FD CB 80 80
        res  0,[iy+-1],b        ; 4F3A FD CB FF 80
        RES  0,[IY+-1],B        ; 4F3E FD CB FF 80
        res  0,[iy+0],b         ; 4F42 FD CB 00 80
        RES  0,[IY+0],B         ; 4F46 FD CB 00 80
        res  0,[iy+127],b       ; 4F4A FD CB 7F 80
        RES  0,[IY+127],B       ; 4F4E FD CB 7F 80
        res  0,[iy+-128],c      ; 4F52 FD CB 80 81
        RES  0,[IY+-128],C      ; 4F56 FD CB 80 81
        res  0,[iy+-1],c        ; 4F5A FD CB FF 81
        RES  0,[IY+-1],C        ; 4F5E FD CB FF 81
        res  0,[iy+0],c         ; 4F62 FD CB 00 81
        RES  0,[IY+0],C         ; 4F66 FD CB 00 81
        res  0,[iy+127],c       ; 4F6A FD CB 7F 81
        RES  0,[IY+127],C       ; 4F6E FD CB 7F 81
        res  0,[iy+-128],d      ; 4F72 FD CB 80 82
        RES  0,[IY+-128],D      ; 4F76 FD CB 80 82
        res  0,[iy+-1],d        ; 4F7A FD CB FF 82
        RES  0,[IY+-1],D        ; 4F7E FD CB FF 82
        res  0,[iy+0],d         ; 4F82 FD CB 00 82
        RES  0,[IY+0],D         ; 4F86 FD CB 00 82
        res  0,[iy+127],d       ; 4F8A FD CB 7F 82
        RES  0,[IY+127],D       ; 4F8E FD CB 7F 82
        res  0,[iy+-128],e      ; 4F92 FD CB 80 83
        RES  0,[IY+-128],E      ; 4F96 FD CB 80 83
        res  0,[iy+-1],e        ; 4F9A FD CB FF 83
        RES  0,[IY+-1],E        ; 4F9E FD CB FF 83
        res  0,[iy+0],e         ; 4FA2 FD CB 00 83
        RES  0,[IY+0],E         ; 4FA6 FD CB 00 83
        res  0,[iy+127],e       ; 4FAA FD CB 7F 83
        RES  0,[IY+127],E       ; 4FAE FD CB 7F 83
        res  0,[iy+-128],h      ; 4FB2 FD CB 80 84
        RES  0,[IY+-128],H      ; 4FB6 FD CB 80 84
        res  0,[iy+-1],h        ; 4FBA FD CB FF 84
        RES  0,[IY+-1],H        ; 4FBE FD CB FF 84
        res  0,[iy+0],h         ; 4FC2 FD CB 00 84
        RES  0,[IY+0],H         ; 4FC6 FD CB 00 84
        res  0,[iy+127],h       ; 4FCA FD CB 7F 84
        RES  0,[IY+127],H       ; 4FCE FD CB 7F 84
        res  0,[iy+-128],l      ; 4FD2 FD CB 80 85
        RES  0,[IY+-128],L      ; 4FD6 FD CB 80 85
        res  0,[iy+-1],l        ; 4FDA FD CB FF 85
        RES  0,[IY+-1],L        ; 4FDE FD CB FF 85
        res  0,[iy+0],l         ; 4FE2 FD CB 00 85
        RES  0,[IY+0],L         ; 4FE6 FD CB 00 85
        res  0,[iy+127],l       ; 4FEA FD CB 7F 85
        RES  0,[IY+127],L       ; 4FEE FD CB 7F 85
        res  0,a                ; 4FF2 CB 87
        RES  0,A                ; 4FF4 CB 87
        res  0,b                ; 4FF6 CB 80
        RES  0,B                ; 4FF8 CB 80
        res  0,c                ; 4FFA CB 81
        RES  0,C                ; 4FFC CB 81
        res  0,d                ; 4FFE CB 82
        RES  0,D                ; 5000 CB 82
        res  0,e                ; 5002 CB 83
        RES  0,E                ; 5004 CB 83
        res  0,h                ; 5006 CB 84
        RES  0,H                ; 5008 CB 84
        res  0,l                ; 500A CB 85
        RES  0,L                ; 500C CB 85
        res  1,(hl)             ; 500E CB 8E
        RES  1,(HL)             ; 5010 CB 8E
        res  1,(ix+-128)        ; 5012 DD CB 80 8E
        RES  1,(IX+-128)        ; 5016 DD CB 80 8E
        res  1,(ix+-1)          ; 501A DD CB FF 8E
        RES  1,(IX+-1)          ; 501E DD CB FF 8E
        res  1,(ix+0)           ; 5022 DD CB 00 8E
        RES  1,(IX+0)           ; 5026 DD CB 00 8E
        res  1,(ix+127)         ; 502A DD CB 7F 8E
        RES  1,(IX+127)         ; 502E DD CB 7F 8E
        res  1,(ix+-128),a      ; 5032 DD CB 80 8F
        RES  1,(IX+-128),A      ; 5036 DD CB 80 8F
        res  1,(ix+-1),a        ; 503A DD CB FF 8F
        RES  1,(IX+-1),A        ; 503E DD CB FF 8F
        res  1,(ix+0),a         ; 5042 DD CB 00 8F
        RES  1,(IX+0),A         ; 5046 DD CB 00 8F
        res  1,(ix+127),a       ; 504A DD CB 7F 8F
        RES  1,(IX+127),A       ; 504E DD CB 7F 8F
        res  1,(ix+-128),b      ; 5052 DD CB 80 88
        RES  1,(IX+-128),B      ; 5056 DD CB 80 88
        res  1,(ix+-1),b        ; 505A DD CB FF 88
        RES  1,(IX+-1),B        ; 505E DD CB FF 88
        res  1,(ix+0),b         ; 5062 DD CB 00 88
        RES  1,(IX+0),B         ; 5066 DD CB 00 88
        res  1,(ix+127),b       ; 506A DD CB 7F 88
        RES  1,(IX+127),B       ; 506E DD CB 7F 88
        res  1,(ix+-128),c      ; 5072 DD CB 80 89
        RES  1,(IX+-128),C      ; 5076 DD CB 80 89
        res  1,(ix+-1),c        ; 507A DD CB FF 89
        RES  1,(IX+-1),C        ; 507E DD CB FF 89
        res  1,(ix+0),c         ; 5082 DD CB 00 89
        RES  1,(IX+0),C         ; 5086 DD CB 00 89
        res  1,(ix+127),c       ; 508A DD CB 7F 89
        RES  1,(IX+127),C       ; 508E DD CB 7F 89
        res  1,(ix+-128),d      ; 5092 DD CB 80 8A
        RES  1,(IX+-128),D      ; 5096 DD CB 80 8A
        res  1,(ix+-1),d        ; 509A DD CB FF 8A
        RES  1,(IX+-1),D        ; 509E DD CB FF 8A
        res  1,(ix+0),d         ; 50A2 DD CB 00 8A
        RES  1,(IX+0),D         ; 50A6 DD CB 00 8A
        res  1,(ix+127),d       ; 50AA DD CB 7F 8A
        RES  1,(IX+127),D       ; 50AE DD CB 7F 8A
        res  1,(ix+-128),e      ; 50B2 DD CB 80 8B
        RES  1,(IX+-128),E      ; 50B6 DD CB 80 8B
        res  1,(ix+-1),e        ; 50BA DD CB FF 8B
        RES  1,(IX+-1),E        ; 50BE DD CB FF 8B
        res  1,(ix+0),e         ; 50C2 DD CB 00 8B
        RES  1,(IX+0),E         ; 50C6 DD CB 00 8B
        res  1,(ix+127),e       ; 50CA DD CB 7F 8B
        RES  1,(IX+127),E       ; 50CE DD CB 7F 8B
        res  1,(ix+-128),h      ; 50D2 DD CB 80 8C
        RES  1,(IX+-128),H      ; 50D6 DD CB 80 8C
        res  1,(ix+-1),h        ; 50DA DD CB FF 8C
        RES  1,(IX+-1),H        ; 50DE DD CB FF 8C
        res  1,(ix+0),h         ; 50E2 DD CB 00 8C
        RES  1,(IX+0),H         ; 50E6 DD CB 00 8C
        res  1,(ix+127),h       ; 50EA DD CB 7F 8C
        RES  1,(IX+127),H       ; 50EE DD CB 7F 8C
        res  1,(ix+-128),l      ; 50F2 DD CB 80 8D
        RES  1,(IX+-128),L      ; 50F6 DD CB 80 8D
        res  1,(ix+-1),l        ; 50FA DD CB FF 8D
        RES  1,(IX+-1),L        ; 50FE DD CB FF 8D
        res  1,(ix+0),l         ; 5102 DD CB 00 8D
        RES  1,(IX+0),L         ; 5106 DD CB 00 8D
        res  1,(ix+127),l       ; 510A DD CB 7F 8D
        RES  1,(IX+127),L       ; 510E DD CB 7F 8D
        res  1,(iy+-128)        ; 5112 FD CB 80 8E
        RES  1,(IY+-128)        ; 5116 FD CB 80 8E
        res  1,(iy+-1)          ; 511A FD CB FF 8E
        RES  1,(IY+-1)          ; 511E FD CB FF 8E
        res  1,(iy+0)           ; 5122 FD CB 00 8E
        RES  1,(IY+0)           ; 5126 FD CB 00 8E
        res  1,(iy+127)         ; 512A FD CB 7F 8E
        RES  1,(IY+127)         ; 512E FD CB 7F 8E
        res  1,(iy+-128),a      ; 5132 FD CB 80 8F
        RES  1,(IY+-128),A      ; 5136 FD CB 80 8F
        res  1,(iy+-1),a        ; 513A FD CB FF 8F
        RES  1,(IY+-1),A        ; 513E FD CB FF 8F
        res  1,(iy+0),a         ; 5142 FD CB 00 8F
        RES  1,(IY+0),A         ; 5146 FD CB 00 8F
        res  1,(iy+127),a       ; 514A FD CB 7F 8F
        RES  1,(IY+127),A       ; 514E FD CB 7F 8F
        res  1,(iy+-128),b      ; 5152 FD CB 80 88
        RES  1,(IY+-128),B      ; 5156 FD CB 80 88
        res  1,(iy+-1),b        ; 515A FD CB FF 88
        RES  1,(IY+-1),B        ; 515E FD CB FF 88
        res  1,(iy+0),b         ; 5162 FD CB 00 88
        RES  1,(IY+0),B         ; 5166 FD CB 00 88
        res  1,(iy+127),b       ; 516A FD CB 7F 88
        RES  1,(IY+127),B       ; 516E FD CB 7F 88
        res  1,(iy+-128),c      ; 5172 FD CB 80 89
        RES  1,(IY+-128),C      ; 5176 FD CB 80 89
        res  1,(iy+-1),c        ; 517A FD CB FF 89
        RES  1,(IY+-1),C        ; 517E FD CB FF 89
        res  1,(iy+0),c         ; 5182 FD CB 00 89
        RES  1,(IY+0),C         ; 5186 FD CB 00 89
        res  1,(iy+127),c       ; 518A FD CB 7F 89
        RES  1,(IY+127),C       ; 518E FD CB 7F 89
        res  1,(iy+-128),d      ; 5192 FD CB 80 8A
        RES  1,(IY+-128),D      ; 5196 FD CB 80 8A
        res  1,(iy+-1),d        ; 519A FD CB FF 8A
        RES  1,(IY+-1),D        ; 519E FD CB FF 8A
        res  1,(iy+0),d         ; 51A2 FD CB 00 8A
        RES  1,(IY+0),D         ; 51A6 FD CB 00 8A
        res  1,(iy+127),d       ; 51AA FD CB 7F 8A
        RES  1,(IY+127),D       ; 51AE FD CB 7F 8A
        res  1,(iy+-128),e      ; 51B2 FD CB 80 8B
        RES  1,(IY+-128),E      ; 51B6 FD CB 80 8B
        res  1,(iy+-1),e        ; 51BA FD CB FF 8B
        RES  1,(IY+-1),E        ; 51BE FD CB FF 8B
        res  1,(iy+0),e         ; 51C2 FD CB 00 8B
        RES  1,(IY+0),E         ; 51C6 FD CB 00 8B
        res  1,(iy+127),e       ; 51CA FD CB 7F 8B
        RES  1,(IY+127),E       ; 51CE FD CB 7F 8B
        res  1,(iy+-128),h      ; 51D2 FD CB 80 8C
        RES  1,(IY+-128),H      ; 51D6 FD CB 80 8C
        res  1,(iy+-1),h        ; 51DA FD CB FF 8C
        RES  1,(IY+-1),H        ; 51DE FD CB FF 8C
        res  1,(iy+0),h         ; 51E2 FD CB 00 8C
        RES  1,(IY+0),H         ; 51E6 FD CB 00 8C
        res  1,(iy+127),h       ; 51EA FD CB 7F 8C
        RES  1,(IY+127),H       ; 51EE FD CB 7F 8C
        res  1,(iy+-128),l      ; 51F2 FD CB 80 8D
        RES  1,(IY+-128),L      ; 51F6 FD CB 80 8D
        res  1,(iy+-1),l        ; 51FA FD CB FF 8D
        RES  1,(IY+-1),L        ; 51FE FD CB FF 8D
        res  1,(iy+0),l         ; 5202 FD CB 00 8D
        RES  1,(IY+0),L         ; 5206 FD CB 00 8D
        res  1,(iy+127),l       ; 520A FD CB 7F 8D
        RES  1,(IY+127),L       ; 520E FD CB 7F 8D
        res  1,[hl]             ; 5212 CB 8E
        RES  1,[HL]             ; 5214 CB 8E
        res  1,[ix+-128]        ; 5216 DD CB 80 8E
        RES  1,[IX+-128]        ; 521A DD CB 80 8E
        res  1,[ix+-1]          ; 521E DD CB FF 8E
        RES  1,[IX+-1]          ; 5222 DD CB FF 8E
        res  1,[ix+0]           ; 5226 DD CB 00 8E
        RES  1,[IX+0]           ; 522A DD CB 00 8E
        res  1,[ix+127]         ; 522E DD CB 7F 8E
        RES  1,[IX+127]         ; 5232 DD CB 7F 8E
        res  1,[ix+-128],a      ; 5236 DD CB 80 8F
        RES  1,[IX+-128],A      ; 523A DD CB 80 8F
        res  1,[ix+-1],a        ; 523E DD CB FF 8F
        RES  1,[IX+-1],A        ; 5242 DD CB FF 8F
        res  1,[ix+0],a         ; 5246 DD CB 00 8F
        RES  1,[IX+0],A         ; 524A DD CB 00 8F
        res  1,[ix+127],a       ; 524E DD CB 7F 8F
        RES  1,[IX+127],A       ; 5252 DD CB 7F 8F
        res  1,[ix+-128],b      ; 5256 DD CB 80 88
        RES  1,[IX+-128],B      ; 525A DD CB 80 88
        res  1,[ix+-1],b        ; 525E DD CB FF 88
        RES  1,[IX+-1],B        ; 5262 DD CB FF 88
        res  1,[ix+0],b         ; 5266 DD CB 00 88
        RES  1,[IX+0],B         ; 526A DD CB 00 88
        res  1,[ix+127],b       ; 526E DD CB 7F 88
        RES  1,[IX+127],B       ; 5272 DD CB 7F 88
        res  1,[ix+-128],c      ; 5276 DD CB 80 89
        RES  1,[IX+-128],C      ; 527A DD CB 80 89
        res  1,[ix+-1],c        ; 527E DD CB FF 89
        RES  1,[IX+-1],C        ; 5282 DD CB FF 89
        res  1,[ix+0],c         ; 5286 DD CB 00 89
        RES  1,[IX+0],C         ; 528A DD CB 00 89
        res  1,[ix+127],c       ; 528E DD CB 7F 89
        RES  1,[IX+127],C       ; 5292 DD CB 7F 89
        res  1,[ix+-128],d      ; 5296 DD CB 80 8A
        RES  1,[IX+-128],D      ; 529A DD CB 80 8A
        res  1,[ix+-1],d        ; 529E DD CB FF 8A
        RES  1,[IX+-1],D        ; 52A2 DD CB FF 8A
        res  1,[ix+0],d         ; 52A6 DD CB 00 8A
        RES  1,[IX+0],D         ; 52AA DD CB 00 8A
        res  1,[ix+127],d       ; 52AE DD CB 7F 8A
        RES  1,[IX+127],D       ; 52B2 DD CB 7F 8A
        res  1,[ix+-128],e      ; 52B6 DD CB 80 8B
        RES  1,[IX+-128],E      ; 52BA DD CB 80 8B
        res  1,[ix+-1],e        ; 52BE DD CB FF 8B
        RES  1,[IX+-1],E        ; 52C2 DD CB FF 8B
        res  1,[ix+0],e         ; 52C6 DD CB 00 8B
        RES  1,[IX+0],E         ; 52CA DD CB 00 8B
        res  1,[ix+127],e       ; 52CE DD CB 7F 8B
        RES  1,[IX+127],E       ; 52D2 DD CB 7F 8B
        res  1,[ix+-128],h      ; 52D6 DD CB 80 8C
        RES  1,[IX+-128],H      ; 52DA DD CB 80 8C
        res  1,[ix+-1],h        ; 52DE DD CB FF 8C
        RES  1,[IX+-1],H        ; 52E2 DD CB FF 8C
        res  1,[ix+0],h         ; 52E6 DD CB 00 8C
        RES  1,[IX+0],H         ; 52EA DD CB 00 8C
        res  1,[ix+127],h       ; 52EE DD CB 7F 8C
        RES  1,[IX+127],H       ; 52F2 DD CB 7F 8C
        res  1,[ix+-128],l      ; 52F6 DD CB 80 8D
        RES  1,[IX+-128],L      ; 52FA DD CB 80 8D
        res  1,[ix+-1],l        ; 52FE DD CB FF 8D
        RES  1,[IX+-1],L        ; 5302 DD CB FF 8D
        res  1,[ix+0],l         ; 5306 DD CB 00 8D
        RES  1,[IX+0],L         ; 530A DD CB 00 8D
        res  1,[ix+127],l       ; 530E DD CB 7F 8D
        RES  1,[IX+127],L       ; 5312 DD CB 7F 8D
        res  1,[iy+-128]        ; 5316 FD CB 80 8E
        RES  1,[IY+-128]        ; 531A FD CB 80 8E
        res  1,[iy+-1]          ; 531E FD CB FF 8E
        RES  1,[IY+-1]          ; 5322 FD CB FF 8E
        res  1,[iy+0]           ; 5326 FD CB 00 8E
        RES  1,[IY+0]           ; 532A FD CB 00 8E
        res  1,[iy+127]         ; 532E FD CB 7F 8E
        RES  1,[IY+127]         ; 5332 FD CB 7F 8E
        res  1,[iy+-128],a      ; 5336 FD CB 80 8F
        RES  1,[IY+-128],A      ; 533A FD CB 80 8F
        res  1,[iy+-1],a        ; 533E FD CB FF 8F
        RES  1,[IY+-1],A        ; 5342 FD CB FF 8F
        res  1,[iy+0],a         ; 5346 FD CB 00 8F
        RES  1,[IY+0],A         ; 534A FD CB 00 8F
        res  1,[iy+127],a       ; 534E FD CB 7F 8F
        RES  1,[IY+127],A       ; 5352 FD CB 7F 8F
        res  1,[iy+-128],b      ; 5356 FD CB 80 88
        RES  1,[IY+-128],B      ; 535A FD CB 80 88
        res  1,[iy+-1],b        ; 535E FD CB FF 88
        RES  1,[IY+-1],B        ; 5362 FD CB FF 88
        res  1,[iy+0],b         ; 5366 FD CB 00 88
        RES  1,[IY+0],B         ; 536A FD CB 00 88
        res  1,[iy+127],b       ; 536E FD CB 7F 88
        RES  1,[IY+127],B       ; 5372 FD CB 7F 88
        res  1,[iy+-128],c      ; 5376 FD CB 80 89
        RES  1,[IY+-128],C      ; 537A FD CB 80 89
        res  1,[iy+-1],c        ; 537E FD CB FF 89
        RES  1,[IY+-1],C        ; 5382 FD CB FF 89
        res  1,[iy+0],c         ; 5386 FD CB 00 89
        RES  1,[IY+0],C         ; 538A FD CB 00 89
        res  1,[iy+127],c       ; 538E FD CB 7F 89
        RES  1,[IY+127],C       ; 5392 FD CB 7F 89
        res  1,[iy+-128],d      ; 5396 FD CB 80 8A
        RES  1,[IY+-128],D      ; 539A FD CB 80 8A
        res  1,[iy+-1],d        ; 539E FD CB FF 8A
        RES  1,[IY+-1],D        ; 53A2 FD CB FF 8A
        res  1,[iy+0],d         ; 53A6 FD CB 00 8A
        RES  1,[IY+0],D         ; 53AA FD CB 00 8A
        res  1,[iy+127],d       ; 53AE FD CB 7F 8A
        RES  1,[IY+127],D       ; 53B2 FD CB 7F 8A
        res  1,[iy+-128],e      ; 53B6 FD CB 80 8B
        RES  1,[IY+-128],E      ; 53BA FD CB 80 8B
        res  1,[iy+-1],e        ; 53BE FD CB FF 8B
        RES  1,[IY+-1],E        ; 53C2 FD CB FF 8B
        res  1,[iy+0],e         ; 53C6 FD CB 00 8B
        RES  1,[IY+0],E         ; 53CA FD CB 00 8B
        res  1,[iy+127],e       ; 53CE FD CB 7F 8B
        RES  1,[IY+127],E       ; 53D2 FD CB 7F 8B
        res  1,[iy+-128],h      ; 53D6 FD CB 80 8C
        RES  1,[IY+-128],H      ; 53DA FD CB 80 8C
        res  1,[iy+-1],h        ; 53DE FD CB FF 8C
        RES  1,[IY+-1],H        ; 53E2 FD CB FF 8C
        res  1,[iy+0],h         ; 53E6 FD CB 00 8C
        RES  1,[IY+0],H         ; 53EA FD CB 00 8C
        res  1,[iy+127],h       ; 53EE FD CB 7F 8C
        RES  1,[IY+127],H       ; 53F2 FD CB 7F 8C
        res  1,[iy+-128],l      ; 53F6 FD CB 80 8D
        RES  1,[IY+-128],L      ; 53FA FD CB 80 8D
        res  1,[iy+-1],l        ; 53FE FD CB FF 8D
        RES  1,[IY+-1],L        ; 5402 FD CB FF 8D
        res  1,[iy+0],l         ; 5406 FD CB 00 8D
        RES  1,[IY+0],L         ; 540A FD CB 00 8D
        res  1,[iy+127],l       ; 540E FD CB 7F 8D
        RES  1,[IY+127],L       ; 5412 FD CB 7F 8D
        res  1,a                ; 5416 CB 8F
        RES  1,A                ; 5418 CB 8F
        res  1,b                ; 541A CB 88
        RES  1,B                ; 541C CB 88
        res  1,c                ; 541E CB 89
        RES  1,C                ; 5420 CB 89
        res  1,d                ; 5422 CB 8A
        RES  1,D                ; 5424 CB 8A
        res  1,e                ; 5426 CB 8B
        RES  1,E                ; 5428 CB 8B
        res  1,h                ; 542A CB 8C
        RES  1,H                ; 542C CB 8C
        res  1,l                ; 542E CB 8D
        RES  1,L                ; 5430 CB 8D
        res  2,(hl)             ; 5432 CB 96
        RES  2,(HL)             ; 5434 CB 96
        res  2,(ix+-128)        ; 5436 DD CB 80 96
        RES  2,(IX+-128)        ; 543A DD CB 80 96
        res  2,(ix+-1)          ; 543E DD CB FF 96
        RES  2,(IX+-1)          ; 5442 DD CB FF 96
        res  2,(ix+0)           ; 5446 DD CB 00 96
        RES  2,(IX+0)           ; 544A DD CB 00 96
        res  2,(ix+127)         ; 544E DD CB 7F 96
        RES  2,(IX+127)         ; 5452 DD CB 7F 96
        res  2,(ix+-128),a      ; 5456 DD CB 80 97
        RES  2,(IX+-128),A      ; 545A DD CB 80 97
        res  2,(ix+-1),a        ; 545E DD CB FF 97
        RES  2,(IX+-1),A        ; 5462 DD CB FF 97
        res  2,(ix+0),a         ; 5466 DD CB 00 97
        RES  2,(IX+0),A         ; 546A DD CB 00 97
        res  2,(ix+127),a       ; 546E DD CB 7F 97
        RES  2,(IX+127),A       ; 5472 DD CB 7F 97
        res  2,(ix+-128),b      ; 5476 DD CB 80 90
        RES  2,(IX+-128),B      ; 547A DD CB 80 90
        res  2,(ix+-1),b        ; 547E DD CB FF 90
        RES  2,(IX+-1),B        ; 5482 DD CB FF 90
        res  2,(ix+0),b         ; 5486 DD CB 00 90
        RES  2,(IX+0),B         ; 548A DD CB 00 90
        res  2,(ix+127),b       ; 548E DD CB 7F 90
        RES  2,(IX+127),B       ; 5492 DD CB 7F 90
        res  2,(ix+-128),c      ; 5496 DD CB 80 91
        RES  2,(IX+-128),C      ; 549A DD CB 80 91
        res  2,(ix+-1),c        ; 549E DD CB FF 91
        RES  2,(IX+-1),C        ; 54A2 DD CB FF 91
        res  2,(ix+0),c         ; 54A6 DD CB 00 91
        RES  2,(IX+0),C         ; 54AA DD CB 00 91
        res  2,(ix+127),c       ; 54AE DD CB 7F 91
        RES  2,(IX+127),C       ; 54B2 DD CB 7F 91
        res  2,(ix+-128),d      ; 54B6 DD CB 80 92
        RES  2,(IX+-128),D      ; 54BA DD CB 80 92
        res  2,(ix+-1),d        ; 54BE DD CB FF 92
        RES  2,(IX+-1),D        ; 54C2 DD CB FF 92
        res  2,(ix+0),d         ; 54C6 DD CB 00 92
        RES  2,(IX+0),D         ; 54CA DD CB 00 92
        res  2,(ix+127),d       ; 54CE DD CB 7F 92
        RES  2,(IX+127),D       ; 54D2 DD CB 7F 92
        res  2,(ix+-128),e      ; 54D6 DD CB 80 93
        RES  2,(IX+-128),E      ; 54DA DD CB 80 93
        res  2,(ix+-1),e        ; 54DE DD CB FF 93
        RES  2,(IX+-1),E        ; 54E2 DD CB FF 93
        res  2,(ix+0),e         ; 54E6 DD CB 00 93
        RES  2,(IX+0),E         ; 54EA DD CB 00 93
        res  2,(ix+127),e       ; 54EE DD CB 7F 93
        RES  2,(IX+127),E       ; 54F2 DD CB 7F 93
        res  2,(ix+-128),h      ; 54F6 DD CB 80 94
        RES  2,(IX+-128),H      ; 54FA DD CB 80 94
        res  2,(ix+-1),h        ; 54FE DD CB FF 94
        RES  2,(IX+-1),H        ; 5502 DD CB FF 94
        res  2,(ix+0),h         ; 5506 DD CB 00 94
        RES  2,(IX+0),H         ; 550A DD CB 00 94
        res  2,(ix+127),h       ; 550E DD CB 7F 94
        RES  2,(IX+127),H       ; 5512 DD CB 7F 94
        res  2,(ix+-128),l      ; 5516 DD CB 80 95
        RES  2,(IX+-128),L      ; 551A DD CB 80 95
        res  2,(ix+-1),l        ; 551E DD CB FF 95
        RES  2,(IX+-1),L        ; 5522 DD CB FF 95
        res  2,(ix+0),l         ; 5526 DD CB 00 95
        RES  2,(IX+0),L         ; 552A DD CB 00 95
        res  2,(ix+127),l       ; 552E DD CB 7F 95
        RES  2,(IX+127),L       ; 5532 DD CB 7F 95
        res  2,(iy+-128)        ; 5536 FD CB 80 96
        RES  2,(IY+-128)        ; 553A FD CB 80 96
        res  2,(iy+-1)          ; 553E FD CB FF 96
        RES  2,(IY+-1)          ; 5542 FD CB FF 96
        res  2,(iy+0)           ; 5546 FD CB 00 96
        RES  2,(IY+0)           ; 554A FD CB 00 96
        res  2,(iy+127)         ; 554E FD CB 7F 96
        RES  2,(IY+127)         ; 5552 FD CB 7F 96
        res  2,(iy+-128),a      ; 5556 FD CB 80 97
        RES  2,(IY+-128),A      ; 555A FD CB 80 97
        res  2,(iy+-1),a        ; 555E FD CB FF 97
        RES  2,(IY+-1),A        ; 5562 FD CB FF 97
        res  2,(iy+0),a         ; 5566 FD CB 00 97
        RES  2,(IY+0),A         ; 556A FD CB 00 97
        res  2,(iy+127),a       ; 556E FD CB 7F 97
        RES  2,(IY+127),A       ; 5572 FD CB 7F 97
        res  2,(iy+-128),b      ; 5576 FD CB 80 90
        RES  2,(IY+-128),B      ; 557A FD CB 80 90
        res  2,(iy+-1),b        ; 557E FD CB FF 90
        RES  2,(IY+-1),B        ; 5582 FD CB FF 90
        res  2,(iy+0),b         ; 5586 FD CB 00 90
        RES  2,(IY+0),B         ; 558A FD CB 00 90
        res  2,(iy+127),b       ; 558E FD CB 7F 90
        RES  2,(IY+127),B       ; 5592 FD CB 7F 90
        res  2,(iy+-128),c      ; 5596 FD CB 80 91
        RES  2,(IY+-128),C      ; 559A FD CB 80 91
        res  2,(iy+-1),c        ; 559E FD CB FF 91
        RES  2,(IY+-1),C        ; 55A2 FD CB FF 91
        res  2,(iy+0),c         ; 55A6 FD CB 00 91
        RES  2,(IY+0),C         ; 55AA FD CB 00 91
        res  2,(iy+127),c       ; 55AE FD CB 7F 91
        RES  2,(IY+127),C       ; 55B2 FD CB 7F 91
        res  2,(iy+-128),d      ; 55B6 FD CB 80 92
        RES  2,(IY+-128),D      ; 55BA FD CB 80 92
        res  2,(iy+-1),d        ; 55BE FD CB FF 92
        RES  2,(IY+-1),D        ; 55C2 FD CB FF 92
        res  2,(iy+0),d         ; 55C6 FD CB 00 92
        RES  2,(IY+0),D         ; 55CA FD CB 00 92
        res  2,(iy+127),d       ; 55CE FD CB 7F 92
        RES  2,(IY+127),D       ; 55D2 FD CB 7F 92
        res  2,(iy+-128),e      ; 55D6 FD CB 80 93
        RES  2,(IY+-128),E      ; 55DA FD CB 80 93
        res  2,(iy+-1),e        ; 55DE FD CB FF 93
        RES  2,(IY+-1),E        ; 55E2 FD CB FF 93
        res  2,(iy+0),e         ; 55E6 FD CB 00 93
        RES  2,(IY+0),E         ; 55EA FD CB 00 93
        res  2,(iy+127),e       ; 55EE FD CB 7F 93
        RES  2,(IY+127),E       ; 55F2 FD CB 7F 93
        res  2,(iy+-128),h      ; 55F6 FD CB 80 94
        RES  2,(IY+-128),H      ; 55FA FD CB 80 94
        res  2,(iy+-1),h        ; 55FE FD CB FF 94
        RES  2,(IY+-1),H        ; 5602 FD CB FF 94
        res  2,(iy+0),h         ; 5606 FD CB 00 94
        RES  2,(IY+0),H         ; 560A FD CB 00 94
        res  2,(iy+127),h       ; 560E FD CB 7F 94
        RES  2,(IY+127),H       ; 5612 FD CB 7F 94
        res  2,(iy+-128),l      ; 5616 FD CB 80 95
        RES  2,(IY+-128),L      ; 561A FD CB 80 95
        res  2,(iy+-1),l        ; 561E FD CB FF 95
        RES  2,(IY+-1),L        ; 5622 FD CB FF 95
        res  2,(iy+0),l         ; 5626 FD CB 00 95
        RES  2,(IY+0),L         ; 562A FD CB 00 95
        res  2,(iy+127),l       ; 562E FD CB 7F 95
        RES  2,(IY+127),L       ; 5632 FD CB 7F 95
        res  2,[hl]             ; 5636 CB 96
        RES  2,[HL]             ; 5638 CB 96
        res  2,[ix+-128]        ; 563A DD CB 80 96
        RES  2,[IX+-128]        ; 563E DD CB 80 96
        res  2,[ix+-1]          ; 5642 DD CB FF 96
        RES  2,[IX+-1]          ; 5646 DD CB FF 96
        res  2,[ix+0]           ; 564A DD CB 00 96
        RES  2,[IX+0]           ; 564E DD CB 00 96
        res  2,[ix+127]         ; 5652 DD CB 7F 96
        RES  2,[IX+127]         ; 5656 DD CB 7F 96
        res  2,[ix+-128],a      ; 565A DD CB 80 97
        RES  2,[IX+-128],A      ; 565E DD CB 80 97
        res  2,[ix+-1],a        ; 5662 DD CB FF 97
        RES  2,[IX+-1],A        ; 5666 DD CB FF 97
        res  2,[ix+0],a         ; 566A DD CB 00 97
        RES  2,[IX+0],A         ; 566E DD CB 00 97
        res  2,[ix+127],a       ; 5672 DD CB 7F 97
        RES  2,[IX+127],A       ; 5676 DD CB 7F 97
        res  2,[ix+-128],b      ; 567A DD CB 80 90
        RES  2,[IX+-128],B      ; 567E DD CB 80 90
        res  2,[ix+-1],b        ; 5682 DD CB FF 90
        RES  2,[IX+-1],B        ; 5686 DD CB FF 90
        res  2,[ix+0],b         ; 568A DD CB 00 90
        RES  2,[IX+0],B         ; 568E DD CB 00 90
        res  2,[ix+127],b       ; 5692 DD CB 7F 90
        RES  2,[IX+127],B       ; 5696 DD CB 7F 90
        res  2,[ix+-128],c      ; 569A DD CB 80 91
        RES  2,[IX+-128],C      ; 569E DD CB 80 91
        res  2,[ix+-1],c        ; 56A2 DD CB FF 91
        RES  2,[IX+-1],C        ; 56A6 DD CB FF 91
        res  2,[ix+0],c         ; 56AA DD CB 00 91
        RES  2,[IX+0],C         ; 56AE DD CB 00 91
        res  2,[ix+127],c       ; 56B2 DD CB 7F 91
        RES  2,[IX+127],C       ; 56B6 DD CB 7F 91
        res  2,[ix+-128],d      ; 56BA DD CB 80 92
        RES  2,[IX+-128],D      ; 56BE DD CB 80 92
        res  2,[ix+-1],d        ; 56C2 DD CB FF 92
        RES  2,[IX+-1],D        ; 56C6 DD CB FF 92
        res  2,[ix+0],d         ; 56CA DD CB 00 92
        RES  2,[IX+0],D         ; 56CE DD CB 00 92
        res  2,[ix+127],d       ; 56D2 DD CB 7F 92
        RES  2,[IX+127],D       ; 56D6 DD CB 7F 92
        res  2,[ix+-128],e      ; 56DA DD CB 80 93
        RES  2,[IX+-128],E      ; 56DE DD CB 80 93
        res  2,[ix+-1],e        ; 56E2 DD CB FF 93
        RES  2,[IX+-1],E        ; 56E6 DD CB FF 93
        res  2,[ix+0],e         ; 56EA DD CB 00 93
        RES  2,[IX+0],E         ; 56EE DD CB 00 93
        res  2,[ix+127],e       ; 56F2 DD CB 7F 93
        RES  2,[IX+127],E       ; 56F6 DD CB 7F 93
        res  2,[ix+-128],h      ; 56FA DD CB 80 94
        RES  2,[IX+-128],H      ; 56FE DD CB 80 94
        res  2,[ix+-1],h        ; 5702 DD CB FF 94
        RES  2,[IX+-1],H        ; 5706 DD CB FF 94
        res  2,[ix+0],h         ; 570A DD CB 00 94
        RES  2,[IX+0],H         ; 570E DD CB 00 94
        res  2,[ix+127],h       ; 5712 DD CB 7F 94
        RES  2,[IX+127],H       ; 5716 DD CB 7F 94
        res  2,[ix+-128],l      ; 571A DD CB 80 95
        RES  2,[IX+-128],L      ; 571E DD CB 80 95
        res  2,[ix+-1],l        ; 5722 DD CB FF 95
        RES  2,[IX+-1],L        ; 5726 DD CB FF 95
        res  2,[ix+0],l         ; 572A DD CB 00 95
        RES  2,[IX+0],L         ; 572E DD CB 00 95
        res  2,[ix+127],l       ; 5732 DD CB 7F 95
        RES  2,[IX+127],L       ; 5736 DD CB 7F 95
        res  2,[iy+-128]        ; 573A FD CB 80 96
        RES  2,[IY+-128]        ; 573E FD CB 80 96
        res  2,[iy+-1]          ; 5742 FD CB FF 96
        RES  2,[IY+-1]          ; 5746 FD CB FF 96
        res  2,[iy+0]           ; 574A FD CB 00 96
        RES  2,[IY+0]           ; 574E FD CB 00 96
        res  2,[iy+127]         ; 5752 FD CB 7F 96
        RES  2,[IY+127]         ; 5756 FD CB 7F 96
        res  2,[iy+-128],a      ; 575A FD CB 80 97
        RES  2,[IY+-128],A      ; 575E FD CB 80 97
        res  2,[iy+-1],a        ; 5762 FD CB FF 97
        RES  2,[IY+-1],A        ; 5766 FD CB FF 97
        res  2,[iy+0],a         ; 576A FD CB 00 97
        RES  2,[IY+0],A         ; 576E FD CB 00 97
        res  2,[iy+127],a       ; 5772 FD CB 7F 97
        RES  2,[IY+127],A       ; 5776 FD CB 7F 97
        res  2,[iy+-128],b      ; 577A FD CB 80 90
        RES  2,[IY+-128],B      ; 577E FD CB 80 90
        res  2,[iy+-1],b        ; 5782 FD CB FF 90
        RES  2,[IY+-1],B        ; 5786 FD CB FF 90
        res  2,[iy+0],b         ; 578A FD CB 00 90
        RES  2,[IY+0],B         ; 578E FD CB 00 90
        res  2,[iy+127],b       ; 5792 FD CB 7F 90
        RES  2,[IY+127],B       ; 5796 FD CB 7F 90
        res  2,[iy+-128],c      ; 579A FD CB 80 91
        RES  2,[IY+-128],C      ; 579E FD CB 80 91
        res  2,[iy+-1],c        ; 57A2 FD CB FF 91
        RES  2,[IY+-1],C        ; 57A6 FD CB FF 91
        res  2,[iy+0],c         ; 57AA FD CB 00 91
        RES  2,[IY+0],C         ; 57AE FD CB 00 91
        res  2,[iy+127],c       ; 57B2 FD CB 7F 91
        RES  2,[IY+127],C       ; 57B6 FD CB 7F 91
        res  2,[iy+-128],d      ; 57BA FD CB 80 92
        RES  2,[IY+-128],D      ; 57BE FD CB 80 92
        res  2,[iy+-1],d        ; 57C2 FD CB FF 92
        RES  2,[IY+-1],D        ; 57C6 FD CB FF 92
        res  2,[iy+0],d         ; 57CA FD CB 00 92
        RES  2,[IY+0],D         ; 57CE FD CB 00 92
        res  2,[iy+127],d       ; 57D2 FD CB 7F 92
        RES  2,[IY+127],D       ; 57D6 FD CB 7F 92
        res  2,[iy+-128],e      ; 57DA FD CB 80 93
        RES  2,[IY+-128],E      ; 57DE FD CB 80 93
        res  2,[iy+-1],e        ; 57E2 FD CB FF 93
        RES  2,[IY+-1],E        ; 57E6 FD CB FF 93
        res  2,[iy+0],e         ; 57EA FD CB 00 93
        RES  2,[IY+0],E         ; 57EE FD CB 00 93
        res  2,[iy+127],e       ; 57F2 FD CB 7F 93
        RES  2,[IY+127],E       ; 57F6 FD CB 7F 93
        res  2,[iy+-128],h      ; 57FA FD CB 80 94
        RES  2,[IY+-128],H      ; 57FE FD CB 80 94
        res  2,[iy+-1],h        ; 5802 FD CB FF 94
        RES  2,[IY+-1],H        ; 5806 FD CB FF 94
        res  2,[iy+0],h         ; 580A FD CB 00 94
        RES  2,[IY+0],H         ; 580E FD CB 00 94
        res  2,[iy+127],h       ; 5812 FD CB 7F 94
        RES  2,[IY+127],H       ; 5816 FD CB 7F 94
        res  2,[iy+-128],l      ; 581A FD CB 80 95
        RES  2,[IY+-128],L      ; 581E FD CB 80 95
        res  2,[iy+-1],l        ; 5822 FD CB FF 95
        RES  2,[IY+-1],L        ; 5826 FD CB FF 95
        res  2,[iy+0],l         ; 582A FD CB 00 95
        RES  2,[IY+0],L         ; 582E FD CB 00 95
        res  2,[iy+127],l       ; 5832 FD CB 7F 95
        RES  2,[IY+127],L       ; 5836 FD CB 7F 95
        res  2,a                ; 583A CB 97
        RES  2,A                ; 583C CB 97
        res  2,b                ; 583E CB 90
        RES  2,B                ; 5840 CB 90
        res  2,c                ; 5842 CB 91
        RES  2,C                ; 5844 CB 91
        res  2,d                ; 5846 CB 92
        RES  2,D                ; 5848 CB 92
        res  2,e                ; 584A CB 93
        RES  2,E                ; 584C CB 93
        res  2,h                ; 584E CB 94
        RES  2,H                ; 5850 CB 94
        res  2,l                ; 5852 CB 95
        RES  2,L                ; 5854 CB 95
        res  3,(hl)             ; 5856 CB 9E
        RES  3,(HL)             ; 5858 CB 9E
        res  3,(ix+-128)        ; 585A DD CB 80 9E
        RES  3,(IX+-128)        ; 585E DD CB 80 9E
        res  3,(ix+-1)          ; 5862 DD CB FF 9E
        RES  3,(IX+-1)          ; 5866 DD CB FF 9E
        res  3,(ix+0)           ; 586A DD CB 00 9E
        RES  3,(IX+0)           ; 586E DD CB 00 9E
        res  3,(ix+127)         ; 5872 DD CB 7F 9E
        RES  3,(IX+127)         ; 5876 DD CB 7F 9E
        res  3,(ix+-128),a      ; 587A DD CB 80 9F
        RES  3,(IX+-128),A      ; 587E DD CB 80 9F
        res  3,(ix+-1),a        ; 5882 DD CB FF 9F
        RES  3,(IX+-1),A        ; 5886 DD CB FF 9F
        res  3,(ix+0),a         ; 588A DD CB 00 9F
        RES  3,(IX+0),A         ; 588E DD CB 00 9F
        res  3,(ix+127),a       ; 5892 DD CB 7F 9F
        RES  3,(IX+127),A       ; 5896 DD CB 7F 9F
        res  3,(ix+-128),b      ; 589A DD CB 80 98
        RES  3,(IX+-128),B      ; 589E DD CB 80 98
        res  3,(ix+-1),b        ; 58A2 DD CB FF 98
        RES  3,(IX+-1),B        ; 58A6 DD CB FF 98
        res  3,(ix+0),b         ; 58AA DD CB 00 98
        RES  3,(IX+0),B         ; 58AE DD CB 00 98
        res  3,(ix+127),b       ; 58B2 DD CB 7F 98
        RES  3,(IX+127),B       ; 58B6 DD CB 7F 98
        res  3,(ix+-128),c      ; 58BA DD CB 80 99
        RES  3,(IX+-128),C      ; 58BE DD CB 80 99
        res  3,(ix+-1),c        ; 58C2 DD CB FF 99
        RES  3,(IX+-1),C        ; 58C6 DD CB FF 99
        res  3,(ix+0),c         ; 58CA DD CB 00 99
        RES  3,(IX+0),C         ; 58CE DD CB 00 99
        res  3,(ix+127),c       ; 58D2 DD CB 7F 99
        RES  3,(IX+127),C       ; 58D6 DD CB 7F 99
        res  3,(ix+-128),d      ; 58DA DD CB 80 9A
        RES  3,(IX+-128),D      ; 58DE DD CB 80 9A
        res  3,(ix+-1),d        ; 58E2 DD CB FF 9A
        RES  3,(IX+-1),D        ; 58E6 DD CB FF 9A
        res  3,(ix+0),d         ; 58EA DD CB 00 9A
        RES  3,(IX+0),D         ; 58EE DD CB 00 9A
        res  3,(ix+127),d       ; 58F2 DD CB 7F 9A
        RES  3,(IX+127),D       ; 58F6 DD CB 7F 9A
        res  3,(ix+-128),e      ; 58FA DD CB 80 9B
        RES  3,(IX+-128),E      ; 58FE DD CB 80 9B
        res  3,(ix+-1),e        ; 5902 DD CB FF 9B
        RES  3,(IX+-1),E        ; 5906 DD CB FF 9B
        res  3,(ix+0),e         ; 590A DD CB 00 9B
        RES  3,(IX+0),E         ; 590E DD CB 00 9B
        res  3,(ix+127),e       ; 5912 DD CB 7F 9B
        RES  3,(IX+127),E       ; 5916 DD CB 7F 9B
        res  3,(ix+-128),h      ; 591A DD CB 80 9C
        RES  3,(IX+-128),H      ; 591E DD CB 80 9C
        res  3,(ix+-1),h        ; 5922 DD CB FF 9C
        RES  3,(IX+-1),H        ; 5926 DD CB FF 9C
        res  3,(ix+0),h         ; 592A DD CB 00 9C
        RES  3,(IX+0),H         ; 592E DD CB 00 9C
        res  3,(ix+127),h       ; 5932 DD CB 7F 9C
        RES  3,(IX+127),H       ; 5936 DD CB 7F 9C
        res  3,(ix+-128),l      ; 593A DD CB 80 9D
        RES  3,(IX+-128),L      ; 593E DD CB 80 9D
        res  3,(ix+-1),l        ; 5942 DD CB FF 9D
        RES  3,(IX+-1),L        ; 5946 DD CB FF 9D
        res  3,(ix+0),l         ; 594A DD CB 00 9D
        RES  3,(IX+0),L         ; 594E DD CB 00 9D
        res  3,(ix+127),l       ; 5952 DD CB 7F 9D
        RES  3,(IX+127),L       ; 5956 DD CB 7F 9D
        res  3,(iy+-128)        ; 595A FD CB 80 9E
        RES  3,(IY+-128)        ; 595E FD CB 80 9E
        res  3,(iy+-1)          ; 5962 FD CB FF 9E
        RES  3,(IY+-1)          ; 5966 FD CB FF 9E
        res  3,(iy+0)           ; 596A FD CB 00 9E
        RES  3,(IY+0)           ; 596E FD CB 00 9E
        res  3,(iy+127)         ; 5972 FD CB 7F 9E
        RES  3,(IY+127)         ; 5976 FD CB 7F 9E
        res  3,(iy+-128),a      ; 597A FD CB 80 9F
        RES  3,(IY+-128),A      ; 597E FD CB 80 9F
        res  3,(iy+-1),a        ; 5982 FD CB FF 9F
        RES  3,(IY+-1),A        ; 5986 FD CB FF 9F
        res  3,(iy+0),a         ; 598A FD CB 00 9F
        RES  3,(IY+0),A         ; 598E FD CB 00 9F
        res  3,(iy+127),a       ; 5992 FD CB 7F 9F
        RES  3,(IY+127),A       ; 5996 FD CB 7F 9F
        res  3,(iy+-128),b      ; 599A FD CB 80 98
        RES  3,(IY+-128),B      ; 599E FD CB 80 98
        res  3,(iy+-1),b        ; 59A2 FD CB FF 98
        RES  3,(IY+-1),B        ; 59A6 FD CB FF 98
        res  3,(iy+0),b         ; 59AA FD CB 00 98
        RES  3,(IY+0),B         ; 59AE FD CB 00 98
        res  3,(iy+127),b       ; 59B2 FD CB 7F 98
        RES  3,(IY+127),B       ; 59B6 FD CB 7F 98
        res  3,(iy+-128),c      ; 59BA FD CB 80 99
        RES  3,(IY+-128),C      ; 59BE FD CB 80 99
        res  3,(iy+-1),c        ; 59C2 FD CB FF 99
        RES  3,(IY+-1),C        ; 59C6 FD CB FF 99
        res  3,(iy+0),c         ; 59CA FD CB 00 99
        RES  3,(IY+0),C         ; 59CE FD CB 00 99
        res  3,(iy+127),c       ; 59D2 FD CB 7F 99
        RES  3,(IY+127),C       ; 59D6 FD CB 7F 99
        res  3,(iy+-128),d      ; 59DA FD CB 80 9A
        RES  3,(IY+-128),D      ; 59DE FD CB 80 9A
        res  3,(iy+-1),d        ; 59E2 FD CB FF 9A
        RES  3,(IY+-1),D        ; 59E6 FD CB FF 9A
        res  3,(iy+0),d         ; 59EA FD CB 00 9A
        RES  3,(IY+0),D         ; 59EE FD CB 00 9A
        res  3,(iy+127),d       ; 59F2 FD CB 7F 9A
        RES  3,(IY+127),D       ; 59F6 FD CB 7F 9A
        res  3,(iy+-128),e      ; 59FA FD CB 80 9B
        RES  3,(IY+-128),E      ; 59FE FD CB 80 9B
        res  3,(iy+-1),e        ; 5A02 FD CB FF 9B
        RES  3,(IY+-1),E        ; 5A06 FD CB FF 9B
        res  3,(iy+0),e         ; 5A0A FD CB 00 9B
        RES  3,(IY+0),E         ; 5A0E FD CB 00 9B
        res  3,(iy+127),e       ; 5A12 FD CB 7F 9B
        RES  3,(IY+127),E       ; 5A16 FD CB 7F 9B
        res  3,(iy+-128),h      ; 5A1A FD CB 80 9C
        RES  3,(IY+-128),H      ; 5A1E FD CB 80 9C
        res  3,(iy+-1),h        ; 5A22 FD CB FF 9C
        RES  3,(IY+-1),H        ; 5A26 FD CB FF 9C
        res  3,(iy+0),h         ; 5A2A FD CB 00 9C
        RES  3,(IY+0),H         ; 5A2E FD CB 00 9C
        res  3,(iy+127),h       ; 5A32 FD CB 7F 9C
        RES  3,(IY+127),H       ; 5A36 FD CB 7F 9C
        res  3,(iy+-128),l      ; 5A3A FD CB 80 9D
        RES  3,(IY+-128),L      ; 5A3E FD CB 80 9D
        res  3,(iy+-1),l        ; 5A42 FD CB FF 9D
        RES  3,(IY+-1),L        ; 5A46 FD CB FF 9D
        res  3,(iy+0),l         ; 5A4A FD CB 00 9D
        RES  3,(IY+0),L         ; 5A4E FD CB 00 9D
        res  3,(iy+127),l       ; 5A52 FD CB 7F 9D
        RES  3,(IY+127),L       ; 5A56 FD CB 7F 9D
        res  3,[hl]             ; 5A5A CB 9E
        RES  3,[HL]             ; 5A5C CB 9E
        res  3,[ix+-128]        ; 5A5E DD CB 80 9E
        RES  3,[IX+-128]        ; 5A62 DD CB 80 9E
        res  3,[ix+-1]          ; 5A66 DD CB FF 9E
        RES  3,[IX+-1]          ; 5A6A DD CB FF 9E
        res  3,[ix+0]           ; 5A6E DD CB 00 9E
        RES  3,[IX+0]           ; 5A72 DD CB 00 9E
        res  3,[ix+127]         ; 5A76 DD CB 7F 9E
        RES  3,[IX+127]         ; 5A7A DD CB 7F 9E
        res  3,[ix+-128],a      ; 5A7E DD CB 80 9F
        RES  3,[IX+-128],A      ; 5A82 DD CB 80 9F
        res  3,[ix+-1],a        ; 5A86 DD CB FF 9F
        RES  3,[IX+-1],A        ; 5A8A DD CB FF 9F
        res  3,[ix+0],a         ; 5A8E DD CB 00 9F
        RES  3,[IX+0],A         ; 5A92 DD CB 00 9F
        res  3,[ix+127],a       ; 5A96 DD CB 7F 9F
        RES  3,[IX+127],A       ; 5A9A DD CB 7F 9F
        res  3,[ix+-128],b      ; 5A9E DD CB 80 98
        RES  3,[IX+-128],B      ; 5AA2 DD CB 80 98
        res  3,[ix+-1],b        ; 5AA6 DD CB FF 98
        RES  3,[IX+-1],B        ; 5AAA DD CB FF 98
        res  3,[ix+0],b         ; 5AAE DD CB 00 98
        RES  3,[IX+0],B         ; 5AB2 DD CB 00 98
        res  3,[ix+127],b       ; 5AB6 DD CB 7F 98
        RES  3,[IX+127],B       ; 5ABA DD CB 7F 98
        res  3,[ix+-128],c      ; 5ABE DD CB 80 99
        RES  3,[IX+-128],C      ; 5AC2 DD CB 80 99
        res  3,[ix+-1],c        ; 5AC6 DD CB FF 99
        RES  3,[IX+-1],C        ; 5ACA DD CB FF 99
        res  3,[ix+0],c         ; 5ACE DD CB 00 99
        RES  3,[IX+0],C         ; 5AD2 DD CB 00 99
        res  3,[ix+127],c       ; 5AD6 DD CB 7F 99
        RES  3,[IX+127],C       ; 5ADA DD CB 7F 99
        res  3,[ix+-128],d      ; 5ADE DD CB 80 9A
        RES  3,[IX+-128],D      ; 5AE2 DD CB 80 9A
        res  3,[ix+-1],d        ; 5AE6 DD CB FF 9A
        RES  3,[IX+-1],D        ; 5AEA DD CB FF 9A
        res  3,[ix+0],d         ; 5AEE DD CB 00 9A
        RES  3,[IX+0],D         ; 5AF2 DD CB 00 9A
        res  3,[ix+127],d       ; 5AF6 DD CB 7F 9A
        RES  3,[IX+127],D       ; 5AFA DD CB 7F 9A
        res  3,[ix+-128],e      ; 5AFE DD CB 80 9B
        RES  3,[IX+-128],E      ; 5B02 DD CB 80 9B
        res  3,[ix+-1],e        ; 5B06 DD CB FF 9B
        RES  3,[IX+-1],E        ; 5B0A DD CB FF 9B
        res  3,[ix+0],e         ; 5B0E DD CB 00 9B
        RES  3,[IX+0],E         ; 5B12 DD CB 00 9B
        res  3,[ix+127],e       ; 5B16 DD CB 7F 9B
        RES  3,[IX+127],E       ; 5B1A DD CB 7F 9B
        res  3,[ix+-128],h      ; 5B1E DD CB 80 9C
        RES  3,[IX+-128],H      ; 5B22 DD CB 80 9C
        res  3,[ix+-1],h        ; 5B26 DD CB FF 9C
        RES  3,[IX+-1],H        ; 5B2A DD CB FF 9C
        res  3,[ix+0],h         ; 5B2E DD CB 00 9C
        RES  3,[IX+0],H         ; 5B32 DD CB 00 9C
        res  3,[ix+127],h       ; 5B36 DD CB 7F 9C
        RES  3,[IX+127],H       ; 5B3A DD CB 7F 9C
        res  3,[ix+-128],l      ; 5B3E DD CB 80 9D
        RES  3,[IX+-128],L      ; 5B42 DD CB 80 9D
        res  3,[ix+-1],l        ; 5B46 DD CB FF 9D
        RES  3,[IX+-1],L        ; 5B4A DD CB FF 9D
        res  3,[ix+0],l         ; 5B4E DD CB 00 9D
        RES  3,[IX+0],L         ; 5B52 DD CB 00 9D
        res  3,[ix+127],l       ; 5B56 DD CB 7F 9D
        RES  3,[IX+127],L       ; 5B5A DD CB 7F 9D
        res  3,[iy+-128]        ; 5B5E FD CB 80 9E
        RES  3,[IY+-128]        ; 5B62 FD CB 80 9E
        res  3,[iy+-1]          ; 5B66 FD CB FF 9E
        RES  3,[IY+-1]          ; 5B6A FD CB FF 9E
        res  3,[iy+0]           ; 5B6E FD CB 00 9E
        RES  3,[IY+0]           ; 5B72 FD CB 00 9E
        res  3,[iy+127]         ; 5B76 FD CB 7F 9E
        RES  3,[IY+127]         ; 5B7A FD CB 7F 9E
        res  3,[iy+-128],a      ; 5B7E FD CB 80 9F
        RES  3,[IY+-128],A      ; 5B82 FD CB 80 9F
        res  3,[iy+-1],a        ; 5B86 FD CB FF 9F
        RES  3,[IY+-1],A        ; 5B8A FD CB FF 9F
        res  3,[iy+0],a         ; 5B8E FD CB 00 9F
        RES  3,[IY+0],A         ; 5B92 FD CB 00 9F
        res  3,[iy+127],a       ; 5B96 FD CB 7F 9F
        RES  3,[IY+127],A       ; 5B9A FD CB 7F 9F
        res  3,[iy+-128],b      ; 5B9E FD CB 80 98
        RES  3,[IY+-128],B      ; 5BA2 FD CB 80 98
        res  3,[iy+-1],b        ; 5BA6 FD CB FF 98
        RES  3,[IY+-1],B        ; 5BAA FD CB FF 98
        res  3,[iy+0],b         ; 5BAE FD CB 00 98
        RES  3,[IY+0],B         ; 5BB2 FD CB 00 98
        res  3,[iy+127],b       ; 5BB6 FD CB 7F 98
        RES  3,[IY+127],B       ; 5BBA FD CB 7F 98
        res  3,[iy+-128],c      ; 5BBE FD CB 80 99
        RES  3,[IY+-128],C      ; 5BC2 FD CB 80 99
        res  3,[iy+-1],c        ; 5BC6 FD CB FF 99
        RES  3,[IY+-1],C        ; 5BCA FD CB FF 99
        res  3,[iy+0],c         ; 5BCE FD CB 00 99
        RES  3,[IY+0],C         ; 5BD2 FD CB 00 99
        res  3,[iy+127],c       ; 5BD6 FD CB 7F 99
        RES  3,[IY+127],C       ; 5BDA FD CB 7F 99
        res  3,[iy+-128],d      ; 5BDE FD CB 80 9A
        RES  3,[IY+-128],D      ; 5BE2 FD CB 80 9A
        res  3,[iy+-1],d        ; 5BE6 FD CB FF 9A
        RES  3,[IY+-1],D        ; 5BEA FD CB FF 9A
        res  3,[iy+0],d         ; 5BEE FD CB 00 9A
        RES  3,[IY+0],D         ; 5BF2 FD CB 00 9A
        res  3,[iy+127],d       ; 5BF6 FD CB 7F 9A
        RES  3,[IY+127],D       ; 5BFA FD CB 7F 9A
        res  3,[iy+-128],e      ; 5BFE FD CB 80 9B
        RES  3,[IY+-128],E      ; 5C02 FD CB 80 9B
        res  3,[iy+-1],e        ; 5C06 FD CB FF 9B
        RES  3,[IY+-1],E        ; 5C0A FD CB FF 9B
        res  3,[iy+0],e         ; 5C0E FD CB 00 9B
        RES  3,[IY+0],E         ; 5C12 FD CB 00 9B
        res  3,[iy+127],e       ; 5C16 FD CB 7F 9B
        RES  3,[IY+127],E       ; 5C1A FD CB 7F 9B
        res  3,[iy+-128],h      ; 5C1E FD CB 80 9C
        RES  3,[IY+-128],H      ; 5C22 FD CB 80 9C
        res  3,[iy+-1],h        ; 5C26 FD CB FF 9C
        RES  3,[IY+-1],H        ; 5C2A FD CB FF 9C
        res  3,[iy+0],h         ; 5C2E FD CB 00 9C
        RES  3,[IY+0],H         ; 5C32 FD CB 00 9C
        res  3,[iy+127],h       ; 5C36 FD CB 7F 9C
        RES  3,[IY+127],H       ; 5C3A FD CB 7F 9C
        res  3,[iy+-128],l      ; 5C3E FD CB 80 9D
        RES  3,[IY+-128],L      ; 5C42 FD CB 80 9D
        res  3,[iy+-1],l        ; 5C46 FD CB FF 9D
        RES  3,[IY+-1],L        ; 5C4A FD CB FF 9D
        res  3,[iy+0],l         ; 5C4E FD CB 00 9D
        RES  3,[IY+0],L         ; 5C52 FD CB 00 9D
        res  3,[iy+127],l       ; 5C56 FD CB 7F 9D
        RES  3,[IY+127],L       ; 5C5A FD CB 7F 9D
        res  3,a                ; 5C5E CB 9F
        RES  3,A                ; 5C60 CB 9F
        res  3,b                ; 5C62 CB 98
        RES  3,B                ; 5C64 CB 98
        res  3,c                ; 5C66 CB 99
        RES  3,C                ; 5C68 CB 99
        res  3,d                ; 5C6A CB 9A
        RES  3,D                ; 5C6C CB 9A
        res  3,e                ; 5C6E CB 9B
        RES  3,E                ; 5C70 CB 9B
        res  3,h                ; 5C72 CB 9C
        RES  3,H                ; 5C74 CB 9C
        res  3,l                ; 5C76 CB 9D
        RES  3,L                ; 5C78 CB 9D
        res  4,(hl)             ; 5C7A CB A6
        RES  4,(HL)             ; 5C7C CB A6
        res  4,(ix+-128)        ; 5C7E DD CB 80 A6
        RES  4,(IX+-128)        ; 5C82 DD CB 80 A6
        res  4,(ix+-1)          ; 5C86 DD CB FF A6
        RES  4,(IX+-1)          ; 5C8A DD CB FF A6
        res  4,(ix+0)           ; 5C8E DD CB 00 A6
        RES  4,(IX+0)           ; 5C92 DD CB 00 A6
        res  4,(ix+127)         ; 5C96 DD CB 7F A6
        RES  4,(IX+127)         ; 5C9A DD CB 7F A6
        res  4,(ix+-128),a      ; 5C9E DD CB 80 A7
        RES  4,(IX+-128),A      ; 5CA2 DD CB 80 A7
        res  4,(ix+-1),a        ; 5CA6 DD CB FF A7
        RES  4,(IX+-1),A        ; 5CAA DD CB FF A7
        res  4,(ix+0),a         ; 5CAE DD CB 00 A7
        RES  4,(IX+0),A         ; 5CB2 DD CB 00 A7
        res  4,(ix+127),a       ; 5CB6 DD CB 7F A7
        RES  4,(IX+127),A       ; 5CBA DD CB 7F A7
        res  4,(ix+-128),b      ; 5CBE DD CB 80 A0
        RES  4,(IX+-128),B      ; 5CC2 DD CB 80 A0
        res  4,(ix+-1),b        ; 5CC6 DD CB FF A0
        RES  4,(IX+-1),B        ; 5CCA DD CB FF A0
        res  4,(ix+0),b         ; 5CCE DD CB 00 A0
        RES  4,(IX+0),B         ; 5CD2 DD CB 00 A0
        res  4,(ix+127),b       ; 5CD6 DD CB 7F A0
        RES  4,(IX+127),B       ; 5CDA DD CB 7F A0
        res  4,(ix+-128),c      ; 5CDE DD CB 80 A1
        RES  4,(IX+-128),C      ; 5CE2 DD CB 80 A1
        res  4,(ix+-1),c        ; 5CE6 DD CB FF A1
        RES  4,(IX+-1),C        ; 5CEA DD CB FF A1
        res  4,(ix+0),c         ; 5CEE DD CB 00 A1
        RES  4,(IX+0),C         ; 5CF2 DD CB 00 A1
        res  4,(ix+127),c       ; 5CF6 DD CB 7F A1
        RES  4,(IX+127),C       ; 5CFA DD CB 7F A1
        res  4,(ix+-128),d      ; 5CFE DD CB 80 A2
        RES  4,(IX+-128),D      ; 5D02 DD CB 80 A2
        res  4,(ix+-1),d        ; 5D06 DD CB FF A2
        RES  4,(IX+-1),D        ; 5D0A DD CB FF A2
        res  4,(ix+0),d         ; 5D0E DD CB 00 A2
        RES  4,(IX+0),D         ; 5D12 DD CB 00 A2
        res  4,(ix+127),d       ; 5D16 DD CB 7F A2
        RES  4,(IX+127),D       ; 5D1A DD CB 7F A2
        res  4,(ix+-128),e      ; 5D1E DD CB 80 A3
        RES  4,(IX+-128),E      ; 5D22 DD CB 80 A3
        res  4,(ix+-1),e        ; 5D26 DD CB FF A3
        RES  4,(IX+-1),E        ; 5D2A DD CB FF A3
        res  4,(ix+0),e         ; 5D2E DD CB 00 A3
        RES  4,(IX+0),E         ; 5D32 DD CB 00 A3
        res  4,(ix+127),e       ; 5D36 DD CB 7F A3
        RES  4,(IX+127),E       ; 5D3A DD CB 7F A3
        res  4,(ix+-128),h      ; 5D3E DD CB 80 A4
        RES  4,(IX+-128),H      ; 5D42 DD CB 80 A4
        res  4,(ix+-1),h        ; 5D46 DD CB FF A4
        RES  4,(IX+-1),H        ; 5D4A DD CB FF A4
        res  4,(ix+0),h         ; 5D4E DD CB 00 A4
        RES  4,(IX+0),H         ; 5D52 DD CB 00 A4
        res  4,(ix+127),h       ; 5D56 DD CB 7F A4
        RES  4,(IX+127),H       ; 5D5A DD CB 7F A4
        res  4,(ix+-128),l      ; 5D5E DD CB 80 A5
        RES  4,(IX+-128),L      ; 5D62 DD CB 80 A5
        res  4,(ix+-1),l        ; 5D66 DD CB FF A5
        RES  4,(IX+-1),L        ; 5D6A DD CB FF A5
        res  4,(ix+0),l         ; 5D6E DD CB 00 A5
        RES  4,(IX+0),L         ; 5D72 DD CB 00 A5
        res  4,(ix+127),l       ; 5D76 DD CB 7F A5
        RES  4,(IX+127),L       ; 5D7A DD CB 7F A5
        res  4,(iy+-128)        ; 5D7E FD CB 80 A6
        RES  4,(IY+-128)        ; 5D82 FD CB 80 A6
        res  4,(iy+-1)          ; 5D86 FD CB FF A6
        RES  4,(IY+-1)          ; 5D8A FD CB FF A6
        res  4,(iy+0)           ; 5D8E FD CB 00 A6
        RES  4,(IY+0)           ; 5D92 FD CB 00 A6
        res  4,(iy+127)         ; 5D96 FD CB 7F A6
        RES  4,(IY+127)         ; 5D9A FD CB 7F A6
        res  4,(iy+-128),a      ; 5D9E FD CB 80 A7
        RES  4,(IY+-128),A      ; 5DA2 FD CB 80 A7
        res  4,(iy+-1),a        ; 5DA6 FD CB FF A7
        RES  4,(IY+-1),A        ; 5DAA FD CB FF A7
        res  4,(iy+0),a         ; 5DAE FD CB 00 A7
        RES  4,(IY+0),A         ; 5DB2 FD CB 00 A7
        res  4,(iy+127),a       ; 5DB6 FD CB 7F A7
        RES  4,(IY+127),A       ; 5DBA FD CB 7F A7
        res  4,(iy+-128),b      ; 5DBE FD CB 80 A0
        RES  4,(IY+-128),B      ; 5DC2 FD CB 80 A0
        res  4,(iy+-1),b        ; 5DC6 FD CB FF A0
        RES  4,(IY+-1),B        ; 5DCA FD CB FF A0
        res  4,(iy+0),b         ; 5DCE FD CB 00 A0
        RES  4,(IY+0),B         ; 5DD2 FD CB 00 A0
        res  4,(iy+127),b       ; 5DD6 FD CB 7F A0
        RES  4,(IY+127),B       ; 5DDA FD CB 7F A0
        res  4,(iy+-128),c      ; 5DDE FD CB 80 A1
        RES  4,(IY+-128),C      ; 5DE2 FD CB 80 A1
        res  4,(iy+-1),c        ; 5DE6 FD CB FF A1
        RES  4,(IY+-1),C        ; 5DEA FD CB FF A1
        res  4,(iy+0),c         ; 5DEE FD CB 00 A1
        RES  4,(IY+0),C         ; 5DF2 FD CB 00 A1
        res  4,(iy+127),c       ; 5DF6 FD CB 7F A1
        RES  4,(IY+127),C       ; 5DFA FD CB 7F A1
        res  4,(iy+-128),d      ; 5DFE FD CB 80 A2
        RES  4,(IY+-128),D      ; 5E02 FD CB 80 A2
        res  4,(iy+-1),d        ; 5E06 FD CB FF A2
        RES  4,(IY+-1),D        ; 5E0A FD CB FF A2
        res  4,(iy+0),d         ; 5E0E FD CB 00 A2
        RES  4,(IY+0),D         ; 5E12 FD CB 00 A2
        res  4,(iy+127),d       ; 5E16 FD CB 7F A2
        RES  4,(IY+127),D       ; 5E1A FD CB 7F A2
        res  4,(iy+-128),e      ; 5E1E FD CB 80 A3
        RES  4,(IY+-128),E      ; 5E22 FD CB 80 A3
        res  4,(iy+-1),e        ; 5E26 FD CB FF A3
        RES  4,(IY+-1),E        ; 5E2A FD CB FF A3
        res  4,(iy+0),e         ; 5E2E FD CB 00 A3
        RES  4,(IY+0),E         ; 5E32 FD CB 00 A3
        res  4,(iy+127),e       ; 5E36 FD CB 7F A3
        RES  4,(IY+127),E       ; 5E3A FD CB 7F A3
        res  4,(iy+-128),h      ; 5E3E FD CB 80 A4
        RES  4,(IY+-128),H      ; 5E42 FD CB 80 A4
        res  4,(iy+-1),h        ; 5E46 FD CB FF A4
        RES  4,(IY+-1),H        ; 5E4A FD CB FF A4
        res  4,(iy+0),h         ; 5E4E FD CB 00 A4
        RES  4,(IY+0),H         ; 5E52 FD CB 00 A4
        res  4,(iy+127),h       ; 5E56 FD CB 7F A4
        RES  4,(IY+127),H       ; 5E5A FD CB 7F A4
        res  4,(iy+-128),l      ; 5E5E FD CB 80 A5
        RES  4,(IY+-128),L      ; 5E62 FD CB 80 A5
        res  4,(iy+-1),l        ; 5E66 FD CB FF A5
        RES  4,(IY+-1),L        ; 5E6A FD CB FF A5
        res  4,(iy+0),l         ; 5E6E FD CB 00 A5
        RES  4,(IY+0),L         ; 5E72 FD CB 00 A5
        res  4,(iy+127),l       ; 5E76 FD CB 7F A5
        RES  4,(IY+127),L       ; 5E7A FD CB 7F A5
        res  4,[hl]             ; 5E7E CB A6
        RES  4,[HL]             ; 5E80 CB A6
        res  4,[ix+-128]        ; 5E82 DD CB 80 A6
        RES  4,[IX+-128]        ; 5E86 DD CB 80 A6
        res  4,[ix+-1]          ; 5E8A DD CB FF A6
        RES  4,[IX+-1]          ; 5E8E DD CB FF A6
        res  4,[ix+0]           ; 5E92 DD CB 00 A6
        RES  4,[IX+0]           ; 5E96 DD CB 00 A6
        res  4,[ix+127]         ; 5E9A DD CB 7F A6
        RES  4,[IX+127]         ; 5E9E DD CB 7F A6
        res  4,[ix+-128],a      ; 5EA2 DD CB 80 A7
        RES  4,[IX+-128],A      ; 5EA6 DD CB 80 A7
        res  4,[ix+-1],a        ; 5EAA DD CB FF A7
        RES  4,[IX+-1],A        ; 5EAE DD CB FF A7
        res  4,[ix+0],a         ; 5EB2 DD CB 00 A7
        RES  4,[IX+0],A         ; 5EB6 DD CB 00 A7
        res  4,[ix+127],a       ; 5EBA DD CB 7F A7
        RES  4,[IX+127],A       ; 5EBE DD CB 7F A7
        res  4,[ix+-128],b      ; 5EC2 DD CB 80 A0
        RES  4,[IX+-128],B      ; 5EC6 DD CB 80 A0
        res  4,[ix+-1],b        ; 5ECA DD CB FF A0
        RES  4,[IX+-1],B        ; 5ECE DD CB FF A0
        res  4,[ix+0],b         ; 5ED2 DD CB 00 A0
        RES  4,[IX+0],B         ; 5ED6 DD CB 00 A0
        res  4,[ix+127],b       ; 5EDA DD CB 7F A0
        RES  4,[IX+127],B       ; 5EDE DD CB 7F A0
        res  4,[ix+-128],c      ; 5EE2 DD CB 80 A1
        RES  4,[IX+-128],C      ; 5EE6 DD CB 80 A1
        res  4,[ix+-1],c        ; 5EEA DD CB FF A1
        RES  4,[IX+-1],C        ; 5EEE DD CB FF A1
        res  4,[ix+0],c         ; 5EF2 DD CB 00 A1
        RES  4,[IX+0],C         ; 5EF6 DD CB 00 A1
        res  4,[ix+127],c       ; 5EFA DD CB 7F A1
        RES  4,[IX+127],C       ; 5EFE DD CB 7F A1
        res  4,[ix+-128],d      ; 5F02 DD CB 80 A2
        RES  4,[IX+-128],D      ; 5F06 DD CB 80 A2
        res  4,[ix+-1],d        ; 5F0A DD CB FF A2
        RES  4,[IX+-1],D        ; 5F0E DD CB FF A2
        res  4,[ix+0],d         ; 5F12 DD CB 00 A2
        RES  4,[IX+0],D         ; 5F16 DD CB 00 A2
        res  4,[ix+127],d       ; 5F1A DD CB 7F A2
        RES  4,[IX+127],D       ; 5F1E DD CB 7F A2
        res  4,[ix+-128],e      ; 5F22 DD CB 80 A3
        RES  4,[IX+-128],E      ; 5F26 DD CB 80 A3
        res  4,[ix+-1],e        ; 5F2A DD CB FF A3
        RES  4,[IX+-1],E        ; 5F2E DD CB FF A3
        res  4,[ix+0],e         ; 5F32 DD CB 00 A3
        RES  4,[IX+0],E         ; 5F36 DD CB 00 A3
        res  4,[ix+127],e       ; 5F3A DD CB 7F A3
        RES  4,[IX+127],E       ; 5F3E DD CB 7F A3
        res  4,[ix+-128],h      ; 5F42 DD CB 80 A4
        RES  4,[IX+-128],H      ; 5F46 DD CB 80 A4
        res  4,[ix+-1],h        ; 5F4A DD CB FF A4
        RES  4,[IX+-1],H        ; 5F4E DD CB FF A4
        res  4,[ix+0],h         ; 5F52 DD CB 00 A4
        RES  4,[IX+0],H         ; 5F56 DD CB 00 A4
        res  4,[ix+127],h       ; 5F5A DD CB 7F A4
        RES  4,[IX+127],H       ; 5F5E DD CB 7F A4
        res  4,[ix+-128],l      ; 5F62 DD CB 80 A5
        RES  4,[IX+-128],L      ; 5F66 DD CB 80 A5
        res  4,[ix+-1],l        ; 5F6A DD CB FF A5
        RES  4,[IX+-1],L        ; 5F6E DD CB FF A5
        res  4,[ix+0],l         ; 5F72 DD CB 00 A5
        RES  4,[IX+0],L         ; 5F76 DD CB 00 A5
        res  4,[ix+127],l       ; 5F7A DD CB 7F A5
        RES  4,[IX+127],L       ; 5F7E DD CB 7F A5
        res  4,[iy+-128]        ; 5F82 FD CB 80 A6
        RES  4,[IY+-128]        ; 5F86 FD CB 80 A6
        res  4,[iy+-1]          ; 5F8A FD CB FF A6
        RES  4,[IY+-1]          ; 5F8E FD CB FF A6
        res  4,[iy+0]           ; 5F92 FD CB 00 A6
        RES  4,[IY+0]           ; 5F96 FD CB 00 A6
        res  4,[iy+127]         ; 5F9A FD CB 7F A6
        RES  4,[IY+127]         ; 5F9E FD CB 7F A6
        res  4,[iy+-128],a      ; 5FA2 FD CB 80 A7
        RES  4,[IY+-128],A      ; 5FA6 FD CB 80 A7
        res  4,[iy+-1],a        ; 5FAA FD CB FF A7
        RES  4,[IY+-1],A        ; 5FAE FD CB FF A7
        res  4,[iy+0],a         ; 5FB2 FD CB 00 A7
        RES  4,[IY+0],A         ; 5FB6 FD CB 00 A7
        res  4,[iy+127],a       ; 5FBA FD CB 7F A7
        RES  4,[IY+127],A       ; 5FBE FD CB 7F A7
        res  4,[iy+-128],b      ; 5FC2 FD CB 80 A0
        RES  4,[IY+-128],B      ; 5FC6 FD CB 80 A0
        res  4,[iy+-1],b        ; 5FCA FD CB FF A0
        RES  4,[IY+-1],B        ; 5FCE FD CB FF A0
        res  4,[iy+0],b         ; 5FD2 FD CB 00 A0
        RES  4,[IY+0],B         ; 5FD6 FD CB 00 A0
        res  4,[iy+127],b       ; 5FDA FD CB 7F A0
        RES  4,[IY+127],B       ; 5FDE FD CB 7F A0
        res  4,[iy+-128],c      ; 5FE2 FD CB 80 A1
        RES  4,[IY+-128],C      ; 5FE6 FD CB 80 A1
        res  4,[iy+-1],c        ; 5FEA FD CB FF A1
        RES  4,[IY+-1],C        ; 5FEE FD CB FF A1
        res  4,[iy+0],c         ; 5FF2 FD CB 00 A1
        RES  4,[IY+0],C         ; 5FF6 FD CB 00 A1
        res  4,[iy+127],c       ; 5FFA FD CB 7F A1
        RES  4,[IY+127],C       ; 5FFE FD CB 7F A1
        res  4,[iy+-128],d      ; 6002 FD CB 80 A2
        RES  4,[IY+-128],D      ; 6006 FD CB 80 A2
        res  4,[iy+-1],d        ; 600A FD CB FF A2
        RES  4,[IY+-1],D        ; 600E FD CB FF A2
        res  4,[iy+0],d         ; 6012 FD CB 00 A2
        RES  4,[IY+0],D         ; 6016 FD CB 00 A2
        res  4,[iy+127],d       ; 601A FD CB 7F A2
        RES  4,[IY+127],D       ; 601E FD CB 7F A2
        res  4,[iy+-128],e      ; 6022 FD CB 80 A3
        RES  4,[IY+-128],E      ; 6026 FD CB 80 A3
        res  4,[iy+-1],e        ; 602A FD CB FF A3
        RES  4,[IY+-1],E        ; 602E FD CB FF A3
        res  4,[iy+0],e         ; 6032 FD CB 00 A3
        RES  4,[IY+0],E         ; 6036 FD CB 00 A3
        res  4,[iy+127],e       ; 603A FD CB 7F A3
        RES  4,[IY+127],E       ; 603E FD CB 7F A3
        res  4,[iy+-128],h      ; 6042 FD CB 80 A4
        RES  4,[IY+-128],H      ; 6046 FD CB 80 A4
        res  4,[iy+-1],h        ; 604A FD CB FF A4
        RES  4,[IY+-1],H        ; 604E FD CB FF A4
        res  4,[iy+0],h         ; 6052 FD CB 00 A4
        RES  4,[IY+0],H         ; 6056 FD CB 00 A4
        res  4,[iy+127],h       ; 605A FD CB 7F A4
        RES  4,[IY+127],H       ; 605E FD CB 7F A4
        res  4,[iy+-128],l      ; 6062 FD CB 80 A5
        RES  4,[IY+-128],L      ; 6066 FD CB 80 A5
        res  4,[iy+-1],l        ; 606A FD CB FF A5
        RES  4,[IY+-1],L        ; 606E FD CB FF A5
        res  4,[iy+0],l         ; 6072 FD CB 00 A5
        RES  4,[IY+0],L         ; 6076 FD CB 00 A5
        res  4,[iy+127],l       ; 607A FD CB 7F A5
        RES  4,[IY+127],L       ; 607E FD CB 7F A5
        res  4,a                ; 6082 CB A7
        RES  4,A                ; 6084 CB A7
        res  4,b                ; 6086 CB A0
        RES  4,B                ; 6088 CB A0
        res  4,c                ; 608A CB A1
        RES  4,C                ; 608C CB A1
        res  4,d                ; 608E CB A2
        RES  4,D                ; 6090 CB A2
        res  4,e                ; 6092 CB A3
        RES  4,E                ; 6094 CB A3
        res  4,h                ; 6096 CB A4
        RES  4,H                ; 6098 CB A4
        res  4,l                ; 609A CB A5
        RES  4,L                ; 609C CB A5
        res  5,(hl)             ; 609E CB AE
        RES  5,(HL)             ; 60A0 CB AE
        res  5,(ix+-128)        ; 60A2 DD CB 80 AE
        RES  5,(IX+-128)        ; 60A6 DD CB 80 AE
        res  5,(ix+-1)          ; 60AA DD CB FF AE
        RES  5,(IX+-1)          ; 60AE DD CB FF AE
        res  5,(ix+0)           ; 60B2 DD CB 00 AE
        RES  5,(IX+0)           ; 60B6 DD CB 00 AE
        res  5,(ix+127)         ; 60BA DD CB 7F AE
        RES  5,(IX+127)         ; 60BE DD CB 7F AE
        res  5,(ix+-128),a      ; 60C2 DD CB 80 AF
        RES  5,(IX+-128),A      ; 60C6 DD CB 80 AF
        res  5,(ix+-1),a        ; 60CA DD CB FF AF
        RES  5,(IX+-1),A        ; 60CE DD CB FF AF
        res  5,(ix+0),a         ; 60D2 DD CB 00 AF
        RES  5,(IX+0),A         ; 60D6 DD CB 00 AF
        res  5,(ix+127),a       ; 60DA DD CB 7F AF
        RES  5,(IX+127),A       ; 60DE DD CB 7F AF
        res  5,(ix+-128),b      ; 60E2 DD CB 80 A8
        RES  5,(IX+-128),B      ; 60E6 DD CB 80 A8
        res  5,(ix+-1),b        ; 60EA DD CB FF A8
        RES  5,(IX+-1),B        ; 60EE DD CB FF A8
        res  5,(ix+0),b         ; 60F2 DD CB 00 A8
        RES  5,(IX+0),B         ; 60F6 DD CB 00 A8
        res  5,(ix+127),b       ; 60FA DD CB 7F A8
        RES  5,(IX+127),B       ; 60FE DD CB 7F A8
        res  5,(ix+-128),c      ; 6102 DD CB 80 A9
        RES  5,(IX+-128),C      ; 6106 DD CB 80 A9
        res  5,(ix+-1),c        ; 610A DD CB FF A9
        RES  5,(IX+-1),C        ; 610E DD CB FF A9
        res  5,(ix+0),c         ; 6112 DD CB 00 A9
        RES  5,(IX+0),C         ; 6116 DD CB 00 A9
        res  5,(ix+127),c       ; 611A DD CB 7F A9
        RES  5,(IX+127),C       ; 611E DD CB 7F A9
        res  5,(ix+-128),d      ; 6122 DD CB 80 AA
        RES  5,(IX+-128),D      ; 6126 DD CB 80 AA
        res  5,(ix+-1),d        ; 612A DD CB FF AA
        RES  5,(IX+-1),D        ; 612E DD CB FF AA
        res  5,(ix+0),d         ; 6132 DD CB 00 AA
        RES  5,(IX+0),D         ; 6136 DD CB 00 AA
        res  5,(ix+127),d       ; 613A DD CB 7F AA
        RES  5,(IX+127),D       ; 613E DD CB 7F AA
        res  5,(ix+-128),e      ; 6142 DD CB 80 AB
        RES  5,(IX+-128),E      ; 6146 DD CB 80 AB
        res  5,(ix+-1),e        ; 614A DD CB FF AB
        RES  5,(IX+-1),E        ; 614E DD CB FF AB
        res  5,(ix+0),e         ; 6152 DD CB 00 AB
        RES  5,(IX+0),E         ; 6156 DD CB 00 AB
        res  5,(ix+127),e       ; 615A DD CB 7F AB
        RES  5,(IX+127),E       ; 615E DD CB 7F AB
        res  5,(ix+-128),h      ; 6162 DD CB 80 AC
        RES  5,(IX+-128),H      ; 6166 DD CB 80 AC
        res  5,(ix+-1),h        ; 616A DD CB FF AC
        RES  5,(IX+-1),H        ; 616E DD CB FF AC
        res  5,(ix+0),h         ; 6172 DD CB 00 AC
        RES  5,(IX+0),H         ; 6176 DD CB 00 AC
        res  5,(ix+127),h       ; 617A DD CB 7F AC
        RES  5,(IX+127),H       ; 617E DD CB 7F AC
        res  5,(ix+-128),l      ; 6182 DD CB 80 AD
        RES  5,(IX+-128),L      ; 6186 DD CB 80 AD
        res  5,(ix+-1),l        ; 618A DD CB FF AD
        RES  5,(IX+-1),L        ; 618E DD CB FF AD
        res  5,(ix+0),l         ; 6192 DD CB 00 AD
        RES  5,(IX+0),L         ; 6196 DD CB 00 AD
        res  5,(ix+127),l       ; 619A DD CB 7F AD
        RES  5,(IX+127),L       ; 619E DD CB 7F AD
        res  5,(iy+-128)        ; 61A2 FD CB 80 AE
        RES  5,(IY+-128)        ; 61A6 FD CB 80 AE
        res  5,(iy+-1)          ; 61AA FD CB FF AE
        RES  5,(IY+-1)          ; 61AE FD CB FF AE
        res  5,(iy+0)           ; 61B2 FD CB 00 AE
        RES  5,(IY+0)           ; 61B6 FD CB 00 AE
        res  5,(iy+127)         ; 61BA FD CB 7F AE
        RES  5,(IY+127)         ; 61BE FD CB 7F AE
        res  5,(iy+-128),a      ; 61C2 FD CB 80 AF
        RES  5,(IY+-128),A      ; 61C6 FD CB 80 AF
        res  5,(iy+-1),a        ; 61CA FD CB FF AF
        RES  5,(IY+-1),A        ; 61CE FD CB FF AF
        res  5,(iy+0),a         ; 61D2 FD CB 00 AF
        RES  5,(IY+0),A         ; 61D6 FD CB 00 AF
        res  5,(iy+127),a       ; 61DA FD CB 7F AF
        RES  5,(IY+127),A       ; 61DE FD CB 7F AF
        res  5,(iy+-128),b      ; 61E2 FD CB 80 A8
        RES  5,(IY+-128),B      ; 61E6 FD CB 80 A8
        res  5,(iy+-1),b        ; 61EA FD CB FF A8
        RES  5,(IY+-1),B        ; 61EE FD CB FF A8
        res  5,(iy+0),b         ; 61F2 FD CB 00 A8
        RES  5,(IY+0),B         ; 61F6 FD CB 00 A8
        res  5,(iy+127),b       ; 61FA FD CB 7F A8
        RES  5,(IY+127),B       ; 61FE FD CB 7F A8
        res  5,(iy+-128),c      ; 6202 FD CB 80 A9
        RES  5,(IY+-128),C      ; 6206 FD CB 80 A9
        res  5,(iy+-1),c        ; 620A FD CB FF A9
        RES  5,(IY+-1),C        ; 620E FD CB FF A9
        res  5,(iy+0),c         ; 6212 FD CB 00 A9
        RES  5,(IY+0),C         ; 6216 FD CB 00 A9
        res  5,(iy+127),c       ; 621A FD CB 7F A9
        RES  5,(IY+127),C       ; 621E FD CB 7F A9
        res  5,(iy+-128),d      ; 6222 FD CB 80 AA
        RES  5,(IY+-128),D      ; 6226 FD CB 80 AA
        res  5,(iy+-1),d        ; 622A FD CB FF AA
        RES  5,(IY+-1),D        ; 622E FD CB FF AA
        res  5,(iy+0),d         ; 6232 FD CB 00 AA
        RES  5,(IY+0),D         ; 6236 FD CB 00 AA
        res  5,(iy+127),d       ; 623A FD CB 7F AA
        RES  5,(IY+127),D       ; 623E FD CB 7F AA
        res  5,(iy+-128),e      ; 6242 FD CB 80 AB
        RES  5,(IY+-128),E      ; 6246 FD CB 80 AB
        res  5,(iy+-1),e        ; 624A FD CB FF AB
        RES  5,(IY+-1),E        ; 624E FD CB FF AB
        res  5,(iy+0),e         ; 6252 FD CB 00 AB
        RES  5,(IY+0),E         ; 6256 FD CB 00 AB
        res  5,(iy+127),e       ; 625A FD CB 7F AB
        RES  5,(IY+127),E       ; 625E FD CB 7F AB
        res  5,(iy+-128),h      ; 6262 FD CB 80 AC
        RES  5,(IY+-128),H      ; 6266 FD CB 80 AC
        res  5,(iy+-1),h        ; 626A FD CB FF AC
        RES  5,(IY+-1),H        ; 626E FD CB FF AC
        res  5,(iy+0),h         ; 6272 FD CB 00 AC
        RES  5,(IY+0),H         ; 6276 FD CB 00 AC
        res  5,(iy+127),h       ; 627A FD CB 7F AC
        RES  5,(IY+127),H       ; 627E FD CB 7F AC
        res  5,(iy+-128),l      ; 6282 FD CB 80 AD
        RES  5,(IY+-128),L      ; 6286 FD CB 80 AD
        res  5,(iy+-1),l        ; 628A FD CB FF AD
        RES  5,(IY+-1),L        ; 628E FD CB FF AD
        res  5,(iy+0),l         ; 6292 FD CB 00 AD
        RES  5,(IY+0),L         ; 6296 FD CB 00 AD
        res  5,(iy+127),l       ; 629A FD CB 7F AD
        RES  5,(IY+127),L       ; 629E FD CB 7F AD
        res  5,[hl]             ; 62A2 CB AE
        RES  5,[HL]             ; 62A4 CB AE
        res  5,[ix+-128]        ; 62A6 DD CB 80 AE
        RES  5,[IX+-128]        ; 62AA DD CB 80 AE
        res  5,[ix+-1]          ; 62AE DD CB FF AE
        RES  5,[IX+-1]          ; 62B2 DD CB FF AE
        res  5,[ix+0]           ; 62B6 DD CB 00 AE
        RES  5,[IX+0]           ; 62BA DD CB 00 AE
        res  5,[ix+127]         ; 62BE DD CB 7F AE
        RES  5,[IX+127]         ; 62C2 DD CB 7F AE
        res  5,[ix+-128],a      ; 62C6 DD CB 80 AF
        RES  5,[IX+-128],A      ; 62CA DD CB 80 AF
        res  5,[ix+-1],a        ; 62CE DD CB FF AF
        RES  5,[IX+-1],A        ; 62D2 DD CB FF AF
        res  5,[ix+0],a         ; 62D6 DD CB 00 AF
        RES  5,[IX+0],A         ; 62DA DD CB 00 AF
        res  5,[ix+127],a       ; 62DE DD CB 7F AF
        RES  5,[IX+127],A       ; 62E2 DD CB 7F AF
        res  5,[ix+-128],b      ; 62E6 DD CB 80 A8
        RES  5,[IX+-128],B      ; 62EA DD CB 80 A8
        res  5,[ix+-1],b        ; 62EE DD CB FF A8
        RES  5,[IX+-1],B        ; 62F2 DD CB FF A8
        res  5,[ix+0],b         ; 62F6 DD CB 00 A8
        RES  5,[IX+0],B         ; 62FA DD CB 00 A8
        res  5,[ix+127],b       ; 62FE DD CB 7F A8
        RES  5,[IX+127],B       ; 6302 DD CB 7F A8
        res  5,[ix+-128],c      ; 6306 DD CB 80 A9
        RES  5,[IX+-128],C      ; 630A DD CB 80 A9
        res  5,[ix+-1],c        ; 630E DD CB FF A9
        RES  5,[IX+-1],C        ; 6312 DD CB FF A9
        res  5,[ix+0],c         ; 6316 DD CB 00 A9
        RES  5,[IX+0],C         ; 631A DD CB 00 A9
        res  5,[ix+127],c       ; 631E DD CB 7F A9
        RES  5,[IX+127],C       ; 6322 DD CB 7F A9
        res  5,[ix+-128],d      ; 6326 DD CB 80 AA
        RES  5,[IX+-128],D      ; 632A DD CB 80 AA
        res  5,[ix+-1],d        ; 632E DD CB FF AA
        RES  5,[IX+-1],D        ; 6332 DD CB FF AA
        res  5,[ix+0],d         ; 6336 DD CB 00 AA
        RES  5,[IX+0],D         ; 633A DD CB 00 AA
        res  5,[ix+127],d       ; 633E DD CB 7F AA
        RES  5,[IX+127],D       ; 6342 DD CB 7F AA
        res  5,[ix+-128],e      ; 6346 DD CB 80 AB
        RES  5,[IX+-128],E      ; 634A DD CB 80 AB
        res  5,[ix+-1],e        ; 634E DD CB FF AB
        RES  5,[IX+-1],E        ; 6352 DD CB FF AB
        res  5,[ix+0],e         ; 6356 DD CB 00 AB
        RES  5,[IX+0],E         ; 635A DD CB 00 AB
        res  5,[ix+127],e       ; 635E DD CB 7F AB
        RES  5,[IX+127],E       ; 6362 DD CB 7F AB
        res  5,[ix+-128],h      ; 6366 DD CB 80 AC
        RES  5,[IX+-128],H      ; 636A DD CB 80 AC
        res  5,[ix+-1],h        ; 636E DD CB FF AC
        RES  5,[IX+-1],H        ; 6372 DD CB FF AC
        res  5,[ix+0],h         ; 6376 DD CB 00 AC
        RES  5,[IX+0],H         ; 637A DD CB 00 AC
        res  5,[ix+127],h       ; 637E DD CB 7F AC
        RES  5,[IX+127],H       ; 6382 DD CB 7F AC
        res  5,[ix+-128],l      ; 6386 DD CB 80 AD
        RES  5,[IX+-128],L      ; 638A DD CB 80 AD
        res  5,[ix+-1],l        ; 638E DD CB FF AD
        RES  5,[IX+-1],L        ; 6392 DD CB FF AD
        res  5,[ix+0],l         ; 6396 DD CB 00 AD
        RES  5,[IX+0],L         ; 639A DD CB 00 AD
        res  5,[ix+127],l       ; 639E DD CB 7F AD
        RES  5,[IX+127],L       ; 63A2 DD CB 7F AD
        res  5,[iy+-128]        ; 63A6 FD CB 80 AE
        RES  5,[IY+-128]        ; 63AA FD CB 80 AE
        res  5,[iy+-1]          ; 63AE FD CB FF AE
        RES  5,[IY+-1]          ; 63B2 FD CB FF AE
        res  5,[iy+0]           ; 63B6 FD CB 00 AE
        RES  5,[IY+0]           ; 63BA FD CB 00 AE
        res  5,[iy+127]         ; 63BE FD CB 7F AE
        RES  5,[IY+127]         ; 63C2 FD CB 7F AE
        res  5,[iy+-128],a      ; 63C6 FD CB 80 AF
        RES  5,[IY+-128],A      ; 63CA FD CB 80 AF
        res  5,[iy+-1],a        ; 63CE FD CB FF AF
        RES  5,[IY+-1],A        ; 63D2 FD CB FF AF
        res  5,[iy+0],a         ; 63D6 FD CB 00 AF
        RES  5,[IY+0],A         ; 63DA FD CB 00 AF
        res  5,[iy+127],a       ; 63DE FD CB 7F AF
        RES  5,[IY+127],A       ; 63E2 FD CB 7F AF
        res  5,[iy+-128],b      ; 63E6 FD CB 80 A8
        RES  5,[IY+-128],B      ; 63EA FD CB 80 A8
        res  5,[iy+-1],b        ; 63EE FD CB FF A8
        RES  5,[IY+-1],B        ; 63F2 FD CB FF A8
        res  5,[iy+0],b         ; 63F6 FD CB 00 A8
        RES  5,[IY+0],B         ; 63FA FD CB 00 A8
        res  5,[iy+127],b       ; 63FE FD CB 7F A8
        RES  5,[IY+127],B       ; 6402 FD CB 7F A8
        res  5,[iy+-128],c      ; 6406 FD CB 80 A9
        RES  5,[IY+-128],C      ; 640A FD CB 80 A9
        res  5,[iy+-1],c        ; 640E FD CB FF A9
        RES  5,[IY+-1],C        ; 6412 FD CB FF A9
        res  5,[iy+0],c         ; 6416 FD CB 00 A9
        RES  5,[IY+0],C         ; 641A FD CB 00 A9
        res  5,[iy+127],c       ; 641E FD CB 7F A9
        RES  5,[IY+127],C       ; 6422 FD CB 7F A9
        res  5,[iy+-128],d      ; 6426 FD CB 80 AA
        RES  5,[IY+-128],D      ; 642A FD CB 80 AA
        res  5,[iy+-1],d        ; 642E FD CB FF AA
        RES  5,[IY+-1],D        ; 6432 FD CB FF AA
        res  5,[iy+0],d         ; 6436 FD CB 00 AA
        RES  5,[IY+0],D         ; 643A FD CB 00 AA
        res  5,[iy+127],d       ; 643E FD CB 7F AA
        RES  5,[IY+127],D       ; 6442 FD CB 7F AA
        res  5,[iy+-128],e      ; 6446 FD CB 80 AB
        RES  5,[IY+-128],E      ; 644A FD CB 80 AB
        res  5,[iy+-1],e        ; 644E FD CB FF AB
        RES  5,[IY+-1],E        ; 6452 FD CB FF AB
        res  5,[iy+0],e         ; 6456 FD CB 00 AB
        RES  5,[IY+0],E         ; 645A FD CB 00 AB
        res  5,[iy+127],e       ; 645E FD CB 7F AB
        RES  5,[IY+127],E       ; 6462 FD CB 7F AB
        res  5,[iy+-128],h      ; 6466 FD CB 80 AC
        RES  5,[IY+-128],H      ; 646A FD CB 80 AC
        res  5,[iy+-1],h        ; 646E FD CB FF AC
        RES  5,[IY+-1],H        ; 6472 FD CB FF AC
        res  5,[iy+0],h         ; 6476 FD CB 00 AC
        RES  5,[IY+0],H         ; 647A FD CB 00 AC
        res  5,[iy+127],h       ; 647E FD CB 7F AC
        RES  5,[IY+127],H       ; 6482 FD CB 7F AC
        res  5,[iy+-128],l      ; 6486 FD CB 80 AD
        RES  5,[IY+-128],L      ; 648A FD CB 80 AD
        res  5,[iy+-1],l        ; 648E FD CB FF AD
        RES  5,[IY+-1],L        ; 6492 FD CB FF AD
        res  5,[iy+0],l         ; 6496 FD CB 00 AD
        RES  5,[IY+0],L         ; 649A FD CB 00 AD
        res  5,[iy+127],l       ; 649E FD CB 7F AD
        RES  5,[IY+127],L       ; 64A2 FD CB 7F AD
        res  5,a                ; 64A6 CB AF
        RES  5,A                ; 64A8 CB AF
        res  5,b                ; 64AA CB A8
        RES  5,B                ; 64AC CB A8
        res  5,c                ; 64AE CB A9
        RES  5,C                ; 64B0 CB A9
        res  5,d                ; 64B2 CB AA
        RES  5,D                ; 64B4 CB AA
        res  5,e                ; 64B6 CB AB
        RES  5,E                ; 64B8 CB AB
        res  5,h                ; 64BA CB AC
        RES  5,H                ; 64BC CB AC
        res  5,l                ; 64BE CB AD
        RES  5,L                ; 64C0 CB AD
        res  6,(hl)             ; 64C2 CB B6
        RES  6,(HL)             ; 64C4 CB B6
        res  6,(ix+-128)        ; 64C6 DD CB 80 B6
        RES  6,(IX+-128)        ; 64CA DD CB 80 B6
        res  6,(ix+-1)          ; 64CE DD CB FF B6
        RES  6,(IX+-1)          ; 64D2 DD CB FF B6
        res  6,(ix+0)           ; 64D6 DD CB 00 B6
        RES  6,(IX+0)           ; 64DA DD CB 00 B6
        res  6,(ix+127)         ; 64DE DD CB 7F B6
        RES  6,(IX+127)         ; 64E2 DD CB 7F B6
        res  6,(ix+-128),a      ; 64E6 DD CB 80 B7
        RES  6,(IX+-128),A      ; 64EA DD CB 80 B7
        res  6,(ix+-1),a        ; 64EE DD CB FF B7
        RES  6,(IX+-1),A        ; 64F2 DD CB FF B7
        res  6,(ix+0),a         ; 64F6 DD CB 00 B7
        RES  6,(IX+0),A         ; 64FA DD CB 00 B7
        res  6,(ix+127),a       ; 64FE DD CB 7F B7
        RES  6,(IX+127),A       ; 6502 DD CB 7F B7
        res  6,(ix+-128),b      ; 6506 DD CB 80 B0
        RES  6,(IX+-128),B      ; 650A DD CB 80 B0
        res  6,(ix+-1),b        ; 650E DD CB FF B0
        RES  6,(IX+-1),B        ; 6512 DD CB FF B0
        res  6,(ix+0),b         ; 6516 DD CB 00 B0
        RES  6,(IX+0),B         ; 651A DD CB 00 B0
        res  6,(ix+127),b       ; 651E DD CB 7F B0
        RES  6,(IX+127),B       ; 6522 DD CB 7F B0
        res  6,(ix+-128),c      ; 6526 DD CB 80 B1
        RES  6,(IX+-128),C      ; 652A DD CB 80 B1
        res  6,(ix+-1),c        ; 652E DD CB FF B1
        RES  6,(IX+-1),C        ; 6532 DD CB FF B1
        res  6,(ix+0),c         ; 6536 DD CB 00 B1
        RES  6,(IX+0),C         ; 653A DD CB 00 B1
        res  6,(ix+127),c       ; 653E DD CB 7F B1
        RES  6,(IX+127),C       ; 6542 DD CB 7F B1
        res  6,(ix+-128),d      ; 6546 DD CB 80 B2
        RES  6,(IX+-128),D      ; 654A DD CB 80 B2
        res  6,(ix+-1),d        ; 654E DD CB FF B2
        RES  6,(IX+-1),D        ; 6552 DD CB FF B2
        res  6,(ix+0),d         ; 6556 DD CB 00 B2
        RES  6,(IX+0),D         ; 655A DD CB 00 B2
        res  6,(ix+127),d       ; 655E DD CB 7F B2
        RES  6,(IX+127),D       ; 6562 DD CB 7F B2
        res  6,(ix+-128),e      ; 6566 DD CB 80 B3
        RES  6,(IX+-128),E      ; 656A DD CB 80 B3
        res  6,(ix+-1),e        ; 656E DD CB FF B3
        RES  6,(IX+-1),E        ; 6572 DD CB FF B3
        res  6,(ix+0),e         ; 6576 DD CB 00 B3
        RES  6,(IX+0),E         ; 657A DD CB 00 B3
        res  6,(ix+127),e       ; 657E DD CB 7F B3
        RES  6,(IX+127),E       ; 6582 DD CB 7F B3
        res  6,(ix+-128),h      ; 6586 DD CB 80 B4
        RES  6,(IX+-128),H      ; 658A DD CB 80 B4
        res  6,(ix+-1),h        ; 658E DD CB FF B4
        RES  6,(IX+-1),H        ; 6592 DD CB FF B4
        res  6,(ix+0),h         ; 6596 DD CB 00 B4
        RES  6,(IX+0),H         ; 659A DD CB 00 B4
        res  6,(ix+127),h       ; 659E DD CB 7F B4
        RES  6,(IX+127),H       ; 65A2 DD CB 7F B4
        res  6,(ix+-128),l      ; 65A6 DD CB 80 B5
        RES  6,(IX+-128),L      ; 65AA DD CB 80 B5
        res  6,(ix+-1),l        ; 65AE DD CB FF B5
        RES  6,(IX+-1),L        ; 65B2 DD CB FF B5
        res  6,(ix+0),l         ; 65B6 DD CB 00 B5
        RES  6,(IX+0),L         ; 65BA DD CB 00 B5
        res  6,(ix+127),l       ; 65BE DD CB 7F B5
        RES  6,(IX+127),L       ; 65C2 DD CB 7F B5
        res  6,(iy+-128)        ; 65C6 FD CB 80 B6
        RES  6,(IY+-128)        ; 65CA FD CB 80 B6
        res  6,(iy+-1)          ; 65CE FD CB FF B6
        RES  6,(IY+-1)          ; 65D2 FD CB FF B6
        res  6,(iy+0)           ; 65D6 FD CB 00 B6
        RES  6,(IY+0)           ; 65DA FD CB 00 B6
        res  6,(iy+127)         ; 65DE FD CB 7F B6
        RES  6,(IY+127)         ; 65E2 FD CB 7F B6
        res  6,(iy+-128),a      ; 65E6 FD CB 80 B7
        RES  6,(IY+-128),A      ; 65EA FD CB 80 B7
        res  6,(iy+-1),a        ; 65EE FD CB FF B7
        RES  6,(IY+-1),A        ; 65F2 FD CB FF B7
        res  6,(iy+0),a         ; 65F6 FD CB 00 B7
        RES  6,(IY+0),A         ; 65FA FD CB 00 B7
        res  6,(iy+127),a       ; 65FE FD CB 7F B7
        RES  6,(IY+127),A       ; 6602 FD CB 7F B7
        res  6,(iy+-128),b      ; 6606 FD CB 80 B0
        RES  6,(IY+-128),B      ; 660A FD CB 80 B0
        res  6,(iy+-1),b        ; 660E FD CB FF B0
        RES  6,(IY+-1),B        ; 6612 FD CB FF B0
        res  6,(iy+0),b         ; 6616 FD CB 00 B0
        RES  6,(IY+0),B         ; 661A FD CB 00 B0
        res  6,(iy+127),b       ; 661E FD CB 7F B0
        RES  6,(IY+127),B       ; 6622 FD CB 7F B0
        res  6,(iy+-128),c      ; 6626 FD CB 80 B1
        RES  6,(IY+-128),C      ; 662A FD CB 80 B1
        res  6,(iy+-1),c        ; 662E FD CB FF B1
        RES  6,(IY+-1),C        ; 6632 FD CB FF B1
        res  6,(iy+0),c         ; 6636 FD CB 00 B1
        RES  6,(IY+0),C         ; 663A FD CB 00 B1
        res  6,(iy+127),c       ; 663E FD CB 7F B1
        RES  6,(IY+127),C       ; 6642 FD CB 7F B1
        res  6,(iy+-128),d      ; 6646 FD CB 80 B2
        RES  6,(IY+-128),D      ; 664A FD CB 80 B2
        res  6,(iy+-1),d        ; 664E FD CB FF B2
        RES  6,(IY+-1),D        ; 6652 FD CB FF B2
        res  6,(iy+0),d         ; 6656 FD CB 00 B2
        RES  6,(IY+0),D         ; 665A FD CB 00 B2
        res  6,(iy+127),d       ; 665E FD CB 7F B2
        RES  6,(IY+127),D       ; 6662 FD CB 7F B2
        res  6,(iy+-128),e      ; 6666 FD CB 80 B3
        RES  6,(IY+-128),E      ; 666A FD CB 80 B3
        res  6,(iy+-1),e        ; 666E FD CB FF B3
        RES  6,(IY+-1),E        ; 6672 FD CB FF B3
        res  6,(iy+0),e         ; 6676 FD CB 00 B3
        RES  6,(IY+0),E         ; 667A FD CB 00 B3
        res  6,(iy+127),e       ; 667E FD CB 7F B3
        RES  6,(IY+127),E       ; 6682 FD CB 7F B3
        res  6,(iy+-128),h      ; 6686 FD CB 80 B4
        RES  6,(IY+-128),H      ; 668A FD CB 80 B4
        res  6,(iy+-1),h        ; 668E FD CB FF B4
        RES  6,(IY+-1),H        ; 6692 FD CB FF B4
        res  6,(iy+0),h         ; 6696 FD CB 00 B4
        RES  6,(IY+0),H         ; 669A FD CB 00 B4
        res  6,(iy+127),h       ; 669E FD CB 7F B4
        RES  6,(IY+127),H       ; 66A2 FD CB 7F B4
        res  6,(iy+-128),l      ; 66A6 FD CB 80 B5
        RES  6,(IY+-128),L      ; 66AA FD CB 80 B5
        res  6,(iy+-1),l        ; 66AE FD CB FF B5
        RES  6,(IY+-1),L        ; 66B2 FD CB FF B5
        res  6,(iy+0),l         ; 66B6 FD CB 00 B5
        RES  6,(IY+0),L         ; 66BA FD CB 00 B5
        res  6,(iy+127),l       ; 66BE FD CB 7F B5
        RES  6,(IY+127),L       ; 66C2 FD CB 7F B5
        res  6,[hl]             ; 66C6 CB B6
        RES  6,[HL]             ; 66C8 CB B6
        res  6,[ix+-128]        ; 66CA DD CB 80 B6
        RES  6,[IX+-128]        ; 66CE DD CB 80 B6
        res  6,[ix+-1]          ; 66D2 DD CB FF B6
        RES  6,[IX+-1]          ; 66D6 DD CB FF B6
        res  6,[ix+0]           ; 66DA DD CB 00 B6
        RES  6,[IX+0]           ; 66DE DD CB 00 B6
        res  6,[ix+127]         ; 66E2 DD CB 7F B6
        RES  6,[IX+127]         ; 66E6 DD CB 7F B6
        res  6,[ix+-128],a      ; 66EA DD CB 80 B7
        RES  6,[IX+-128],A      ; 66EE DD CB 80 B7
        res  6,[ix+-1],a        ; 66F2 DD CB FF B7
        RES  6,[IX+-1],A        ; 66F6 DD CB FF B7
        res  6,[ix+0],a         ; 66FA DD CB 00 B7
        RES  6,[IX+0],A         ; 66FE DD CB 00 B7
        res  6,[ix+127],a       ; 6702 DD CB 7F B7
        RES  6,[IX+127],A       ; 6706 DD CB 7F B7
        res  6,[ix+-128],b      ; 670A DD CB 80 B0
        RES  6,[IX+-128],B      ; 670E DD CB 80 B0
        res  6,[ix+-1],b        ; 6712 DD CB FF B0
        RES  6,[IX+-1],B        ; 6716 DD CB FF B0
        res  6,[ix+0],b         ; 671A DD CB 00 B0
        RES  6,[IX+0],B         ; 671E DD CB 00 B0
        res  6,[ix+127],b       ; 6722 DD CB 7F B0
        RES  6,[IX+127],B       ; 6726 DD CB 7F B0
        res  6,[ix+-128],c      ; 672A DD CB 80 B1
        RES  6,[IX+-128],C      ; 672E DD CB 80 B1
        res  6,[ix+-1],c        ; 6732 DD CB FF B1
        RES  6,[IX+-1],C        ; 6736 DD CB FF B1
        res  6,[ix+0],c         ; 673A DD CB 00 B1
        RES  6,[IX+0],C         ; 673E DD CB 00 B1
        res  6,[ix+127],c       ; 6742 DD CB 7F B1
        RES  6,[IX+127],C       ; 6746 DD CB 7F B1
        res  6,[ix+-128],d      ; 674A DD CB 80 B2
        RES  6,[IX+-128],D      ; 674E DD CB 80 B2
        res  6,[ix+-1],d        ; 6752 DD CB FF B2
        RES  6,[IX+-1],D        ; 6756 DD CB FF B2
        res  6,[ix+0],d         ; 675A DD CB 00 B2
        RES  6,[IX+0],D         ; 675E DD CB 00 B2
        res  6,[ix+127],d       ; 6762 DD CB 7F B2
        RES  6,[IX+127],D       ; 6766 DD CB 7F B2
        res  6,[ix+-128],e      ; 676A DD CB 80 B3
        RES  6,[IX+-128],E      ; 676E DD CB 80 B3
        res  6,[ix+-1],e        ; 6772 DD CB FF B3
        RES  6,[IX+-1],E        ; 6776 DD CB FF B3
        res  6,[ix+0],e         ; 677A DD CB 00 B3
        RES  6,[IX+0],E         ; 677E DD CB 00 B3
        res  6,[ix+127],e       ; 6782 DD CB 7F B3
        RES  6,[IX+127],E       ; 6786 DD CB 7F B3
        res  6,[ix+-128],h      ; 678A DD CB 80 B4
        RES  6,[IX+-128],H      ; 678E DD CB 80 B4
        res  6,[ix+-1],h        ; 6792 DD CB FF B4
        RES  6,[IX+-1],H        ; 6796 DD CB FF B4
        res  6,[ix+0],h         ; 679A DD CB 00 B4
        RES  6,[IX+0],H         ; 679E DD CB 00 B4
        res  6,[ix+127],h       ; 67A2 DD CB 7F B4
        RES  6,[IX+127],H       ; 67A6 DD CB 7F B4
        res  6,[ix+-128],l      ; 67AA DD CB 80 B5
        RES  6,[IX+-128],L      ; 67AE DD CB 80 B5
        res  6,[ix+-1],l        ; 67B2 DD CB FF B5
        RES  6,[IX+-1],L        ; 67B6 DD CB FF B5
        res  6,[ix+0],l         ; 67BA DD CB 00 B5
        RES  6,[IX+0],L         ; 67BE DD CB 00 B5
        res  6,[ix+127],l       ; 67C2 DD CB 7F B5
        RES  6,[IX+127],L       ; 67C6 DD CB 7F B5
        res  6,[iy+-128]        ; 67CA FD CB 80 B6
        RES  6,[IY+-128]        ; 67CE FD CB 80 B6
        res  6,[iy+-1]          ; 67D2 FD CB FF B6
        RES  6,[IY+-1]          ; 67D6 FD CB FF B6
        res  6,[iy+0]           ; 67DA FD CB 00 B6
        RES  6,[IY+0]           ; 67DE FD CB 00 B6
        res  6,[iy+127]         ; 67E2 FD CB 7F B6
        RES  6,[IY+127]         ; 67E6 FD CB 7F B6
        res  6,[iy+-128],a      ; 67EA FD CB 80 B7
        RES  6,[IY+-128],A      ; 67EE FD CB 80 B7
        res  6,[iy+-1],a        ; 67F2 FD CB FF B7
        RES  6,[IY+-1],A        ; 67F6 FD CB FF B7
        res  6,[iy+0],a         ; 67FA FD CB 00 B7
        RES  6,[IY+0],A         ; 67FE FD CB 00 B7
        res  6,[iy+127],a       ; 6802 FD CB 7F B7
        RES  6,[IY+127],A       ; 6806 FD CB 7F B7
        res  6,[iy+-128],b      ; 680A FD CB 80 B0
        RES  6,[IY+-128],B      ; 680E FD CB 80 B0
        res  6,[iy+-1],b        ; 6812 FD CB FF B0
        RES  6,[IY+-1],B        ; 6816 FD CB FF B0
        res  6,[iy+0],b         ; 681A FD CB 00 B0
        RES  6,[IY+0],B         ; 681E FD CB 00 B0
        res  6,[iy+127],b       ; 6822 FD CB 7F B0
        RES  6,[IY+127],B       ; 6826 FD CB 7F B0
        res  6,[iy+-128],c      ; 682A FD CB 80 B1
        RES  6,[IY+-128],C      ; 682E FD CB 80 B1
        res  6,[iy+-1],c        ; 6832 FD CB FF B1
        RES  6,[IY+-1],C        ; 6836 FD CB FF B1
        res  6,[iy+0],c         ; 683A FD CB 00 B1
        RES  6,[IY+0],C         ; 683E FD CB 00 B1
        res  6,[iy+127],c       ; 6842 FD CB 7F B1
        RES  6,[IY+127],C       ; 6846 FD CB 7F B1
        res  6,[iy+-128],d      ; 684A FD CB 80 B2
        RES  6,[IY+-128],D      ; 684E FD CB 80 B2
        res  6,[iy+-1],d        ; 6852 FD CB FF B2
        RES  6,[IY+-1],D        ; 6856 FD CB FF B2
        res  6,[iy+0],d         ; 685A FD CB 00 B2
        RES  6,[IY+0],D         ; 685E FD CB 00 B2
        res  6,[iy+127],d       ; 6862 FD CB 7F B2
        RES  6,[IY+127],D       ; 6866 FD CB 7F B2
        res  6,[iy+-128],e      ; 686A FD CB 80 B3
        RES  6,[IY+-128],E      ; 686E FD CB 80 B3
        res  6,[iy+-1],e        ; 6872 FD CB FF B3
        RES  6,[IY+-1],E        ; 6876 FD CB FF B3
        res  6,[iy+0],e         ; 687A FD CB 00 B3
        RES  6,[IY+0],E         ; 687E FD CB 00 B3
        res  6,[iy+127],e       ; 6882 FD CB 7F B3
        RES  6,[IY+127],E       ; 6886 FD CB 7F B3
        res  6,[iy+-128],h      ; 688A FD CB 80 B4
        RES  6,[IY+-128],H      ; 688E FD CB 80 B4
        res  6,[iy+-1],h        ; 6892 FD CB FF B4
        RES  6,[IY+-1],H        ; 6896 FD CB FF B4
        res  6,[iy+0],h         ; 689A FD CB 00 B4
        RES  6,[IY+0],H         ; 689E FD CB 00 B4
        res  6,[iy+127],h       ; 68A2 FD CB 7F B4
        RES  6,[IY+127],H       ; 68A6 FD CB 7F B4
        res  6,[iy+-128],l      ; 68AA FD CB 80 B5
        RES  6,[IY+-128],L      ; 68AE FD CB 80 B5
        res  6,[iy+-1],l        ; 68B2 FD CB FF B5
        RES  6,[IY+-1],L        ; 68B6 FD CB FF B5
        res  6,[iy+0],l         ; 68BA FD CB 00 B5
        RES  6,[IY+0],L         ; 68BE FD CB 00 B5
        res  6,[iy+127],l       ; 68C2 FD CB 7F B5
        RES  6,[IY+127],L       ; 68C6 FD CB 7F B5
        res  6,a                ; 68CA CB B7
        RES  6,A                ; 68CC CB B7
        res  6,b                ; 68CE CB B0
        RES  6,B                ; 68D0 CB B0
        res  6,c                ; 68D2 CB B1
        RES  6,C                ; 68D4 CB B1
        res  6,d                ; 68D6 CB B2
        RES  6,D                ; 68D8 CB B2
        res  6,e                ; 68DA CB B3
        RES  6,E                ; 68DC CB B3
        res  6,h                ; 68DE CB B4
        RES  6,H                ; 68E0 CB B4
        res  6,l                ; 68E2 CB B5
        RES  6,L                ; 68E4 CB B5
        res  7,(hl)             ; 68E6 CB BE
        RES  7,(HL)             ; 68E8 CB BE
        res  7,(ix+-128)        ; 68EA DD CB 80 BE
        RES  7,(IX+-128)        ; 68EE DD CB 80 BE
        res  7,(ix+-1)          ; 68F2 DD CB FF BE
        RES  7,(IX+-1)          ; 68F6 DD CB FF BE
        res  7,(ix+0)           ; 68FA DD CB 00 BE
        RES  7,(IX+0)           ; 68FE DD CB 00 BE
        res  7,(ix+127)         ; 6902 DD CB 7F BE
        RES  7,(IX+127)         ; 6906 DD CB 7F BE
        res  7,(ix+-128),a      ; 690A DD CB 80 BF
        RES  7,(IX+-128),A      ; 690E DD CB 80 BF
        res  7,(ix+-1),a        ; 6912 DD CB FF BF
        RES  7,(IX+-1),A        ; 6916 DD CB FF BF
        res  7,(ix+0),a         ; 691A DD CB 00 BF
        RES  7,(IX+0),A         ; 691E DD CB 00 BF
        res  7,(ix+127),a       ; 6922 DD CB 7F BF
        RES  7,(IX+127),A       ; 6926 DD CB 7F BF
        res  7,(ix+-128),b      ; 692A DD CB 80 B8
        RES  7,(IX+-128),B      ; 692E DD CB 80 B8
        res  7,(ix+-1),b        ; 6932 DD CB FF B8
        RES  7,(IX+-1),B        ; 6936 DD CB FF B8
        res  7,(ix+0),b         ; 693A DD CB 00 B8
        RES  7,(IX+0),B         ; 693E DD CB 00 B8
        res  7,(ix+127),b       ; 6942 DD CB 7F B8
        RES  7,(IX+127),B       ; 6946 DD CB 7F B8
        res  7,(ix+-128),c      ; 694A DD CB 80 B9
        RES  7,(IX+-128),C      ; 694E DD CB 80 B9
        res  7,(ix+-1),c        ; 6952 DD CB FF B9
        RES  7,(IX+-1),C        ; 6956 DD CB FF B9
        res  7,(ix+0),c         ; 695A DD CB 00 B9
        RES  7,(IX+0),C         ; 695E DD CB 00 B9
        res  7,(ix+127),c       ; 6962 DD CB 7F B9
        RES  7,(IX+127),C       ; 6966 DD CB 7F B9
        res  7,(ix+-128),d      ; 696A DD CB 80 BA
        RES  7,(IX+-128),D      ; 696E DD CB 80 BA
        res  7,(ix+-1),d        ; 6972 DD CB FF BA
        RES  7,(IX+-1),D        ; 6976 DD CB FF BA
        res  7,(ix+0),d         ; 697A DD CB 00 BA
        RES  7,(IX+0),D         ; 697E DD CB 00 BA
        res  7,(ix+127),d       ; 6982 DD CB 7F BA
        RES  7,(IX+127),D       ; 6986 DD CB 7F BA
        res  7,(ix+-128),e      ; 698A DD CB 80 BB
        RES  7,(IX+-128),E      ; 698E DD CB 80 BB
        res  7,(ix+-1),e        ; 6992 DD CB FF BB
        RES  7,(IX+-1),E        ; 6996 DD CB FF BB
        res  7,(ix+0),e         ; 699A DD CB 00 BB
        RES  7,(IX+0),E         ; 699E DD CB 00 BB
        res  7,(ix+127),e       ; 69A2 DD CB 7F BB
        RES  7,(IX+127),E       ; 69A6 DD CB 7F BB
        res  7,(ix+-128),h      ; 69AA DD CB 80 BC
        RES  7,(IX+-128),H      ; 69AE DD CB 80 BC
        res  7,(ix+-1),h        ; 69B2 DD CB FF BC
        RES  7,(IX+-1),H        ; 69B6 DD CB FF BC
        res  7,(ix+0),h         ; 69BA DD CB 00 BC
        RES  7,(IX+0),H         ; 69BE DD CB 00 BC
        res  7,(ix+127),h       ; 69C2 DD CB 7F BC
        RES  7,(IX+127),H       ; 69C6 DD CB 7F BC
        res  7,(ix+-128),l      ; 69CA DD CB 80 BD
        RES  7,(IX+-128),L      ; 69CE DD CB 80 BD
        res  7,(ix+-1),l        ; 69D2 DD CB FF BD
        RES  7,(IX+-1),L        ; 69D6 DD CB FF BD
        res  7,(ix+0),l         ; 69DA DD CB 00 BD
        RES  7,(IX+0),L         ; 69DE DD CB 00 BD
        res  7,(ix+127),l       ; 69E2 DD CB 7F BD
        RES  7,(IX+127),L       ; 69E6 DD CB 7F BD
        res  7,(iy+-128)        ; 69EA FD CB 80 BE
        RES  7,(IY+-128)        ; 69EE FD CB 80 BE
        res  7,(iy+-1)          ; 69F2 FD CB FF BE
        RES  7,(IY+-1)          ; 69F6 FD CB FF BE
        res  7,(iy+0)           ; 69FA FD CB 00 BE
        RES  7,(IY+0)           ; 69FE FD CB 00 BE
        res  7,(iy+127)         ; 6A02 FD CB 7F BE
        RES  7,(IY+127)         ; 6A06 FD CB 7F BE
        res  7,(iy+-128),a      ; 6A0A FD CB 80 BF
        RES  7,(IY+-128),A      ; 6A0E FD CB 80 BF
        res  7,(iy+-1),a        ; 6A12 FD CB FF BF
        RES  7,(IY+-1),A        ; 6A16 FD CB FF BF
        res  7,(iy+0),a         ; 6A1A FD CB 00 BF
        RES  7,(IY+0),A         ; 6A1E FD CB 00 BF
        res  7,(iy+127),a       ; 6A22 FD CB 7F BF
        RES  7,(IY+127),A       ; 6A26 FD CB 7F BF
        res  7,(iy+-128),b      ; 6A2A FD CB 80 B8
        RES  7,(IY+-128),B      ; 6A2E FD CB 80 B8
        res  7,(iy+-1),b        ; 6A32 FD CB FF B8
        RES  7,(IY+-1),B        ; 6A36 FD CB FF B8
        res  7,(iy+0),b         ; 6A3A FD CB 00 B8
        RES  7,(IY+0),B         ; 6A3E FD CB 00 B8
        res  7,(iy+127),b       ; 6A42 FD CB 7F B8
        RES  7,(IY+127),B       ; 6A46 FD CB 7F B8
        res  7,(iy+-128),c      ; 6A4A FD CB 80 B9
        RES  7,(IY+-128),C      ; 6A4E FD CB 80 B9
        res  7,(iy+-1),c        ; 6A52 FD CB FF B9
        RES  7,(IY+-1),C        ; 6A56 FD CB FF B9
        res  7,(iy+0),c         ; 6A5A FD CB 00 B9
        RES  7,(IY+0),C         ; 6A5E FD CB 00 B9
        res  7,(iy+127),c       ; 6A62 FD CB 7F B9
        RES  7,(IY+127),C       ; 6A66 FD CB 7F B9
        res  7,(iy+-128),d      ; 6A6A FD CB 80 BA
        RES  7,(IY+-128),D      ; 6A6E FD CB 80 BA
        res  7,(iy+-1),d        ; 6A72 FD CB FF BA
        RES  7,(IY+-1),D        ; 6A76 FD CB FF BA
        res  7,(iy+0),d         ; 6A7A FD CB 00 BA
        RES  7,(IY+0),D         ; 6A7E FD CB 00 BA
        res  7,(iy+127),d       ; 6A82 FD CB 7F BA
        RES  7,(IY+127),D       ; 6A86 FD CB 7F BA
        res  7,(iy+-128),e      ; 6A8A FD CB 80 BB
        RES  7,(IY+-128),E      ; 6A8E FD CB 80 BB
        res  7,(iy+-1),e        ; 6A92 FD CB FF BB
        RES  7,(IY+-1),E        ; 6A96 FD CB FF BB
        res  7,(iy+0),e         ; 6A9A FD CB 00 BB
        RES  7,(IY+0),E         ; 6A9E FD CB 00 BB
        res  7,(iy+127),e       ; 6AA2 FD CB 7F BB
        RES  7,(IY+127),E       ; 6AA6 FD CB 7F BB
        res  7,(iy+-128),h      ; 6AAA FD CB 80 BC
        RES  7,(IY+-128),H      ; 6AAE FD CB 80 BC
        res  7,(iy+-1),h        ; 6AB2 FD CB FF BC
        RES  7,(IY+-1),H        ; 6AB6 FD CB FF BC
        res  7,(iy+0),h         ; 6ABA FD CB 00 BC
        RES  7,(IY+0),H         ; 6ABE FD CB 00 BC
        res  7,(iy+127),h       ; 6AC2 FD CB 7F BC
        RES  7,(IY+127),H       ; 6AC6 FD CB 7F BC
        res  7,(iy+-128),l      ; 6ACA FD CB 80 BD
        RES  7,(IY+-128),L      ; 6ACE FD CB 80 BD
        res  7,(iy+-1),l        ; 6AD2 FD CB FF BD
        RES  7,(IY+-1),L        ; 6AD6 FD CB FF BD
        res  7,(iy+0),l         ; 6ADA FD CB 00 BD
        RES  7,(IY+0),L         ; 6ADE FD CB 00 BD
        res  7,(iy+127),l       ; 6AE2 FD CB 7F BD
        RES  7,(IY+127),L       ; 6AE6 FD CB 7F BD
        res  7,[hl]             ; 6AEA CB BE
        RES  7,[HL]             ; 6AEC CB BE
        res  7,[ix+-128]        ; 6AEE DD CB 80 BE
        RES  7,[IX+-128]        ; 6AF2 DD CB 80 BE
        res  7,[ix+-1]          ; 6AF6 DD CB FF BE
        RES  7,[IX+-1]          ; 6AFA DD CB FF BE
        res  7,[ix+0]           ; 6AFE DD CB 00 BE
        RES  7,[IX+0]           ; 6B02 DD CB 00 BE
        res  7,[ix+127]         ; 6B06 DD CB 7F BE
        RES  7,[IX+127]         ; 6B0A DD CB 7F BE
        res  7,[ix+-128],a      ; 6B0E DD CB 80 BF
        RES  7,[IX+-128],A      ; 6B12 DD CB 80 BF
        res  7,[ix+-1],a        ; 6B16 DD CB FF BF
        RES  7,[IX+-1],A        ; 6B1A DD CB FF BF
        res  7,[ix+0],a         ; 6B1E DD CB 00 BF
        RES  7,[IX+0],A         ; 6B22 DD CB 00 BF
        res  7,[ix+127],a       ; 6B26 DD CB 7F BF
        RES  7,[IX+127],A       ; 6B2A DD CB 7F BF
        res  7,[ix+-128],b      ; 6B2E DD CB 80 B8
        RES  7,[IX+-128],B      ; 6B32 DD CB 80 B8
        res  7,[ix+-1],b        ; 6B36 DD CB FF B8
        RES  7,[IX+-1],B        ; 6B3A DD CB FF B8
        res  7,[ix+0],b         ; 6B3E DD CB 00 B8
        RES  7,[IX+0],B         ; 6B42 DD CB 00 B8
        res  7,[ix+127],b       ; 6B46 DD CB 7F B8
        RES  7,[IX+127],B       ; 6B4A DD CB 7F B8
        res  7,[ix+-128],c      ; 6B4E DD CB 80 B9
        RES  7,[IX+-128],C      ; 6B52 DD CB 80 B9
        res  7,[ix+-1],c        ; 6B56 DD CB FF B9
        RES  7,[IX+-1],C        ; 6B5A DD CB FF B9
        res  7,[ix+0],c         ; 6B5E DD CB 00 B9
        RES  7,[IX+0],C         ; 6B62 DD CB 00 B9
        res  7,[ix+127],c       ; 6B66 DD CB 7F B9
        RES  7,[IX+127],C       ; 6B6A DD CB 7F B9
        res  7,[ix+-128],d      ; 6B6E DD CB 80 BA
        RES  7,[IX+-128],D      ; 6B72 DD CB 80 BA
        res  7,[ix+-1],d        ; 6B76 DD CB FF BA
        RES  7,[IX+-1],D        ; 6B7A DD CB FF BA
        res  7,[ix+0],d         ; 6B7E DD CB 00 BA
        RES  7,[IX+0],D         ; 6B82 DD CB 00 BA
        res  7,[ix+127],d       ; 6B86 DD CB 7F BA
        RES  7,[IX+127],D       ; 6B8A DD CB 7F BA
        res  7,[ix+-128],e      ; 6B8E DD CB 80 BB
        RES  7,[IX+-128],E      ; 6B92 DD CB 80 BB
        res  7,[ix+-1],e        ; 6B96 DD CB FF BB
        RES  7,[IX+-1],E        ; 6B9A DD CB FF BB
        res  7,[ix+0],e         ; 6B9E DD CB 00 BB
        RES  7,[IX+0],E         ; 6BA2 DD CB 00 BB
        res  7,[ix+127],e       ; 6BA6 DD CB 7F BB
        RES  7,[IX+127],E       ; 6BAA DD CB 7F BB
        res  7,[ix+-128],h      ; 6BAE DD CB 80 BC
        RES  7,[IX+-128],H      ; 6BB2 DD CB 80 BC
        res  7,[ix+-1],h        ; 6BB6 DD CB FF BC
        RES  7,[IX+-1],H        ; 6BBA DD CB FF BC
        res  7,[ix+0],h         ; 6BBE DD CB 00 BC
        RES  7,[IX+0],H         ; 6BC2 DD CB 00 BC
        res  7,[ix+127],h       ; 6BC6 DD CB 7F BC
        RES  7,[IX+127],H       ; 6BCA DD CB 7F BC
        res  7,[ix+-128],l      ; 6BCE DD CB 80 BD
        RES  7,[IX+-128],L      ; 6BD2 DD CB 80 BD
        res  7,[ix+-1],l        ; 6BD6 DD CB FF BD
        RES  7,[IX+-1],L        ; 6BDA DD CB FF BD
        res  7,[ix+0],l         ; 6BDE DD CB 00 BD
        RES  7,[IX+0],L         ; 6BE2 DD CB 00 BD
        res  7,[ix+127],l       ; 6BE6 DD CB 7F BD
        RES  7,[IX+127],L       ; 6BEA DD CB 7F BD
        res  7,[iy+-128]        ; 6BEE FD CB 80 BE
        RES  7,[IY+-128]        ; 6BF2 FD CB 80 BE
        res  7,[iy+-1]          ; 6BF6 FD CB FF BE
        RES  7,[IY+-1]          ; 6BFA FD CB FF BE
        res  7,[iy+0]           ; 6BFE FD CB 00 BE
        RES  7,[IY+0]           ; 6C02 FD CB 00 BE
        res  7,[iy+127]         ; 6C06 FD CB 7F BE
        RES  7,[IY+127]         ; 6C0A FD CB 7F BE
        res  7,[iy+-128],a      ; 6C0E FD CB 80 BF
        RES  7,[IY+-128],A      ; 6C12 FD CB 80 BF
        res  7,[iy+-1],a        ; 6C16 FD CB FF BF
        RES  7,[IY+-1],A        ; 6C1A FD CB FF BF
        res  7,[iy+0],a         ; 6C1E FD CB 00 BF
        RES  7,[IY+0],A         ; 6C22 FD CB 00 BF
        res  7,[iy+127],a       ; 6C26 FD CB 7F BF
        RES  7,[IY+127],A       ; 6C2A FD CB 7F BF
        res  7,[iy+-128],b      ; 6C2E FD CB 80 B8
        RES  7,[IY+-128],B      ; 6C32 FD CB 80 B8
        res  7,[iy+-1],b        ; 6C36 FD CB FF B8
        RES  7,[IY+-1],B        ; 6C3A FD CB FF B8
        res  7,[iy+0],b         ; 6C3E FD CB 00 B8
        RES  7,[IY+0],B         ; 6C42 FD CB 00 B8
        res  7,[iy+127],b       ; 6C46 FD CB 7F B8
        RES  7,[IY+127],B       ; 6C4A FD CB 7F B8
        res  7,[iy+-128],c      ; 6C4E FD CB 80 B9
        RES  7,[IY+-128],C      ; 6C52 FD CB 80 B9
        res  7,[iy+-1],c        ; 6C56 FD CB FF B9
        RES  7,[IY+-1],C        ; 6C5A FD CB FF B9
        res  7,[iy+0],c         ; 6C5E FD CB 00 B9
        RES  7,[IY+0],C         ; 6C62 FD CB 00 B9
        res  7,[iy+127],c       ; 6C66 FD CB 7F B9
        RES  7,[IY+127],C       ; 6C6A FD CB 7F B9
        res  7,[iy+-128],d      ; 6C6E FD CB 80 BA
        RES  7,[IY+-128],D      ; 6C72 FD CB 80 BA
        res  7,[iy+-1],d        ; 6C76 FD CB FF BA
        RES  7,[IY+-1],D        ; 6C7A FD CB FF BA
        res  7,[iy+0],d         ; 6C7E FD CB 00 BA
        RES  7,[IY+0],D         ; 6C82 FD CB 00 BA
        res  7,[iy+127],d       ; 6C86 FD CB 7F BA
        RES  7,[IY+127],D       ; 6C8A FD CB 7F BA
        res  7,[iy+-128],e      ; 6C8E FD CB 80 BB
        RES  7,[IY+-128],E      ; 6C92 FD CB 80 BB
        res  7,[iy+-1],e        ; 6C96 FD CB FF BB
        RES  7,[IY+-1],E        ; 6C9A FD CB FF BB
        res  7,[iy+0],e         ; 6C9E FD CB 00 BB
        RES  7,[IY+0],E         ; 6CA2 FD CB 00 BB
        res  7,[iy+127],e       ; 6CA6 FD CB 7F BB
        RES  7,[IY+127],E       ; 6CAA FD CB 7F BB
        res  7,[iy+-128],h      ; 6CAE FD CB 80 BC
        RES  7,[IY+-128],H      ; 6CB2 FD CB 80 BC
        res  7,[iy+-1],h        ; 6CB6 FD CB FF BC
        RES  7,[IY+-1],H        ; 6CBA FD CB FF BC
        res  7,[iy+0],h         ; 6CBE FD CB 00 BC
        RES  7,[IY+0],H         ; 6CC2 FD CB 00 BC
        res  7,[iy+127],h       ; 6CC6 FD CB 7F BC
        RES  7,[IY+127],H       ; 6CCA FD CB 7F BC
        res  7,[iy+-128],l      ; 6CCE FD CB 80 BD
        RES  7,[IY+-128],L      ; 6CD2 FD CB 80 BD
        res  7,[iy+-1],l        ; 6CD6 FD CB FF BD
        RES  7,[IY+-1],L        ; 6CDA FD CB FF BD
        res  7,[iy+0],l         ; 6CDE FD CB 00 BD
        RES  7,[IY+0],L         ; 6CE2 FD CB 00 BD
        res  7,[iy+127],l       ; 6CE6 FD CB 7F BD
        RES  7,[IY+127],L       ; 6CEA FD CB 7F BD
        res  7,a                ; 6CEE CB BF
        RES  7,A                ; 6CF0 CB BF
        res  7,b                ; 6CF2 CB B8
        RES  7,B                ; 6CF4 CB B8
        res  7,c                ; 6CF6 CB B9
        RES  7,C                ; 6CF8 CB B9
        res  7,d                ; 6CFA CB BA
        RES  7,D                ; 6CFC CB BA
        res  7,e                ; 6CFE CB BB
        RES  7,E                ; 6D00 CB BB
        res  7,h                ; 6D02 CB BC
        RES  7,H                ; 6D04 CB BC
        res  7,l                ; 6D06 CB BD
        RES  7,L                ; 6D08 CB BD
        ret                     ; 6D0A C9
        RET                     ; 6D0B C9
        ret  c                  ; 6D0C D8
        RET  C                  ; 6D0D D8
        ret  m                  ; 6D0E F8
        RET  M                  ; 6D0F F8
        ret  nc                 ; 6D10 D0
        RET  NC                 ; 6D11 D0
        ret  nz                 ; 6D12 C0
        RET  NZ                 ; 6D13 C0
        ret  p                  ; 6D14 F0
        RET  P                  ; 6D15 F0
        ret  pe                 ; 6D16 E8
        RET  PE                 ; 6D17 E8
        ret  po                 ; 6D18 E0
        RET  PO                 ; 6D19 E0
        ret  z                  ; 6D1A C8
        RET  Z                  ; 6D1B C8
        reti                    ; 6D1C ED 4D
        RETI                    ; 6D1E ED 4D
        retn                    ; 6D20 ED 45
        RETN                    ; 6D22 ED 45
        rl   (hl)               ; 6D24 CB 16
        RL   (HL)               ; 6D26 CB 16
        rl   (ix+-128)          ; 6D28 DD CB 80 16
        RL   (IX+-128)          ; 6D2C DD CB 80 16
        rl   (ix+-1)            ; 6D30 DD CB FF 16
        RL   (IX+-1)            ; 6D34 DD CB FF 16
        rl   (ix+0)             ; 6D38 DD CB 00 16
        RL   (IX+0)             ; 6D3C DD CB 00 16
        rl   (ix+127)           ; 6D40 DD CB 7F 16
        RL   (IX+127)           ; 6D44 DD CB 7F 16
        rl   (ix+-128),a        ; 6D48 DD CB 80 17
        RL   (IX+-128),A        ; 6D4C DD CB 80 17
        rl   (ix+-1),a          ; 6D50 DD CB FF 17
        RL   (IX+-1),A          ; 6D54 DD CB FF 17
        rl   (ix+0),a           ; 6D58 DD CB 00 17
        RL   (IX+0),A           ; 6D5C DD CB 00 17
        rl   (ix+127),a         ; 6D60 DD CB 7F 17
        RL   (IX+127),A         ; 6D64 DD CB 7F 17
        rl   (ix+-128),b        ; 6D68 DD CB 80 10
        RL   (IX+-128),B        ; 6D6C DD CB 80 10
        rl   (ix+-1),b          ; 6D70 DD CB FF 10
        RL   (IX+-1),B          ; 6D74 DD CB FF 10
        rl   (ix+0),b           ; 6D78 DD CB 00 10
        RL   (IX+0),B           ; 6D7C DD CB 00 10
        rl   (ix+127),b         ; 6D80 DD CB 7F 10
        RL   (IX+127),B         ; 6D84 DD CB 7F 10
        rl   (ix+-128),c        ; 6D88 DD CB 80 11
        RL   (IX+-128),C        ; 6D8C DD CB 80 11
        rl   (ix+-1),c          ; 6D90 DD CB FF 11
        RL   (IX+-1),C          ; 6D94 DD CB FF 11
        rl   (ix+0),c           ; 6D98 DD CB 00 11
        RL   (IX+0),C           ; 6D9C DD CB 00 11
        rl   (ix+127),c         ; 6DA0 DD CB 7F 11
        RL   (IX+127),C         ; 6DA4 DD CB 7F 11
        rl   (ix+-128),d        ; 6DA8 DD CB 80 12
        RL   (IX+-128),D        ; 6DAC DD CB 80 12
        rl   (ix+-1),d          ; 6DB0 DD CB FF 12
        RL   (IX+-1),D          ; 6DB4 DD CB FF 12
        rl   (ix+0),d           ; 6DB8 DD CB 00 12
        RL   (IX+0),D           ; 6DBC DD CB 00 12
        rl   (ix+127),d         ; 6DC0 DD CB 7F 12
        RL   (IX+127),D         ; 6DC4 DD CB 7F 12
        rl   (ix+-128),e        ; 6DC8 DD CB 80 13
        RL   (IX+-128),E        ; 6DCC DD CB 80 13
        rl   (ix+-1),e          ; 6DD0 DD CB FF 13
        RL   (IX+-1),E          ; 6DD4 DD CB FF 13
        rl   (ix+0),e           ; 6DD8 DD CB 00 13
        RL   (IX+0),E           ; 6DDC DD CB 00 13
        rl   (ix+127),e         ; 6DE0 DD CB 7F 13
        RL   (IX+127),E         ; 6DE4 DD CB 7F 13
        rl   (ix+-128),h        ; 6DE8 DD CB 80 14
        RL   (IX+-128),H        ; 6DEC DD CB 80 14
        rl   (ix+-1),h          ; 6DF0 DD CB FF 14
        RL   (IX+-1),H          ; 6DF4 DD CB FF 14
        rl   (ix+0),h           ; 6DF8 DD CB 00 14
        RL   (IX+0),H           ; 6DFC DD CB 00 14
        rl   (ix+127),h         ; 6E00 DD CB 7F 14
        RL   (IX+127),H         ; 6E04 DD CB 7F 14
        rl   (ix+-128),l        ; 6E08 DD CB 80 15
        RL   (IX+-128),L        ; 6E0C DD CB 80 15
        rl   (ix+-1),l          ; 6E10 DD CB FF 15
        RL   (IX+-1),L          ; 6E14 DD CB FF 15
        rl   (ix+0),l           ; 6E18 DD CB 00 15
        RL   (IX+0),L           ; 6E1C DD CB 00 15
        rl   (ix+127),l         ; 6E20 DD CB 7F 15
        RL   (IX+127),L         ; 6E24 DD CB 7F 15
        rl   (iy+-128)          ; 6E28 FD CB 80 16
        RL   (IY+-128)          ; 6E2C FD CB 80 16
        rl   (iy+-1)            ; 6E30 FD CB FF 16
        RL   (IY+-1)            ; 6E34 FD CB FF 16
        rl   (iy+0)             ; 6E38 FD CB 00 16
        RL   (IY+0)             ; 6E3C FD CB 00 16
        rl   (iy+127)           ; 6E40 FD CB 7F 16
        RL   (IY+127)           ; 6E44 FD CB 7F 16
        rl   (iy+-128),a        ; 6E48 FD CB 80 17
        RL   (IY+-128),A        ; 6E4C FD CB 80 17
        rl   (iy+-1),a          ; 6E50 FD CB FF 17
        RL   (IY+-1),A          ; 6E54 FD CB FF 17
        rl   (iy+0),a           ; 6E58 FD CB 00 17
        RL   (IY+0),A           ; 6E5C FD CB 00 17
        rl   (iy+127),a         ; 6E60 FD CB 7F 17
        RL   (IY+127),A         ; 6E64 FD CB 7F 17
        rl   (iy+-128),b        ; 6E68 FD CB 80 10
        RL   (IY+-128),B        ; 6E6C FD CB 80 10
        rl   (iy+-1),b          ; 6E70 FD CB FF 10
        RL   (IY+-1),B          ; 6E74 FD CB FF 10
        rl   (iy+0),b           ; 6E78 FD CB 00 10
        RL   (IY+0),B           ; 6E7C FD CB 00 10
        rl   (iy+127),b         ; 6E80 FD CB 7F 10
        RL   (IY+127),B         ; 6E84 FD CB 7F 10
        rl   (iy+-128),c        ; 6E88 FD CB 80 11
        RL   (IY+-128),C        ; 6E8C FD CB 80 11
        rl   (iy+-1),c          ; 6E90 FD CB FF 11
        RL   (IY+-1),C          ; 6E94 FD CB FF 11
        rl   (iy+0),c           ; 6E98 FD CB 00 11
        RL   (IY+0),C           ; 6E9C FD CB 00 11
        rl   (iy+127),c         ; 6EA0 FD CB 7F 11
        RL   (IY+127),C         ; 6EA4 FD CB 7F 11
        rl   (iy+-128),d        ; 6EA8 FD CB 80 12
        RL   (IY+-128),D        ; 6EAC FD CB 80 12
        rl   (iy+-1),d          ; 6EB0 FD CB FF 12
        RL   (IY+-1),D          ; 6EB4 FD CB FF 12
        rl   (iy+0),d           ; 6EB8 FD CB 00 12
        RL   (IY+0),D           ; 6EBC FD CB 00 12
        rl   (iy+127),d         ; 6EC0 FD CB 7F 12
        RL   (IY+127),D         ; 6EC4 FD CB 7F 12
        rl   (iy+-128),e        ; 6EC8 FD CB 80 13
        RL   (IY+-128),E        ; 6ECC FD CB 80 13
        rl   (iy+-1),e          ; 6ED0 FD CB FF 13
        RL   (IY+-1),E          ; 6ED4 FD CB FF 13
        rl   (iy+0),e           ; 6ED8 FD CB 00 13
        RL   (IY+0),E           ; 6EDC FD CB 00 13
        rl   (iy+127),e         ; 6EE0 FD CB 7F 13
        RL   (IY+127),E         ; 6EE4 FD CB 7F 13
        rl   (iy+-128),h        ; 6EE8 FD CB 80 14
        RL   (IY+-128),H        ; 6EEC FD CB 80 14
        rl   (iy+-1),h          ; 6EF0 FD CB FF 14
        RL   (IY+-1),H          ; 6EF4 FD CB FF 14
        rl   (iy+0),h           ; 6EF8 FD CB 00 14
        RL   (IY+0),H           ; 6EFC FD CB 00 14
        rl   (iy+127),h         ; 6F00 FD CB 7F 14
        RL   (IY+127),H         ; 6F04 FD CB 7F 14
        rl   (iy+-128),l        ; 6F08 FD CB 80 15
        RL   (IY+-128),L        ; 6F0C FD CB 80 15
        rl   (iy+-1),l          ; 6F10 FD CB FF 15
        RL   (IY+-1),L          ; 6F14 FD CB FF 15
        rl   (iy+0),l           ; 6F18 FD CB 00 15
        RL   (IY+0),L           ; 6F1C FD CB 00 15
        rl   (iy+127),l         ; 6F20 FD CB 7F 15
        RL   (IY+127),L         ; 6F24 FD CB 7F 15
        rl   [hl]               ; 6F28 CB 16
        RL   [HL]               ; 6F2A CB 16
        rl   [ix+-128]          ; 6F2C DD CB 80 16
        RL   [IX+-128]          ; 6F30 DD CB 80 16
        rl   [ix+-1]            ; 6F34 DD CB FF 16
        RL   [IX+-1]            ; 6F38 DD CB FF 16
        rl   [ix+0]             ; 6F3C DD CB 00 16
        RL   [IX+0]             ; 6F40 DD CB 00 16
        rl   [ix+127]           ; 6F44 DD CB 7F 16
        RL   [IX+127]           ; 6F48 DD CB 7F 16
        rl   [ix+-128],a        ; 6F4C DD CB 80 17
        RL   [IX+-128],A        ; 6F50 DD CB 80 17
        rl   [ix+-1],a          ; 6F54 DD CB FF 17
        RL   [IX+-1],A          ; 6F58 DD CB FF 17
        rl   [ix+0],a           ; 6F5C DD CB 00 17
        RL   [IX+0],A           ; 6F60 DD CB 00 17
        rl   [ix+127],a         ; 6F64 DD CB 7F 17
        RL   [IX+127],A         ; 6F68 DD CB 7F 17
        rl   [ix+-128],b        ; 6F6C DD CB 80 10
        RL   [IX+-128],B        ; 6F70 DD CB 80 10
        rl   [ix+-1],b          ; 6F74 DD CB FF 10
        RL   [IX+-1],B          ; 6F78 DD CB FF 10
        rl   [ix+0],b           ; 6F7C DD CB 00 10
        RL   [IX+0],B           ; 6F80 DD CB 00 10
        rl   [ix+127],b         ; 6F84 DD CB 7F 10
        RL   [IX+127],B         ; 6F88 DD CB 7F 10
        rl   [ix+-128],c        ; 6F8C DD CB 80 11
        RL   [IX+-128],C        ; 6F90 DD CB 80 11
        rl   [ix+-1],c          ; 6F94 DD CB FF 11
        RL   [IX+-1],C          ; 6F98 DD CB FF 11
        rl   [ix+0],c           ; 6F9C DD CB 00 11
        RL   [IX+0],C           ; 6FA0 DD CB 00 11
        rl   [ix+127],c         ; 6FA4 DD CB 7F 11
        RL   [IX+127],C         ; 6FA8 DD CB 7F 11
        rl   [ix+-128],d        ; 6FAC DD CB 80 12
        RL   [IX+-128],D        ; 6FB0 DD CB 80 12
        rl   [ix+-1],d          ; 6FB4 DD CB FF 12
        RL   [IX+-1],D          ; 6FB8 DD CB FF 12
        rl   [ix+0],d           ; 6FBC DD CB 00 12
        RL   [IX+0],D           ; 6FC0 DD CB 00 12
        rl   [ix+127],d         ; 6FC4 DD CB 7F 12
        RL   [IX+127],D         ; 6FC8 DD CB 7F 12
        rl   [ix+-128],e        ; 6FCC DD CB 80 13
        RL   [IX+-128],E        ; 6FD0 DD CB 80 13
        rl   [ix+-1],e          ; 6FD4 DD CB FF 13
        RL   [IX+-1],E          ; 6FD8 DD CB FF 13
        rl   [ix+0],e           ; 6FDC DD CB 00 13
        RL   [IX+0],E           ; 6FE0 DD CB 00 13
        rl   [ix+127],e         ; 6FE4 DD CB 7F 13
        RL   [IX+127],E         ; 6FE8 DD CB 7F 13
        rl   [ix+-128],h        ; 6FEC DD CB 80 14
        RL   [IX+-128],H        ; 6FF0 DD CB 80 14
        rl   [ix+-1],h          ; 6FF4 DD CB FF 14
        RL   [IX+-1],H          ; 6FF8 DD CB FF 14
        rl   [ix+0],h           ; 6FFC DD CB 00 14
        RL   [IX+0],H           ; 7000 DD CB 00 14
        rl   [ix+127],h         ; 7004 DD CB 7F 14
        RL   [IX+127],H         ; 7008 DD CB 7F 14
        rl   [ix+-128],l        ; 700C DD CB 80 15
        RL   [IX+-128],L        ; 7010 DD CB 80 15
        rl   [ix+-1],l          ; 7014 DD CB FF 15
        RL   [IX+-1],L          ; 7018 DD CB FF 15
        rl   [ix+0],l           ; 701C DD CB 00 15
        RL   [IX+0],L           ; 7020 DD CB 00 15
        rl   [ix+127],l         ; 7024 DD CB 7F 15
        RL   [IX+127],L         ; 7028 DD CB 7F 15
        rl   [iy+-128]          ; 702C FD CB 80 16
        RL   [IY+-128]          ; 7030 FD CB 80 16
        rl   [iy+-1]            ; 7034 FD CB FF 16
        RL   [IY+-1]            ; 7038 FD CB FF 16
        rl   [iy+0]             ; 703C FD CB 00 16
        RL   [IY+0]             ; 7040 FD CB 00 16
        rl   [iy+127]           ; 7044 FD CB 7F 16
        RL   [IY+127]           ; 7048 FD CB 7F 16
        rl   [iy+-128],a        ; 704C FD CB 80 17
        RL   [IY+-128],A        ; 7050 FD CB 80 17
        rl   [iy+-1],a          ; 7054 FD CB FF 17
        RL   [IY+-1],A          ; 7058 FD CB FF 17
        rl   [iy+0],a           ; 705C FD CB 00 17
        RL   [IY+0],A           ; 7060 FD CB 00 17
        rl   [iy+127],a         ; 7064 FD CB 7F 17
        RL   [IY+127],A         ; 7068 FD CB 7F 17
        rl   [iy+-128],b        ; 706C FD CB 80 10
        RL   [IY+-128],B        ; 7070 FD CB 80 10
        rl   [iy+-1],b          ; 7074 FD CB FF 10
        RL   [IY+-1],B          ; 7078 FD CB FF 10
        rl   [iy+0],b           ; 707C FD CB 00 10
        RL   [IY+0],B           ; 7080 FD CB 00 10
        rl   [iy+127],b         ; 7084 FD CB 7F 10
        RL   [IY+127],B         ; 7088 FD CB 7F 10
        rl   [iy+-128],c        ; 708C FD CB 80 11
        RL   [IY+-128],C        ; 7090 FD CB 80 11
        rl   [iy+-1],c          ; 7094 FD CB FF 11
        RL   [IY+-1],C          ; 7098 FD CB FF 11
        rl   [iy+0],c           ; 709C FD CB 00 11
        RL   [IY+0],C           ; 70A0 FD CB 00 11
        rl   [iy+127],c         ; 70A4 FD CB 7F 11
        RL   [IY+127],C         ; 70A8 FD CB 7F 11
        rl   [iy+-128],d        ; 70AC FD CB 80 12
        RL   [IY+-128],D        ; 70B0 FD CB 80 12
        rl   [iy+-1],d          ; 70B4 FD CB FF 12
        RL   [IY+-1],D          ; 70B8 FD CB FF 12
        rl   [iy+0],d           ; 70BC FD CB 00 12
        RL   [IY+0],D           ; 70C0 FD CB 00 12
        rl   [iy+127],d         ; 70C4 FD CB 7F 12
        RL   [IY+127],D         ; 70C8 FD CB 7F 12
        rl   [iy+-128],e        ; 70CC FD CB 80 13
        RL   [IY+-128],E        ; 70D0 FD CB 80 13
        rl   [iy+-1],e          ; 70D4 FD CB FF 13
        RL   [IY+-1],E          ; 70D8 FD CB FF 13
        rl   [iy+0],e           ; 70DC FD CB 00 13
        RL   [IY+0],E           ; 70E0 FD CB 00 13
        rl   [iy+127],e         ; 70E4 FD CB 7F 13
        RL   [IY+127],E         ; 70E8 FD CB 7F 13
        rl   [iy+-128],h        ; 70EC FD CB 80 14
        RL   [IY+-128],H        ; 70F0 FD CB 80 14
        rl   [iy+-1],h          ; 70F4 FD CB FF 14
        RL   [IY+-1],H          ; 70F8 FD CB FF 14
        rl   [iy+0],h           ; 70FC FD CB 00 14
        RL   [IY+0],H           ; 7100 FD CB 00 14
        rl   [iy+127],h         ; 7104 FD CB 7F 14
        RL   [IY+127],H         ; 7108 FD CB 7F 14
        rl   [iy+-128],l        ; 710C FD CB 80 15
        RL   [IY+-128],L        ; 7110 FD CB 80 15
        rl   [iy+-1],l          ; 7114 FD CB FF 15
        RL   [IY+-1],L          ; 7118 FD CB FF 15
        rl   [iy+0],l           ; 711C FD CB 00 15
        RL   [IY+0],L           ; 7120 FD CB 00 15
        rl   [iy+127],l         ; 7124 FD CB 7F 15
        RL   [IY+127],L         ; 7128 FD CB 7F 15
        rl   a                  ; 712C CB 17
        RL   A                  ; 712E CB 17
        rl   b                  ; 7130 CB 10
        RL   B                  ; 7132 CB 10
        rl   bc                 ; 7134 CB 11 CB 10
        RL   BC                 ; 7138 CB 11 CB 10
        rl   c                  ; 713C CB 11
        RL   C                  ; 713E CB 11
        rl   d                  ; 7140 CB 12
        RL   D                  ; 7142 CB 12
        rl   de                 ; 7144 CB 13 CB 12
        RL   DE                 ; 7148 CB 13 CB 12
        rl   e                  ; 714C CB 13
        RL   E                  ; 714E CB 13
        rl   h                  ; 7150 CB 14
        RL   H                  ; 7152 CB 14
        rl   hl                 ; 7154 CB 15 CB 14
        RL   HL                 ; 7158 CB 15 CB 14
        rl   l                  ; 715C CB 15
        RL   L                  ; 715E CB 15
        rla                     ; 7160 17
        RLA                     ; 7161 17
        rlc  (hl)               ; 7162 CB 06
        RLC  (HL)               ; 7164 CB 06
        rlc  (ix+-128)          ; 7166 DD CB 80 06
        RLC  (IX+-128)          ; 716A DD CB 80 06
        rlc  (ix+-1)            ; 716E DD CB FF 06
        RLC  (IX+-1)            ; 7172 DD CB FF 06
        rlc  (ix+0)             ; 7176 DD CB 00 06
        RLC  (IX+0)             ; 717A DD CB 00 06
        rlc  (ix+127)           ; 717E DD CB 7F 06
        RLC  (IX+127)           ; 7182 DD CB 7F 06
        rlc  (ix+-128),a        ; 7186 DD CB 80 07
        RLC  (IX+-128),A        ; 718A DD CB 80 07
        rlc  (ix+-1),a          ; 718E DD CB FF 07
        RLC  (IX+-1),A          ; 7192 DD CB FF 07
        rlc  (ix+0),a           ; 7196 DD CB 00 07
        RLC  (IX+0),A           ; 719A DD CB 00 07
        rlc  (ix+127),a         ; 719E DD CB 7F 07
        RLC  (IX+127),A         ; 71A2 DD CB 7F 07
        rlc  (ix+-128),b        ; 71A6 DD CB 80 00
        RLC  (IX+-128),B        ; 71AA DD CB 80 00
        rlc  (ix+-1),b          ; 71AE DD CB FF 00
        RLC  (IX+-1),B          ; 71B2 DD CB FF 00
        rlc  (ix+0),b           ; 71B6 DD CB 00 00
        RLC  (IX+0),B           ; 71BA DD CB 00 00
        rlc  (ix+127),b         ; 71BE DD CB 7F 00
        RLC  (IX+127),B         ; 71C2 DD CB 7F 00
        rlc  (ix+-128),c        ; 71C6 DD CB 80 01
        RLC  (IX+-128),C        ; 71CA DD CB 80 01
        rlc  (ix+-1),c          ; 71CE DD CB FF 01
        RLC  (IX+-1),C          ; 71D2 DD CB FF 01
        rlc  (ix+0),c           ; 71D6 DD CB 00 01
        RLC  (IX+0),C           ; 71DA DD CB 00 01
        rlc  (ix+127),c         ; 71DE DD CB 7F 01
        RLC  (IX+127),C         ; 71E2 DD CB 7F 01
        rlc  (ix+-128),d        ; 71E6 DD CB 80 02
        RLC  (IX+-128),D        ; 71EA DD CB 80 02
        rlc  (ix+-1),d          ; 71EE DD CB FF 02
        RLC  (IX+-1),D          ; 71F2 DD CB FF 02
        rlc  (ix+0),d           ; 71F6 DD CB 00 02
        RLC  (IX+0),D           ; 71FA DD CB 00 02
        rlc  (ix+127),d         ; 71FE DD CB 7F 02
        RLC  (IX+127),D         ; 7202 DD CB 7F 02
        rlc  (ix+-128),e        ; 7206 DD CB 80 03
        RLC  (IX+-128),E        ; 720A DD CB 80 03
        rlc  (ix+-1),e          ; 720E DD CB FF 03
        RLC  (IX+-1),E          ; 7212 DD CB FF 03
        rlc  (ix+0),e           ; 7216 DD CB 00 03
        RLC  (IX+0),E           ; 721A DD CB 00 03
        rlc  (ix+127),e         ; 721E DD CB 7F 03
        RLC  (IX+127),E         ; 7222 DD CB 7F 03
        rlc  (ix+-128),h        ; 7226 DD CB 80 04
        RLC  (IX+-128),H        ; 722A DD CB 80 04
        rlc  (ix+-1),h          ; 722E DD CB FF 04
        RLC  (IX+-1),H          ; 7232 DD CB FF 04
        rlc  (ix+0),h           ; 7236 DD CB 00 04
        RLC  (IX+0),H           ; 723A DD CB 00 04
        rlc  (ix+127),h         ; 723E DD CB 7F 04
        RLC  (IX+127),H         ; 7242 DD CB 7F 04
        rlc  (ix+-128),l        ; 7246 DD CB 80 05
        RLC  (IX+-128),L        ; 724A DD CB 80 05
        rlc  (ix+-1),l          ; 724E DD CB FF 05
        RLC  (IX+-1),L          ; 7252 DD CB FF 05
        rlc  (ix+0),l           ; 7256 DD CB 00 05
        RLC  (IX+0),L           ; 725A DD CB 00 05
        rlc  (ix+127),l         ; 725E DD CB 7F 05
        RLC  (IX+127),L         ; 7262 DD CB 7F 05
        rlc  (iy+-128)          ; 7266 FD CB 80 06
        RLC  (IY+-128)          ; 726A FD CB 80 06
        rlc  (iy+-1)            ; 726E FD CB FF 06
        RLC  (IY+-1)            ; 7272 FD CB FF 06
        rlc  (iy+0)             ; 7276 FD CB 00 06
        RLC  (IY+0)             ; 727A FD CB 00 06
        rlc  (iy+127)           ; 727E FD CB 7F 06
        RLC  (IY+127)           ; 7282 FD CB 7F 06
        rlc  (iy+-128),a        ; 7286 FD CB 80 07
        RLC  (IY+-128),A        ; 728A FD CB 80 07
        rlc  (iy+-1),a          ; 728E FD CB FF 07
        RLC  (IY+-1),A          ; 7292 FD CB FF 07
        rlc  (iy+0),a           ; 7296 FD CB 00 07
        RLC  (IY+0),A           ; 729A FD CB 00 07
        rlc  (iy+127),a         ; 729E FD CB 7F 07
        RLC  (IY+127),A         ; 72A2 FD CB 7F 07
        rlc  (iy+-128),b        ; 72A6 FD CB 80 00
        RLC  (IY+-128),B        ; 72AA FD CB 80 00
        rlc  (iy+-1),b          ; 72AE FD CB FF 00
        RLC  (IY+-1),B          ; 72B2 FD CB FF 00
        rlc  (iy+0),b           ; 72B6 FD CB 00 00
        RLC  (IY+0),B           ; 72BA FD CB 00 00
        rlc  (iy+127),b         ; 72BE FD CB 7F 00
        RLC  (IY+127),B         ; 72C2 FD CB 7F 00
        rlc  (iy+-128),c        ; 72C6 FD CB 80 01
        RLC  (IY+-128),C        ; 72CA FD CB 80 01
        rlc  (iy+-1),c          ; 72CE FD CB FF 01
        RLC  (IY+-1),C          ; 72D2 FD CB FF 01
        rlc  (iy+0),c           ; 72D6 FD CB 00 01
        RLC  (IY+0),C           ; 72DA FD CB 00 01
        rlc  (iy+127),c         ; 72DE FD CB 7F 01
        RLC  (IY+127),C         ; 72E2 FD CB 7F 01
        rlc  (iy+-128),d        ; 72E6 FD CB 80 02
        RLC  (IY+-128),D        ; 72EA FD CB 80 02
        rlc  (iy+-1),d          ; 72EE FD CB FF 02
        RLC  (IY+-1),D          ; 72F2 FD CB FF 02
        rlc  (iy+0),d           ; 72F6 FD CB 00 02
        RLC  (IY+0),D           ; 72FA FD CB 00 02
        rlc  (iy+127),d         ; 72FE FD CB 7F 02
        RLC  (IY+127),D         ; 7302 FD CB 7F 02
        rlc  (iy+-128),e        ; 7306 FD CB 80 03
        RLC  (IY+-128),E        ; 730A FD CB 80 03
        rlc  (iy+-1),e          ; 730E FD CB FF 03
        RLC  (IY+-1),E          ; 7312 FD CB FF 03
        rlc  (iy+0),e           ; 7316 FD CB 00 03
        RLC  (IY+0),E           ; 731A FD CB 00 03
        rlc  (iy+127),e         ; 731E FD CB 7F 03
        RLC  (IY+127),E         ; 7322 FD CB 7F 03
        rlc  (iy+-128),h        ; 7326 FD CB 80 04
        RLC  (IY+-128),H        ; 732A FD CB 80 04
        rlc  (iy+-1),h          ; 732E FD CB FF 04
        RLC  (IY+-1),H          ; 7332 FD CB FF 04
        rlc  (iy+0),h           ; 7336 FD CB 00 04
        RLC  (IY+0),H           ; 733A FD CB 00 04
        rlc  (iy+127),h         ; 733E FD CB 7F 04
        RLC  (IY+127),H         ; 7342 FD CB 7F 04
        rlc  (iy+-128),l        ; 7346 FD CB 80 05
        RLC  (IY+-128),L        ; 734A FD CB 80 05
        rlc  (iy+-1),l          ; 734E FD CB FF 05
        RLC  (IY+-1),L          ; 7352 FD CB FF 05
        rlc  (iy+0),l           ; 7356 FD CB 00 05
        RLC  (IY+0),L           ; 735A FD CB 00 05
        rlc  (iy+127),l         ; 735E FD CB 7F 05
        RLC  (IY+127),L         ; 7362 FD CB 7F 05
        rlc  [hl]               ; 7366 CB 06
        RLC  [HL]               ; 7368 CB 06
        rlc  [ix+-128]          ; 736A DD CB 80 06
        RLC  [IX+-128]          ; 736E DD CB 80 06
        rlc  [ix+-1]            ; 7372 DD CB FF 06
        RLC  [IX+-1]            ; 7376 DD CB FF 06
        rlc  [ix+0]             ; 737A DD CB 00 06
        RLC  [IX+0]             ; 737E DD CB 00 06
        rlc  [ix+127]           ; 7382 DD CB 7F 06
        RLC  [IX+127]           ; 7386 DD CB 7F 06
        rlc  [ix+-128],a        ; 738A DD CB 80 07
        RLC  [IX+-128],A        ; 738E DD CB 80 07
        rlc  [ix+-1],a          ; 7392 DD CB FF 07
        RLC  [IX+-1],A          ; 7396 DD CB FF 07
        rlc  [ix+0],a           ; 739A DD CB 00 07
        RLC  [IX+0],A           ; 739E DD CB 00 07
        rlc  [ix+127],a         ; 73A2 DD CB 7F 07
        RLC  [IX+127],A         ; 73A6 DD CB 7F 07
        rlc  [ix+-128],b        ; 73AA DD CB 80 00
        RLC  [IX+-128],B        ; 73AE DD CB 80 00
        rlc  [ix+-1],b          ; 73B2 DD CB FF 00
        RLC  [IX+-1],B          ; 73B6 DD CB FF 00
        rlc  [ix+0],b           ; 73BA DD CB 00 00
        RLC  [IX+0],B           ; 73BE DD CB 00 00
        rlc  [ix+127],b         ; 73C2 DD CB 7F 00
        RLC  [IX+127],B         ; 73C6 DD CB 7F 00
        rlc  [ix+-128],c        ; 73CA DD CB 80 01
        RLC  [IX+-128],C        ; 73CE DD CB 80 01
        rlc  [ix+-1],c          ; 73D2 DD CB FF 01
        RLC  [IX+-1],C          ; 73D6 DD CB FF 01
        rlc  [ix+0],c           ; 73DA DD CB 00 01
        RLC  [IX+0],C           ; 73DE DD CB 00 01
        rlc  [ix+127],c         ; 73E2 DD CB 7F 01
        RLC  [IX+127],C         ; 73E6 DD CB 7F 01
        rlc  [ix+-128],d        ; 73EA DD CB 80 02
        RLC  [IX+-128],D        ; 73EE DD CB 80 02
        rlc  [ix+-1],d          ; 73F2 DD CB FF 02
        RLC  [IX+-1],D          ; 73F6 DD CB FF 02
        rlc  [ix+0],d           ; 73FA DD CB 00 02
        RLC  [IX+0],D           ; 73FE DD CB 00 02
        rlc  [ix+127],d         ; 7402 DD CB 7F 02
        RLC  [IX+127],D         ; 7406 DD CB 7F 02
        rlc  [ix+-128],e        ; 740A DD CB 80 03
        RLC  [IX+-128],E        ; 740E DD CB 80 03
        rlc  [ix+-1],e          ; 7412 DD CB FF 03
        RLC  [IX+-1],E          ; 7416 DD CB FF 03
        rlc  [ix+0],e           ; 741A DD CB 00 03
        RLC  [IX+0],E           ; 741E DD CB 00 03
        rlc  [ix+127],e         ; 7422 DD CB 7F 03
        RLC  [IX+127],E         ; 7426 DD CB 7F 03
        rlc  [ix+-128],h        ; 742A DD CB 80 04
        RLC  [IX+-128],H        ; 742E DD CB 80 04
        rlc  [ix+-1],h          ; 7432 DD CB FF 04
        RLC  [IX+-1],H          ; 7436 DD CB FF 04
        rlc  [ix+0],h           ; 743A DD CB 00 04
        RLC  [IX+0],H           ; 743E DD CB 00 04
        rlc  [ix+127],h         ; 7442 DD CB 7F 04
        RLC  [IX+127],H         ; 7446 DD CB 7F 04
        rlc  [ix+-128],l        ; 744A DD CB 80 05
        RLC  [IX+-128],L        ; 744E DD CB 80 05
        rlc  [ix+-1],l          ; 7452 DD CB FF 05
        RLC  [IX+-1],L          ; 7456 DD CB FF 05
        rlc  [ix+0],l           ; 745A DD CB 00 05
        RLC  [IX+0],L           ; 745E DD CB 00 05
        rlc  [ix+127],l         ; 7462 DD CB 7F 05
        RLC  [IX+127],L         ; 7466 DD CB 7F 05
        rlc  [iy+-128]          ; 746A FD CB 80 06
        RLC  [IY+-128]          ; 746E FD CB 80 06
        rlc  [iy+-1]            ; 7472 FD CB FF 06
        RLC  [IY+-1]            ; 7476 FD CB FF 06
        rlc  [iy+0]             ; 747A FD CB 00 06
        RLC  [IY+0]             ; 747E FD CB 00 06
        rlc  [iy+127]           ; 7482 FD CB 7F 06
        RLC  [IY+127]           ; 7486 FD CB 7F 06
        rlc  [iy+-128],a        ; 748A FD CB 80 07
        RLC  [IY+-128],A        ; 748E FD CB 80 07
        rlc  [iy+-1],a          ; 7492 FD CB FF 07
        RLC  [IY+-1],A          ; 7496 FD CB FF 07
        rlc  [iy+0],a           ; 749A FD CB 00 07
        RLC  [IY+0],A           ; 749E FD CB 00 07
        rlc  [iy+127],a         ; 74A2 FD CB 7F 07
        RLC  [IY+127],A         ; 74A6 FD CB 7F 07
        rlc  [iy+-128],b        ; 74AA FD CB 80 00
        RLC  [IY+-128],B        ; 74AE FD CB 80 00
        rlc  [iy+-1],b          ; 74B2 FD CB FF 00
        RLC  [IY+-1],B          ; 74B6 FD CB FF 00
        rlc  [iy+0],b           ; 74BA FD CB 00 00
        RLC  [IY+0],B           ; 74BE FD CB 00 00
        rlc  [iy+127],b         ; 74C2 FD CB 7F 00
        RLC  [IY+127],B         ; 74C6 FD CB 7F 00
        rlc  [iy+-128],c        ; 74CA FD CB 80 01
        RLC  [IY+-128],C        ; 74CE FD CB 80 01
        rlc  [iy+-1],c          ; 74D2 FD CB FF 01
        RLC  [IY+-1],C          ; 74D6 FD CB FF 01
        rlc  [iy+0],c           ; 74DA FD CB 00 01
        RLC  [IY+0],C           ; 74DE FD CB 00 01
        rlc  [iy+127],c         ; 74E2 FD CB 7F 01
        RLC  [IY+127],C         ; 74E6 FD CB 7F 01
        rlc  [iy+-128],d        ; 74EA FD CB 80 02
        RLC  [IY+-128],D        ; 74EE FD CB 80 02
        rlc  [iy+-1],d          ; 74F2 FD CB FF 02
        RLC  [IY+-1],D          ; 74F6 FD CB FF 02
        rlc  [iy+0],d           ; 74FA FD CB 00 02
        RLC  [IY+0],D           ; 74FE FD CB 00 02
        rlc  [iy+127],d         ; 7502 FD CB 7F 02
        RLC  [IY+127],D         ; 7506 FD CB 7F 02
        rlc  [iy+-128],e        ; 750A FD CB 80 03
        RLC  [IY+-128],E        ; 750E FD CB 80 03
        rlc  [iy+-1],e          ; 7512 FD CB FF 03
        RLC  [IY+-1],E          ; 7516 FD CB FF 03
        rlc  [iy+0],e           ; 751A FD CB 00 03
        RLC  [IY+0],E           ; 751E FD CB 00 03
        rlc  [iy+127],e         ; 7522 FD CB 7F 03
        RLC  [IY+127],E         ; 7526 FD CB 7F 03
        rlc  [iy+-128],h        ; 752A FD CB 80 04
        RLC  [IY+-128],H        ; 752E FD CB 80 04
        rlc  [iy+-1],h          ; 7532 FD CB FF 04
        RLC  [IY+-1],H          ; 7536 FD CB FF 04
        rlc  [iy+0],h           ; 753A FD CB 00 04
        RLC  [IY+0],H           ; 753E FD CB 00 04
        rlc  [iy+127],h         ; 7542 FD CB 7F 04
        RLC  [IY+127],H         ; 7546 FD CB 7F 04
        rlc  [iy+-128],l        ; 754A FD CB 80 05
        RLC  [IY+-128],L        ; 754E FD CB 80 05
        rlc  [iy+-1],l          ; 7552 FD CB FF 05
        RLC  [IY+-1],L          ; 7556 FD CB FF 05
        rlc  [iy+0],l           ; 755A FD CB 00 05
        RLC  [IY+0],L           ; 755E FD CB 00 05
        rlc  [iy+127],l         ; 7562 FD CB 7F 05
        RLC  [IY+127],L         ; 7566 FD CB 7F 05
        rlc  a                  ; 756A CB 07
        RLC  A                  ; 756C CB 07
        rlc  b                  ; 756E CB 00
        RLC  B                  ; 7570 CB 00
        rlc  c                  ; 7572 CB 01
        RLC  C                  ; 7574 CB 01
        rlc  d                  ; 7576 CB 02
        RLC  D                  ; 7578 CB 02
        rlc  e                  ; 757A CB 03
        RLC  E                  ; 757C CB 03
        rlc  h                  ; 757E CB 04
        RLC  H                  ; 7580 CB 04
        rlc  l                  ; 7582 CB 05
        RLC  L                  ; 7584 CB 05
        rlca                    ; 7586 07
        RLCA                    ; 7587 07
        rld                     ; 7588 ED 6F
        RLD                     ; 758A ED 6F
        rr   (hl)               ; 758C CB 1E
        RR   (HL)               ; 758E CB 1E
        rr   (ix+-128)          ; 7590 DD CB 80 1E
        RR   (IX+-128)          ; 7594 DD CB 80 1E
        rr   (ix+-1)            ; 7598 DD CB FF 1E
        RR   (IX+-1)            ; 759C DD CB FF 1E
        rr   (ix+0)             ; 75A0 DD CB 00 1E
        RR   (IX+0)             ; 75A4 DD CB 00 1E
        rr   (ix+127)           ; 75A8 DD CB 7F 1E
        RR   (IX+127)           ; 75AC DD CB 7F 1E
        rr   (ix+-128),a        ; 75B0 DD CB 80 1F
        RR   (IX+-128),A        ; 75B4 DD CB 80 1F
        rr   (ix+-1),a          ; 75B8 DD CB FF 1F
        RR   (IX+-1),A          ; 75BC DD CB FF 1F
        rr   (ix+0),a           ; 75C0 DD CB 00 1F
        RR   (IX+0),A           ; 75C4 DD CB 00 1F
        rr   (ix+127),a         ; 75C8 DD CB 7F 1F
        RR   (IX+127),A         ; 75CC DD CB 7F 1F
        rr   (ix+-128),b        ; 75D0 DD CB 80 18
        RR   (IX+-128),B        ; 75D4 DD CB 80 18
        rr   (ix+-1),b          ; 75D8 DD CB FF 18
        RR   (IX+-1),B          ; 75DC DD CB FF 18
        rr   (ix+0),b           ; 75E0 DD CB 00 18
        RR   (IX+0),B           ; 75E4 DD CB 00 18
        rr   (ix+127),b         ; 75E8 DD CB 7F 18
        RR   (IX+127),B         ; 75EC DD CB 7F 18
        rr   (ix+-128),c        ; 75F0 DD CB 80 19
        RR   (IX+-128),C        ; 75F4 DD CB 80 19
        rr   (ix+-1),c          ; 75F8 DD CB FF 19
        RR   (IX+-1),C          ; 75FC DD CB FF 19
        rr   (ix+0),c           ; 7600 DD CB 00 19
        RR   (IX+0),C           ; 7604 DD CB 00 19
        rr   (ix+127),c         ; 7608 DD CB 7F 19
        RR   (IX+127),C         ; 760C DD CB 7F 19
        rr   (ix+-128),d        ; 7610 DD CB 80 1A
        RR   (IX+-128),D        ; 7614 DD CB 80 1A
        rr   (ix+-1),d          ; 7618 DD CB FF 1A
        RR   (IX+-1),D          ; 761C DD CB FF 1A
        rr   (ix+0),d           ; 7620 DD CB 00 1A
        RR   (IX+0),D           ; 7624 DD CB 00 1A
        rr   (ix+127),d         ; 7628 DD CB 7F 1A
        RR   (IX+127),D         ; 762C DD CB 7F 1A
        rr   (ix+-128),e        ; 7630 DD CB 80 1B
        RR   (IX+-128),E        ; 7634 DD CB 80 1B
        rr   (ix+-1),e          ; 7638 DD CB FF 1B
        RR   (IX+-1),E          ; 763C DD CB FF 1B
        rr   (ix+0),e           ; 7640 DD CB 00 1B
        RR   (IX+0),E           ; 7644 DD CB 00 1B
        rr   (ix+127),e         ; 7648 DD CB 7F 1B
        RR   (IX+127),E         ; 764C DD CB 7F 1B
        rr   (ix+-128),h        ; 7650 DD CB 80 1C
        RR   (IX+-128),H        ; 7654 DD CB 80 1C
        rr   (ix+-1),h          ; 7658 DD CB FF 1C
        RR   (IX+-1),H          ; 765C DD CB FF 1C
        rr   (ix+0),h           ; 7660 DD CB 00 1C
        RR   (IX+0),H           ; 7664 DD CB 00 1C
        rr   (ix+127),h         ; 7668 DD CB 7F 1C
        RR   (IX+127),H         ; 766C DD CB 7F 1C
        rr   (ix+-128),l        ; 7670 DD CB 80 1D
        RR   (IX+-128),L        ; 7674 DD CB 80 1D
        rr   (ix+-1),l          ; 7678 DD CB FF 1D
        RR   (IX+-1),L          ; 767C DD CB FF 1D
        rr   (ix+0),l           ; 7680 DD CB 00 1D
        RR   (IX+0),L           ; 7684 DD CB 00 1D
        rr   (ix+127),l         ; 7688 DD CB 7F 1D
        RR   (IX+127),L         ; 768C DD CB 7F 1D
        rr   (iy+-128)          ; 7690 FD CB 80 1E
        RR   (IY+-128)          ; 7694 FD CB 80 1E
        rr   (iy+-1)            ; 7698 FD CB FF 1E
        RR   (IY+-1)            ; 769C FD CB FF 1E
        rr   (iy+0)             ; 76A0 FD CB 00 1E
        RR   (IY+0)             ; 76A4 FD CB 00 1E
        rr   (iy+127)           ; 76A8 FD CB 7F 1E
        RR   (IY+127)           ; 76AC FD CB 7F 1E
        rr   (iy+-128),a        ; 76B0 FD CB 80 1F
        RR   (IY+-128),A        ; 76B4 FD CB 80 1F
        rr   (iy+-1),a          ; 76B8 FD CB FF 1F
        RR   (IY+-1),A          ; 76BC FD CB FF 1F
        rr   (iy+0),a           ; 76C0 FD CB 00 1F
        RR   (IY+0),A           ; 76C4 FD CB 00 1F
        rr   (iy+127),a         ; 76C8 FD CB 7F 1F
        RR   (IY+127),A         ; 76CC FD CB 7F 1F
        rr   (iy+-128),b        ; 76D0 FD CB 80 18
        RR   (IY+-128),B        ; 76D4 FD CB 80 18
        rr   (iy+-1),b          ; 76D8 FD CB FF 18
        RR   (IY+-1),B          ; 76DC FD CB FF 18
        rr   (iy+0),b           ; 76E0 FD CB 00 18
        RR   (IY+0),B           ; 76E4 FD CB 00 18
        rr   (iy+127),b         ; 76E8 FD CB 7F 18
        RR   (IY+127),B         ; 76EC FD CB 7F 18
        rr   (iy+-128),c        ; 76F0 FD CB 80 19
        RR   (IY+-128),C        ; 76F4 FD CB 80 19
        rr   (iy+-1),c          ; 76F8 FD CB FF 19
        RR   (IY+-1),C          ; 76FC FD CB FF 19
        rr   (iy+0),c           ; 7700 FD CB 00 19
        RR   (IY+0),C           ; 7704 FD CB 00 19
        rr   (iy+127),c         ; 7708 FD CB 7F 19
        RR   (IY+127),C         ; 770C FD CB 7F 19
        rr   (iy+-128),d        ; 7710 FD CB 80 1A
        RR   (IY+-128),D        ; 7714 FD CB 80 1A
        rr   (iy+-1),d          ; 7718 FD CB FF 1A
        RR   (IY+-1),D          ; 771C FD CB FF 1A
        rr   (iy+0),d           ; 7720 FD CB 00 1A
        RR   (IY+0),D           ; 7724 FD CB 00 1A
        rr   (iy+127),d         ; 7728 FD CB 7F 1A
        RR   (IY+127),D         ; 772C FD CB 7F 1A
        rr   (iy+-128),e        ; 7730 FD CB 80 1B
        RR   (IY+-128),E        ; 7734 FD CB 80 1B
        rr   (iy+-1),e          ; 7738 FD CB FF 1B
        RR   (IY+-1),E          ; 773C FD CB FF 1B
        rr   (iy+0),e           ; 7740 FD CB 00 1B
        RR   (IY+0),E           ; 7744 FD CB 00 1B
        rr   (iy+127),e         ; 7748 FD CB 7F 1B
        RR   (IY+127),E         ; 774C FD CB 7F 1B
        rr   (iy+-128),h        ; 7750 FD CB 80 1C
        RR   (IY+-128),H        ; 7754 FD CB 80 1C
        rr   (iy+-1),h          ; 7758 FD CB FF 1C
        RR   (IY+-1),H          ; 775C FD CB FF 1C
        rr   (iy+0),h           ; 7760 FD CB 00 1C
        RR   (IY+0),H           ; 7764 FD CB 00 1C
        rr   (iy+127),h         ; 7768 FD CB 7F 1C
        RR   (IY+127),H         ; 776C FD CB 7F 1C
        rr   (iy+-128),l        ; 7770 FD CB 80 1D
        RR   (IY+-128),L        ; 7774 FD CB 80 1D
        rr   (iy+-1),l          ; 7778 FD CB FF 1D
        RR   (IY+-1),L          ; 777C FD CB FF 1D
        rr   (iy+0),l           ; 7780 FD CB 00 1D
        RR   (IY+0),L           ; 7784 FD CB 00 1D
        rr   (iy+127),l         ; 7788 FD CB 7F 1D
        RR   (IY+127),L         ; 778C FD CB 7F 1D
        rr   [hl]               ; 7790 CB 1E
        RR   [HL]               ; 7792 CB 1E
        rr   [ix+-128]          ; 7794 DD CB 80 1E
        RR   [IX+-128]          ; 7798 DD CB 80 1E
        rr   [ix+-1]            ; 779C DD CB FF 1E
        RR   [IX+-1]            ; 77A0 DD CB FF 1E
        rr   [ix+0]             ; 77A4 DD CB 00 1E
        RR   [IX+0]             ; 77A8 DD CB 00 1E
        rr   [ix+127]           ; 77AC DD CB 7F 1E
        RR   [IX+127]           ; 77B0 DD CB 7F 1E
        rr   [ix+-128],a        ; 77B4 DD CB 80 1F
        RR   [IX+-128],A        ; 77B8 DD CB 80 1F
        rr   [ix+-1],a          ; 77BC DD CB FF 1F
        RR   [IX+-1],A          ; 77C0 DD CB FF 1F
        rr   [ix+0],a           ; 77C4 DD CB 00 1F
        RR   [IX+0],A           ; 77C8 DD CB 00 1F
        rr   [ix+127],a         ; 77CC DD CB 7F 1F
        RR   [IX+127],A         ; 77D0 DD CB 7F 1F
        rr   [ix+-128],b        ; 77D4 DD CB 80 18
        RR   [IX+-128],B        ; 77D8 DD CB 80 18
        rr   [ix+-1],b          ; 77DC DD CB FF 18
        RR   [IX+-1],B          ; 77E0 DD CB FF 18
        rr   [ix+0],b           ; 77E4 DD CB 00 18
        RR   [IX+0],B           ; 77E8 DD CB 00 18
        rr   [ix+127],b         ; 77EC DD CB 7F 18
        RR   [IX+127],B         ; 77F0 DD CB 7F 18
        rr   [ix+-128],c        ; 77F4 DD CB 80 19
        RR   [IX+-128],C        ; 77F8 DD CB 80 19
        rr   [ix+-1],c          ; 77FC DD CB FF 19
        RR   [IX+-1],C          ; 7800 DD CB FF 19
        rr   [ix+0],c           ; 7804 DD CB 00 19
        RR   [IX+0],C           ; 7808 DD CB 00 19
        rr   [ix+127],c         ; 780C DD CB 7F 19
        RR   [IX+127],C         ; 7810 DD CB 7F 19
        rr   [ix+-128],d        ; 7814 DD CB 80 1A
        RR   [IX+-128],D        ; 7818 DD CB 80 1A
        rr   [ix+-1],d          ; 781C DD CB FF 1A
        RR   [IX+-1],D          ; 7820 DD CB FF 1A
        rr   [ix+0],d           ; 7824 DD CB 00 1A
        RR   [IX+0],D           ; 7828 DD CB 00 1A
        rr   [ix+127],d         ; 782C DD CB 7F 1A
        RR   [IX+127],D         ; 7830 DD CB 7F 1A
        rr   [ix+-128],e        ; 7834 DD CB 80 1B
        RR   [IX+-128],E        ; 7838 DD CB 80 1B
        rr   [ix+-1],e          ; 783C DD CB FF 1B
        RR   [IX+-1],E          ; 7840 DD CB FF 1B
        rr   [ix+0],e           ; 7844 DD CB 00 1B
        RR   [IX+0],E           ; 7848 DD CB 00 1B
        rr   [ix+127],e         ; 784C DD CB 7F 1B
        RR   [IX+127],E         ; 7850 DD CB 7F 1B
        rr   [ix+-128],h        ; 7854 DD CB 80 1C
        RR   [IX+-128],H        ; 7858 DD CB 80 1C
        rr   [ix+-1],h          ; 785C DD CB FF 1C
        RR   [IX+-1],H          ; 7860 DD CB FF 1C
        rr   [ix+0],h           ; 7864 DD CB 00 1C
        RR   [IX+0],H           ; 7868 DD CB 00 1C
        rr   [ix+127],h         ; 786C DD CB 7F 1C
        RR   [IX+127],H         ; 7870 DD CB 7F 1C
        rr   [ix+-128],l        ; 7874 DD CB 80 1D
        RR   [IX+-128],L        ; 7878 DD CB 80 1D
        rr   [ix+-1],l          ; 787C DD CB FF 1D
        RR   [IX+-1],L          ; 7880 DD CB FF 1D
        rr   [ix+0],l           ; 7884 DD CB 00 1D
        RR   [IX+0],L           ; 7888 DD CB 00 1D
        rr   [ix+127],l         ; 788C DD CB 7F 1D
        RR   [IX+127],L         ; 7890 DD CB 7F 1D
        rr   [iy+-128]          ; 7894 FD CB 80 1E
        RR   [IY+-128]          ; 7898 FD CB 80 1E
        rr   [iy+-1]            ; 789C FD CB FF 1E
        RR   [IY+-1]            ; 78A0 FD CB FF 1E
        rr   [iy+0]             ; 78A4 FD CB 00 1E
        RR   [IY+0]             ; 78A8 FD CB 00 1E
        rr   [iy+127]           ; 78AC FD CB 7F 1E
        RR   [IY+127]           ; 78B0 FD CB 7F 1E
        rr   [iy+-128],a        ; 78B4 FD CB 80 1F
        RR   [IY+-128],A        ; 78B8 FD CB 80 1F
        rr   [iy+-1],a          ; 78BC FD CB FF 1F
        RR   [IY+-1],A          ; 78C0 FD CB FF 1F
        rr   [iy+0],a           ; 78C4 FD CB 00 1F
        RR   [IY+0],A           ; 78C8 FD CB 00 1F
        rr   [iy+127],a         ; 78CC FD CB 7F 1F
        RR   [IY+127],A         ; 78D0 FD CB 7F 1F
        rr   [iy+-128],b        ; 78D4 FD CB 80 18
        RR   [IY+-128],B        ; 78D8 FD CB 80 18
        rr   [iy+-1],b          ; 78DC FD CB FF 18
        RR   [IY+-1],B          ; 78E0 FD CB FF 18
        rr   [iy+0],b           ; 78E4 FD CB 00 18
        RR   [IY+0],B           ; 78E8 FD CB 00 18
        rr   [iy+127],b         ; 78EC FD CB 7F 18
        RR   [IY+127],B         ; 78F0 FD CB 7F 18
        rr   [iy+-128],c        ; 78F4 FD CB 80 19
        RR   [IY+-128],C        ; 78F8 FD CB 80 19
        rr   [iy+-1],c          ; 78FC FD CB FF 19
        RR   [IY+-1],C          ; 7900 FD CB FF 19
        rr   [iy+0],c           ; 7904 FD CB 00 19
        RR   [IY+0],C           ; 7908 FD CB 00 19
        rr   [iy+127],c         ; 790C FD CB 7F 19
        RR   [IY+127],C         ; 7910 FD CB 7F 19
        rr   [iy+-128],d        ; 7914 FD CB 80 1A
        RR   [IY+-128],D        ; 7918 FD CB 80 1A
        rr   [iy+-1],d          ; 791C FD CB FF 1A
        RR   [IY+-1],D          ; 7920 FD CB FF 1A
        rr   [iy+0],d           ; 7924 FD CB 00 1A
        RR   [IY+0],D           ; 7928 FD CB 00 1A
        rr   [iy+127],d         ; 792C FD CB 7F 1A
        RR   [IY+127],D         ; 7930 FD CB 7F 1A
        rr   [iy+-128],e        ; 7934 FD CB 80 1B
        RR   [IY+-128],E        ; 7938 FD CB 80 1B
        rr   [iy+-1],e          ; 793C FD CB FF 1B
        RR   [IY+-1],E          ; 7940 FD CB FF 1B
        rr   [iy+0],e           ; 7944 FD CB 00 1B
        RR   [IY+0],E           ; 7948 FD CB 00 1B
        rr   [iy+127],e         ; 794C FD CB 7F 1B
        RR   [IY+127],E         ; 7950 FD CB 7F 1B
        rr   [iy+-128],h        ; 7954 FD CB 80 1C
        RR   [IY+-128],H        ; 7958 FD CB 80 1C
        rr   [iy+-1],h          ; 795C FD CB FF 1C
        RR   [IY+-1],H          ; 7960 FD CB FF 1C
        rr   [iy+0],h           ; 7964 FD CB 00 1C
        RR   [IY+0],H           ; 7968 FD CB 00 1C
        rr   [iy+127],h         ; 796C FD CB 7F 1C
        RR   [IY+127],H         ; 7970 FD CB 7F 1C
        rr   [iy+-128],l        ; 7974 FD CB 80 1D
        RR   [IY+-128],L        ; 7978 FD CB 80 1D
        rr   [iy+-1],l          ; 797C FD CB FF 1D
        RR   [IY+-1],L          ; 7980 FD CB FF 1D
        rr   [iy+0],l           ; 7984 FD CB 00 1D
        RR   [IY+0],L           ; 7988 FD CB 00 1D
        rr   [iy+127],l         ; 798C FD CB 7F 1D
        RR   [IY+127],L         ; 7990 FD CB 7F 1D
        rr   a                  ; 7994 CB 1F
        RR   A                  ; 7996 CB 1F
        rr   b                  ; 7998 CB 18
        RR   B                  ; 799A CB 18
        rr   bc                 ; 799C CB 18 CB 19
        RR   BC                 ; 79A0 CB 18 CB 19
        rr   c                  ; 79A4 CB 19
        RR   C                  ; 79A6 CB 19
        rr   d                  ; 79A8 CB 1A
        RR   D                  ; 79AA CB 1A
        rr   de                 ; 79AC CB 1A CB 1B
        RR   DE                 ; 79B0 CB 1A CB 1B
        rr   e                  ; 79B4 CB 1B
        RR   E                  ; 79B6 CB 1B
        rr   h                  ; 79B8 CB 1C
        RR   H                  ; 79BA CB 1C
        rr   hl                 ; 79BC CB 1C CB 1D
        RR   HL                 ; 79C0 CB 1C CB 1D
        rr   l                  ; 79C4 CB 1D
        RR   L                  ; 79C6 CB 1D
        rra                     ; 79C8 1F
        RRA                     ; 79C9 1F
        rrc  (hl)               ; 79CA CB 0E
        RRC  (HL)               ; 79CC CB 0E
        rrc  (ix+-128)          ; 79CE DD CB 80 0E
        RRC  (IX+-128)          ; 79D2 DD CB 80 0E
        rrc  (ix+-1)            ; 79D6 DD CB FF 0E
        RRC  (IX+-1)            ; 79DA DD CB FF 0E
        rrc  (ix+0)             ; 79DE DD CB 00 0E
        RRC  (IX+0)             ; 79E2 DD CB 00 0E
        rrc  (ix+127)           ; 79E6 DD CB 7F 0E
        RRC  (IX+127)           ; 79EA DD CB 7F 0E
        rrc  (ix+-128),a        ; 79EE DD CB 80 0F
        RRC  (IX+-128),A        ; 79F2 DD CB 80 0F
        rrc  (ix+-1),a          ; 79F6 DD CB FF 0F
        RRC  (IX+-1),A          ; 79FA DD CB FF 0F
        rrc  (ix+0),a           ; 79FE DD CB 00 0F
        RRC  (IX+0),A           ; 7A02 DD CB 00 0F
        rrc  (ix+127),a         ; 7A06 DD CB 7F 0F
        RRC  (IX+127),A         ; 7A0A DD CB 7F 0F
        rrc  (ix+-128),b        ; 7A0E DD CB 80 08
        RRC  (IX+-128),B        ; 7A12 DD CB 80 08
        rrc  (ix+-1),b          ; 7A16 DD CB FF 08
        RRC  (IX+-1),B          ; 7A1A DD CB FF 08
        rrc  (ix+0),b           ; 7A1E DD CB 00 08
        RRC  (IX+0),B           ; 7A22 DD CB 00 08
        rrc  (ix+127),b         ; 7A26 DD CB 7F 08
        RRC  (IX+127),B         ; 7A2A DD CB 7F 08
        rrc  (ix+-128),c        ; 7A2E DD CB 80 09
        RRC  (IX+-128),C        ; 7A32 DD CB 80 09
        rrc  (ix+-1),c          ; 7A36 DD CB FF 09
        RRC  (IX+-1),C          ; 7A3A DD CB FF 09
        rrc  (ix+0),c           ; 7A3E DD CB 00 09
        RRC  (IX+0),C           ; 7A42 DD CB 00 09
        rrc  (ix+127),c         ; 7A46 DD CB 7F 09
        RRC  (IX+127),C         ; 7A4A DD CB 7F 09
        rrc  (ix+-128),d        ; 7A4E DD CB 80 0A
        RRC  (IX+-128),D        ; 7A52 DD CB 80 0A
        rrc  (ix+-1),d          ; 7A56 DD CB FF 0A
        RRC  (IX+-1),D          ; 7A5A DD CB FF 0A
        rrc  (ix+0),d           ; 7A5E DD CB 00 0A
        RRC  (IX+0),D           ; 7A62 DD CB 00 0A
        rrc  (ix+127),d         ; 7A66 DD CB 7F 0A
        RRC  (IX+127),D         ; 7A6A DD CB 7F 0A
        rrc  (ix+-128),e        ; 7A6E DD CB 80 0B
        RRC  (IX+-128),E        ; 7A72 DD CB 80 0B
        rrc  (ix+-1),e          ; 7A76 DD CB FF 0B
        RRC  (IX+-1),E          ; 7A7A DD CB FF 0B
        rrc  (ix+0),e           ; 7A7E DD CB 00 0B
        RRC  (IX+0),E           ; 7A82 DD CB 00 0B
        rrc  (ix+127),e         ; 7A86 DD CB 7F 0B
        RRC  (IX+127),E         ; 7A8A DD CB 7F 0B
        rrc  (ix+-128),h        ; 7A8E DD CB 80 0C
        RRC  (IX+-128),H        ; 7A92 DD CB 80 0C
        rrc  (ix+-1),h          ; 7A96 DD CB FF 0C
        RRC  (IX+-1),H          ; 7A9A DD CB FF 0C
        rrc  (ix+0),h           ; 7A9E DD CB 00 0C
        RRC  (IX+0),H           ; 7AA2 DD CB 00 0C
        rrc  (ix+127),h         ; 7AA6 DD CB 7F 0C
        RRC  (IX+127),H         ; 7AAA DD CB 7F 0C
        rrc  (ix+-128),l        ; 7AAE DD CB 80 0D
        RRC  (IX+-128),L        ; 7AB2 DD CB 80 0D
        rrc  (ix+-1),l          ; 7AB6 DD CB FF 0D
        RRC  (IX+-1),L          ; 7ABA DD CB FF 0D
        rrc  (ix+0),l           ; 7ABE DD CB 00 0D
        RRC  (IX+0),L           ; 7AC2 DD CB 00 0D
        rrc  (ix+127),l         ; 7AC6 DD CB 7F 0D
        RRC  (IX+127),L         ; 7ACA DD CB 7F 0D
        rrc  (iy+-128)          ; 7ACE FD CB 80 0E
        RRC  (IY+-128)          ; 7AD2 FD CB 80 0E
        rrc  (iy+-1)            ; 7AD6 FD CB FF 0E
        RRC  (IY+-1)            ; 7ADA FD CB FF 0E
        rrc  (iy+0)             ; 7ADE FD CB 00 0E
        RRC  (IY+0)             ; 7AE2 FD CB 00 0E
        rrc  (iy+127)           ; 7AE6 FD CB 7F 0E
        RRC  (IY+127)           ; 7AEA FD CB 7F 0E
        rrc  (iy+-128),a        ; 7AEE FD CB 80 0F
        RRC  (IY+-128),A        ; 7AF2 FD CB 80 0F
        rrc  (iy+-1),a          ; 7AF6 FD CB FF 0F
        RRC  (IY+-1),A          ; 7AFA FD CB FF 0F
        rrc  (iy+0),a           ; 7AFE FD CB 00 0F
        RRC  (IY+0),A           ; 7B02 FD CB 00 0F
        rrc  (iy+127),a         ; 7B06 FD CB 7F 0F
        RRC  (IY+127),A         ; 7B0A FD CB 7F 0F
        rrc  (iy+-128),b        ; 7B0E FD CB 80 08
        RRC  (IY+-128),B        ; 7B12 FD CB 80 08
        rrc  (iy+-1),b          ; 7B16 FD CB FF 08
        RRC  (IY+-1),B          ; 7B1A FD CB FF 08
        rrc  (iy+0),b           ; 7B1E FD CB 00 08
        RRC  (IY+0),B           ; 7B22 FD CB 00 08
        rrc  (iy+127),b         ; 7B26 FD CB 7F 08
        RRC  (IY+127),B         ; 7B2A FD CB 7F 08
        rrc  (iy+-128),c        ; 7B2E FD CB 80 09
        RRC  (IY+-128),C        ; 7B32 FD CB 80 09
        rrc  (iy+-1),c          ; 7B36 FD CB FF 09
        RRC  (IY+-1),C          ; 7B3A FD CB FF 09
        rrc  (iy+0),c           ; 7B3E FD CB 00 09
        RRC  (IY+0),C           ; 7B42 FD CB 00 09
        rrc  (iy+127),c         ; 7B46 FD CB 7F 09
        RRC  (IY+127),C         ; 7B4A FD CB 7F 09
        rrc  (iy+-128),d        ; 7B4E FD CB 80 0A
        RRC  (IY+-128),D        ; 7B52 FD CB 80 0A
        rrc  (iy+-1),d          ; 7B56 FD CB FF 0A
        RRC  (IY+-1),D          ; 7B5A FD CB FF 0A
        rrc  (iy+0),d           ; 7B5E FD CB 00 0A
        RRC  (IY+0),D           ; 7B62 FD CB 00 0A
        rrc  (iy+127),d         ; 7B66 FD CB 7F 0A
        RRC  (IY+127),D         ; 7B6A FD CB 7F 0A
        rrc  (iy+-128),e        ; 7B6E FD CB 80 0B
        RRC  (IY+-128),E        ; 7B72 FD CB 80 0B
        rrc  (iy+-1),e          ; 7B76 FD CB FF 0B
        RRC  (IY+-1),E          ; 7B7A FD CB FF 0B
        rrc  (iy+0),e           ; 7B7E FD CB 00 0B
        RRC  (IY+0),E           ; 7B82 FD CB 00 0B
        rrc  (iy+127),e         ; 7B86 FD CB 7F 0B
        RRC  (IY+127),E         ; 7B8A FD CB 7F 0B
        rrc  (iy+-128),h        ; 7B8E FD CB 80 0C
        RRC  (IY+-128),H        ; 7B92 FD CB 80 0C
        rrc  (iy+-1),h          ; 7B96 FD CB FF 0C
        RRC  (IY+-1),H          ; 7B9A FD CB FF 0C
        rrc  (iy+0),h           ; 7B9E FD CB 00 0C
        RRC  (IY+0),H           ; 7BA2 FD CB 00 0C
        rrc  (iy+127),h         ; 7BA6 FD CB 7F 0C
        RRC  (IY+127),H         ; 7BAA FD CB 7F 0C
        rrc  (iy+-128),l        ; 7BAE FD CB 80 0D
        RRC  (IY+-128),L        ; 7BB2 FD CB 80 0D
        rrc  (iy+-1),l          ; 7BB6 FD CB FF 0D
        RRC  (IY+-1),L          ; 7BBA FD CB FF 0D
        rrc  (iy+0),l           ; 7BBE FD CB 00 0D
        RRC  (IY+0),L           ; 7BC2 FD CB 00 0D
        rrc  (iy+127),l         ; 7BC6 FD CB 7F 0D
        RRC  (IY+127),L         ; 7BCA FD CB 7F 0D
        rrc  [hl]               ; 7BCE CB 0E
        RRC  [HL]               ; 7BD0 CB 0E
        rrc  [ix+-128]          ; 7BD2 DD CB 80 0E
        RRC  [IX+-128]          ; 7BD6 DD CB 80 0E
        rrc  [ix+-1]            ; 7BDA DD CB FF 0E
        RRC  [IX+-1]            ; 7BDE DD CB FF 0E
        rrc  [ix+0]             ; 7BE2 DD CB 00 0E
        RRC  [IX+0]             ; 7BE6 DD CB 00 0E
        rrc  [ix+127]           ; 7BEA DD CB 7F 0E
        RRC  [IX+127]           ; 7BEE DD CB 7F 0E
        rrc  [ix+-128],a        ; 7BF2 DD CB 80 0F
        RRC  [IX+-128],A        ; 7BF6 DD CB 80 0F
        rrc  [ix+-1],a          ; 7BFA DD CB FF 0F
        RRC  [IX+-1],A          ; 7BFE DD CB FF 0F
        rrc  [ix+0],a           ; 7C02 DD CB 00 0F
        RRC  [IX+0],A           ; 7C06 DD CB 00 0F
        rrc  [ix+127],a         ; 7C0A DD CB 7F 0F
        RRC  [IX+127],A         ; 7C0E DD CB 7F 0F
        rrc  [ix+-128],b        ; 7C12 DD CB 80 08
        RRC  [IX+-128],B        ; 7C16 DD CB 80 08
        rrc  [ix+-1],b          ; 7C1A DD CB FF 08
        RRC  [IX+-1],B          ; 7C1E DD CB FF 08
        rrc  [ix+0],b           ; 7C22 DD CB 00 08
        RRC  [IX+0],B           ; 7C26 DD CB 00 08
        rrc  [ix+127],b         ; 7C2A DD CB 7F 08
        RRC  [IX+127],B         ; 7C2E DD CB 7F 08
        rrc  [ix+-128],c        ; 7C32 DD CB 80 09
        RRC  [IX+-128],C        ; 7C36 DD CB 80 09
        rrc  [ix+-1],c          ; 7C3A DD CB FF 09
        RRC  [IX+-1],C          ; 7C3E DD CB FF 09
        rrc  [ix+0],c           ; 7C42 DD CB 00 09
        RRC  [IX+0],C           ; 7C46 DD CB 00 09
        rrc  [ix+127],c         ; 7C4A DD CB 7F 09
        RRC  [IX+127],C         ; 7C4E DD CB 7F 09
        rrc  [ix+-128],d        ; 7C52 DD CB 80 0A
        RRC  [IX+-128],D        ; 7C56 DD CB 80 0A
        rrc  [ix+-1],d          ; 7C5A DD CB FF 0A
        RRC  [IX+-1],D          ; 7C5E DD CB FF 0A
        rrc  [ix+0],d           ; 7C62 DD CB 00 0A
        RRC  [IX+0],D           ; 7C66 DD CB 00 0A
        rrc  [ix+127],d         ; 7C6A DD CB 7F 0A
        RRC  [IX+127],D         ; 7C6E DD CB 7F 0A
        rrc  [ix+-128],e        ; 7C72 DD CB 80 0B
        RRC  [IX+-128],E        ; 7C76 DD CB 80 0B
        rrc  [ix+-1],e          ; 7C7A DD CB FF 0B
        RRC  [IX+-1],E          ; 7C7E DD CB FF 0B
        rrc  [ix+0],e           ; 7C82 DD CB 00 0B
        RRC  [IX+0],E           ; 7C86 DD CB 00 0B
        rrc  [ix+127],e         ; 7C8A DD CB 7F 0B
        RRC  [IX+127],E         ; 7C8E DD CB 7F 0B
        rrc  [ix+-128],h        ; 7C92 DD CB 80 0C
        RRC  [IX+-128],H        ; 7C96 DD CB 80 0C
        rrc  [ix+-1],h          ; 7C9A DD CB FF 0C
        RRC  [IX+-1],H          ; 7C9E DD CB FF 0C
        rrc  [ix+0],h           ; 7CA2 DD CB 00 0C
        RRC  [IX+0],H           ; 7CA6 DD CB 00 0C
        rrc  [ix+127],h         ; 7CAA DD CB 7F 0C
        RRC  [IX+127],H         ; 7CAE DD CB 7F 0C
        rrc  [ix+-128],l        ; 7CB2 DD CB 80 0D
        RRC  [IX+-128],L        ; 7CB6 DD CB 80 0D
        rrc  [ix+-1],l          ; 7CBA DD CB FF 0D
        RRC  [IX+-1],L          ; 7CBE DD CB FF 0D
        rrc  [ix+0],l           ; 7CC2 DD CB 00 0D
        RRC  [IX+0],L           ; 7CC6 DD CB 00 0D
        rrc  [ix+127],l         ; 7CCA DD CB 7F 0D
        RRC  [IX+127],L         ; 7CCE DD CB 7F 0D
        rrc  [iy+-128]          ; 7CD2 FD CB 80 0E
        RRC  [IY+-128]          ; 7CD6 FD CB 80 0E
        rrc  [iy+-1]            ; 7CDA FD CB FF 0E
        RRC  [IY+-1]            ; 7CDE FD CB FF 0E
        rrc  [iy+0]             ; 7CE2 FD CB 00 0E
        RRC  [IY+0]             ; 7CE6 FD CB 00 0E
        rrc  [iy+127]           ; 7CEA FD CB 7F 0E
        RRC  [IY+127]           ; 7CEE FD CB 7F 0E
        rrc  [iy+-128],a        ; 7CF2 FD CB 80 0F
        RRC  [IY+-128],A        ; 7CF6 FD CB 80 0F
        rrc  [iy+-1],a          ; 7CFA FD CB FF 0F
        RRC  [IY+-1],A          ; 7CFE FD CB FF 0F
        rrc  [iy+0],a           ; 7D02 FD CB 00 0F
        RRC  [IY+0],A           ; 7D06 FD CB 00 0F
        rrc  [iy+127],a         ; 7D0A FD CB 7F 0F
        RRC  [IY+127],A         ; 7D0E FD CB 7F 0F
        rrc  [iy+-128],b        ; 7D12 FD CB 80 08
        RRC  [IY+-128],B        ; 7D16 FD CB 80 08
        rrc  [iy+-1],b          ; 7D1A FD CB FF 08
        RRC  [IY+-1],B          ; 7D1E FD CB FF 08
        rrc  [iy+0],b           ; 7D22 FD CB 00 08
        RRC  [IY+0],B           ; 7D26 FD CB 00 08
        rrc  [iy+127],b         ; 7D2A FD CB 7F 08
        RRC  [IY+127],B         ; 7D2E FD CB 7F 08
        rrc  [iy+-128],c        ; 7D32 FD CB 80 09
        RRC  [IY+-128],C        ; 7D36 FD CB 80 09
        rrc  [iy+-1],c          ; 7D3A FD CB FF 09
        RRC  [IY+-1],C          ; 7D3E FD CB FF 09
        rrc  [iy+0],c           ; 7D42 FD CB 00 09
        RRC  [IY+0],C           ; 7D46 FD CB 00 09
        rrc  [iy+127],c         ; 7D4A FD CB 7F 09
        RRC  [IY+127],C         ; 7D4E FD CB 7F 09
        rrc  [iy+-128],d        ; 7D52 FD CB 80 0A
        RRC  [IY+-128],D        ; 7D56 FD CB 80 0A
        rrc  [iy+-1],d          ; 7D5A FD CB FF 0A
        RRC  [IY+-1],D          ; 7D5E FD CB FF 0A
        rrc  [iy+0],d           ; 7D62 FD CB 00 0A
        RRC  [IY+0],D           ; 7D66 FD CB 00 0A
        rrc  [iy+127],d         ; 7D6A FD CB 7F 0A
        RRC  [IY+127],D         ; 7D6E FD CB 7F 0A
        rrc  [iy+-128],e        ; 7D72 FD CB 80 0B
        RRC  [IY+-128],E        ; 7D76 FD CB 80 0B
        rrc  [iy+-1],e          ; 7D7A FD CB FF 0B
        RRC  [IY+-1],E          ; 7D7E FD CB FF 0B
        rrc  [iy+0],e           ; 7D82 FD CB 00 0B
        RRC  [IY+0],E           ; 7D86 FD CB 00 0B
        rrc  [iy+127],e         ; 7D8A FD CB 7F 0B
        RRC  [IY+127],E         ; 7D8E FD CB 7F 0B
        rrc  [iy+-128],h        ; 7D92 FD CB 80 0C
        RRC  [IY+-128],H        ; 7D96 FD CB 80 0C
        rrc  [iy+-1],h          ; 7D9A FD CB FF 0C
        RRC  [IY+-1],H          ; 7D9E FD CB FF 0C
        rrc  [iy+0],h           ; 7DA2 FD CB 00 0C
        RRC  [IY+0],H           ; 7DA6 FD CB 00 0C
        rrc  [iy+127],h         ; 7DAA FD CB 7F 0C
        RRC  [IY+127],H         ; 7DAE FD CB 7F 0C
        rrc  [iy+-128],l        ; 7DB2 FD CB 80 0D
        RRC  [IY+-128],L        ; 7DB6 FD CB 80 0D
        rrc  [iy+-1],l          ; 7DBA FD CB FF 0D
        RRC  [IY+-1],L          ; 7DBE FD CB FF 0D
        rrc  [iy+0],l           ; 7DC2 FD CB 00 0D
        RRC  [IY+0],L           ; 7DC6 FD CB 00 0D
        rrc  [iy+127],l         ; 7DCA FD CB 7F 0D
        RRC  [IY+127],L         ; 7DCE FD CB 7F 0D
        rrc  a                  ; 7DD2 CB 0F
        RRC  A                  ; 7DD4 CB 0F
        rrc  b                  ; 7DD6 CB 08
        RRC  B                  ; 7DD8 CB 08
        rrc  c                  ; 7DDA CB 09
        RRC  C                  ; 7DDC CB 09
        rrc  d                  ; 7DDE CB 0A
        RRC  D                  ; 7DE0 CB 0A
        rrc  e                  ; 7DE2 CB 0B
        RRC  E                  ; 7DE4 CB 0B
        rrc  h                  ; 7DE6 CB 0C
        RRC  H                  ; 7DE8 CB 0C
        rrc  l                  ; 7DEA CB 0D
        RRC  L                  ; 7DEC CB 0D
        rrca                    ; 7DEE 0F
        RRCA                    ; 7DEF 0F
        rrd                     ; 7DF0 ED 67
        RRD                     ; 7DF2 ED 67
        rst  0                  ; 7DF4 C7
        RST  0                  ; 7DF5 C7
        rst  1                  ; 7DF6 CF
        RST  1                  ; 7DF7 CF
        rst  16                 ; 7DF8 D7
        RST  16                 ; 7DF9 D7
        rst  2                  ; 7DFA D7
        RST  2                  ; 7DFB D7
        rst  24                 ; 7DFC DF
        RST  24                 ; 7DFD DF
        rst  3                  ; 7DFE DF
        RST  3                  ; 7DFF DF
        rst  32                 ; 7E00 E7
        RST  32                 ; 7E01 E7
        rst  4                  ; 7E02 E7
        RST  4                  ; 7E03 E7
        rst  40                 ; 7E04 EF
        RST  40                 ; 7E05 EF
        rst  48                 ; 7E06 F7
        RST  48                 ; 7E07 F7
        rst  5                  ; 7E08 EF
        RST  5                  ; 7E09 EF
        rst  56                 ; 7E0A FF
        RST  56                 ; 7E0B FF
        rst  6                  ; 7E0C F7
        RST  6                  ; 7E0D F7
        rst  7                  ; 7E0E FF
        RST  7                  ; 7E0F FF
        rst  8                  ; 7E10 CF
        RST  8                  ; 7E11 CF
        sbc  a,(hl)             ; 7E12 9E
        SBC  A,(HL)             ; 7E13 9E
        sbc  a,(ix+-128)        ; 7E14 DD 9E 80
        SBC  A,(IX+-128)        ; 7E17 DD 9E 80
        sbc  a,(ix+-1)          ; 7E1A DD 9E FF
        SBC  A,(IX+-1)          ; 7E1D DD 9E FF
        sbc  a,(ix+0)           ; 7E20 DD 9E 00
        SBC  A,(IX+0)           ; 7E23 DD 9E 00
        sbc  a,(ix+127)         ; 7E26 DD 9E 7F
        SBC  A,(IX+127)         ; 7E29 DD 9E 7F
        sbc  a,(iy+-128)        ; 7E2C FD 9E 80
        SBC  A,(IY+-128)        ; 7E2F FD 9E 80
        sbc  a,(iy+-1)          ; 7E32 FD 9E FF
        SBC  A,(IY+-1)          ; 7E35 FD 9E FF
        sbc  a,(iy+0)           ; 7E38 FD 9E 00
        SBC  A,(IY+0)           ; 7E3B FD 9E 00
        sbc  a,(iy+127)         ; 7E3E FD 9E 7F
        SBC  A,(IY+127)         ; 7E41 FD 9E 7F
        sbc  a,-128             ; 7E44 DE 80
        SBC  A,-128             ; 7E46 DE 80
        sbc  a,-1               ; 7E48 DE FF
        SBC  A,-1               ; 7E4A DE FF
        sbc  a,0                ; 7E4C DE 00
        SBC  A,0                ; 7E4E DE 00
        sbc  a,127              ; 7E50 DE 7F
        SBC  A,127              ; 7E52 DE 7F
        sbc  a,255              ; 7E54 DE FF
        SBC  A,255              ; 7E56 DE FF
        sbc  a,[hl]             ; 7E58 9E
        SBC  A,[HL]             ; 7E59 9E
        sbc  a,[ix+-128]        ; 7E5A DD 9E 80
        SBC  A,[IX+-128]        ; 7E5D DD 9E 80
        sbc  a,[ix+-1]          ; 7E60 DD 9E FF
        SBC  A,[IX+-1]          ; 7E63 DD 9E FF
        sbc  a,[ix+0]           ; 7E66 DD 9E 00
        SBC  A,[IX+0]           ; 7E69 DD 9E 00
        sbc  a,[ix+127]         ; 7E6C DD 9E 7F
        SBC  A,[IX+127]         ; 7E6F DD 9E 7F
        sbc  a,[iy+-128]        ; 7E72 FD 9E 80
        SBC  A,[IY+-128]        ; 7E75 FD 9E 80
        sbc  a,[iy+-1]          ; 7E78 FD 9E FF
        SBC  A,[IY+-1]          ; 7E7B FD 9E FF
        sbc  a,[iy+0]           ; 7E7E FD 9E 00
        SBC  A,[IY+0]           ; 7E81 FD 9E 00
        sbc  a,[iy+127]         ; 7E84 FD 9E 7F
        SBC  A,[IY+127]         ; 7E87 FD 9E 7F
        sbc  a,a                ; 7E8A 9F
        SBC  A,A                ; 7E8B 9F
        sbc  a,b                ; 7E8C 98
        SBC  A,B                ; 7E8D 98
        sbc  a,c                ; 7E8E 99
        SBC  A,C                ; 7E8F 99
        sbc  a,d                ; 7E90 9A
        SBC  A,D                ; 7E91 9A
        sbc  a,e                ; 7E92 9B
        SBC  A,E                ; 7E93 9B
        sbc  a,h                ; 7E94 9C
        SBC  A,H                ; 7E95 9C
        sbc  a,hx               ; 7E96 DD 9C
        SBC  A,HX               ; 7E98 DD 9C
        sbc  a,hy               ; 7E9A FD 9C
        SBC  A,HY               ; 7E9C FD 9C
        sbc  a,ixh              ; 7E9E DD 9C
        SBC  A,IXH              ; 7EA0 DD 9C
        sbc  a,ixl              ; 7EA2 DD 9D
        SBC  A,IXL              ; 7EA4 DD 9D
        sbc  a,iyh              ; 7EA6 FD 9C
        SBC  A,IYH              ; 7EA8 FD 9C
        sbc  a,iyl              ; 7EAA FD 9D
        SBC  A,IYL              ; 7EAC FD 9D
        sbc  a,l                ; 7EAE 9D
        SBC  A,L                ; 7EAF 9D
        sbc  a,lx               ; 7EB0 DD 9D
        SBC  A,LX               ; 7EB2 DD 9D
        sbc  a,ly               ; 7EB4 FD 9D
        SBC  A,LY               ; 7EB6 FD 9D
        sbc  a,xh               ; 7EB8 DD 9C
        SBC  A,XH               ; 7EBA DD 9C
        sbc  a,xl               ; 7EBC DD 9D
        SBC  A,XL               ; 7EBE DD 9D
        sbc  a,yh               ; 7EC0 FD 9C
        SBC  A,YH               ; 7EC2 FD 9C
        sbc  a,yl               ; 7EC4 FD 9D
        SBC  A,YL               ; 7EC6 FD 9D
        sbc  hl,bc              ; 7EC8 ED 42
        SBC  HL,BC              ; 7ECA ED 42
        sbc  hl,de              ; 7ECC ED 52
        SBC  HL,DE              ; 7ECE ED 52
        sbc  hl,hl              ; 7ED0 ED 62
        SBC  HL,HL              ; 7ED2 ED 62
        sbc  hl,sp              ; 7ED4 ED 72
        SBC  HL,SP              ; 7ED6 ED 72
        scf                     ; 7ED8 37
        SCF                     ; 7ED9 37
        set  0,(hl)             ; 7EDA CB C6
        SET  0,(HL)             ; 7EDC CB C6
        set  0,(ix+-128)        ; 7EDE DD CB 80 C6
        SET  0,(IX+-128)        ; 7EE2 DD CB 80 C6
        set  0,(ix+-1)          ; 7EE6 DD CB FF C6
        SET  0,(IX+-1)          ; 7EEA DD CB FF C6
        set  0,(ix+0)           ; 7EEE DD CB 00 C6
        SET  0,(IX+0)           ; 7EF2 DD CB 00 C6
        set  0,(ix+127)         ; 7EF6 DD CB 7F C6
        SET  0,(IX+127)         ; 7EFA DD CB 7F C6
        set  0,(ix+-128),a      ; 7EFE DD CB 80 C7
        SET  0,(IX+-128),A      ; 7F02 DD CB 80 C7
        set  0,(ix+-1),a        ; 7F06 DD CB FF C7
        SET  0,(IX+-1),A        ; 7F0A DD CB FF C7
        set  0,(ix+0),a         ; 7F0E DD CB 00 C7
        SET  0,(IX+0),A         ; 7F12 DD CB 00 C7
        set  0,(ix+127),a       ; 7F16 DD CB 7F C7
        SET  0,(IX+127),A       ; 7F1A DD CB 7F C7
        set  0,(ix+-128),b      ; 7F1E DD CB 80 C0
        SET  0,(IX+-128),B      ; 7F22 DD CB 80 C0
        set  0,(ix+-1),b        ; 7F26 DD CB FF C0
        SET  0,(IX+-1),B        ; 7F2A DD CB FF C0
        set  0,(ix+0),b         ; 7F2E DD CB 00 C0
        SET  0,(IX+0),B         ; 7F32 DD CB 00 C0
        set  0,(ix+127),b       ; 7F36 DD CB 7F C0
        SET  0,(IX+127),B       ; 7F3A DD CB 7F C0
        set  0,(ix+-128),c      ; 7F3E DD CB 80 C1
        SET  0,(IX+-128),C      ; 7F42 DD CB 80 C1
        set  0,(ix+-1),c        ; 7F46 DD CB FF C1
        SET  0,(IX+-1),C        ; 7F4A DD CB FF C1
        set  0,(ix+0),c         ; 7F4E DD CB 00 C1
        SET  0,(IX+0),C         ; 7F52 DD CB 00 C1
        set  0,(ix+127),c       ; 7F56 DD CB 7F C1
        SET  0,(IX+127),C       ; 7F5A DD CB 7F C1
        set  0,(ix+-128),d      ; 7F5E DD CB 80 C2
        SET  0,(IX+-128),D      ; 7F62 DD CB 80 C2
        set  0,(ix+-1),d        ; 7F66 DD CB FF C2
        SET  0,(IX+-1),D        ; 7F6A DD CB FF C2
        set  0,(ix+0),d         ; 7F6E DD CB 00 C2
        SET  0,(IX+0),D         ; 7F72 DD CB 00 C2
        set  0,(ix+127),d       ; 7F76 DD CB 7F C2
        SET  0,(IX+127),D       ; 7F7A DD CB 7F C2
        set  0,(ix+-128),e      ; 7F7E DD CB 80 C3
        SET  0,(IX+-128),E      ; 7F82 DD CB 80 C3
        set  0,(ix+-1),e        ; 7F86 DD CB FF C3
        SET  0,(IX+-1),E        ; 7F8A DD CB FF C3
        set  0,(ix+0),e         ; 7F8E DD CB 00 C3
        SET  0,(IX+0),E         ; 7F92 DD CB 00 C3
        set  0,(ix+127),e       ; 7F96 DD CB 7F C3
        SET  0,(IX+127),E       ; 7F9A DD CB 7F C3
        set  0,(ix+-128),h      ; 7F9E DD CB 80 C4
        SET  0,(IX+-128),H      ; 7FA2 DD CB 80 C4
        set  0,(ix+-1),h        ; 7FA6 DD CB FF C4
        SET  0,(IX+-1),H        ; 7FAA DD CB FF C4
        set  0,(ix+0),h         ; 7FAE DD CB 00 C4
        SET  0,(IX+0),H         ; 7FB2 DD CB 00 C4
        set  0,(ix+127),h       ; 7FB6 DD CB 7F C4
        SET  0,(IX+127),H       ; 7FBA DD CB 7F C4
        set  0,(ix+-128),l      ; 7FBE DD CB 80 C5
        SET  0,(IX+-128),L      ; 7FC2 DD CB 80 C5
        set  0,(ix+-1),l        ; 7FC6 DD CB FF C5
        SET  0,(IX+-1),L        ; 7FCA DD CB FF C5
        set  0,(ix+0),l         ; 7FCE DD CB 00 C5
        SET  0,(IX+0),L         ; 7FD2 DD CB 00 C5
        set  0,(ix+127),l       ; 7FD6 DD CB 7F C5
        SET  0,(IX+127),L       ; 7FDA DD CB 7F C5
        set  0,(iy+-128)        ; 7FDE FD CB 80 C6
        SET  0,(IY+-128)        ; 7FE2 FD CB 80 C6
        set  0,(iy+-1)          ; 7FE6 FD CB FF C6
        SET  0,(IY+-1)          ; 7FEA FD CB FF C6
        set  0,(iy+0)           ; 7FEE FD CB 00 C6
        SET  0,(IY+0)           ; 7FF2 FD CB 00 C6
        set  0,(iy+127)         ; 7FF6 FD CB 7F C6
        SET  0,(IY+127)         ; 7FFA FD CB 7F C6
        set  0,(iy+-128),a      ; 7FFE FD CB 80 C7
        SET  0,(IY+-128),A      ; 8002 FD CB 80 C7
        set  0,(iy+-1),a        ; 8006 FD CB FF C7
        SET  0,(IY+-1),A        ; 800A FD CB FF C7
        set  0,(iy+0),a         ; 800E FD CB 00 C7
        SET  0,(IY+0),A         ; 8012 FD CB 00 C7
        set  0,(iy+127),a       ; 8016 FD CB 7F C7
        SET  0,(IY+127),A       ; 801A FD CB 7F C7
        set  0,(iy+-128),b      ; 801E FD CB 80 C0
        SET  0,(IY+-128),B      ; 8022 FD CB 80 C0
        set  0,(iy+-1),b        ; 8026 FD CB FF C0
        SET  0,(IY+-1),B        ; 802A FD CB FF C0
        set  0,(iy+0),b         ; 802E FD CB 00 C0
        SET  0,(IY+0),B         ; 8032 FD CB 00 C0
        set  0,(iy+127),b       ; 8036 FD CB 7F C0
        SET  0,(IY+127),B       ; 803A FD CB 7F C0
        set  0,(iy+-128),c      ; 803E FD CB 80 C1
        SET  0,(IY+-128),C      ; 8042 FD CB 80 C1
        set  0,(iy+-1),c        ; 8046 FD CB FF C1
        SET  0,(IY+-1),C        ; 804A FD CB FF C1
        set  0,(iy+0),c         ; 804E FD CB 00 C1
        SET  0,(IY+0),C         ; 8052 FD CB 00 C1
        set  0,(iy+127),c       ; 8056 FD CB 7F C1
        SET  0,(IY+127),C       ; 805A FD CB 7F C1
        set  0,(iy+-128),d      ; 805E FD CB 80 C2
        SET  0,(IY+-128),D      ; 8062 FD CB 80 C2
        set  0,(iy+-1),d        ; 8066 FD CB FF C2
        SET  0,(IY+-1),D        ; 806A FD CB FF C2
        set  0,(iy+0),d         ; 806E FD CB 00 C2
        SET  0,(IY+0),D         ; 8072 FD CB 00 C2
        set  0,(iy+127),d       ; 8076 FD CB 7F C2
        SET  0,(IY+127),D       ; 807A FD CB 7F C2
        set  0,(iy+-128),e      ; 807E FD CB 80 C3
        SET  0,(IY+-128),E      ; 8082 FD CB 80 C3
        set  0,(iy+-1),e        ; 8086 FD CB FF C3
        SET  0,(IY+-1),E        ; 808A FD CB FF C3
        set  0,(iy+0),e         ; 808E FD CB 00 C3
        SET  0,(IY+0),E         ; 8092 FD CB 00 C3
        set  0,(iy+127),e       ; 8096 FD CB 7F C3
        SET  0,(IY+127),E       ; 809A FD CB 7F C3
        set  0,(iy+-128),h      ; 809E FD CB 80 C4
        SET  0,(IY+-128),H      ; 80A2 FD CB 80 C4
        set  0,(iy+-1),h        ; 80A6 FD CB FF C4
        SET  0,(IY+-1),H        ; 80AA FD CB FF C4
        set  0,(iy+0),h         ; 80AE FD CB 00 C4
        SET  0,(IY+0),H         ; 80B2 FD CB 00 C4
        set  0,(iy+127),h       ; 80B6 FD CB 7F C4
        SET  0,(IY+127),H       ; 80BA FD CB 7F C4
        set  0,(iy+-128),l      ; 80BE FD CB 80 C5
        SET  0,(IY+-128),L      ; 80C2 FD CB 80 C5
        set  0,(iy+-1),l        ; 80C6 FD CB FF C5
        SET  0,(IY+-1),L        ; 80CA FD CB FF C5
        set  0,(iy+0),l         ; 80CE FD CB 00 C5
        SET  0,(IY+0),L         ; 80D2 FD CB 00 C5
        set  0,(iy+127),l       ; 80D6 FD CB 7F C5
        SET  0,(IY+127),L       ; 80DA FD CB 7F C5
        set  0,[hl]             ; 80DE CB C6
        SET  0,[HL]             ; 80E0 CB C6
        set  0,[ix+-128]        ; 80E2 DD CB 80 C6
        SET  0,[IX+-128]        ; 80E6 DD CB 80 C6
        set  0,[ix+-1]          ; 80EA DD CB FF C6
        SET  0,[IX+-1]          ; 80EE DD CB FF C6
        set  0,[ix+0]           ; 80F2 DD CB 00 C6
        SET  0,[IX+0]           ; 80F6 DD CB 00 C6
        set  0,[ix+127]         ; 80FA DD CB 7F C6
        SET  0,[IX+127]         ; 80FE DD CB 7F C6
        set  0,[ix+-128],a      ; 8102 DD CB 80 C7
        SET  0,[IX+-128],A      ; 8106 DD CB 80 C7
        set  0,[ix+-1],a        ; 810A DD CB FF C7
        SET  0,[IX+-1],A        ; 810E DD CB FF C7
        set  0,[ix+0],a         ; 8112 DD CB 00 C7
        SET  0,[IX+0],A         ; 8116 DD CB 00 C7
        set  0,[ix+127],a       ; 811A DD CB 7F C7
        SET  0,[IX+127],A       ; 811E DD CB 7F C7
        set  0,[ix+-128],b      ; 8122 DD CB 80 C0
        SET  0,[IX+-128],B      ; 8126 DD CB 80 C0
        set  0,[ix+-1],b        ; 812A DD CB FF C0
        SET  0,[IX+-1],B        ; 812E DD CB FF C0
        set  0,[ix+0],b         ; 8132 DD CB 00 C0
        SET  0,[IX+0],B         ; 8136 DD CB 00 C0
        set  0,[ix+127],b       ; 813A DD CB 7F C0
        SET  0,[IX+127],B       ; 813E DD CB 7F C0
        set  0,[ix+-128],c      ; 8142 DD CB 80 C1
        SET  0,[IX+-128],C      ; 8146 DD CB 80 C1
        set  0,[ix+-1],c        ; 814A DD CB FF C1
        SET  0,[IX+-1],C        ; 814E DD CB FF C1
        set  0,[ix+0],c         ; 8152 DD CB 00 C1
        SET  0,[IX+0],C         ; 8156 DD CB 00 C1
        set  0,[ix+127],c       ; 815A DD CB 7F C1
        SET  0,[IX+127],C       ; 815E DD CB 7F C1
        set  0,[ix+-128],d      ; 8162 DD CB 80 C2
        SET  0,[IX+-128],D      ; 8166 DD CB 80 C2
        set  0,[ix+-1],d        ; 816A DD CB FF C2
        SET  0,[IX+-1],D        ; 816E DD CB FF C2
        set  0,[ix+0],d         ; 8172 DD CB 00 C2
        SET  0,[IX+0],D         ; 8176 DD CB 00 C2
        set  0,[ix+127],d       ; 817A DD CB 7F C2
        SET  0,[IX+127],D       ; 817E DD CB 7F C2
        set  0,[ix+-128],e      ; 8182 DD CB 80 C3
        SET  0,[IX+-128],E      ; 8186 DD CB 80 C3
        set  0,[ix+-1],e        ; 818A DD CB FF C3
        SET  0,[IX+-1],E        ; 818E DD CB FF C3
        set  0,[ix+0],e         ; 8192 DD CB 00 C3
        SET  0,[IX+0],E         ; 8196 DD CB 00 C3
        set  0,[ix+127],e       ; 819A DD CB 7F C3
        SET  0,[IX+127],E       ; 819E DD CB 7F C3
        set  0,[ix+-128],h      ; 81A2 DD CB 80 C4
        SET  0,[IX+-128],H      ; 81A6 DD CB 80 C4
        set  0,[ix+-1],h        ; 81AA DD CB FF C4
        SET  0,[IX+-1],H        ; 81AE DD CB FF C4
        set  0,[ix+0],h         ; 81B2 DD CB 00 C4
        SET  0,[IX+0],H         ; 81B6 DD CB 00 C4
        set  0,[ix+127],h       ; 81BA DD CB 7F C4
        SET  0,[IX+127],H       ; 81BE DD CB 7F C4
        set  0,[ix+-128],l      ; 81C2 DD CB 80 C5
        SET  0,[IX+-128],L      ; 81C6 DD CB 80 C5
        set  0,[ix+-1],l        ; 81CA DD CB FF C5
        SET  0,[IX+-1],L        ; 81CE DD CB FF C5
        set  0,[ix+0],l         ; 81D2 DD CB 00 C5
        SET  0,[IX+0],L         ; 81D6 DD CB 00 C5
        set  0,[ix+127],l       ; 81DA DD CB 7F C5
        SET  0,[IX+127],L       ; 81DE DD CB 7F C5
        set  0,[iy+-128]        ; 81E2 FD CB 80 C6
        SET  0,[IY+-128]        ; 81E6 FD CB 80 C6
        set  0,[iy+-1]          ; 81EA FD CB FF C6
        SET  0,[IY+-1]          ; 81EE FD CB FF C6
        set  0,[iy+0]           ; 81F2 FD CB 00 C6
        SET  0,[IY+0]           ; 81F6 FD CB 00 C6
        set  0,[iy+127]         ; 81FA FD CB 7F C6
        SET  0,[IY+127]         ; 81FE FD CB 7F C6
        set  0,[iy+-128],a      ; 8202 FD CB 80 C7
        SET  0,[IY+-128],A      ; 8206 FD CB 80 C7
        set  0,[iy+-1],a        ; 820A FD CB FF C7
        SET  0,[IY+-1],A        ; 820E FD CB FF C7
        set  0,[iy+0],a         ; 8212 FD CB 00 C7
        SET  0,[IY+0],A         ; 8216 FD CB 00 C7
        set  0,[iy+127],a       ; 821A FD CB 7F C7
        SET  0,[IY+127],A       ; 821E FD CB 7F C7
        set  0,[iy+-128],b      ; 8222 FD CB 80 C0
        SET  0,[IY+-128],B      ; 8226 FD CB 80 C0
        set  0,[iy+-1],b        ; 822A FD CB FF C0
        SET  0,[IY+-1],B        ; 822E FD CB FF C0
        set  0,[iy+0],b         ; 8232 FD CB 00 C0
        SET  0,[IY+0],B         ; 8236 FD CB 00 C0
        set  0,[iy+127],b       ; 823A FD CB 7F C0
        SET  0,[IY+127],B       ; 823E FD CB 7F C0
        set  0,[iy+-128],c      ; 8242 FD CB 80 C1
        SET  0,[IY+-128],C      ; 8246 FD CB 80 C1
        set  0,[iy+-1],c        ; 824A FD CB FF C1
        SET  0,[IY+-1],C        ; 824E FD CB FF C1
        set  0,[iy+0],c         ; 8252 FD CB 00 C1
        SET  0,[IY+0],C         ; 8256 FD CB 00 C1
        set  0,[iy+127],c       ; 825A FD CB 7F C1
        SET  0,[IY+127],C       ; 825E FD CB 7F C1
        set  0,[iy+-128],d      ; 8262 FD CB 80 C2
        SET  0,[IY+-128],D      ; 8266 FD CB 80 C2
        set  0,[iy+-1],d        ; 826A FD CB FF C2
        SET  0,[IY+-1],D        ; 826E FD CB FF C2
        set  0,[iy+0],d         ; 8272 FD CB 00 C2
        SET  0,[IY+0],D         ; 8276 FD CB 00 C2
        set  0,[iy+127],d       ; 827A FD CB 7F C2
        SET  0,[IY+127],D       ; 827E FD CB 7F C2
        set  0,[iy+-128],e      ; 8282 FD CB 80 C3
        SET  0,[IY+-128],E      ; 8286 FD CB 80 C3
        set  0,[iy+-1],e        ; 828A FD CB FF C3
        SET  0,[IY+-1],E        ; 828E FD CB FF C3
        set  0,[iy+0],e         ; 8292 FD CB 00 C3
        SET  0,[IY+0],E         ; 8296 FD CB 00 C3
        set  0,[iy+127],e       ; 829A FD CB 7F C3
        SET  0,[IY+127],E       ; 829E FD CB 7F C3
        set  0,[iy+-128],h      ; 82A2 FD CB 80 C4
        SET  0,[IY+-128],H      ; 82A6 FD CB 80 C4
        set  0,[iy+-1],h        ; 82AA FD CB FF C4
        SET  0,[IY+-1],H        ; 82AE FD CB FF C4
        set  0,[iy+0],h         ; 82B2 FD CB 00 C4
        SET  0,[IY+0],H         ; 82B6 FD CB 00 C4
        set  0,[iy+127],h       ; 82BA FD CB 7F C4
        SET  0,[IY+127],H       ; 82BE FD CB 7F C4
        set  0,[iy+-128],l      ; 82C2 FD CB 80 C5
        SET  0,[IY+-128],L      ; 82C6 FD CB 80 C5
        set  0,[iy+-1],l        ; 82CA FD CB FF C5
        SET  0,[IY+-1],L        ; 82CE FD CB FF C5
        set  0,[iy+0],l         ; 82D2 FD CB 00 C5
        SET  0,[IY+0],L         ; 82D6 FD CB 00 C5
        set  0,[iy+127],l       ; 82DA FD CB 7F C5
        SET  0,[IY+127],L       ; 82DE FD CB 7F C5
        set  0,a                ; 82E2 CB C7
        SET  0,A                ; 82E4 CB C7
        set  0,b                ; 82E6 CB C0
        SET  0,B                ; 82E8 CB C0
        set  0,c                ; 82EA CB C1
        SET  0,C                ; 82EC CB C1
        set  0,d                ; 82EE CB C2
        SET  0,D                ; 82F0 CB C2
        set  0,e                ; 82F2 CB C3
        SET  0,E                ; 82F4 CB C3
        set  0,h                ; 82F6 CB C4
        SET  0,H                ; 82F8 CB C4
        set  0,l                ; 82FA CB C5
        SET  0,L                ; 82FC CB C5
        set  1,(hl)             ; 82FE CB CE
        SET  1,(HL)             ; 8300 CB CE
        set  1,(ix+-128)        ; 8302 DD CB 80 CE
        SET  1,(IX+-128)        ; 8306 DD CB 80 CE
        set  1,(ix+-1)          ; 830A DD CB FF CE
        SET  1,(IX+-1)          ; 830E DD CB FF CE
        set  1,(ix+0)           ; 8312 DD CB 00 CE
        SET  1,(IX+0)           ; 8316 DD CB 00 CE
        set  1,(ix+127)         ; 831A DD CB 7F CE
        SET  1,(IX+127)         ; 831E DD CB 7F CE
        set  1,(ix+-128),a      ; 8322 DD CB 80 CF
        SET  1,(IX+-128),A      ; 8326 DD CB 80 CF
        set  1,(ix+-1),a        ; 832A DD CB FF CF
        SET  1,(IX+-1),A        ; 832E DD CB FF CF
        set  1,(ix+0),a         ; 8332 DD CB 00 CF
        SET  1,(IX+0),A         ; 8336 DD CB 00 CF
        set  1,(ix+127),a       ; 833A DD CB 7F CF
        SET  1,(IX+127),A       ; 833E DD CB 7F CF
        set  1,(ix+-128),b      ; 8342 DD CB 80 C8
        SET  1,(IX+-128),B      ; 8346 DD CB 80 C8
        set  1,(ix+-1),b        ; 834A DD CB FF C8
        SET  1,(IX+-1),B        ; 834E DD CB FF C8
        set  1,(ix+0),b         ; 8352 DD CB 00 C8
        SET  1,(IX+0),B         ; 8356 DD CB 00 C8
        set  1,(ix+127),b       ; 835A DD CB 7F C8
        SET  1,(IX+127),B       ; 835E DD CB 7F C8
        set  1,(ix+-128),c      ; 8362 DD CB 80 C9
        SET  1,(IX+-128),C      ; 8366 DD CB 80 C9
        set  1,(ix+-1),c        ; 836A DD CB FF C9
        SET  1,(IX+-1),C        ; 836E DD CB FF C9
        set  1,(ix+0),c         ; 8372 DD CB 00 C9
        SET  1,(IX+0),C         ; 8376 DD CB 00 C9
        set  1,(ix+127),c       ; 837A DD CB 7F C9
        SET  1,(IX+127),C       ; 837E DD CB 7F C9
        set  1,(ix+-128),d      ; 8382 DD CB 80 CA
        SET  1,(IX+-128),D      ; 8386 DD CB 80 CA
        set  1,(ix+-1),d        ; 838A DD CB FF CA
        SET  1,(IX+-1),D        ; 838E DD CB FF CA
        set  1,(ix+0),d         ; 8392 DD CB 00 CA
        SET  1,(IX+0),D         ; 8396 DD CB 00 CA
        set  1,(ix+127),d       ; 839A DD CB 7F CA
        SET  1,(IX+127),D       ; 839E DD CB 7F CA
        set  1,(ix+-128),e      ; 83A2 DD CB 80 CB
        SET  1,(IX+-128),E      ; 83A6 DD CB 80 CB
        set  1,(ix+-1),e        ; 83AA DD CB FF CB
        SET  1,(IX+-1),E        ; 83AE DD CB FF CB
        set  1,(ix+0),e         ; 83B2 DD CB 00 CB
        SET  1,(IX+0),E         ; 83B6 DD CB 00 CB
        set  1,(ix+127),e       ; 83BA DD CB 7F CB
        SET  1,(IX+127),E       ; 83BE DD CB 7F CB
        set  1,(ix+-128),h      ; 83C2 DD CB 80 CC
        SET  1,(IX+-128),H      ; 83C6 DD CB 80 CC
        set  1,(ix+-1),h        ; 83CA DD CB FF CC
        SET  1,(IX+-1),H        ; 83CE DD CB FF CC
        set  1,(ix+0),h         ; 83D2 DD CB 00 CC
        SET  1,(IX+0),H         ; 83D6 DD CB 00 CC
        set  1,(ix+127),h       ; 83DA DD CB 7F CC
        SET  1,(IX+127),H       ; 83DE DD CB 7F CC
        set  1,(ix+-128),l      ; 83E2 DD CB 80 CD
        SET  1,(IX+-128),L      ; 83E6 DD CB 80 CD
        set  1,(ix+-1),l        ; 83EA DD CB FF CD
        SET  1,(IX+-1),L        ; 83EE DD CB FF CD
        set  1,(ix+0),l         ; 83F2 DD CB 00 CD
        SET  1,(IX+0),L         ; 83F6 DD CB 00 CD
        set  1,(ix+127),l       ; 83FA DD CB 7F CD
        SET  1,(IX+127),L       ; 83FE DD CB 7F CD
        set  1,(iy+-128)        ; 8402 FD CB 80 CE
        SET  1,(IY+-128)        ; 8406 FD CB 80 CE
        set  1,(iy+-1)          ; 840A FD CB FF CE
        SET  1,(IY+-1)          ; 840E FD CB FF CE
        set  1,(iy+0)           ; 8412 FD CB 00 CE
        SET  1,(IY+0)           ; 8416 FD CB 00 CE
        set  1,(iy+127)         ; 841A FD CB 7F CE
        SET  1,(IY+127)         ; 841E FD CB 7F CE
        set  1,(iy+-128),a      ; 8422 FD CB 80 CF
        SET  1,(IY+-128),A      ; 8426 FD CB 80 CF
        set  1,(iy+-1),a        ; 842A FD CB FF CF
        SET  1,(IY+-1),A        ; 842E FD CB FF CF
        set  1,(iy+0),a         ; 8432 FD CB 00 CF
        SET  1,(IY+0),A         ; 8436 FD CB 00 CF
        set  1,(iy+127),a       ; 843A FD CB 7F CF
        SET  1,(IY+127),A       ; 843E FD CB 7F CF
        set  1,(iy+-128),b      ; 8442 FD CB 80 C8
        SET  1,(IY+-128),B      ; 8446 FD CB 80 C8
        set  1,(iy+-1),b        ; 844A FD CB FF C8
        SET  1,(IY+-1),B        ; 844E FD CB FF C8
        set  1,(iy+0),b         ; 8452 FD CB 00 C8
        SET  1,(IY+0),B         ; 8456 FD CB 00 C8
        set  1,(iy+127),b       ; 845A FD CB 7F C8
        SET  1,(IY+127),B       ; 845E FD CB 7F C8
        set  1,(iy+-128),c      ; 8462 FD CB 80 C9
        SET  1,(IY+-128),C      ; 8466 FD CB 80 C9
        set  1,(iy+-1),c        ; 846A FD CB FF C9
        SET  1,(IY+-1),C        ; 846E FD CB FF C9
        set  1,(iy+0),c         ; 8472 FD CB 00 C9
        SET  1,(IY+0),C         ; 8476 FD CB 00 C9
        set  1,(iy+127),c       ; 847A FD CB 7F C9
        SET  1,(IY+127),C       ; 847E FD CB 7F C9
        set  1,(iy+-128),d      ; 8482 FD CB 80 CA
        SET  1,(IY+-128),D      ; 8486 FD CB 80 CA
        set  1,(iy+-1),d        ; 848A FD CB FF CA
        SET  1,(IY+-1),D        ; 848E FD CB FF CA
        set  1,(iy+0),d         ; 8492 FD CB 00 CA
        SET  1,(IY+0),D         ; 8496 FD CB 00 CA
        set  1,(iy+127),d       ; 849A FD CB 7F CA
        SET  1,(IY+127),D       ; 849E FD CB 7F CA
        set  1,(iy+-128),e      ; 84A2 FD CB 80 CB
        SET  1,(IY+-128),E      ; 84A6 FD CB 80 CB
        set  1,(iy+-1),e        ; 84AA FD CB FF CB
        SET  1,(IY+-1),E        ; 84AE FD CB FF CB
        set  1,(iy+0),e         ; 84B2 FD CB 00 CB
        SET  1,(IY+0),E         ; 84B6 FD CB 00 CB
        set  1,(iy+127),e       ; 84BA FD CB 7F CB
        SET  1,(IY+127),E       ; 84BE FD CB 7F CB
        set  1,(iy+-128),h      ; 84C2 FD CB 80 CC
        SET  1,(IY+-128),H      ; 84C6 FD CB 80 CC
        set  1,(iy+-1),h        ; 84CA FD CB FF CC
        SET  1,(IY+-1),H        ; 84CE FD CB FF CC
        set  1,(iy+0),h         ; 84D2 FD CB 00 CC
        SET  1,(IY+0),H         ; 84D6 FD CB 00 CC
        set  1,(iy+127),h       ; 84DA FD CB 7F CC
        SET  1,(IY+127),H       ; 84DE FD CB 7F CC
        set  1,(iy+-128),l      ; 84E2 FD CB 80 CD
        SET  1,(IY+-128),L      ; 84E6 FD CB 80 CD
        set  1,(iy+-1),l        ; 84EA FD CB FF CD
        SET  1,(IY+-1),L        ; 84EE FD CB FF CD
        set  1,(iy+0),l         ; 84F2 FD CB 00 CD
        SET  1,(IY+0),L         ; 84F6 FD CB 00 CD
        set  1,(iy+127),l       ; 84FA FD CB 7F CD
        SET  1,(IY+127),L       ; 84FE FD CB 7F CD
        set  1,[hl]             ; 8502 CB CE
        SET  1,[HL]             ; 8504 CB CE
        set  1,[ix+-128]        ; 8506 DD CB 80 CE
        SET  1,[IX+-128]        ; 850A DD CB 80 CE
        set  1,[ix+-1]          ; 850E DD CB FF CE
        SET  1,[IX+-1]          ; 8512 DD CB FF CE
        set  1,[ix+0]           ; 8516 DD CB 00 CE
        SET  1,[IX+0]           ; 851A DD CB 00 CE
        set  1,[ix+127]         ; 851E DD CB 7F CE
        SET  1,[IX+127]         ; 8522 DD CB 7F CE
        set  1,[ix+-128],a      ; 8526 DD CB 80 CF
        SET  1,[IX+-128],A      ; 852A DD CB 80 CF
        set  1,[ix+-1],a        ; 852E DD CB FF CF
        SET  1,[IX+-1],A        ; 8532 DD CB FF CF
        set  1,[ix+0],a         ; 8536 DD CB 00 CF
        SET  1,[IX+0],A         ; 853A DD CB 00 CF
        set  1,[ix+127],a       ; 853E DD CB 7F CF
        SET  1,[IX+127],A       ; 8542 DD CB 7F CF
        set  1,[ix+-128],b      ; 8546 DD CB 80 C8
        SET  1,[IX+-128],B      ; 854A DD CB 80 C8
        set  1,[ix+-1],b        ; 854E DD CB FF C8
        SET  1,[IX+-1],B        ; 8552 DD CB FF C8
        set  1,[ix+0],b         ; 8556 DD CB 00 C8
        SET  1,[IX+0],B         ; 855A DD CB 00 C8
        set  1,[ix+127],b       ; 855E DD CB 7F C8
        SET  1,[IX+127],B       ; 8562 DD CB 7F C8
        set  1,[ix+-128],c      ; 8566 DD CB 80 C9
        SET  1,[IX+-128],C      ; 856A DD CB 80 C9
        set  1,[ix+-1],c        ; 856E DD CB FF C9
        SET  1,[IX+-1],C        ; 8572 DD CB FF C9
        set  1,[ix+0],c         ; 8576 DD CB 00 C9
        SET  1,[IX+0],C         ; 857A DD CB 00 C9
        set  1,[ix+127],c       ; 857E DD CB 7F C9
        SET  1,[IX+127],C       ; 8582 DD CB 7F C9
        set  1,[ix+-128],d      ; 8586 DD CB 80 CA
        SET  1,[IX+-128],D      ; 858A DD CB 80 CA
        set  1,[ix+-1],d        ; 858E DD CB FF CA
        SET  1,[IX+-1],D        ; 8592 DD CB FF CA
        set  1,[ix+0],d         ; 8596 DD CB 00 CA
        SET  1,[IX+0],D         ; 859A DD CB 00 CA
        set  1,[ix+127],d       ; 859E DD CB 7F CA
        SET  1,[IX+127],D       ; 85A2 DD CB 7F CA
        set  1,[ix+-128],e      ; 85A6 DD CB 80 CB
        SET  1,[IX+-128],E      ; 85AA DD CB 80 CB
        set  1,[ix+-1],e        ; 85AE DD CB FF CB
        SET  1,[IX+-1],E        ; 85B2 DD CB FF CB
        set  1,[ix+0],e         ; 85B6 DD CB 00 CB
        SET  1,[IX+0],E         ; 85BA DD CB 00 CB
        set  1,[ix+127],e       ; 85BE DD CB 7F CB
        SET  1,[IX+127],E       ; 85C2 DD CB 7F CB
        set  1,[ix+-128],h      ; 85C6 DD CB 80 CC
        SET  1,[IX+-128],H      ; 85CA DD CB 80 CC
        set  1,[ix+-1],h        ; 85CE DD CB FF CC
        SET  1,[IX+-1],H        ; 85D2 DD CB FF CC
        set  1,[ix+0],h         ; 85D6 DD CB 00 CC
        SET  1,[IX+0],H         ; 85DA DD CB 00 CC
        set  1,[ix+127],h       ; 85DE DD CB 7F CC
        SET  1,[IX+127],H       ; 85E2 DD CB 7F CC
        set  1,[ix+-128],l      ; 85E6 DD CB 80 CD
        SET  1,[IX+-128],L      ; 85EA DD CB 80 CD
        set  1,[ix+-1],l        ; 85EE DD CB FF CD
        SET  1,[IX+-1],L        ; 85F2 DD CB FF CD
        set  1,[ix+0],l         ; 85F6 DD CB 00 CD
        SET  1,[IX+0],L         ; 85FA DD CB 00 CD
        set  1,[ix+127],l       ; 85FE DD CB 7F CD
        SET  1,[IX+127],L       ; 8602 DD CB 7F CD
        set  1,[iy+-128]        ; 8606 FD CB 80 CE
        SET  1,[IY+-128]        ; 860A FD CB 80 CE
        set  1,[iy+-1]          ; 860E FD CB FF CE
        SET  1,[IY+-1]          ; 8612 FD CB FF CE
        set  1,[iy+0]           ; 8616 FD CB 00 CE
        SET  1,[IY+0]           ; 861A FD CB 00 CE
        set  1,[iy+127]         ; 861E FD CB 7F CE
        SET  1,[IY+127]         ; 8622 FD CB 7F CE
        set  1,[iy+-128],a      ; 8626 FD CB 80 CF
        SET  1,[IY+-128],A      ; 862A FD CB 80 CF
        set  1,[iy+-1],a        ; 862E FD CB FF CF
        SET  1,[IY+-1],A        ; 8632 FD CB FF CF
        set  1,[iy+0],a         ; 8636 FD CB 00 CF
        SET  1,[IY+0],A         ; 863A FD CB 00 CF
        set  1,[iy+127],a       ; 863E FD CB 7F CF
        SET  1,[IY+127],A       ; 8642 FD CB 7F CF
        set  1,[iy+-128],b      ; 8646 FD CB 80 C8
        SET  1,[IY+-128],B      ; 864A FD CB 80 C8
        set  1,[iy+-1],b        ; 864E FD CB FF C8
        SET  1,[IY+-1],B        ; 8652 FD CB FF C8
        set  1,[iy+0],b         ; 8656 FD CB 00 C8
        SET  1,[IY+0],B         ; 865A FD CB 00 C8
        set  1,[iy+127],b       ; 865E FD CB 7F C8
        SET  1,[IY+127],B       ; 8662 FD CB 7F C8
        set  1,[iy+-128],c      ; 8666 FD CB 80 C9
        SET  1,[IY+-128],C      ; 866A FD CB 80 C9
        set  1,[iy+-1],c        ; 866E FD CB FF C9
        SET  1,[IY+-1],C        ; 8672 FD CB FF C9
        set  1,[iy+0],c         ; 8676 FD CB 00 C9
        SET  1,[IY+0],C         ; 867A FD CB 00 C9
        set  1,[iy+127],c       ; 867E FD CB 7F C9
        SET  1,[IY+127],C       ; 8682 FD CB 7F C9
        set  1,[iy+-128],d      ; 8686 FD CB 80 CA
        SET  1,[IY+-128],D      ; 868A FD CB 80 CA
        set  1,[iy+-1],d        ; 868E FD CB FF CA
        SET  1,[IY+-1],D        ; 8692 FD CB FF CA
        set  1,[iy+0],d         ; 8696 FD CB 00 CA
        SET  1,[IY+0],D         ; 869A FD CB 00 CA
        set  1,[iy+127],d       ; 869E FD CB 7F CA
        SET  1,[IY+127],D       ; 86A2 FD CB 7F CA
        set  1,[iy+-128],e      ; 86A6 FD CB 80 CB
        SET  1,[IY+-128],E      ; 86AA FD CB 80 CB
        set  1,[iy+-1],e        ; 86AE FD CB FF CB
        SET  1,[IY+-1],E        ; 86B2 FD CB FF CB
        set  1,[iy+0],e         ; 86B6 FD CB 00 CB
        SET  1,[IY+0],E         ; 86BA FD CB 00 CB
        set  1,[iy+127],e       ; 86BE FD CB 7F CB
        SET  1,[IY+127],E       ; 86C2 FD CB 7F CB
        set  1,[iy+-128],h      ; 86C6 FD CB 80 CC
        SET  1,[IY+-128],H      ; 86CA FD CB 80 CC
        set  1,[iy+-1],h        ; 86CE FD CB FF CC
        SET  1,[IY+-1],H        ; 86D2 FD CB FF CC
        set  1,[iy+0],h         ; 86D6 FD CB 00 CC
        SET  1,[IY+0],H         ; 86DA FD CB 00 CC
        set  1,[iy+127],h       ; 86DE FD CB 7F CC
        SET  1,[IY+127],H       ; 86E2 FD CB 7F CC
        set  1,[iy+-128],l      ; 86E6 FD CB 80 CD
        SET  1,[IY+-128],L      ; 86EA FD CB 80 CD
        set  1,[iy+-1],l        ; 86EE FD CB FF CD
        SET  1,[IY+-1],L        ; 86F2 FD CB FF CD
        set  1,[iy+0],l         ; 86F6 FD CB 00 CD
        SET  1,[IY+0],L         ; 86FA FD CB 00 CD
        set  1,[iy+127],l       ; 86FE FD CB 7F CD
        SET  1,[IY+127],L       ; 8702 FD CB 7F CD
        set  1,a                ; 8706 CB CF
        SET  1,A                ; 8708 CB CF
        set  1,b                ; 870A CB C8
        SET  1,B                ; 870C CB C8
        set  1,c                ; 870E CB C9
        SET  1,C                ; 8710 CB C9
        set  1,d                ; 8712 CB CA
        SET  1,D                ; 8714 CB CA
        set  1,e                ; 8716 CB CB
        SET  1,E                ; 8718 CB CB
        set  1,h                ; 871A CB CC
        SET  1,H                ; 871C CB CC
        set  1,l                ; 871E CB CD
        SET  1,L                ; 8720 CB CD
        set  2,(hl)             ; 8722 CB D6
        SET  2,(HL)             ; 8724 CB D6
        set  2,(ix+-128)        ; 8726 DD CB 80 D6
        SET  2,(IX+-128)        ; 872A DD CB 80 D6
        set  2,(ix+-1)          ; 872E DD CB FF D6
        SET  2,(IX+-1)          ; 8732 DD CB FF D6
        set  2,(ix+0)           ; 8736 DD CB 00 D6
        SET  2,(IX+0)           ; 873A DD CB 00 D6
        set  2,(ix+127)         ; 873E DD CB 7F D6
        SET  2,(IX+127)         ; 8742 DD CB 7F D6
        set  2,(ix+-128),a      ; 8746 DD CB 80 D7
        SET  2,(IX+-128),A      ; 874A DD CB 80 D7
        set  2,(ix+-1),a        ; 874E DD CB FF D7
        SET  2,(IX+-1),A        ; 8752 DD CB FF D7
        set  2,(ix+0),a         ; 8756 DD CB 00 D7
        SET  2,(IX+0),A         ; 875A DD CB 00 D7
        set  2,(ix+127),a       ; 875E DD CB 7F D7
        SET  2,(IX+127),A       ; 8762 DD CB 7F D7
        set  2,(ix+-128),b      ; 8766 DD CB 80 D0
        SET  2,(IX+-128),B      ; 876A DD CB 80 D0
        set  2,(ix+-1),b        ; 876E DD CB FF D0
        SET  2,(IX+-1),B        ; 8772 DD CB FF D0
        set  2,(ix+0),b         ; 8776 DD CB 00 D0
        SET  2,(IX+0),B         ; 877A DD CB 00 D0
        set  2,(ix+127),b       ; 877E DD CB 7F D0
        SET  2,(IX+127),B       ; 8782 DD CB 7F D0
        set  2,(ix+-128),c      ; 8786 DD CB 80 D1
        SET  2,(IX+-128),C      ; 878A DD CB 80 D1
        set  2,(ix+-1),c        ; 878E DD CB FF D1
        SET  2,(IX+-1),C        ; 8792 DD CB FF D1
        set  2,(ix+0),c         ; 8796 DD CB 00 D1
        SET  2,(IX+0),C         ; 879A DD CB 00 D1
        set  2,(ix+127),c       ; 879E DD CB 7F D1
        SET  2,(IX+127),C       ; 87A2 DD CB 7F D1
        set  2,(ix+-128),d      ; 87A6 DD CB 80 D2
        SET  2,(IX+-128),D      ; 87AA DD CB 80 D2
        set  2,(ix+-1),d        ; 87AE DD CB FF D2
        SET  2,(IX+-1),D        ; 87B2 DD CB FF D2
        set  2,(ix+0),d         ; 87B6 DD CB 00 D2
        SET  2,(IX+0),D         ; 87BA DD CB 00 D2
        set  2,(ix+127),d       ; 87BE DD CB 7F D2
        SET  2,(IX+127),D       ; 87C2 DD CB 7F D2
        set  2,(ix+-128),e      ; 87C6 DD CB 80 D3
        SET  2,(IX+-128),E      ; 87CA DD CB 80 D3
        set  2,(ix+-1),e        ; 87CE DD CB FF D3
        SET  2,(IX+-1),E        ; 87D2 DD CB FF D3
        set  2,(ix+0),e         ; 87D6 DD CB 00 D3
        SET  2,(IX+0),E         ; 87DA DD CB 00 D3
        set  2,(ix+127),e       ; 87DE DD CB 7F D3
        SET  2,(IX+127),E       ; 87E2 DD CB 7F D3
        set  2,(ix+-128),h      ; 87E6 DD CB 80 D4
        SET  2,(IX+-128),H      ; 87EA DD CB 80 D4
        set  2,(ix+-1),h        ; 87EE DD CB FF D4
        SET  2,(IX+-1),H        ; 87F2 DD CB FF D4
        set  2,(ix+0),h         ; 87F6 DD CB 00 D4
        SET  2,(IX+0),H         ; 87FA DD CB 00 D4
        set  2,(ix+127),h       ; 87FE DD CB 7F D4
        SET  2,(IX+127),H       ; 8802 DD CB 7F D4
        set  2,(ix+-128),l      ; 8806 DD CB 80 D5
        SET  2,(IX+-128),L      ; 880A DD CB 80 D5
        set  2,(ix+-1),l        ; 880E DD CB FF D5
        SET  2,(IX+-1),L        ; 8812 DD CB FF D5
        set  2,(ix+0),l         ; 8816 DD CB 00 D5
        SET  2,(IX+0),L         ; 881A DD CB 00 D5
        set  2,(ix+127),l       ; 881E DD CB 7F D5
        SET  2,(IX+127),L       ; 8822 DD CB 7F D5
        set  2,(iy+-128)        ; 8826 FD CB 80 D6
        SET  2,(IY+-128)        ; 882A FD CB 80 D6
        set  2,(iy+-1)          ; 882E FD CB FF D6
        SET  2,(IY+-1)          ; 8832 FD CB FF D6
        set  2,(iy+0)           ; 8836 FD CB 00 D6
        SET  2,(IY+0)           ; 883A FD CB 00 D6
        set  2,(iy+127)         ; 883E FD CB 7F D6
        SET  2,(IY+127)         ; 8842 FD CB 7F D6
        set  2,(iy+-128),a      ; 8846 FD CB 80 D7
        SET  2,(IY+-128),A      ; 884A FD CB 80 D7
        set  2,(iy+-1),a        ; 884E FD CB FF D7
        SET  2,(IY+-1),A        ; 8852 FD CB FF D7
        set  2,(iy+0),a         ; 8856 FD CB 00 D7
        SET  2,(IY+0),A         ; 885A FD CB 00 D7
        set  2,(iy+127),a       ; 885E FD CB 7F D7
        SET  2,(IY+127),A       ; 8862 FD CB 7F D7
        set  2,(iy+-128),b      ; 8866 FD CB 80 D0
        SET  2,(IY+-128),B      ; 886A FD CB 80 D0
        set  2,(iy+-1),b        ; 886E FD CB FF D0
        SET  2,(IY+-1),B        ; 8872 FD CB FF D0
        set  2,(iy+0),b         ; 8876 FD CB 00 D0
        SET  2,(IY+0),B         ; 887A FD CB 00 D0
        set  2,(iy+127),b       ; 887E FD CB 7F D0
        SET  2,(IY+127),B       ; 8882 FD CB 7F D0
        set  2,(iy+-128),c      ; 8886 FD CB 80 D1
        SET  2,(IY+-128),C      ; 888A FD CB 80 D1
        set  2,(iy+-1),c        ; 888E FD CB FF D1
        SET  2,(IY+-1),C        ; 8892 FD CB FF D1
        set  2,(iy+0),c         ; 8896 FD CB 00 D1
        SET  2,(IY+0),C         ; 889A FD CB 00 D1
        set  2,(iy+127),c       ; 889E FD CB 7F D1
        SET  2,(IY+127),C       ; 88A2 FD CB 7F D1
        set  2,(iy+-128),d      ; 88A6 FD CB 80 D2
        SET  2,(IY+-128),D      ; 88AA FD CB 80 D2
        set  2,(iy+-1),d        ; 88AE FD CB FF D2
        SET  2,(IY+-1),D        ; 88B2 FD CB FF D2
        set  2,(iy+0),d         ; 88B6 FD CB 00 D2
        SET  2,(IY+0),D         ; 88BA FD CB 00 D2
        set  2,(iy+127),d       ; 88BE FD CB 7F D2
        SET  2,(IY+127),D       ; 88C2 FD CB 7F D2
        set  2,(iy+-128),e      ; 88C6 FD CB 80 D3
        SET  2,(IY+-128),E      ; 88CA FD CB 80 D3
        set  2,(iy+-1),e        ; 88CE FD CB FF D3
        SET  2,(IY+-1),E        ; 88D2 FD CB FF D3
        set  2,(iy+0),e         ; 88D6 FD CB 00 D3
        SET  2,(IY+0),E         ; 88DA FD CB 00 D3
        set  2,(iy+127),e       ; 88DE FD CB 7F D3
        SET  2,(IY+127),E       ; 88E2 FD CB 7F D3
        set  2,(iy+-128),h      ; 88E6 FD CB 80 D4
        SET  2,(IY+-128),H      ; 88EA FD CB 80 D4
        set  2,(iy+-1),h        ; 88EE FD CB FF D4
        SET  2,(IY+-1),H        ; 88F2 FD CB FF D4
        set  2,(iy+0),h         ; 88F6 FD CB 00 D4
        SET  2,(IY+0),H         ; 88FA FD CB 00 D4
        set  2,(iy+127),h       ; 88FE FD CB 7F D4
        SET  2,(IY+127),H       ; 8902 FD CB 7F D4
        set  2,(iy+-128),l      ; 8906 FD CB 80 D5
        SET  2,(IY+-128),L      ; 890A FD CB 80 D5
        set  2,(iy+-1),l        ; 890E FD CB FF D5
        SET  2,(IY+-1),L        ; 8912 FD CB FF D5
        set  2,(iy+0),l         ; 8916 FD CB 00 D5
        SET  2,(IY+0),L         ; 891A FD CB 00 D5
        set  2,(iy+127),l       ; 891E FD CB 7F D5
        SET  2,(IY+127),L       ; 8922 FD CB 7F D5
        set  2,[hl]             ; 8926 CB D6
        SET  2,[HL]             ; 8928 CB D6
        set  2,[ix+-128]        ; 892A DD CB 80 D6
        SET  2,[IX+-128]        ; 892E DD CB 80 D6
        set  2,[ix+-1]          ; 8932 DD CB FF D6
        SET  2,[IX+-1]          ; 8936 DD CB FF D6
        set  2,[ix+0]           ; 893A DD CB 00 D6
        SET  2,[IX+0]           ; 893E DD CB 00 D6
        set  2,[ix+127]         ; 8942 DD CB 7F D6
        SET  2,[IX+127]         ; 8946 DD CB 7F D6
        set  2,[ix+-128],a      ; 894A DD CB 80 D7
        SET  2,[IX+-128],A      ; 894E DD CB 80 D7
        set  2,[ix+-1],a        ; 8952 DD CB FF D7
        SET  2,[IX+-1],A        ; 8956 DD CB FF D7
        set  2,[ix+0],a         ; 895A DD CB 00 D7
        SET  2,[IX+0],A         ; 895E DD CB 00 D7
        set  2,[ix+127],a       ; 8962 DD CB 7F D7
        SET  2,[IX+127],A       ; 8966 DD CB 7F D7
        set  2,[ix+-128],b      ; 896A DD CB 80 D0
        SET  2,[IX+-128],B      ; 896E DD CB 80 D0
        set  2,[ix+-1],b        ; 8972 DD CB FF D0
        SET  2,[IX+-1],B        ; 8976 DD CB FF D0
        set  2,[ix+0],b         ; 897A DD CB 00 D0
        SET  2,[IX+0],B         ; 897E DD CB 00 D0
        set  2,[ix+127],b       ; 8982 DD CB 7F D0
        SET  2,[IX+127],B       ; 8986 DD CB 7F D0
        set  2,[ix+-128],c      ; 898A DD CB 80 D1
        SET  2,[IX+-128],C      ; 898E DD CB 80 D1
        set  2,[ix+-1],c        ; 8992 DD CB FF D1
        SET  2,[IX+-1],C        ; 8996 DD CB FF D1
        set  2,[ix+0],c         ; 899A DD CB 00 D1
        SET  2,[IX+0],C         ; 899E DD CB 00 D1
        set  2,[ix+127],c       ; 89A2 DD CB 7F D1
        SET  2,[IX+127],C       ; 89A6 DD CB 7F D1
        set  2,[ix+-128],d      ; 89AA DD CB 80 D2
        SET  2,[IX+-128],D      ; 89AE DD CB 80 D2
        set  2,[ix+-1],d        ; 89B2 DD CB FF D2
        SET  2,[IX+-1],D        ; 89B6 DD CB FF D2
        set  2,[ix+0],d         ; 89BA DD CB 00 D2
        SET  2,[IX+0],D         ; 89BE DD CB 00 D2
        set  2,[ix+127],d       ; 89C2 DD CB 7F D2
        SET  2,[IX+127],D       ; 89C6 DD CB 7F D2
        set  2,[ix+-128],e      ; 89CA DD CB 80 D3
        SET  2,[IX+-128],E      ; 89CE DD CB 80 D3
        set  2,[ix+-1],e        ; 89D2 DD CB FF D3
        SET  2,[IX+-1],E        ; 89D6 DD CB FF D3
        set  2,[ix+0],e         ; 89DA DD CB 00 D3
        SET  2,[IX+0],E         ; 89DE DD CB 00 D3
        set  2,[ix+127],e       ; 89E2 DD CB 7F D3
        SET  2,[IX+127],E       ; 89E6 DD CB 7F D3
        set  2,[ix+-128],h      ; 89EA DD CB 80 D4
        SET  2,[IX+-128],H      ; 89EE DD CB 80 D4
        set  2,[ix+-1],h        ; 89F2 DD CB FF D4
        SET  2,[IX+-1],H        ; 89F6 DD CB FF D4
        set  2,[ix+0],h         ; 89FA DD CB 00 D4
        SET  2,[IX+0],H         ; 89FE DD CB 00 D4
        set  2,[ix+127],h       ; 8A02 DD CB 7F D4
        SET  2,[IX+127],H       ; 8A06 DD CB 7F D4
        set  2,[ix+-128],l      ; 8A0A DD CB 80 D5
        SET  2,[IX+-128],L      ; 8A0E DD CB 80 D5
        set  2,[ix+-1],l        ; 8A12 DD CB FF D5
        SET  2,[IX+-1],L        ; 8A16 DD CB FF D5
        set  2,[ix+0],l         ; 8A1A DD CB 00 D5
        SET  2,[IX+0],L         ; 8A1E DD CB 00 D5
        set  2,[ix+127],l       ; 8A22 DD CB 7F D5
        SET  2,[IX+127],L       ; 8A26 DD CB 7F D5
        set  2,[iy+-128]        ; 8A2A FD CB 80 D6
        SET  2,[IY+-128]        ; 8A2E FD CB 80 D6
        set  2,[iy+-1]          ; 8A32 FD CB FF D6
        SET  2,[IY+-1]          ; 8A36 FD CB FF D6
        set  2,[iy+0]           ; 8A3A FD CB 00 D6
        SET  2,[IY+0]           ; 8A3E FD CB 00 D6
        set  2,[iy+127]         ; 8A42 FD CB 7F D6
        SET  2,[IY+127]         ; 8A46 FD CB 7F D6
        set  2,[iy+-128],a      ; 8A4A FD CB 80 D7
        SET  2,[IY+-128],A      ; 8A4E FD CB 80 D7
        set  2,[iy+-1],a        ; 8A52 FD CB FF D7
        SET  2,[IY+-1],A        ; 8A56 FD CB FF D7
        set  2,[iy+0],a         ; 8A5A FD CB 00 D7
        SET  2,[IY+0],A         ; 8A5E FD CB 00 D7
        set  2,[iy+127],a       ; 8A62 FD CB 7F D7
        SET  2,[IY+127],A       ; 8A66 FD CB 7F D7
        set  2,[iy+-128],b      ; 8A6A FD CB 80 D0
        SET  2,[IY+-128],B      ; 8A6E FD CB 80 D0
        set  2,[iy+-1],b        ; 8A72 FD CB FF D0
        SET  2,[IY+-1],B        ; 8A76 FD CB FF D0
        set  2,[iy+0],b         ; 8A7A FD CB 00 D0
        SET  2,[IY+0],B         ; 8A7E FD CB 00 D0
        set  2,[iy+127],b       ; 8A82 FD CB 7F D0
        SET  2,[IY+127],B       ; 8A86 FD CB 7F D0
        set  2,[iy+-128],c      ; 8A8A FD CB 80 D1
        SET  2,[IY+-128],C      ; 8A8E FD CB 80 D1
        set  2,[iy+-1],c        ; 8A92 FD CB FF D1
        SET  2,[IY+-1],C        ; 8A96 FD CB FF D1
        set  2,[iy+0],c         ; 8A9A FD CB 00 D1
        SET  2,[IY+0],C         ; 8A9E FD CB 00 D1
        set  2,[iy+127],c       ; 8AA2 FD CB 7F D1
        SET  2,[IY+127],C       ; 8AA6 FD CB 7F D1
        set  2,[iy+-128],d      ; 8AAA FD CB 80 D2
        SET  2,[IY+-128],D      ; 8AAE FD CB 80 D2
        set  2,[iy+-1],d        ; 8AB2 FD CB FF D2
        SET  2,[IY+-1],D        ; 8AB6 FD CB FF D2
        set  2,[iy+0],d         ; 8ABA FD CB 00 D2
        SET  2,[IY+0],D         ; 8ABE FD CB 00 D2
        set  2,[iy+127],d       ; 8AC2 FD CB 7F D2
        SET  2,[IY+127],D       ; 8AC6 FD CB 7F D2
        set  2,[iy+-128],e      ; 8ACA FD CB 80 D3
        SET  2,[IY+-128],E      ; 8ACE FD CB 80 D3
        set  2,[iy+-1],e        ; 8AD2 FD CB FF D3
        SET  2,[IY+-1],E        ; 8AD6 FD CB FF D3
        set  2,[iy+0],e         ; 8ADA FD CB 00 D3
        SET  2,[IY+0],E         ; 8ADE FD CB 00 D3
        set  2,[iy+127],e       ; 8AE2 FD CB 7F D3
        SET  2,[IY+127],E       ; 8AE6 FD CB 7F D3
        set  2,[iy+-128],h      ; 8AEA FD CB 80 D4
        SET  2,[IY+-128],H      ; 8AEE FD CB 80 D4
        set  2,[iy+-1],h        ; 8AF2 FD CB FF D4
        SET  2,[IY+-1],H        ; 8AF6 FD CB FF D4
        set  2,[iy+0],h         ; 8AFA FD CB 00 D4
        SET  2,[IY+0],H         ; 8AFE FD CB 00 D4
        set  2,[iy+127],h       ; 8B02 FD CB 7F D4
        SET  2,[IY+127],H       ; 8B06 FD CB 7F D4
        set  2,[iy+-128],l      ; 8B0A FD CB 80 D5
        SET  2,[IY+-128],L      ; 8B0E FD CB 80 D5
        set  2,[iy+-1],l        ; 8B12 FD CB FF D5
        SET  2,[IY+-1],L        ; 8B16 FD CB FF D5
        set  2,[iy+0],l         ; 8B1A FD CB 00 D5
        SET  2,[IY+0],L         ; 8B1E FD CB 00 D5
        set  2,[iy+127],l       ; 8B22 FD CB 7F D5
        SET  2,[IY+127],L       ; 8B26 FD CB 7F D5
        set  2,a                ; 8B2A CB D7
        SET  2,A                ; 8B2C CB D7
        set  2,b                ; 8B2E CB D0
        SET  2,B                ; 8B30 CB D0
        set  2,c                ; 8B32 CB D1
        SET  2,C                ; 8B34 CB D1
        set  2,d                ; 8B36 CB D2
        SET  2,D                ; 8B38 CB D2
        set  2,e                ; 8B3A CB D3
        SET  2,E                ; 8B3C CB D3
        set  2,h                ; 8B3E CB D4
        SET  2,H                ; 8B40 CB D4
        set  2,l                ; 8B42 CB D5
        SET  2,L                ; 8B44 CB D5
        set  3,(hl)             ; 8B46 CB DE
        SET  3,(HL)             ; 8B48 CB DE
        set  3,(ix+-128)        ; 8B4A DD CB 80 DE
        SET  3,(IX+-128)        ; 8B4E DD CB 80 DE
        set  3,(ix+-1)          ; 8B52 DD CB FF DE
        SET  3,(IX+-1)          ; 8B56 DD CB FF DE
        set  3,(ix+0)           ; 8B5A DD CB 00 DE
        SET  3,(IX+0)           ; 8B5E DD CB 00 DE
        set  3,(ix+127)         ; 8B62 DD CB 7F DE
        SET  3,(IX+127)         ; 8B66 DD CB 7F DE
        set  3,(ix+-128),a      ; 8B6A DD CB 80 DF
        SET  3,(IX+-128),A      ; 8B6E DD CB 80 DF
        set  3,(ix+-1),a        ; 8B72 DD CB FF DF
        SET  3,(IX+-1),A        ; 8B76 DD CB FF DF
        set  3,(ix+0),a         ; 8B7A DD CB 00 DF
        SET  3,(IX+0),A         ; 8B7E DD CB 00 DF
        set  3,(ix+127),a       ; 8B82 DD CB 7F DF
        SET  3,(IX+127),A       ; 8B86 DD CB 7F DF
        set  3,(ix+-128),b      ; 8B8A DD CB 80 D8
        SET  3,(IX+-128),B      ; 8B8E DD CB 80 D8
        set  3,(ix+-1),b        ; 8B92 DD CB FF D8
        SET  3,(IX+-1),B        ; 8B96 DD CB FF D8
        set  3,(ix+0),b         ; 8B9A DD CB 00 D8
        SET  3,(IX+0),B         ; 8B9E DD CB 00 D8
        set  3,(ix+127),b       ; 8BA2 DD CB 7F D8
        SET  3,(IX+127),B       ; 8BA6 DD CB 7F D8
        set  3,(ix+-128),c      ; 8BAA DD CB 80 D9
        SET  3,(IX+-128),C      ; 8BAE DD CB 80 D9
        set  3,(ix+-1),c        ; 8BB2 DD CB FF D9
        SET  3,(IX+-1),C        ; 8BB6 DD CB FF D9
        set  3,(ix+0),c         ; 8BBA DD CB 00 D9
        SET  3,(IX+0),C         ; 8BBE DD CB 00 D9
        set  3,(ix+127),c       ; 8BC2 DD CB 7F D9
        SET  3,(IX+127),C       ; 8BC6 DD CB 7F D9
        set  3,(ix+-128),d      ; 8BCA DD CB 80 DA
        SET  3,(IX+-128),D      ; 8BCE DD CB 80 DA
        set  3,(ix+-1),d        ; 8BD2 DD CB FF DA
        SET  3,(IX+-1),D        ; 8BD6 DD CB FF DA
        set  3,(ix+0),d         ; 8BDA DD CB 00 DA
        SET  3,(IX+0),D         ; 8BDE DD CB 00 DA
        set  3,(ix+127),d       ; 8BE2 DD CB 7F DA
        SET  3,(IX+127),D       ; 8BE6 DD CB 7F DA
        set  3,(ix+-128),e      ; 8BEA DD CB 80 DB
        SET  3,(IX+-128),E      ; 8BEE DD CB 80 DB
        set  3,(ix+-1),e        ; 8BF2 DD CB FF DB
        SET  3,(IX+-1),E        ; 8BF6 DD CB FF DB
        set  3,(ix+0),e         ; 8BFA DD CB 00 DB
        SET  3,(IX+0),E         ; 8BFE DD CB 00 DB
        set  3,(ix+127),e       ; 8C02 DD CB 7F DB
        SET  3,(IX+127),E       ; 8C06 DD CB 7F DB
        set  3,(ix+-128),h      ; 8C0A DD CB 80 DC
        SET  3,(IX+-128),H      ; 8C0E DD CB 80 DC
        set  3,(ix+-1),h        ; 8C12 DD CB FF DC
        SET  3,(IX+-1),H        ; 8C16 DD CB FF DC
        set  3,(ix+0),h         ; 8C1A DD CB 00 DC
        SET  3,(IX+0),H         ; 8C1E DD CB 00 DC
        set  3,(ix+127),h       ; 8C22 DD CB 7F DC
        SET  3,(IX+127),H       ; 8C26 DD CB 7F DC
        set  3,(ix+-128),l      ; 8C2A DD CB 80 DD
        SET  3,(IX+-128),L      ; 8C2E DD CB 80 DD
        set  3,(ix+-1),l        ; 8C32 DD CB FF DD
        SET  3,(IX+-1),L        ; 8C36 DD CB FF DD
        set  3,(ix+0),l         ; 8C3A DD CB 00 DD
        SET  3,(IX+0),L         ; 8C3E DD CB 00 DD
        set  3,(ix+127),l       ; 8C42 DD CB 7F DD
        SET  3,(IX+127),L       ; 8C46 DD CB 7F DD
        set  3,(iy+-128)        ; 8C4A FD CB 80 DE
        SET  3,(IY+-128)        ; 8C4E FD CB 80 DE
        set  3,(iy+-1)          ; 8C52 FD CB FF DE
        SET  3,(IY+-1)          ; 8C56 FD CB FF DE
        set  3,(iy+0)           ; 8C5A FD CB 00 DE
        SET  3,(IY+0)           ; 8C5E FD CB 00 DE
        set  3,(iy+127)         ; 8C62 FD CB 7F DE
        SET  3,(IY+127)         ; 8C66 FD CB 7F DE
        set  3,(iy+-128),a      ; 8C6A FD CB 80 DF
        SET  3,(IY+-128),A      ; 8C6E FD CB 80 DF
        set  3,(iy+-1),a        ; 8C72 FD CB FF DF
        SET  3,(IY+-1),A        ; 8C76 FD CB FF DF
        set  3,(iy+0),a         ; 8C7A FD CB 00 DF
        SET  3,(IY+0),A         ; 8C7E FD CB 00 DF
        set  3,(iy+127),a       ; 8C82 FD CB 7F DF
        SET  3,(IY+127),A       ; 8C86 FD CB 7F DF
        set  3,(iy+-128),b      ; 8C8A FD CB 80 D8
        SET  3,(IY+-128),B      ; 8C8E FD CB 80 D8
        set  3,(iy+-1),b        ; 8C92 FD CB FF D8
        SET  3,(IY+-1),B        ; 8C96 FD CB FF D8
        set  3,(iy+0),b         ; 8C9A FD CB 00 D8
        SET  3,(IY+0),B         ; 8C9E FD CB 00 D8
        set  3,(iy+127),b       ; 8CA2 FD CB 7F D8
        SET  3,(IY+127),B       ; 8CA6 FD CB 7F D8
        set  3,(iy+-128),c      ; 8CAA FD CB 80 D9
        SET  3,(IY+-128),C      ; 8CAE FD CB 80 D9
        set  3,(iy+-1),c        ; 8CB2 FD CB FF D9
        SET  3,(IY+-1),C        ; 8CB6 FD CB FF D9
        set  3,(iy+0),c         ; 8CBA FD CB 00 D9
        SET  3,(IY+0),C         ; 8CBE FD CB 00 D9
        set  3,(iy+127),c       ; 8CC2 FD CB 7F D9
        SET  3,(IY+127),C       ; 8CC6 FD CB 7F D9
        set  3,(iy+-128),d      ; 8CCA FD CB 80 DA
        SET  3,(IY+-128),D      ; 8CCE FD CB 80 DA
        set  3,(iy+-1),d        ; 8CD2 FD CB FF DA
        SET  3,(IY+-1),D        ; 8CD6 FD CB FF DA
        set  3,(iy+0),d         ; 8CDA FD CB 00 DA
        SET  3,(IY+0),D         ; 8CDE FD CB 00 DA
        set  3,(iy+127),d       ; 8CE2 FD CB 7F DA
        SET  3,(IY+127),D       ; 8CE6 FD CB 7F DA
        set  3,(iy+-128),e      ; 8CEA FD CB 80 DB
        SET  3,(IY+-128),E      ; 8CEE FD CB 80 DB
        set  3,(iy+-1),e        ; 8CF2 FD CB FF DB
        SET  3,(IY+-1),E        ; 8CF6 FD CB FF DB
        set  3,(iy+0),e         ; 8CFA FD CB 00 DB
        SET  3,(IY+0),E         ; 8CFE FD CB 00 DB
        set  3,(iy+127),e       ; 8D02 FD CB 7F DB
        SET  3,(IY+127),E       ; 8D06 FD CB 7F DB
        set  3,(iy+-128),h      ; 8D0A FD CB 80 DC
        SET  3,(IY+-128),H      ; 8D0E FD CB 80 DC
        set  3,(iy+-1),h        ; 8D12 FD CB FF DC
        SET  3,(IY+-1),H        ; 8D16 FD CB FF DC
        set  3,(iy+0),h         ; 8D1A FD CB 00 DC
        SET  3,(IY+0),H         ; 8D1E FD CB 00 DC
        set  3,(iy+127),h       ; 8D22 FD CB 7F DC
        SET  3,(IY+127),H       ; 8D26 FD CB 7F DC
        set  3,(iy+-128),l      ; 8D2A FD CB 80 DD
        SET  3,(IY+-128),L      ; 8D2E FD CB 80 DD
        set  3,(iy+-1),l        ; 8D32 FD CB FF DD
        SET  3,(IY+-1),L        ; 8D36 FD CB FF DD
        set  3,(iy+0),l         ; 8D3A FD CB 00 DD
        SET  3,(IY+0),L         ; 8D3E FD CB 00 DD
        set  3,(iy+127),l       ; 8D42 FD CB 7F DD
        SET  3,(IY+127),L       ; 8D46 FD CB 7F DD
        set  3,[hl]             ; 8D4A CB DE
        SET  3,[HL]             ; 8D4C CB DE
        set  3,[ix+-128]        ; 8D4E DD CB 80 DE
        SET  3,[IX+-128]        ; 8D52 DD CB 80 DE
        set  3,[ix+-1]          ; 8D56 DD CB FF DE
        SET  3,[IX+-1]          ; 8D5A DD CB FF DE
        set  3,[ix+0]           ; 8D5E DD CB 00 DE
        SET  3,[IX+0]           ; 8D62 DD CB 00 DE
        set  3,[ix+127]         ; 8D66 DD CB 7F DE
        SET  3,[IX+127]         ; 8D6A DD CB 7F DE
        set  3,[ix+-128],a      ; 8D6E DD CB 80 DF
        SET  3,[IX+-128],A      ; 8D72 DD CB 80 DF
        set  3,[ix+-1],a        ; 8D76 DD CB FF DF
        SET  3,[IX+-1],A        ; 8D7A DD CB FF DF
        set  3,[ix+0],a         ; 8D7E DD CB 00 DF
        SET  3,[IX+0],A         ; 8D82 DD CB 00 DF
        set  3,[ix+127],a       ; 8D86 DD CB 7F DF
        SET  3,[IX+127],A       ; 8D8A DD CB 7F DF
        set  3,[ix+-128],b      ; 8D8E DD CB 80 D8
        SET  3,[IX+-128],B      ; 8D92 DD CB 80 D8
        set  3,[ix+-1],b        ; 8D96 DD CB FF D8
        SET  3,[IX+-1],B        ; 8D9A DD CB FF D8
        set  3,[ix+0],b         ; 8D9E DD CB 00 D8
        SET  3,[IX+0],B         ; 8DA2 DD CB 00 D8
        set  3,[ix+127],b       ; 8DA6 DD CB 7F D8
        SET  3,[IX+127],B       ; 8DAA DD CB 7F D8
        set  3,[ix+-128],c      ; 8DAE DD CB 80 D9
        SET  3,[IX+-128],C      ; 8DB2 DD CB 80 D9
        set  3,[ix+-1],c        ; 8DB6 DD CB FF D9
        SET  3,[IX+-1],C        ; 8DBA DD CB FF D9
        set  3,[ix+0],c         ; 8DBE DD CB 00 D9
        SET  3,[IX+0],C         ; 8DC2 DD CB 00 D9
        set  3,[ix+127],c       ; 8DC6 DD CB 7F D9
        SET  3,[IX+127],C       ; 8DCA DD CB 7F D9
        set  3,[ix+-128],d      ; 8DCE DD CB 80 DA
        SET  3,[IX+-128],D      ; 8DD2 DD CB 80 DA
        set  3,[ix+-1],d        ; 8DD6 DD CB FF DA
        SET  3,[IX+-1],D        ; 8DDA DD CB FF DA
        set  3,[ix+0],d         ; 8DDE DD CB 00 DA
        SET  3,[IX+0],D         ; 8DE2 DD CB 00 DA
        set  3,[ix+127],d       ; 8DE6 DD CB 7F DA
        SET  3,[IX+127],D       ; 8DEA DD CB 7F DA
        set  3,[ix+-128],e      ; 8DEE DD CB 80 DB
        SET  3,[IX+-128],E      ; 8DF2 DD CB 80 DB
        set  3,[ix+-1],e        ; 8DF6 DD CB FF DB
        SET  3,[IX+-1],E        ; 8DFA DD CB FF DB
        set  3,[ix+0],e         ; 8DFE DD CB 00 DB
        SET  3,[IX+0],E         ; 8E02 DD CB 00 DB
        set  3,[ix+127],e       ; 8E06 DD CB 7F DB
        SET  3,[IX+127],E       ; 8E0A DD CB 7F DB
        set  3,[ix+-128],h      ; 8E0E DD CB 80 DC
        SET  3,[IX+-128],H      ; 8E12 DD CB 80 DC
        set  3,[ix+-1],h        ; 8E16 DD CB FF DC
        SET  3,[IX+-1],H        ; 8E1A DD CB FF DC
        set  3,[ix+0],h         ; 8E1E DD CB 00 DC
        SET  3,[IX+0],H         ; 8E22 DD CB 00 DC
        set  3,[ix+127],h       ; 8E26 DD CB 7F DC
        SET  3,[IX+127],H       ; 8E2A DD CB 7F DC
        set  3,[ix+-128],l      ; 8E2E DD CB 80 DD
        SET  3,[IX+-128],L      ; 8E32 DD CB 80 DD
        set  3,[ix+-1],l        ; 8E36 DD CB FF DD
        SET  3,[IX+-1],L        ; 8E3A DD CB FF DD
        set  3,[ix+0],l         ; 8E3E DD CB 00 DD
        SET  3,[IX+0],L         ; 8E42 DD CB 00 DD
        set  3,[ix+127],l       ; 8E46 DD CB 7F DD
        SET  3,[IX+127],L       ; 8E4A DD CB 7F DD
        set  3,[iy+-128]        ; 8E4E FD CB 80 DE
        SET  3,[IY+-128]        ; 8E52 FD CB 80 DE
        set  3,[iy+-1]          ; 8E56 FD CB FF DE
        SET  3,[IY+-1]          ; 8E5A FD CB FF DE
        set  3,[iy+0]           ; 8E5E FD CB 00 DE
        SET  3,[IY+0]           ; 8E62 FD CB 00 DE
        set  3,[iy+127]         ; 8E66 FD CB 7F DE
        SET  3,[IY+127]         ; 8E6A FD CB 7F DE
        set  3,[iy+-128],a      ; 8E6E FD CB 80 DF
        SET  3,[IY+-128],A      ; 8E72 FD CB 80 DF
        set  3,[iy+-1],a        ; 8E76 FD CB FF DF
        SET  3,[IY+-1],A        ; 8E7A FD CB FF DF
        set  3,[iy+0],a         ; 8E7E FD CB 00 DF
        SET  3,[IY+0],A         ; 8E82 FD CB 00 DF
        set  3,[iy+127],a       ; 8E86 FD CB 7F DF
        SET  3,[IY+127],A       ; 8E8A FD CB 7F DF
        set  3,[iy+-128],b      ; 8E8E FD CB 80 D8
        SET  3,[IY+-128],B      ; 8E92 FD CB 80 D8
        set  3,[iy+-1],b        ; 8E96 FD CB FF D8
        SET  3,[IY+-1],B        ; 8E9A FD CB FF D8
        set  3,[iy+0],b         ; 8E9E FD CB 00 D8
        SET  3,[IY+0],B         ; 8EA2 FD CB 00 D8
        set  3,[iy+127],b       ; 8EA6 FD CB 7F D8
        SET  3,[IY+127],B       ; 8EAA FD CB 7F D8
        set  3,[iy+-128],c      ; 8EAE FD CB 80 D9
        SET  3,[IY+-128],C      ; 8EB2 FD CB 80 D9
        set  3,[iy+-1],c        ; 8EB6 FD CB FF D9
        SET  3,[IY+-1],C        ; 8EBA FD CB FF D9
        set  3,[iy+0],c         ; 8EBE FD CB 00 D9
        SET  3,[IY+0],C         ; 8EC2 FD CB 00 D9
        set  3,[iy+127],c       ; 8EC6 FD CB 7F D9
        SET  3,[IY+127],C       ; 8ECA FD CB 7F D9
        set  3,[iy+-128],d      ; 8ECE FD CB 80 DA
        SET  3,[IY+-128],D      ; 8ED2 FD CB 80 DA
        set  3,[iy+-1],d        ; 8ED6 FD CB FF DA
        SET  3,[IY+-1],D        ; 8EDA FD CB FF DA
        set  3,[iy+0],d         ; 8EDE FD CB 00 DA
        SET  3,[IY+0],D         ; 8EE2 FD CB 00 DA
        set  3,[iy+127],d       ; 8EE6 FD CB 7F DA
        SET  3,[IY+127],D       ; 8EEA FD CB 7F DA
        set  3,[iy+-128],e      ; 8EEE FD CB 80 DB
        SET  3,[IY+-128],E      ; 8EF2 FD CB 80 DB
        set  3,[iy+-1],e        ; 8EF6 FD CB FF DB
        SET  3,[IY+-1],E        ; 8EFA FD CB FF DB
        set  3,[iy+0],e         ; 8EFE FD CB 00 DB
        SET  3,[IY+0],E         ; 8F02 FD CB 00 DB
        set  3,[iy+127],e       ; 8F06 FD CB 7F DB
        SET  3,[IY+127],E       ; 8F0A FD CB 7F DB
        set  3,[iy+-128],h      ; 8F0E FD CB 80 DC
        SET  3,[IY+-128],H      ; 8F12 FD CB 80 DC
        set  3,[iy+-1],h        ; 8F16 FD CB FF DC
        SET  3,[IY+-1],H        ; 8F1A FD CB FF DC
        set  3,[iy+0],h         ; 8F1E FD CB 00 DC
        SET  3,[IY+0],H         ; 8F22 FD CB 00 DC
        set  3,[iy+127],h       ; 8F26 FD CB 7F DC
        SET  3,[IY+127],H       ; 8F2A FD CB 7F DC
        set  3,[iy+-128],l      ; 8F2E FD CB 80 DD
        SET  3,[IY+-128],L      ; 8F32 FD CB 80 DD
        set  3,[iy+-1],l        ; 8F36 FD CB FF DD
        SET  3,[IY+-1],L        ; 8F3A FD CB FF DD
        set  3,[iy+0],l         ; 8F3E FD CB 00 DD
        SET  3,[IY+0],L         ; 8F42 FD CB 00 DD
        set  3,[iy+127],l       ; 8F46 FD CB 7F DD
        SET  3,[IY+127],L       ; 8F4A FD CB 7F DD
        set  3,a                ; 8F4E CB DF
        SET  3,A                ; 8F50 CB DF
        set  3,b                ; 8F52 CB D8
        SET  3,B                ; 8F54 CB D8
        set  3,c                ; 8F56 CB D9
        SET  3,C                ; 8F58 CB D9
        set  3,d                ; 8F5A CB DA
        SET  3,D                ; 8F5C CB DA
        set  3,e                ; 8F5E CB DB
        SET  3,E                ; 8F60 CB DB
        set  3,h                ; 8F62 CB DC
        SET  3,H                ; 8F64 CB DC
        set  3,l                ; 8F66 CB DD
        SET  3,L                ; 8F68 CB DD
        set  4,(hl)             ; 8F6A CB E6
        SET  4,(HL)             ; 8F6C CB E6
        set  4,(ix+-128)        ; 8F6E DD CB 80 E6
        SET  4,(IX+-128)        ; 8F72 DD CB 80 E6
        set  4,(ix+-1)          ; 8F76 DD CB FF E6
        SET  4,(IX+-1)          ; 8F7A DD CB FF E6
        set  4,(ix+0)           ; 8F7E DD CB 00 E6
        SET  4,(IX+0)           ; 8F82 DD CB 00 E6
        set  4,(ix+127)         ; 8F86 DD CB 7F E6
        SET  4,(IX+127)         ; 8F8A DD CB 7F E6
        set  4,(ix+-128),a      ; 8F8E DD CB 80 E7
        SET  4,(IX+-128),A      ; 8F92 DD CB 80 E7
        set  4,(ix+-1),a        ; 8F96 DD CB FF E7
        SET  4,(IX+-1),A        ; 8F9A DD CB FF E7
        set  4,(ix+0),a         ; 8F9E DD CB 00 E7
        SET  4,(IX+0),A         ; 8FA2 DD CB 00 E7
        set  4,(ix+127),a       ; 8FA6 DD CB 7F E7
        SET  4,(IX+127),A       ; 8FAA DD CB 7F E7
        set  4,(ix+-128),b      ; 8FAE DD CB 80 E0
        SET  4,(IX+-128),B      ; 8FB2 DD CB 80 E0
        set  4,(ix+-1),b        ; 8FB6 DD CB FF E0
        SET  4,(IX+-1),B        ; 8FBA DD CB FF E0
        set  4,(ix+0),b         ; 8FBE DD CB 00 E0
        SET  4,(IX+0),B         ; 8FC2 DD CB 00 E0
        set  4,(ix+127),b       ; 8FC6 DD CB 7F E0
        SET  4,(IX+127),B       ; 8FCA DD CB 7F E0
        set  4,(ix+-128),c      ; 8FCE DD CB 80 E1
        SET  4,(IX+-128),C      ; 8FD2 DD CB 80 E1
        set  4,(ix+-1),c        ; 8FD6 DD CB FF E1
        SET  4,(IX+-1),C        ; 8FDA DD CB FF E1
        set  4,(ix+0),c         ; 8FDE DD CB 00 E1
        SET  4,(IX+0),C         ; 8FE2 DD CB 00 E1
        set  4,(ix+127),c       ; 8FE6 DD CB 7F E1
        SET  4,(IX+127),C       ; 8FEA DD CB 7F E1
        set  4,(ix+-128),d      ; 8FEE DD CB 80 E2
        SET  4,(IX+-128),D      ; 8FF2 DD CB 80 E2
        set  4,(ix+-1),d        ; 8FF6 DD CB FF E2
        SET  4,(IX+-1),D        ; 8FFA DD CB FF E2
        set  4,(ix+0),d         ; 8FFE DD CB 00 E2
        SET  4,(IX+0),D         ; 9002 DD CB 00 E2
        set  4,(ix+127),d       ; 9006 DD CB 7F E2
        SET  4,(IX+127),D       ; 900A DD CB 7F E2
        set  4,(ix+-128),e      ; 900E DD CB 80 E3
        SET  4,(IX+-128),E      ; 9012 DD CB 80 E3
        set  4,(ix+-1),e        ; 9016 DD CB FF E3
        SET  4,(IX+-1),E        ; 901A DD CB FF E3
        set  4,(ix+0),e         ; 901E DD CB 00 E3
        SET  4,(IX+0),E         ; 9022 DD CB 00 E3
        set  4,(ix+127),e       ; 9026 DD CB 7F E3
        SET  4,(IX+127),E       ; 902A DD CB 7F E3
        set  4,(ix+-128),h      ; 902E DD CB 80 E4
        SET  4,(IX+-128),H      ; 9032 DD CB 80 E4
        set  4,(ix+-1),h        ; 9036 DD CB FF E4
        SET  4,(IX+-1),H        ; 903A DD CB FF E4
        set  4,(ix+0),h         ; 903E DD CB 00 E4
        SET  4,(IX+0),H         ; 9042 DD CB 00 E4
        set  4,(ix+127),h       ; 9046 DD CB 7F E4
        SET  4,(IX+127),H       ; 904A DD CB 7F E4
        set  4,(ix+-128),l      ; 904E DD CB 80 E5
        SET  4,(IX+-128),L      ; 9052 DD CB 80 E5
        set  4,(ix+-1),l        ; 9056 DD CB FF E5
        SET  4,(IX+-1),L        ; 905A DD CB FF E5
        set  4,(ix+0),l         ; 905E DD CB 00 E5
        SET  4,(IX+0),L         ; 9062 DD CB 00 E5
        set  4,(ix+127),l       ; 9066 DD CB 7F E5
        SET  4,(IX+127),L       ; 906A DD CB 7F E5
        set  4,(iy+-128)        ; 906E FD CB 80 E6
        SET  4,(IY+-128)        ; 9072 FD CB 80 E6
        set  4,(iy+-1)          ; 9076 FD CB FF E6
        SET  4,(IY+-1)          ; 907A FD CB FF E6
        set  4,(iy+0)           ; 907E FD CB 00 E6
        SET  4,(IY+0)           ; 9082 FD CB 00 E6
        set  4,(iy+127)         ; 9086 FD CB 7F E6
        SET  4,(IY+127)         ; 908A FD CB 7F E6
        set  4,(iy+-128),a      ; 908E FD CB 80 E7
        SET  4,(IY+-128),A      ; 9092 FD CB 80 E7
        set  4,(iy+-1),a        ; 9096 FD CB FF E7
        SET  4,(IY+-1),A        ; 909A FD CB FF E7
        set  4,(iy+0),a         ; 909E FD CB 00 E7
        SET  4,(IY+0),A         ; 90A2 FD CB 00 E7
        set  4,(iy+127),a       ; 90A6 FD CB 7F E7
        SET  4,(IY+127),A       ; 90AA FD CB 7F E7
        set  4,(iy+-128),b      ; 90AE FD CB 80 E0
        SET  4,(IY+-128),B      ; 90B2 FD CB 80 E0
        set  4,(iy+-1),b        ; 90B6 FD CB FF E0
        SET  4,(IY+-1),B        ; 90BA FD CB FF E0
        set  4,(iy+0),b         ; 90BE FD CB 00 E0
        SET  4,(IY+0),B         ; 90C2 FD CB 00 E0
        set  4,(iy+127),b       ; 90C6 FD CB 7F E0
        SET  4,(IY+127),B       ; 90CA FD CB 7F E0
        set  4,(iy+-128),c      ; 90CE FD CB 80 E1
        SET  4,(IY+-128),C      ; 90D2 FD CB 80 E1
        set  4,(iy+-1),c        ; 90D6 FD CB FF E1
        SET  4,(IY+-1),C        ; 90DA FD CB FF E1
        set  4,(iy+0),c         ; 90DE FD CB 00 E1
        SET  4,(IY+0),C         ; 90E2 FD CB 00 E1
        set  4,(iy+127),c       ; 90E6 FD CB 7F E1
        SET  4,(IY+127),C       ; 90EA FD CB 7F E1
        set  4,(iy+-128),d      ; 90EE FD CB 80 E2
        SET  4,(IY+-128),D      ; 90F2 FD CB 80 E2
        set  4,(iy+-1),d        ; 90F6 FD CB FF E2
        SET  4,(IY+-1),D        ; 90FA FD CB FF E2
        set  4,(iy+0),d         ; 90FE FD CB 00 E2
        SET  4,(IY+0),D         ; 9102 FD CB 00 E2
        set  4,(iy+127),d       ; 9106 FD CB 7F E2
        SET  4,(IY+127),D       ; 910A FD CB 7F E2
        set  4,(iy+-128),e      ; 910E FD CB 80 E3
        SET  4,(IY+-128),E      ; 9112 FD CB 80 E3
        set  4,(iy+-1),e        ; 9116 FD CB FF E3
        SET  4,(IY+-1),E        ; 911A FD CB FF E3
        set  4,(iy+0),e         ; 911E FD CB 00 E3
        SET  4,(IY+0),E         ; 9122 FD CB 00 E3
        set  4,(iy+127),e       ; 9126 FD CB 7F E3
        SET  4,(IY+127),E       ; 912A FD CB 7F E3
        set  4,(iy+-128),h      ; 912E FD CB 80 E4
        SET  4,(IY+-128),H      ; 9132 FD CB 80 E4
        set  4,(iy+-1),h        ; 9136 FD CB FF E4
        SET  4,(IY+-1),H        ; 913A FD CB FF E4
        set  4,(iy+0),h         ; 913E FD CB 00 E4
        SET  4,(IY+0),H         ; 9142 FD CB 00 E4
        set  4,(iy+127),h       ; 9146 FD CB 7F E4
        SET  4,(IY+127),H       ; 914A FD CB 7F E4
        set  4,(iy+-128),l      ; 914E FD CB 80 E5
        SET  4,(IY+-128),L      ; 9152 FD CB 80 E5
        set  4,(iy+-1),l        ; 9156 FD CB FF E5
        SET  4,(IY+-1),L        ; 915A FD CB FF E5
        set  4,(iy+0),l         ; 915E FD CB 00 E5
        SET  4,(IY+0),L         ; 9162 FD CB 00 E5
        set  4,(iy+127),l       ; 9166 FD CB 7F E5
        SET  4,(IY+127),L       ; 916A FD CB 7F E5
        set  4,[hl]             ; 916E CB E6
        SET  4,[HL]             ; 9170 CB E6
        set  4,[ix+-128]        ; 9172 DD CB 80 E6
        SET  4,[IX+-128]        ; 9176 DD CB 80 E6
        set  4,[ix+-1]          ; 917A DD CB FF E6
        SET  4,[IX+-1]          ; 917E DD CB FF E6
        set  4,[ix+0]           ; 9182 DD CB 00 E6
        SET  4,[IX+0]           ; 9186 DD CB 00 E6
        set  4,[ix+127]         ; 918A DD CB 7F E6
        SET  4,[IX+127]         ; 918E DD CB 7F E6
        set  4,[ix+-128],a      ; 9192 DD CB 80 E7
        SET  4,[IX+-128],A      ; 9196 DD CB 80 E7
        set  4,[ix+-1],a        ; 919A DD CB FF E7
        SET  4,[IX+-1],A        ; 919E DD CB FF E7
        set  4,[ix+0],a         ; 91A2 DD CB 00 E7
        SET  4,[IX+0],A         ; 91A6 DD CB 00 E7
        set  4,[ix+127],a       ; 91AA DD CB 7F E7
        SET  4,[IX+127],A       ; 91AE DD CB 7F E7
        set  4,[ix+-128],b      ; 91B2 DD CB 80 E0
        SET  4,[IX+-128],B      ; 91B6 DD CB 80 E0
        set  4,[ix+-1],b        ; 91BA DD CB FF E0
        SET  4,[IX+-1],B        ; 91BE DD CB FF E0
        set  4,[ix+0],b         ; 91C2 DD CB 00 E0
        SET  4,[IX+0],B         ; 91C6 DD CB 00 E0
        set  4,[ix+127],b       ; 91CA DD CB 7F E0
        SET  4,[IX+127],B       ; 91CE DD CB 7F E0
        set  4,[ix+-128],c      ; 91D2 DD CB 80 E1
        SET  4,[IX+-128],C      ; 91D6 DD CB 80 E1
        set  4,[ix+-1],c        ; 91DA DD CB FF E1
        SET  4,[IX+-1],C        ; 91DE DD CB FF E1
        set  4,[ix+0],c         ; 91E2 DD CB 00 E1
        SET  4,[IX+0],C         ; 91E6 DD CB 00 E1
        set  4,[ix+127],c       ; 91EA DD CB 7F E1
        SET  4,[IX+127],C       ; 91EE DD CB 7F E1
        set  4,[ix+-128],d      ; 91F2 DD CB 80 E2
        SET  4,[IX+-128],D      ; 91F6 DD CB 80 E2
        set  4,[ix+-1],d        ; 91FA DD CB FF E2
        SET  4,[IX+-1],D        ; 91FE DD CB FF E2
        set  4,[ix+0],d         ; 9202 DD CB 00 E2
        SET  4,[IX+0],D         ; 9206 DD CB 00 E2
        set  4,[ix+127],d       ; 920A DD CB 7F E2
        SET  4,[IX+127],D       ; 920E DD CB 7F E2
        set  4,[ix+-128],e      ; 9212 DD CB 80 E3
        SET  4,[IX+-128],E      ; 9216 DD CB 80 E3
        set  4,[ix+-1],e        ; 921A DD CB FF E3
        SET  4,[IX+-1],E        ; 921E DD CB FF E3
        set  4,[ix+0],e         ; 9222 DD CB 00 E3
        SET  4,[IX+0],E         ; 9226 DD CB 00 E3
        set  4,[ix+127],e       ; 922A DD CB 7F E3
        SET  4,[IX+127],E       ; 922E DD CB 7F E3
        set  4,[ix+-128],h      ; 9232 DD CB 80 E4
        SET  4,[IX+-128],H      ; 9236 DD CB 80 E4
        set  4,[ix+-1],h        ; 923A DD CB FF E4
        SET  4,[IX+-1],H        ; 923E DD CB FF E4
        set  4,[ix+0],h         ; 9242 DD CB 00 E4
        SET  4,[IX+0],H         ; 9246 DD CB 00 E4
        set  4,[ix+127],h       ; 924A DD CB 7F E4
        SET  4,[IX+127],H       ; 924E DD CB 7F E4
        set  4,[ix+-128],l      ; 9252 DD CB 80 E5
        SET  4,[IX+-128],L      ; 9256 DD CB 80 E5
        set  4,[ix+-1],l        ; 925A DD CB FF E5
        SET  4,[IX+-1],L        ; 925E DD CB FF E5
        set  4,[ix+0],l         ; 9262 DD CB 00 E5
        SET  4,[IX+0],L         ; 9266 DD CB 00 E5
        set  4,[ix+127],l       ; 926A DD CB 7F E5
        SET  4,[IX+127],L       ; 926E DD CB 7F E5
        set  4,[iy+-128]        ; 9272 FD CB 80 E6
        SET  4,[IY+-128]        ; 9276 FD CB 80 E6
        set  4,[iy+-1]          ; 927A FD CB FF E6
        SET  4,[IY+-1]          ; 927E FD CB FF E6
        set  4,[iy+0]           ; 9282 FD CB 00 E6
        SET  4,[IY+0]           ; 9286 FD CB 00 E6
        set  4,[iy+127]         ; 928A FD CB 7F E6
        SET  4,[IY+127]         ; 928E FD CB 7F E6
        set  4,[iy+-128],a      ; 9292 FD CB 80 E7
        SET  4,[IY+-128],A      ; 9296 FD CB 80 E7
        set  4,[iy+-1],a        ; 929A FD CB FF E7
        SET  4,[IY+-1],A        ; 929E FD CB FF E7
        set  4,[iy+0],a         ; 92A2 FD CB 00 E7
        SET  4,[IY+0],A         ; 92A6 FD CB 00 E7
        set  4,[iy+127],a       ; 92AA FD CB 7F E7
        SET  4,[IY+127],A       ; 92AE FD CB 7F E7
        set  4,[iy+-128],b      ; 92B2 FD CB 80 E0
        SET  4,[IY+-128],B      ; 92B6 FD CB 80 E0
        set  4,[iy+-1],b        ; 92BA FD CB FF E0
        SET  4,[IY+-1],B        ; 92BE FD CB FF E0
        set  4,[iy+0],b         ; 92C2 FD CB 00 E0
        SET  4,[IY+0],B         ; 92C6 FD CB 00 E0
        set  4,[iy+127],b       ; 92CA FD CB 7F E0
        SET  4,[IY+127],B       ; 92CE FD CB 7F E0
        set  4,[iy+-128],c      ; 92D2 FD CB 80 E1
        SET  4,[IY+-128],C      ; 92D6 FD CB 80 E1
        set  4,[iy+-1],c        ; 92DA FD CB FF E1
        SET  4,[IY+-1],C        ; 92DE FD CB FF E1
        set  4,[iy+0],c         ; 92E2 FD CB 00 E1
        SET  4,[IY+0],C         ; 92E6 FD CB 00 E1
        set  4,[iy+127],c       ; 92EA FD CB 7F E1
        SET  4,[IY+127],C       ; 92EE FD CB 7F E1
        set  4,[iy+-128],d      ; 92F2 FD CB 80 E2
        SET  4,[IY+-128],D      ; 92F6 FD CB 80 E2
        set  4,[iy+-1],d        ; 92FA FD CB FF E2
        SET  4,[IY+-1],D        ; 92FE FD CB FF E2
        set  4,[iy+0],d         ; 9302 FD CB 00 E2
        SET  4,[IY+0],D         ; 9306 FD CB 00 E2
        set  4,[iy+127],d       ; 930A FD CB 7F E2
        SET  4,[IY+127],D       ; 930E FD CB 7F E2
        set  4,[iy+-128],e      ; 9312 FD CB 80 E3
        SET  4,[IY+-128],E      ; 9316 FD CB 80 E3
        set  4,[iy+-1],e        ; 931A FD CB FF E3
        SET  4,[IY+-1],E        ; 931E FD CB FF E3
        set  4,[iy+0],e         ; 9322 FD CB 00 E3
        SET  4,[IY+0],E         ; 9326 FD CB 00 E3
        set  4,[iy+127],e       ; 932A FD CB 7F E3
        SET  4,[IY+127],E       ; 932E FD CB 7F E3
        set  4,[iy+-128],h      ; 9332 FD CB 80 E4
        SET  4,[IY+-128],H      ; 9336 FD CB 80 E4
        set  4,[iy+-1],h        ; 933A FD CB FF E4
        SET  4,[IY+-1],H        ; 933E FD CB FF E4
        set  4,[iy+0],h         ; 9342 FD CB 00 E4
        SET  4,[IY+0],H         ; 9346 FD CB 00 E4
        set  4,[iy+127],h       ; 934A FD CB 7F E4
        SET  4,[IY+127],H       ; 934E FD CB 7F E4
        set  4,[iy+-128],l      ; 9352 FD CB 80 E5
        SET  4,[IY+-128],L      ; 9356 FD CB 80 E5
        set  4,[iy+-1],l        ; 935A FD CB FF E5
        SET  4,[IY+-1],L        ; 935E FD CB FF E5
        set  4,[iy+0],l         ; 9362 FD CB 00 E5
        SET  4,[IY+0],L         ; 9366 FD CB 00 E5
        set  4,[iy+127],l       ; 936A FD CB 7F E5
        SET  4,[IY+127],L       ; 936E FD CB 7F E5
        set  4,a                ; 9372 CB E7
        SET  4,A                ; 9374 CB E7
        set  4,b                ; 9376 CB E0
        SET  4,B                ; 9378 CB E0
        set  4,c                ; 937A CB E1
        SET  4,C                ; 937C CB E1
        set  4,d                ; 937E CB E2
        SET  4,D                ; 9380 CB E2
        set  4,e                ; 9382 CB E3
        SET  4,E                ; 9384 CB E3
        set  4,h                ; 9386 CB E4
        SET  4,H                ; 9388 CB E4
        set  4,l                ; 938A CB E5
        SET  4,L                ; 938C CB E5
        set  5,(hl)             ; 938E CB EE
        SET  5,(HL)             ; 9390 CB EE
        set  5,(ix+-128)        ; 9392 DD CB 80 EE
        SET  5,(IX+-128)        ; 9396 DD CB 80 EE
        set  5,(ix+-1)          ; 939A DD CB FF EE
        SET  5,(IX+-1)          ; 939E DD CB FF EE
        set  5,(ix+0)           ; 93A2 DD CB 00 EE
        SET  5,(IX+0)           ; 93A6 DD CB 00 EE
        set  5,(ix+127)         ; 93AA DD CB 7F EE
        SET  5,(IX+127)         ; 93AE DD CB 7F EE
        set  5,(ix+-128),a      ; 93B2 DD CB 80 EF
        SET  5,(IX+-128),A      ; 93B6 DD CB 80 EF
        set  5,(ix+-1),a        ; 93BA DD CB FF EF
        SET  5,(IX+-1),A        ; 93BE DD CB FF EF
        set  5,(ix+0),a         ; 93C2 DD CB 00 EF
        SET  5,(IX+0),A         ; 93C6 DD CB 00 EF
        set  5,(ix+127),a       ; 93CA DD CB 7F EF
        SET  5,(IX+127),A       ; 93CE DD CB 7F EF
        set  5,(ix+-128),b      ; 93D2 DD CB 80 E8
        SET  5,(IX+-128),B      ; 93D6 DD CB 80 E8
        set  5,(ix+-1),b        ; 93DA DD CB FF E8
        SET  5,(IX+-1),B        ; 93DE DD CB FF E8
        set  5,(ix+0),b         ; 93E2 DD CB 00 E8
        SET  5,(IX+0),B         ; 93E6 DD CB 00 E8
        set  5,(ix+127),b       ; 93EA DD CB 7F E8
        SET  5,(IX+127),B       ; 93EE DD CB 7F E8
        set  5,(ix+-128),c      ; 93F2 DD CB 80 E9
        SET  5,(IX+-128),C      ; 93F6 DD CB 80 E9
        set  5,(ix+-1),c        ; 93FA DD CB FF E9
        SET  5,(IX+-1),C        ; 93FE DD CB FF E9
        set  5,(ix+0),c         ; 9402 DD CB 00 E9
        SET  5,(IX+0),C         ; 9406 DD CB 00 E9
        set  5,(ix+127),c       ; 940A DD CB 7F E9
        SET  5,(IX+127),C       ; 940E DD CB 7F E9
        set  5,(ix+-128),d      ; 9412 DD CB 80 EA
        SET  5,(IX+-128),D      ; 9416 DD CB 80 EA
        set  5,(ix+-1),d        ; 941A DD CB FF EA
        SET  5,(IX+-1),D        ; 941E DD CB FF EA
        set  5,(ix+0),d         ; 9422 DD CB 00 EA
        SET  5,(IX+0),D         ; 9426 DD CB 00 EA
        set  5,(ix+127),d       ; 942A DD CB 7F EA
        SET  5,(IX+127),D       ; 942E DD CB 7F EA
        set  5,(ix+-128),e      ; 9432 DD CB 80 EB
        SET  5,(IX+-128),E      ; 9436 DD CB 80 EB
        set  5,(ix+-1),e        ; 943A DD CB FF EB
        SET  5,(IX+-1),E        ; 943E DD CB FF EB
        set  5,(ix+0),e         ; 9442 DD CB 00 EB
        SET  5,(IX+0),E         ; 9446 DD CB 00 EB
        set  5,(ix+127),e       ; 944A DD CB 7F EB
        SET  5,(IX+127),E       ; 944E DD CB 7F EB
        set  5,(ix+-128),h      ; 9452 DD CB 80 EC
        SET  5,(IX+-128),H      ; 9456 DD CB 80 EC
        set  5,(ix+-1),h        ; 945A DD CB FF EC
        SET  5,(IX+-1),H        ; 945E DD CB FF EC
        set  5,(ix+0),h         ; 9462 DD CB 00 EC
        SET  5,(IX+0),H         ; 9466 DD CB 00 EC
        set  5,(ix+127),h       ; 946A DD CB 7F EC
        SET  5,(IX+127),H       ; 946E DD CB 7F EC
        set  5,(ix+-128),l      ; 9472 DD CB 80 ED
        SET  5,(IX+-128),L      ; 9476 DD CB 80 ED
        set  5,(ix+-1),l        ; 947A DD CB FF ED
        SET  5,(IX+-1),L        ; 947E DD CB FF ED
        set  5,(ix+0),l         ; 9482 DD CB 00 ED
        SET  5,(IX+0),L         ; 9486 DD CB 00 ED
        set  5,(ix+127),l       ; 948A DD CB 7F ED
        SET  5,(IX+127),L       ; 948E DD CB 7F ED
        set  5,(iy+-128)        ; 9492 FD CB 80 EE
        SET  5,(IY+-128)        ; 9496 FD CB 80 EE
        set  5,(iy+-1)          ; 949A FD CB FF EE
        SET  5,(IY+-1)          ; 949E FD CB FF EE
        set  5,(iy+0)           ; 94A2 FD CB 00 EE
        SET  5,(IY+0)           ; 94A6 FD CB 00 EE
        set  5,(iy+127)         ; 94AA FD CB 7F EE
        SET  5,(IY+127)         ; 94AE FD CB 7F EE
        set  5,(iy+-128),a      ; 94B2 FD CB 80 EF
        SET  5,(IY+-128),A      ; 94B6 FD CB 80 EF
        set  5,(iy+-1),a        ; 94BA FD CB FF EF
        SET  5,(IY+-1),A        ; 94BE FD CB FF EF
        set  5,(iy+0),a         ; 94C2 FD CB 00 EF
        SET  5,(IY+0),A         ; 94C6 FD CB 00 EF
        set  5,(iy+127),a       ; 94CA FD CB 7F EF
        SET  5,(IY+127),A       ; 94CE FD CB 7F EF
        set  5,(iy+-128),b      ; 94D2 FD CB 80 E8
        SET  5,(IY+-128),B      ; 94D6 FD CB 80 E8
        set  5,(iy+-1),b        ; 94DA FD CB FF E8
        SET  5,(IY+-1),B        ; 94DE FD CB FF E8
        set  5,(iy+0),b         ; 94E2 FD CB 00 E8
        SET  5,(IY+0),B         ; 94E6 FD CB 00 E8
        set  5,(iy+127),b       ; 94EA FD CB 7F E8
        SET  5,(IY+127),B       ; 94EE FD CB 7F E8
        set  5,(iy+-128),c      ; 94F2 FD CB 80 E9
        SET  5,(IY+-128),C      ; 94F6 FD CB 80 E9
        set  5,(iy+-1),c        ; 94FA FD CB FF E9
        SET  5,(IY+-1),C        ; 94FE FD CB FF E9
        set  5,(iy+0),c         ; 9502 FD CB 00 E9
        SET  5,(IY+0),C         ; 9506 FD CB 00 E9
        set  5,(iy+127),c       ; 950A FD CB 7F E9
        SET  5,(IY+127),C       ; 950E FD CB 7F E9
        set  5,(iy+-128),d      ; 9512 FD CB 80 EA
        SET  5,(IY+-128),D      ; 9516 FD CB 80 EA
        set  5,(iy+-1),d        ; 951A FD CB FF EA
        SET  5,(IY+-1),D        ; 951E FD CB FF EA
        set  5,(iy+0),d         ; 9522 FD CB 00 EA
        SET  5,(IY+0),D         ; 9526 FD CB 00 EA
        set  5,(iy+127),d       ; 952A FD CB 7F EA
        SET  5,(IY+127),D       ; 952E FD CB 7F EA
        set  5,(iy+-128),e      ; 9532 FD CB 80 EB
        SET  5,(IY+-128),E      ; 9536 FD CB 80 EB
        set  5,(iy+-1),e        ; 953A FD CB FF EB
        SET  5,(IY+-1),E        ; 953E FD CB FF EB
        set  5,(iy+0),e         ; 9542 FD CB 00 EB
        SET  5,(IY+0),E         ; 9546 FD CB 00 EB
        set  5,(iy+127),e       ; 954A FD CB 7F EB
        SET  5,(IY+127),E       ; 954E FD CB 7F EB
        set  5,(iy+-128),h      ; 9552 FD CB 80 EC
        SET  5,(IY+-128),H      ; 9556 FD CB 80 EC
        set  5,(iy+-1),h        ; 955A FD CB FF EC
        SET  5,(IY+-1),H        ; 955E FD CB FF EC
        set  5,(iy+0),h         ; 9562 FD CB 00 EC
        SET  5,(IY+0),H         ; 9566 FD CB 00 EC
        set  5,(iy+127),h       ; 956A FD CB 7F EC
        SET  5,(IY+127),H       ; 956E FD CB 7F EC
        set  5,(iy+-128),l      ; 9572 FD CB 80 ED
        SET  5,(IY+-128),L      ; 9576 FD CB 80 ED
        set  5,(iy+-1),l        ; 957A FD CB FF ED
        SET  5,(IY+-1),L        ; 957E FD CB FF ED
        set  5,(iy+0),l         ; 9582 FD CB 00 ED
        SET  5,(IY+0),L         ; 9586 FD CB 00 ED
        set  5,(iy+127),l       ; 958A FD CB 7F ED
        SET  5,(IY+127),L       ; 958E FD CB 7F ED
        set  5,[hl]             ; 9592 CB EE
        SET  5,[HL]             ; 9594 CB EE
        set  5,[ix+-128]        ; 9596 DD CB 80 EE
        SET  5,[IX+-128]        ; 959A DD CB 80 EE
        set  5,[ix+-1]          ; 959E DD CB FF EE
        SET  5,[IX+-1]          ; 95A2 DD CB FF EE
        set  5,[ix+0]           ; 95A6 DD CB 00 EE
        SET  5,[IX+0]           ; 95AA DD CB 00 EE
        set  5,[ix+127]         ; 95AE DD CB 7F EE
        SET  5,[IX+127]         ; 95B2 DD CB 7F EE
        set  5,[ix+-128],a      ; 95B6 DD CB 80 EF
        SET  5,[IX+-128],A      ; 95BA DD CB 80 EF
        set  5,[ix+-1],a        ; 95BE DD CB FF EF
        SET  5,[IX+-1],A        ; 95C2 DD CB FF EF
        set  5,[ix+0],a         ; 95C6 DD CB 00 EF
        SET  5,[IX+0],A         ; 95CA DD CB 00 EF
        set  5,[ix+127],a       ; 95CE DD CB 7F EF
        SET  5,[IX+127],A       ; 95D2 DD CB 7F EF
        set  5,[ix+-128],b      ; 95D6 DD CB 80 E8
        SET  5,[IX+-128],B      ; 95DA DD CB 80 E8
        set  5,[ix+-1],b        ; 95DE DD CB FF E8
        SET  5,[IX+-1],B        ; 95E2 DD CB FF E8
        set  5,[ix+0],b         ; 95E6 DD CB 00 E8
        SET  5,[IX+0],B         ; 95EA DD CB 00 E8
        set  5,[ix+127],b       ; 95EE DD CB 7F E8
        SET  5,[IX+127],B       ; 95F2 DD CB 7F E8
        set  5,[ix+-128],c      ; 95F6 DD CB 80 E9
        SET  5,[IX+-128],C      ; 95FA DD CB 80 E9
        set  5,[ix+-1],c        ; 95FE DD CB FF E9
        SET  5,[IX+-1],C        ; 9602 DD CB FF E9
        set  5,[ix+0],c         ; 9606 DD CB 00 E9
        SET  5,[IX+0],C         ; 960A DD CB 00 E9
        set  5,[ix+127],c       ; 960E DD CB 7F E9
        SET  5,[IX+127],C       ; 9612 DD CB 7F E9
        set  5,[ix+-128],d      ; 9616 DD CB 80 EA
        SET  5,[IX+-128],D      ; 961A DD CB 80 EA
        set  5,[ix+-1],d        ; 961E DD CB FF EA
        SET  5,[IX+-1],D        ; 9622 DD CB FF EA
        set  5,[ix+0],d         ; 9626 DD CB 00 EA
        SET  5,[IX+0],D         ; 962A DD CB 00 EA
        set  5,[ix+127],d       ; 962E DD CB 7F EA
        SET  5,[IX+127],D       ; 9632 DD CB 7F EA
        set  5,[ix+-128],e      ; 9636 DD CB 80 EB
        SET  5,[IX+-128],E      ; 963A DD CB 80 EB
        set  5,[ix+-1],e        ; 963E DD CB FF EB
        SET  5,[IX+-1],E        ; 9642 DD CB FF EB
        set  5,[ix+0],e         ; 9646 DD CB 00 EB
        SET  5,[IX+0],E         ; 964A DD CB 00 EB
        set  5,[ix+127],e       ; 964E DD CB 7F EB
        SET  5,[IX+127],E       ; 9652 DD CB 7F EB
        set  5,[ix+-128],h      ; 9656 DD CB 80 EC
        SET  5,[IX+-128],H      ; 965A DD CB 80 EC
        set  5,[ix+-1],h        ; 965E DD CB FF EC
        SET  5,[IX+-1],H        ; 9662 DD CB FF EC
        set  5,[ix+0],h         ; 9666 DD CB 00 EC
        SET  5,[IX+0],H         ; 966A DD CB 00 EC
        set  5,[ix+127],h       ; 966E DD CB 7F EC
        SET  5,[IX+127],H       ; 9672 DD CB 7F EC
        set  5,[ix+-128],l      ; 9676 DD CB 80 ED
        SET  5,[IX+-128],L      ; 967A DD CB 80 ED
        set  5,[ix+-1],l        ; 967E DD CB FF ED
        SET  5,[IX+-1],L        ; 9682 DD CB FF ED
        set  5,[ix+0],l         ; 9686 DD CB 00 ED
        SET  5,[IX+0],L         ; 968A DD CB 00 ED
        set  5,[ix+127],l       ; 968E DD CB 7F ED
        SET  5,[IX+127],L       ; 9692 DD CB 7F ED
        set  5,[iy+-128]        ; 9696 FD CB 80 EE
        SET  5,[IY+-128]        ; 969A FD CB 80 EE
        set  5,[iy+-1]          ; 969E FD CB FF EE
        SET  5,[IY+-1]          ; 96A2 FD CB FF EE
        set  5,[iy+0]           ; 96A6 FD CB 00 EE
        SET  5,[IY+0]           ; 96AA FD CB 00 EE
        set  5,[iy+127]         ; 96AE FD CB 7F EE
        SET  5,[IY+127]         ; 96B2 FD CB 7F EE
        set  5,[iy+-128],a      ; 96B6 FD CB 80 EF
        SET  5,[IY+-128],A      ; 96BA FD CB 80 EF
        set  5,[iy+-1],a        ; 96BE FD CB FF EF
        SET  5,[IY+-1],A        ; 96C2 FD CB FF EF
        set  5,[iy+0],a         ; 96C6 FD CB 00 EF
        SET  5,[IY+0],A         ; 96CA FD CB 00 EF
        set  5,[iy+127],a       ; 96CE FD CB 7F EF
        SET  5,[IY+127],A       ; 96D2 FD CB 7F EF
        set  5,[iy+-128],b      ; 96D6 FD CB 80 E8
        SET  5,[IY+-128],B      ; 96DA FD CB 80 E8
        set  5,[iy+-1],b        ; 96DE FD CB FF E8
        SET  5,[IY+-1],B        ; 96E2 FD CB FF E8
        set  5,[iy+0],b         ; 96E6 FD CB 00 E8
        SET  5,[IY+0],B         ; 96EA FD CB 00 E8
        set  5,[iy+127],b       ; 96EE FD CB 7F E8
        SET  5,[IY+127],B       ; 96F2 FD CB 7F E8
        set  5,[iy+-128],c      ; 96F6 FD CB 80 E9
        SET  5,[IY+-128],C      ; 96FA FD CB 80 E9
        set  5,[iy+-1],c        ; 96FE FD CB FF E9
        SET  5,[IY+-1],C        ; 9702 FD CB FF E9
        set  5,[iy+0],c         ; 9706 FD CB 00 E9
        SET  5,[IY+0],C         ; 970A FD CB 00 E9
        set  5,[iy+127],c       ; 970E FD CB 7F E9
        SET  5,[IY+127],C       ; 9712 FD CB 7F E9
        set  5,[iy+-128],d      ; 9716 FD CB 80 EA
        SET  5,[IY+-128],D      ; 971A FD CB 80 EA
        set  5,[iy+-1],d        ; 971E FD CB FF EA
        SET  5,[IY+-1],D        ; 9722 FD CB FF EA
        set  5,[iy+0],d         ; 9726 FD CB 00 EA
        SET  5,[IY+0],D         ; 972A FD CB 00 EA
        set  5,[iy+127],d       ; 972E FD CB 7F EA
        SET  5,[IY+127],D       ; 9732 FD CB 7F EA
        set  5,[iy+-128],e      ; 9736 FD CB 80 EB
        SET  5,[IY+-128],E      ; 973A FD CB 80 EB
        set  5,[iy+-1],e        ; 973E FD CB FF EB
        SET  5,[IY+-1],E        ; 9742 FD CB FF EB
        set  5,[iy+0],e         ; 9746 FD CB 00 EB
        SET  5,[IY+0],E         ; 974A FD CB 00 EB
        set  5,[iy+127],e       ; 974E FD CB 7F EB
        SET  5,[IY+127],E       ; 9752 FD CB 7F EB
        set  5,[iy+-128],h      ; 9756 FD CB 80 EC
        SET  5,[IY+-128],H      ; 975A FD CB 80 EC
        set  5,[iy+-1],h        ; 975E FD CB FF EC
        SET  5,[IY+-1],H        ; 9762 FD CB FF EC
        set  5,[iy+0],h         ; 9766 FD CB 00 EC
        SET  5,[IY+0],H         ; 976A FD CB 00 EC
        set  5,[iy+127],h       ; 976E FD CB 7F EC
        SET  5,[IY+127],H       ; 9772 FD CB 7F EC
        set  5,[iy+-128],l      ; 9776 FD CB 80 ED
        SET  5,[IY+-128],L      ; 977A FD CB 80 ED
        set  5,[iy+-1],l        ; 977E FD CB FF ED
        SET  5,[IY+-1],L        ; 9782 FD CB FF ED
        set  5,[iy+0],l         ; 9786 FD CB 00 ED
        SET  5,[IY+0],L         ; 978A FD CB 00 ED
        set  5,[iy+127],l       ; 978E FD CB 7F ED
        SET  5,[IY+127],L       ; 9792 FD CB 7F ED
        set  5,a                ; 9796 CB EF
        SET  5,A                ; 9798 CB EF
        set  5,b                ; 979A CB E8
        SET  5,B                ; 979C CB E8
        set  5,c                ; 979E CB E9
        SET  5,C                ; 97A0 CB E9
        set  5,d                ; 97A2 CB EA
        SET  5,D                ; 97A4 CB EA
        set  5,e                ; 97A6 CB EB
        SET  5,E                ; 97A8 CB EB
        set  5,h                ; 97AA CB EC
        SET  5,H                ; 97AC CB EC
        set  5,l                ; 97AE CB ED
        SET  5,L                ; 97B0 CB ED
        set  6,(hl)             ; 97B2 CB F6
        SET  6,(HL)             ; 97B4 CB F6
        set  6,(ix+-128)        ; 97B6 DD CB 80 F6
        SET  6,(IX+-128)        ; 97BA DD CB 80 F6
        set  6,(ix+-1)          ; 97BE DD CB FF F6
        SET  6,(IX+-1)          ; 97C2 DD CB FF F6
        set  6,(ix+0)           ; 97C6 DD CB 00 F6
        SET  6,(IX+0)           ; 97CA DD CB 00 F6
        set  6,(ix+127)         ; 97CE DD CB 7F F6
        SET  6,(IX+127)         ; 97D2 DD CB 7F F6
        set  6,(ix+-128),a      ; 97D6 DD CB 80 F7
        SET  6,(IX+-128),A      ; 97DA DD CB 80 F7
        set  6,(ix+-1),a        ; 97DE DD CB FF F7
        SET  6,(IX+-1),A        ; 97E2 DD CB FF F7
        set  6,(ix+0),a         ; 97E6 DD CB 00 F7
        SET  6,(IX+0),A         ; 97EA DD CB 00 F7
        set  6,(ix+127),a       ; 97EE DD CB 7F F7
        SET  6,(IX+127),A       ; 97F2 DD CB 7F F7
        set  6,(ix+-128),b      ; 97F6 DD CB 80 F0
        SET  6,(IX+-128),B      ; 97FA DD CB 80 F0
        set  6,(ix+-1),b        ; 97FE DD CB FF F0
        SET  6,(IX+-1),B        ; 9802 DD CB FF F0
        set  6,(ix+0),b         ; 9806 DD CB 00 F0
        SET  6,(IX+0),B         ; 980A DD CB 00 F0
        set  6,(ix+127),b       ; 980E DD CB 7F F0
        SET  6,(IX+127),B       ; 9812 DD CB 7F F0
        set  6,(ix+-128),c      ; 9816 DD CB 80 F1
        SET  6,(IX+-128),C      ; 981A DD CB 80 F1
        set  6,(ix+-1),c        ; 981E DD CB FF F1
        SET  6,(IX+-1),C        ; 9822 DD CB FF F1
        set  6,(ix+0),c         ; 9826 DD CB 00 F1
        SET  6,(IX+0),C         ; 982A DD CB 00 F1
        set  6,(ix+127),c       ; 982E DD CB 7F F1
        SET  6,(IX+127),C       ; 9832 DD CB 7F F1
        set  6,(ix+-128),d      ; 9836 DD CB 80 F2
        SET  6,(IX+-128),D      ; 983A DD CB 80 F2
        set  6,(ix+-1),d        ; 983E DD CB FF F2
        SET  6,(IX+-1),D        ; 9842 DD CB FF F2
        set  6,(ix+0),d         ; 9846 DD CB 00 F2
        SET  6,(IX+0),D         ; 984A DD CB 00 F2
        set  6,(ix+127),d       ; 984E DD CB 7F F2
        SET  6,(IX+127),D       ; 9852 DD CB 7F F2
        set  6,(ix+-128),e      ; 9856 DD CB 80 F3
        SET  6,(IX+-128),E      ; 985A DD CB 80 F3
        set  6,(ix+-1),e        ; 985E DD CB FF F3
        SET  6,(IX+-1),E        ; 9862 DD CB FF F3
        set  6,(ix+0),e         ; 9866 DD CB 00 F3
        SET  6,(IX+0),E         ; 986A DD CB 00 F3
        set  6,(ix+127),e       ; 986E DD CB 7F F3
        SET  6,(IX+127),E       ; 9872 DD CB 7F F3
        set  6,(ix+-128),h      ; 9876 DD CB 80 F4
        SET  6,(IX+-128),H      ; 987A DD CB 80 F4
        set  6,(ix+-1),h        ; 987E DD CB FF F4
        SET  6,(IX+-1),H        ; 9882 DD CB FF F4
        set  6,(ix+0),h         ; 9886 DD CB 00 F4
        SET  6,(IX+0),H         ; 988A DD CB 00 F4
        set  6,(ix+127),h       ; 988E DD CB 7F F4
        SET  6,(IX+127),H       ; 9892 DD CB 7F F4
        set  6,(ix+-128),l      ; 9896 DD CB 80 F5
        SET  6,(IX+-128),L      ; 989A DD CB 80 F5
        set  6,(ix+-1),l        ; 989E DD CB FF F5
        SET  6,(IX+-1),L        ; 98A2 DD CB FF F5
        set  6,(ix+0),l         ; 98A6 DD CB 00 F5
        SET  6,(IX+0),L         ; 98AA DD CB 00 F5
        set  6,(ix+127),l       ; 98AE DD CB 7F F5
        SET  6,(IX+127),L       ; 98B2 DD CB 7F F5
        set  6,(iy+-128)        ; 98B6 FD CB 80 F6
        SET  6,(IY+-128)        ; 98BA FD CB 80 F6
        set  6,(iy+-1)          ; 98BE FD CB FF F6
        SET  6,(IY+-1)          ; 98C2 FD CB FF F6
        set  6,(iy+0)           ; 98C6 FD CB 00 F6
        SET  6,(IY+0)           ; 98CA FD CB 00 F6
        set  6,(iy+127)         ; 98CE FD CB 7F F6
        SET  6,(IY+127)         ; 98D2 FD CB 7F F6
        set  6,(iy+-128),a      ; 98D6 FD CB 80 F7
        SET  6,(IY+-128),A      ; 98DA FD CB 80 F7
        set  6,(iy+-1),a        ; 98DE FD CB FF F7
        SET  6,(IY+-1),A        ; 98E2 FD CB FF F7
        set  6,(iy+0),a         ; 98E6 FD CB 00 F7
        SET  6,(IY+0),A         ; 98EA FD CB 00 F7
        set  6,(iy+127),a       ; 98EE FD CB 7F F7
        SET  6,(IY+127),A       ; 98F2 FD CB 7F F7
        set  6,(iy+-128),b      ; 98F6 FD CB 80 F0
        SET  6,(IY+-128),B      ; 98FA FD CB 80 F0
        set  6,(iy+-1),b        ; 98FE FD CB FF F0
        SET  6,(IY+-1),B        ; 9902 FD CB FF F0
        set  6,(iy+0),b         ; 9906 FD CB 00 F0
        SET  6,(IY+0),B         ; 990A FD CB 00 F0
        set  6,(iy+127),b       ; 990E FD CB 7F F0
        SET  6,(IY+127),B       ; 9912 FD CB 7F F0
        set  6,(iy+-128),c      ; 9916 FD CB 80 F1
        SET  6,(IY+-128),C      ; 991A FD CB 80 F1
        set  6,(iy+-1),c        ; 991E FD CB FF F1
        SET  6,(IY+-1),C        ; 9922 FD CB FF F1
        set  6,(iy+0),c         ; 9926 FD CB 00 F1
        SET  6,(IY+0),C         ; 992A FD CB 00 F1
        set  6,(iy+127),c       ; 992E FD CB 7F F1
        SET  6,(IY+127),C       ; 9932 FD CB 7F F1
        set  6,(iy+-128),d      ; 9936 FD CB 80 F2
        SET  6,(IY+-128),D      ; 993A FD CB 80 F2
        set  6,(iy+-1),d        ; 993E FD CB FF F2
        SET  6,(IY+-1),D        ; 9942 FD CB FF F2
        set  6,(iy+0),d         ; 9946 FD CB 00 F2
        SET  6,(IY+0),D         ; 994A FD CB 00 F2
        set  6,(iy+127),d       ; 994E FD CB 7F F2
        SET  6,(IY+127),D       ; 9952 FD CB 7F F2
        set  6,(iy+-128),e      ; 9956 FD CB 80 F3
        SET  6,(IY+-128),E      ; 995A FD CB 80 F3
        set  6,(iy+-1),e        ; 995E FD CB FF F3
        SET  6,(IY+-1),E        ; 9962 FD CB FF F3
        set  6,(iy+0),e         ; 9966 FD CB 00 F3
        SET  6,(IY+0),E         ; 996A FD CB 00 F3
        set  6,(iy+127),e       ; 996E FD CB 7F F3
        SET  6,(IY+127),E       ; 9972 FD CB 7F F3
        set  6,(iy+-128),h      ; 9976 FD CB 80 F4
        SET  6,(IY+-128),H      ; 997A FD CB 80 F4
        set  6,(iy+-1),h        ; 997E FD CB FF F4
        SET  6,(IY+-1),H        ; 9982 FD CB FF F4
        set  6,(iy+0),h         ; 9986 FD CB 00 F4
        SET  6,(IY+0),H         ; 998A FD CB 00 F4
        set  6,(iy+127),h       ; 998E FD CB 7F F4
        SET  6,(IY+127),H       ; 9992 FD CB 7F F4
        set  6,(iy+-128),l      ; 9996 FD CB 80 F5
        SET  6,(IY+-128),L      ; 999A FD CB 80 F5
        set  6,(iy+-1),l        ; 999E FD CB FF F5
        SET  6,(IY+-1),L        ; 99A2 FD CB FF F5
        set  6,(iy+0),l         ; 99A6 FD CB 00 F5
        SET  6,(IY+0),L         ; 99AA FD CB 00 F5
        set  6,(iy+127),l       ; 99AE FD CB 7F F5
        SET  6,(IY+127),L       ; 99B2 FD CB 7F F5
        set  6,[hl]             ; 99B6 CB F6
        SET  6,[HL]             ; 99B8 CB F6
        set  6,[ix+-128]        ; 99BA DD CB 80 F6
        SET  6,[IX+-128]        ; 99BE DD CB 80 F6
        set  6,[ix+-1]          ; 99C2 DD CB FF F6
        SET  6,[IX+-1]          ; 99C6 DD CB FF F6
        set  6,[ix+0]           ; 99CA DD CB 00 F6
        SET  6,[IX+0]           ; 99CE DD CB 00 F6
        set  6,[ix+127]         ; 99D2 DD CB 7F F6
        SET  6,[IX+127]         ; 99D6 DD CB 7F F6
        set  6,[ix+-128],a      ; 99DA DD CB 80 F7
        SET  6,[IX+-128],A      ; 99DE DD CB 80 F7
        set  6,[ix+-1],a        ; 99E2 DD CB FF F7
        SET  6,[IX+-1],A        ; 99E6 DD CB FF F7
        set  6,[ix+0],a         ; 99EA DD CB 00 F7
        SET  6,[IX+0],A         ; 99EE DD CB 00 F7
        set  6,[ix+127],a       ; 99F2 DD CB 7F F7
        SET  6,[IX+127],A       ; 99F6 DD CB 7F F7
        set  6,[ix+-128],b      ; 99FA DD CB 80 F0
        SET  6,[IX+-128],B      ; 99FE DD CB 80 F0
        set  6,[ix+-1],b        ; 9A02 DD CB FF F0
        SET  6,[IX+-1],B        ; 9A06 DD CB FF F0
        set  6,[ix+0],b         ; 9A0A DD CB 00 F0
        SET  6,[IX+0],B         ; 9A0E DD CB 00 F0
        set  6,[ix+127],b       ; 9A12 DD CB 7F F0
        SET  6,[IX+127],B       ; 9A16 DD CB 7F F0
        set  6,[ix+-128],c      ; 9A1A DD CB 80 F1
        SET  6,[IX+-128],C      ; 9A1E DD CB 80 F1
        set  6,[ix+-1],c        ; 9A22 DD CB FF F1
        SET  6,[IX+-1],C        ; 9A26 DD CB FF F1
        set  6,[ix+0],c         ; 9A2A DD CB 00 F1
        SET  6,[IX+0],C         ; 9A2E DD CB 00 F1
        set  6,[ix+127],c       ; 9A32 DD CB 7F F1
        SET  6,[IX+127],C       ; 9A36 DD CB 7F F1
        set  6,[ix+-128],d      ; 9A3A DD CB 80 F2
        SET  6,[IX+-128],D      ; 9A3E DD CB 80 F2
        set  6,[ix+-1],d        ; 9A42 DD CB FF F2
        SET  6,[IX+-1],D        ; 9A46 DD CB FF F2
        set  6,[ix+0],d         ; 9A4A DD CB 00 F2
        SET  6,[IX+0],D         ; 9A4E DD CB 00 F2
        set  6,[ix+127],d       ; 9A52 DD CB 7F F2
        SET  6,[IX+127],D       ; 9A56 DD CB 7F F2
        set  6,[ix+-128],e      ; 9A5A DD CB 80 F3
        SET  6,[IX+-128],E      ; 9A5E DD CB 80 F3
        set  6,[ix+-1],e        ; 9A62 DD CB FF F3
        SET  6,[IX+-1],E        ; 9A66 DD CB FF F3
        set  6,[ix+0],e         ; 9A6A DD CB 00 F3
        SET  6,[IX+0],E         ; 9A6E DD CB 00 F3
        set  6,[ix+127],e       ; 9A72 DD CB 7F F3
        SET  6,[IX+127],E       ; 9A76 DD CB 7F F3
        set  6,[ix+-128],h      ; 9A7A DD CB 80 F4
        SET  6,[IX+-128],H      ; 9A7E DD CB 80 F4
        set  6,[ix+-1],h        ; 9A82 DD CB FF F4
        SET  6,[IX+-1],H        ; 9A86 DD CB FF F4
        set  6,[ix+0],h         ; 9A8A DD CB 00 F4
        SET  6,[IX+0],H         ; 9A8E DD CB 00 F4
        set  6,[ix+127],h       ; 9A92 DD CB 7F F4
        SET  6,[IX+127],H       ; 9A96 DD CB 7F F4
        set  6,[ix+-128],l      ; 9A9A DD CB 80 F5
        SET  6,[IX+-128],L      ; 9A9E DD CB 80 F5
        set  6,[ix+-1],l        ; 9AA2 DD CB FF F5
        SET  6,[IX+-1],L        ; 9AA6 DD CB FF F5
        set  6,[ix+0],l         ; 9AAA DD CB 00 F5
        SET  6,[IX+0],L         ; 9AAE DD CB 00 F5
        set  6,[ix+127],l       ; 9AB2 DD CB 7F F5
        SET  6,[IX+127],L       ; 9AB6 DD CB 7F F5
        set  6,[iy+-128]        ; 9ABA FD CB 80 F6
        SET  6,[IY+-128]        ; 9ABE FD CB 80 F6
        set  6,[iy+-1]          ; 9AC2 FD CB FF F6
        SET  6,[IY+-1]          ; 9AC6 FD CB FF F6
        set  6,[iy+0]           ; 9ACA FD CB 00 F6
        SET  6,[IY+0]           ; 9ACE FD CB 00 F6
        set  6,[iy+127]         ; 9AD2 FD CB 7F F6
        SET  6,[IY+127]         ; 9AD6 FD CB 7F F6
        set  6,[iy+-128],a      ; 9ADA FD CB 80 F7
        SET  6,[IY+-128],A      ; 9ADE FD CB 80 F7
        set  6,[iy+-1],a        ; 9AE2 FD CB FF F7
        SET  6,[IY+-1],A        ; 9AE6 FD CB FF F7
        set  6,[iy+0],a         ; 9AEA FD CB 00 F7
        SET  6,[IY+0],A         ; 9AEE FD CB 00 F7
        set  6,[iy+127],a       ; 9AF2 FD CB 7F F7
        SET  6,[IY+127],A       ; 9AF6 FD CB 7F F7
        set  6,[iy+-128],b      ; 9AFA FD CB 80 F0
        SET  6,[IY+-128],B      ; 9AFE FD CB 80 F0
        set  6,[iy+-1],b        ; 9B02 FD CB FF F0
        SET  6,[IY+-1],B        ; 9B06 FD CB FF F0
        set  6,[iy+0],b         ; 9B0A FD CB 00 F0
        SET  6,[IY+0],B         ; 9B0E FD CB 00 F0
        set  6,[iy+127],b       ; 9B12 FD CB 7F F0
        SET  6,[IY+127],B       ; 9B16 FD CB 7F F0
        set  6,[iy+-128],c      ; 9B1A FD CB 80 F1
        SET  6,[IY+-128],C      ; 9B1E FD CB 80 F1
        set  6,[iy+-1],c        ; 9B22 FD CB FF F1
        SET  6,[IY+-1],C        ; 9B26 FD CB FF F1
        set  6,[iy+0],c         ; 9B2A FD CB 00 F1
        SET  6,[IY+0],C         ; 9B2E FD CB 00 F1
        set  6,[iy+127],c       ; 9B32 FD CB 7F F1
        SET  6,[IY+127],C       ; 9B36 FD CB 7F F1
        set  6,[iy+-128],d      ; 9B3A FD CB 80 F2
        SET  6,[IY+-128],D      ; 9B3E FD CB 80 F2
        set  6,[iy+-1],d        ; 9B42 FD CB FF F2
        SET  6,[IY+-1],D        ; 9B46 FD CB FF F2
        set  6,[iy+0],d         ; 9B4A FD CB 00 F2
        SET  6,[IY+0],D         ; 9B4E FD CB 00 F2
        set  6,[iy+127],d       ; 9B52 FD CB 7F F2
        SET  6,[IY+127],D       ; 9B56 FD CB 7F F2
        set  6,[iy+-128],e      ; 9B5A FD CB 80 F3
        SET  6,[IY+-128],E      ; 9B5E FD CB 80 F3
        set  6,[iy+-1],e        ; 9B62 FD CB FF F3
        SET  6,[IY+-1],E        ; 9B66 FD CB FF F3
        set  6,[iy+0],e         ; 9B6A FD CB 00 F3
        SET  6,[IY+0],E         ; 9B6E FD CB 00 F3
        set  6,[iy+127],e       ; 9B72 FD CB 7F F3
        SET  6,[IY+127],E       ; 9B76 FD CB 7F F3
        set  6,[iy+-128],h      ; 9B7A FD CB 80 F4
        SET  6,[IY+-128],H      ; 9B7E FD CB 80 F4
        set  6,[iy+-1],h        ; 9B82 FD CB FF F4
        SET  6,[IY+-1],H        ; 9B86 FD CB FF F4
        set  6,[iy+0],h         ; 9B8A FD CB 00 F4
        SET  6,[IY+0],H         ; 9B8E FD CB 00 F4
        set  6,[iy+127],h       ; 9B92 FD CB 7F F4
        SET  6,[IY+127],H       ; 9B96 FD CB 7F F4
        set  6,[iy+-128],l      ; 9B9A FD CB 80 F5
        SET  6,[IY+-128],L      ; 9B9E FD CB 80 F5
        set  6,[iy+-1],l        ; 9BA2 FD CB FF F5
        SET  6,[IY+-1],L        ; 9BA6 FD CB FF F5
        set  6,[iy+0],l         ; 9BAA FD CB 00 F5
        SET  6,[IY+0],L         ; 9BAE FD CB 00 F5
        set  6,[iy+127],l       ; 9BB2 FD CB 7F F5
        SET  6,[IY+127],L       ; 9BB6 FD CB 7F F5
        set  6,a                ; 9BBA CB F7
        SET  6,A                ; 9BBC CB F7
        set  6,b                ; 9BBE CB F0
        SET  6,B                ; 9BC0 CB F0
        set  6,c                ; 9BC2 CB F1
        SET  6,C                ; 9BC4 CB F1
        set  6,d                ; 9BC6 CB F2
        SET  6,D                ; 9BC8 CB F2
        set  6,e                ; 9BCA CB F3
        SET  6,E                ; 9BCC CB F3
        set  6,h                ; 9BCE CB F4
        SET  6,H                ; 9BD0 CB F4
        set  6,l                ; 9BD2 CB F5
        SET  6,L                ; 9BD4 CB F5
        set  7,(hl)             ; 9BD6 CB FE
        SET  7,(HL)             ; 9BD8 CB FE
        set  7,(ix+-128)        ; 9BDA DD CB 80 FE
        SET  7,(IX+-128)        ; 9BDE DD CB 80 FE
        set  7,(ix+-1)          ; 9BE2 DD CB FF FE
        SET  7,(IX+-1)          ; 9BE6 DD CB FF FE
        set  7,(ix+0)           ; 9BEA DD CB 00 FE
        SET  7,(IX+0)           ; 9BEE DD CB 00 FE
        set  7,(ix+127)         ; 9BF2 DD CB 7F FE
        SET  7,(IX+127)         ; 9BF6 DD CB 7F FE
        set  7,(ix+-128),a      ; 9BFA DD CB 80 FF
        SET  7,(IX+-128),A      ; 9BFE DD CB 80 FF
        set  7,(ix+-1),a        ; 9C02 DD CB FF FF
        SET  7,(IX+-1),A        ; 9C06 DD CB FF FF
        set  7,(ix+0),a         ; 9C0A DD CB 00 FF
        SET  7,(IX+0),A         ; 9C0E DD CB 00 FF
        set  7,(ix+127),a       ; 9C12 DD CB 7F FF
        SET  7,(IX+127),A       ; 9C16 DD CB 7F FF
        set  7,(ix+-128),b      ; 9C1A DD CB 80 F8
        SET  7,(IX+-128),B      ; 9C1E DD CB 80 F8
        set  7,(ix+-1),b        ; 9C22 DD CB FF F8
        SET  7,(IX+-1),B        ; 9C26 DD CB FF F8
        set  7,(ix+0),b         ; 9C2A DD CB 00 F8
        SET  7,(IX+0),B         ; 9C2E DD CB 00 F8
        set  7,(ix+127),b       ; 9C32 DD CB 7F F8
        SET  7,(IX+127),B       ; 9C36 DD CB 7F F8
        set  7,(ix+-128),c      ; 9C3A DD CB 80 F9
        SET  7,(IX+-128),C      ; 9C3E DD CB 80 F9
        set  7,(ix+-1),c        ; 9C42 DD CB FF F9
        SET  7,(IX+-1),C        ; 9C46 DD CB FF F9
        set  7,(ix+0),c         ; 9C4A DD CB 00 F9
        SET  7,(IX+0),C         ; 9C4E DD CB 00 F9
        set  7,(ix+127),c       ; 9C52 DD CB 7F F9
        SET  7,(IX+127),C       ; 9C56 DD CB 7F F9
        set  7,(ix+-128),d      ; 9C5A DD CB 80 FA
        SET  7,(IX+-128),D      ; 9C5E DD CB 80 FA
        set  7,(ix+-1),d        ; 9C62 DD CB FF FA
        SET  7,(IX+-1),D        ; 9C66 DD CB FF FA
        set  7,(ix+0),d         ; 9C6A DD CB 00 FA
        SET  7,(IX+0),D         ; 9C6E DD CB 00 FA
        set  7,(ix+127),d       ; 9C72 DD CB 7F FA
        SET  7,(IX+127),D       ; 9C76 DD CB 7F FA
        set  7,(ix+-128),e      ; 9C7A DD CB 80 FB
        SET  7,(IX+-128),E      ; 9C7E DD CB 80 FB
        set  7,(ix+-1),e        ; 9C82 DD CB FF FB
        SET  7,(IX+-1),E        ; 9C86 DD CB FF FB
        set  7,(ix+0),e         ; 9C8A DD CB 00 FB
        SET  7,(IX+0),E         ; 9C8E DD CB 00 FB
        set  7,(ix+127),e       ; 9C92 DD CB 7F FB
        SET  7,(IX+127),E       ; 9C96 DD CB 7F FB
        set  7,(ix+-128),h      ; 9C9A DD CB 80 FC
        SET  7,(IX+-128),H      ; 9C9E DD CB 80 FC
        set  7,(ix+-1),h        ; 9CA2 DD CB FF FC
        SET  7,(IX+-1),H        ; 9CA6 DD CB FF FC
        set  7,(ix+0),h         ; 9CAA DD CB 00 FC
        SET  7,(IX+0),H         ; 9CAE DD CB 00 FC
        set  7,(ix+127),h       ; 9CB2 DD CB 7F FC
        SET  7,(IX+127),H       ; 9CB6 DD CB 7F FC
        set  7,(ix+-128),l      ; 9CBA DD CB 80 FD
        SET  7,(IX+-128),L      ; 9CBE DD CB 80 FD
        set  7,(ix+-1),l        ; 9CC2 DD CB FF FD
        SET  7,(IX+-1),L        ; 9CC6 DD CB FF FD
        set  7,(ix+0),l         ; 9CCA DD CB 00 FD
        SET  7,(IX+0),L         ; 9CCE DD CB 00 FD
        set  7,(ix+127),l       ; 9CD2 DD CB 7F FD
        SET  7,(IX+127),L       ; 9CD6 DD CB 7F FD
        set  7,(iy+-128)        ; 9CDA FD CB 80 FE
        SET  7,(IY+-128)        ; 9CDE FD CB 80 FE
        set  7,(iy+-1)          ; 9CE2 FD CB FF FE
        SET  7,(IY+-1)          ; 9CE6 FD CB FF FE
        set  7,(iy+0)           ; 9CEA FD CB 00 FE
        SET  7,(IY+0)           ; 9CEE FD CB 00 FE
        set  7,(iy+127)         ; 9CF2 FD CB 7F FE
        SET  7,(IY+127)         ; 9CF6 FD CB 7F FE
        set  7,(iy+-128),a      ; 9CFA FD CB 80 FF
        SET  7,(IY+-128),A      ; 9CFE FD CB 80 FF
        set  7,(iy+-1),a        ; 9D02 FD CB FF FF
        SET  7,(IY+-1),A        ; 9D06 FD CB FF FF
        set  7,(iy+0),a         ; 9D0A FD CB 00 FF
        SET  7,(IY+0),A         ; 9D0E FD CB 00 FF
        set  7,(iy+127),a       ; 9D12 FD CB 7F FF
        SET  7,(IY+127),A       ; 9D16 FD CB 7F FF
        set  7,(iy+-128),b      ; 9D1A FD CB 80 F8
        SET  7,(IY+-128),B      ; 9D1E FD CB 80 F8
        set  7,(iy+-1),b        ; 9D22 FD CB FF F8
        SET  7,(IY+-1),B        ; 9D26 FD CB FF F8
        set  7,(iy+0),b         ; 9D2A FD CB 00 F8
        SET  7,(IY+0),B         ; 9D2E FD CB 00 F8
        set  7,(iy+127),b       ; 9D32 FD CB 7F F8
        SET  7,(IY+127),B       ; 9D36 FD CB 7F F8
        set  7,(iy+-128),c      ; 9D3A FD CB 80 F9
        SET  7,(IY+-128),C      ; 9D3E FD CB 80 F9
        set  7,(iy+-1),c        ; 9D42 FD CB FF F9
        SET  7,(IY+-1),C        ; 9D46 FD CB FF F9
        set  7,(iy+0),c         ; 9D4A FD CB 00 F9
        SET  7,(IY+0),C         ; 9D4E FD CB 00 F9
        set  7,(iy+127),c       ; 9D52 FD CB 7F F9
        SET  7,(IY+127),C       ; 9D56 FD CB 7F F9
        set  7,(iy+-128),d      ; 9D5A FD CB 80 FA
        SET  7,(IY+-128),D      ; 9D5E FD CB 80 FA
        set  7,(iy+-1),d        ; 9D62 FD CB FF FA
        SET  7,(IY+-1),D        ; 9D66 FD CB FF FA
        set  7,(iy+0),d         ; 9D6A FD CB 00 FA
        SET  7,(IY+0),D         ; 9D6E FD CB 00 FA
        set  7,(iy+127),d       ; 9D72 FD CB 7F FA
        SET  7,(IY+127),D       ; 9D76 FD CB 7F FA
        set  7,(iy+-128),e      ; 9D7A FD CB 80 FB
        SET  7,(IY+-128),E      ; 9D7E FD CB 80 FB
        set  7,(iy+-1),e        ; 9D82 FD CB FF FB
        SET  7,(IY+-1),E        ; 9D86 FD CB FF FB
        set  7,(iy+0),e         ; 9D8A FD CB 00 FB
        SET  7,(IY+0),E         ; 9D8E FD CB 00 FB
        set  7,(iy+127),e       ; 9D92 FD CB 7F FB
        SET  7,(IY+127),E       ; 9D96 FD CB 7F FB
        set  7,(iy+-128),h      ; 9D9A FD CB 80 FC
        SET  7,(IY+-128),H      ; 9D9E FD CB 80 FC
        set  7,(iy+-1),h        ; 9DA2 FD CB FF FC
        SET  7,(IY+-1),H        ; 9DA6 FD CB FF FC
        set  7,(iy+0),h         ; 9DAA FD CB 00 FC
        SET  7,(IY+0),H         ; 9DAE FD CB 00 FC
        set  7,(iy+127),h       ; 9DB2 FD CB 7F FC
        SET  7,(IY+127),H       ; 9DB6 FD CB 7F FC
        set  7,(iy+-128),l      ; 9DBA FD CB 80 FD
        SET  7,(IY+-128),L      ; 9DBE FD CB 80 FD
        set  7,(iy+-1),l        ; 9DC2 FD CB FF FD
        SET  7,(IY+-1),L        ; 9DC6 FD CB FF FD
        set  7,(iy+0),l         ; 9DCA FD CB 00 FD
        SET  7,(IY+0),L         ; 9DCE FD CB 00 FD
        set  7,(iy+127),l       ; 9DD2 FD CB 7F FD
        SET  7,(IY+127),L       ; 9DD6 FD CB 7F FD
        set  7,[hl]             ; 9DDA CB FE
        SET  7,[HL]             ; 9DDC CB FE
        set  7,[ix+-128]        ; 9DDE DD CB 80 FE
        SET  7,[IX+-128]        ; 9DE2 DD CB 80 FE
        set  7,[ix+-1]          ; 9DE6 DD CB FF FE
        SET  7,[IX+-1]          ; 9DEA DD CB FF FE
        set  7,[ix+0]           ; 9DEE DD CB 00 FE
        SET  7,[IX+0]           ; 9DF2 DD CB 00 FE
        set  7,[ix+127]         ; 9DF6 DD CB 7F FE
        SET  7,[IX+127]         ; 9DFA DD CB 7F FE
        set  7,[ix+-128],a      ; 9DFE DD CB 80 FF
        SET  7,[IX+-128],A      ; 9E02 DD CB 80 FF
        set  7,[ix+-1],a        ; 9E06 DD CB FF FF
        SET  7,[IX+-1],A        ; 9E0A DD CB FF FF
        set  7,[ix+0],a         ; 9E0E DD CB 00 FF
        SET  7,[IX+0],A         ; 9E12 DD CB 00 FF
        set  7,[ix+127],a       ; 9E16 DD CB 7F FF
        SET  7,[IX+127],A       ; 9E1A DD CB 7F FF
        set  7,[ix+-128],b      ; 9E1E DD CB 80 F8
        SET  7,[IX+-128],B      ; 9E22 DD CB 80 F8
        set  7,[ix+-1],b        ; 9E26 DD CB FF F8
        SET  7,[IX+-1],B        ; 9E2A DD CB FF F8
        set  7,[ix+0],b         ; 9E2E DD CB 00 F8
        SET  7,[IX+0],B         ; 9E32 DD CB 00 F8
        set  7,[ix+127],b       ; 9E36 DD CB 7F F8
        SET  7,[IX+127],B       ; 9E3A DD CB 7F F8
        set  7,[ix+-128],c      ; 9E3E DD CB 80 F9
        SET  7,[IX+-128],C      ; 9E42 DD CB 80 F9
        set  7,[ix+-1],c        ; 9E46 DD CB FF F9
        SET  7,[IX+-1],C        ; 9E4A DD CB FF F9
        set  7,[ix+0],c         ; 9E4E DD CB 00 F9
        SET  7,[IX+0],C         ; 9E52 DD CB 00 F9
        set  7,[ix+127],c       ; 9E56 DD CB 7F F9
        SET  7,[IX+127],C       ; 9E5A DD CB 7F F9
        set  7,[ix+-128],d      ; 9E5E DD CB 80 FA
        SET  7,[IX+-128],D      ; 9E62 DD CB 80 FA
        set  7,[ix+-1],d        ; 9E66 DD CB FF FA
        SET  7,[IX+-1],D        ; 9E6A DD CB FF FA
        set  7,[ix+0],d         ; 9E6E DD CB 00 FA
        SET  7,[IX+0],D         ; 9E72 DD CB 00 FA
        set  7,[ix+127],d       ; 9E76 DD CB 7F FA
        SET  7,[IX+127],D       ; 9E7A DD CB 7F FA
        set  7,[ix+-128],e      ; 9E7E DD CB 80 FB
        SET  7,[IX+-128],E      ; 9E82 DD CB 80 FB
        set  7,[ix+-1],e        ; 9E86 DD CB FF FB
        SET  7,[IX+-1],E        ; 9E8A DD CB FF FB
        set  7,[ix+0],e         ; 9E8E DD CB 00 FB
        SET  7,[IX+0],E         ; 9E92 DD CB 00 FB
        set  7,[ix+127],e       ; 9E96 DD CB 7F FB
        SET  7,[IX+127],E       ; 9E9A DD CB 7F FB
        set  7,[ix+-128],h      ; 9E9E DD CB 80 FC
        SET  7,[IX+-128],H      ; 9EA2 DD CB 80 FC
        set  7,[ix+-1],h        ; 9EA6 DD CB FF FC
        SET  7,[IX+-1],H        ; 9EAA DD CB FF FC
        set  7,[ix+0],h         ; 9EAE DD CB 00 FC
        SET  7,[IX+0],H         ; 9EB2 DD CB 00 FC
        set  7,[ix+127],h       ; 9EB6 DD CB 7F FC
        SET  7,[IX+127],H       ; 9EBA DD CB 7F FC
        set  7,[ix+-128],l      ; 9EBE DD CB 80 FD
        SET  7,[IX+-128],L      ; 9EC2 DD CB 80 FD
        set  7,[ix+-1],l        ; 9EC6 DD CB FF FD
        SET  7,[IX+-1],L        ; 9ECA DD CB FF FD
        set  7,[ix+0],l         ; 9ECE DD CB 00 FD
        SET  7,[IX+0],L         ; 9ED2 DD CB 00 FD
        set  7,[ix+127],l       ; 9ED6 DD CB 7F FD
        SET  7,[IX+127],L       ; 9EDA DD CB 7F FD
        set  7,[iy+-128]        ; 9EDE FD CB 80 FE
        SET  7,[IY+-128]        ; 9EE2 FD CB 80 FE
        set  7,[iy+-1]          ; 9EE6 FD CB FF FE
        SET  7,[IY+-1]          ; 9EEA FD CB FF FE
        set  7,[iy+0]           ; 9EEE FD CB 00 FE
        SET  7,[IY+0]           ; 9EF2 FD CB 00 FE
        set  7,[iy+127]         ; 9EF6 FD CB 7F FE
        SET  7,[IY+127]         ; 9EFA FD CB 7F FE
        set  7,[iy+-128],a      ; 9EFE FD CB 80 FF
        SET  7,[IY+-128],A      ; 9F02 FD CB 80 FF
        set  7,[iy+-1],a        ; 9F06 FD CB FF FF
        SET  7,[IY+-1],A        ; 9F0A FD CB FF FF
        set  7,[iy+0],a         ; 9F0E FD CB 00 FF
        SET  7,[IY+0],A         ; 9F12 FD CB 00 FF
        set  7,[iy+127],a       ; 9F16 FD CB 7F FF
        SET  7,[IY+127],A       ; 9F1A FD CB 7F FF
        set  7,[iy+-128],b      ; 9F1E FD CB 80 F8
        SET  7,[IY+-128],B      ; 9F22 FD CB 80 F8
        set  7,[iy+-1],b        ; 9F26 FD CB FF F8
        SET  7,[IY+-1],B        ; 9F2A FD CB FF F8
        set  7,[iy+0],b         ; 9F2E FD CB 00 F8
        SET  7,[IY+0],B         ; 9F32 FD CB 00 F8
        set  7,[iy+127],b       ; 9F36 FD CB 7F F8
        SET  7,[IY+127],B       ; 9F3A FD CB 7F F8
        set  7,[iy+-128],c      ; 9F3E FD CB 80 F9
        SET  7,[IY+-128],C      ; 9F42 FD CB 80 F9
        set  7,[iy+-1],c        ; 9F46 FD CB FF F9
        SET  7,[IY+-1],C        ; 9F4A FD CB FF F9
        set  7,[iy+0],c         ; 9F4E FD CB 00 F9
        SET  7,[IY+0],C         ; 9F52 FD CB 00 F9
        set  7,[iy+127],c       ; 9F56 FD CB 7F F9
        SET  7,[IY+127],C       ; 9F5A FD CB 7F F9
        set  7,[iy+-128],d      ; 9F5E FD CB 80 FA
        SET  7,[IY+-128],D      ; 9F62 FD CB 80 FA
        set  7,[iy+-1],d        ; 9F66 FD CB FF FA
        SET  7,[IY+-1],D        ; 9F6A FD CB FF FA
        set  7,[iy+0],d         ; 9F6E FD CB 00 FA
        SET  7,[IY+0],D         ; 9F72 FD CB 00 FA
        set  7,[iy+127],d       ; 9F76 FD CB 7F FA
        SET  7,[IY+127],D       ; 9F7A FD CB 7F FA
        set  7,[iy+-128],e      ; 9F7E FD CB 80 FB
        SET  7,[IY+-128],E      ; 9F82 FD CB 80 FB
        set  7,[iy+-1],e        ; 9F86 FD CB FF FB
        SET  7,[IY+-1],E        ; 9F8A FD CB FF FB
        set  7,[iy+0],e         ; 9F8E FD CB 00 FB
        SET  7,[IY+0],E         ; 9F92 FD CB 00 FB
        set  7,[iy+127],e       ; 9F96 FD CB 7F FB
        SET  7,[IY+127],E       ; 9F9A FD CB 7F FB
        set  7,[iy+-128],h      ; 9F9E FD CB 80 FC
        SET  7,[IY+-128],H      ; 9FA2 FD CB 80 FC
        set  7,[iy+-1],h        ; 9FA6 FD CB FF FC
        SET  7,[IY+-1],H        ; 9FAA FD CB FF FC
        set  7,[iy+0],h         ; 9FAE FD CB 00 FC
        SET  7,[IY+0],H         ; 9FB2 FD CB 00 FC
        set  7,[iy+127],h       ; 9FB6 FD CB 7F FC
        SET  7,[IY+127],H       ; 9FBA FD CB 7F FC
        set  7,[iy+-128],l      ; 9FBE FD CB 80 FD
        SET  7,[IY+-128],L      ; 9FC2 FD CB 80 FD
        set  7,[iy+-1],l        ; 9FC6 FD CB FF FD
        SET  7,[IY+-1],L        ; 9FCA FD CB FF FD
        set  7,[iy+0],l         ; 9FCE FD CB 00 FD
        SET  7,[IY+0],L         ; 9FD2 FD CB 00 FD
        set  7,[iy+127],l       ; 9FD6 FD CB 7F FD
        SET  7,[IY+127],L       ; 9FDA FD CB 7F FD
        set  7,a                ; 9FDE CB FF
        SET  7,A                ; 9FE0 CB FF
        set  7,b                ; 9FE2 CB F8
        SET  7,B                ; 9FE4 CB F8
        set  7,c                ; 9FE6 CB F9
        SET  7,C                ; 9FE8 CB F9
        set  7,d                ; 9FEA CB FA
        SET  7,D                ; 9FEC CB FA
        set  7,e                ; 9FEE CB FB
        SET  7,E                ; 9FF0 CB FB
        set  7,h                ; 9FF2 CB FC
        SET  7,H                ; 9FF4 CB FC
        set  7,l                ; 9FF6 CB FD
        SET  7,L                ; 9FF8 CB FD
        sla  (hl)               ; 9FFA CB 26
        SLA  (HL)               ; 9FFC CB 26
        sla  (ix+-128)          ; 9FFE DD CB 80 26
        SLA  (IX+-128)          ; A002 DD CB 80 26
        sla  (ix+-1)            ; A006 DD CB FF 26
        SLA  (IX+-1)            ; A00A DD CB FF 26
        sla  (ix+0)             ; A00E DD CB 00 26
        SLA  (IX+0)             ; A012 DD CB 00 26
        sla  (ix+127)           ; A016 DD CB 7F 26
        SLA  (IX+127)           ; A01A DD CB 7F 26
        sla  (ix+-128),a        ; A01E DD CB 80 27
        SLA  (IX+-128),A        ; A022 DD CB 80 27
        sla  (ix+-1),a          ; A026 DD CB FF 27
        SLA  (IX+-1),A          ; A02A DD CB FF 27
        sla  (ix+0),a           ; A02E DD CB 00 27
        SLA  (IX+0),A           ; A032 DD CB 00 27
        sla  (ix+127),a         ; A036 DD CB 7F 27
        SLA  (IX+127),A         ; A03A DD CB 7F 27
        sla  (ix+-128),b        ; A03E DD CB 80 20
        SLA  (IX+-128),B        ; A042 DD CB 80 20
        sla  (ix+-1),b          ; A046 DD CB FF 20
        SLA  (IX+-1),B          ; A04A DD CB FF 20
        sla  (ix+0),b           ; A04E DD CB 00 20
        SLA  (IX+0),B           ; A052 DD CB 00 20
        sla  (ix+127),b         ; A056 DD CB 7F 20
        SLA  (IX+127),B         ; A05A DD CB 7F 20
        sla  (ix+-128),c        ; A05E DD CB 80 21
        SLA  (IX+-128),C        ; A062 DD CB 80 21
        sla  (ix+-1),c          ; A066 DD CB FF 21
        SLA  (IX+-1),C          ; A06A DD CB FF 21
        sla  (ix+0),c           ; A06E DD CB 00 21
        SLA  (IX+0),C           ; A072 DD CB 00 21
        sla  (ix+127),c         ; A076 DD CB 7F 21
        SLA  (IX+127),C         ; A07A DD CB 7F 21
        sla  (ix+-128),d        ; A07E DD CB 80 22
        SLA  (IX+-128),D        ; A082 DD CB 80 22
        sla  (ix+-1),d          ; A086 DD CB FF 22
        SLA  (IX+-1),D          ; A08A DD CB FF 22
        sla  (ix+0),d           ; A08E DD CB 00 22
        SLA  (IX+0),D           ; A092 DD CB 00 22
        sla  (ix+127),d         ; A096 DD CB 7F 22
        SLA  (IX+127),D         ; A09A DD CB 7F 22
        sla  (ix+-128),e        ; A09E DD CB 80 23
        SLA  (IX+-128),E        ; A0A2 DD CB 80 23
        sla  (ix+-1),e          ; A0A6 DD CB FF 23
        SLA  (IX+-1),E          ; A0AA DD CB FF 23
        sla  (ix+0),e           ; A0AE DD CB 00 23
        SLA  (IX+0),E           ; A0B2 DD CB 00 23
        sla  (ix+127),e         ; A0B6 DD CB 7F 23
        SLA  (IX+127),E         ; A0BA DD CB 7F 23
        sla  (ix+-128),h        ; A0BE DD CB 80 24
        SLA  (IX+-128),H        ; A0C2 DD CB 80 24
        sla  (ix+-1),h          ; A0C6 DD CB FF 24
        SLA  (IX+-1),H          ; A0CA DD CB FF 24
        sla  (ix+0),h           ; A0CE DD CB 00 24
        SLA  (IX+0),H           ; A0D2 DD CB 00 24
        sla  (ix+127),h         ; A0D6 DD CB 7F 24
        SLA  (IX+127),H         ; A0DA DD CB 7F 24
        sla  (ix+-128),l        ; A0DE DD CB 80 25
        SLA  (IX+-128),L        ; A0E2 DD CB 80 25
        sla  (ix+-1),l          ; A0E6 DD CB FF 25
        SLA  (IX+-1),L          ; A0EA DD CB FF 25
        sla  (ix+0),l           ; A0EE DD CB 00 25
        SLA  (IX+0),L           ; A0F2 DD CB 00 25
        sla  (ix+127),l         ; A0F6 DD CB 7F 25
        SLA  (IX+127),L         ; A0FA DD CB 7F 25
        sla  (iy+-128)          ; A0FE FD CB 80 26
        SLA  (IY+-128)          ; A102 FD CB 80 26
        sla  (iy+-1)            ; A106 FD CB FF 26
        SLA  (IY+-1)            ; A10A FD CB FF 26
        sla  (iy+0)             ; A10E FD CB 00 26
        SLA  (IY+0)             ; A112 FD CB 00 26
        sla  (iy+127)           ; A116 FD CB 7F 26
        SLA  (IY+127)           ; A11A FD CB 7F 26
        sla  (iy+-128),a        ; A11E FD CB 80 27
        SLA  (IY+-128),A        ; A122 FD CB 80 27
        sla  (iy+-1),a          ; A126 FD CB FF 27
        SLA  (IY+-1),A          ; A12A FD CB FF 27
        sla  (iy+0),a           ; A12E FD CB 00 27
        SLA  (IY+0),A           ; A132 FD CB 00 27
        sla  (iy+127),a         ; A136 FD CB 7F 27
        SLA  (IY+127),A         ; A13A FD CB 7F 27
        sla  (iy+-128),b        ; A13E FD CB 80 20
        SLA  (IY+-128),B        ; A142 FD CB 80 20
        sla  (iy+-1),b          ; A146 FD CB FF 20
        SLA  (IY+-1),B          ; A14A FD CB FF 20
        sla  (iy+0),b           ; A14E FD CB 00 20
        SLA  (IY+0),B           ; A152 FD CB 00 20
        sla  (iy+127),b         ; A156 FD CB 7F 20
        SLA  (IY+127),B         ; A15A FD CB 7F 20
        sla  (iy+-128),c        ; A15E FD CB 80 21
        SLA  (IY+-128),C        ; A162 FD CB 80 21
        sla  (iy+-1),c          ; A166 FD CB FF 21
        SLA  (IY+-1),C          ; A16A FD CB FF 21
        sla  (iy+0),c           ; A16E FD CB 00 21
        SLA  (IY+0),C           ; A172 FD CB 00 21
        sla  (iy+127),c         ; A176 FD CB 7F 21
        SLA  (IY+127),C         ; A17A FD CB 7F 21
        sla  (iy+-128),d        ; A17E FD CB 80 22
        SLA  (IY+-128),D        ; A182 FD CB 80 22
        sla  (iy+-1),d          ; A186 FD CB FF 22
        SLA  (IY+-1),D          ; A18A FD CB FF 22
        sla  (iy+0),d           ; A18E FD CB 00 22
        SLA  (IY+0),D           ; A192 FD CB 00 22
        sla  (iy+127),d         ; A196 FD CB 7F 22
        SLA  (IY+127),D         ; A19A FD CB 7F 22
        sla  (iy+-128),e        ; A19E FD CB 80 23
        SLA  (IY+-128),E        ; A1A2 FD CB 80 23
        sla  (iy+-1),e          ; A1A6 FD CB FF 23
        SLA  (IY+-1),E          ; A1AA FD CB FF 23
        sla  (iy+0),e           ; A1AE FD CB 00 23
        SLA  (IY+0),E           ; A1B2 FD CB 00 23
        sla  (iy+127),e         ; A1B6 FD CB 7F 23
        SLA  (IY+127),E         ; A1BA FD CB 7F 23
        sla  (iy+-128),h        ; A1BE FD CB 80 24
        SLA  (IY+-128),H        ; A1C2 FD CB 80 24
        sla  (iy+-1),h          ; A1C6 FD CB FF 24
        SLA  (IY+-1),H          ; A1CA FD CB FF 24
        sla  (iy+0),h           ; A1CE FD CB 00 24
        SLA  (IY+0),H           ; A1D2 FD CB 00 24
        sla  (iy+127),h         ; A1D6 FD CB 7F 24
        SLA  (IY+127),H         ; A1DA FD CB 7F 24
        sla  (iy+-128),l        ; A1DE FD CB 80 25
        SLA  (IY+-128),L        ; A1E2 FD CB 80 25
        sla  (iy+-1),l          ; A1E6 FD CB FF 25
        SLA  (IY+-1),L          ; A1EA FD CB FF 25
        sla  (iy+0),l           ; A1EE FD CB 00 25
        SLA  (IY+0),L           ; A1F2 FD CB 00 25
        sla  (iy+127),l         ; A1F6 FD CB 7F 25
        SLA  (IY+127),L         ; A1FA FD CB 7F 25
        sla  [hl]               ; A1FE CB 26
        SLA  [HL]               ; A200 CB 26
        sla  [ix+-128]          ; A202 DD CB 80 26
        SLA  [IX+-128]          ; A206 DD CB 80 26
        sla  [ix+-1]            ; A20A DD CB FF 26
        SLA  [IX+-1]            ; A20E DD CB FF 26
        sla  [ix+0]             ; A212 DD CB 00 26
        SLA  [IX+0]             ; A216 DD CB 00 26
        sla  [ix+127]           ; A21A DD CB 7F 26
        SLA  [IX+127]           ; A21E DD CB 7F 26
        sla  [ix+-128],a        ; A222 DD CB 80 27
        SLA  [IX+-128],A        ; A226 DD CB 80 27
        sla  [ix+-1],a          ; A22A DD CB FF 27
        SLA  [IX+-1],A          ; A22E DD CB FF 27
        sla  [ix+0],a           ; A232 DD CB 00 27
        SLA  [IX+0],A           ; A236 DD CB 00 27
        sla  [ix+127],a         ; A23A DD CB 7F 27
        SLA  [IX+127],A         ; A23E DD CB 7F 27
        sla  [ix+-128],b        ; A242 DD CB 80 20
        SLA  [IX+-128],B        ; A246 DD CB 80 20
        sla  [ix+-1],b          ; A24A DD CB FF 20
        SLA  [IX+-1],B          ; A24E DD CB FF 20
        sla  [ix+0],b           ; A252 DD CB 00 20
        SLA  [IX+0],B           ; A256 DD CB 00 20
        sla  [ix+127],b         ; A25A DD CB 7F 20
        SLA  [IX+127],B         ; A25E DD CB 7F 20
        sla  [ix+-128],c        ; A262 DD CB 80 21
        SLA  [IX+-128],C        ; A266 DD CB 80 21
        sla  [ix+-1],c          ; A26A DD CB FF 21
        SLA  [IX+-1],C          ; A26E DD CB FF 21
        sla  [ix+0],c           ; A272 DD CB 00 21
        SLA  [IX+0],C           ; A276 DD CB 00 21
        sla  [ix+127],c         ; A27A DD CB 7F 21
        SLA  [IX+127],C         ; A27E DD CB 7F 21
        sla  [ix+-128],d        ; A282 DD CB 80 22
        SLA  [IX+-128],D        ; A286 DD CB 80 22
        sla  [ix+-1],d          ; A28A DD CB FF 22
        SLA  [IX+-1],D          ; A28E DD CB FF 22
        sla  [ix+0],d           ; A292 DD CB 00 22
        SLA  [IX+0],D           ; A296 DD CB 00 22
        sla  [ix+127],d         ; A29A DD CB 7F 22
        SLA  [IX+127],D         ; A29E DD CB 7F 22
        sla  [ix+-128],e        ; A2A2 DD CB 80 23
        SLA  [IX+-128],E        ; A2A6 DD CB 80 23
        sla  [ix+-1],e          ; A2AA DD CB FF 23
        SLA  [IX+-1],E          ; A2AE DD CB FF 23
        sla  [ix+0],e           ; A2B2 DD CB 00 23
        SLA  [IX+0],E           ; A2B6 DD CB 00 23
        sla  [ix+127],e         ; A2BA DD CB 7F 23
        SLA  [IX+127],E         ; A2BE DD CB 7F 23
        sla  [ix+-128],h        ; A2C2 DD CB 80 24
        SLA  [IX+-128],H        ; A2C6 DD CB 80 24
        sla  [ix+-1],h          ; A2CA DD CB FF 24
        SLA  [IX+-1],H          ; A2CE DD CB FF 24
        sla  [ix+0],h           ; A2D2 DD CB 00 24
        SLA  [IX+0],H           ; A2D6 DD CB 00 24
        sla  [ix+127],h         ; A2DA DD CB 7F 24
        SLA  [IX+127],H         ; A2DE DD CB 7F 24
        sla  [ix+-128],l        ; A2E2 DD CB 80 25
        SLA  [IX+-128],L        ; A2E6 DD CB 80 25
        sla  [ix+-1],l          ; A2EA DD CB FF 25
        SLA  [IX+-1],L          ; A2EE DD CB FF 25
        sla  [ix+0],l           ; A2F2 DD CB 00 25
        SLA  [IX+0],L           ; A2F6 DD CB 00 25
        sla  [ix+127],l         ; A2FA DD CB 7F 25
        SLA  [IX+127],L         ; A2FE DD CB 7F 25
        sla  [iy+-128]          ; A302 FD CB 80 26
        SLA  [IY+-128]          ; A306 FD CB 80 26
        sla  [iy+-1]            ; A30A FD CB FF 26
        SLA  [IY+-1]            ; A30E FD CB FF 26
        sla  [iy+0]             ; A312 FD CB 00 26
        SLA  [IY+0]             ; A316 FD CB 00 26
        sla  [iy+127]           ; A31A FD CB 7F 26
        SLA  [IY+127]           ; A31E FD CB 7F 26
        sla  [iy+-128],a        ; A322 FD CB 80 27
        SLA  [IY+-128],A        ; A326 FD CB 80 27
        sla  [iy+-1],a          ; A32A FD CB FF 27
        SLA  [IY+-1],A          ; A32E FD CB FF 27
        sla  [iy+0],a           ; A332 FD CB 00 27
        SLA  [IY+0],A           ; A336 FD CB 00 27
        sla  [iy+127],a         ; A33A FD CB 7F 27
        SLA  [IY+127],A         ; A33E FD CB 7F 27
        sla  [iy+-128],b        ; A342 FD CB 80 20
        SLA  [IY+-128],B        ; A346 FD CB 80 20
        sla  [iy+-1],b          ; A34A FD CB FF 20
        SLA  [IY+-1],B          ; A34E FD CB FF 20
        sla  [iy+0],b           ; A352 FD CB 00 20
        SLA  [IY+0],B           ; A356 FD CB 00 20
        sla  [iy+127],b         ; A35A FD CB 7F 20
        SLA  [IY+127],B         ; A35E FD CB 7F 20
        sla  [iy+-128],c        ; A362 FD CB 80 21
        SLA  [IY+-128],C        ; A366 FD CB 80 21
        sla  [iy+-1],c          ; A36A FD CB FF 21
        SLA  [IY+-1],C          ; A36E FD CB FF 21
        sla  [iy+0],c           ; A372 FD CB 00 21
        SLA  [IY+0],C           ; A376 FD CB 00 21
        sla  [iy+127],c         ; A37A FD CB 7F 21
        SLA  [IY+127],C         ; A37E FD CB 7F 21
        sla  [iy+-128],d        ; A382 FD CB 80 22
        SLA  [IY+-128],D        ; A386 FD CB 80 22
        sla  [iy+-1],d          ; A38A FD CB FF 22
        SLA  [IY+-1],D          ; A38E FD CB FF 22
        sla  [iy+0],d           ; A392 FD CB 00 22
        SLA  [IY+0],D           ; A396 FD CB 00 22
        sla  [iy+127],d         ; A39A FD CB 7F 22
        SLA  [IY+127],D         ; A39E FD CB 7F 22
        sla  [iy+-128],e        ; A3A2 FD CB 80 23
        SLA  [IY+-128],E        ; A3A6 FD CB 80 23
        sla  [iy+-1],e          ; A3AA FD CB FF 23
        SLA  [IY+-1],E          ; A3AE FD CB FF 23
        sla  [iy+0],e           ; A3B2 FD CB 00 23
        SLA  [IY+0],E           ; A3B6 FD CB 00 23
        sla  [iy+127],e         ; A3BA FD CB 7F 23
        SLA  [IY+127],E         ; A3BE FD CB 7F 23
        sla  [iy+-128],h        ; A3C2 FD CB 80 24
        SLA  [IY+-128],H        ; A3C6 FD CB 80 24
        sla  [iy+-1],h          ; A3CA FD CB FF 24
        SLA  [IY+-1],H          ; A3CE FD CB FF 24
        sla  [iy+0],h           ; A3D2 FD CB 00 24
        SLA  [IY+0],H           ; A3D6 FD CB 00 24
        sla  [iy+127],h         ; A3DA FD CB 7F 24
        SLA  [IY+127],H         ; A3DE FD CB 7F 24
        sla  [iy+-128],l        ; A3E2 FD CB 80 25
        SLA  [IY+-128],L        ; A3E6 FD CB 80 25
        sla  [iy+-1],l          ; A3EA FD CB FF 25
        SLA  [IY+-1],L          ; A3EE FD CB FF 25
        sla  [iy+0],l           ; A3F2 FD CB 00 25
        SLA  [IY+0],L           ; A3F6 FD CB 00 25
        sla  [iy+127],l         ; A3FA FD CB 7F 25
        SLA  [IY+127],L         ; A3FE FD CB 7F 25
        sla  a                  ; A402 CB 27
        SLA  A                  ; A404 CB 27
        sla  b                  ; A406 CB 20
        SLA  B                  ; A408 CB 20
        sla  bc                 ; A40A CB 21 CB 10
        SLA  BC                 ; A40E CB 21 CB 10
        sla  c                  ; A412 CB 21
        SLA  C                  ; A414 CB 21
        sla  d                  ; A416 CB 22
        SLA  D                  ; A418 CB 22
        sla  de                 ; A41A CB 23 CB 12
        SLA  DE                 ; A41E CB 23 CB 12
        sla  e                  ; A422 CB 23
        SLA  E                  ; A424 CB 23
        sla  h                  ; A426 CB 24
        SLA  H                  ; A428 CB 24
        sla  hl                 ; A42A 29
        SLA  HL                 ; A42B 29
        sla  l                  ; A42C CB 25
        SLA  L                  ; A42E CB 25
        sli  (hl)               ; A430 CB 36
        SLI  (HL)               ; A432 CB 36
        sli  (ix+-128)          ; A434 DD CB 80 36
        SLI  (IX+-128)          ; A438 DD CB 80 36
        sli  (ix+-1)            ; A43C DD CB FF 36
        SLI  (IX+-1)            ; A440 DD CB FF 36
        sli  (ix+0)             ; A444 DD CB 00 36
        SLI  (IX+0)             ; A448 DD CB 00 36
        sli  (ix+127)           ; A44C DD CB 7F 36
        SLI  (IX+127)           ; A450 DD CB 7F 36
        sli  (ix+-128),a        ; A454 DD CB 80 37
        SLI  (IX+-128),A        ; A458 DD CB 80 37
        sli  (ix+-1),a          ; A45C DD CB FF 37
        SLI  (IX+-1),A          ; A460 DD CB FF 37
        sli  (ix+0),a           ; A464 DD CB 00 37
        SLI  (IX+0),A           ; A468 DD CB 00 37
        sli  (ix+127),a         ; A46C DD CB 7F 37
        SLI  (IX+127),A         ; A470 DD CB 7F 37
        sli  (ix+-128),b        ; A474 DD CB 80 30
        SLI  (IX+-128),B        ; A478 DD CB 80 30
        sli  (ix+-1),b          ; A47C DD CB FF 30
        SLI  (IX+-1),B          ; A480 DD CB FF 30
        sli  (ix+0),b           ; A484 DD CB 00 30
        SLI  (IX+0),B           ; A488 DD CB 00 30
        sli  (ix+127),b         ; A48C DD CB 7F 30
        SLI  (IX+127),B         ; A490 DD CB 7F 30
        sli  (ix+-128),c        ; A494 DD CB 80 31
        SLI  (IX+-128),C        ; A498 DD CB 80 31
        sli  (ix+-1),c          ; A49C DD CB FF 31
        SLI  (IX+-1),C          ; A4A0 DD CB FF 31
        sli  (ix+0),c           ; A4A4 DD CB 00 31
        SLI  (IX+0),C           ; A4A8 DD CB 00 31
        sli  (ix+127),c         ; A4AC DD CB 7F 31
        SLI  (IX+127),C         ; A4B0 DD CB 7F 31
        sli  (ix+-128),d        ; A4B4 DD CB 80 32
        SLI  (IX+-128),D        ; A4B8 DD CB 80 32
        sli  (ix+-1),d          ; A4BC DD CB FF 32
        SLI  (IX+-1),D          ; A4C0 DD CB FF 32
        sli  (ix+0),d           ; A4C4 DD CB 00 32
        SLI  (IX+0),D           ; A4C8 DD CB 00 32
        sli  (ix+127),d         ; A4CC DD CB 7F 32
        SLI  (IX+127),D         ; A4D0 DD CB 7F 32
        sli  (ix+-128),e        ; A4D4 DD CB 80 33
        SLI  (IX+-128),E        ; A4D8 DD CB 80 33
        sli  (ix+-1),e          ; A4DC DD CB FF 33
        SLI  (IX+-1),E          ; A4E0 DD CB FF 33
        sli  (ix+0),e           ; A4E4 DD CB 00 33
        SLI  (IX+0),E           ; A4E8 DD CB 00 33
        sli  (ix+127),e         ; A4EC DD CB 7F 33
        SLI  (IX+127),E         ; A4F0 DD CB 7F 33
        sli  (ix+-128),h        ; A4F4 DD CB 80 34
        SLI  (IX+-128),H        ; A4F8 DD CB 80 34
        sli  (ix+-1),h          ; A4FC DD CB FF 34
        SLI  (IX+-1),H          ; A500 DD CB FF 34
        sli  (ix+0),h           ; A504 DD CB 00 34
        SLI  (IX+0),H           ; A508 DD CB 00 34
        sli  (ix+127),h         ; A50C DD CB 7F 34
        SLI  (IX+127),H         ; A510 DD CB 7F 34
        sli  (ix+-128),l        ; A514 DD CB 80 35
        SLI  (IX+-128),L        ; A518 DD CB 80 35
        sli  (ix+-1),l          ; A51C DD CB FF 35
        SLI  (IX+-1),L          ; A520 DD CB FF 35
        sli  (ix+0),l           ; A524 DD CB 00 35
        SLI  (IX+0),L           ; A528 DD CB 00 35
        sli  (ix+127),l         ; A52C DD CB 7F 35
        SLI  (IX+127),L         ; A530 DD CB 7F 35
        sli  (iy+-128)          ; A534 FD CB 80 36
        SLI  (IY+-128)          ; A538 FD CB 80 36
        sli  (iy+-1)            ; A53C FD CB FF 36
        SLI  (IY+-1)            ; A540 FD CB FF 36
        sli  (iy+0)             ; A544 FD CB 00 36
        SLI  (IY+0)             ; A548 FD CB 00 36
        sli  (iy+127)           ; A54C FD CB 7F 36
        SLI  (IY+127)           ; A550 FD CB 7F 36
        sli  (iy+-128),a        ; A554 FD CB 80 37
        SLI  (IY+-128),A        ; A558 FD CB 80 37
        sli  (iy+-1),a          ; A55C FD CB FF 37
        SLI  (IY+-1),A          ; A560 FD CB FF 37
        sli  (iy+0),a           ; A564 FD CB 00 37
        SLI  (IY+0),A           ; A568 FD CB 00 37
        sli  (iy+127),a         ; A56C FD CB 7F 37
        SLI  (IY+127),A         ; A570 FD CB 7F 37
        sli  (iy+-128),b        ; A574 FD CB 80 30
        SLI  (IY+-128),B        ; A578 FD CB 80 30
        sli  (iy+-1),b          ; A57C FD CB FF 30
        SLI  (IY+-1),B          ; A580 FD CB FF 30
        sli  (iy+0),b           ; A584 FD CB 00 30
        SLI  (IY+0),B           ; A588 FD CB 00 30
        sli  (iy+127),b         ; A58C FD CB 7F 30
        SLI  (IY+127),B         ; A590 FD CB 7F 30
        sli  (iy+-128),c        ; A594 FD CB 80 31
        SLI  (IY+-128),C        ; A598 FD CB 80 31
        sli  (iy+-1),c          ; A59C FD CB FF 31
        SLI  (IY+-1),C          ; A5A0 FD CB FF 31
        sli  (iy+0),c           ; A5A4 FD CB 00 31
        SLI  (IY+0),C           ; A5A8 FD CB 00 31
        sli  (iy+127),c         ; A5AC FD CB 7F 31
        SLI  (IY+127),C         ; A5B0 FD CB 7F 31
        sli  (iy+-128),d        ; A5B4 FD CB 80 32
        SLI  (IY+-128),D        ; A5B8 FD CB 80 32
        sli  (iy+-1),d          ; A5BC FD CB FF 32
        SLI  (IY+-1),D          ; A5C0 FD CB FF 32
        sli  (iy+0),d           ; A5C4 FD CB 00 32
        SLI  (IY+0),D           ; A5C8 FD CB 00 32
        sli  (iy+127),d         ; A5CC FD CB 7F 32
        SLI  (IY+127),D         ; A5D0 FD CB 7F 32
        sli  (iy+-128),e        ; A5D4 FD CB 80 33
        SLI  (IY+-128),E        ; A5D8 FD CB 80 33
        sli  (iy+-1),e          ; A5DC FD CB FF 33
        SLI  (IY+-1),E          ; A5E0 FD CB FF 33
        sli  (iy+0),e           ; A5E4 FD CB 00 33
        SLI  (IY+0),E           ; A5E8 FD CB 00 33
        sli  (iy+127),e         ; A5EC FD CB 7F 33
        SLI  (IY+127),E         ; A5F0 FD CB 7F 33
        sli  (iy+-128),h        ; A5F4 FD CB 80 34
        SLI  (IY+-128),H        ; A5F8 FD CB 80 34
        sli  (iy+-1),h          ; A5FC FD CB FF 34
        SLI  (IY+-1),H          ; A600 FD CB FF 34
        sli  (iy+0),h           ; A604 FD CB 00 34
        SLI  (IY+0),H           ; A608 FD CB 00 34
        sli  (iy+127),h         ; A60C FD CB 7F 34
        SLI  (IY+127),H         ; A610 FD CB 7F 34
        sli  (iy+-128),l        ; A614 FD CB 80 35
        SLI  (IY+-128),L        ; A618 FD CB 80 35
        sli  (iy+-1),l          ; A61C FD CB FF 35
        SLI  (IY+-1),L          ; A620 FD CB FF 35
        sli  (iy+0),l           ; A624 FD CB 00 35
        SLI  (IY+0),L           ; A628 FD CB 00 35
        sli  (iy+127),l         ; A62C FD CB 7F 35
        SLI  (IY+127),L         ; A630 FD CB 7F 35
        sli  [hl]               ; A634 CB 36
        SLI  [HL]               ; A636 CB 36
        sli  [ix+-128]          ; A638 DD CB 80 36
        SLI  [IX+-128]          ; A63C DD CB 80 36
        sli  [ix+-1]            ; A640 DD CB FF 36
        SLI  [IX+-1]            ; A644 DD CB FF 36
        sli  [ix+0]             ; A648 DD CB 00 36
        SLI  [IX+0]             ; A64C DD CB 00 36
        sli  [ix+127]           ; A650 DD CB 7F 36
        SLI  [IX+127]           ; A654 DD CB 7F 36
        sli  [ix+-128],a        ; A658 DD CB 80 37
        SLI  [IX+-128],A        ; A65C DD CB 80 37
        sli  [ix+-1],a          ; A660 DD CB FF 37
        SLI  [IX+-1],A          ; A664 DD CB FF 37
        sli  [ix+0],a           ; A668 DD CB 00 37
        SLI  [IX+0],A           ; A66C DD CB 00 37
        sli  [ix+127],a         ; A670 DD CB 7F 37
        SLI  [IX+127],A         ; A674 DD CB 7F 37
        sli  [ix+-128],b        ; A678 DD CB 80 30
        SLI  [IX+-128],B        ; A67C DD CB 80 30
        sli  [ix+-1],b          ; A680 DD CB FF 30
        SLI  [IX+-1],B          ; A684 DD CB FF 30
        sli  [ix+0],b           ; A688 DD CB 00 30
        SLI  [IX+0],B           ; A68C DD CB 00 30
        sli  [ix+127],b         ; A690 DD CB 7F 30
        SLI  [IX+127],B         ; A694 DD CB 7F 30
        sli  [ix+-128],c        ; A698 DD CB 80 31
        SLI  [IX+-128],C        ; A69C DD CB 80 31
        sli  [ix+-1],c          ; A6A0 DD CB FF 31
        SLI  [IX+-1],C          ; A6A4 DD CB FF 31
        sli  [ix+0],c           ; A6A8 DD CB 00 31
        SLI  [IX+0],C           ; A6AC DD CB 00 31
        sli  [ix+127],c         ; A6B0 DD CB 7F 31
        SLI  [IX+127],C         ; A6B4 DD CB 7F 31
        sli  [ix+-128],d        ; A6B8 DD CB 80 32
        SLI  [IX+-128],D        ; A6BC DD CB 80 32
        sli  [ix+-1],d          ; A6C0 DD CB FF 32
        SLI  [IX+-1],D          ; A6C4 DD CB FF 32
        sli  [ix+0],d           ; A6C8 DD CB 00 32
        SLI  [IX+0],D           ; A6CC DD CB 00 32
        sli  [ix+127],d         ; A6D0 DD CB 7F 32
        SLI  [IX+127],D         ; A6D4 DD CB 7F 32
        sli  [ix+-128],e        ; A6D8 DD CB 80 33
        SLI  [IX+-128],E        ; A6DC DD CB 80 33
        sli  [ix+-1],e          ; A6E0 DD CB FF 33
        SLI  [IX+-1],E          ; A6E4 DD CB FF 33
        sli  [ix+0],e           ; A6E8 DD CB 00 33
        SLI  [IX+0],E           ; A6EC DD CB 00 33
        sli  [ix+127],e         ; A6F0 DD CB 7F 33
        SLI  [IX+127],E         ; A6F4 DD CB 7F 33
        sli  [ix+-128],h        ; A6F8 DD CB 80 34
        SLI  [IX+-128],H        ; A6FC DD CB 80 34
        sli  [ix+-1],h          ; A700 DD CB FF 34
        SLI  [IX+-1],H          ; A704 DD CB FF 34
        sli  [ix+0],h           ; A708 DD CB 00 34
        SLI  [IX+0],H           ; A70C DD CB 00 34
        sli  [ix+127],h         ; A710 DD CB 7F 34
        SLI  [IX+127],H         ; A714 DD CB 7F 34
        sli  [ix+-128],l        ; A718 DD CB 80 35
        SLI  [IX+-128],L        ; A71C DD CB 80 35
        sli  [ix+-1],l          ; A720 DD CB FF 35
        SLI  [IX+-1],L          ; A724 DD CB FF 35
        sli  [ix+0],l           ; A728 DD CB 00 35
        SLI  [IX+0],L           ; A72C DD CB 00 35
        sli  [ix+127],l         ; A730 DD CB 7F 35
        SLI  [IX+127],L         ; A734 DD CB 7F 35
        sli  [iy+-128]          ; A738 FD CB 80 36
        SLI  [IY+-128]          ; A73C FD CB 80 36
        sli  [iy+-1]            ; A740 FD CB FF 36
        SLI  [IY+-1]            ; A744 FD CB FF 36
        sli  [iy+0]             ; A748 FD CB 00 36
        SLI  [IY+0]             ; A74C FD CB 00 36
        sli  [iy+127]           ; A750 FD CB 7F 36
        SLI  [IY+127]           ; A754 FD CB 7F 36
        sli  [iy+-128],a        ; A758 FD CB 80 37
        SLI  [IY+-128],A        ; A75C FD CB 80 37
        sli  [iy+-1],a          ; A760 FD CB FF 37
        SLI  [IY+-1],A          ; A764 FD CB FF 37
        sli  [iy+0],a           ; A768 FD CB 00 37
        SLI  [IY+0],A           ; A76C FD CB 00 37
        sli  [iy+127],a         ; A770 FD CB 7F 37
        SLI  [IY+127],A         ; A774 FD CB 7F 37
        sli  [iy+-128],b        ; A778 FD CB 80 30
        SLI  [IY+-128],B        ; A77C FD CB 80 30
        sli  [iy+-1],b          ; A780 FD CB FF 30
        SLI  [IY+-1],B          ; A784 FD CB FF 30
        sli  [iy+0],b           ; A788 FD CB 00 30
        SLI  [IY+0],B           ; A78C FD CB 00 30
        sli  [iy+127],b         ; A790 FD CB 7F 30
        SLI  [IY+127],B         ; A794 FD CB 7F 30
        sli  [iy+-128],c        ; A798 FD CB 80 31
        SLI  [IY+-128],C        ; A79C FD CB 80 31
        sli  [iy+-1],c          ; A7A0 FD CB FF 31
        SLI  [IY+-1],C          ; A7A4 FD CB FF 31
        sli  [iy+0],c           ; A7A8 FD CB 00 31
        SLI  [IY+0],C           ; A7AC FD CB 00 31
        sli  [iy+127],c         ; A7B0 FD CB 7F 31
        SLI  [IY+127],C         ; A7B4 FD CB 7F 31
        sli  [iy+-128],d        ; A7B8 FD CB 80 32
        SLI  [IY+-128],D        ; A7BC FD CB 80 32
        sli  [iy+-1],d          ; A7C0 FD CB FF 32
        SLI  [IY+-1],D          ; A7C4 FD CB FF 32
        sli  [iy+0],d           ; A7C8 FD CB 00 32
        SLI  [IY+0],D           ; A7CC FD CB 00 32
        sli  [iy+127],d         ; A7D0 FD CB 7F 32
        SLI  [IY+127],D         ; A7D4 FD CB 7F 32
        sli  [iy+-128],e        ; A7D8 FD CB 80 33
        SLI  [IY+-128],E        ; A7DC FD CB 80 33
        sli  [iy+-1],e          ; A7E0 FD CB FF 33
        SLI  [IY+-1],E          ; A7E4 FD CB FF 33
        sli  [iy+0],e           ; A7E8 FD CB 00 33
        SLI  [IY+0],E           ; A7EC FD CB 00 33
        sli  [iy+127],e         ; A7F0 FD CB 7F 33
        SLI  [IY+127],E         ; A7F4 FD CB 7F 33
        sli  [iy+-128],h        ; A7F8 FD CB 80 34
        SLI  [IY+-128],H        ; A7FC FD CB 80 34
        sli  [iy+-1],h          ; A800 FD CB FF 34
        SLI  [IY+-1],H          ; A804 FD CB FF 34
        sli  [iy+0],h           ; A808 FD CB 00 34
        SLI  [IY+0],H           ; A80C FD CB 00 34
        sli  [iy+127],h         ; A810 FD CB 7F 34
        SLI  [IY+127],H         ; A814 FD CB 7F 34
        sli  [iy+-128],l        ; A818 FD CB 80 35
        SLI  [IY+-128],L        ; A81C FD CB 80 35
        sli  [iy+-1],l          ; A820 FD CB FF 35
        SLI  [IY+-1],L          ; A824 FD CB FF 35
        sli  [iy+0],l           ; A828 FD CB 00 35
        SLI  [IY+0],L           ; A82C FD CB 00 35
        sli  [iy+127],l         ; A830 FD CB 7F 35
        SLI  [IY+127],L         ; A834 FD CB 7F 35
        sli  a                  ; A838 CB 37
        SLI  A                  ; A83A CB 37
        sli  b                  ; A83C CB 30
        SLI  B                  ; A83E CB 30
        sli  bc                 ; A840 CB 31 CB 10
        SLI  BC                 ; A844 CB 31 CB 10
        sli  c                  ; A848 CB 31
        SLI  C                  ; A84A CB 31
        sli  d                  ; A84C CB 32
        SLI  D                  ; A84E CB 32
        sli  de                 ; A850 CB 33 CB 12
        SLI  DE                 ; A854 CB 33 CB 12
        sli  e                  ; A858 CB 33
        SLI  E                  ; A85A CB 33
        sli  h                  ; A85C CB 34
        SLI  H                  ; A85E CB 34
        sli  hl                 ; A860 CB 35 CB 14
        SLI  HL                 ; A864 CB 35 CB 14
        sli  l                  ; A868 CB 35
        SLI  L                  ; A86A CB 35
        sll  (hl)               ; A86C CB 36
        SLL  (HL)               ; A86E CB 36
        sll  (ix+-128)          ; A870 DD CB 80 36
        SLL  (IX+-128)          ; A874 DD CB 80 36
        sll  (ix+-1)            ; A878 DD CB FF 36
        SLL  (IX+-1)            ; A87C DD CB FF 36
        sll  (ix+0)             ; A880 DD CB 00 36
        SLL  (IX+0)             ; A884 DD CB 00 36
        sll  (ix+127)           ; A888 DD CB 7F 36
        SLL  (IX+127)           ; A88C DD CB 7F 36
        sll  (ix+-128),a        ; A890 DD CB 80 37
        SLL  (IX+-128),A        ; A894 DD CB 80 37
        sll  (ix+-1),a          ; A898 DD CB FF 37
        SLL  (IX+-1),A          ; A89C DD CB FF 37
        sll  (ix+0),a           ; A8A0 DD CB 00 37
        SLL  (IX+0),A           ; A8A4 DD CB 00 37
        sll  (ix+127),a         ; A8A8 DD CB 7F 37
        SLL  (IX+127),A         ; A8AC DD CB 7F 37
        sll  (ix+-128),b        ; A8B0 DD CB 80 30
        SLL  (IX+-128),B        ; A8B4 DD CB 80 30
        sll  (ix+-1),b          ; A8B8 DD CB FF 30
        SLL  (IX+-1),B          ; A8BC DD CB FF 30
        sll  (ix+0),b           ; A8C0 DD CB 00 30
        SLL  (IX+0),B           ; A8C4 DD CB 00 30
        sll  (ix+127),b         ; A8C8 DD CB 7F 30
        SLL  (IX+127),B         ; A8CC DD CB 7F 30
        sll  (ix+-128),c        ; A8D0 DD CB 80 31
        SLL  (IX+-128),C        ; A8D4 DD CB 80 31
        sll  (ix+-1),c          ; A8D8 DD CB FF 31
        SLL  (IX+-1),C          ; A8DC DD CB FF 31
        sll  (ix+0),c           ; A8E0 DD CB 00 31
        SLL  (IX+0),C           ; A8E4 DD CB 00 31
        sll  (ix+127),c         ; A8E8 DD CB 7F 31
        SLL  (IX+127),C         ; A8EC DD CB 7F 31
        sll  (ix+-128),d        ; A8F0 DD CB 80 32
        SLL  (IX+-128),D        ; A8F4 DD CB 80 32
        sll  (ix+-1),d          ; A8F8 DD CB FF 32
        SLL  (IX+-1),D          ; A8FC DD CB FF 32
        sll  (ix+0),d           ; A900 DD CB 00 32
        SLL  (IX+0),D           ; A904 DD CB 00 32
        sll  (ix+127),d         ; A908 DD CB 7F 32
        SLL  (IX+127),D         ; A90C DD CB 7F 32
        sll  (ix+-128),e        ; A910 DD CB 80 33
        SLL  (IX+-128),E        ; A914 DD CB 80 33
        sll  (ix+-1),e          ; A918 DD CB FF 33
        SLL  (IX+-1),E          ; A91C DD CB FF 33
        sll  (ix+0),e           ; A920 DD CB 00 33
        SLL  (IX+0),E           ; A924 DD CB 00 33
        sll  (ix+127),e         ; A928 DD CB 7F 33
        SLL  (IX+127),E         ; A92C DD CB 7F 33
        sll  (ix+-128),h        ; A930 DD CB 80 34
        SLL  (IX+-128),H        ; A934 DD CB 80 34
        sll  (ix+-1),h          ; A938 DD CB FF 34
        SLL  (IX+-1),H          ; A93C DD CB FF 34
        sll  (ix+0),h           ; A940 DD CB 00 34
        SLL  (IX+0),H           ; A944 DD CB 00 34
        sll  (ix+127),h         ; A948 DD CB 7F 34
        SLL  (IX+127),H         ; A94C DD CB 7F 34
        sll  (ix+-128),l        ; A950 DD CB 80 35
        SLL  (IX+-128),L        ; A954 DD CB 80 35
        sll  (ix+-1),l          ; A958 DD CB FF 35
        SLL  (IX+-1),L          ; A95C DD CB FF 35
        sll  (ix+0),l           ; A960 DD CB 00 35
        SLL  (IX+0),L           ; A964 DD CB 00 35
        sll  (ix+127),l         ; A968 DD CB 7F 35
        SLL  (IX+127),L         ; A96C DD CB 7F 35
        sll  (iy+-128)          ; A970 FD CB 80 36
        SLL  (IY+-128)          ; A974 FD CB 80 36
        sll  (iy+-1)            ; A978 FD CB FF 36
        SLL  (IY+-1)            ; A97C FD CB FF 36
        sll  (iy+0)             ; A980 FD CB 00 36
        SLL  (IY+0)             ; A984 FD CB 00 36
        sll  (iy+127)           ; A988 FD CB 7F 36
        SLL  (IY+127)           ; A98C FD CB 7F 36
        sll  (iy+-128),a        ; A990 FD CB 80 37
        SLL  (IY+-128),A        ; A994 FD CB 80 37
        sll  (iy+-1),a          ; A998 FD CB FF 37
        SLL  (IY+-1),A          ; A99C FD CB FF 37
        sll  (iy+0),a           ; A9A0 FD CB 00 37
        SLL  (IY+0),A           ; A9A4 FD CB 00 37
        sll  (iy+127),a         ; A9A8 FD CB 7F 37
        SLL  (IY+127),A         ; A9AC FD CB 7F 37
        sll  (iy+-128),b        ; A9B0 FD CB 80 30
        SLL  (IY+-128),B        ; A9B4 FD CB 80 30
        sll  (iy+-1),b          ; A9B8 FD CB FF 30
        SLL  (IY+-1),B          ; A9BC FD CB FF 30
        sll  (iy+0),b           ; A9C0 FD CB 00 30
        SLL  (IY+0),B           ; A9C4 FD CB 00 30
        sll  (iy+127),b         ; A9C8 FD CB 7F 30
        SLL  (IY+127),B         ; A9CC FD CB 7F 30
        sll  (iy+-128),c        ; A9D0 FD CB 80 31
        SLL  (IY+-128),C        ; A9D4 FD CB 80 31
        sll  (iy+-1),c          ; A9D8 FD CB FF 31
        SLL  (IY+-1),C          ; A9DC FD CB FF 31
        sll  (iy+0),c           ; A9E0 FD CB 00 31
        SLL  (IY+0),C           ; A9E4 FD CB 00 31
        sll  (iy+127),c         ; A9E8 FD CB 7F 31
        SLL  (IY+127),C         ; A9EC FD CB 7F 31
        sll  (iy+-128),d        ; A9F0 FD CB 80 32
        SLL  (IY+-128),D        ; A9F4 FD CB 80 32
        sll  (iy+-1),d          ; A9F8 FD CB FF 32
        SLL  (IY+-1),D          ; A9FC FD CB FF 32
        sll  (iy+0),d           ; AA00 FD CB 00 32
        SLL  (IY+0),D           ; AA04 FD CB 00 32
        sll  (iy+127),d         ; AA08 FD CB 7F 32
        SLL  (IY+127),D         ; AA0C FD CB 7F 32
        sll  (iy+-128),e        ; AA10 FD CB 80 33
        SLL  (IY+-128),E        ; AA14 FD CB 80 33
        sll  (iy+-1),e          ; AA18 FD CB FF 33
        SLL  (IY+-1),E          ; AA1C FD CB FF 33
        sll  (iy+0),e           ; AA20 FD CB 00 33
        SLL  (IY+0),E           ; AA24 FD CB 00 33
        sll  (iy+127),e         ; AA28 FD CB 7F 33
        SLL  (IY+127),E         ; AA2C FD CB 7F 33
        sll  (iy+-128),h        ; AA30 FD CB 80 34
        SLL  (IY+-128),H        ; AA34 FD CB 80 34
        sll  (iy+-1),h          ; AA38 FD CB FF 34
        SLL  (IY+-1),H          ; AA3C FD CB FF 34
        sll  (iy+0),h           ; AA40 FD CB 00 34
        SLL  (IY+0),H           ; AA44 FD CB 00 34
        sll  (iy+127),h         ; AA48 FD CB 7F 34
        SLL  (IY+127),H         ; AA4C FD CB 7F 34
        sll  (iy+-128),l        ; AA50 FD CB 80 35
        SLL  (IY+-128),L        ; AA54 FD CB 80 35
        sll  (iy+-1),l          ; AA58 FD CB FF 35
        SLL  (IY+-1),L          ; AA5C FD CB FF 35
        sll  (iy+0),l           ; AA60 FD CB 00 35
        SLL  (IY+0),L           ; AA64 FD CB 00 35
        sll  (iy+127),l         ; AA68 FD CB 7F 35
        SLL  (IY+127),L         ; AA6C FD CB 7F 35
        sll  [hl]               ; AA70 CB 36
        SLL  [HL]               ; AA72 CB 36
        sll  [ix+-128]          ; AA74 DD CB 80 36
        SLL  [IX+-128]          ; AA78 DD CB 80 36
        sll  [ix+-1]            ; AA7C DD CB FF 36
        SLL  [IX+-1]            ; AA80 DD CB FF 36
        sll  [ix+0]             ; AA84 DD CB 00 36
        SLL  [IX+0]             ; AA88 DD CB 00 36
        sll  [ix+127]           ; AA8C DD CB 7F 36
        SLL  [IX+127]           ; AA90 DD CB 7F 36
        sll  [ix+-128],a        ; AA94 DD CB 80 37
        SLL  [IX+-128],A        ; AA98 DD CB 80 37
        sll  [ix+-1],a          ; AA9C DD CB FF 37
        SLL  [IX+-1],A          ; AAA0 DD CB FF 37
        sll  [ix+0],a           ; AAA4 DD CB 00 37
        SLL  [IX+0],A           ; AAA8 DD CB 00 37
        sll  [ix+127],a         ; AAAC DD CB 7F 37
        SLL  [IX+127],A         ; AAB0 DD CB 7F 37
        sll  [ix+-128],b        ; AAB4 DD CB 80 30
        SLL  [IX+-128],B        ; AAB8 DD CB 80 30
        sll  [ix+-1],b          ; AABC DD CB FF 30
        SLL  [IX+-1],B          ; AAC0 DD CB FF 30
        sll  [ix+0],b           ; AAC4 DD CB 00 30
        SLL  [IX+0],B           ; AAC8 DD CB 00 30
        sll  [ix+127],b         ; AACC DD CB 7F 30
        SLL  [IX+127],B         ; AAD0 DD CB 7F 30
        sll  [ix+-128],c        ; AAD4 DD CB 80 31
        SLL  [IX+-128],C        ; AAD8 DD CB 80 31
        sll  [ix+-1],c          ; AADC DD CB FF 31
        SLL  [IX+-1],C          ; AAE0 DD CB FF 31
        sll  [ix+0],c           ; AAE4 DD CB 00 31
        SLL  [IX+0],C           ; AAE8 DD CB 00 31
        sll  [ix+127],c         ; AAEC DD CB 7F 31
        SLL  [IX+127],C         ; AAF0 DD CB 7F 31
        sll  [ix+-128],d        ; AAF4 DD CB 80 32
        SLL  [IX+-128],D        ; AAF8 DD CB 80 32
        sll  [ix+-1],d          ; AAFC DD CB FF 32
        SLL  [IX+-1],D          ; AB00 DD CB FF 32
        sll  [ix+0],d           ; AB04 DD CB 00 32
        SLL  [IX+0],D           ; AB08 DD CB 00 32
        sll  [ix+127],d         ; AB0C DD CB 7F 32
        SLL  [IX+127],D         ; AB10 DD CB 7F 32
        sll  [ix+-128],e        ; AB14 DD CB 80 33
        SLL  [IX+-128],E        ; AB18 DD CB 80 33
        sll  [ix+-1],e          ; AB1C DD CB FF 33
        SLL  [IX+-1],E          ; AB20 DD CB FF 33
        sll  [ix+0],e           ; AB24 DD CB 00 33
        SLL  [IX+0],E           ; AB28 DD CB 00 33
        sll  [ix+127],e         ; AB2C DD CB 7F 33
        SLL  [IX+127],E         ; AB30 DD CB 7F 33
        sll  [ix+-128],h        ; AB34 DD CB 80 34
        SLL  [IX+-128],H        ; AB38 DD CB 80 34
        sll  [ix+-1],h          ; AB3C DD CB FF 34
        SLL  [IX+-1],H          ; AB40 DD CB FF 34
        sll  [ix+0],h           ; AB44 DD CB 00 34
        SLL  [IX+0],H           ; AB48 DD CB 00 34
        sll  [ix+127],h         ; AB4C DD CB 7F 34
        SLL  [IX+127],H         ; AB50 DD CB 7F 34
        sll  [ix+-128],l        ; AB54 DD CB 80 35
        SLL  [IX+-128],L        ; AB58 DD CB 80 35
        sll  [ix+-1],l          ; AB5C DD CB FF 35
        SLL  [IX+-1],L          ; AB60 DD CB FF 35
        sll  [ix+0],l           ; AB64 DD CB 00 35
        SLL  [IX+0],L           ; AB68 DD CB 00 35
        sll  [ix+127],l         ; AB6C DD CB 7F 35
        SLL  [IX+127],L         ; AB70 DD CB 7F 35
        sll  [iy+-128]          ; AB74 FD CB 80 36
        SLL  [IY+-128]          ; AB78 FD CB 80 36
        sll  [iy+-1]            ; AB7C FD CB FF 36
        SLL  [IY+-1]            ; AB80 FD CB FF 36
        sll  [iy+0]             ; AB84 FD CB 00 36
        SLL  [IY+0]             ; AB88 FD CB 00 36
        sll  [iy+127]           ; AB8C FD CB 7F 36
        SLL  [IY+127]           ; AB90 FD CB 7F 36
        sll  [iy+-128],a        ; AB94 FD CB 80 37
        SLL  [IY+-128],A        ; AB98 FD CB 80 37
        sll  [iy+-1],a          ; AB9C FD CB FF 37
        SLL  [IY+-1],A          ; ABA0 FD CB FF 37
        sll  [iy+0],a           ; ABA4 FD CB 00 37
        SLL  [IY+0],A           ; ABA8 FD CB 00 37
        sll  [iy+127],a         ; ABAC FD CB 7F 37
        SLL  [IY+127],A         ; ABB0 FD CB 7F 37
        sll  [iy+-128],b        ; ABB4 FD CB 80 30
        SLL  [IY+-128],B        ; ABB8 FD CB 80 30
        sll  [iy+-1],b          ; ABBC FD CB FF 30
        SLL  [IY+-1],B          ; ABC0 FD CB FF 30
        sll  [iy+0],b           ; ABC4 FD CB 00 30
        SLL  [IY+0],B           ; ABC8 FD CB 00 30
        sll  [iy+127],b         ; ABCC FD CB 7F 30
        SLL  [IY+127],B         ; ABD0 FD CB 7F 30
        sll  [iy+-128],c        ; ABD4 FD CB 80 31
        SLL  [IY+-128],C        ; ABD8 FD CB 80 31
        sll  [iy+-1],c          ; ABDC FD CB FF 31
        SLL  [IY+-1],C          ; ABE0 FD CB FF 31
        sll  [iy+0],c           ; ABE4 FD CB 00 31
        SLL  [IY+0],C           ; ABE8 FD CB 00 31
        sll  [iy+127],c         ; ABEC FD CB 7F 31
        SLL  [IY+127],C         ; ABF0 FD CB 7F 31
        sll  [iy+-128],d        ; ABF4 FD CB 80 32
        SLL  [IY+-128],D        ; ABF8 FD CB 80 32
        sll  [iy+-1],d          ; ABFC FD CB FF 32
        SLL  [IY+-1],D          ; AC00 FD CB FF 32
        sll  [iy+0],d           ; AC04 FD CB 00 32
        SLL  [IY+0],D           ; AC08 FD CB 00 32
        sll  [iy+127],d         ; AC0C FD CB 7F 32
        SLL  [IY+127],D         ; AC10 FD CB 7F 32
        sll  [iy+-128],e        ; AC14 FD CB 80 33
        SLL  [IY+-128],E        ; AC18 FD CB 80 33
        sll  [iy+-1],e          ; AC1C FD CB FF 33
        SLL  [IY+-1],E          ; AC20 FD CB FF 33
        sll  [iy+0],e           ; AC24 FD CB 00 33
        SLL  [IY+0],E           ; AC28 FD CB 00 33
        sll  [iy+127],e         ; AC2C FD CB 7F 33
        SLL  [IY+127],E         ; AC30 FD CB 7F 33
        sll  [iy+-128],h        ; AC34 FD CB 80 34
        SLL  [IY+-128],H        ; AC38 FD CB 80 34
        sll  [iy+-1],h          ; AC3C FD CB FF 34
        SLL  [IY+-1],H          ; AC40 FD CB FF 34
        sll  [iy+0],h           ; AC44 FD CB 00 34
        SLL  [IY+0],H           ; AC48 FD CB 00 34
        sll  [iy+127],h         ; AC4C FD CB 7F 34
        SLL  [IY+127],H         ; AC50 FD CB 7F 34
        sll  [iy+-128],l        ; AC54 FD CB 80 35
        SLL  [IY+-128],L        ; AC58 FD CB 80 35
        sll  [iy+-1],l          ; AC5C FD CB FF 35
        SLL  [IY+-1],L          ; AC60 FD CB FF 35
        sll  [iy+0],l           ; AC64 FD CB 00 35
        SLL  [IY+0],L           ; AC68 FD CB 00 35
        sll  [iy+127],l         ; AC6C FD CB 7F 35
        SLL  [IY+127],L         ; AC70 FD CB 7F 35
        sll  a                  ; AC74 CB 37
        SLL  A                  ; AC76 CB 37
        sll  b                  ; AC78 CB 30
        SLL  B                  ; AC7A CB 30
        sll  bc                 ; AC7C CB 31 CB 10
        SLL  BC                 ; AC80 CB 31 CB 10
        sll  c                  ; AC84 CB 31
        SLL  C                  ; AC86 CB 31
        sll  d                  ; AC88 CB 32
        SLL  D                  ; AC8A CB 32
        sll  de                 ; AC8C CB 33 CB 12
        SLL  DE                 ; AC90 CB 33 CB 12
        sll  e                  ; AC94 CB 33
        SLL  E                  ; AC96 CB 33
        sll  h                  ; AC98 CB 34
        SLL  H                  ; AC9A CB 34
        sll  hl                 ; AC9C CB 35 CB 14
        SLL  HL                 ; ACA0 CB 35 CB 14
        sll  l                  ; ACA4 CB 35
        SLL  L                  ; ACA6 CB 35
        sra  (hl)               ; ACA8 CB 2E
        SRA  (HL)               ; ACAA CB 2E
        sra  (ix+-128)          ; ACAC DD CB 80 2E
        SRA  (IX+-128)          ; ACB0 DD CB 80 2E
        sra  (ix+-1)            ; ACB4 DD CB FF 2E
        SRA  (IX+-1)            ; ACB8 DD CB FF 2E
        sra  (ix+0)             ; ACBC DD CB 00 2E
        SRA  (IX+0)             ; ACC0 DD CB 00 2E
        sra  (ix+127)           ; ACC4 DD CB 7F 2E
        SRA  (IX+127)           ; ACC8 DD CB 7F 2E
        sra  (ix+-128),a        ; ACCC DD CB 80 2F
        SRA  (IX+-128),A        ; ACD0 DD CB 80 2F
        sra  (ix+-1),a          ; ACD4 DD CB FF 2F
        SRA  (IX+-1),A          ; ACD8 DD CB FF 2F
        sra  (ix+0),a           ; ACDC DD CB 00 2F
        SRA  (IX+0),A           ; ACE0 DD CB 00 2F
        sra  (ix+127),a         ; ACE4 DD CB 7F 2F
        SRA  (IX+127),A         ; ACE8 DD CB 7F 2F
        sra  (ix+-128),b        ; ACEC DD CB 80 28
        SRA  (IX+-128),B        ; ACF0 DD CB 80 28
        sra  (ix+-1),b          ; ACF4 DD CB FF 28
        SRA  (IX+-1),B          ; ACF8 DD CB FF 28
        sra  (ix+0),b           ; ACFC DD CB 00 28
        SRA  (IX+0),B           ; AD00 DD CB 00 28
        sra  (ix+127),b         ; AD04 DD CB 7F 28
        SRA  (IX+127),B         ; AD08 DD CB 7F 28
        sra  (ix+-128),c        ; AD0C DD CB 80 29
        SRA  (IX+-128),C        ; AD10 DD CB 80 29
        sra  (ix+-1),c          ; AD14 DD CB FF 29
        SRA  (IX+-1),C          ; AD18 DD CB FF 29
        sra  (ix+0),c           ; AD1C DD CB 00 29
        SRA  (IX+0),C           ; AD20 DD CB 00 29
        sra  (ix+127),c         ; AD24 DD CB 7F 29
        SRA  (IX+127),C         ; AD28 DD CB 7F 29
        sra  (ix+-128),d        ; AD2C DD CB 80 2A
        SRA  (IX+-128),D        ; AD30 DD CB 80 2A
        sra  (ix+-1),d          ; AD34 DD CB FF 2A
        SRA  (IX+-1),D          ; AD38 DD CB FF 2A
        sra  (ix+0),d           ; AD3C DD CB 00 2A
        SRA  (IX+0),D           ; AD40 DD CB 00 2A
        sra  (ix+127),d         ; AD44 DD CB 7F 2A
        SRA  (IX+127),D         ; AD48 DD CB 7F 2A
        sra  (ix+-128),e        ; AD4C DD CB 80 2B
        SRA  (IX+-128),E        ; AD50 DD CB 80 2B
        sra  (ix+-1),e          ; AD54 DD CB FF 2B
        SRA  (IX+-1),E          ; AD58 DD CB FF 2B
        sra  (ix+0),e           ; AD5C DD CB 00 2B
        SRA  (IX+0),E           ; AD60 DD CB 00 2B
        sra  (ix+127),e         ; AD64 DD CB 7F 2B
        SRA  (IX+127),E         ; AD68 DD CB 7F 2B
        sra  (ix+-128),h        ; AD6C DD CB 80 2C
        SRA  (IX+-128),H        ; AD70 DD CB 80 2C
        sra  (ix+-1),h          ; AD74 DD CB FF 2C
        SRA  (IX+-1),H          ; AD78 DD CB FF 2C
        sra  (ix+0),h           ; AD7C DD CB 00 2C
        SRA  (IX+0),H           ; AD80 DD CB 00 2C
        sra  (ix+127),h         ; AD84 DD CB 7F 2C
        SRA  (IX+127),H         ; AD88 DD CB 7F 2C
        sra  (ix+-128),l        ; AD8C DD CB 80 2D
        SRA  (IX+-128),L        ; AD90 DD CB 80 2D
        sra  (ix+-1),l          ; AD94 DD CB FF 2D
        SRA  (IX+-1),L          ; AD98 DD CB FF 2D
        sra  (ix+0),l           ; AD9C DD CB 00 2D
        SRA  (IX+0),L           ; ADA0 DD CB 00 2D
        sra  (ix+127),l         ; ADA4 DD CB 7F 2D
        SRA  (IX+127),L         ; ADA8 DD CB 7F 2D
        sra  (iy+-128)          ; ADAC FD CB 80 2E
        SRA  (IY+-128)          ; ADB0 FD CB 80 2E
        sra  (iy+-1)            ; ADB4 FD CB FF 2E
        SRA  (IY+-1)            ; ADB8 FD CB FF 2E
        sra  (iy+0)             ; ADBC FD CB 00 2E
        SRA  (IY+0)             ; ADC0 FD CB 00 2E
        sra  (iy+127)           ; ADC4 FD CB 7F 2E
        SRA  (IY+127)           ; ADC8 FD CB 7F 2E
        sra  (iy+-128),a        ; ADCC FD CB 80 2F
        SRA  (IY+-128),A        ; ADD0 FD CB 80 2F
        sra  (iy+-1),a          ; ADD4 FD CB FF 2F
        SRA  (IY+-1),A          ; ADD8 FD CB FF 2F
        sra  (iy+0),a           ; ADDC FD CB 00 2F
        SRA  (IY+0),A           ; ADE0 FD CB 00 2F
        sra  (iy+127),a         ; ADE4 FD CB 7F 2F
        SRA  (IY+127),A         ; ADE8 FD CB 7F 2F
        sra  (iy+-128),b        ; ADEC FD CB 80 28
        SRA  (IY+-128),B        ; ADF0 FD CB 80 28
        sra  (iy+-1),b          ; ADF4 FD CB FF 28
        SRA  (IY+-1),B          ; ADF8 FD CB FF 28
        sra  (iy+0),b           ; ADFC FD CB 00 28
        SRA  (IY+0),B           ; AE00 FD CB 00 28
        sra  (iy+127),b         ; AE04 FD CB 7F 28
        SRA  (IY+127),B         ; AE08 FD CB 7F 28
        sra  (iy+-128),c        ; AE0C FD CB 80 29
        SRA  (IY+-128),C        ; AE10 FD CB 80 29
        sra  (iy+-1),c          ; AE14 FD CB FF 29
        SRA  (IY+-1),C          ; AE18 FD CB FF 29
        sra  (iy+0),c           ; AE1C FD CB 00 29
        SRA  (IY+0),C           ; AE20 FD CB 00 29
        sra  (iy+127),c         ; AE24 FD CB 7F 29
        SRA  (IY+127),C         ; AE28 FD CB 7F 29
        sra  (iy+-128),d        ; AE2C FD CB 80 2A
        SRA  (IY+-128),D        ; AE30 FD CB 80 2A
        sra  (iy+-1),d          ; AE34 FD CB FF 2A
        SRA  (IY+-1),D          ; AE38 FD CB FF 2A
        sra  (iy+0),d           ; AE3C FD CB 00 2A
        SRA  (IY+0),D           ; AE40 FD CB 00 2A
        sra  (iy+127),d         ; AE44 FD CB 7F 2A
        SRA  (IY+127),D         ; AE48 FD CB 7F 2A
        sra  (iy+-128),e        ; AE4C FD CB 80 2B
        SRA  (IY+-128),E        ; AE50 FD CB 80 2B
        sra  (iy+-1),e          ; AE54 FD CB FF 2B
        SRA  (IY+-1),E          ; AE58 FD CB FF 2B
        sra  (iy+0),e           ; AE5C FD CB 00 2B
        SRA  (IY+0),E           ; AE60 FD CB 00 2B
        sra  (iy+127),e         ; AE64 FD CB 7F 2B
        SRA  (IY+127),E         ; AE68 FD CB 7F 2B
        sra  (iy+-128),h        ; AE6C FD CB 80 2C
        SRA  (IY+-128),H        ; AE70 FD CB 80 2C
        sra  (iy+-1),h          ; AE74 FD CB FF 2C
        SRA  (IY+-1),H          ; AE78 FD CB FF 2C
        sra  (iy+0),h           ; AE7C FD CB 00 2C
        SRA  (IY+0),H           ; AE80 FD CB 00 2C
        sra  (iy+127),h         ; AE84 FD CB 7F 2C
        SRA  (IY+127),H         ; AE88 FD CB 7F 2C
        sra  (iy+-128),l        ; AE8C FD CB 80 2D
        SRA  (IY+-128),L        ; AE90 FD CB 80 2D
        sra  (iy+-1),l          ; AE94 FD CB FF 2D
        SRA  (IY+-1),L          ; AE98 FD CB FF 2D
        sra  (iy+0),l           ; AE9C FD CB 00 2D
        SRA  (IY+0),L           ; AEA0 FD CB 00 2D
        sra  (iy+127),l         ; AEA4 FD CB 7F 2D
        SRA  (IY+127),L         ; AEA8 FD CB 7F 2D
        sra  [hl]               ; AEAC CB 2E
        SRA  [HL]               ; AEAE CB 2E
        sra  [ix+-128]          ; AEB0 DD CB 80 2E
        SRA  [IX+-128]          ; AEB4 DD CB 80 2E
        sra  [ix+-1]            ; AEB8 DD CB FF 2E
        SRA  [IX+-1]            ; AEBC DD CB FF 2E
        sra  [ix+0]             ; AEC0 DD CB 00 2E
        SRA  [IX+0]             ; AEC4 DD CB 00 2E
        sra  [ix+127]           ; AEC8 DD CB 7F 2E
        SRA  [IX+127]           ; AECC DD CB 7F 2E
        sra  [ix+-128],a        ; AED0 DD CB 80 2F
        SRA  [IX+-128],A        ; AED4 DD CB 80 2F
        sra  [ix+-1],a          ; AED8 DD CB FF 2F
        SRA  [IX+-1],A          ; AEDC DD CB FF 2F
        sra  [ix+0],a           ; AEE0 DD CB 00 2F
        SRA  [IX+0],A           ; AEE4 DD CB 00 2F
        sra  [ix+127],a         ; AEE8 DD CB 7F 2F
        SRA  [IX+127],A         ; AEEC DD CB 7F 2F
        sra  [ix+-128],b        ; AEF0 DD CB 80 28
        SRA  [IX+-128],B        ; AEF4 DD CB 80 28
        sra  [ix+-1],b          ; AEF8 DD CB FF 28
        SRA  [IX+-1],B          ; AEFC DD CB FF 28
        sra  [ix+0],b           ; AF00 DD CB 00 28
        SRA  [IX+0],B           ; AF04 DD CB 00 28
        sra  [ix+127],b         ; AF08 DD CB 7F 28
        SRA  [IX+127],B         ; AF0C DD CB 7F 28
        sra  [ix+-128],c        ; AF10 DD CB 80 29
        SRA  [IX+-128],C        ; AF14 DD CB 80 29
        sra  [ix+-1],c          ; AF18 DD CB FF 29
        SRA  [IX+-1],C          ; AF1C DD CB FF 29
        sra  [ix+0],c           ; AF20 DD CB 00 29
        SRA  [IX+0],C           ; AF24 DD CB 00 29
        sra  [ix+127],c         ; AF28 DD CB 7F 29
        SRA  [IX+127],C         ; AF2C DD CB 7F 29
        sra  [ix+-128],d        ; AF30 DD CB 80 2A
        SRA  [IX+-128],D        ; AF34 DD CB 80 2A
        sra  [ix+-1],d          ; AF38 DD CB FF 2A
        SRA  [IX+-1],D          ; AF3C DD CB FF 2A
        sra  [ix+0],d           ; AF40 DD CB 00 2A
        SRA  [IX+0],D           ; AF44 DD CB 00 2A
        sra  [ix+127],d         ; AF48 DD CB 7F 2A
        SRA  [IX+127],D         ; AF4C DD CB 7F 2A
        sra  [ix+-128],e        ; AF50 DD CB 80 2B
        SRA  [IX+-128],E        ; AF54 DD CB 80 2B
        sra  [ix+-1],e          ; AF58 DD CB FF 2B
        SRA  [IX+-1],E          ; AF5C DD CB FF 2B
        sra  [ix+0],e           ; AF60 DD CB 00 2B
        SRA  [IX+0],E           ; AF64 DD CB 00 2B
        sra  [ix+127],e         ; AF68 DD CB 7F 2B
        SRA  [IX+127],E         ; AF6C DD CB 7F 2B
        sra  [ix+-128],h        ; AF70 DD CB 80 2C
        SRA  [IX+-128],H        ; AF74 DD CB 80 2C
        sra  [ix+-1],h          ; AF78 DD CB FF 2C
        SRA  [IX+-1],H          ; AF7C DD CB FF 2C
        sra  [ix+0],h           ; AF80 DD CB 00 2C
        SRA  [IX+0],H           ; AF84 DD CB 00 2C
        sra  [ix+127],h         ; AF88 DD CB 7F 2C
        SRA  [IX+127],H         ; AF8C DD CB 7F 2C
        sra  [ix+-128],l        ; AF90 DD CB 80 2D
        SRA  [IX+-128],L        ; AF94 DD CB 80 2D
        sra  [ix+-1],l          ; AF98 DD CB FF 2D
        SRA  [IX+-1],L          ; AF9C DD CB FF 2D
        sra  [ix+0],l           ; AFA0 DD CB 00 2D
        SRA  [IX+0],L           ; AFA4 DD CB 00 2D
        sra  [ix+127],l         ; AFA8 DD CB 7F 2D
        SRA  [IX+127],L         ; AFAC DD CB 7F 2D
        sra  [iy+-128]          ; AFB0 FD CB 80 2E
        SRA  [IY+-128]          ; AFB4 FD CB 80 2E
        sra  [iy+-1]            ; AFB8 FD CB FF 2E
        SRA  [IY+-1]            ; AFBC FD CB FF 2E
        sra  [iy+0]             ; AFC0 FD CB 00 2E
        SRA  [IY+0]             ; AFC4 FD CB 00 2E
        sra  [iy+127]           ; AFC8 FD CB 7F 2E
        SRA  [IY+127]           ; AFCC FD CB 7F 2E
        sra  [iy+-128],a        ; AFD0 FD CB 80 2F
        SRA  [IY+-128],A        ; AFD4 FD CB 80 2F
        sra  [iy+-1],a          ; AFD8 FD CB FF 2F
        SRA  [IY+-1],A          ; AFDC FD CB FF 2F
        sra  [iy+0],a           ; AFE0 FD CB 00 2F
        SRA  [IY+0],A           ; AFE4 FD CB 00 2F
        sra  [iy+127],a         ; AFE8 FD CB 7F 2F
        SRA  [IY+127],A         ; AFEC FD CB 7F 2F
        sra  [iy+-128],b        ; AFF0 FD CB 80 28
        SRA  [IY+-128],B        ; AFF4 FD CB 80 28
        sra  [iy+-1],b          ; AFF8 FD CB FF 28
        SRA  [IY+-1],B          ; AFFC FD CB FF 28
        sra  [iy+0],b           ; B000 FD CB 00 28
        SRA  [IY+0],B           ; B004 FD CB 00 28
        sra  [iy+127],b         ; B008 FD CB 7F 28
        SRA  [IY+127],B         ; B00C FD CB 7F 28
        sra  [iy+-128],c        ; B010 FD CB 80 29
        SRA  [IY+-128],C        ; B014 FD CB 80 29
        sra  [iy+-1],c          ; B018 FD CB FF 29
        SRA  [IY+-1],C          ; B01C FD CB FF 29
        sra  [iy+0],c           ; B020 FD CB 00 29
        SRA  [IY+0],C           ; B024 FD CB 00 29
        sra  [iy+127],c         ; B028 FD CB 7F 29
        SRA  [IY+127],C         ; B02C FD CB 7F 29
        sra  [iy+-128],d        ; B030 FD CB 80 2A
        SRA  [IY+-128],D        ; B034 FD CB 80 2A
        sra  [iy+-1],d          ; B038 FD CB FF 2A
        SRA  [IY+-1],D          ; B03C FD CB FF 2A
        sra  [iy+0],d           ; B040 FD CB 00 2A
        SRA  [IY+0],D           ; B044 FD CB 00 2A
        sra  [iy+127],d         ; B048 FD CB 7F 2A
        SRA  [IY+127],D         ; B04C FD CB 7F 2A
        sra  [iy+-128],e        ; B050 FD CB 80 2B
        SRA  [IY+-128],E        ; B054 FD CB 80 2B
        sra  [iy+-1],e          ; B058 FD CB FF 2B
        SRA  [IY+-1],E          ; B05C FD CB FF 2B
        sra  [iy+0],e           ; B060 FD CB 00 2B
        SRA  [IY+0],E           ; B064 FD CB 00 2B
        sra  [iy+127],e         ; B068 FD CB 7F 2B
        SRA  [IY+127],E         ; B06C FD CB 7F 2B
        sra  [iy+-128],h        ; B070 FD CB 80 2C
        SRA  [IY+-128],H        ; B074 FD CB 80 2C
        sra  [iy+-1],h          ; B078 FD CB FF 2C
        SRA  [IY+-1],H          ; B07C FD CB FF 2C
        sra  [iy+0],h           ; B080 FD CB 00 2C
        SRA  [IY+0],H           ; B084 FD CB 00 2C
        sra  [iy+127],h         ; B088 FD CB 7F 2C
        SRA  [IY+127],H         ; B08C FD CB 7F 2C
        sra  [iy+-128],l        ; B090 FD CB 80 2D
        SRA  [IY+-128],L        ; B094 FD CB 80 2D
        sra  [iy+-1],l          ; B098 FD CB FF 2D
        SRA  [IY+-1],L          ; B09C FD CB FF 2D
        sra  [iy+0],l           ; B0A0 FD CB 00 2D
        SRA  [IY+0],L           ; B0A4 FD CB 00 2D
        sra  [iy+127],l         ; B0A8 FD CB 7F 2D
        SRA  [IY+127],L         ; B0AC FD CB 7F 2D
        sra  a                  ; B0B0 CB 2F
        SRA  A                  ; B0B2 CB 2F
        sra  b                  ; B0B4 CB 28
        SRA  B                  ; B0B6 CB 28
        sra  bc                 ; B0B8 CB 28 CB 19
        SRA  BC                 ; B0BC CB 28 CB 19
        sra  c                  ; B0C0 CB 29
        SRA  C                  ; B0C2 CB 29
        sra  d                  ; B0C4 CB 2A
        SRA  D                  ; B0C6 CB 2A
        sra  de                 ; B0C8 CB 2A CB 1B
        SRA  DE                 ; B0CC CB 2A CB 1B
        sra  e                  ; B0D0 CB 2B
        SRA  E                  ; B0D2 CB 2B
        sra  h                  ; B0D4 CB 2C
        SRA  H                  ; B0D6 CB 2C
        sra  hl                 ; B0D8 CB 2C CB 1D
        SRA  HL                 ; B0DC CB 2C CB 1D
        sra  l                  ; B0E0 CB 2D
        SRA  L                  ; B0E2 CB 2D
        srl  (hl)               ; B0E4 CB 3E
        SRL  (HL)               ; B0E6 CB 3E
        srl  (ix+-128)          ; B0E8 DD CB 80 3E
        SRL  (IX+-128)          ; B0EC DD CB 80 3E
        srl  (ix+-1)            ; B0F0 DD CB FF 3E
        SRL  (IX+-1)            ; B0F4 DD CB FF 3E
        srl  (ix+0)             ; B0F8 DD CB 00 3E
        SRL  (IX+0)             ; B0FC DD CB 00 3E
        srl  (ix+127)           ; B100 DD CB 7F 3E
        SRL  (IX+127)           ; B104 DD CB 7F 3E
        srl  (ix+-128),a        ; B108 DD CB 80 3F
        SRL  (IX+-128),A        ; B10C DD CB 80 3F
        srl  (ix+-1),a          ; B110 DD CB FF 3F
        SRL  (IX+-1),A          ; B114 DD CB FF 3F
        srl  (ix+0),a           ; B118 DD CB 00 3F
        SRL  (IX+0),A           ; B11C DD CB 00 3F
        srl  (ix+127),a         ; B120 DD CB 7F 3F
        SRL  (IX+127),A         ; B124 DD CB 7F 3F
        srl  (ix+-128),b        ; B128 DD CB 80 38
        SRL  (IX+-128),B        ; B12C DD CB 80 38
        srl  (ix+-1),b          ; B130 DD CB FF 38
        SRL  (IX+-1),B          ; B134 DD CB FF 38
        srl  (ix+0),b           ; B138 DD CB 00 38
        SRL  (IX+0),B           ; B13C DD CB 00 38
        srl  (ix+127),b         ; B140 DD CB 7F 38
        SRL  (IX+127),B         ; B144 DD CB 7F 38
        srl  (ix+-128),c        ; B148 DD CB 80 39
        SRL  (IX+-128),C        ; B14C DD CB 80 39
        srl  (ix+-1),c          ; B150 DD CB FF 39
        SRL  (IX+-1),C          ; B154 DD CB FF 39
        srl  (ix+0),c           ; B158 DD CB 00 39
        SRL  (IX+0),C           ; B15C DD CB 00 39
        srl  (ix+127),c         ; B160 DD CB 7F 39
        SRL  (IX+127),C         ; B164 DD CB 7F 39
        srl  (ix+-128),d        ; B168 DD CB 80 3A
        SRL  (IX+-128),D        ; B16C DD CB 80 3A
        srl  (ix+-1),d          ; B170 DD CB FF 3A
        SRL  (IX+-1),D          ; B174 DD CB FF 3A
        srl  (ix+0),d           ; B178 DD CB 00 3A
        SRL  (IX+0),D           ; B17C DD CB 00 3A
        srl  (ix+127),d         ; B180 DD CB 7F 3A
        SRL  (IX+127),D         ; B184 DD CB 7F 3A
        srl  (ix+-128),e        ; B188 DD CB 80 3B
        SRL  (IX+-128),E        ; B18C DD CB 80 3B
        srl  (ix+-1),e          ; B190 DD CB FF 3B
        SRL  (IX+-1),E          ; B194 DD CB FF 3B
        srl  (ix+0),e           ; B198 DD CB 00 3B
        SRL  (IX+0),E           ; B19C DD CB 00 3B
        srl  (ix+127),e         ; B1A0 DD CB 7F 3B
        SRL  (IX+127),E         ; B1A4 DD CB 7F 3B
        srl  (ix+-128),h        ; B1A8 DD CB 80 3C
        SRL  (IX+-128),H        ; B1AC DD CB 80 3C
        srl  (ix+-1),h          ; B1B0 DD CB FF 3C
        SRL  (IX+-1),H          ; B1B4 DD CB FF 3C
        srl  (ix+0),h           ; B1B8 DD CB 00 3C
        SRL  (IX+0),H           ; B1BC DD CB 00 3C
        srl  (ix+127),h         ; B1C0 DD CB 7F 3C
        SRL  (IX+127),H         ; B1C4 DD CB 7F 3C
        srl  (ix+-128),l        ; B1C8 DD CB 80 3D
        SRL  (IX+-128),L        ; B1CC DD CB 80 3D
        srl  (ix+-1),l          ; B1D0 DD CB FF 3D
        SRL  (IX+-1),L          ; B1D4 DD CB FF 3D
        srl  (ix+0),l           ; B1D8 DD CB 00 3D
        SRL  (IX+0),L           ; B1DC DD CB 00 3D
        srl  (ix+127),l         ; B1E0 DD CB 7F 3D
        SRL  (IX+127),L         ; B1E4 DD CB 7F 3D
        srl  (iy+-128)          ; B1E8 FD CB 80 3E
        SRL  (IY+-128)          ; B1EC FD CB 80 3E
        srl  (iy+-1)            ; B1F0 FD CB FF 3E
        SRL  (IY+-1)            ; B1F4 FD CB FF 3E
        srl  (iy+0)             ; B1F8 FD CB 00 3E
        SRL  (IY+0)             ; B1FC FD CB 00 3E
        srl  (iy+127)           ; B200 FD CB 7F 3E
        SRL  (IY+127)           ; B204 FD CB 7F 3E
        srl  (iy+-128),a        ; B208 FD CB 80 3F
        SRL  (IY+-128),A        ; B20C FD CB 80 3F
        srl  (iy+-1),a          ; B210 FD CB FF 3F
        SRL  (IY+-1),A          ; B214 FD CB FF 3F
        srl  (iy+0),a           ; B218 FD CB 00 3F
        SRL  (IY+0),A           ; B21C FD CB 00 3F
        srl  (iy+127),a         ; B220 FD CB 7F 3F
        SRL  (IY+127),A         ; B224 FD CB 7F 3F
        srl  (iy+-128),b        ; B228 FD CB 80 38
        SRL  (IY+-128),B        ; B22C FD CB 80 38
        srl  (iy+-1),b          ; B230 FD CB FF 38
        SRL  (IY+-1),B          ; B234 FD CB FF 38
        srl  (iy+0),b           ; B238 FD CB 00 38
        SRL  (IY+0),B           ; B23C FD CB 00 38
        srl  (iy+127),b         ; B240 FD CB 7F 38
        SRL  (IY+127),B         ; B244 FD CB 7F 38
        srl  (iy+-128),c        ; B248 FD CB 80 39
        SRL  (IY+-128),C        ; B24C FD CB 80 39
        srl  (iy+-1),c          ; B250 FD CB FF 39
        SRL  (IY+-1),C          ; B254 FD CB FF 39
        srl  (iy+0),c           ; B258 FD CB 00 39
        SRL  (IY+0),C           ; B25C FD CB 00 39
        srl  (iy+127),c         ; B260 FD CB 7F 39
        SRL  (IY+127),C         ; B264 FD CB 7F 39
        srl  (iy+-128),d        ; B268 FD CB 80 3A
        SRL  (IY+-128),D        ; B26C FD CB 80 3A
        srl  (iy+-1),d          ; B270 FD CB FF 3A
        SRL  (IY+-1),D          ; B274 FD CB FF 3A
        srl  (iy+0),d           ; B278 FD CB 00 3A
        SRL  (IY+0),D           ; B27C FD CB 00 3A
        srl  (iy+127),d         ; B280 FD CB 7F 3A
        SRL  (IY+127),D         ; B284 FD CB 7F 3A
        srl  (iy+-128),e        ; B288 FD CB 80 3B
        SRL  (IY+-128),E        ; B28C FD CB 80 3B
        srl  (iy+-1),e          ; B290 FD CB FF 3B
        SRL  (IY+-1),E          ; B294 FD CB FF 3B
        srl  (iy+0),e           ; B298 FD CB 00 3B
        SRL  (IY+0),E           ; B29C FD CB 00 3B
        srl  (iy+127),e         ; B2A0 FD CB 7F 3B
        SRL  (IY+127),E         ; B2A4 FD CB 7F 3B
        srl  (iy+-128),h        ; B2A8 FD CB 80 3C
        SRL  (IY+-128),H        ; B2AC FD CB 80 3C
        srl  (iy+-1),h          ; B2B0 FD CB FF 3C
        SRL  (IY+-1),H          ; B2B4 FD CB FF 3C
        srl  (iy+0),h           ; B2B8 FD CB 00 3C
        SRL  (IY+0),H           ; B2BC FD CB 00 3C
        srl  (iy+127),h         ; B2C0 FD CB 7F 3C
        SRL  (IY+127),H         ; B2C4 FD CB 7F 3C
        srl  (iy+-128),l        ; B2C8 FD CB 80 3D
        SRL  (IY+-128),L        ; B2CC FD CB 80 3D
        srl  (iy+-1),l          ; B2D0 FD CB FF 3D
        SRL  (IY+-1),L          ; B2D4 FD CB FF 3D
        srl  (iy+0),l           ; B2D8 FD CB 00 3D
        SRL  (IY+0),L           ; B2DC FD CB 00 3D
        srl  (iy+127),l         ; B2E0 FD CB 7F 3D
        SRL  (IY+127),L         ; B2E4 FD CB 7F 3D
        srl  [hl]               ; B2E8 CB 3E
        SRL  [HL]               ; B2EA CB 3E
        srl  [ix+-128]          ; B2EC DD CB 80 3E
        SRL  [IX+-128]          ; B2F0 DD CB 80 3E
        srl  [ix+-1]            ; B2F4 DD CB FF 3E
        SRL  [IX+-1]            ; B2F8 DD CB FF 3E
        srl  [ix+0]             ; B2FC DD CB 00 3E
        SRL  [IX+0]             ; B300 DD CB 00 3E
        srl  [ix+127]           ; B304 DD CB 7F 3E
        SRL  [IX+127]           ; B308 DD CB 7F 3E
        srl  [ix+-128],a        ; B30C DD CB 80 3F
        SRL  [IX+-128],A        ; B310 DD CB 80 3F
        srl  [ix+-1],a          ; B314 DD CB FF 3F
        SRL  [IX+-1],A          ; B318 DD CB FF 3F
        srl  [ix+0],a           ; B31C DD CB 00 3F
        SRL  [IX+0],A           ; B320 DD CB 00 3F
        srl  [ix+127],a         ; B324 DD CB 7F 3F
        SRL  [IX+127],A         ; B328 DD CB 7F 3F
        srl  [ix+-128],b        ; B32C DD CB 80 38
        SRL  [IX+-128],B        ; B330 DD CB 80 38
        srl  [ix+-1],b          ; B334 DD CB FF 38
        SRL  [IX+-1],B          ; B338 DD CB FF 38
        srl  [ix+0],b           ; B33C DD CB 00 38
        SRL  [IX+0],B           ; B340 DD CB 00 38
        srl  [ix+127],b         ; B344 DD CB 7F 38
        SRL  [IX+127],B         ; B348 DD CB 7F 38
        srl  [ix+-128],c        ; B34C DD CB 80 39
        SRL  [IX+-128],C        ; B350 DD CB 80 39
        srl  [ix+-1],c          ; B354 DD CB FF 39
        SRL  [IX+-1],C          ; B358 DD CB FF 39
        srl  [ix+0],c           ; B35C DD CB 00 39
        SRL  [IX+0],C           ; B360 DD CB 00 39
        srl  [ix+127],c         ; B364 DD CB 7F 39
        SRL  [IX+127],C         ; B368 DD CB 7F 39
        srl  [ix+-128],d        ; B36C DD CB 80 3A
        SRL  [IX+-128],D        ; B370 DD CB 80 3A
        srl  [ix+-1],d          ; B374 DD CB FF 3A
        SRL  [IX+-1],D          ; B378 DD CB FF 3A
        srl  [ix+0],d           ; B37C DD CB 00 3A
        SRL  [IX+0],D           ; B380 DD CB 00 3A
        srl  [ix+127],d         ; B384 DD CB 7F 3A
        SRL  [IX+127],D         ; B388 DD CB 7F 3A
        srl  [ix+-128],e        ; B38C DD CB 80 3B
        SRL  [IX+-128],E        ; B390 DD CB 80 3B
        srl  [ix+-1],e          ; B394 DD CB FF 3B
        SRL  [IX+-1],E          ; B398 DD CB FF 3B
        srl  [ix+0],e           ; B39C DD CB 00 3B
        SRL  [IX+0],E           ; B3A0 DD CB 00 3B
        srl  [ix+127],e         ; B3A4 DD CB 7F 3B
        SRL  [IX+127],E         ; B3A8 DD CB 7F 3B
        srl  [ix+-128],h        ; B3AC DD CB 80 3C
        SRL  [IX+-128],H        ; B3B0 DD CB 80 3C
        srl  [ix+-1],h          ; B3B4 DD CB FF 3C
        SRL  [IX+-1],H          ; B3B8 DD CB FF 3C
        srl  [ix+0],h           ; B3BC DD CB 00 3C
        SRL  [IX+0],H           ; B3C0 DD CB 00 3C
        srl  [ix+127],h         ; B3C4 DD CB 7F 3C
        SRL  [IX+127],H         ; B3C8 DD CB 7F 3C
        srl  [ix+-128],l        ; B3CC DD CB 80 3D
        SRL  [IX+-128],L        ; B3D0 DD CB 80 3D
        srl  [ix+-1],l          ; B3D4 DD CB FF 3D
        SRL  [IX+-1],L          ; B3D8 DD CB FF 3D
        srl  [ix+0],l           ; B3DC DD CB 00 3D
        SRL  [IX+0],L           ; B3E0 DD CB 00 3D
        srl  [ix+127],l         ; B3E4 DD CB 7F 3D
        SRL  [IX+127],L         ; B3E8 DD CB 7F 3D
        srl  [iy+-128]          ; B3EC FD CB 80 3E
        SRL  [IY+-128]          ; B3F0 FD CB 80 3E
        srl  [iy+-1]            ; B3F4 FD CB FF 3E
        SRL  [IY+-1]            ; B3F8 FD CB FF 3E
        srl  [iy+0]             ; B3FC FD CB 00 3E
        SRL  [IY+0]             ; B400 FD CB 00 3E
        srl  [iy+127]           ; B404 FD CB 7F 3E
        SRL  [IY+127]           ; B408 FD CB 7F 3E
        srl  [iy+-128],a        ; B40C FD CB 80 3F
        SRL  [IY+-128],A        ; B410 FD CB 80 3F
        srl  [iy+-1],a          ; B414 FD CB FF 3F
        SRL  [IY+-1],A          ; B418 FD CB FF 3F
        srl  [iy+0],a           ; B41C FD CB 00 3F
        SRL  [IY+0],A           ; B420 FD CB 00 3F
        srl  [iy+127],a         ; B424 FD CB 7F 3F
        SRL  [IY+127],A         ; B428 FD CB 7F 3F
        srl  [iy+-128],b        ; B42C FD CB 80 38
        SRL  [IY+-128],B        ; B430 FD CB 80 38
        srl  [iy+-1],b          ; B434 FD CB FF 38
        SRL  [IY+-1],B          ; B438 FD CB FF 38
        srl  [iy+0],b           ; B43C FD CB 00 38
        SRL  [IY+0],B           ; B440 FD CB 00 38
        srl  [iy+127],b         ; B444 FD CB 7F 38
        SRL  [IY+127],B         ; B448 FD CB 7F 38
        srl  [iy+-128],c        ; B44C FD CB 80 39
        SRL  [IY+-128],C        ; B450 FD CB 80 39
        srl  [iy+-1],c          ; B454 FD CB FF 39
        SRL  [IY+-1],C          ; B458 FD CB FF 39
        srl  [iy+0],c           ; B45C FD CB 00 39
        SRL  [IY+0],C           ; B460 FD CB 00 39
        srl  [iy+127],c         ; B464 FD CB 7F 39
        SRL  [IY+127],C         ; B468 FD CB 7F 39
        srl  [iy+-128],d        ; B46C FD CB 80 3A
        SRL  [IY+-128],D        ; B470 FD CB 80 3A
        srl  [iy+-1],d          ; B474 FD CB FF 3A
        SRL  [IY+-1],D          ; B478 FD CB FF 3A
        srl  [iy+0],d           ; B47C FD CB 00 3A
        SRL  [IY+0],D           ; B480 FD CB 00 3A
        srl  [iy+127],d         ; B484 FD CB 7F 3A
        SRL  [IY+127],D         ; B488 FD CB 7F 3A
        srl  [iy+-128],e        ; B48C FD CB 80 3B
        SRL  [IY+-128],E        ; B490 FD CB 80 3B
        srl  [iy+-1],e          ; B494 FD CB FF 3B
        SRL  [IY+-1],E          ; B498 FD CB FF 3B
        srl  [iy+0],e           ; B49C FD CB 00 3B
        SRL  [IY+0],E           ; B4A0 FD CB 00 3B
        srl  [iy+127],e         ; B4A4 FD CB 7F 3B
        SRL  [IY+127],E         ; B4A8 FD CB 7F 3B
        srl  [iy+-128],h        ; B4AC FD CB 80 3C
        SRL  [IY+-128],H        ; B4B0 FD CB 80 3C
        srl  [iy+-1],h          ; B4B4 FD CB FF 3C
        SRL  [IY+-1],H          ; B4B8 FD CB FF 3C
        srl  [iy+0],h           ; B4BC FD CB 00 3C
        SRL  [IY+0],H           ; B4C0 FD CB 00 3C
        srl  [iy+127],h         ; B4C4 FD CB 7F 3C
        SRL  [IY+127],H         ; B4C8 FD CB 7F 3C
        srl  [iy+-128],l        ; B4CC FD CB 80 3D
        SRL  [IY+-128],L        ; B4D0 FD CB 80 3D
        srl  [iy+-1],l          ; B4D4 FD CB FF 3D
        SRL  [IY+-1],L          ; B4D8 FD CB FF 3D
        srl  [iy+0],l           ; B4DC FD CB 00 3D
        SRL  [IY+0],L           ; B4E0 FD CB 00 3D
        srl  [iy+127],l         ; B4E4 FD CB 7F 3D
        SRL  [IY+127],L         ; B4E8 FD CB 7F 3D
        srl  a                  ; B4EC CB 3F
        SRL  A                  ; B4EE CB 3F
        srl  b                  ; B4F0 CB 38
        SRL  B                  ; B4F2 CB 38
        srl  bc                 ; B4F4 CB 38 CB 19
        SRL  BC                 ; B4F8 CB 38 CB 19
        srl  c                  ; B4FC CB 39
        SRL  C                  ; B4FE CB 39
        srl  d                  ; B500 CB 3A
        SRL  D                  ; B502 CB 3A
        srl  de                 ; B504 CB 3A CB 1B
        SRL  DE                 ; B508 CB 3A CB 1B
        srl  e                  ; B50C CB 3B
        SRL  E                  ; B50E CB 3B
        srl  h                  ; B510 CB 3C
        SRL  H                  ; B512 CB 3C
        srl  hl                 ; B514 CB 3C CB 1D
        SRL  HL                 ; B518 CB 3C CB 1D
        srl  l                  ; B51C CB 3D
        SRL  L                  ; B51E CB 3D
        stop                    ; B520 DD DD 00
        STOP                    ; B523 DD DD 00
        sub  (hl)               ; B526 96
        SUB  (HL)               ; B527 96
        sub  (ix+-128)          ; B528 DD 96 80
        SUB  (IX+-128)          ; B52B DD 96 80
        sub  (ix+-1)            ; B52E DD 96 FF
        SUB  (IX+-1)            ; B531 DD 96 FF
        sub  (ix+0)             ; B534 DD 96 00
        SUB  (IX+0)             ; B537 DD 96 00
        sub  (ix+127)           ; B53A DD 96 7F
        SUB  (IX+127)           ; B53D DD 96 7F
        sub  (iy+-128)          ; B540 FD 96 80
        SUB  (IY+-128)          ; B543 FD 96 80
        sub  (iy+-1)            ; B546 FD 96 FF
        SUB  (IY+-1)            ; B549 FD 96 FF
        sub  (iy+0)             ; B54C FD 96 00
        SUB  (IY+0)             ; B54F FD 96 00
        sub  (iy+127)           ; B552 FD 96 7F
        SUB  (IY+127)           ; B555 FD 96 7F
        sub  -128               ; B558 D6 80
        SUB  -128               ; B55A D6 80
        sub  -1                 ; B55C D6 FF
        SUB  -1                 ; B55E D6 FF
        sub  0                  ; B560 D6 00
        SUB  0                  ; B562 D6 00
        sub  127                ; B564 D6 7F
        SUB  127                ; B566 D6 7F
        sub  255                ; B568 D6 FF
        SUB  255                ; B56A D6 FF
        sub  [hl]               ; B56C 96
        SUB  [HL]               ; B56D 96
        sub  [ix+-128]          ; B56E DD 96 80
        SUB  [IX+-128]          ; B571 DD 96 80
        sub  [ix+-1]            ; B574 DD 96 FF
        SUB  [IX+-1]            ; B577 DD 96 FF
        sub  [ix+0]             ; B57A DD 96 00
        SUB  [IX+0]             ; B57D DD 96 00
        sub  [ix+127]           ; B580 DD 96 7F
        SUB  [IX+127]           ; B583 DD 96 7F
        sub  [iy+-128]          ; B586 FD 96 80
        SUB  [IY+-128]          ; B589 FD 96 80
        sub  [iy+-1]            ; B58C FD 96 FF
        SUB  [IY+-1]            ; B58F FD 96 FF
        sub  [iy+0]             ; B592 FD 96 00
        SUB  [IY+0]             ; B595 FD 96 00
        sub  [iy+127]           ; B598 FD 96 7F
        SUB  [IY+127]           ; B59B FD 96 7F
        sub  a                  ; B59E 97
        SUB  A                  ; B59F 97
        sub  b                  ; B5A0 90
        SUB  B                  ; B5A1 90
        sub  c                  ; B5A2 91
        SUB  C                  ; B5A3 91
        sub  d                  ; B5A4 92
        SUB  D                  ; B5A5 92
        sub  e                  ; B5A6 93
        SUB  E                  ; B5A7 93
        sub  h                  ; B5A8 94
        SUB  H                  ; B5A9 94
        sub  hl,bc              ; B5AA B7 ED 42
        SUB  HL,BC              ; B5AD B7 ED 42
        sub  hl,de              ; B5B0 B7 ED 52
        SUB  HL,DE              ; B5B3 B7 ED 52
        sub  hl,hl              ; B5B6 B7 ED 62
        SUB  HL,HL              ; B5B9 B7 ED 62
        sub  hl,sp              ; B5BC B7 ED 72
        SUB  HL,SP              ; B5BF B7 ED 72
        sub  hx                 ; B5C2 DD 94
        SUB  HX                 ; B5C4 DD 94
        sub  hy                 ; B5C6 FD 94
        SUB  HY                 ; B5C8 FD 94
        sub  ixh                ; B5CA DD 94
        SUB  IXH                ; B5CC DD 94
        sub  ixl                ; B5CE DD 95
        SUB  IXL                ; B5D0 DD 95
        sub  iyh                ; B5D2 FD 94
        SUB  IYH                ; B5D4 FD 94
        sub  iyl                ; B5D6 FD 95
        SUB  IYL                ; B5D8 FD 95
        sub  l                  ; B5DA 95
        SUB  L                  ; B5DB 95
        sub  lx                 ; B5DC DD 95
        SUB  LX                 ; B5DE DD 95
        sub  ly                 ; B5E0 FD 95
        SUB  LY                 ; B5E2 FD 95
        sub  xh                 ; B5E4 DD 94
        SUB  XH                 ; B5E6 DD 94
        sub  xl                 ; B5E8 DD 95
        SUB  XL                 ; B5EA DD 95
        sub  yh                 ; B5EC FD 94
        SUB  YH                 ; B5EE FD 94
        sub  yl                 ; B5F0 FD 95
        SUB  YL                 ; B5F2 FD 95
        xor  (hl)               ; B5F4 AE
        XOR  (HL)               ; B5F5 AE
        xor  (ix+-128)          ; B5F6 DD AE 80
        XOR  (IX+-128)          ; B5F9 DD AE 80
        xor  (ix+-1)            ; B5FC DD AE FF
        XOR  (IX+-1)            ; B5FF DD AE FF
        xor  (ix+0)             ; B602 DD AE 00
        XOR  (IX+0)             ; B605 DD AE 00
        xor  (ix+127)           ; B608 DD AE 7F
        XOR  (IX+127)           ; B60B DD AE 7F
        xor  (iy+-128)          ; B60E FD AE 80
        XOR  (IY+-128)          ; B611 FD AE 80
        xor  (iy+-1)            ; B614 FD AE FF
        XOR  (IY+-1)            ; B617 FD AE FF
        xor  (iy+0)             ; B61A FD AE 00
        XOR  (IY+0)             ; B61D FD AE 00
        xor  (iy+127)           ; B620 FD AE 7F
        XOR  (IY+127)           ; B623 FD AE 7F
        xor  -128               ; B626 EE 80
        XOR  -128               ; B628 EE 80
        xor  -1                 ; B62A EE FF
        XOR  -1                 ; B62C EE FF
        xor  0                  ; B62E EE 00
        XOR  0                  ; B630 EE 00
        xor  127                ; B632 EE 7F
        XOR  127                ; B634 EE 7F
        xor  255                ; B636 EE FF
        XOR  255                ; B638 EE FF
        xor  [hl]               ; B63A AE
        XOR  [HL]               ; B63B AE
        xor  [ix+-128]          ; B63C DD AE 80
        XOR  [IX+-128]          ; B63F DD AE 80
        xor  [ix+-1]            ; B642 DD AE FF
        XOR  [IX+-1]            ; B645 DD AE FF
        xor  [ix+0]             ; B648 DD AE 00
        XOR  [IX+0]             ; B64B DD AE 00
        xor  [ix+127]           ; B64E DD AE 7F
        XOR  [IX+127]           ; B651 DD AE 7F
        xor  [iy+-128]          ; B654 FD AE 80
        XOR  [IY+-128]          ; B657 FD AE 80
        xor  [iy+-1]            ; B65A FD AE FF
        XOR  [IY+-1]            ; B65D FD AE FF
        xor  [iy+0]             ; B660 FD AE 00
        XOR  [IY+0]             ; B663 FD AE 00
        xor  [iy+127]           ; B666 FD AE 7F
        XOR  [IY+127]           ; B669 FD AE 7F
        xor  a                  ; B66C AF
        XOR  A                  ; B66D AF
        xor  b                  ; B66E A8
        XOR  B                  ; B66F A8
        xor  c                  ; B670 A9
        XOR  C                  ; B671 A9
        xor  d                  ; B672 AA
        XOR  D                  ; B673 AA
        xor  e                  ; B674 AB
        XOR  E                  ; B675 AB
        xor  h                  ; B676 AC
        XOR  H                  ; B677 AC
        xor  hx                 ; B678 DD AC
        XOR  HX                 ; B67A DD AC
        xor  hy                 ; B67C FD AC
        XOR  HY                 ; B67E FD AC
        xor  ixh                ; B680 DD AC
        XOR  IXH                ; B682 DD AC
        xor  ixl                ; B684 DD AD
        XOR  IXL                ; B686 DD AD
        xor  iyh                ; B688 FD AC
        XOR  IYH                ; B68A FD AC
        xor  iyl                ; B68C FD AD
        XOR  IYL                ; B68E FD AD
        xor  l                  ; B690 AD
        XOR  L                  ; B691 AD
        xor  lx                 ; B692 DD AD
        XOR  LX                 ; B694 DD AD
        xor  ly                 ; B696 FD AD
        XOR  LY                 ; B698 FD AD
        xor  xh                 ; B69A DD AC
        XOR  XH                 ; B69C DD AC
        xor  xl                 ; B69E DD AD
        XOR  XL                 ; B6A0 DD AD
        xor  yh                 ; B6A2 FD AC
        XOR  YH                 ; B6A4 FD AC
        xor  yl                 ; B6A6 FD AD
        XOR  YL                 ; B6A8 FD AD
