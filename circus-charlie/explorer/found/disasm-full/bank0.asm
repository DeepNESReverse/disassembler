; bank 0 — PRG $00000-$03FFF, mapped at $C000-$FFFF

  C000  D8        CLD                           ; 00000 ×29
  C001  78        SEI                           ; 00001 ×29

loc_B0_C002:                    ; from 00005
  C002  AD 02 20  LDA $2002                     ; 00002 ×247254
  C005  10 FB     BPL loc_B0_C002               ; 00005 ×247254

loc_B0_C007:                    ; from 0000a
  C007  AD 02 20  LDA $2002                     ; 00007 ×123366
  C00A  10 FB     BPL loc_B0_C007               ; 0000A ×123366
  C00C  20 B8 C0  JSR sub_B0_C0B8               ; 0000C ×29
  C00F  A2 FF     LDX #$FF                      ; 0000F ×29
  C011  9A        TXS                           ; 00011 ×29
  C012  A2 10     LDX #$10                      ; 00012 ×29
  C014  8A        TXA                           ; 00014 ×29
  C015  DD EF 07  CMP $07EF,X                   ; 00015 ×29
  C018  D0 05     BNE loc_B0_C01F               ; 00018 ×29
  C01A  CA        DEX                           ; 0001A inferred, not run
  C01B  D0 F7     BNE $C014                     ; 0001B inferred, not run
  C01D  F0 0E     BEQ $C02D                     ; 0001D inferred, not run

loc_B0_C01F:                    ; from 00018
  C01F  A0 57     LDY #$57                      ; 0001F ×29
  C021  A9 00     LDA #$00                      ; 00021 ×29

loc_B0_C023:                    ; from 00027
  C023  99 00 00  STA $0000,Y                   ; 00023 ×4901
  C026  C8        INY                           ; 00026 ×4901
  C027  D0 FA     BNE loc_B0_C023               ; 00027 ×4901
  C029  A9 02     LDA #$02                      ; 00029 ×29
  C02B  85 59     STA $59                       ; 0002B ×29
  C02D  A0 EF     LDY #$EF                      ; 0002D ×29
  C02F  A9 07     LDA #$07                      ; 0002F ×29
  C031  85 E1     STA $E1                       ; 00031 ×29
  C033  A9 00     LDA #$00                      ; 00033 ×29
  C035  85 E0     STA $E0                       ; 00035 ×29

loc_B0_C037:                    ; from 0003a 00040 00044
  C037  91 E0     STA ($E0),Y                   ; 00037 ×53969
  C039  88        DEY                           ; 00039 ×53969
  C03A  D0 FB     BNE loc_B0_C037               ; 0003A ×53969
  C03C  C6 E1     DEC $E1                       ; 0003C ×232
  C03E  30 06     BMI loc_B0_C046               ; 0003E ×232
  C040  D0 F5     BNE loc_B0_C037               ; 00040 ×203
  C042  A0 56     LDY #$56                      ; 00042 ×29
  C044  D0 F1     BNE loc_B0_C037               ; 00044 ×29

loc_B0_C046:                    ; from 0003e
  C046  85 00     STA $00                       ; 00046 ×29
  C048  8D 00 07  STA $0700                     ; 00048 ×29
  C04B  A2 10     LDX #$10                      ; 0004B ×29

loc_B0_C04D:                    ; from 00052
  C04D  8A        TXA                           ; 0004D ×464
  C04E  9D EF 07  STA $07EF,X                   ; 0004E ×464
  C051  CA        DEX                           ; 00051 ×464
  C052  D0 F9     BNE loc_B0_C04D               ; 00052 ×464
  C054  20 B8 C3  JSR sub_B0_C3B8               ; 00054 ×29

loc_B0_C057:                    ; from 00057
  C057  4C 57 C0  JMP loc_B0_C057               ; 00057 ×2625376392
  C05A  48        PHA                           ; 0005A ×410421
  C05B  8A        TXA                           ; 0005B ×410421
  C05C  48        PHA                           ; 0005C ×410421
  C05D  98        TYA                           ; 0005D ×410421
  C05E  48        PHA                           ; 0005E ×410421
  C05F  AD 02 20  LDA $2002                     ; 0005F ×410421
  C062  A5 04     LDA $04                       ; 00062 ×410421
  C064  D0 23     BNE loc_B0_C089               ; 00064 ×410421
  C066  A9 00     LDA #$00                      ; 00066 ×409840
  C068  8D 03 20  STA $2003                     ; 00068 ×409840
  C06B  A9 02     LDA #$02                      ; 0006B ×409840
  C06D  8D 14 40  STA $4014                     ; 0006D ×409840
  C070  E6 04     INC $04                       ; 00070 ×409840
  C072  20 B8 C0  JSR sub_B0_C0B8               ; 00072 ×409840
  C075  20 B7 C1  JSR sub_B0_C1B7               ; 00075 ×409840
  C078  A5 FB     LDA $FB                       ; 00078 ×409840
  C07A  F0 06     BEQ loc_B0_C082               ; 0007A ×409840
  C07C  C6 FB     DEC $FB                       ; 0007C ×9557
  C07E  A9 00     LDA #$00                      ; 0007E ×9557
  C080  F0 02     BEQ loc_B0_C084               ; 00080 ×9557

loc_B0_C082:                    ; from 0007a
  C082  A5 54     LDA $54                       ; 00082 ×400283

loc_B0_C084:                    ; from 00080
  C084  8D 01 20  STA $2001                     ; 00084 ×409840
  C087  C6 04     DEC $04                       ; 00087 ×409840

loc_B0_C089:                    ; from 00064
  C089  AD 02 20  LDA $2002                     ; 00089 ×410421
  C08C  A9 00     LDA #$00                      ; 0008C ×410421
  C08E  8D 05 20  STA $2005                     ; 0008E ×410421
  C091  8D 05 20  STA $2005                     ; 00091 ×410421
  C094  A9 7E     LDA #$7E                      ; 00094 ×410421
  C096  20 C5 C0  JSR sub_B0_C0C5               ; 00096 ×410421
  C099  20 7C F8  JSR sub_B0_F87C               ; 00099 ×410421
  C09C  A5 04     LDA $04                       ; 0009C ×410421
  C09E  F0 05     BEQ loc_B0_C0A5               ; 0009E ×410421
  C0A0  20 C3 C0  JSR sub_B0_C0C3               ; 000A0 ×581
  C0A3  D0 0D     BNE loc_B0_C0B2               ; 000A3 ×581

loc_B0_C0A5:                    ; from 0009e
  C0A5  E6 04     INC $04                       ; 000A5 ×409840
  C0A7  20 02 C4  JSR sub_B0_C402               ; 000A7 ×409840
  C0AA  20 C3 C0  JSR sub_B0_C0C3               ; 000AA ×409840
  C0AD  20 D0 C0  JSR sub_B0_C0D0               ; 000AD ×409840
  C0B0  C6 04     DEC $04                       ; 000B0 ×409840

loc_B0_C0B2:                    ; from 000a3
  C0B2  68        PLA                           ; 000B2 ×410421
  C0B3  A8        TAY                           ; 000B3 ×410421
  C0B4  68        PLA                           ; 000B4 ×410421
  C0B5  AA        TAX                           ; 000B5 ×410421
  C0B6  68        PLA                           ; 000B6 ×410421
  C0B7  40        RTI                           ; 000B7 ×410421

sub_B0_C0B8:                    ; from 00072 00200 0000c 0048d
  C0B8  A9 08     LDA #$08                      ; 000B8 ×409947
  C0BA  8D 00 20  STA $2000                     ; 000BA ×409947
  C0BD  A9 00     LDA #$00                      ; 000BD ×409947
  C0BF  8D 01 20  STA $2001                     ; 000BF ×409947
  C0C2  60        RTS                           ; 000C2 ×409947

sub_B0_C0C3:                    ; from 000aa 000a0 0049c
  C0C3  A9 FE     LDA #$FE                      ; 000C3 ×410431

sub_B0_C0C5:                    ; from 00096
  C0C5  25 53     AND $53                       ; 000C5 ×820852
  C0C7  8D 00 20  STA $2000                     ; 000C7 ×820852
  C0CA  60        RTS                           ; 000CA ×820852

sub_B0_C0CB:                    ; from 003cb 0075d
  C0CB  A9 1E     LDA #$1E                      ; 000CB ×175
  C0CD  85 54     STA $54                       ; 000CD ×175
  C0CF  60        RTS                           ; 000CF ×175

sub_B0_C0D0:                    ; from 000ad
  C0D0  E6 09     INC $09                       ; 000D0 ×409840
  C0D2  A5 00     LDA $00                       ; 000D2 ×409840
  C0D4  20 CD C4  JSR sub_B0_C4CD               ; 000D4 ×409840
  C0D7  .byte 07 C1 07 C1 E9 C0 F9 C0 07 C1 1A C8 00 C1 07 C1   ; 000D7 data, read by 004d6 004da
  C0E7  .byte 08 C1                                             ; 000E7 data, read by 004d6 004da

jt_B0_C0E9:                    ; from 004e0
  C0E9  A6 01     LDX $01                       ; 000E9 ×33346
  C0EB  F0 1A     BEQ jt_B0_C107                ; 000EB ×33346
  C0ED  20 6D D7  JSR sub_B0_D76D               ; 000ED ×33309
  C0F0  A5 0A     LDA $0A                       ; 000F0 ×33309
  C0F2  F0 13     BEQ jt_B0_C107                ; 000F2 ×33309

loc_B0_C0F4:                    ; from 00388
  C0F4  A9 00     LDA #$00                      ; 000F4 ×40
  C0F6  4C 42 C3  JMP loc_B0_C342               ; 000F6 ×40

jt_B0_C0F9:                    ; from 004e0
  C0F9  A5 01     LDA $01                       ; 000F9 ×2997
  C0FB  D0 0A     BNE jt_B0_C107                ; 000FB ×2997
  C0FD  4C 64 C5  JMP loc_B0_C564               ; 000FD ×37

jt_B0_C100:                    ; from 004e0
  C100  A6 01     LDX $01                       ; 00100 ×461
  C102  D0 03     BNE jt_B0_C107                ; 00102 ×461
  C104  4C 63 CA  JMP sub_B0_CA63               ; 00104 ×445

jt_B0_C107:                    ; from 004e0 000f2 000fb 00120 000eb 00102
  C107  60        RTS                           ; 00107 ×142126

jt_B0_C108:                    ; from 004e0
  C108  20 63 CA  JSR sub_B0_CA63               ; 00108 ×1946
  C10B  A5 63     LDA $63                       ; 0010B ×1946
  C10D  C9 04     CMP #$04                      ; 0010D ×1946
  C10F  D0 06     BNE loc_B0_C117               ; 0010F ×1946
  C111  20 AB D9  JSR sub_B0_D9AB               ; 00111 ×978
  C114  20 B6 DB  JSR sub_B0_DBB6               ; 00114 ×978

loc_B0_C117:                    ; from 0010f
  C117  A6 01     LDX $01                       ; 00117 ×1946
  C119  F0 1D     BEQ loc_B0_C138               ; 00119 ×1946
  C11B  CA        DEX                           ; 0011B ×1942
  C11C  F0 42     BEQ loc_B0_C160               ; 0011C ×1942
  C11E  C6 02     DEC $02                       ; 0011E ×128
  C120  D0 E5     BNE jt_B0_C107                ; 00120 ×128
  C122  A6 63     LDX $63                       ; 00122 ×4
  C124  E8        INX                           ; 00124 ×4
  C125  E0 06     CPX #$06                      ; 00125 ×4
  C127  D0 02     BNE loc_B0_C12B               ; 00127 ×4
  C129  A2 01     LDX #$01                      ; 00129 inferred, not run

loc_B0_C12B:                    ; from 00127
  C12B  86 63     STX $63                       ; 0012B ×4
  C12D  E6 60     INC $60                       ; 0012D ×4
  C12F  A9 00     LDA #$00                      ; 0012F ×4
  C131  85 CC     STA $CC                       ; 00131 ×4
  C133  85 67     STA $67                       ; 00133 ×4
  C135  4C 40 C3  JMP loc_B0_C340               ; 00135 ×4

loc_B0_C138:                    ; from 00119
  C138  20 0D CF  JSR sub_B0_CF0D               ; 00138 ×4
  C13B  20 49 CF  JSR sub_B0_CF49               ; 0013B ×4
  C13E  A6 64     LDX $64                       ; 0013E ×4
  C140  BD B2 C1  LDA $C1B2,X                   ; 00140 ×4
  C143  A8        TAY                           ; 00143 ×4
  C144  A2 00     LDX #$00                      ; 00144 ×4
  C146  A5 63     LDA $63                       ; 00146 ×4
  C148  C9 03     CMP #$03                      ; 00148 ×4
  C14A  F0 02     BEQ loc_B0_C14E               ; 0014A ×4
  C14C  A2 10     LDX #$10                      ; 0014C ×4

loc_B0_C14E:                    ; from 00156
  C14E  A9 00     LDA #$00                      ; 0014E ×12
  C150  95 80     STA $80,X                     ; 00150 ×12
  C152  20 EC C9  JSR sub_B0_C9EC               ; 00152 ×12
  C155  88        DEY                           ; 00155 ×12
  C156  D0 F6     BNE loc_B0_C14E               ; 00156 ×12
  C158  20 E4 D4  JSR sub_B0_D4E4               ; 00158 ×4
  C15B  A9 01     LDA #$01                      ; 0015B ×4
  C15D  85 CC     STA $CC                       ; 0015D ×4
  C15F  60        RTS                           ; 0015F ×4

loc_B0_C160:                    ; from 0011c
  C160  A5 09     LDA $09                       ; 00160 ×1814
  C162  4A        LSR A                         ; 00162 ×1814
  C163  B0 03     BCS loc_B0_C168               ; 00163 ×1814
  C165  20 6D CE  JSR sub_B0_CE6D               ; 00165 ×906

loc_B0_C168:                    ; from 00163
  C168  AD 0B 03  LDA $030B                     ; 00168 ×1814
  C16B  D0 14     BNE loc_B0_C181               ; 0016B ×1814
  C16D  A5 09     LDA $09                       ; 0016D ×940
  C16F  29 0F     AND #$0F                      ; 0016F ×940
  C171  D0 06     BNE loc_B0_C179               ; 00171 ×940
  C173  A5 76     LDA $76                       ; 00173 ×58
  C175  49 01     EOR #$01                      ; 00175 ×58
  C177  85 76     STA $76                       ; 00177 ×58

loc_B0_C179:                    ; from 00171
  C179  20 25 CA  JSR sub_B0_CA25               ; 00179 ×940
  C17C  90 03     BCC loc_B0_C181               ; 0017C ×940
  C17E  EE 0B 03  INC $030B                     ; 0017E ×4

loc_B0_C181:                    ; from 0017c 0016b
  C181  20 DD C9  JSR sub_B0_C9DD               ; 00181 ×1814
  C184  20 04 CA  JSR sub_B0_CA04               ; 00184 ×1814
  C187  F0 1D     BEQ loc_B0_C1A6               ; 00187 ×1814
  C189  20 4E D5  JSR sub_B0_D54E               ; 00189 ×1810
  C18C  A9 47     LDA #$47                      ; 0018C ×1810
  C18E  20 0D F8  JSR sub_B0_F80D               ; 0018E ×1810
  C191  A9 00     LDA #$00                      ; 00191 ×1810
  C193  85 EA     STA $EA                       ; 00193 ×1810
  C195  A9 0A     LDA #$0A                      ; 00195 ×1810
  C197  85 EB     STA $EB                       ; 00197 ×1810
  C199  20 C4 C6  JSR sub_B0_C6C4               ; 00199 ×1810
  C19C  20 25 CA  JSR sub_B0_CA25               ; 0019C ×1810
  C19F  90 04     BCC loc_B0_C1A5               ; 0019F ×1810
  C1A1  A9 02     LDA #$02                      ; 001A1 ×874
  C1A3  85 CC     STA $CC                       ; 001A3 ×874

loc_B0_C1A5:                    ; from 0019f
  C1A5  60        RTS                           ; 001A5 ×1810

loc_B0_C1A6:                    ; from 00187
  C1A6  20 25 CA  JSR sub_B0_CA25               ; 001A6 ×4
  C1A9  90 FA     BCC loc_B0_C1A5               ; 001A9 ×4
  C1AB  A9 02     LDA #$02                      ; 001AB ×4
  C1AD  85 CC     STA $CC                       ; 001AD ×4
  C1AF  4C 50 C2  JMP loc_B0_C250               ; 001AF ×4
  C1B2  .byte 05                                                ; 001B2
  C1B3  .byte 05                                                ; 001B3 data, read by 00140
  C1B4  .byte 02                                                ; 001B4
  C1B5  .byte 01                                                ; 001B5 data, read by 00140
  C1B6  .byte 04                                                ; 001B6

sub_B0_C1B7:                    ; from 00075
  C1B7  A5 00     LDA $00                       ; 001B7 ×409840
  C1B9  20 D5 C1  JSR sub_B0_C1D5               ; 001B9 ×409840
  C1BC  A6 00     LDX $00                       ; 001BC ×409803
  C1BE  BD CC C1  LDA $C1CC,X                   ; 001BE ×409803
  C1C1  F0 08     BEQ loc_B0_C1CB               ; 001C1 ×409803
  C1C3  30 03     BMI loc_B0_C1C8               ; 001C3 ×329929
  C1C5  4C 4B C6  JMP loc_B0_C64B               ; 001C5 ×271647

loc_B0_C1C8:                    ; from 001c3
  C1C8  4C 5D C4  JMP loc_B0_C45D               ; 001C8 ×58282

loc_B0_C1CB:                    ; from 001c1 001fb
  C1CB  60        RTS                           ; 001CB ×81990
  C1CC  .byte FF FF FF 00 00 01 01 01 01                        ; 001CC data, read by 001be

sub_B0_C1D5:                    ; from 001b9
  C1D5  20 CD C4  JSR sub_B0_C4CD               ; 001D5 ×409840
  C1D8  .byte EA C1 12 C2 3A C2 5D C2 7D C2 F5 C2 03 C3 60 C3   ; 001D8 data, read by 004d6 004da
  C1E8  .byte 8B C3                                             ; 001E8 data, read by 004d6 004da

jt_B0_C1EA:                    ; from 004e0
  C1EA  A6 01     LDX $01                       ; 001EA ×2321
  C1EC  F0 1E     BEQ loc_B0_C20C               ; 001EC ×2321
  C1EE  CA        DEX                           ; 001EE ×2252
  C1EF  F0 08     BEQ loc_B0_C1F9               ; 001EF ×2252
  C1F1  20 AA C3  JSR sub_B0_C3AA               ; 001F1 ×68
  C1F4  A9 00     LDA #$00                      ; 001F4 ×68
  C1F6  4C A7 C2  JMP loc_B0_C2A7               ; 001F6 ×68

loc_B0_C1F9:                    ; from 001ef
  C1F9  C6 02     DEC $02                       ; 001F9 ×2184
  C1FB  D0 CE     BNE loc_B0_C1CB               ; 001FB ×2184
  C1FD  20 BE C3  JSR sub_B0_C3BE               ; 001FD ×68
  C200  20 B8 C0  JSR sub_B0_C0B8               ; 00200 ×68
  C203  20 D6 C3  JSR sub_B0_C3D6               ; 00203 ×68
  C206  20 C8 C4  JSR sub_B0_C4C8               ; 00206 ×68
  C209  4C 54 C2  JMP loc_B0_C254               ; 00209 ×68

loc_B0_C20C:                    ; from 0027f 001ec
  C20C  20 D6 C3  JSR sub_B0_C3D6               ; 0020C ×541
  C20F  4C 50 C2  JMP loc_B0_C250               ; 0020F ×541

jt_B0_C212:                    ; from 004e0
  C212  A5 01     LDA $01                       ; 00212 ×22633
  C214  D0 06     BNE loc_B0_C21C               ; 00214 ×22633
  C216  20 D9 CC  JSR sub_B0_CCD9               ; 00216 ×76
  C219  4C 54 C2  JMP loc_B0_C254               ; 00219 ×76

loc_B0_C21C:                    ; from 00214
  C21C  20 97 D5  JSR sub_B0_D597               ; 0021C ×22557
  C21F  A5 09     LDA $09                       ; 0021F ×22557
  C221  4A        LSR A                         ; 00221 ×22557
  C222  90 04     BCC loc_B0_C228               ; 00222 ×22557
  C224  C6 02     DEC $02                       ; 00224 ×11306
  C226  F0 03     BEQ loc_B0_C22B               ; 00226 ×11306

loc_B0_C228:                    ; from 00222
  C228  4C 8F C5  JMP sub_B0_C58F               ; 00228 ×22518

loc_B0_C22B:                    ; from 00226
  C22B  A5 0E     LDA $0E                       ; 0022B ×39
  C22D  D0 08     BNE $C237                     ; 0022D ×39
  C22F  A9 F0     LDA #$F0                      ; 0022F ×39
  C231  8D 00 02  STA $0200                     ; 00231 ×39
  C234  4C A5 C2  JMP sub_B0_C2A5               ; 00234 ×39
  C237  4C 70 C4  JMP $C470                     ; 00237 inferred, not run

jt_B0_C23A:                    ; from 004e0
  C23A  A6 01     LDX $01                       ; 0023A ×33314
  C23C  F0 03     BEQ loc_B0_C241               ; 0023C ×33314
  C23E  4C 80 D2  JMP sub_B0_D280               ; 0023E ×33277

loc_B0_C241:                    ; from 0023c
  C241  20 D0 CC  JSR sub_B0_CCD0               ; 00241 ×37
  C244  20 D6 C3  JSR sub_B0_C3D6               ; 00244 ×37
  C247  20 3E D7  JSR sub_B0_D73E               ; 00247 ×37
  C24A  20 CB C5  JSR sub_B0_C5CB               ; 0024A ×37
  C24D  20 C8 C4  JSR sub_B0_C4C8               ; 0024D ×37

loc_B0_C250:                    ; from 0020f 003a7 001af
  C250  A9 20     LDA #$20                      ; 00250 ×586

loc_B0_C252:                    ; from 002f2 002cf
  C252  85 02     STA $02                       ; 00252 ×1522

loc_B0_C254:                    ; from 00219 00209 0027b
  C254  E6 01     INC $01                       ; 00254 ×1703
  C256  60        RTS                           ; 00256 ×1703

loc_B0_C257:                    ; from 00263
  C257  20 A5 C2  JSR sub_B0_C2A5               ; 00257 ×37
  C25A  68        PLA                           ; 0025A ×37
  C25B  68        PLA                           ; 0025B ×37
  C25C  60        RTS                           ; 0025C ×37

jt_B0_C25D:                    ; from 004e0
  C25D  A6 01     LDX $01                       ; 0025D ×2997
  C25F  F0 10     BEQ loc_B0_C271               ; 0025F ×2997
  C261  C6 02     DEC $02                       ; 00261 ×2960
  C263  F0 F2     BEQ loc_B0_C257               ; 00263 ×2960
  C265  A9 08     LDA #$08                      ; 00265 ×2923
  C267  25 02     AND $02                       ; 00267 ×2923
  C269  D0 03     BNE loc_B0_C26E               ; 00269 ×2923
  C26B  4C B2 C5  JMP sub_B0_C5B2               ; 0026B ×1443

loc_B0_C26E:                    ; from 00269
  C26E  4C C3 C5  JMP loc_B0_C5C3               ; 0026E ×1480

loc_B0_C271:                    ; from 0025f
  C271  20 3B CA  JSR sub_B0_CA3B               ; 00271 ×37
  C274  20 DA CB  JSR sub_B0_CBDA               ; 00274 ×37
  C277  A9 50     LDA #$50                      ; 00277 ×37
  C279  85 02     STA $02                       ; 00279 ×37
  C27B  D0 D7     BNE loc_B0_C254               ; 0027B ×37

jt_B0_C27D:                    ; from 004e0
  C27D  A6 01     LDX $01                       ; 0027D ×76946
  C27F  F0 8B     BEQ loc_B0_C20C               ; 0027F ×76946
  C281  CA        DEX                           ; 00281 ×76474
  C282  F0 4E     BEQ loc_B0_C2D2               ; 00282 ×76474
  C284  CA        DEX                           ; 00284 ×61452
  C285  F0 2B     BEQ loc_B0_C2B2               ; 00285 ×61452
  C287  A5 02     LDA $02                       ; 00287 ×59720
  C289  F0 04     BEQ $C28F                     ; 00289 ×59720
  C28B  C6 02     DEC $02                       ; 0028B ×59720
  C28D  D0 22     BNE loc_B0_C2B1               ; 0028D ×59720
  C28F  20 25 CA  JSR sub_B0_CA25               ; 0028F ×463
  C292  90 1D     BCC loc_B0_C2B1               ; 00292 ×463
  C294  A9 87     LDA #$87                      ; 00294 ×463
  C296  20 E3 C4  JSR sub_B0_C4E3               ; 00296 ×463
  C299  20 35 C8  JSR sub_B0_C835               ; 00299 ×463
  C29C  20 C8 C4  JSR sub_B0_C4C8               ; 0029C ×463
  C29F  C6 60     DEC $60                       ; 0029F ×463
  C2A1  A9 01     LDA #$01                      ; 002A1 ×463
  C2A3  85 0A     STA $0A                       ; 002A3 ×463

sub_B0_C2A5:                    ; from 00300 00234 00257
  C2A5  A9 20     LDA #$20                      ; 002A5 ×984

loc_B0_C2A7:                    ; from 001f6 00323
  C2A7  85 02     STA $02                       ; 002A7 ×1068
  C2A9  E6 00     INC $00                       ; 002A9 ×1068

loc_B0_C2AB:                    ; from 00348 004a3
  C2AB  A9 00     LDA #$00                      ; 002AB ×1594
  C2AD  85 0A     STA $0A                       ; 002AD ×1594
  C2AF  85 01     STA $01                       ; 002AF ×1594

loc_B0_C2B1:                    ; from 0028d 002d4 002b4
  C2B1  60        RTS                           ; 002B1 ×76669

loc_B0_C2B2:                    ; from 00285
  C2B2  C6 02     DEC $02                       ; 002B2 ×1732
  C2B4  D0 FB     BNE loc_B0_C2B1               ; 002B4 ×1732
  C2B6  A9 07     LDA #$07                      ; 002B6 ×468
  C2B8  20 E3 C4  JSR sub_B0_C4E3               ; 002B8 ×468
  C2BB  A2 E0     LDX #$E0                      ; 002BB ×468
  C2BD  A9 06     LDA #$06                      ; 002BD ×468
  C2BF  20 3F C5  JSR sub_B0_C53F               ; 002BF ×468
  C2C2  A5 61     LDA $61                       ; 002C2 ×468
  C2C4  20 37 C6  JSR sub_B0_C637               ; 002C4 ×468
  C2C7  20 CB C5  JSR sub_B0_C5CB               ; 002C7 ×468
  C2CA  20 C8 C4  JSR sub_B0_C4C8               ; 002CA ×468
  C2CD  A9 80     LDA #$80                      ; 002CD ×468
  C2CF  4C 52 C2  JMP loc_B0_C252               ; 002CF ×468

loc_B0_C2D2:                    ; from 00282
  C2D2  C6 02     DEC $02                       ; 002D2 ×15022
  C2D4  D0 DB     BNE loc_B0_C2B1               ; 002D4 ×15022
  C2D6  20 D0 CC  JSR sub_B0_CCD0               ; 002D6 ×468
  C2D9  20 5C CA  JSR sub_B0_CA5C               ; 002D9 ×468
  C2DC  A2 01     LDX #$01                      ; 002DC ×468
  C2DE  A5 03     LDA $03                       ; 002DE ×468
  C2E0  0A        ASL A                         ; 002E0 ×468
  C2E1  0A        ASL A                         ; 002E1 ×468
  C2E2  10 07     BPL loc_B0_C2EB               ; 002E2 ×468
  C2E4  A9 05     LDA #$05                      ; 002E4 ×16
  C2E6  20 AD C6  JSR sub_B0_C6AD               ; 002E6 ×16
  C2E9  A2 50     LDX #$50                      ; 002E9 ×16

loc_B0_C2EB:                    ; from 002e2
  C2EB  20 2D CB  JSR sub_B0_CB2D               ; 002EB ×468
  C2EE  20 C8 C4  JSR sub_B0_C4C8               ; 002EE ×468
  C2F1  8A        TXA                           ; 002F1 ×468
  C2F2  4C 52 C2  JMP loc_B0_C252               ; 002F2 ×468

jt_B0_C2F5:                    ; from 004e0
  C2F5  20 80 D2  JSR sub_B0_D280               ; 002F5 ×265368
  C2F8  A9 08     LDA #$08                      ; 002F8 ×265368
  C2FA  A6 0B     LDX $0B                       ; 002FA ×265368
  C2FC  D0 44     BNE loc_B0_C342               ; 002FC ×265368
  C2FE  A5 0A     LDA $0A                       ; 002FE ×265364
  C300  D0 A3     BNE sub_B0_C2A5               ; 00300 ×265364
  C302  60        RTS                           ; 00302 ×264919

jt_B0_C303:                    ; from 004e0
  C303  A5 00     LDA $00                       ; 00303 ×461
  C305  85 6E     STA $6E                       ; 00305 ×461
  C307  A6 01     LDX $01                       ; 00307 ×461
  C309  F0 40     BEQ loc_B0_C34B               ; 00309 ×461
  C30B  A9 04     LDA #$04                      ; 0030B ×16
  C30D  20 AD C6  JSR sub_B0_C6AD               ; 0030D ×16
  C310  A5 03     LDA $03                       ; 00310 ×16
  C312  29 20     AND #$20                      ; 00312 ×16
  C314  D0 05     BNE loc_B0_C31B               ; 00314 ×16
  C316  A9 85     LDA #$85                      ; 00316 ×12
  C318  20 E3 C4  JSR sub_B0_C4E3               ; 00318 ×12

loc_B0_C31B:                    ; from 00314
  C31B  A9 06     LDA #$06                      ; 0031B ×16
  C31D  85 00     STA $00                       ; 0031D ×16
  C31F  A9 00     LDA #$00                      ; 0031F ×16
  C321  85 0E     STA $0E                       ; 00321 ×16
  C323  4C A7 C2  JMP loc_B0_C2A7               ; 00323 ×16

loc_B0_C326:                    ; from 00358
  C326  AD 00 01  LDA $0100                     ; 00326 ×429
  C329  F0 15     BEQ loc_B0_C340               ; 00329 ×429

loc_B0_C32B:                    ; from 0037f
  C32B  A2 80     LDX #$80                      ; 0032B ×14

loc_B0_C32D:                    ; from 00338
  C32D  B5 5F     LDA $5F,X                     ; 0032D ×1792
  C32F  BC FF 00  LDY $00FF,X                   ; 0032F ×1792
  C332  9D FF 00  STA $00FF,X                   ; 00332 ×1792
  C335  94 5F     STY $5F,X                     ; 00335 ×1792
  C337  CA        DEX                           ; 00337 ×1792
  C338  D0 F3     BNE loc_B0_C32D               ; 00338 ×1792
  C33A  A5 03     LDA $03                       ; 0033A ×14
  C33C  49 80     EOR #$80                      ; 0033C ×14
  C33E  85 03     STA $03                       ; 0033E ×14

loc_B0_C340:                    ; from 00329 00135
  C340  A9 04     LDA #$04                      ; 00340 ×435

loc_B0_C342:                    ; from 000f6 0047d 002fc
  C342  85 00     STA $00                       ; 00342 ×516
  C344  A9 20     LDA #$20                      ; 00344 ×516
  C346  85 02     STA $02                       ; 00346 ×516
  C348  4C AB C2  JMP loc_B0_C2AB               ; 00348 ×516

loc_B0_C34B:                    ; from 00309
  C34B  20 D6 C3  JSR sub_B0_C3D6               ; 0034B ×445
  C34E  20 CB C5  JSR sub_B0_C5CB               ; 0034E ×445
  C351  20 C8 C4  JSR sub_B0_C4C8               ; 00351 ×445
  C354  E6 67     INC $67                       ; 00354 ×445
  C356  A5 60     LDA $60                       ; 00356 ×445
  C358  D0 CC     BNE loc_B0_C326               ; 00358 ×445
  C35A  20 5C CA  JSR sub_B0_CA5C               ; 0035A ×16
  C35D  E6 01     INC $01                       ; 0035D ×16
  C35F  60        RTS                           ; 0035F ×16

jt_B0_C360:                    ; from 004e0
  C360  A0 00     LDY #$00                      ; 00360 ×3858
  C362  84 67     STY $67                       ; 00362 ×3858
  C364  84 66     STY $66                       ; 00364 ×3858
  C366  84 6E     STY $6E                       ; 00366 ×3858
  C368  AD 00 01  LDA $0100                     ; 00368 ×3858
  C36B  D0 09     BNE loc_B0_C376               ; 0036B ×3858
  C36D  A5 05     LDA $05                       ; 0036D ×3346
  C36F  29 10     AND #$10                      ; 0036F ×3346
  C371  F0 03     BEQ loc_B0_C376               ; 00371 ×3346
  C373  4C 5D C4  JMP loc_B0_C45D               ; 00373 ×2

loc_B0_C376:                    ; from 00371 0036b
  C376  C6 02     DEC $02                       ; 00376 ×3856
  C378  D0 1F     BNE loc_B0_C399               ; 00378 ×3856
  C37A  AD 00 01  LDA $0100                     ; 0037A ×14
  C37D  F0 03     BEQ loc_B0_C382               ; 0037D ×14
  C37F  4C 2B C3  JMP loc_B0_C32B               ; 0037F ×2

loc_B0_C382:                    ; from 0037d
  C382  A5 03     LDA $03                       ; 00382 ×12
  C384  29 BF     AND #$BF                      ; 00384 ×12
  C386  85 03     STA $03                       ; 00386 ×12
  C388  4C F4 C0  JMP loc_B0_C0F4               ; 00388 ×12

jt_B0_C38B:                    ; from 004e0
  C38B  20 DF D5  JSR sub_B0_D5DF               ; 0038B ×1942
  C38E  A5 00     LDA $00                       ; 0038E ×1942
  C390  85 6E     STA $6E                       ; 00390 ×1942
  C392  A6 01     LDX $01                       ; 00392 ×1942
  C394  F0 04     BEQ loc_B0_C39A               ; 00394 ×1942
  C396  CA        DEX                           ; 00396 ×1938
  C397  F0 00     BEQ loc_B0_C399               ; 00397 ×1938

loc_B0_C399:                    ; from 00378
  C399  60        RTS                           ; 00399 ×5780

loc_B0_C39A:                    ; from 00394
  C39A  18        CLC                           ; 0039A ×4
  C39B  A2 00     LDX #$00                      ; 0039B ×4
  C39D  86 0B     STX $0B                       ; 0039D ×4
  C39F  A5 61     LDA $61                       ; 0039F ×4
  C3A1  E8        INX                           ; 003A1 ×4
  C3A2  20 F3 C6  JSR sub_B0_C6F3               ; 003A2 ×4
  C3A5  85 61     STA $61                       ; 003A5 ×4
  C3A7  4C 50 C2  JMP loc_B0_C250               ; 003A7 ×4

sub_B0_C3AA:                    ; from 001f1 00499
  C3AA  20 53 C7  JSR sub_B0_C753               ; 003AA ×78
  C3AD  A9 03     LDA #$03                      ; 003AD ×78
  C3AF  20 E3 C4  JSR sub_B0_C4E3               ; 003AF ×78
  C3B2  20 B2 C5  JSR sub_B0_C5B2               ; 003B2 ×78
  C3B5  4C C8 C4  JMP sub_B0_C4C8               ; 003B5 ×78

sub_B0_C3B8:                    ; from 00054
  C3B8  20 D6 C3  JSR sub_B0_C3D6               ; 003B8 ×29
  C3BB  4C C1 C3  JMP loc_B0_C3C1               ; 003BB ×29

sub_B0_C3BE:                    ; from 001fd
  C3BE  20 D9 CC  JSR sub_B0_CCD9               ; 003BE ×68

loc_B0_C3C1:                    ; from 003bb
  C3C1  A9 1F     LDA #$1F                      ; 003C1 ×97
  C3C3  8D 15 40  STA $4015                     ; 003C3 ×97
  C3C6  A9 C0     LDA #$C0                      ; 003C6 ×97
  C3C8  8D 17 40  STA $4017                     ; 003C8 ×97
  C3CB  20 CB C0  JSR sub_B0_C0CB               ; 003CB ×97
  C3CE  A9 88     LDA #$88                      ; 003CE ×97
  C3D0  85 53     STA $53                       ; 003D0 ×97
  C3D2  8D 00 20  STA $2000                     ; 003D2 ×97
  C3D5  60        RTS                           ; 003D5 ×97

sub_B0_C3D6:                    ; from 0020c 0034b 00203 00244 003b8 00493
  C3D6  20 56 C5  JSR sub_B0_C556               ; 003D6 ×1130
  C3D9  20 E0 C3  JSR sub_B0_C3E0               ; 003D9 ×1130
  C3DC  A9 2C     LDA #$2C                      ; 003DC ×1130
  C3DE  D0 02     BNE loc_B0_C3E2               ; 003DE ×1130

sub_B0_C3E0:                    ; from 003d9
  C3E0  A9 20     LDA #$20                      ; 003E0 ×1130

loc_B0_C3E2:                    ; from 003de
  C3E2  85 E1     STA $E1                       ; 003E2 ×2260
  C3E4  A0 04     LDY #$04                      ; 003E4 ×2260
  C3E6  A9 00     LDA #$00                      ; 003E6 ×2260
  C3E8  85 E0     STA $E0                       ; 003E8 ×2260
  C3EA  85 E2     STA $E2                       ; 003EA ×2260

loc_B0_C3EC:                    ; from 003f2
  C3EC  20 F5 C3  JSR sub_B0_C3F5               ; 003EC ×9040
  C3EF  E6 E1     INC $E1                       ; 003EF ×9040
  C3F1  88        DEY                           ; 003F1 ×9040
  C3F2  D0 F8     BNE loc_B0_C3EC               ; 003F2 ×9040
  C3F4  60        RTS                           ; 003F4 ×2260

sub_B0_C3F5:                    ; from 003ec
  C3F5  A9 00     LDA #$00                      ; 003F5 ×9040
  C3F7  20 BA C4  JSR sub_B0_C4BA               ; 003F7 ×9040

loc_B0_C3FA:                    ; from 003ff
  C3FA  8D 07 20  STA $2007                     ; 003FA ×2314240
  C3FD  C6 E2     DEC $E2                       ; 003FD ×2314240
  C3FF  D0 F9     BNE loc_B0_C3FA               ; 003FF ×2314240
  C401  60        RTS                           ; 00401 ×9040

sub_B0_C402:                    ; from 000a7
  C402  A2 01     LDX #$01                      ; 00402 ×409840
  C404  8E 16 40  STX $4016                     ; 00404 ×409840
  C407  CA        DEX                           ; 00407 ×409840
  C408  8E 16 40  STX $4016                     ; 00408 ×409840
  C40B  A0 08     LDY #$08                      ; 0040B ×409840

loc_B0_C40D:                    ; from 00424
  C40D  AD 16 40  LDA $4016                     ; 0040D ×3278720
  C410  85 E7     STA $E7                       ; 00410 ×3278720
  C412  4A        LSR A                         ; 00412 ×3278720
  C413  05 E7     ORA $E7                       ; 00413 ×3278720
  C415  4A        LSR A                         ; 00415 ×3278720
  C416  26 E4     ROL $E4                       ; 00416 ×3278720
  C418  AD 17 40  LDA $4017                     ; 00418 ×3278720
  C41B  85 E7     STA $E7                       ; 0041B ×3278720
  C41D  4A        LSR A                         ; 0041D ×3278720
  C41E  05 E7     ORA $E7                       ; 0041E ×3278720
  C420  4A        LSR A                         ; 00420 ×3278720
  C421  26 E5     ROL $E5                       ; 00421 ×3278720
  C423  88        DEY                           ; 00423 ×3278720
  C424  D0 E7     BNE loc_B0_C40D               ; 00424 ×3278720
  C426  A5 05     LDA $05                       ; 00426 ×409840
  C428  29 10     AND #$10                      ; 00428 ×409840
  C42A  45 0E     EOR $0E                       ; 0042A ×409840
  C42C  85 0E     STA $0E                       ; 0042C ×409840
  C42E  A5 03     LDA $03                       ; 0042E ×409840
  C430  29 20     AND #$20                      ; 00430 ×409840
  C432  F0 1A     BEQ loc_B0_C44E               ; 00432 ×409840
  C434  A5 03     LDA $03                       ; 00434 ×31715
  C436  29 F0     AND #$F0                      ; 00436 ×31715
  C438  C9 E0     CMP #$E0                      ; 00438 ×31715
  C43A  F0 16     BEQ loc_B0_C452               ; 0043A ×31715
  C43C  A5 E4     LDA $E4                       ; 0043C ×23437
  C43E  20 58 C4  JSR sub_B0_C458               ; 0043E ×23437
  C441  E8        INX                           ; 00441 ×23437
  C442  B5 E4     LDA $E4,X                     ; 00442 ×23437

loc_B0_C444:                    ; from 0045a
  C444  A8        TAY                           ; 00444 ×433277
  C445  55 07     EOR $07,X                     ; 00445 ×433277
  C447  35 E4     AND $E4,X                     ; 00447 ×433277
  C449  95 05     STA $05,X                     ; 00449 ×433277
  C44B  94 07     STY $07,X                     ; 0044B ×433277
  C44D  60        RTS                           ; 0044D ×433277

loc_B0_C44E:                    ; from 00432
  C44E  A9 FF     LDA #$FF                      ; 0044E ×378125
  C450  D0 02     BNE loc_B0_C454               ; 00450 ×378125

loc_B0_C452:                    ; from 0043a
  C452  A9 30     LDA #$30                      ; 00452 ×8278

loc_B0_C454:                    ; from 00450
  C454  25 E4     AND $E4                       ; 00454 ×386403
  C456  05 E5     ORA $E5                       ; 00456 ×386403

sub_B0_C458:                    ; from 0043e
  C458  85 E4     STA $E4                       ; 00458 ×409840
  C45A  4C 44 C4  JMP loc_B0_C444               ; 0045A ×409840

loc_B0_C45D:                    ; from 001c8 00373
  C45D  A5 05     LDA $05                       ; 0045D ×58284
  C45F  29 30     AND #$30                      ; 0045F ×58284
  C461  F0 25     BEQ loc_B0_C488               ; 00461 ×58284
  C463  A2 00     LDX #$00                      ; 00463 ×53
  C465  86 02     STX $02                       ; 00465 ×53
  C467  A6 00     LDX $00                       ; 00467 ×53
  C469  CA        DEX                           ; 00469 ×53
  C46A  D0 1D     BNE loc_B0_C489               ; 0046A ×53
  C46C  29 20     AND #$20                      ; 0046C ×43
  C46E  D0 10     BNE loc_B0_C480               ; 0046E ×43
  C470  A9 00     LDA #$00                      ; 00470 ×37
  C472  85 0E     STA $0E                       ; 00472 ×37
  C474  A6 50     LDX $50                       ; 00474 ×37
  C476  BD A6 C4  LDA $C4A6,X                   ; 00476 ×37
  C479  85 03     STA $03                       ; 00479 ×37
  C47B  A9 03     LDA #$03                      ; 0047B ×37
  C47D  4C 42 C3  JMP loc_B0_C342               ; 0047D ×37

loc_B0_C480:                    ; from 0046e
  C480  E6 50     INC $50                       ; 00480 ×6
  C482  A5 50     LDA $50                       ; 00482 ×6
  C484  29 03     AND #$03                      ; 00484 ×6
  C486  85 50     STA $50                       ; 00486 ×6

loc_B0_C488:                    ; from 00461
  C488  60        RTS                           ; 00488 ×58237

loc_B0_C489:                    ; from 0046a
  C489  29 10     AND #$10                      ; 00489 ×10
  C48B  85 0E     STA $0E                       ; 0048B ×10
  C48D  20 B8 C0  JSR sub_B0_C0B8               ; 0048D ×10
  C490  20 D9 CC  JSR sub_B0_CCD9               ; 00490 ×10
  C493  20 D6 C3  JSR sub_B0_C3D6               ; 00493 ×10
  C496  20 8F C5  JSR sub_B0_C58F               ; 00496 ×10
  C499  20 AA C3  JSR sub_B0_C3AA               ; 00499 ×10
  C49C  20 C3 C0  JSR sub_B0_C0C3               ; 0049C ×10
  C49F  A9 01     LDA #$01                      ; 0049F ×10
  C4A1  85 00     STA $00                       ; 004A1 ×10
  C4A3  4C AB C2  JMP loc_B0_C2AB               ; 004A3 ×10
  C4A6  .byte 40 48 60 68                                       ; 004A6 data, read by 00476

sub_B0_C4AA:                    ; from 00cd3
  C4AA  20 BA C4  JSR sub_B0_C4BA               ; 004AA ×659
  C4AD  A0 00     LDY #$00                      ; 004AD ×659

loc_B0_C4AF:                    ; from 004b7
  C4AF  B1 E4     LDA ($E4),Y                   ; 004AF ×21088
  C4B1  8D 07 20  STA $2007                     ; 004B1 ×21088
  C4B4  C8        INY                           ; 004B4 ×21088
  C4B5  C6 E2     DEC $E2                       ; 004B5 ×21088
  C4B7  D0 F6     BNE loc_B0_C4AF               ; 004B7 ×21088
  C4B9  60        RTS                           ; 004B9 ×659

sub_B0_C4BA:                    ; from 00693 0061d 00513 003f7 00637 004aa (+1)
  C4BA  AE 02 20  LDX $2002                     ; 004BA ×647678
  C4BD  A6 E1     LDX $E1                       ; 004BD ×647678
  C4BF  8E 06 20  STX $2006                     ; 004BF ×647678
  C4C2  A6 E0     LDX $E0                       ; 004C2 ×647678
  C4C4  8E 06 20  STX $2006                     ; 004C4 ×647678
  C4C7  60        RTS                           ; 004C7 ×647678

sub_B0_C4C8:                    ; from 002ee 002ca 0029c 00351 003b5 00206 (+1)
  C4C8  A9 07     LDA #$07                      ; 004C8 ×2027
  C4CA  85 FB     STA $FB                       ; 004CA ×2027
  C4CC  60        RTS                           ; 004CC ×2027

sub_B0_C4CD:                    ; from 001d5 000d4 009d0 00657 01809 03165
  C4CD  0A        ASL A                         ; 004CD ×1584701
  C4CE  A8        TAY                           ; 004CE ×1584701
  C4CF  C8        INY                           ; 004CF ×1584701
  C4D0  68        PLA                           ; 004D0 ×1584701
  C4D1  85 E0     STA $E0                       ; 004D1 ×1584701
  C4D3  68        PLA                           ; 004D3 ×1584701
  C4D4  85 E1     STA $E1                       ; 004D4 ×1584701
  C4D6  B1 E0     LDA ($E0),Y                   ; 004D6 ×1584701
  C4D8  AA        TAX                           ; 004D8 ×1584701
  C4D9  C8        INY                           ; 004D9 ×1584701
  C4DA  B1 E0     LDA ($E0),Y                   ; 004DA ×1584701
  C4DC  85 E1     STA $E1                       ; 004DC ×1584701
  C4DE  86 E0     STX $E0                       ; 004DE ×1584701
  C4E0  6C E0 00  JMP ($00E0)                   ; 004E0 ×1584701

sub_B0_C4E3:                    ; from 00678 005bb 005c8 01716 0171e 005d3 (+8)
  C4E3  A2 FF     LDX #$FF                      ; 004E3 ×79619
  C4E5  0A        ASL A                         ; 004E5 ×79619
  C4E6  A8        TAY                           ; 004E6 ×79619
  C4E7  90 01     BCC loc_B0_C4EA               ; 004E7 ×79619
  C4E9  E8        INX                           ; 004E9 ×35976

loc_B0_C4EA:                    ; from 004e7
  C4EA  A9 C2     LDA #$C2                      ; 004EA ×79619
  C4EC  85 E4     STA $E4                       ; 004EC ×79619
  C4EE  A9 FF     LDA #$FF                      ; 004EE ×79619
  C4F0  85 E5     STA $E5                       ; 004F0 ×79619
  C4F2  B1 E4     LDA ($E4),Y                   ; 004F2 ×79619
  C4F4  85 E2     STA $E2                       ; 004F4 ×79619
  C4F6  C8        INY                           ; 004F6 ×79619
  C4F7  B1 E4     LDA ($E4),Y                   ; 004F7 ×79619
  C4F9  85 E3     STA $E3                       ; 004F9 ×79619
  C4FB  8A        TXA                           ; 004FB ×79619
  C4FC  4C 05 C5  JMP loc_B0_C505               ; 004FC ×79619
  C4FF  .byte A9 00 F0 02 A9 FF                                 ; 004FF

loc_B0_C505:                    ; from 004fc
  C505  85 E4     STA $E4                       ; 00505 ×79619
  C507  A0 00     LDY #$00                      ; 00507 ×79619

loc_B0_C509:                    ; from 00521
  C509  B1 E2     LDA ($E2),Y                   ; 00509 ×85477
  C50B  85 E0     STA $E0                       ; 0050B ×85477
  C50D  C8        INY                           ; 0050D ×85477
  C50E  B1 E2     LDA ($E2),Y                   ; 0050E ×85477
  C510  85 E1     STA $E1                       ; 00510 ×85477
  C512  C8        INY                           ; 00512 ×85477
  C513  20 BA C4  JSR sub_B0_C4BA               ; 00513 ×85477

loc_B0_C516:                    ; from 0052c 0053d
  C516  B1 E2     LDA ($E2),Y                   ; 00516 ×420021
  C518  C8        INY                           ; 00518 ×420021
  C519  C9 FD     CMP #$FD                      ; 00519 ×420021
  C51B  90 0A     BCC loc_B0_C527               ; 0051B ×420021
  C51D  F0 11     BEQ loc_B0_C530               ; 0051D ×87689
  C51F  C9 FE     CMP #$FE                      ; 0051F ×85477
  C521  F0 E6     BEQ loc_B0_C509               ; 00521 ×85477
  C523  C9 FF     CMP #$FF                      ; 00523 ×79619
  C525  F0 08     BEQ loc_B0_C52F               ; 00525 ×79619

loc_B0_C527:                    ; from 0051b
  C527  25 E4     AND $E4                       ; 00527 ×332332
  C529  8D 07 20  STA $2007                     ; 00529 ×332332
  C52C  4C 16 C5  JMP loc_B0_C516               ; 0052C ×332332

loc_B0_C52F:                    ; from 00525
  C52F  60        RTS                           ; 0052F ×79619

loc_B0_C530:                    ; from 0051d
  C530  B1 E2     LDA ($E2),Y                   ; 00530 ×2212
  C532  AA        TAX                           ; 00532 ×2212
  C533  C8        INY                           ; 00533 ×2212
  C534  B1 E2     LDA ($E2),Y                   ; 00534 ×2212
  C536  C8        INY                           ; 00536 ×2212

loc_B0_C537:                    ; from 0053b
  C537  8D 07 20  STA $2007                     ; 00537 ×56086
  C53A  CA        DEX                           ; 0053A ×56086
  C53B  D0 FA     BNE loc_B0_C537               ; 0053B ×56086
  C53D  F0 D7     BEQ loc_B0_C516               ; 0053D ×2212

sub_B0_C53F:                    ; from 002bf 00ce0 006ba
  C53F  18        CLC                           ; 0053F ×632
  C540  75 00     ADC $00,X                     ; 00540 ×632
  C542  95 00     STA $00,X                     ; 00542 ×632
  C544  90 02     BCC loc_B0_C548               ; 00544 ×632
  C546  F6 01     INC $01,X                     ; 00546 ×154

loc_B0_C548:                    ; from 00544
  C548  60        RTS                           ; 00548 ×632
  C549  .byte 88 B1 E0 91 E2 98 D0 F8 60 E6 03 E6 02            ; 00549

sub_B0_C556:                    ; from 003d6 00856
  C556  A9 F4     LDA #$F4                      ; 00556 ×1630
  C558  A2 00     LDX #$00                      ; 00558 ×1630

loc_B0_C55A:                    ; from 00561
  C55A  9D 00 02  STA $0200,X                   ; 0055A ×104320
  C55D  E8        INX                           ; 0055D ×104320
  C55E  E8        INX                           ; 0055E ×104320
  C55F  E8        INX                           ; 0055F ×104320
  C560  E8        INX                           ; 00560 ×104320
  C561  D0 F7     BNE loc_B0_C55A               ; 00561 ×104320
  C563  60        RTS                           ; 00563 ×1630

loc_B0_C564:                    ; from 000fd
  C564  A2 5D     LDX #$5D                      ; 00564 ×37
  C566  A5 03     LDA $03                       ; 00566 ×37
  C568  29 20     AND #$20                      ; 00568 ×37
  C56A  08        PHP                           ; 0056A ×37
  C56B  F0 02     BEQ loc_B0_C56F               ; 0056B ×37
  C56D  A2 5A     LDX #$5A                      ; 0056D ×2

loc_B0_C56F:                    ; from 0056b
  C56F  A9 00     LDA #$00                      ; 0056F ×37

loc_B0_C571:                    ; from 00574
  C571  95 00     STA $00,X                     ; 00571 ×6037
  C573  E8        INX                           ; 00573 ×6037
  C574  D0 FB     BNE loc_B0_C571               ; 00574 ×6037
  C576  A2 FC     LDX #$FC                      ; 00576 ×37

loc_B0_C578:                    ; from 0057e
  C578  BD FA FE  LDA $FEFA,X                   ; 00578 ×148
  C57B  95 64     STA $64,X                     ; 0057B ×148
  C57D  E8        INX                           ; 0057D ×148
  C57E  D0 F8     BNE loc_B0_C578               ; 0057E ×148
  C580  28        PLP                           ; 00580 ×37
  C581  D0 01     BNE loc_B0_C584               ; 00581 ×37
  C583  60        RTS                           ; 00583 ×35

loc_B0_C584:                    ; from 00581
  C584  A2 20     LDX #$20                      ; 00584 ×2

loc_B0_C586:                    ; from 0058c
  C586  B5 5F     LDA $5F,X                     ; 00586 ×64
  C588  9D FF 00  STA $00FF,X                   ; 00588 ×64
  C58B  CA        DEX                           ; 0058B ×64
  C58C  D0 F8     BNE loc_B0_C586               ; 0058C ×64
  C58E  60        RTS                           ; 0058E ×2

sub_B0_C58F:                    ; from 00228 00496
  C58F  A2 07     LDX #$07                      ; 0058F ×22528

loc_B0_C591:                    ; from 00598
  C591  BD A6 C5  LDA $C5A6,X                   ; 00591 ×180224
  C594  9D 00 02  STA $0200,X                   ; 00594 ×180224
  C597  CA        DEX                           ; 00597 ×180224
  C598  10 F7     BPL loc_B0_C591               ; 00598 ×180224
  C59A  A6 50     LDX $50                       ; 0059A ×22528
  C59C  BD AE C5  LDA $C5AE,X                   ; 0059C ×22528
  C59F  8D 00 02  STA $0200                     ; 0059F ×22528
  C5A2  8D 04 02  STA $0204                     ; 005A2 ×22528
  C5A5  60        RTS                           ; 005A5 ×22528
  C5A6  .byte 00 B0 00 4E 00 B1 00 56 A8 B0 B8 C0               ; 005A6 data, read by 00591 0059c

sub_B0_C5B2:                    ; from 0026b 003b2
  C5B2  A9 03     LDA #$03                      ; 005B2 ×1521
  C5B4  85 EF     STA $EF                       ; 005B4 ×1521

loc_B0_C5B6:                    ; from 005c0
  C5B6  A5 EF     LDA $EF                       ; 005B6 ×6084
  C5B8  18        CLC                           ; 005B8 ×6084
  C5B9  69 0E     ADC #$0E                      ; 005B9 ×6084
  C5BB  20 E3 C4  JSR sub_B0_C4E3               ; 005BB ×6084
  C5BE  C6 EF     DEC $EF                       ; 005BE ×6084
  C5C0  10 F4     BPL loc_B0_C5B6               ; 005C0 ×6084
  C5C2  60        RTS                           ; 005C2 ×1521

loc_B0_C5C3:                    ; from 0026e
  C5C3  A5 50     LDA $50                       ; 005C3 ×1480
  C5C5  18        CLC                           ; 005C5 ×1480
  C5C6  69 8E     ADC #$8E                      ; 005C6 ×1480
  C5C8  4C E3 C4  JMP sub_B0_C4E3               ; 005C8 ×1480

sub_B0_C5CB:                    ; from 002c7 0034e 0024a
  C5CB  20 14 D7  JSR sub_B0_D714               ; 005CB ×950
  C5CE  20 75 D5  JSR sub_B0_D575               ; 005CE ×950
  C5D1  A9 00     LDA #$00                      ; 005D1 ×950
  C5D3  20 E3 C4  JSR sub_B0_C4E3               ; 005D3 ×950
  C5D6  A5 03     LDA $03                       ; 005D6 ×950
  C5D8  65 03     ADC $03                       ; 005D8 ×950
  C5DA  10 04     BPL loc_B0_C5E0               ; 005DA ×950
  C5DC  29 40     AND #$40                      ; 005DC ×913
  C5DE  F0 0C     BEQ loc_B0_C5EC               ; 005DE ×913

loc_B0_C5E0:                    ; from 005da
  C5E0  A9 02     LDA #$02                      ; 005E0 ×69
  C5E2  20 E3 C4  JSR sub_B0_C4E3               ; 005E2 ×69
  C5E5  A5 03     LDA $03                       ; 005E5 ×69
  C5E7  49 80     EOR #$80                      ; 005E7 ×69
  C5E9  20 F7 C5  JSR sub_B0_C5F7               ; 005E9 ×69

loc_B0_C5EC:                    ; from 005de
  C5EC  20 7B C6  JSR sub_B0_C67B               ; 005EC ×950
  C5EF  20 2D C6  JSR sub_B0_C62D               ; 005EF ×950
  C5F2  20 06 C6  JSR sub_B0_C606               ; 005F2 ×950

jt_B0_C5F5:                    ; from 004e0
  C5F5  A5 03     LDA $03                       ; 005F5 ×68842

sub_B0_C5F7:                    ; from 005e9
  C5F7  30 1A     BMI loc_B0_C613               ; 005F7 ×68911
  C5F9  A9 65     LDA #$65                      ; 005F9 ×67252
  C5FB  85 E0     STA $E0                       ; 005FB ×67252
  C5FD  A9 20     LDA #$20                      ; 005FD ×67252
  C5FF  85 E1     STA $E1                       ; 005FF ×67252
  C601  A0 5D     LDY #$5D                      ; 00601 ×67252
  C603  4C 1D C6  JMP loc_B0_C61D               ; 00603 ×67252

sub_B0_C606:                    ; from 004e0 005f2
  C606  A9 6F     LDA #$6F                      ; 00606 ×68841
  C608  85 E0     STA $E0                       ; 00608 ×68841
  C60A  A9 20     LDA #$20                      ; 0060A ×68841
  C60C  85 E1     STA $E1                       ; 0060C ×68841
  C60E  A0 57     LDY #$57                      ; 0060E ×68841
  C610  4C 1D C6  JMP loc_B0_C61D               ; 00610 ×68841

loc_B0_C613:                    ; from 005f7
  C613  A9 85     LDA #$85                      ; 00613 ×1659
  C615  85 E0     STA $E0                       ; 00615 ×1659
  C617  A9 20     LDA #$20                      ; 00617 ×1659
  C619  85 E1     STA $E1                       ; 00619 ×1659
  C61B  A0 5A     LDY #$5A                      ; 0061B ×1659

loc_B0_C61D:                    ; from 00610 00603
  C61D  20 BA C4  JSR sub_B0_C4BA               ; 0061D ×137752
  C620  A2 03     LDX #$03                      ; 00620 ×137752

loc_B0_C622:                    ; from 0062a
  C622  B9 02 00  LDA $0002,Y                   ; 00622 ×413256
  C625  20 3A C6  JSR sub_B0_C63A               ; 00625 ×413256
  C628  88        DEY                           ; 00628 ×413256
  C629  CA        DEX                           ; 00629 ×413256
  C62A  D0 F6     BNE loc_B0_C622               ; 0062A ×413256
  C62C  60        RTS                           ; 0062C ×137752

sub_B0_C62D:                    ; from 005ef
  C62D  A9 7C     LDA #$7C                      ; 0062D ×950
  C62F  85 E0     STA $E0                       ; 0062F ×950
  C631  A9 20     LDA #$20                      ; 00631 ×950
  C633  85 E1     STA $E1                       ; 00633 ×950
  C635  A5 61     LDA $61                       ; 00635 ×950

sub_B0_C637:                    ; from 002c4
  C637  20 BA C4  JSR sub_B0_C4BA               ; 00637 ×1418

sub_B0_C63A:                    ; from 00625
  C63A  48        PHA                           ; 0063A ×414674
  C63B  4A        LSR A                         ; 0063B ×414674
  C63C  4A        LSR A                         ; 0063C ×414674
  C63D  4A        LSR A                         ; 0063D ×414674
  C63E  4A        LSR A                         ; 0063E ×414674
  C63F  20 43 C6  JSR sub_B0_C643               ; 0063F ×414674
  C642  68        PLA                           ; 00642 ×414674

sub_B0_C643:                    ; from 0063f
  C643  29 0F     AND #$0F                      ; 00643 ×829348
  C645  09 30     ORA #$30                      ; 00645 ×829348
  C647  8D 07 20  STA $2007                     ; 00647 ×829348
  C64A  60        RTS                           ; 0064A ×829348

loc_B0_C64B:                    ; from 001c5
  C64B  20 75 D5  JSR sub_B0_D575               ; 0064B ×271647
  C64E  A5 03     LDA $03                       ; 0064E ×271647
  C650  6A        ROR A                         ; 00650 ×271647
  C651  B0 F7     BCS $C64A                     ; 00651 ×271647
  C653  A5 09     LDA $09                       ; 00653 ×271647
  C655  29 03     AND #$03                      ; 00655 ×271647
  C657  20 CD C4  JSR sub_B0_C4CD               ; 00657 ×271647
  C65A  .byte 06 C6 F5 C5 7B C6 62 C6                           ; 0065A data, read by 004d6 004da

jt_B0_C662:                    ; from 004e0
  C662  A9 1F     LDA #$1F                      ; 00662 ×67927
  C664  85 E4     STA $E4                       ; 00664 ×67927
  C666  A2 01     LDX #$01                      ; 00666 ×67927
  C668  A5 09     LDA $09                       ; 00668 ×67927
  C66A  29 20     AND #$20                      ; 0066A ×67927
  C66C  F0 02     BEQ loc_B0_C670               ; 0066C ×67927
  C66E  A2 81     LDX #$81                      ; 0066E ×34021

loc_B0_C670:                    ; from 0066c
  C670  A5 03     LDA $03                       ; 00670 ×67927
  C672  29 80     AND #$80                      ; 00672 ×67927
  C674  F0 01     BEQ loc_B0_C677               ; 00674 ×67927
  C676  E8        INX                           ; 00676 ×1586

loc_B0_C677:                    ; from 00674
  C677  8A        TXA                           ; 00677 ×67927
  C678  4C E3 C4  JMP sub_B0_C4E3               ; 00678 ×67927

sub_B0_C67B:                    ; from 004e0 005ec
  C67B  A9 9D     LDA #$9D                      ; 0067B ×68887
  C67D  85 E0     STA $E0                       ; 0067D ×68887
  C67F  A9 20     LDA #$20                      ; 0067F ×68887
  C681  85 E1     STA $E1                       ; 00681 ×68887
  C683  A5 60     LDA $60                       ; 00683 ×68887
  C685  85 E3     STA $E3                       ; 00685 ×68887
  C687  A9 05     LDA #$05                      ; 00687 ×68887
  C689  85 E2     STA $E2                       ; 00689 ×68887
  C68B  A0 19     LDY #$19                      ; 0068B ×68887

loc_B0_C68D:                    ; from 006aa
  C68D  C6 E3     DEC $E3                       ; 0068D ×413322
  C68F  10 02     BPL loc_B0_C693               ; 0068F ×413322
  C691  A0 00     LDY #$00                      ; 00691 ×233185

loc_B0_C693:                    ; from 0068f
  C693  20 BA C4  JSR sub_B0_C4BA               ; 00693 ×413322
  C696  8C 07 20  STY $2007                     ; 00696 ×413322
  C699  A2 E0     LDX #$E0                      ; 00699 ×413322
  C69B  A9 01     LDA #$01                      ; 0069B ×413322
  C69D  49 FF     EOR #$FF                      ; 0069D ×413322
  C69F  38        SEC                           ; 0069F ×413322
  C6A0  75 00     ADC $00,X                     ; 006A0 ×413322
  C6A2  95 00     STA $00,X                     ; 006A2 ×413322
  C6A4  B0 02     BCS loc_B0_C6A8               ; 006A4 ×413322
  C6A6  D6 01     DEC $01,X                     ; 006A6 inferred, not run

loc_B0_C6A8:                    ; from 006a4
  C6A8  C6 E2     DEC $E2                       ; 006A8 ×413322
  C6AA  10 E1     BPL loc_B0_C68D               ; 006AA ×413322
  C6AC  60        RTS                           ; 006AC ×68887

sub_B0_C6AD:                    ; from 0030d 002e6
  C6AD  20 E3 C4  JSR sub_B0_C4E3               ; 006AD ×32
  C6B0  A4 03     LDY $03                       ; 006B0 ×32
  C6B2  10 0F     BPL loc_B0_C6C3               ; 006B2 ×32
  C6B4  A0 32     LDY #$32                      ; 006B4 ×10
  C6B6  A9 07     LDA #$07                      ; 006B6 ×10
  C6B8  A2 E0     LDX #$E0                      ; 006B8 ×10
  C6BA  20 3F C5  JSR sub_B0_C53F               ; 006BA ×10
  C6BD  20 BA C4  JSR sub_B0_C4BA               ; 006BD ×10
  C6C0  8C 07 20  STY $2007                     ; 006C0 ×10

loc_B0_C6C3:                    ; from 006b2
  C6C3  60        RTS                           ; 006C3 ×32

sub_B0_C6C4:                    ; from 00199 014a9
  C6C4  A9 00     LDA #$00                      ; 006C4 ×2397
  C6C6  85 E9     STA $E9                       ; 006C6 ×2397
  C6C8  A5 03     LDA $03                       ; 006C8 ×2397
  C6CA  0A        ASL A                         ; 006CA ×2397
  C6CB  10 25     BPL loc_B0_C6F2               ; 006CB ×2397
  C6CD  A9 5D     LDA #$5D                      ; 006CD ×2103
  C6CF  90 02     BCC loc_B0_C6D3               ; 006CF ×2103
  C6D1  A9 5A     LDA #$5A                      ; 006D1 inferred, not run

loc_B0_C6D3:                    ; from 006cf
  C6D3  85 EC     STA $EC                       ; 006D3 ×2103
  C6D5  A0 00     LDY #$00                      ; 006D5 ×2103
  C6D7  84 ED     STY $ED                       ; 006D7 ×2103
  C6D9  A2 03     LDX #$03                      ; 006D9 ×2103
  C6DB  18        CLC                           ; 006DB ×2103

loc_B0_C6DC:                    ; from 006e5
  C6DC  B1 EC     LDA ($EC),Y                   ; 006DC ×6309
  C6DE  20 F7 C6  JSR sub_B0_C6F7               ; 006DE ×6309
  C6E1  91 EC     STA ($EC),Y                   ; 006E1 ×6309
  C6E3  C8        INY                           ; 006E3 ×6309
  C6E4  CA        DEX                           ; 006E4 ×6309
  C6E5  D0 F5     BNE loc_B0_C6DC               ; 006E5 ×6309
  C6E7  90 38     BCC loc_B0_C721               ; 006E7 ×2103
  C6E9  A2 02     LDX #$02                      ; 006E9 inferred, not run
  C6EB  A9 99     LDA #$99                      ; 006EB inferred, not run
  C6ED  95 57     STA $57,X                     ; 006ED inferred, not run
  C6EF  CA        DEX                           ; 006EF inferred, not run
  C6F0  10 FB     BPL $C6ED                     ; 006F0 inferred, not run

loc_B0_C6F2:                    ; from 006cb
  C6F2  60        RTS                           ; 006F2 ×294

sub_B0_C6F3:                    ; from 003a2 0072a
  C6F3  86 E8     STX $E8                       ; 006F3 ×4
  C6F5  A2 00     LDX #$00                      ; 006F5 ×4

sub_B0_C6F7:                    ; from 006de
  C6F7  85 EF     STA $EF                       ; 006F7 ×6313
  C6F9  29 F0     AND #$F0                      ; 006F9 ×6313
  C6FB  85 EE     STA $EE                       ; 006FB ×6313
  C6FD  45 EF     EOR $EF                       ; 006FD ×6313
  C6FF  85 EF     STA $EF                       ; 006FF ×6313
  C701  B5 E8     LDA $E8,X                     ; 00701 ×6313
  C703  29 0F     AND #$0F                      ; 00703 ×6313
  C705  65 EF     ADC $EF                       ; 00705 ×6313
  C707  C9 0A     CMP #$0A                      ; 00707 ×6313
  C709  90 02     BCC loc_B0_C70D               ; 00709 ×6313
  C70B  69 05     ADC #$05                      ; 0070B ×1879

loc_B0_C70D:                    ; from 00709
  C70D  65 EE     ADC $EE                       ; 0070D ×6313
  C70F  85 EE     STA $EE                       ; 0070F ×6313
  C711  B5 E8     LDA $E8,X                     ; 00711 ×6313
  C713  29 F0     AND #$F0                      ; 00713 ×6313
  C715  65 EE     ADC $EE                       ; 00715 ×6313
  C717  B0 04     BCS $C71D                     ; 00717 ×6313
  C719  C9 A0     CMP #$A0                      ; 00719 ×6313
  C71B  90 03     BCC loc_B0_C720               ; 0071B ×6313
  C71D  E9 A0     SBC #$A0                      ; 0071D ×184
  C71F  38        SEC                           ; 0071F ×184

loc_B0_C720:                    ; from 0071b
  C720  60        RTS                           ; 00720 ×6313

loc_B0_C721:                    ; from 006e7
  C721  C5 62     CMP $62                       ; 00721 ×2103
  C723  90 15     BCC loc_B0_C73A               ; 00723 ×2103
  C725  A2 04     LDX #$04                      ; 00725 ×0
  C727  A5 62     LDA $62                       ; 00727 ×0
  C729  18        CLC                           ; 00729 ×0
  C72A  20 F3 C6  JSR sub_B0_C6F3               ; 0072A ×0
  C72D  90 02     BCC $C731                     ; 0072D ×0
  C72F  A9 FF     LDA #$FF                      ; 0072F inferred, not run
  C731  85 62     STA $62                       ; 00731 ×0
  C733  E6 60     INC $60                       ; 00733 ×0
  C735  A9 06     LDA #$06                      ; 00735 ×0
  C737  20 0D F8  JSR sub_B0_F80D               ; 00737 ×0

loc_B0_C73A:                    ; from 00723
  C73A  A0 02     LDY #$02                      ; 0073A ×2103
  C73C  B9 57 00  LDA $0057,Y                   ; 0073C ×2103
  C73F  D1 EC     CMP ($EC),Y                   ; 0073F ×2103
  C741  90 05     BCC $C748                     ; 00741 ×2103
  C743  D0 0D     BNE loc_B0_C752               ; 00743 ×2103
  C745  88        DEY                           ; 00745 ×0
  C746  10 F4     BPL $C73C                     ; 00746 ×0
  C748  A0 02     LDY #$02                      ; 00748 ×0
  C74A  B1 EC     LDA ($EC),Y                   ; 0074A ×0
  C74C  99 57 00  STA $0057,Y                   ; 0074C ×0
  C74F  88        DEY                           ; 0074F ×0
  C750  10 F8     BPL $C74A                     ; 00750 ×0

loc_B0_C752:                    ; from 00743
  C752  60        RTS                           ; 00752 ×2103

sub_B0_C753:                    ; from 003aa
  C753  A9 0A     LDA #$0A                      ; 00753 ×78
  C755  20 E3 C4  JSR sub_B0_C4E3               ; 00755 ×78
  C758  A9 09     LDA #$09                      ; 00758 ×78
  C75A  20 E3 C4  JSR sub_B0_C4E3               ; 0075A ×78
  C75D  20 CB C0  JSR sub_B0_C0CB               ; 0075D ×78
  C760  A9 00     LDA #$00                      ; 00760 ×78
  C762  60        RTS                           ; 00762 ×78
  C763  .byte 8B 21 43 4F 4E 54 49 4E 55 45 FF                  ; 00763
  C76E  .byte 6C 20 48 49 16 FE 76 20 53 54 41 47 45 16 FE 8C   ; 0076E data, read by 00509 0050e 00516
  C77E  .byte 20 F0 F1 D3 84 8F 16 FE 62 20 31 50 16 FF 82 20   ; 0077E data, read by 0050e 00516 00509
  C78E  .byte 32 50 16 FF EB 21 53 54 41 47 45 00 00 00 FF 6B   ; 0078E data, read by 00516 00509 0050e
  C79E  .byte 22 50 4C 41 59 00 53 45 4C 45 43 54 FE AA 20 3A   ; 0079E data, read by 0050e 00516 00509
  C7AE  .byte 00 31 39 38 36 00 4B 4F 4E 41 4D 49 FE 0A 22 42   ; 007AE data, read by 00516 00509 0050e
  C7BE  .byte 59 00 00 53 4F 46 54 00 50 52 4F FE AC 22 31 00   ; 007BE data, read by 00516 00509 0050e
  C7CE  .byte 50 4C 41 59 45 52 00 00 41 FF CC 22 31 00 50 4C   ; 007CE data, read by 00516 00509 0050e
  C7DE  .byte 41 59 45 52 00 00 42 FF EC 22 32 00 50 4C 41 59   ; 007DE data, read by 00516 00509 0050e
  C7EE  .byte 45 52 53 00 41 FF 0C 23 32 00 50 4C 41 59 45 52   ; 007EE data, read by 00516 00509 0050e
  C7FE  .byte 53 00 42 FF 8A 21 47 41 4D 45 00 00 4F 56 45 52   ; 007FE data, read by 00516 00509 0050e
  C80E  .byte FE EB 21 50 4C 41 59 45 52 00 31 FF               ; 0080E data, read by 00516 00509 0050e

jt_B0_C81A:                    ; from 004e0
  C81A  A5 07     LDA $07                       ; 0081A ×265382
  C81C  85 0C     STA $0C                       ; 0081C ×265382
  C81E  A5 05     LDA $05                       ; 0081E ×265382
  C820  85 0D     STA $0D                       ; 00820 ×265382

loc_B0_C822:                    ; from 017be
  C822  20 63 CA  JSR sub_B0_CA63               ; 00822 ×298663
  C825  20 B1 CA  JSR sub_B0_CAB1               ; 00825 ×298663
  C828  B0 06     BCS loc_B0_C830               ; 00828 ×298663
  C82A  20 F3 D3  JSR sub_B0_D3F3               ; 0082A ×273089
  C82D  20 91 C9  JSR sub_B0_C991               ; 0082D ×273089

loc_B0_C830:                    ; from 00828
  C830  20 DD C9  JSR sub_B0_C9DD               ; 00830 ×298663
  C833  18        CLC                           ; 00833 ×298663
  C834  60        RTS                           ; 00834 ×298663

sub_B0_C835:                    ; from 00299 0176a
  C835  A0 01     LDY #$01                      ; 00835 ×500
  C837  A6 63     LDX $63                       ; 00837 ×500
  C839  CA        DEX                           ; 00839 ×500
  C83A  86 64     STX $64                       ; 0083A ×500
  C83C  E0 01     CPX #$01                      ; 0083C ×500
  C83E  F0 05     BEQ loc_B0_C845               ; 0083E ×500
  C840  E0 04     CPX #$04                      ; 00840 ×402
  C842  F0 01     BEQ loc_B0_C845               ; 00842 ×402
  C844  88        DEY                           ; 00844 ×203

loc_B0_C845:                    ; from 00842 0083e
  C845  84 65     STY $65                       ; 00845 ×500
  C847  A9 04     LDA #$04                      ; 00847 ×500
  C849  8D 2F 03  STA $032F                     ; 00849 ×500
  C84C  A0 00     LDY #$00                      ; 0084C ×500
  C84E  84 0E     STY $0E                       ; 0084E ×500
  C850  20 89 C8  JSR sub_B0_C889               ; 00850 ×500
  C853  20 FD D2  JSR sub_B0_D2FD               ; 00853 ×500
  C856  20 56 C5  JSR sub_B0_C556               ; 00856 ×500
  C859  A2 F0     LDX #$F0                      ; 00859 ×500
  C85B  A9 07     LDA #$07                      ; 0085B ×500
  C85D  85 79     STA $79                       ; 0085D ×500

loc_B0_C85F:                    ; from 00870
  C85F  A0 08     LDY #$08                      ; 0085F ×3500

loc_B0_C861:                    ; from 00867
  C861  A9 00     LDA #$00                      ; 00861 ×28000
  C863  95 80     STA $80,X                     ; 00863 ×28000
  C865  E8        INX                           ; 00865 ×28000
  C866  88        DEY                           ; 00866 ×28000
  C867  D0 F8     BNE loc_B0_C861               ; 00867 ×28000
  C869  8A        TXA                           ; 00869 ×3500
  C86A  18        CLC                           ; 0086A ×3500
  C86B  69 08     ADC #$08                      ; 0086B ×3500
  C86D  AA        TAX                           ; 0086D ×3500
  C86E  C6 79     DEC $79                       ; 0086E ×3500
  C870  D0 ED     BNE loc_B0_C85F               ; 00870 ×3500
  C872  A2 04     LDX #$04                      ; 00872 ×500
  C874  86 7D     STX $7D                       ; 00874 ×500
  C876  A2 03     LDX #$03                      ; 00876 ×500
  C878  A0 00     LDY #$00                      ; 00878 ×500
  C87A  84 7C     STY $7C                       ; 0087A ×500

loc_B0_C87C:                    ; from 00881 00886
  C87C  A9 00     LDA #$00                      ; 0087C ×384000
  C87E  91 7C     STA ($7C),Y                   ; 0087E ×384000
  C880  88        DEY                           ; 00880 ×384000
  C881  D0 F9     BNE loc_B0_C87C               ; 00881 ×384000
  C883  E6 7D     INC $7D                       ; 00883 ×1500
  C885  CA        DEX                           ; 00885 ×1500
  C886  D0 F4     BNE loc_B0_C87C               ; 00886 ×1500
  C888  60        RTS                           ; 00888 ×500

sub_B0_C889:                    ; from 00850
  C889  24 03     BIT $03                       ; 00889 ×500
  C88B  50 26     BVC loc_B0_C8B3               ; 0088B ×500
  C88D  A5 6F     LDA $6F                       ; 0088D ×463
  C88F  F0 06     BEQ loc_B0_C897               ; 0088F ×463
  C891  A9 00     LDA #$00                      ; 00891 inferred, not run
  C893  85 6F     STA $6F                       ; 00893 inferred, not run
  C895  F0 1E     BEQ loc_B0_C8B5               ; 00895 inferred, not run

loc_B0_C897:                    ; from 0088f
  C897  A5 6E     LDA $6E                       ; 00897 ×463
  C899  C9 06     CMP #$06                      ; 00899 ×463
  C89B  F0 24     BEQ loc_B0_C8C1               ; 0089B ×463
  C89D  A4 64     LDY $64                       ; 0089D ×43
  C89F  D0 14     BNE loc_B0_C8B5               ; 0089F ×43
  C8A1  E6 66     INC $66                       ; 008A1 ×23
  C8A3  A5 66     LDA $66                       ; 008A3 ×23
  C8A5  C9 02     CMP #$02                      ; 008A5 ×23
  C8A7  B0 0C     BCS loc_B0_C8B5               ; 008A7 ×23
  C8A9  24 03     BIT $03                       ; 008A9 ×23
  C8AB  50 08     BVC loc_B0_C8B5               ; 008AB ×23
  C8AD  A5 03     LDA $03                       ; 008AD ×23
  C8AF  29 08     AND #$08                      ; 008AF ×23
  C8B1  F0 02     BEQ loc_B0_C8B5               ; 008B1 ×23

loc_B0_C8B3:                    ; from 0088b
  C8B3  E6 66     INC $66                       ; 008B3 ×40

loc_B0_C8B5:                    ; from 008b1 0089f
  C8B5  A0 00     LDY #$00                      ; 008B5 ×80
  C8B7  84 6B     STY $6B                       ; 008B7 ×80
  C8B9  84 6D     STY $6D                       ; 008B9 ×80
  C8BB  84 AD     STY $AD                       ; 008BB ×80
  C8BD  84 AB     STY $AB                       ; 008BD ×80
  C8BF  F0 21     BEQ loc_B0_C8E2               ; 008BF ×80

loc_B0_C8C1:                    ; from 0089b
  C8C1  A5 69     LDA $69                       ; 008C1 ×420
  C8C3  A4 63     LDY $63                       ; 008C3 ×420
  C8C5  C0 04     CPY #$04                      ; 008C5 ×420
  C8C7  D0 0A     BNE loc_B0_C8D3               ; 008C7 ×420
  C8C9  C9 03     CMP #$03                      ; 008C9 ×34
  C8CB  B0 0C     BCS loc_B0_C8D9               ; 008CB ×34
  C8CD  C9 02     CMP #$02                      ; 008CD ×4
  C8CF  B0 06     BCS loc_B0_C8D7               ; 008CF ×4
  C8D1  C6 6B     DEC $6B                       ; 008D1 ×2

loc_B0_C8D3:                    ; from 008c7
  C8D3  C9 02     CMP #$02                      ; 008D3 ×388
  C8D5  B0 02     BCS loc_B0_C8D9               ; 008D5 ×388

loc_B0_C8D7:                    ; from 008cf
  C8D7  C6 6B     DEC $6B                       ; 008D7 ×67

loc_B0_C8D9:                    ; from 008d5 008cb
  C8D9  C0 05     CPY #$05                      ; 008D9 ×420
  C8DB  D0 05     BNE loc_B0_C8E2               ; 008DB ×420
  C8DD  A5 AB     LDA $AB                       ; 008DD ×193
  C8DF  4A        LSR A                         ; 008DF ×193
  C8E0  85 6B     STA $6B                       ; 008E0 ×193

loc_B0_C8E2:                    ; from 008db 008bf
  C8E2  A0 00     LDY #$00                      ; 008E2 ×500
  C8E4  84 9B     STY $9B                       ; 008E4 ×500
  C8E6  84 6A     STY $6A                       ; 008E6 ×500
  C8E8  84 CF     STY $CF                       ; 008E8 ×500
  C8EA  84 0F     STY $0F                       ; 008EA ×500
  C8EC  84 DE     STY $DE                       ; 008EC ×500
  C8EE  84 DF     STY $DF                       ; 008EE ×500
  C8F0  84 CD     STY $CD                       ; 008F0 ×500
  C8F2  8C 88 03  STY $0388                     ; 008F2 ×500
  C8F5  8C FF 03  STY $03FF                     ; 008F5 ×500
  C8F8  A0 01     LDY #$01                      ; 008F8 ×500
  C8FA  84 B8     STY $B8                       ; 008FA ×500

sub_B0_C8FC:                    ; from 01491
  C8FC  A9 00     LDA #$00                      ; 008FC ×1087
  C8FE  A2 04     LDX #$04                      ; 008FE ×1087

loc_B0_C900:                    ; from 00903
  C900  95 D9     STA $D9,X                     ; 00900 ×5435
  C902  CA        DEX                           ; 00902 ×5435
  C903  10 FB     BPL loc_B0_C900               ; 00903 ×5435
  C905  60        RTS                           ; 00905 ×1087

loc_B0_C906:                    ; from 0252f 03183 02fc4
  C906  A5 64     LDA $64                       ; 00906 ×500
  C908  0A        ASL A                         ; 00908 ×500
  C909  AA        TAX                           ; 00909 ×500
  C90A  BD 28 C9  LDA $C928,X                   ; 0090A ×500
  C90D  85 7C     STA $7C                       ; 0090D ×500
  C90F  BD 29 C9  LDA $C929,X                   ; 0090F ×500
  C912  85 7D     STA $7D                       ; 00912 ×500
  C914  A0 00     LDY #$00                      ; 00914 ×500
  C916  B1 7C     LDA ($7C),Y                   ; 00916 ×500
  C918  85 79     STA $79                       ; 00918 ×500
  C91A  A5 7C     LDA $7C                       ; 0091A ×500
  C91C  18        CLC                           ; 0091C ×500
  C91D  69 01     ADC #$01                      ; 0091D ×500
  C91F  85 7C     STA $7C                       ; 0091F ×500
  C921  90 02     BCC loc_B0_C925               ; 00921 ×500
  C923  E6 7D     INC $7D                       ; 00923 inferred, not run

loc_B0_C925:                    ; from 00921
  C925  4C DE CF  JMP loc_B0_CFDE               ; 00925 ×500
  C928  .byte 32 C9 43 C9 54 C9 6F C9 80 C9 02 07 01 06 68 A6   ; 00928 data, read by 0090a 0090f 00916 00fe4 (+1)
  C938  .byte 30 00 00 07 01 08 80 BE 28 00 1A 02 07 01 06 20   ; 00938 data, read by 00fe9 00fe4 00916
  C948  .byte 68 40 00 03 07 00 12 B8 F4 00 01 1F 04 07 01 06   ; 00948 data, read by 00fe9 00fe4 00916
  C958  .byte 20 A0 3C 00 03 07 01 09 38 B8 38 00 20 04 00 09   ; 00958 data, read by 00fe9 00fe4
  C968  .byte 5C B8 04 00 09 80 B8 02 07 01 06 20 A1 2A 00 00   ; 00968 data, read by 00fe9 00fe4 00916
  C978  .byte 07 01 13 38 B5 20 00 10 02 07 01 06 20 4A 16 00   ; 00978 data, read by 00fe4 00fe9 00916
  C988  .byte 06 07 00 12 B8 F4 00 01 1F                        ; 00988 data, read by 00fe9 00fe4

sub_B0_C991:                    ; from 0082d
  C991  24 03     BIT $03                       ; 00991 ×273089
  C993  50 0B     BVC loc_B0_C9A0               ; 00993 ×273089
  C995  AC 06 04  LDY $0406                     ; 00995 ×239808
  C998  D0 06     BNE loc_B0_C9A0               ; 00998 ×239808
  C99A  EE 06 04  INC $0406                     ; 0099A ×463
  C99D  4C 51 CB  JMP loc_B0_CB51               ; 0099D ×463

loc_B0_C9A0:                    ; from 00998 00993
  C9A0  20 0D CF  JSR sub_B0_CF0D               ; 009A0 ×272626
  C9A3  20 49 CF  JSR sub_B0_CF49               ; 009A3 ×272626
  C9A6  24 03     BIT $03                       ; 009A6 ×272626
  C9A8  50 13     BVC loc_B0_C9BD               ; 009A8 ×272626
  C9AA  20 44 D5  JSR sub_B0_D544               ; 009AA ×239345
  C9AD  A6 0F     LDX $0F                       ; 009AD ×239345
  C9AF  D0 0C     BNE loc_B0_C9BD               ; 009AF ×239345
  C9B1  20 04 CA  JSR sub_B0_CA04               ; 009B1 ×138185
  C9B4  D0 07     BNE loc_B0_C9BD               ; 009B4 ×138185
  C9B6  E6 0F     INC $0F                       ; 009B6 inferred, not run
  C9B8  E6 CF     INC $CF                       ; 009B8 inferred, not run
  C9BA  4C DC DC  JMP $DCDC                     ; 009BA inferred, not run

loc_B0_C9BD:                    ; from 009b4 009af 009a8
  C9BD  A6 52     LDX $52                       ; 009BD ×272626
  C9BF  E8        INX                           ; 009BF ×272626
  C9C0  E0 06     CPX #$06                      ; 009C0 ×272626
  C9C2  90 02     BCC loc_B0_C9C6               ; 009C2 ×272626
  C9C4  A2 00     LDX #$00                      ; 009C4 ×45424

loc_B0_C9C6:                    ; from 009c2
  C9C6  86 52     STX $52                       ; 009C6 ×272626
  C9C8  20 CE C9  JSR sub_B0_C9CE               ; 009C8 ×272626
  C9CB  4C 32 CD  JMP loc_B0_CD32               ; 009CB ×272626

sub_B0_C9CE:                    ; from 009c8
  C9CE  A5 64     LDA $64                       ; 009CE ×272626
  C9D0  20 CD C4  JSR sub_B0_C4CD               ; 009D0 ×272626
  C9D3  .byte 32 E5 D9 E9 41 EC 8F EF 63 F1                     ; 009D3 data, read by 004d6 004da

sub_B0_C9DD:                    ; from 00830 00181
  C9DD  A6 64     LDX $64                       ; 009DD ×300477
  C9DF  BD E7 C9  LDA $C9E7,X                   ; 009DF ×300477
  C9E2  85 79     STA $79                       ; 009E2 ×300477
  C9E4  4C 01 D0  JMP loc_B0_D001               ; 009E4 ×300477
  C9E7  .byte 07 07 04 02 06                                    ; 009E7 data, read by 009df

sub_B0_C9EC:                    ; from 02aa3 02c10 02a20 02892 027d9 035bf (+7)
  C9EC  8A        TXA                           ; 009EC ×809666
  C9ED  18        CLC                           ; 009ED ×809666
  C9EE  69 10     ADC #$10                      ; 009EE ×809666
  C9F0  AA        TAX                           ; 009F0 ×809666
  C9F1  60        RTS                           ; 009F1 ×809666

sub_B0_C9F2:                    ; from 02c6d 0307f 030ee 02e86 02f2f 02c83 (+5)
  C9F2  8A        TXA                           ; 009F2 ×348687
  C9F3  38        SEC                           ; 009F3 ×348687
  C9F4  E9 10     SBC #$10                      ; 009F4 ×348687
  C9F6  AA        TAX                           ; 009F6 ×348687
  C9F7  60        RTS                           ; 009F7 ×348687
  C9F8  .byte 98 18 69 10 A8 60 98 38 E9 10 A8 60               ; 009F8

sub_B0_CA04:                    ; from 009b1 00184
  CA04  AD 43 03  LDA $0343                     ; 00A04 ×139999
  CA07  0D 42 03  ORA $0342                     ; 00A07 ×139999
  CA0A  0D 41 03  ORA $0341                     ; 00A0A ×139999
  CA0D  0D 40 03  ORA $0340                     ; 00A0D ×139999
  CA10  60        RTS                           ; 00A10 ×139999

loc_B0_CA11:                    ; from 01624 00cd6
  CA11  AD 02 20  LDA $2002                     ; 00A11 ×4696
  CA14  A9 3F     LDA #$3F                      ; 00A14 ×4696
  CA16  8D 06 20  STA $2006                     ; 00A16 ×4696
  CA19  A9 00     LDA #$00                      ; 00A19 ×4696
  CA1B  8D 06 20  STA $2006                     ; 00A1B ×4696
  CA1E  8D 06 20  STA $2006                     ; 00A1E ×4696
  CA21  8D 06 20  STA $2006                     ; 00A21 ×4696
  CA24  60        RTS                           ; 00A24 ×4696

sub_B0_CA25:                    ; from 01c65 01cc1 01c7b 0019c 00179 0028f (+1)
  CA25  A5 45     LDA $45                       ; 00A25 ×23366
  CA27  D0 06     BNE loc_B0_CA2F               ; 00A27 ×23366

loc_B0_CA29:                    ; from 00a39
  CA29  A5 12     LDA $12                       ; 00A29 ×2314
  CA2B  D0 02     BNE loc_B0_CA2F               ; 00A2B ×2314
  CA2D  38        SEC                           ; 00A2D ×2314
  CA2E  60        RTS                           ; 00A2E ×2314

loc_B0_CA2F:                    ; from 00a33 00a27
  CA2F  18        CLC                           ; 00A2F ×96926
  CA30  60        RTS                           ; 00A30 ×96926

sub_B0_CA31:                    ; from 01cb3
  CA31  A5 34     LDA $34                       ; 00A31 ×75874
  CA33  D0 FA     BNE loc_B0_CA2F               ; 00A33 ×75874
  CA35  A5 23     LDA $23                       ; 00A35 ×445
  CA37  D0 F6     BNE loc_B0_CA2F               ; 00A37 ×445
  CA39  F0 EE     BEQ loc_B0_CA29               ; 00A39 ×445

sub_B0_CA3B:                    ; from 01c9b 01cdc 01aa8 00271 00e5b
  CA3B  A2 03     LDX #$03                      ; 00A3B ×491

loc_B0_CA3D:                    ; from 00a44
  CA3D  BD 47 CA  LDA $CA47,X                   ; 00A3D ×1964
  CA40  20 0D F8  JSR sub_B0_F80D               ; 00A40 ×1964
  CA43  CA        DEX                           ; 00A43 ×1964
  CA44  10 F7     BPL loc_B0_CA3D               ; 00A44 ×1964
  CA46  60        RTS                           ; 00A46 ×491
  CA47  .byte C0 80 40 00                                       ; 00A47 data, read by 00a3d

sub_B0_CA4B:                    ; from 01719
  CA4B  A5 53     LDA $53                       ; 00A4B ×950
  CA4D  09 04     ORA #$04                      ; 00A4D ×950

loc_B0_CA4F:                    ; from 00a59 00a60
  CA4F  85 53     STA $53                       ; 00A4F ×2384
  CA51  8D 00 20  STA $2000                     ; 00A51 ×2384
  CA54  60        RTS                           ; 00A54 ×2384

loc_B0_CA55:                    ; from 01721
  CA55  A5 53     LDA $53                       ; 00A55 ×950
  CA57  29 FB     AND #$FB                      ; 00A57 ×950
  CA59  4C 4F CA  JMP loc_B0_CA4F               ; 00A59 ×950

sub_B0_CA5C:                    ; from 002d9 0035a
  CA5C  A5 53     LDA $53                       ; 00A5C ×484
  CA5E  29 FE     AND #$FE                      ; 00A5E ×484
  CA60  4C 4F CA  JMP loc_B0_CA4F               ; 00A60 ×484

sub_B0_CA63:                    ; from 00a68 00822 00108 00104
  CA63  AD 02 20  LDA $2002                     ; 00A63 ×4749427
  CA66  29 40     AND #$40                      ; 00A66 ×4749427
  CA68  D0 F9     BNE sub_B0_CA63               ; 00A68 ×4749427
  CA6A  8D 10 04  STA $0410                     ; 00A6A ×301054
  CA6D  20 CE CF  JSR sub_B0_CFCE               ; 00A6D ×301054
  CA70  AD 2F 03  LDA $032F                     ; 00A70 ×301054
  CA73  F0 0B     BEQ loc_B0_CA80               ; 00A73 ×301054
  CA75  CE 2F 03  DEC $032F                     ; 00A75 ×2000
  CA78  D0 36     BNE loc_B0_CAB0               ; 00A78 ×2000
  CA7A  A9 00     LDA #$00                      ; 00A7A ×500
  CA7C  85 FB     STA $FB                       ; 00A7C ×500
  CA7E  F0 30     BEQ loc_B0_CAB0               ; 00A7E ×500

loc_B0_CA80:                    ; from 00a8b 00a73
  CA80  AD 02 20  LDA $2002                     ; 00A80 ×74286748
  CA83  29 40     AND #$40                      ; 00A83 ×74286748
  CA85  D0 06     BNE loc_B0_CA8D               ; 00A85 ×74286748
  CA87  EA        NOP                           ; 00A87 ×73987929
  CA88  CE 10 04  DEC $0410                     ; 00A88 ×73987929
  CA8B  D0 F3     BNE loc_B0_CA80               ; 00A8B ×73987929

loc_B0_CA8D:                    ; from 00a85
  CA8D  A2 1A     LDX #$1A                      ; 00A8D ×299054

loc_B0_CA8F:                    ; from 00a90
  CA8F  CA        DEX                           ; 00A8F ×7775404
  CA90  D0 FD     BNE loc_B0_CA8F               ; 00A90 ×7775404
  CA92  A6 6A     LDX $6A                       ; 00A92 ×299054
  CA94  A5 6B     LDA $6B                       ; 00A94 ×299054
  CA96  4A        LSR A                         ; 00A96 ×299054
  CA97  A5 53     LDA $53                       ; 00A97 ×299054
  CA99  29 FC     AND #$FC                      ; 00A99 ×299054
  CA9B  69 00     ADC #$00                      ; 00A9B ×299054
  CA9D  85 53     STA $53                       ; 00A9D ×299054
  CA9F  AD 02 20  LDA $2002                     ; 00A9F ×299054
  CAA2  EA        NOP                           ; 00AA2 ×299054
  CAA3  8E 05 20  STX $2005                     ; 00AA3 ×299054
  CAA6  A2 00     LDX #$00                      ; 00AA6 ×299054
  CAA8  8E 05 20  STX $2005                     ; 00AA8 ×299054
  CAAB  A5 53     LDA $53                       ; 00AAB ×299054
  CAAD  8D 00 20  STA $2000                     ; 00AAD ×299054

loc_B0_CAB0:                    ; from 00a78 00a7e
  CAB0  60        RTS                           ; 00AB0 ×301054

sub_B0_CAB1:                    ; from 00825
  CAB1  AE 0C 03  LDX $030C                     ; 00AB1 ×298663
  CAB4  CA        DEX                           ; 00AB4 ×298663
  CAB5  F0 0C     BEQ loc_B0_CAC3               ; 00AB5 ×298663
  CAB7  CA        DEX                           ; 00AB7 ×298598
  CAB8  F0 50     BEQ loc_B0_CB0A               ; 00AB8 ×298598
  CABA  A5 0E     LDA $0E                       ; 00ABA ×273089
  CABC  F0 03     BEQ loc_B0_CAC1               ; 00ABC ×273089
  CABE  EE 0C 03  INC $030C                     ; 00ABE ×65

loc_B0_CAC1:                    ; from 00abc
  CAC1  18        CLC                           ; 00AC1 ×273089
  CAC2  60        RTS                           ; 00AC2 ×273089

loc_B0_CAC3:                    ; from 00ab5
  CAC3  EE 0C 03  INC $030C                     ; 00AC3 ×65
  CAC6  EE 10 03  INC $0310                     ; 00AC6 ×65
  CAC9  A9 16     LDA #$16                      ; 00AC9 ×65
  CACB  20 0D F8  JSR sub_B0_F80D               ; 00ACB ×65
  CACE  A9 C0     LDA #$C0                      ; 00ACE ×65
  CAD0  20 0D F8  JSR sub_B0_F80D               ; 00AD0 ×65

loc_B0_CAD3:                    ; from 00b18
  CAD3  A9 2E     LDA #$2E                      ; 00AD3 ×865

loc_B0_CAD5:                    ; from 00b26
  CAD5  85 8E     STA $8E                       ; 00AD5 ×1725
  CAD7  A9 05     LDA #$05                      ; 00AD7 ×1725
  CAD9  85 79     STA $79                       ; 00AD9 ×1725
  CADB  A9 60     LDA #$60                      ; 00ADB ×1725
  CADD  85 8C     STA $8C                       ; 00ADD ×1725
  CADF  A2 04     LDX #$04                      ; 00ADF ×1725
  CAE1  A0 00     LDY #$00                      ; 00AE1 ×1725

loc_B0_CAE3:                    ; from 00b06
  CAE3  A5 8E     LDA $8E                       ; 00AE3 ×8625
  CAE5  9D 00 02  STA $0200,X                   ; 00AE5 ×8625
  CAE8  E8        INX                           ; 00AE8 ×8625
  CAE9  B9 28 CB  LDA $CB28,Y                   ; 00AE9 ×8625
  CAEC  9D 00 02  STA $0200,X                   ; 00AEC ×8625
  CAEF  C8        INY                           ; 00AEF ×8625
  CAF0  E8        INX                           ; 00AF0 ×8625
  CAF1  A9 01     LDA #$01                      ; 00AF1 ×8625
  CAF3  9D 00 02  STA $0200,X                   ; 00AF3 ×8625
  CAF6  E8        INX                           ; 00AF6 ×8625
  CAF7  A5 8C     LDA $8C                       ; 00AF7 ×8625
  CAF9  9D 00 02  STA $0200,X                   ; 00AF9 ×8625
  CAFC  E8        INX                           ; 00AFC ×8625
  CAFD  A5 8C     LDA $8C                       ; 00AFD ×8625
  CAFF  18        CLC                           ; 00AFF ×8625
  CB00  69 08     ADC #$08                      ; 00B00 ×8625
  CB02  85 8C     STA $8C                       ; 00B02 ×8625
  CB04  C6 79     DEC $79                       ; 00B04 ×8625
  CB06  D0 DB     BNE loc_B0_CAE3               ; 00B06 ×8625

loc_B0_CB08:                    ; from 00b12
  CB08  38        SEC                           ; 00B08 ×25574
  CB09  60        RTS                           ; 00B09 ×25574

loc_B0_CB0A:                    ; from 00ab8
  CB0A  A5 0E     LDA $0E                       ; 00B0A ×25509
  CB0C  F0 0E     BEQ loc_B0_CB1C               ; 00B0C ×25509
  CB0E  A5 09     LDA $09                       ; 00B0E ×25445
  CB10  29 0F     AND #$0F                      ; 00B10 ×25445
  CB12  D0 F4     BNE loc_B0_CB08               ; 00B12 ×25445
  CB14  A5 09     LDA $09                       ; 00B14 ×1596
  CB16  29 10     AND #$10                      ; 00B16 ×1596
  CB18  D0 B9     BNE loc_B0_CAD3               ; 00B18 ×1596
  CB1A  F0 08     BEQ loc_B0_CB24               ; 00B1A ×796

loc_B0_CB1C:                    ; from 00b0c
  CB1C  A9 00     LDA #$00                      ; 00B1C ×64
  CB1E  8D 0C 03  STA $030C                     ; 00B1E ×64
  CB21  8D 10 03  STA $0310                     ; 00B21 ×64

loc_B0_CB24:                    ; from 00b1a
  CB24  A9 F4     LDA #$F4                      ; 00B24 ×860
  CB26  D0 AD     BNE loc_B0_CAD5               ; 00B26 ×860
  CB28  .byte 5B 6A 6B 7A 7B                                    ; 00B28 data, read by 00ae9

sub_B0_CB2D:                    ; from 002eb
  CB2D  86 F9     STX $F9                       ; 00B2D ×468
  CB2F  A9 00     LDA #$00                      ; 00B2F ×468
  CB31  8D 40 03  STA $0340                     ; 00B31 ×468
  CB34  8D 41 03  STA $0341                     ; 00B34 ×468
  CB37  8D 42 03  STA $0342                     ; 00B37 ×468
  CB3A  A2 05     LDX #$05                      ; 00B3A ×468
  CB3C  A0 02     LDY #$02                      ; 00B3C ×468
  CB3E  A5 66     LDA $66                       ; 00B3E ×468
  CB40  38        SEC                           ; 00B40 ×468
  CB41  E9 04     SBC #$04                      ; 00B41 ×468
  CB43  F0 06     BEQ loc_B0_CB4B               ; 00B43 ×468
  CB45  30 04     BMI loc_B0_CB4B               ; 00B45 ×468
  CB47  CA        DEX                           ; 00B47 inferred, not run
  CB48  88        DEY                           ; 00B48 inferred, not run
  CB49  D0 F5     BNE $CB40                     ; 00B49 inferred, not run

loc_B0_CB4B:                    ; from 00b45
  CB4B  8E 43 03  STX $0343                     ; 00B4B ×468
  CB4E  A6 F9     LDX $F9                       ; 00B4E ×468
  CB50  60        RTS                           ; 00B50 ×468

loc_B0_CB51:                    ; from 0099d
  CB51  A0 00     LDY #$00                      ; 00B51 ×463
  CB53  F0 02     BEQ loc_B0_CB57               ; 00B53 ×463
  CB55  A0 01     LDY #$01                      ; 00B55 inferred, not run

loc_B0_CB57:                    ; from 00b53
  CB57  A9 00     LDA #$00                      ; 00B57 ×463
  CB59  8D 06 40  STA $4006                     ; 00B59 ×463
  CB5C  8D 07 40  STA $4007                     ; 00B5C ×463
  CB5F  8D 0A 40  STA $400A                     ; 00B5F ×463
  CB62  8D 0B 40  STA $400B                     ; 00B62 ×463
  CB65  A6 63     LDX $63                       ; 00B65 ×463
  CB67  E0 05     CPX #$05                      ; 00B67 ×463
  CB69  F0 0A     BEQ loc_B0_CB75               ; 00B69 ×463
  CB6B  E0 03     CPX #$03                      ; 00B6B ×264
  CB6D  F0 09     BEQ loc_B0_CB78               ; 00B6D ×264
  CB6F  E0 02     CPX #$02                      ; 00B6F ×202
  CB71  F0 05     BEQ loc_B0_CB78               ; 00B71 ×202
  CB73  D0 06     BNE loc_B0_CB7B               ; 00B73 ×124

loc_B0_CB75:                    ; from 00b69
  CB75  18        CLC                           ; 00B75 ×199
  CB76  69 0A     ADC #$0A                      ; 00B76 ×199

loc_B0_CB78:                    ; from 00b71 00b6d
  CB78  18        CLC                           ; 00B78 ×339
  CB79  69 0A     ADC #$0A                      ; 00B79 ×339

loc_B0_CB7B:                    ; from 00b73
  CB7B  AA        TAX                           ; 00B7B ×463
  CB7C  C0 01     CPY #$01                      ; 00B7C ×463
  CB7E  F0 05     BEQ $CB85                     ; 00B7E ×463
  CB80  BD BC CB  LDA $CBBC,X                   ; 00B80 ×463
  CB83  D0 03     BNE loc_B0_CB88               ; 00B83 ×463
  CB85  BD BD CB  LDA $CBBD,X                   ; 00B85 inferred, not run

loc_B0_CB88:                    ; from 00b83
  CB88  85 2E     STA $2E                       ; 00B88 ×463
  CB8A  85 3F     STA $3F                       ; 00B8A ×463
  CB8C  BD BE CB  LDA $CBBE,X                   ; 00B8C ×463
  CB8F  85 26     STA $26                       ; 00B8F ×463
  CB91  BD BF CB  LDA $CBBF,X                   ; 00B91 ×463
  CB94  85 37     STA $37                       ; 00B94 ×463
  CB96  BD C0 CB  LDA $CBC0,X                   ; 00B96 ×463
  CB99  85 30     STA $30                       ; 00B99 ×463
  CB9B  BD C1 CB  LDA $CBC1,X                   ; 00B9B ×463
  CB9E  85 31     STA $31                       ; 00B9E ×463
  CBA0  BD C2 CB  LDA $CBC2,X                   ; 00BA0 ×463
  CBA3  8D 04 40  STA $4004                     ; 00BA3 ×463
  CBA6  BD C3 CB  LDA $CBC3,X                   ; 00BA6 ×463
  CBA9  8D 08 40  STA $4008                     ; 00BA9 ×463
  CBAC  BD C4 CB  LDA $CBC4,X                   ; 00BAC ×463
  CBAF  86 F9     STX $F9                       ; 00BAF ×463
  CBB1  20 0D F8  JSR sub_B0_F80D               ; 00BB1 ×463
  CBB4  A6 F9     LDX $F9                       ; 00BB4 ×463
  CBB6  BD C5 CB  LDA $CBC5,X                   ; 00BB6 ×463
  CBB9  4C 0D F8  JMP sub_B0_F80D               ; 00BB9 ×463
  CBBC  .byte 07                                                ; 00BBC data, read by 00b80
  CBBD  .byte 05                                                ; 00BBD
  CBBE  .byte 7A 20 02 05 7A 20 4E 8F 07                        ; 00BBE data, read by 00b8c 00b91 00b96 00b9b (+5)
  CBC7  .byte 05                                                ; 00BC7
  CBC8  .byte BA 2E 02 05 BA 2E 50 91 04                        ; 00BC8 data, read by 00b8c 00b91 00b96 00b9b (+5)
  CBD1  .byte 03                                                ; 00BD1
  CBD2  .byte FA 24 00 07 FA 24 52 93                           ; 00BD2 data, read by 00b8c 00b91 00b96 00b9b (+4)

sub_B0_CBDA:                    ; from 00274 00e5e
  CBDA  A9 54     LDA #$54                      ; 00BDA ×41
  CBDC  20 0D F8  JSR sub_B0_F80D               ; 00BDC ×41
  CBDF  A9 D5     LDA #$D5                      ; 00BDF ×41
  CBE1  4C 0D F8  JMP sub_B0_F80D               ; 00BE1 ×41

sub_B0_CBE4:                    ; from 011c4
  CBE4  8A        TXA                           ; 00BE4 ×8719
  CBE5  48        PHA                           ; 00BE5 ×8719
  CBE6  98        TYA                           ; 00BE6 ×8719
  CBE7  48        PHA                           ; 00BE7 ×8719
  CBE8  A9 00     LDA #$00                      ; 00BE8 ×8719
  CBEA  85 7F     STA $7F                       ; 00BEA ×8719
  CBEC  85 7E     STA $7E                       ; 00BEC ×8719
  CBEE  A5 8E     LDA $8E                       ; 00BEE ×8719
  CBF0  29 F8     AND #$F8                      ; 00BF0 ×8719
  CBF2  0A        ASL A                         ; 00BF2 ×8719
  CBF3  26 7F     ROL $7F                       ; 00BF3 ×8719
  CBF5  0A        ASL A                         ; 00BF5 ×8719
  CBF6  26 7F     ROL $7F                       ; 00BF6 ×8719
  CBF8  85 7E     STA $7E                       ; 00BF8 ×8719
  CBFA  A5 8D     LDA $8D                       ; 00BFA ×8719
  CBFC  29 01     AND #$01                      ; 00BFC ×8719
  CBFE  0A        ASL A                         ; 00BFE ×8719
  CBFF  0A        ASL A                         ; 00BFF ×8719
  CC00  18        CLC                           ; 00C00 ×8719
  CC01  69 20     ADC #$20                      ; 00C01 ×8719
  CC03  65 7F     ADC $7F                       ; 00C03 ×8719
  CC05  85 7F     STA $7F                       ; 00C05 ×8719
  CC07  A5 8C     LDA $8C                       ; 00C07 ×8719
  CC09  4A        LSR A                         ; 00C09 ×8719
  CC0A  4A        LSR A                         ; 00C0A ×8719
  CC0B  4A        LSR A                         ; 00C0B ×8719
  CC0C  18        CLC                           ; 00C0C ×8719
  CC0D  65 7E     ADC $7E                       ; 00C0D ×8719
  CC0F  85 7E     STA $7E                       ; 00C0F ×8719
  CC11  68        PLA                           ; 00C11 ×8719
  CC12  A8        TAY                           ; 00C12 ×8719
  CC13  68        PLA                           ; 00C13 ×8719
  CC14  AA        TAX                           ; 00C14 ×8719
  CC15  60        RTS                           ; 00C15 ×8719

sub_B0_CC16:                    ; from 0259f 02f58 00def 00dce 02ce5 0361f (+2)
  CC16  BD 01 05  LDA $0501,X                   ; 00C16 ×112851
  CC19  85 77     STA $77                       ; 00C19 ×112851
  CC1B  BD 02 05  LDA $0502,X                   ; 00C1B ×112851
  CC1E  85 78     STA $78                       ; 00C1E ×112851

sub_B0_CC20:                    ; from 03127 02952 03715 00eb0
  CC20  A5 6B     LDA $6B                       ; 00C20 ×167939
  CC22  29 01     AND #$01                      ; 00C22 ×167939
  CC24  85 7A     STA $7A                       ; 00C24 ×167939
  CC26  A5 78     LDA $78                       ; 00C26 ×167939
  CC28  29 01     AND #$01                      ; 00C28 ×167939
  CC2A  85 78     STA $78                       ; 00C2A ×167939
  CC2C  C5 7A     CMP $7A                       ; 00C2C ×167939
  CC2E  D0 10     BNE loc_B0_CC40               ; 00C2E ×167939
  CC30  A5 77     LDA $77                       ; 00C30 ×92353
  CC32  C5 6A     CMP $6A                       ; 00C32 ×92353
  CC34  B0 05     BCS loc_B0_CC3B               ; 00C34 ×92353
  CC36  20 50 CC  JSR sub_B0_CC50               ; 00C36 ×13560
  CC39  38        SEC                           ; 00C39 ×13560
  CC3A  60        RTS                           ; 00C3A ×13560

loc_B0_CC3B:                    ; from 00c34
  CC3B  20 5B CC  JSR sub_B0_CC5B               ; 00C3B ×78793
  CC3E  18        CLC                           ; 00C3E ×78793
  CC3F  60        RTS                           ; 00C3F ×78793

loc_B0_CC40:                    ; from 00c2e
  CC40  A5 77     LDA $77                       ; 00C40 ×75586
  CC42  C5 6A     CMP $6A                       ; 00C42 ×75586
  CC44  B0 05     BCS loc_B0_CC4B               ; 00C44 ×75586
  CC46  20 50 CC  JSR sub_B0_CC50               ; 00C46 ×69069
  CC49  18        CLC                           ; 00C49 ×69069
  CC4A  60        RTS                           ; 00C4A ×69069

loc_B0_CC4B:                    ; from 00c44
  CC4B  20 5B CC  JSR sub_B0_CC5B               ; 00C4B ×6517
  CC4E  38        SEC                           ; 00C4E ×6517
  CC4F  60        RTS                           ; 00C4F ×6517

sub_B0_CC50:                    ; from 00c46 00c36
  CC50  A9 00     LDA #$00                      ; 00C50 ×82629
  CC52  38        SEC                           ; 00C52 ×82629
  CC53  E5 6A     SBC $6A                       ; 00C53 ×82629
  CC55  18        CLC                           ; 00C55 ×82629
  CC56  65 77     ADC $77                       ; 00C56 ×82629
  CC58  85 77     STA $77                       ; 00C58 ×82629
  CC5A  60        RTS                           ; 00C5A ×82629

sub_B0_CC5B:                    ; from 00c3b 00c4b
  CC5B  38        SEC                           ; 00C5B ×85310
  CC5C  E5 6A     SBC $6A                       ; 00C5C ×85310
  CC5E  85 77     STA $77                       ; 00C5E ×85310
  CC60  18        CLC                           ; 00C60 ×85310
  CC61  60        RTS                           ; 00C61 ×85310

sub_B0_CC62:                    ; from 0296b 0291c 035f3 02f8a
  CC62  A5 8F     LDA $8F                       ; 00C62 ×442689
  CC64  99 C8 03  STA $03C8,Y                   ; 00C64 ×442689
  CC67  A5 8D     LDA $8D                       ; 00C67 ×442689
  CC69  99 C9 03  STA $03C9,Y                   ; 00C69 ×442689

sub_B0_CC6C:                    ; from 02bed
  CC6C  B5 73     LDA $73,X                     ; 00C6C ×546029
  CC6E  18        CLC                           ; 00C6E ×546029
  CC6F  65 8E     ADC $8E                       ; 00C6F ×546029
  CC71  99 CA 03  STA $03CA,Y                   ; 00C71 ×546029
  CC74  B5 74     LDA $74,X                     ; 00C74 ×546029
  CC76  18        CLC                           ; 00C76 ×546029
  CC77  65 8C     ADC $8C                       ; 00C77 ×546029
  CC79  99 CB 03  STA $03CB,Y                   ; 00C79 ×546029
  CC7C  38        SEC                           ; 00C7C ×546029
  CC7D  60        RTS                           ; 00C7D ×546029

sub_B0_CC7E:                    ; from 028d2 02c05 035f6 030e9 028f0 0288a (+2)
  CC7E  86 F8     STX $F8                       ; 00C7E ×159766
  CC80  A2 00     LDX #$00                      ; 00C80 ×159766
  CC82  20 94 CC  JSR sub_B0_CC94               ; 00C82 ×159766
  CC85  90 05     BCC loc_B0_CC8C               ; 00C85 ×159766

loc_B0_CC87:                    ; from 00c91
  CC87  A2 01     LDX #$01                      ; 00C87 ×268085
  CC89  20 94 CC  JSR sub_B0_CC94               ; 00C89 ×268085

loc_B0_CC8C:                    ; from 00c85
  CC8C  A6 F8     LDX $F8                       ; 00C8C ×369122
  CC8E  60        RTS                           ; 00C8E ×369122

sub_B0_CC8F:                    ; from 02bf4 028bf 030ce 02e81 02f1a 02efa (+2)
  CC8F  86 F8     STX $F8                       ; 00C8F ×209356
  CC91  4C 87 CC  JMP loc_B0_CC87               ; 00C91 ×209356

sub_B0_CC94:                    ; from 00c89 00c82
  CC94  BD D0 03  LDA $03D0,X                   ; 00C94 ×427851
  CC97  18        CLC                           ; 00C97 ×427851
  CC98  7D C8 03  ADC $03C8,X                   ; 00C98 ×427851
  CC9B  8D CD 03  STA $03CD                     ; 00C9B ×427851
  CC9E  BD D2 03  LDA $03D2,X                   ; 00C9E ×427851
  CCA1  18        CLC                           ; 00CA1 ×427851
  CCA2  7D D0 03  ADC $03D0,X                   ; 00CA2 ×427851
  CCA5  38        SEC                           ; 00CA5 ×427851
  CCA6  FD CA 03  SBC $03CA,X                   ; 00CA6 ×427851
  CCA9  90 07     BCC loc_B0_CCB2               ; 00CA9 ×427851
  CCAB  CD CD 03  CMP $03CD                     ; 00CAB ×193593
  CCAE  F0 04     BEQ loc_B0_CCB4               ; 00CAE ×193593
  CCB0  90 02     BCC loc_B0_CCB4               ; 00CB0 ×192953

loc_B0_CCB2:                    ; from 00ca9
  CCB2  18        CLC                           ; 00CB2 ×349049
  CCB3  60        RTS                           ; 00CB3 ×349049

loc_B0_CCB4:                    ; from 00cb0 00cae
  CCB4  38        SEC                           ; 00CB4 ×78802
  CCB5  60        RTS                           ; 00CB5 ×78802

sub_B0_CCB6:                    ; from 00cd0 00cd9
  CCB6  20 1E D3  JSR sub_B0_D31E               ; 00CB6 ×659
  CCB9  AD E6 CC  LDA $CCE6                     ; 00CB9 ×659
  CCBC  85 E4     STA $E4                       ; 00CBC ×659
  CCBE  AD E7 CC  LDA $CCE7                     ; 00CBE ×659
  CCC1  85 E5     STA $E5                       ; 00CC1 ×659
  CCC3  A9 00     LDA #$00                      ; 00CC3 ×659
  CCC5  85 E0     STA $E0                       ; 00CC5 ×659
  CCC7  A9 3F     LDA #$3F                      ; 00CC7 ×659
  CCC9  85 E1     STA $E1                       ; 00CC9 ×659
  CCCB  A9 20     LDA #$20                      ; 00CCB ×659
  CCCD  85 E2     STA $E2                       ; 00CCD ×659
  CCCF  60        RTS                           ; 00CCF ×659

sub_B0_CCD0:                    ; from 002d6 00241
  CCD0  20 B6 CC  JSR sub_B0_CCB6               ; 00CD0 ×505

loc_B0_CCD3:                    ; from 00ce3
  CCD3  20 AA C4  JSR sub_B0_C4AA               ; 00CD3 ×659
  CCD6  4C 11 CA  JMP loc_B0_CA11               ; 00CD6 ×659

sub_B0_CCD9:                    ; from 00216 003be 00490
  CCD9  20 B6 CC  JSR sub_B0_CCB6               ; 00CD9 ×154
  CCDC  A2 E4     LDX #$E4                      ; 00CDC ×154
  CCDE  A9 20     LDA #$20                      ; 00CDE ×154
  CCE0  20 3F C5  JSR sub_B0_C53F               ; 00CE0 ×154
  CCE3  4C D3 CC  JMP loc_B0_CCD3               ; 00CE3 ×154
  CCE6  .byte E8 CC 0F 30 15 2C 0F 30 16 19 0F 30 16 10 0F 30   ; 00CE6 data, read by 00cb9 00cbe 004af 01616
  CCF6  .byte 16 28 0F 36 03 06 0F 30 10 17 0F 36 15 2C 0F 30   ; 00CF6 data, read by 004af 01616
  CD06  .byte 27 16 0F 30 16 2C 0F 30 16 3C 0F 30 16 10 0F 16   ; 00D06 data, read by 004af 015c7
  CD16  .byte 2C 29 0F 30 12 17 0F 30 10 17 0F 2C 16 36 0F 30   ; 00D16 data, read by 004af
  CD26  .byte 27 16                                             ; 00D26 data, read by 004af

sub_B0_CD28:                    ; from 01abb 01a56 01aed 00e7c 00e86
  CD28  A5 63     LDA $63                       ; 00D28 ×85255
  CD2A  C9 01     CMP #$01                      ; 00D2A ×85255
  CD2C  60        RTS                           ; 00D2C ×85255

sub_B0_CD2D:                    ; from 01a37 00e45 01908
  CD2D  A6 63     LDX $63                       ; 00D2D ×1311
  CD2F  E0 01     CPX #$01                      ; 00D2F ×1311
  CD31  60        RTS                           ; 00D31 ×1311

loc_B0_CD32:                    ; from 009cb
  CD32  A2 90     LDX #$90                      ; 00D32 ×272626
  CD34  86 F9     STX $F9                       ; 00D34 ×272626
  CD36  A5 63     LDA $63                       ; 00D36 ×272626
  CD38  C9 02     CMP #$02                      ; 00D38 ×272626
  CD3A  F0 11     BEQ loc_B0_CD4D               ; 00D3A ×272626
  CD3C  C9 05     CMP #$05                      ; 00D3C ×195413
  CD3E  F0 11     BEQ loc_B0_CD51               ; 00D3E ×195413
  CD40  A9 00     LDA #$00                      ; 00D40 ×122003
  CD42  A0 B0     LDY #$B0                      ; 00D42 ×122003
  CD44  20 61 CD  JSR sub_B0_CD61               ; 00D44 ×122003
  CD47  20 68 CD  JSR sub_B0_CD68               ; 00D47 ×122003
  CD4A  4C E8 CD  JMP loc_B0_CDE8               ; 00D4A ×122003

loc_B0_CD4D:                    ; from 00d3a
  CD4D  A0 68     LDY #$68                      ; 00D4D ×77213
  CD4F  D0 02     BNE loc_B0_CD53               ; 00D4F ×77213

loc_B0_CD51:                    ; from 00d3e
  CD51  A0 78     LDY #$78                      ; 00D51 ×73410

loc_B0_CD53:                    ; from 00d4f
  CD53  A9 04     LDA #$04                      ; 00D53 ×150623
  CD55  20 61 CD  JSR sub_B0_CD61               ; 00D55 ×150623
  CD58  20 68 CD  JSR sub_B0_CD68               ; 00D58 ×150623
  CD5B  20 C7 CD  JSR sub_B0_CDC7               ; 00D5B ×150623
  CD5E  4C E8 CD  JMP loc_B0_CDE8               ; 00D5E ×150623

sub_B0_CD61:                    ; from 00d55 00d44
  CD61  8D 94 05  STA $0594                     ; 00D61 ×272626
  CD64  8C 93 05  STY $0593                     ; 00D64 ×272626

loc_B0_CD67:                    ; from 00d6c 00dcc 00d81 00d8b 00d70
  CD67  60        RTS                           ; 00D67 ×690337

sub_B0_CD68:                    ; from 00d58 00d47
  CD68  A5 52     LDA $52                       ; 00D68 ×272626
  CD6A  C9 03     CMP #$03                      ; 00D6A ×272626
  CD6C  D0 F9     BNE loc_B0_CD67               ; 00D6C ×272626
  CD6E  A5 6C     LDA $6C                       ; 00D6E ×45439
  CD70  D0 F5     BNE loc_B0_CD67               ; 00D70 ×45439
  CD72  AD 90 05  LDA $0590                     ; 00D72 ×45383
  CD75  D0 29     BNE loc_B0_CDA0               ; 00D75 ×45383
  CD77  A6 69     LDX $69                       ; 00D77 ×44553
  CD79  A4 63     LDY $63                       ; 00D79 ×44553
  CD7B  C0 05     CPY #$05                      ; 00D7B ×44553
  CD7D  D0 01     BNE loc_B0_CD80               ; 00D7D ×44553
  CD7F  CA        DEX                           ; 00D7F ×11565

loc_B0_CD80:                    ; from 00d7d
  CD80  8A        TXA                           ; 00D80 ×44553
  CD81  D0 E4     BNE loc_B0_CD67               ; 00D81 ×44553
  CD83  C0 05     CPY #$05                      ; 00D83 ×2615
  CD85  D0 08     BNE loc_B0_CD8F               ; 00D85 ×2615
  CD87  A6 68     LDX $68                       ; 00D87 ×2611
  CD89  E0 A0     CPX #$A0                      ; 00D89 ×2611
  CD8B  B0 DA     BCS loc_B0_CD67               ; 00D8B ×2611
  CD8D  A2 A0     LDX #$A0                      ; 00D8D ×14

loc_B0_CD8F:                    ; from 00d85
  CD8F  8E 91 05  STX $0591                     ; 00D8F ×18
  CD92  A2 90     LDX #$90                      ; 00D92 ×18
  CD94  20 6E F0  JSR sub_B0_F06E               ; 00D94 ×18

loc_B0_CD97:                    ; from 00daf 00da3
  CD97  A9 FF     LDA #$FF                      ; 00D97 ×848
  CD99  8D 90 05  STA $0590                     ; 00D99 ×848
  CD9C  A2 90     LDX #$90                      ; 00D9C ×848
  CD9E  D0 24     BNE loc_B0_CDC4               ; 00D9E ×848

loc_B0_CDA0:                    ; from 00d75
  CDA0  A6 69     LDX $69                       ; 00DA0 ×830
  CDA2  CA        DEX                           ; 00DA2 ×830
  CDA3  D0 F2     BNE loc_B0_CD97               ; 00DA3 ×830
  CDA5  A6 68     LDX $68                       ; 00DA5 ×598
  CDA7  A5 63     LDA $63                       ; 00DA7 ×598
  CDA9  C9 05     CMP #$05                      ; 00DA9 ×598
  CDAB  D0 06     BNE $CDB3                     ; 00DAB ×598
  CDAD  E0 F0     CPX #$F0                      ; 00DAD ×598
  CDAF  90 E6     BCC loc_B0_CD97               ; 00DAF ×598
  CDB1  B0 04     BCS $CDB7                     ; 00DB1 inferred, not run
  CDB3  E0 80     CPX #$80                      ; 00DB3 ×0
  CDB5  90 E0     BCC loc_B0_CD97               ; 00DB5 ×0
  CDB7  A9 00     LDA #$00                      ; 00DB7 inferred, not run
  CDB9  8D 90 05  STA $0590                     ; 00DB9 inferred, not run
  CDBC  A6 65     LDX $65                       ; 00DBC inferred, not run
  CDBE  D0 02     BNE $CDC2                     ; 00DBE inferred, not run
  CDC0  A9 67     LDA #$67                      ; 00DC0 inferred, not run
  CDC2  A2 90     LDX #$90                      ; 00DC2 inferred, not run

loc_B0_CDC4:                    ; from 00d9e
  CDC4  4C 26 ED  JMP sub_B0_ED26               ; 00DC4 ×848

sub_B0_CDC7:                    ; from 00d5b
  CDC7  A2 90     LDX #$90                      ; 00DC7 ×150623
  CDC9  BD 00 05  LDA $0500,X                   ; 00DC9 ×150623
  CDCC  F0 99     BEQ loc_B0_CD67               ; 00DCC ×150623
  CDCE  20 16 CC  JSR sub_B0_CC16               ; 00DCE ×4690
  CDD1  B0 14     BCS loc_B0_CDE7               ; 00DD1 ×4690
  CDD3  A2 00     LDX #$00                      ; 00DD3 ×2394
  CDD5  69 10     ADC #$10                      ; 00DD5 ×2394
  CDD7  85 84     STA $84                       ; 00DD7 ×2394
  CDD9  90 02     BCC loc_B0_CDDD               ; 00DD9 ×2394
  CDDB  A2 01     LDX #$01                      ; 00DDB ×88

loc_B0_CDDD:                    ; from 00dd9
  CDDD  86 85     STX $85                       ; 00DDD ×2394
  CDDF  A9 7F     LDA #$7F                      ; 00DDF ×2394
  CDE1  85 83     STA $83                       ; 00DE1 ×2394
  CDE3  A9 01     LDA #$01                      ; 00DE3 ×2394
  CDE5  85 80     STA $80                       ; 00DE5 ×2394

loc_B0_CDE7:                    ; from 00ded 00dd1 00df2 00e18 00dfc 00e11 (+1)
  CDE7  60        RTS                           ; 00DE7 ×277312

loc_B0_CDE8:                    ; from 00d5e 00d4a
  CDE8  A2 90     LDX #$90                      ; 00DE8 ×272626
  CDEA  BD 00 05  LDA $0500,X                   ; 00DEA ×272626
  CDED  F0 F8     BEQ loc_B0_CDE7               ; 00DED ×272626
  CDEF  20 16 CC  JSR sub_B0_CC16               ; 00DEF ×5046
  CDF2  B0 F3     BCS loc_B0_CDE7               ; 00DF2 ×5046
  CDF4  A5 74     LDA $74                       ; 00DF4 ×2750
  CDF6  C9 20     CMP #$20                      ; 00DF6 ×2750
  CDF8  90 ED     BCC loc_B0_CDE7               ; 00DF8 ×2750
  CDFA  A5 CB     LDA $CB                       ; 00DFA ×2750
  CDFC  D0 E9     BNE loc_B0_CDE7               ; 00DFC ×2750
  CDFE  A5 73     LDA $73                       ; 00DFE ×1822
  CE00  18        CLC                           ; 00E00 ×1822
  CE01  69 18     ADC #$18                      ; 00E01 ×1822
  CE03  A4 64     LDY $64                       ; 00E03 ×1822
  CE05  C0 00     CPY #$00                      ; 00E05 ×1822
  CE07  D0 05     BNE loc_B0_CE0E               ; 00E07 ×1822
  CE09  A5 83     LDA $83                       ; 00E09 ×0
  CE0B  18        CLC                           ; 00E0B ×0
  CE0C  69 0C     ADC #$0C                      ; 00E0C ×0

loc_B0_CE0E:                    ; from 00e07
  CE0E  DD 03 05  CMP $0503,X                   ; 00E0E ×1822
  CE11  90 D4     BCC loc_B0_CDE7               ; 00E11 ×1822
  CE13  E9 04     SBC #$04                      ; 00E13 ×1358
  CE15  DD 03 05  CMP $0503,X                   ; 00E15 ×1358
  CE18  B0 CD     BCS loc_B0_CDE7               ; 00E18 ×1358
  CE1A  20 03 E9  JSR sub_B0_E903               ; 00E1A ×40
  CE1D  A4 64     LDY $64                       ; 00E1D ×40
  CE1F  C0 00     CPY #$00                      ; 00E1F ×40
  CE21  D0 03     BNE loc_B0_CE26               ; 00E21 ×40
  CE23  20 1F E9  JSR sub_B0_E91F               ; 00E23 ×0

loc_B0_CE26:                    ; from 00e21
  CE26  20 9E CE  JSR sub_B0_CE9E               ; 00E26 ×40
  CE29  A4 65     LDY $65                       ; 00E29 ×40
  CE2B  F0 03     BEQ loc_B0_CE30               ; 00E2B ×40
  CE2D  20 8E CE  JSR sub_B0_CE8E               ; 00E2D ×30

loc_B0_CE30:                    ; from 00e2b
  CE30  20 8F CC  JSR sub_B0_CC8F               ; 00E30 ×40
  CE33  90 B2     BCC loc_B0_CDE7               ; 00E33 ×40
  CE35  A2 90     LDX #$90                      ; 00E35 ×4
  CE37  BD 03 05  LDA $0503,X                   ; 00E37 ×4
  CE3A  18        CLC                           ; 00E3A ×4
  CE3B  69 EA     ADC #$EA                      ; 00E3B ×4
  CE3D  A4 65     LDY $65                       ; 00E3D ×4
  CE3F  D0 02     BNE loc_B0_CE43               ; 00E3F ×4
  CE41  69 01     ADC #$01                      ; 00E41 ×2

loc_B0_CE43:                    ; from 00e3f
  CE43  85 73     STA $73                       ; 00E43 ×4
  CE45  20 2D CD  JSR sub_B0_CD2D               ; 00E45 ×4
  CE48  D0 0A     BNE loc_B0_CE54               ; 00E48 ×4
  CE4A  18        CLC                           ; 00E4A ×0
  CE4B  69 08     ADC #$08                      ; 00E4B ×0
  CE4D  85 83     STA $83                       ; 00E4D ×0
  CE4F  38        SEC                           ; 00E4F ×0
  CE50  E9 18     SBC #$18                      ; 00E50 ×0
  CE52  85 73     STA $73                       ; 00E52 ×0

loc_B0_CE54:                    ; from 00e48
  CE54  20 38 DC  JSR sub_B0_DC38               ; 00E54 ×4
  CE57  A9 00     LDA #$00                      ; 00E57 ×4
  CE59  85 DF     STA $DF                       ; 00E59 ×4
  CE5B  20 3B CA  JSR sub_B0_CA3B               ; 00E5B ×4
  CE5E  20 DA CB  JSR sub_B0_CBDA               ; 00E5E ×4
  CE61  A9 0A     LDA #$0A                      ; 00E61 ×4
  CE63  85 76     STA $76                       ; 00E63 ×4
  CE65  A9 00     LDA #$00                      ; 00E65 ×4
  CE67  8D 0B 03  STA $030B                     ; 00E67 ×4
  CE6A  E6 0B     INC $0B                       ; 00E6A ×4
  CE6C  60        RTS                           ; 00E6C ×4

sub_B0_CE6D:                    ; from 00165
  CE6D  A2 90     LDX #$90                      ; 00E6D ×906
  CE6F  20 16 CC  JSR sub_B0_CC16               ; 00E6F ×906
  CE72  69 0C     ADC #$0C                      ; 00E72 ×906
  CE74  C5 74     CMP $74                       ; 00E74 ×906
  CE76  F0 15     BEQ loc_B0_CE8D               ; 00E76 ×906
  CE78  90 0A     BCC loc_B0_CE84               ; 00E78 ×28
  CE7A  E6 74     INC $74                       ; 00E7A ×26
  CE7C  20 28 CD  JSR sub_B0_CD28               ; 00E7C ×26
  CE7F  D0 0C     BNE loc_B0_CE8D               ; 00E7F ×26
  CE81  E6 84     INC $84                       ; 00E81 ×0
  CE83  60        RTS                           ; 00E83 ×0

loc_B0_CE84:                    ; from 00e78
  CE84  C6 74     DEC $74                       ; 00E84 ×2
  CE86  20 28 CD  JSR sub_B0_CD28               ; 00E86 ×2
  CE89  D0 02     BNE loc_B0_CE8D               ; 00E89 ×2
  CE8B  C6 84     DEC $84                       ; 00E8B inferred, not run

loc_B0_CE8D:                    ; from 00e76 00e7f 00e89
  CE8D  60        RTS                           ; 00E8D ×906

sub_B0_CE8E:                    ; from 00e2d
  CE8E  A9 20     LDA #$20                      ; 00E8E ×30
  CE90  8D C9 03  STA $03C9                     ; 00E90 ×30
  CE93  AD 91 05  LDA $0591                     ; 00E93 ×30
  CE96  18        CLC                           ; 00E96 ×30
  CE97  69 08     ADC #$08                      ; 00E97 ×30
  CE99  85 77     STA $77                       ; 00E99 ×30
  CE9B  4C AB CE  JMP loc_B0_CEAB               ; 00E9B ×30

sub_B0_CE9E:                    ; from 00e26
  CE9E  A9 18     LDA #$18                      ; 00E9E ×40
  CEA0  8D C9 03  STA $03C9                     ; 00EA0 ×40
  CEA3  A9 08     LDA #$08                      ; 00EA3 ×40
  CEA5  18        CLC                           ; 00EA5 ×40
  CEA6  6D 91 05  ADC $0591                     ; 00EA6 ×40
  CEA9  85 77     STA $77                       ; 00EA9 ×40

loc_B0_CEAB:                    ; from 00e9b
  CEAB  AD 92 05  LDA $0592                     ; 00EAB ×70
  CEAE  85 78     STA $78                       ; 00EAE ×70
  CEB0  20 20 CC  JSR sub_B0_CC20               ; 00EB0 ×70
  CEB3  8D CB 03  STA $03CB                     ; 00EB3 ×70
  CEB6  60        RTS                           ; 00EB6 ×70

sub_B0_CEB7:                    ; from 0130f
  CEB7  20 0D CF  JSR sub_B0_CF0D               ; 00EB7 ×500
  CEBA  20 9D CF  JSR sub_B0_CF9D               ; 00EBA ×500
  CEBD  AD B8 CF  LDA $CFB8                     ; 00EBD ×500
  CEC0  85 7D     STA $7D                       ; 00EC0 ×500
  CEC2  AD B7 CF  LDA $CFB7                     ; 00EC2 ×500
  CEC5  85 7C     STA $7C                       ; 00EC5 ×500
  CEC7  20 E3 CE  JSR sub_B0_CEE3               ; 00EC7 ×500
  CECA  20 B3 CF  JSR sub_B0_CFB3               ; 00ECA ×500
  CECD  AD B8 CF  LDA $CFB8                     ; 00ECD ×500
  CED0  85 7D     STA $7D                       ; 00ED0 ×500
  CED2  AD B7 CF  LDA $CFB7                     ; 00ED2 ×500
  CED5  85 7C     STA $7C                       ; 00ED5 ×500
  CED7  20 E3 CE  JSR sub_B0_CEE3               ; 00ED7 ×500
  CEDA  20 B3 CF  JSR sub_B0_CFB3               ; 00EDA ×500
  CEDD  20 58 CF  JSR sub_B0_CF58               ; 00EDD ×500
  CEE0  4C 80 D2  JMP sub_B0_D280               ; 00EE0 ×500

sub_B0_CEE3:                    ; from 00ec7 00ed7
  CEE3  A0 00     LDY #$00                      ; 00EE3 ×1000

loc_B0_CEE5:                    ; from 00f0a
  CEE5  AD 02 20  LDA $2002                     ; 00EE5 ×3000
  CEE8  A5 78     LDA $78                       ; 00EE8 ×3000
  CEEA  8D 06 20  STA $2006                     ; 00EEA ×3000
  CEED  A5 77     LDA $77                       ; 00EED ×3000
  CEEF  8D 06 20  STA $2006                     ; 00EEF ×3000

loc_B0_CEF2:                    ; from 00f00
  CEF2  B1 7C     LDA ($7C),Y                   ; 00EF2 ×21000
  CEF4  C8        INY                           ; 00EF4 ×21000
  CEF5  AA        TAX                           ; 00EF5 ×21000
  CEF6  E8        INX                           ; 00EF6 ×21000
  CEF7  D0 01     BNE loc_B0_CEFA               ; 00EF7 ×21000
  CEF9  60        RTS                           ; 00EF9 ×1000

loc_B0_CEFA:                    ; from 00ef7
  CEFA  E8        INX                           ; 00EFA ×20000
  CEFB  F0 06     BEQ loc_B0_CF03               ; 00EFB ×20000
  CEFD  8D 07 20  STA $2007                     ; 00EFD ×18000
  CF00  4C F2 CE  JMP loc_B0_CEF2               ; 00F00 ×18000

loc_B0_CF03:                    ; from 00efb
  CF03  A5 77     LDA $77                       ; 00F03 ×2000
  CF05  18        CLC                           ; 00F05 ×2000
  CF06  69 20     ADC #$20                      ; 00F06 ×2000
  CF08  85 77     STA $77                       ; 00F08 ×2000
  CF0A  4C E5 CE  JMP loc_B0_CEE5               ; 00F0A ×2000

sub_B0_CF0D:                    ; from 009a0 00eb7 00138
  CF0D  A5 64     LDA $64                       ; 00F0D ×273130
  CF0F  0A        ASL A                         ; 00F0F ×273130
  CF10  AA        TAX                           ; 00F10 ×273130
  CF11  38        SEC                           ; 00F11 ×273130
  CF12  BD 3F CF  LDA $CF3F,X                   ; 00F12 ×273130
  CF15  E5 6A     SBC $6A                       ; 00F15 ×273130
  CF17  85 68     STA $68                       ; 00F17 ×273130
  CF19  BD 40 CF  LDA $CF40,X                   ; 00F19 ×273130
  CF1C  E5 6B     SBC $6B                       ; 00F1C ×273130
  CF1E  85 69     STA $69                       ; 00F1E ×273130
  CF20  A8        TAY                           ; 00F20 ×273130
  CF21  A2 00     LDX #$00                      ; 00F21 ×273130
  CF23  8E 0F 04  STX $040F                     ; 00F23 ×273130
  CF26  A5 6A     LDA $6A                       ; 00F26 ×273130
  CF28  C9 80     CMP #$80                      ; 00F28 ×273130
  CF2A  98        TYA                           ; 00F2A ×273130
  CF2B  90 03     BCC loc_B0_CF30               ; 00F2B ×273130
  CF2D  18        CLC                           ; 00F2D ×69999
  CF2E  69 01     ADC #$01                      ; 00F2E ×69999

loc_B0_CF30:                    ; from 00f2b 00f39
  CF30  C9 0A     CMP #$0A                      ; 00F30 ×335729
  CF32  90 07     BCC loc_B0_CF3B               ; 00F32 ×335729
  CF34  E9 0A     SBC #$0A                      ; 00F34 ×62599
  CF36  EE 0F 04  INC $040F                     ; 00F36 ×62599
  CF39  D0 F5     BNE loc_B0_CF30               ; 00F39 ×62599

loc_B0_CF3B:                    ; from 00f32
  CF3B  8D 0E 04  STA $040E                     ; 00F3B ×273130
  CF3E  60        RTS                           ; 00F3E ×273130
  CF3F  .byte 00 0A 00 07 00 08 00 14 00 05                     ; 00F3F data, read by 00f12 00f19

sub_B0_CF49:                    ; from 009a3 0013b
  CF49  A5 6A     LDA $6A                       ; 00F49 ×272630
  CF4B  C9 80     CMP #$80                      ; 00F4B ×272630
  CF4D  B0 06     BCS loc_B0_CF55               ; 00F4D ×272630
  CF4F  20 9D CF  JSR sub_B0_CF9D               ; 00F4F ×202631
  CF52  4C 58 CF  JMP sub_B0_CF58               ; 00F52 ×202631

loc_B0_CF55:                    ; from 00f4d
  CF55  20 B3 CF  JSR sub_B0_CFB3               ; 00F55 ×69999

sub_B0_CF58:                    ; from 00f52 00edd
  CF58  A6 51     LDX $51                       ; 00F58 ×273130
  CF5A  A9 01     LDA #$01                      ; 00F5A ×273130
  CF5C  9D 00 07  STA $0700,X                   ; 00F5C ×273130
  CF5F  E8        INX                           ; 00F5F ×273130
  CF60  A5 78     LDA $78                       ; 00F60 ×273130
  CF62  9D 00 07  STA $0700,X                   ; 00F62 ×273130
  CF65  E8        INX                           ; 00F65 ×273130
  CF66  A5 77     LDA $77                       ; 00F66 ×273130
  CF68  18        CLC                           ; 00F68 ×273130
  CF69  69 21     ADC #$21                      ; 00F69 ×273130
  CF6B  9D 00 07  STA $0700,X                   ; 00F6B ×273130
  CF6E  E8        INX                           ; 00F6E ×273130
  CF6F  A9 02     LDA #$02                      ; 00F6F ×273130
  CF71  9D 00 07  STA $0700,X                   ; 00F71 ×273130
  CF74  E8        INX                           ; 00F74 ×273130
  CF75  A9 FF     LDA #$FF                      ; 00F75 ×273130
  CF77  9D 00 07  STA $0700,X                   ; 00F77 ×273130
  CF7A  E8        INX                           ; 00F7A ×273130
  CF7B  AD 0F 04  LDA $040F                     ; 00F7B ×273130
  CF7E  29 0F     AND #$0F                      ; 00F7E ×273130
  CF80  F0 04     BEQ loc_B0_CF86               ; 00F80 ×273130
  CF82  09 30     ORA #$30                      ; 00F82 ×61192
  CF84  D0 02     BNE loc_B0_CF88               ; 00F84 ×61192

loc_B0_CF86:                    ; from 00f80
  CF86  A9 00     LDA #$00                      ; 00F86 ×211938

loc_B0_CF88:                    ; from 00f84
  CF88  9D 00 07  STA $0700,X                   ; 00F88 ×273130
  CF8B  E8        INX                           ; 00F8B ×273130
  CF8C  AD 0E 04  LDA $040E                     ; 00F8C ×273130
  CF8F  29 0F     AND #$0F                      ; 00F8F ×273130
  CF91  09 30     ORA #$30                      ; 00F91 ×273130
  CF93  9D 00 07  STA $0700,X                   ; 00F93 ×273130
  CF96  E8        INX                           ; 00F96 ×273130
  CF97  A9 00     LDA #$00                      ; 00F97 ×273130
  CF99  9D 00 07  STA $0700,X                   ; 00F99 ×273130
  CF9C  60        RTS                           ; 00F9C ×273130

sub_B0_CF9D:                    ; from 00f4f 00eba
  CF9D  A9 01     LDA #$01                      ; 00F9D ×203131

loc_B0_CF9F:                    ; from 00fb5
  CF9F  85 77     STA $77                       ; 00F9F ×274130
  CFA1  A5 6B     LDA $6B                       ; 00FA1 ×274130
  CFA3  29 01     AND #$01                      ; 00FA3 ×274130
  CFA5  45 77     EOR $77                       ; 00FA5 ×274130
  CFA7  0A        ASL A                         ; 00FA7 ×274130
  CFA8  0A        ASL A                         ; 00FA8 ×274130
  CFA9  18        CLC                           ; 00FA9 ×274130
  CFAA  69 23     ADC #$23                      ; 00FAA ×274130
  CFAC  85 78     STA $78                       ; 00FAC ×274130
  CFAE  A9 41     LDA #$41                      ; 00FAE ×274130
  CFB0  85 77     STA $77                       ; 00FB0 ×274130
  CFB2  60        RTS                           ; 00FB2 ×274130

sub_B0_CFB3:                    ; from 00f55 00eca 00eda
  CFB3  A9 00     LDA #$00                      ; 00FB3 ×70999
  CFB5  F0 E8     BEQ loc_B0_CF9F               ; 00FB5 ×70999
  CFB7  .byte B9 CF 10 11 11 11 11 12 FE 3B 00 00 30 5B 7A FE   ; 00FB7 data, read by 00ec2 00ed2 00ebd 00ecd (+1)
  CFC7  .byte 20 21 21 21 21 22 FF                              ; 00FC7 data, read by 00ef2

sub_B0_CFCE:                    ; from 00a6d
  CFCE  A2 03     LDX #$03                      ; 00FCE ×301054

loc_B0_CFD0:                    ; from 00fd7
  CFD0  BD DA CF  LDA $CFDA,X                   ; 00FD0 ×1204216
  CFD3  9D 00 02  STA $0200,X                   ; 00FD3 ×1204216
  CFD6  CA        DEX                           ; 00FD6 ×1204216
  CFD7  10 F7     BPL loc_B0_CFD0               ; 00FD7 ×1204216
  CFD9  60        RTS                           ; 00FD9 ×301054
  CFDA  .byte 26 5A 02 EC                                       ; 00FDA data, read by 00fd0

loc_B0_CFDE:                    ; from 00925
  CFDE  A2 00     LDX #$00                      ; 00FDE ×500
  CFE0  86 8C     STX $8C                       ; 00FE0 ×500
  CFE2  A0 00     LDY #$00                      ; 00FE2 ×500

loc_B0_CFE4:                    ; from 00ffe
  CFE4  B1 7C     LDA ($7C),Y                   ; 00FE4 ×1124
  CFE6  C8        INY                           ; 00FE6 ×1124
  CFE7  85 7A     STA $7A                       ; 00FE7 ×1124

loc_B0_CFE9:                    ; from 00ff1
  CFE9  B1 7C     LDA ($7C),Y                   ; 00FE9 ×7496
  CFEB  C8        INY                           ; 00FEB ×7496
  CFEC  95 70     STA $70,X                     ; 00FEC ×7496
  CFEE  E8        INX                           ; 00FEE ×7496
  CFEF  C6 7A     DEC $7A                       ; 00FEF ×7496
  CFF1  D0 F6     BNE loc_B0_CFE9               ; 00FF1 ×7496
  CFF3  C6 79     DEC $79                       ; 00FF3 ×1124
  CFF5  F0 09     BEQ loc_B0_D000               ; 00FF5 ×1124
  CFF7  A6 8C     LDX $8C                       ; 00FF7 ×624
  CFF9  20 EC C9  JSR sub_B0_C9EC               ; 00FF9 ×624
  CFFC  86 8C     STX $8C                       ; 00FFC ×624
  CFFE  D0 E4     BNE loc_B0_CFE4               ; 00FFE ×624

loc_B0_D000:                    ; from 00ff5 01003
  D000  60        RTS                           ; 01000 ×963

loc_B0_D001:                    ; from 009e4
  D001  A5 70     LDA $70                       ; 01001 ×300477
  D003  F0 FB     BEQ loc_B0_D000               ; 01003 ×300477
  D005  A2 00     LDX #$00                      ; 01005 ×300014
  D007  86 78     STX $78                       ; 01007 ×300014

loc_B0_D009:                    ; from 010a9
  D009  A9 00     LDA #$00                      ; 01009 ×1755624
  D00B  8D 0F 03  STA $030F                     ; 0100B ×1755624
  D00E  8D 16 03  STA $0316                     ; 0100E ×1755624
  D011  A6 78     LDX $78                       ; 01011 ×1755624
  D013  B5 70     LDA $70,X                     ; 01013 ×1755624
  D015  85 89     STA $89                       ; 01015 ×1755624
  D017  B5 71     LDA $71,X                     ; 01017 ×1755624
  D019  85 8A     STA $8A                       ; 01019 ×1755624
  D01B  B5 72     LDA $72,X                     ; 0101B ×1755624
  D01D  F0 7A     BEQ loc_B0_D099               ; 0101D ×1755624
  D01F  85 8B     STA $8B                       ; 0101F ×1518406
  D021  B5 73     LDA $73,X                     ; 01021 ×1518406
  D023  85 8C     STA $8C                       ; 01023 ×1518406
  D025  B5 74     LDA $74,X                     ; 01025 ×1518406
  D027  85 8D     STA $8D                       ; 01027 ×1518406
  D029  B5 75     LDA $75,X                     ; 01029 ×1518406
  D02B  29 01     AND #$01                      ; 0102B ×1518406
  D02D  85 8E     STA $8E                       ; 0102D ×1518406
  D02F  B5 77     LDA $77,X                     ; 0102F ×1518406
  D031  85 8F     STA $8F                       ; 01031 ×1518406
  D033  B5 76     LDA $76,X                     ; 01033 ×1518406
  D035  0A        ASL A                         ; 01035 ×1518406
  D036  A8        TAY                           ; 01036 ×1518406
  D037  B9 58 D1  LDA $D158,Y                   ; 01037 ×1518406
  D03A  85 7C     STA $7C                       ; 0103A ×1518406
  D03C  B9 59 D1  LDA $D159,Y                   ; 0103C ×1518406
  D03F  85 7D     STA $7D                       ; 0103F ×1518406
  D041  86 78     STX $78                       ; 01041 ×1518406
  D043  A0 00     LDY #$00                      ; 01043 ×1518406
  D045  A5 8A     LDA $8A                       ; 01045 ×1518406
  D047  85 77     STA $77                       ; 01047 ×1518406
  D049  10 45     BPL loc_B0_D090               ; 01049 ×1518406
  D04B  B1 7C     LDA ($7C),Y                   ; 0104B ×392363
  D04D  C8        INY                           ; 0104D ×392363
  D04E  85 7A     STA $7A                       ; 0104E ×392363
  D050  E6 77     INC $77                       ; 01050 ×392363
  D052  F0 24     BEQ loc_B0_D078               ; 01052 ×392363
  D054  A5 64     LDA $64                       ; 01054 ×150189
  D056  C9 00     CMP #$00                      ; 01056 ×150189
  D058  D0 05     BNE loc_B0_D05F               ; 01058 ×150189
  D05A  A9 01     LDA #$01                      ; 0105A ×3568
  D05C  8D 0F 03  STA $030F                     ; 0105C ×3568

loc_B0_D05F:                    ; from 01058
  D05F  B1 7C     LDA ($7C),Y                   ; 0105F ×150189
  D061  C8        INY                           ; 01061 ×150189
  D062  85 7B     STA $7B                       ; 01062 ×150189
  D064  18        CLC                           ; 01064 ×150189
  D065  65 7A     ADC $7A                       ; 01065 ×150189
  D067  85 77     STA $77                       ; 01067 ×150189
  D069  A5 8F     LDA $8F                       ; 01069 ×150189
  D06B  38        SEC                           ; 0106B ×150189
  D06C  E5 77     SBC $77                       ; 0106C ×150189
  D06E  F0 26     BEQ loc_B0_D096               ; 0106E ×150189
  D070  18        CLC                           ; 01070 ×112862
  D071  65 7B     ADC $7B                       ; 01071 ×112862
  D073  85 7B     STA $7B                       ; 01073 ×112862
  D075  4C 96 D0  JMP loc_B0_D096               ; 01075 ×112862

loc_B0_D078:                    ; from 01052
  D078  B1 7C     LDA ($7C),Y                   ; 01078 ×242174
  D07A  C8        INY                           ; 0107A ×242174
  D07B  18        CLC                           ; 0107B ×242174
  D07C  65 7A     ADC $7A                       ; 0107C ×242174
  D07E  85 7A     STA $7A                       ; 0107E ×242174
  D080  A9 00     LDA #$00                      ; 01080 ×242174
  D082  85 7B     STA $7B                       ; 01082 ×242174
  D084  A5 8F     LDA $8F                       ; 01084 ×242174
  D086  38        SEC                           ; 01086 ×242174
  D087  E5 7A     SBC $7A                       ; 01087 ×242174
  D089  F0 0B     BEQ loc_B0_D096               ; 01089 ×242174
  D08B  85 7B     STA $7B                       ; 0108B inferred, not run
  D08D  4C 96 D0  JMP loc_B0_D096               ; 0108D inferred, not run

loc_B0_D090:                    ; from 01049
  D090  85 7A     STA $7A                       ; 01090 ×1126043
  D092  A9 00     LDA #$00                      ; 01092 ×1126043
  D094  85 7B     STA $7B                       ; 01094 ×1126043

loc_B0_D096:                    ; from 01089 01075 0106e
  D096  20 AD D0  JSR sub_B0_D0AD               ; 01096 ×1518406

loc_B0_D099:                    ; from 0101d
  D099  C6 79     DEC $79                       ; 01099 ×1755624
  D09B  F0 0F     BEQ loc_B0_D0AC               ; 0109B ×1755624
  D09D  A5 78     LDA $78                       ; 0109D ×1455610
  D09F  18        CLC                           ; 0109F ×1455610
  D0A0  69 10     ADC #$10                      ; 010A0 ×1455610
  D0A2  85 78     STA $78                       ; 010A2 ×1455610
  D0A4  A9 00     LDA #$00                      ; 010A4 ×1455610
  D0A6  8D 16 03  STA $0316                     ; 010A6 ×1455610
  D0A9  4C 09 D0  JMP loc_B0_D009               ; 010A9 ×1455610

loc_B0_D0AC:                    ; from 0109b
  D0AC  60        RTS                           ; 010AC ×300014

sub_B0_D0AD:                    ; from 01096
  D0AD  A6 8B     LDX $8B                       ; 010AD ×1518406
  D0AF  A5 89     LDA $89                       ; 010AF ×1518406
  D0B1  F0 75     BEQ loc_B0_D128               ; 010B1 ×1518406

loc_B0_D0B3:                    ; from 01108
  D0B3  B1 7C     LDA ($7C),Y                   ; 010B3 ×7074612
  D0B5  18        CLC                           ; 010B5 ×7074612
  D0B6  65 8D     ADC $8D                       ; 010B6 ×7074612
  D0B8  20 0C D1  JSR sub_B0_D10C               ; 010B8 ×7074612
  D0BB  9D 03 02  STA $0203,X                   ; 010BB ×7074612
  D0BE  C8        INY                           ; 010BE ×7074612
  D0BF  B1 7C     LDA ($7C),Y                   ; 010BF ×7074612
  D0C1  C8        INY                           ; 010C1 ×7074612
  D0C2  9D 01 02  STA $0201,X                   ; 010C2 ×7074612
  D0C5  AD 16 03  LDA $0316                     ; 010C5 ×7074612
  D0C8  D0 03     BNE loc_B0_D0CD               ; 010C8 ×7074612
  D0CA  20 42 D1  JSR sub_B0_D142               ; 010CA ×1096712

loc_B0_D0CD:                    ; from 010c8
  D0CD  C9 02     CMP #$02                      ; 010CD ×7074612
  D0CF  D0 06     BNE loc_B0_D0D7               ; 010CF ×7074612
  D0D1  AD 17 03  LDA $0317                     ; 010D1 ×4827337
  D0D4  4C DA D0  JMP loc_B0_D0DA               ; 010D4 ×4827337

loc_B0_D0D7:                    ; from 010cf
  D0D7  B1 7C     LDA ($7C),Y                   ; 010D7 ×2247275
  D0D9  C8        INY                           ; 010D9 ×2247275

loc_B0_D0DA:                    ; from 010d4
  D0DA  9D 02 02  STA $0202,X                   ; 010DA ×7074612
  D0DD  A5 77     LDA $77                       ; 010DD ×7074612
  D0DF  F0 04     BEQ loc_B0_D0E5               ; 010DF ×7074612
  D0E1  A9 F8     LDA #$F8                      ; 010E1 ×92875
  D0E3  D0 05     BNE loc_B0_D0EA               ; 010E3 ×92875

loc_B0_D0E5:                    ; from 010df
  D0E5  B1 7C     LDA ($7C),Y                   ; 010E5 ×6981737
  D0E7  18        CLC                           ; 010E7 ×6981737
  D0E8  65 8C     ADC $8C                       ; 010E8 ×6981737

loc_B0_D0EA:                    ; from 010e3
  D0EA  C8        INY                           ; 010EA ×7074612
  D0EB  9D 00 02  STA $0200,X                   ; 010EB ×7074612
  D0EE  A5 7A     LDA $7A                       ; 010EE ×7074612
  D0F0  C9 03     CMP #$03                      ; 010F0 ×7074612
  D0F2  B0 0E     BCS loc_B0_D102               ; 010F2 ×7074612
  D0F4  AD 0F 03  LDA $030F                     ; 010F4 ×2051920
  D0F7  F0 09     BEQ loc_B0_D102               ; 010F7 ×2051920
  D0F9  BD 00 02  LDA $0200,X                   ; 010F9 ×3584
  D0FC  38        SEC                           ; 010FC ×3584
  D0FD  E9 10     SBC #$10                      ; 010FD ×3584
  D0FF  9D 00 02  STA $0200,X                   ; 010FF ×3584

loc_B0_D102:                    ; from 010f2 010f7
  D102  E8        INX                           ; 01102 ×7074612
  D103  E8        INX                           ; 01103 ×7074612
  D104  E8        INX                           ; 01104 ×7074612
  D105  E8        INX                           ; 01105 ×7074612
  D106  C6 7A     DEC $7A                       ; 01106 ×7074612
  D108  D0 A9     BNE loc_B0_D0B3               ; 01108 ×7074612
  D10A  F0 2D     BEQ loc_B0_D139               ; 0110A ×1096712

sub_B0_D10C:                    ; from 010b8
  D10C  48        PHA                           ; 0110C ×7074612
  D10D  B1 7C     LDA ($7C),Y                   ; 0110D ×7074612
  D10F  30 04     BMI loc_B0_D115               ; 0110F ×7074612
  D111  90 0D     BCC loc_B0_D120               ; 01111 ×6679797
  D113  B0 02     BCS loc_B0_D117               ; 01113 ×56388

loc_B0_D115:                    ; from 0110f
  D115  B0 09     BCS loc_B0_D120               ; 01115 ×394815

loc_B0_D117:                    ; from 01113
  D117  A5 8E     LDA $8E                       ; 01117 ×77476
  D119  29 01     AND #$01                      ; 01119 ×77476
  D11B  49 01     EOR #$01                      ; 0111B ×77476
  D11D  4C 24 D1  JMP loc_B0_D124               ; 0111D ×77476

loc_B0_D120:                    ; from 01111 01115
  D120  A5 8E     LDA $8E                       ; 01120 ×6997136
  D122  29 01     AND #$01                      ; 01122 ×6997136

loc_B0_D124:                    ; from 0111d
  D124  85 77     STA $77                       ; 01124 ×7074612
  D126  68        PLA                           ; 01126 ×7074612
  D127  60        RTS                           ; 01127 ×7074612

loc_B0_D128:                    ; from 01137 010b1 0113f
  D128  A9 F4     LDA #$F4                      ; 01128 ×4704527
  D12A  9D 00 02  STA $0200,X                   ; 0112A ×4704527
  D12D  E8        INX                           ; 0112D ×4704527
  D12E  E8        INX                           ; 0112E ×4704527
  D12F  E8        INX                           ; 0112F ×4704527
  D130  E8        INX                           ; 01130 ×4704527
  D131  A5 7A     LDA $7A                       ; 01131 ×4704527
  D133  F0 04     BEQ loc_B0_D139               ; 01133 ×4704527
  D135  C6 7A     DEC $7A                       ; 01135 ×4388055
  D137  D0 EF     BNE loc_B0_D128               ; 01137 ×4388055

loc_B0_D139:                    ; from 0110a 01133
  D139  A5 7B     LDA $7B                       ; 01139 ×1834878
  D13B  F0 04     BEQ loc_B0_D141               ; 0113B ×1834878
  D13D  C6 7B     DEC $7B                       ; 0113D ×316472
  D13F  10 E7     BPL loc_B0_D128               ; 0113F ×316472

loc_B0_D141:                    ; from 0113b
  D141  60        RTS                           ; 01141 ×1518406

sub_B0_D142:                    ; from 010ca
  D142  EE 16 03  INC $0316                     ; 01142 ×1096712
  D145  B1 7C     LDA ($7C),Y                   ; 01145 ×1096712
  D147  C9 FF     CMP #$FF                      ; 01147 ×1096712
  D149  F0 08     BEQ loc_B0_D153               ; 01149 ×1096712
  D14B  EE 16 03  INC $0316                     ; 0114B ×858238
  D14E  B1 7C     LDA ($7C),Y                   ; 0114E ×858238
  D150  8D 17 03  STA $0317                     ; 01150 ×858238

loc_B0_D153:                    ; from 01149
  D153  AD 16 03  LDA $0316                     ; 01153 ×1096712
  D156  C8        INY                           ; 01156 ×1096712
  D157  60        RTS                           ; 01157 ×1096712
  D158  .byte 03 DD 16 DD F0 DC 29 DD 3C DD 4F DD 62 DD 75 DD   ; 01158 data, read by 01037 0103c
  D168  .byte 88 DD 9B DD 1B E2 34 E2 AE DD D9 DD 04 DE 2B DE   ; 01168 data, read by 01037 0103c
  D178  .byte 52 DE 8C DE C6 DE 00 DF 0D DF 1A DF 27 DF 34 DF   ; 01178 data, read by 01037 0103c
  D188  .byte 41 DF 4E DF 5B DF 74 DF 8D DF A6 DF BF DF D2 DF   ; 01188 data, read by 01037 0103c
  D198  .byte 16 E0 3B E0 09 E0 89 E0 A7 E0 BF E0 D4 E0 E6 E0   ; 01198 data, read by 01037 0103c
  D1A8  .byte FB E0 10 E1 2E E1 46 E1 5E E1 76 E1 94 E1 A9 E1   ; 011A8 data, read by 01037 0103c
  D1B8  .byte BE E1 D0 E1 E5 E1 FD E1 85 E0 60 E0               ; 011B8 data, read by 01037 0103c

sub_B0_D1C4:                    ; from 02d3c
  D1C4  20 E4 CB  JSR sub_B0_CBE4               ; 011C4 ×8719
  D1C7  8A        TXA                           ; 011C7 ×8719
  D1C8  48        PHA                           ; 011C8 ×8719
  D1C9  A5 8F     LDA $8F                       ; 011C9 ×8719
  D1CB  0A        ASL A                         ; 011CB ×8719
  D1CC  AA        TAX                           ; 011CC ×8719
  D1CD  BD DD D2  LDA $D2DD,X                   ; 011CD ×8719
  D1D0  85 7C     STA $7C                       ; 011D0 ×8719
  D1D2  BD DE D2  LDA $D2DE,X                   ; 011D2 ×8719
  D1D5  85 7D     STA $7D                       ; 011D5 ×8719
  D1D7  68        PLA                           ; 011D7 ×8719
  D1D8  AA        TAX                           ; 011D8 ×8719
  D1D9  20 E4 D1  JSR sub_B0_D1E4               ; 011D9 ×8719

loc_B0_D1DC:                    ; from 011f2
  D1DC  86 51     STX $51                       ; 011DC ×17438
  D1DE  A9 00     LDA #$00                      ; 011DE ×17438
  D1E0  9D 00 07  STA $0700,X                   ; 011E0 ×17438
  D1E3  60        RTS                           ; 011E3 ×17438

sub_B0_D1E4:                    ; from 011d9
  D1E4  A0 00     LDY #$00                      ; 011E4 ×8719
  D1E6  A6 51     LDX $51                       ; 011E6 ×8719

loc_B0_D1E8:                    ; from 0127d
  D1E8  A5 7E     LDA $7E                       ; 011E8 ×44764
  D1EA  85 79     STA $79                       ; 011EA ×44764
  D1EC  A5 7F     LDA $7F                       ; 011EC ×44764
  D1EE  85 7A     STA $7A                       ; 011EE ×44764
  D1F0  B1 7C     LDA ($7C),Y                   ; 011F0 ×44764
  D1F2  F0 E8     BEQ loc_B0_D1DC               ; 011F2 ×44764
  D1F4  9D 00 07  STA $0700,X                   ; 011F4 ×36045
  D1F7  C8        INY                           ; 011F7 ×36045
  D1F8  B1 7C     LDA ($7C),Y                   ; 011F8 ×36045
  D1FA  F0 21     BEQ loc_B0_D21D               ; 011FA ×36045
  D1FC  86 8C     STX $8C                       ; 011FC ×3085
  D1FE  84 8E     STY $8E                       ; 011FE ×3085
  D200  A2 00     LDX #$00                      ; 01200 ×3085
  D202  86 77     STX $77                       ; 01202 ×3085
  D204  A0 05     LDY #$05                      ; 01204 ×3085

loc_B0_D206:                    ; from 0120a
  D206  0A        ASL A                         ; 01206 ×15425
  D207  26 77     ROL $77                       ; 01207 ×15425
  D209  88        DEY                           ; 01209 ×15425
  D20A  D0 FA     BNE loc_B0_D206               ; 0120A ×15425
  D20C  18        CLC                           ; 0120C ×3085
  D20D  65 7E     ADC $7E                       ; 0120D ×3085
  D20F  85 79     STA $79                       ; 0120F ×3085
  D211  A9 00     LDA #$00                      ; 01211 ×3085
  D213  65 7F     ADC $7F                       ; 01213 ×3085
  D215  65 77     ADC $77                       ; 01215 ×3085
  D217  85 7A     STA $7A                       ; 01217 ×3085
  D219  A6 8C     LDX $8C                       ; 01219 ×3085
  D21B  A4 8E     LDY $8E                       ; 0121B ×3085

loc_B0_D21D:                    ; from 011fa
  D21D  C8        INY                           ; 0121D ×36045
  D21E  B1 7C     LDA ($7C),Y                   ; 0121E ×36045
  D220  F0 33     BEQ loc_B0_D255               ; 01220 ×36045
  D222  86 8C     STX $8C                       ; 01222 ×25817
  D224  84 8E     STY $8E                       ; 01224 ×25817
  D226  85 77     STA $77                       ; 01226 ×25817
  D228  A9 20     LDA #$20                      ; 01228 ×25817
  D22A  85 7B     STA $7B                       ; 0122A ×25817
  D22C  A5 79     LDA $79                       ; 0122C ×25817
  D22E  29 E0     AND #$E0                      ; 0122E ×25817
  D230  85 78     STA $78                       ; 01230 ×25817
  D232  A5 79     LDA $79                       ; 01232 ×25817
  D234  29 1F     AND #$1F                      ; 01234 ×25817
  D236  18        CLC                           ; 01236 ×25817
  D237  65 77     ADC $77                       ; 01237 ×25817
  D239  24 7B     BIT $7B                       ; 01239 ×25817
  D23B  08        PHP                           ; 0123B ×25817
  D23C  A2 00     LDX #$00                      ; 0123C ×25817
  D23E  28        PLP                           ; 0123E ×25817
  D23F  F0 02     BEQ loc_B0_D243               ; 0123F ×25817
  D241  A2 04     LDX #$04                      ; 01241 ×3554

loc_B0_D243:                    ; from 0123f
  D243  86 77     STX $77                       ; 01243 ×25817
  D245  29 1F     AND #$1F                      ; 01245 ×25817
  D247  05 78     ORA $78                       ; 01247 ×25817
  D249  85 79     STA $79                       ; 01249 ×25817
  D24B  A5 7A     LDA $7A                       ; 0124B ×25817
  D24D  45 77     EOR $77                       ; 0124D ×25817
  D24F  85 7A     STA $7A                       ; 0124F ×25817
  D251  A6 8C     LDX $8C                       ; 01251 ×25817
  D253  A4 8E     LDY $8E                       ; 01253 ×25817

loc_B0_D255:                    ; from 01220
  D255  E8        INX                           ; 01255 ×36045
  D256  A5 7A     LDA $7A                       ; 01256 ×36045
  D258  9D 00 07  STA $0700,X                   ; 01258 ×36045
  D25B  E8        INX                           ; 0125B ×36045
  D25C  A5 79     LDA $79                       ; 0125C ×36045
  D25E  9D 00 07  STA $0700,X                   ; 0125E ×36045
  D261  C8        INY                           ; 01261 ×36045
  D262  B1 7C     LDA ($7C),Y                   ; 01262 ×36045
  D264  85 7B     STA $7B                       ; 01264 ×36045
  D266  E8        INX                           ; 01266 ×36045
  D267  9D 00 07  STA $0700,X                   ; 01267 ×36045
  D26A  A5 8B     LDA $8B                       ; 0126A ×36045
  D26C  E8        INX                           ; 0126C ×36045
  D26D  9D 00 07  STA $0700,X                   ; 0126D ×36045

loc_B0_D270:                    ; from 01279
  D270  C8        INY                           ; 01270 ×111297
  D271  B1 7C     LDA ($7C),Y                   ; 01271 ×111297
  D273  E8        INX                           ; 01273 ×111297
  D274  9D 00 07  STA $0700,X                   ; 01274 ×111297
  D277  C6 7B     DEC $7B                       ; 01277 ×111297
  D279  D0 F5     BNE loc_B0_D270               ; 01279 ×111297
  D27B  C8        INY                           ; 0127B ×36045
  D27C  E8        INX                           ; 0127C ×36045
  D27D  4C E8 D1  JMP loc_B0_D1E8               ; 0127D ×36045

sub_B0_D280:                    ; from 002f5 0023e 00ee0
  D280  A2 00     LDX #$00                      ; 01280 ×299145

loc_B0_D282:                    ; from 012ca
  D282  BD 00 07  LDA $0700,X                   ; 01282 ×599603
  D285  F0 46     BEQ loc_B0_D2CD               ; 01285 ×599603
  D287  C9 01     CMP #$01                      ; 01287 ×300458
  D289  F0 06     BEQ loc_B0_D291               ; 01289 ×300458
  D28B  A5 53     LDA $53                       ; 0128B ×30734
  D28D  09 04     ORA #$04                      ; 0128D ×30734
  D28F  D0 04     BNE loc_B0_D295               ; 0128F ×30734

loc_B0_D291:                    ; from 01289
  D291  A5 53     LDA $53                       ; 01291 ×269724
  D293  29 7B     AND #$7B                      ; 01293 ×269724

loc_B0_D295:                    ; from 0128f
  D295  8D 00 20  STA $2000                     ; 01295 ×300458
  D298  AD 02 20  LDA $2002                     ; 01298 ×300458
  D29B  E8        INX                           ; 0129B ×300458
  D29C  BD 00 07  LDA $0700,X                   ; 0129C ×300458
  D29F  8D 06 20  STA $2006                     ; 0129F ×300458
  D2A2  E8        INX                           ; 012A2 ×300458
  D2A3  BD 00 07  LDA $0700,X                   ; 012A3 ×300458
  D2A6  8D 06 20  STA $2006                     ; 012A6 ×300458
  D2A9  E8        INX                           ; 012A9 ×300458
  D2AA  BD 00 07  LDA $0700,X                   ; 012AA ×300458
  D2AD  A8        TAY                           ; 012AD ×300458
  D2AE  E8        INX                           ; 012AE ×300458
  D2AF  BD 00 07  LDA $0700,X                   ; 012AF ×300458
  D2B2  C9 FF     CMP #$FF                      ; 012B2 ×300458
  D2B4  D0 0C     BNE loc_B0_D2C2               ; 012B4 ×300458

loc_B0_D2B6:                    ; from 012be
  D2B6  E8        INX                           ; 012B6 ×636713
  D2B7  BD 00 07  LDA $0700,X                   ; 012B7 ×636713
  D2BA  8D 07 20  STA $2007                     ; 012BA ×636713
  D2BD  88        DEY                           ; 012BD ×636713
  D2BE  D0 F6     BNE loc_B0_D2B6               ; 012BE ×636713
  D2C0  F0 07     BEQ loc_B0_D2C9               ; 012C0 ×299648

loc_B0_D2C2:                    ; from 012c7 012b4
  D2C2  E8        INX                           ; 012C2 ×3361
  D2C3  8D 07 20  STA $2007                     ; 012C3 ×3361
  D2C6  88        DEY                           ; 012C6 ×3361
  D2C7  D0 F9     BNE loc_B0_D2C2               ; 012C7 ×3361

loc_B0_D2C9:                    ; from 012c0
  D2C9  E8        INX                           ; 012C9 ×300458
  D2CA  4C 82 D2  JMP loc_B0_D282               ; 012CA ×300458

loc_B0_D2CD:                    ; from 01285
  D2CD  A9 00     LDA #$00                      ; 012CD ×299145
  D2CF  85 51     STA $51                       ; 012CF ×299145
  D2D1  8D 00 07  STA $0700                     ; 012D1 ×299145
  D2D4  A5 53     LDA $53                       ; 012D4 ×299145
  D2D6  29 7B     AND #$7B                      ; 012D6 ×299145
  D2D8  8D 00 20  STA $2000                     ; 012D8 ×299145
  D2DB  18        CLC                           ; 012DB ×299145
  D2DC  60        RTS                           ; 012DC ×299145
  D2DD  .byte 4D E2 72 E2 83 E2 91 E2 9F E2 B6 E2 D5 E2 F9 E2   ; 012DD data, read by 011cd 011d2
  D2ED  .byte 1D E3 3A E3 5E E3 6B E3 78 E3 89 E3 9A E3 AF E3   ; 012ED data, read by 011cd 011d2

sub_B0_D2FD:                    ; from 00853
  D2FD  A9 00     LDA #$00                      ; 012FD ×500
  D2FF  8D 01 20  STA $2001                     ; 012FF ×500
  D302  A5 64     LDA $64                       ; 01302 ×500
  D304  0A        ASL A                         ; 01304 ×500
  D305  0A        ASL A                         ; 01305 ×500
  D306  AA        TAX                           ; 01306 ×500
  D307  20 42 D3  JSR sub_B0_D342               ; 01307 ×500
  D30A  A6 89     LDX $89                       ; 0130A ×500
  D30C  20 42 D3  JSR sub_B0_D342               ; 0130C ×500
  D30F  20 B7 CE  JSR sub_B0_CEB7               ; 0130F ×500
  D312  20 75 D5  JSR sub_B0_D575               ; 01312 ×500
  D315  A9 00     LDA #$00                      ; 01315 ×500
  D317  8D 00 20  STA $2000                     ; 01317 ×500
  D31A  AD 02 20  LDA $2002                     ; 0131A ×500
  D31D  60        RTS                           ; 0131D ×500

sub_B0_D31E:                    ; from 00cb6
  D31E  A9 1E     LDA #$1E                      ; 0131E ×659
  D320  85 54     STA $54                       ; 01320 ×659
  D322  A9 E7     LDA #$E7                      ; 01322 ×659
  D324  25 53     AND $53                       ; 01324 ×659
  D326  09 08     ORA #$08                      ; 01326 ×659
  D328  85 53     STA $53                       ; 01328 ×659
  D32A  8D 00 20  STA $2000                     ; 0132A ×659
  D32D  60        RTS                           ; 0132D ×659
  D32E  .byte AA D3 B9 D3 E1 D3 C8 D3 AA D3 B9 D3 AA D3 B9 D3   ; 0132E data, read by 01342 01346
  D33E  .byte EA D3 C8 D3                                       ; 0133E data, read by 01342 01346

sub_B0_D342:                    ; from 01307 0130c
  D342  BC 2E D3  LDY $D32E,X                   ; 01342 ×1000
  D345  E8        INX                           ; 01345 ×1000
  D346  BD 2E D3  LDA $D32E,X                   ; 01346 ×1000
  D349  E8        INX                           ; 01349 ×1000
  D34A  86 89     STX $89                       ; 0134A ×1000
  D34C  84 7C     STY $7C                       ; 0134C ×1000
  D34E  85 7D     STA $7D                       ; 0134E ×1000
  D350  A0 00     LDY #$00                      ; 01350 ×1000
  D352  B1 7C     LDA ($7C),Y                   ; 01352 ×1000
  D354  85 8A     STA $8A                       ; 01354 ×1000
  D356  29 0F     AND #$0F                      ; 01356 ×1000
  D358  85 79     STA $79                       ; 01358 ×1000
  D35A  C8        INY                           ; 0135A ×1000
  D35B  84 7B     STY $7B                       ; 0135B ×1000
  D35D  D0 06     BNE loc_B0_D365               ; 0135D ×1000

loc_B0_D35F:                    ; from 01386
  D35F  A4 7B     LDY $7B                       ; 0135F ×3812
  D361  A5 8A     LDA $8A                       ; 01361 ×3812
  D363  30 10     BMI loc_B0_D375               ; 01363 ×3812

loc_B0_D365:                    ; from 0135d
  D365  AD 02 20  LDA $2002                     ; 01365 ×2782
  D368  B1 7C     LDA ($7C),Y                   ; 01368 ×2782
  D36A  AA        TAX                           ; 0136A ×2782
  D36B  C8        INY                           ; 0136B ×2782
  D36C  B1 7C     LDA ($7C),Y                   ; 0136C ×2782
  D36E  8D 06 20  STA $2006                     ; 0136E ×2782
  D371  8E 06 20  STX $2006                     ; 01371 ×2782
  D374  C8        INY                           ; 01374 ×2782

loc_B0_D375:                    ; from 01363
  D375  B1 7C     LDA ($7C),Y                   ; 01375 ×4812
  D377  85 7E     STA $7E                       ; 01377 ×4812
  D379  C8        INY                           ; 01379 ×4812
  D37A  B1 7C     LDA ($7C),Y                   ; 0137A ×4812
  D37C  85 7F     STA $7F                       ; 0137C ×4812
  D37E  C8        INY                           ; 0137E ×4812
  D37F  84 7B     STY $7B                       ; 0137F ×4812
  D381  20 89 D3  JSR sub_B0_D389               ; 01381 ×4812
  D384  C6 79     DEC $79                       ; 01384 ×4812
  D386  D0 D7     BNE loc_B0_D35F               ; 01386 ×4812

loc_B0_D388:                    ; from 0138f
  D388  60        RTS                           ; 01388 ×5812

sub_B0_D389:                    ; from 01381
  D389  A0 00     LDY #$00                      ; 01389 ×4812

loc_B0_D38B:                    ; from 01399
  D38B  B1 7E     LDA ($7E),Y                   ; 0138B ×104060
  D38D  C9 5A     CMP #$5A                      ; 0138D ×104060
  D38F  F0 F7     BEQ loc_B0_D388               ; 0138F ×104060
  D391  C9 57     CMP #$57                      ; 01391 ×99248
  D393  F0 06     BEQ loc_B0_D39B               ; 01393 ×99248
  D395  8D 07 20  STA $2007                     ; 01395 ×80000

loc_B0_D398:                    ; from 013a8
  D398  C8        INY                           ; 01398 ×99248
  D399  D0 F0     BNE loc_B0_D38B               ; 01399 ×99248

loc_B0_D39B:                    ; from 01393
  D39B  C8        INY                           ; 0139B ×19248
  D39C  B1 7E     LDA ($7E),Y                   ; 0139C ×19248
  D39E  AA        TAX                           ; 0139E ×19248
  D39F  C8        INY                           ; 0139F ×19248
  D3A0  B1 7E     LDA ($7E),Y                   ; 013A0 ×19248

loc_B0_D3A2:                    ; from 013a6
  D3A2  8D 07 20  STA $2007                     ; 013A2 ×510912
  D3A5  CA        DEX                           ; 013A5 ×510912
  D3A6  D0 FA     BNE loc_B0_D3A2               ; 013A6 ×510912
  D3A8  F0 EE     BEQ loc_B0_D398               ; 013A8 ×19248
  D3AA  .byte 86 E0 20 C4 E3 77 E4 59 E4 63 E4 6D E4 28 E4 86   ; 013AA data, read by 01352 01368 0136c 01375 (+1)
  D3BA  .byte E0 24 C4 E3 77 E4 59 E4 63 E4 6D E4 28 E4 06 60   ; 013BA data, read by 01368 0136c 01375 0137a (+1)
  D3CA  .byte 22 C4 E3 00 23 6D E4 C0 23 3F E4 60 26 C4 E3 00   ; 013CA data, read by 0136c 01375 0137a 01368
  D3DA  .byte 27 6D E4 C0 27 3F E4 02 00 22 20 E4 00 26 20 E4   ; 013DA data, read by 0136c 01375 0137a 01368 (+1)
  D3EA  .byte 02 E0 20 24 E4 E0 24 24 E4                        ; 013EA data, read by 01352 01368 0136c 01375 (+1)

sub_B0_D3F3:                    ; from 0082a
  D3F3  A0 00     LDY #$00                      ; 013F3 ×273089
  D3F5  A6 64     LDX $64                       ; 013F5 ×273089
  D3F7  F0 40     BEQ loc_B0_D439               ; 013F7 ×273089
  D3F9  CA        DEX                           ; 013F9 ×216656
  D3FA  F0 61     BEQ loc_B0_D45D               ; 013FA ×216656
  D3FC  CA        DEX                           ; 013FC ×139365
  D3FD  F0 20     BEQ loc_B0_D41F               ; 013FD ×139365
  D3FF  CA        DEX                           ; 013FF ×107650
  D400  F0 08     BEQ loc_B0_D40A               ; 01400 ×107650
  D402  AE 27 03  LDX $0327                     ; 01402 ×73609
  D405  F0 2F     BEQ loc_B0_D436               ; 01405 ×73609
  D407  4C 8E D4  JMP loc_B0_D48E               ; 01407 ×33

loc_B0_D40A:                    ; from 01400
  D40A  AE 8E 03  LDX $038E                     ; 0140A ×34041
  D40D  F0 27     BEQ loc_B0_D436               ; 0140D ×34041
  D40F  AE 23 03  LDX $0323                     ; 0140F ×237
  D412  F0 22     BEQ loc_B0_D436               ; 01412 ×237
  D414  CA        DEX                           ; 01414 ×237
  D415  F0 7A     BEQ loc_B0_D491               ; 01415 ×237
  D417  CA        DEX                           ; 01417 ×127
  D418  F0 76     BEQ loc_B0_D490               ; 01418 ×127
  D41A  CA        DEX                           ; 0141A ×40
  D41B  F0 72     BEQ loc_B0_D48F               ; 0141B ×40
  D41D  D0 6E     BNE loc_B0_D48D               ; 0141D ×20

loc_B0_D41F:                    ; from 013fd
  D41F  A5 DF     LDA $DF                       ; 0141F ×31715
  D421  D0 13     BNE loc_B0_D436               ; 01421 ×31715
  D423  A8        TAY                           ; 01423 ×6393
  D424  A2 02     LDX #$02                      ; 01424 ×6393

loc_B0_D426:                    ; from 0142c
  D426  B5 D9     LDA $D9,X                     ; 01426 ×19179
  D428  F0 01     BEQ loc_B0_D42B               ; 01428 ×19179
  D42A  C8        INY                           ; 0142A ×46

loc_B0_D42B:                    ; from 01428
  D42B  CA        DEX                           ; 0142B ×19179
  D42C  10 F8     BPL loc_B0_D426               ; 0142C ×19179
  D42E  98        TYA                           ; 0142E ×6393
  D42F  F0 05     BEQ loc_B0_D436               ; 0142F ×6393
  D431  88        DEY                           ; 01431 ×38
  D432  F0 5D     BEQ loc_B0_D491               ; 01432 ×38
  D434  D0 47     BNE loc_B0_D47D               ; 01434 ×8

loc_B0_D436:                    ; from 01405 0145f 0140d 01457 01445 01421 (+2)
  D436  4C CE D4  JMP loc_B0_D4CE               ; 01436 ×272502

loc_B0_D439:                    ; from 013f7
  D439  AE 3F 03  LDX $033F                     ; 01439 ×56433
  D43C  D0 48     BNE loc_B0_D486               ; 0143C ×56433
  D43E  AE 21 03  LDX $0321                     ; 0143E ×56433
  D441  D0 3A     BNE loc_B0_D47D               ; 01441 ×56433
  D443  A5 DF     LDA $DF                       ; 01443 ×56431
  D445  D0 EF     BNE loc_B0_D436               ; 01445 ×56431
  D447  A2 02     LDX #$02                      ; 01447 ×29231

loc_B0_D449:                    ; from 01454
  D449  B5 D9     LDA $D9,X                     ; 01449 ×87693
  D44B  F0 06     BEQ loc_B0_D453               ; 0144B ×87693
  D44D  C8        INY                           ; 0144D ×40
  D44E  E0 02     CPX #$02                      ; 0144E ×40
  D450  D0 01     BNE loc_B0_D453               ; 01450 ×40
  D452  C8        INY                           ; 01452 ×0

loc_B0_D453:                    ; from 0144b 01450
  D453  CA        DEX                           ; 01453 ×87693
  D454  10 F3     BPL loc_B0_D449               ; 01454 ×87693
  D456  98        TYA                           ; 01456 ×29231
  D457  F0 DD     BEQ loc_B0_D436               ; 01457 ×29231
  D459  88        DEY                           ; 01459 ×40
  D45A  4C 91 D4  JMP loc_B0_D491               ; 0145A ×40

loc_B0_D45D:                    ; from 013fa
  D45D  A5 DF     LDA $DF                       ; 0145D ×77291
  D45F  D0 D5     BNE loc_B0_D436               ; 0145F ×77291
  D461  A8        TAY                           ; 01461 ×20399
  D462  A2 04     LDX #$04                      ; 01462 ×20399

loc_B0_D464:                    ; from 0146f
  D464  B5 D9     LDA $D9,X                     ; 01464 ×101995
  D466  F0 06     BEQ loc_B0_D46E               ; 01466 ×101995
  D468  C8        INY                           ; 01468 ×307
  D469  E0 02     CPX #$02                      ; 01469 ×307
  D46B  B0 01     BCS loc_B0_D46E               ; 0146B ×307
  D46D  C8        INY                           ; 0146D ×92

loc_B0_D46E:                    ; from 01466 0146b
  D46E  CA        DEX                           ; 0146E ×101995
  D46F  10 F3     BPL loc_B0_D464               ; 0146F ×101995
  D471  98        TYA                           ; 01471 ×20399
  D472  F0 C2     BEQ loc_B0_D436               ; 01472 ×20399
  D474  88        DEY                           ; 01474 ×237
  D475  F0 1A     BEQ loc_B0_D491               ; 01475 ×237
  D477  88        DEY                           ; 01477 ×52
  D478  F0 16     BEQ loc_B0_D490               ; 01478 ×52
  D47A  88        DEY                           ; 0147A ×46
  D47B  D0 04     BNE loc_B0_D481               ; 0147B ×46

loc_B0_D47D:                    ; from 01434 01441
  D47D  A0 FD     LDY #$FD                      ; 0147D ×16
  D47F  30 05     BMI loc_B0_D486               ; 0147F ×16

loc_B0_D481:                    ; from 0147b
  D481  88        DEY                           ; 01481 ×40
  D482  F0 0B     BEQ loc_B0_D48F               ; 01482 ×40
  D484  A0 FF     LDY #$FF                      ; 01484 ×24

loc_B0_D486:                    ; from 0147f
  D486  A9 05     LDA #$05                      ; 01486 ×40
  D488  20 0D F8  JSR sub_B0_F80D               ; 01488 ×40
  D48B  C8        INY                           ; 0148B ×40
  D48C  C8        INY                           ; 0148C ×40

loc_B0_D48D:                    ; from 0141d
  D48D  C8        INY                           ; 0148D ×60

loc_B0_D48E:                    ; from 01407
  D48E  C8        INY                           ; 0148E ×93

loc_B0_D48F:                    ; from 0141b 01482
  D48F  C8        INY                           ; 0148F ×129

loc_B0_D490:                    ; from 01418 01478
  D490  C8        INY                           ; 01490 ×222

loc_B0_D491:                    ; from 01475 01415 0145a 01432
  D491  20 FC C8  JSR sub_B0_C8FC               ; 01491 ×587
  D494  8D 21 03  STA $0321                     ; 01494 ×587
  D497  8D 27 03  STA $0327                     ; 01497 ×587
  D49A  8D 3F 03  STA $033F                     ; 0149A ×587
  D49D  8C 24 03  STY $0324                     ; 0149D ×587
  D4A0  B9 C7 D4  LDA $D4C7,Y                   ; 014A0 ×587
  D4A3  85 EA     STA $EA                       ; 014A3 ×587
  D4A5  A9 00     LDA #$00                      ; 014A5 ×587
  D4A7  85 EB     STA $EB                       ; 014A7 ×587
  D4A9  20 C4 C6  JSR sub_B0_C6C4               ; 014A9 ×587
  D4AC  A5 64     LDA $64                       ; 014AC ×587
  D4AE  C9 03     CMP #$03                      ; 014AE ×587
  D4B0  F0 09     BEQ loc_B0_D4BB               ; 014B0 ×587
  D4B2  AC 24 03  LDY $0324                     ; 014B2 ×350
  D4B5  F0 0D     BEQ loc_B0_D4C4               ; 014B5 ×350
  D4B7  C0 03     CPY #$03                      ; 014B7 ×95
  D4B9  90 09     BCC loc_B0_D4C4               ; 014B9 ×95

loc_B0_D4BB:                    ; from 014b0
  D4BB  A0 01     LDY #$01                      ; 014BB ×310
  D4BD  8C 02 04  STY $0402                     ; 014BD ×310
  D4C0  88        DEY                           ; 014C0 ×310
  D4C1  8C 25 03  STY $0325                     ; 014C1 ×310

loc_B0_D4C4:                    ; from 014b5 014b9
  D4C4  4C CE D4  JMP loc_B0_D4CE               ; 014C4 ×587
  D4C7  .byte 01 02 04 05 08 10                                 ; 014C7 data, read by 014a0
  D4CD  .byte 50                                                ; 014CD

loc_B0_D4CE:                    ; from 01436 014c4
  D4CE  AD 02 04  LDA $0402                     ; 014CE ×273089
  D4D1  F0 20     BEQ loc_B0_D4F3               ; 014D1 ×273089
  D4D3  AD 25 03  LDA $0325                     ; 014D3 ×9832
  D4D6  D0 07     BNE loc_B0_D4DF               ; 014D6 ×9832
  D4D8  A9 1F     LDA #$1F                      ; 014D8 ×310
  D4DA  8D 25 03  STA $0325                     ; 014DA ×310
  D4DD  D0 15     BNE loc_B0_D4F4               ; 014DD ×310

loc_B0_D4DF:                    ; from 014d6
  D4DF  CE 25 03  DEC $0325                     ; 014DF ×9522
  D4E2  D0 0F     BNE loc_B0_D4F3               ; 014E2 ×9522

sub_B0_D4E4:                    ; from 00158
  D4E4  A0 18     LDY #$18                      ; 014E4 ×293
  D4E6  A9 F4     LDA #$F4                      ; 014E6 ×293
  D4E8  99 00 02  STA $0200,Y                   ; 014E8 ×293
  D4EB  99 04 02  STA $0204,Y                   ; 014EB ×293
  D4EE  A9 00     LDA #$00                      ; 014EE ×293
  D4F0  8D 02 04  STA $0402                     ; 014F0 ×293

loc_B0_D4F3:                    ; from 014d1 014e2
  D4F3  60        RTS                           ; 014F3 ×272783

loc_B0_D4F4:                    ; from 014dd
  D4F4  A4 64     LDY $64                       ; 014F4 ×310
  D4F6  C0 03     CPY #$03                      ; 014F6 ×310
  D4F8  F0 13     BEQ loc_B0_D50D               ; 014F8 ×310
  D4FA  A5 73     LDA $73                       ; 014FA ×73
  D4FC  18        CLC                           ; 014FC ×73
  D4FD  69 F4     ADC #$F4                      ; 014FD ×73
  D4FF  C0 04     CPY #$04                      ; 014FF ×73
  D501  D0 02     BNE loc_B0_D505               ; 01501 ×73
  D503  69 2C     ADC #$2C                      ; 01503 ×33

loc_B0_D505:                    ; from 01501
  D505  8D 39 03  STA $0339                     ; 01505 ×73
  D508  A5 74     LDA $74                       ; 01508 ×73
  D50A  8D 38 03  STA $0338                     ; 0150A ×73

loc_B0_D50D:                    ; from 014f8
  D50D  A0 18     LDY #$18                      ; 0150D ×310
  D50F  AD 39 03  LDA $0339                     ; 0150F ×310
  D512  99 00 02  STA $0200,Y                   ; 01512 ×310
  D515  99 04 02  STA $0204,Y                   ; 01515 ×310
  D518  AE 24 03  LDX $0324                     ; 01518 ×310
  D51B  BD 3D D5  LDA $D53D,X                   ; 0151B ×310
  D51E  99 01 02  STA $0201,Y                   ; 0151E ×310
  D521  F0 02     BEQ $D525                     ; 01521 ×310
  D523  A9 03     LDA #$03                      ; 01523 ×310
  D525  99 05 02  STA $0205,Y                   ; 01525 ×310
  D528  A9 03     LDA #$03                      ; 01528 ×310
  D52A  99 02 02  STA $0202,Y                   ; 0152A ×310
  D52D  99 06 02  STA $0206,Y                   ; 0152D ×310
  D530  AD 38 03  LDA $0338                     ; 01530 ×310
  D533  99 03 02  STA $0203,Y                   ; 01533 ×310
  D536  18        CLC                           ; 01536 ×310
  D537  69 08     ADC #$08                      ; 01537 ×310
  D539  99 07 02  STA $0207,Y                   ; 01539 ×310

loc_B0_D53C:                    ; from 0154c 01546 01562 01568
  D53C  60        RTS                           ; 0153C ×241465
  D53D  .byte A7 12 22 23 94 A4                                 ; 0153D data, read by 0151b
  D543  .byte EF                                                ; 01543

sub_B0_D544:                    ; from 009aa
  D544  A5 0F     LDA $0F                       ; 01544 ×239345
  D546  D0 F4     BNE loc_B0_D53C               ; 01546 ×239345
  D548  A5 09     LDA $09                       ; 01548 ×138185
  D54A  29 0F     AND #$0F                      ; 0154A ×138185
  D54C  D0 EE     BNE loc_B0_D53C               ; 0154C ×138185

sub_B0_D54E:                    ; from 00189
  D54E  A2 00     LDX #$00                      ; 0154E ×10451

loc_B0_D550:                    ; from 0155d
  D550  DE 41 03  DEC $0341,X                   ; 01550 ×12183
  D553  10 0A     BPL loc_B0_D55F               ; 01553 ×12183
  D555  A9 09     LDA #$09                      ; 01555 ×1732
  D557  9D 41 03  STA $0341,X                   ; 01557 ×1732
  D55A  E8        INX                           ; 0155A ×1732
  D55B  E0 03     CPX #$03                      ; 0155B ×1732
  D55D  D0 F1     BNE loc_B0_D550               ; 0155D ×1732

loc_B0_D55F:                    ; from 01553
  D55F  AD 43 03  LDA $0343                     ; 0155F ×10451
  D562  D0 D8     BNE loc_B0_D53C               ; 01562 ×10451
  D564  A5 00     LDA $00                       ; 01564 ×400
  D566  C9 05     CMP #$05                      ; 01566 ×400
  D568  D0 D2     BNE loc_B0_D53C               ; 01568 ×400
  D56A  AD 01 04  LDA $0401                     ; 0156A inferred, not run
  D56D  D0 CD     BNE loc_B0_D53C               ; 0156D inferred, not run
  D56F  EE 01 04  INC $0401                     ; 0156F inferred, not run
  D572  4C 55 CB  JMP $CB55                     ; 01572 inferred, not run

sub_B0_D575:                    ; from 0064b 005ce 01312
  D575  A9 40     LDA #$40                      ; 01575 ×273097
  D577  85 7E     STA $7E                       ; 01577 ×273097
  D579  A9 03     LDA #$03                      ; 01579 ×273097
  D57B  85 7F     STA $7F                       ; 0157B ×273097
  D57D  AD 02 20  LDA $2002                     ; 0157D ×273097
  D580  A9 20     LDA #$20                      ; 01580 ×273097
  D582  8D 06 20  STA $2006                     ; 01582 ×273097
  D585  A9 92     LDA #$92                      ; 01585 ×273097
  D587  8D 06 20  STA $2006                     ; 01587 ×273097
  D58A  A0 03     LDY #$03                      ; 0158A ×273097

loc_B0_D58C:                    ; from 01594
  D58C  B1 7E     LDA ($7E),Y                   ; 0158C ×1092388
  D58E  09 30     ORA #$30                      ; 0158E ×1092388
  D590  8D 07 20  STA $2007                     ; 01590 ×1092388
  D593  88        DEY                           ; 01593 ×1092388
  D594  10 F6     BPL loc_B0_D58C               ; 01594 ×1092388
  D596  60        RTS                           ; 01596 ×273097

sub_B0_D597:                    ; from 0021c
  D597  A5 09     LDA $09                       ; 01597 ×22557
  D599  29 07     AND #$07                      ; 01599 ×22557
  D59B  D0 54     BNE loc_B0_D5F1               ; 0159B ×22557
  D59D  EE 02 03  INC $0302                     ; 0159D ×2799
  D5A0  AD 02 03  LDA $0302                     ; 015A0 ×2799
  D5A3  49 03     EOR #$03                      ; 015A3 ×2799
  D5A5  D0 03     BNE loc_B0_D5AA               ; 015A5 ×2799
  D5A7  8D 02 03  STA $0302                     ; 015A7 ×916

loc_B0_D5AA:                    ; from 015a5
  D5AA  0A        ASL A                         ; 015AA ×2799
  D5AB  A8        TAY                           ; 015AB ×2799
  D5AC  B9 3B D6  LDA $D63B,Y                   ; 015AC ×2799
  D5AF  85 7C     STA $7C                       ; 015AF ×2799
  D5B1  B9 3C D6  LDA $D63C,Y                   ; 015B1 ×2799
  D5B4  85 7D     STA $7D                       ; 015B4 ×2799
  D5B6  AD 4D D6  LDA $D64D                     ; 015B6 ×2799
  D5B9  85 7E     STA $7E                       ; 015B9 ×2799
  D5BB  AD 4E D6  LDA $D64E                     ; 015BB ×2799
  D5BE  85 7F     STA $7F                       ; 015BE ×2799
  D5C0  20 57 D6  JSR sub_B0_D657               ; 015C0 ×2799
  D5C3  A0 00     LDY #$00                      ; 015C3 ×2799
  D5C5  A2 0C     LDX #$0C                      ; 015C5 ×2799

loc_B0_D5C7:                    ; from 015ce
  D5C7  B1 7E     LDA ($7E),Y                   ; 015C7 ×33588
  D5C9  8D 07 20  STA $2007                     ; 015C9 ×33588
  D5CC  C8        INY                           ; 015CC ×33588
  D5CD  CA        DEX                           ; 015CD ×33588
  D5CE  D0 F7     BNE loc_B0_D5C7               ; 015CE ×33588
  D5D0  A0 00     LDY #$00                      ; 015D0 ×2799
  D5D2  A2 04     LDX #$04                      ; 015D2 ×2799

loc_B0_D5D4:                    ; from 015db
  D5D4  B1 7C     LDA ($7C),Y                   ; 015D4 ×11196
  D5D6  8D 07 20  STA $2007                     ; 015D6 ×11196
  D5D9  C8        INY                           ; 015D9 ×11196
  D5DA  CA        DEX                           ; 015DA ×11196
  D5DB  D0 F7     BNE loc_B0_D5D4               ; 015DB ×11196
  D5DD  F0 45     BEQ loc_B0_D624               ; 015DD ×2799

sub_B0_D5DF:                    ; from 0038b
  D5DF  24 03     BIT $03                       ; 015DF ×1942
  D5E1  50 0E     BVC loc_B0_D5F1               ; 015E1 ×1942
  D5E3  A5 CC     LDA $CC                       ; 015E3 ×1942
  D5E5  F0 0A     BEQ loc_B0_D5F1               ; 015E5 ×1942
  D5E7  C9 02     CMP #$02                      ; 015E7 ×1942
  D5E9  F0 11     BEQ loc_B0_D5FC               ; 015E9 ×1942
  D5EB  A5 09     LDA $09                       ; 015EB ×940
  D5ED  29 03     AND #$03                      ; 015ED ×940
  D5EF  F0 01     BEQ loc_B0_D5F2               ; 015EF ×940

loc_B0_D5F1:                    ; from 0159b
  D5F1  60        RTS                           ; 015F1 ×20462

loc_B0_D5F2:                    ; from 015ef
  D5F2  A2 04     LDX #$04                      ; 015F2 ×236
  D5F4  A0 00     LDY #$00                      ; 015F4 ×236
  D5F6  A5 09     LDA $09                       ; 015F6 ×236
  D5F8  29 04     AND #$04                      ; 015F8 ×236
  D5FA  D0 02     BNE loc_B0_D5FE               ; 015FA ×236

loc_B0_D5FC:                    ; from 015e9
  D5FC  A2 10     LDX #$10                      ; 015FC ×1120

loc_B0_D5FE:                    ; from 015fa
  D5FE  AD 4F D6  LDA $D64F                     ; 015FE ×1238
  D601  85 7C     STA $7C                       ; 01601 ×1238
  D603  AD 50 D6  LDA $D650                     ; 01603 ×1238
  D606  85 7D     STA $7D                       ; 01606 ×1238
  D608  86 77     STX $77                       ; 01608 ×1238
  D60A  84 78     STY $78                       ; 0160A ×1238
  D60C  20 65 D6  JSR sub_B0_D665               ; 0160C ×1238
  D60F  20 57 D6  JSR sub_B0_D657               ; 0160F ×1238
  D612  A2 10     LDX #$10                      ; 01612 ×1238
  D614  A0 00     LDY #$00                      ; 01614 ×1238

loc_B0_D616:                    ; from 01622
  D616  B1 7E     LDA ($7E),Y                   ; 01616 ×19336
  D618  8D 07 20  STA $2007                     ; 01618 ×19336
  D61B  C8        INY                           ; 0161B ×19336
  D61C  CA        DEX                           ; 0161C ×19336
  D61D  E4 77     CPX $77                       ; 0161D ×19336
  D61F  F0 06     BEQ loc_B0_D627               ; 0161F ×19336

loc_B0_D621:                    ; from 01638
  D621  8A        TXA                           ; 01621 ×19336
  D622  D0 F2     BNE loc_B0_D616               ; 01622 ×19336

loc_B0_D624:                    ; from 015dd
  D624  4C 11 CA  JMP loc_B0_CA11               ; 01624 ×4037

loc_B0_D627:                    ; from 0161f
  D627  84 FA     STY $FA                       ; 01627 ×118
  D629  A0 00     LDY #$00                      ; 01629 ×118

loc_B0_D62B:                    ; from 01634
  D62B  B1 7C     LDA ($7C),Y                   ; 0162B ×472
  D62D  8D 07 20  STA $2007                     ; 0162D ×472
  D630  C8        INY                           ; 01630 ×472
  D631  CA        DEX                           ; 01631 ×472
  D632  E4 78     CPX $78                       ; 01632 ×472
  D634  D0 F5     BNE loc_B0_D62B               ; 01634 ×472
  D636  A4 FA     LDY $FA                       ; 01636 ×118
  D638  4C 21 D6  JMP loc_B0_D621               ; 01638 ×118
  D63B  .byte 41 D6 45 D6 49 D6 0F 16 2C 28 0F 2C 28 16 0F 28   ; 0163B data, read by 015ac 015b1 015d4
  D64B  .byte 16 2C 08 CD 51 D6 0F 14 30 29 E8 CC               ; 0164B data, read by 015d4 015b6 015bb 015fe (+4)

sub_B0_D657:                    ; from 015c0 0160f
  D657  AD 02 20  LDA $2002                     ; 01657 ×4037
  D65A  A9 3F     LDA #$3F                      ; 0165A ×4037
  D65C  8D 06 20  STA $2006                     ; 0165C ×4037
  D65F  A9 00     LDA #$00                      ; 0165F ×4037
  D661  8D 06 20  STA $2006                     ; 01661 ×4037
  D664  60        RTS                           ; 01664 ×4037

sub_B0_D665:                    ; from 0160c
  D665  AD 55 D6  LDA $D655                     ; 01665 ×1238
  D668  85 7E     STA $7E                       ; 01668 ×1238
  D66A  AD 56 D6  LDA $D656                     ; 0166A ×1238
  D66D  85 7F     STA $7F                       ; 0166D ×1238
  D66F  60        RTS                           ; 0166F ×1238
  D670  .byte E7 20 00 90 A0 80 90 A0 80 90 A0 80 90 A0 80 90   ; 01670 data, read by 00509 0050e 00516
  D680  .byte A0 80 90 00 FE 07 21 A0 FE 18 21 80 FE 27 21 90   ; 01680 data, read by 00516 00509 0050e
  D690  .byte 00 00 00 B0 B1 B2 B3 B4 B5 B6 B7 FE 38 21 90 FE   ; 01690 data, read by 00516 00509 0050e
  D6A0  .byte 47 21 80 00 00 00 C0 C1 C2 C3 C4 C5 C6 C7 FE 58   ; 016A0 data, read by 00509 0050e 00516
  D6B0  .byte 21 A0 FE 67 21 A0 00 00 00 00 B0 B1 B8 B9 DE DF   ; 016B0 data, read by 0050e 00516 00509
  D6C0  .byte BC D0 D1 00 00 00 80 FE 87 21 90 00 00 00 00 C0   ; 016C0 data, read by 00516 00509 0050e
  D6D0  .byte C1 C8 C9 EE EF CC E0 E1 00 00 00 90 FE A7 21 80   ; 016D0 data, read by 00516 00509 0050e
  D6E0  .byte FE B8 21 A0 FE C7 21 00 90 80 A0 90 80 A0 90 80   ; 016E0 data, read by 00516 00509 0050e
  D6F0  .byte A0 90 80 A0 90 80 A0 90 00 FF C8 23 00 C0 FD 04   ; 016F0 data, read by 00516 00509 0050e 00530
  D700  .byte F0 30 00 00 CC FD 04 00 33 00 00 CC FD 04 F0 33   ; 01700 data, read by 00534 00516 00530
  D710  .byte FD 19 00 FF                                       ; 01710 data, read by 00516 00530 00534

sub_B0_D714:                    ; from 005cb
  D714  A9 0C     LDA #$0C                      ; 01714 ×950
  D716  20 E3 C4  JSR sub_B0_C4E3               ; 01716 ×950
  D719  20 4B CA  JSR sub_B0_CA4B               ; 01719 ×950
  D71C  A9 0D     LDA #$0D                      ; 0171C ×950
  D71E  20 E3 C4  JSR sub_B0_C4E3               ; 0171E ×950
  D721  4C 55 CA  JMP loc_B0_CA55               ; 01721 ×950
  D724  .byte 42 20 FD 1C 24 FE A2 20 FD 1C 29 FF 41 20 23 26   ; 01724 data, read by 00509 0050e 00516 00530 (+1)
  D734  .byte 26 28 FE 5E 20 25 27 27 2A FF                     ; 01734 data, read by 00516 00509 0050e

sub_B0_D73E:                    ; from 00247
  D73E  A2 00     LDX #$00                      ; 0173E ×37
  D740  8E B2 03  STX $03B2                     ; 01740 ×37
  D743  8E 41 03  STX $0341                     ; 01743 ×37
  D746  8E 42 03  STX $0342                     ; 01746 ×37
  D749  8E 43 03  STX $0343                     ; 01749 ×37
  D74C  8E B1 03  STX $03B1                     ; 0174C ×37
  D74F  86 6D     STX $6D                       ; 0174F ×37
  D751  86 6A     STX $6A                       ; 01751 ×37
  D753  86 6B     STX $6B                       ; 01753 ×37
  D755  86 66     STX $66                       ; 01755 ×37
  D757  A2 02     LDX #$02                      ; 01757 ×37
  D759  AD B0 03  LDA $03B0                     ; 01759 ×37
  D75C  4A        LSR A                         ; 0175C ×37
  D75D  90 02     BCC loc_B0_D761               ; 0175D ×37
  D75F  A2 04     LDX #$04                      ; 0175F ×17

loc_B0_D761:                    ; from 0175d
  D761  86 63     STX $63                       ; 01761 ×37
  D763  A9 00     LDA #$00                      ; 01763 ×37
  D765  85 61     STA $61                       ; 01765 ×37
  D767  EE B0 03  INC $03B0                     ; 01767 ×37
  D76A  4C 35 C8  JMP sub_B0_C835               ; 0176A ×37

sub_B0_D76D:                    ; from 000ed
  D76D  A2 06     LDX #$06                      ; 0176D ×33309
  D76F  A5 63     LDA $63                       ; 0176F ×33309
  D771  C9 04     CMP #$04                      ; 01771 ×33309
  D773  F0 02     BEQ loc_B0_D777               ; 01773 ×33309
  D775  A2 03     LDX #$03                      ; 01775 ×18284

loc_B0_D777:                    ; from 01773
  D777  E4 6B     CPX $6B                       ; 01777 ×33309
  D779  F0 46     BEQ loc_B0_D7C1               ; 01779 ×33309
  D77B  A9 00     LDA #$00                      ; 0177B ×33281
  D77D  AC B1 03  LDY $03B1                     ; 0177D ×33281
  D780  D0 32     BNE loc_B0_D7B4               ; 01780 ×33281
  D782  AC B2 03  LDY $03B2                     ; 01782 ×544
  D785  B9 C5 D7  LDA $D7C5,Y                   ; 01785 ×544
  D788  E0 06     CPX #$06                      ; 01788 ×544
  D78A  F0 03     BEQ loc_B0_D78F               ; 0178A ×544
  D78C  B9 E7 D7  LDA $D7E7,Y                   ; 0178C ×291

loc_B0_D78F:                    ; from 0178a
  D78F  8D B3 03  STA $03B3                     ; 0178F ×544
  D792  8D B4 03  STA $03B4                     ; 01792 ×544
  D795  C8        INY                           ; 01795 ×544
  D796  B9 C5 D7  LDA $D7C5,Y                   ; 01796 ×544
  D799  E0 06     CPX #$06                      ; 01799 ×544
  D79B  F0 03     BEQ loc_B0_D7A0               ; 0179B ×544
  D79D  B9 E7 D7  LDA $D7E7,Y                   ; 0179D ×291

loc_B0_D7A0:                    ; from 0179b
  D7A0  8D B1 03  STA $03B1                     ; 017A0 ×544
  D7A3  C8        INY                           ; 017A3 ×544
  D7A4  8C B2 03  STY $03B2                     ; 017A4 ×544
  D7A7  A5 05     LDA $05                       ; 017A7 ×544
  D7A9  29 30     AND #$30                      ; 017A9 ×544
  D7AB  85 77     STA $77                       ; 017AB ×544
  D7AD  AD B4 03  LDA $03B4                     ; 017AD ×544
  D7B0  29 CF     AND #$CF                      ; 017B0 ×544
  D7B2  05 77     ORA $77                       ; 017B2 ×544

loc_B0_D7B4:                    ; from 01780
  D7B4  85 0D     STA $0D                       ; 017B4 ×33281
  D7B6  AD B3 03  LDA $03B3                     ; 017B6 ×33281
  D7B9  85 0C     STA $0C                       ; 017B9 ×33281
  D7BB  CE B1 03  DEC $03B1                     ; 017BB ×33281
  D7BE  4C 22 C8  JMP loc_B0_C822               ; 017BE ×33281

loc_B0_D7C1:                    ; from 01779
  D7C1  E6 0A     INC $0A                       ; 017C1 ×28
  D7C3  18        CLC                           ; 017C3 ×28
  D7C4  60        RTS                           ; 017C4 ×28
  D7C5  .byte 00 7A 80 0E 00 62 02 26 82 22 00 56 02 40 82 18   ; 017C5 data, read by 01785 01796
  D7D5  .byte 02 9A 00 28 80 08 00 28 00 14 00 04 02 82 82 16   ; 017D5 data, read by 01785 01796
  D7E5  .byte 00 B4 01 90 81 10 01 50 81 10 01 80 81 10 01 60   ; 017E5 data, read by 01785 01796 0178c 0179d
  D7F5  .byte 81 10 01 80 00 20 81 10 01 60 81 10 01 88 81 10   ; 017F5 data, read by 0178c 0179d
  D805  .byte 01 40                                             ; 01805 data, read by 0178c 0179d

sub_B0_D807:                    ; from 029e7 0253d 02fa6 02c4f
  D807  A5 64     LDA $64                       ; 01807 ×147338
  D809  20 CD C4  JSR sub_B0_C4CD               ; 01809 ×147338
  D80C  .byte 14 D8 8D D8 51 D9 5F D9                           ; 0180C data, read by 004d6 004da

jt_B0_D814:                    ; from 004e0
  D814  20 05 DA  JSR sub_B0_DA05               ; 01814 ×39267
  D817  B0 07     BCS loc_B0_D820               ; 01817 ×39267
  D819  A9 30     LDA #$30                      ; 01819 ×0
  D81B  85 77     STA $77                       ; 0181B ×0
  D81D  4C E4 D8  JMP $D8E4                     ; 0181D ×0

loc_B0_D820:                    ; from 01817 01956
  D820  A6 DF     LDX $DF                       ; 01820 ×58233
  D822  F0 0A     BEQ loc_B0_D82E               ; 01822 ×58233

loc_B0_D824:                    ; from 0188a
  D824  A6 DE     LDX $DE                       ; 01824 ×71952
  D826  CA        DEX                           ; 01826 ×71952
  D827  F0 16     BEQ loc_B0_D83F               ; 01827 ×71952
  D829  CA        DEX                           ; 01829 ×27241
  D82A  F0 34     BEQ loc_B0_D860               ; 0182A ×27241
  D82C  D0 0B     BNE loc_B0_D839               ; 0182C ×17693

loc_B0_D82E:                    ; from 01822 018a0
  D82E  A5 0C     LDA $0C                       ; 0182E ×39124
  D830  29 03     AND #$03                      ; 01830 ×39124
  D832  AA        TAX                           ; 01832 ×39124
  D833  CA        DEX                           ; 01833 ×39124
  D834  F0 09     BEQ loc_B0_D83F               ; 01834 ×39124
  D836  CA        DEX                           ; 01836 ×24602
  D837  F0 27     BEQ loc_B0_D860               ; 01837 ×24602

loc_B0_D839:                    ; from 0182c 01876 0194e
  D839  A9 00     LDA #$00                      ; 01839 ×42973
  D83B  85 CE     STA $CE                       ; 0183B ×42973
  D83D  F0 46     BEQ loc_B0_D885               ; 0183D ×42973

loc_B0_D83F:                    ; from 01827 01834
  D83F  A5 63     LDA $63                       ; 0183F ×59233
  D841  C9 02     CMP #$02                      ; 01841 ×59233
  D843  D0 05     BNE loc_B0_D84A               ; 01843 ×59233
  D845  20 F7 D9  JSR sub_B0_D9F7               ; 01845 ×41399
  D848  90 3F     BCC loc_B0_D889               ; 01848 ×41399

loc_B0_D84A:                    ; from 01843
  D84A  A9 01     LDA #$01                      ; 0184A ×48881
  D84C  85 56     STA $56                       ; 0184C ×48881
  D84E  20 EE F7  JSR sub_B0_F7EE               ; 0184E ×48881
  D851  AE 05 04  LDX $0405                     ; 01851 ×48881
  D854  F0 02     BEQ loc_B0_D858               ; 01854 ×48881
  D856  D6 74     DEC $74,X                     ; 01856 ×1278

loc_B0_D858:                    ; from 01854
  D858  A9 FF     LDA #$FF                      ; 01858 ×48881
  D85A  85 CE     STA $CE                       ; 0185A ×48881
  D85C  A9 01     LDA #$01                      ; 0185C ×48881
  D85E  D0 25     BNE loc_B0_D885               ; 0185E ×48881

loc_B0_D860:                    ; from 0182a 01837
  D860  A5 63     LDA $63                       ; 01860 ×10675
  D862  C9 02     CMP #$02                      ; 01862 ×10675
  D864  F0 04     BEQ loc_B0_D86A               ; 01864 ×10675
  D866  C9 03     CMP #$03                      ; 01866 ×5663
  D868  D0 05     BNE loc_B0_D86F               ; 01868 ×5663

loc_B0_D86A:                    ; from 01864
  D86A  20 FB D9  JSR sub_B0_D9FB               ; 0186A ×6064
  D86D  90 1A     BCC loc_B0_D889               ; 0186D ×6064

loc_B0_D86F:                    ; from 01868
  D86F  A9 01     LDA #$01                      ; 0186F ×7643
  D871  85 56     STA $56                       ; 01871 ×7643
  D873  20 FC F7  JSR sub_B0_F7FC               ; 01873 ×7643
  D876  30 C1     BMI loc_B0_D839               ; 01876 ×7643
  D878  AE 05 04  LDX $0405                     ; 01878 ×6098
  D87B  F0 02     BEQ loc_B0_D87F               ; 0187B ×6098
  D87D  F6 74     INC $74,X                     ; 0187D ×130

loc_B0_D87F:                    ; from 0187b
  D87F  A9 FF     LDA #$FF                      ; 0187F ×6098
  D881  85 CE     STA $CE                       ; 01881 ×6098
  D883  A9 02     LDA #$02                      ; 01883 ×6098

loc_B0_D885:                    ; from 0185e 0183d
  D885  85 CA     STA $CA                       ; 01885 ×97952

loc_B0_D887:                    ; from 018b5
  D887  85 C9     STA $C9                       ; 01887 ×99572

loc_B0_D889:                    ; from 01848 0186d
  D889  60        RTS                           ; 01889 ×112956

loc_B0_D88A:                    ; from 0189a 018b9
  D88A  4C 24 D8  JMP loc_B0_D824               ; 0188A ×39236

jt_B0_D88D:                    ; from 004e0
  D88D  20 05 DA  JSR sub_B0_DA05               ; 0188D ×55157
  D890  90 4E     BCC loc_B0_D8E0               ; 01890 ×55157
  D892  A5 74     LDA $74                       ; 01892 ×54723
  D894  C9 40     CMP #$40                      ; 01894 ×54723
  D896  90 1F     BCC loc_B0_D8B7               ; 01896 ×54723
  D898  A5 DF     LDA $DF                       ; 01898 ×41997
  D89A  D0 EE     BNE loc_B0_D88A               ; 0189A ×41997
  D89C  A5 0C     LDA $0C                       ; 0189C ×13731
  D89E  29 02     AND #$02                      ; 0189E ×13731
  D8A0  F0 8C     BEQ loc_B0_D82E               ; 018A0 ×13731

loc_B0_D8A2:                    ; from 018bf
  D8A2  A6 74     LDX $74                       ; 018A2 ×1086
  D8A4  E0 10     CPX #$10                      ; 018A4 ×1086
  D8A6  90 B8     BCC loc_B0_D860               ; 018A6 ×1086
  D8A8  A5 09     LDA $09                       ; 018A8 ×1086
  D8AA  4A        LSR A                         ; 018AA ×1086
  D8AB  90 02     BCC loc_B0_D8AF               ; 018AB ×1086
  D8AD  C6 74     DEC $74                       ; 018AD ×560

loc_B0_D8AF:                    ; from 018ab
  D8AF  A9 02     LDA #$02                      ; 018AF ×1086
  D8B1  85 CA     STA $CA                       ; 018B1 ×1086

loc_B0_D8B3:                    ; from 018db
  D8B3  A9 00     LDA #$00                      ; 018B3 ×1620
  D8B5  F0 D0     BEQ loc_B0_D887               ; 018B5 ×1620

loc_B0_D8B7:                    ; from 01896
  D8B7  A5 DF     LDA $DF                       ; 018B7 ×12726
  D8B9  D0 CF     BNE loc_B0_D88A               ; 018B9 ×12726
  D8BB  A5 0C     LDA $0C                       ; 018BB ×1756
  D8BD  29 02     AND #$02                      ; 018BD ×1756
  D8BF  D0 E1     BNE loc_B0_D8A2               ; 018BF ×1756
  D8C1  A5 0C     LDA $0C                       ; 018C1 ×794
  D8C3  29 01     AND #$01                      ; 018C3 ×794
  D8C5  D0 03     BNE loc_B0_D8CA               ; 018C5 ×794
  D8C7  4C 4E D9  JMP loc_B0_D94E               ; 018C7 ×260

loc_B0_D8CA:                    ; from 018c5
  D8CA  A6 74     LDX $74                       ; 018CA ×534
  D8CC  E0 40     CPX #$40                      ; 018CC ×534
  D8CE  B0 0D     BCS $D8DD                     ; 018CE ×534
  D8D0  A5 09     LDA $09                       ; 018D0 ×534
  D8D2  4A        LSR A                         ; 018D2 ×534
  D8D3  90 02     BCC loc_B0_D8D7               ; 018D3 ×534
  D8D5  E6 74     INC $74                       ; 018D5 ×264

loc_B0_D8D7:                    ; from 018d3
  D8D7  A9 01     LDA #$01                      ; 018D7 ×534
  D8D9  85 CA     STA $CA                       ; 018D9 ×534
  D8DB  D0 D6     BNE loc_B0_D8B3               ; 018DB ×534
  D8DD  4C 58 D8  JMP loc_B0_D858               ; 018DD inferred, not run

loc_B0_D8E0:                    ; from 01890
  D8E0  A9 10     LDA #$10                      ; 018E0 ×434
  D8E2  85 77     STA $77                       ; 018E2 ×434
  D8E4  A5 DF     LDA $DF                       ; 018E4 ×434
  D8E6  F0 0A     BEQ loc_B0_D8F2               ; 018E6 ×434
  D8E8  A6 DE     LDX $DE                       ; 018E8 ×354
  D8EA  CA        DEX                           ; 018EA ×354
  D8EB  F0 37     BEQ loc_B0_D924               ; 018EB ×354
  D8ED  CA        DEX                           ; 018ED ×0
  D8EE  F0 0F     BEQ $D8FF                     ; 018EE ×0
  D8F0  D0 5C     BNE loc_B0_D94E               ; 018F0 ×0

loc_B0_D8F2:                    ; from 018e6
  D8F2  A5 0C     LDA $0C                       ; 018F2 ×80
  D8F4  29 03     AND #$03                      ; 018F4 ×80
  D8F6  AA        TAX                           ; 018F6 ×80
  D8F7  CA        DEX                           ; 018F7 ×80
  D8F8  F0 2A     BEQ loc_B0_D924               ; 018F8 ×80
  D8FA  CA        DEX                           ; 018FA ×0
  D8FB  F0 02     BEQ $D8FF                     ; 018FB ×0
  D8FD  D0 4F     BNE loc_B0_D94E               ; 018FD ×0
  D8FF  A6 74     LDX $74                       ; 018FF ×0
  D901  E4 77     CPX $77                       ; 01901 ×0
  D903  B0 03     BCS $D908                     ; 01903 ×0
  D905  4C 60 D8  JMP loc_B0_D860               ; 01905 ×0
  D908  20 2D CD  JSR sub_B0_CD2D               ; 01908 ×0
  D90B  F0 05     BEQ $D912                     ; 0190B ×0
  D90D  20 FB D9  JSR sub_B0_D9FB               ; 0190D ×0
  D910  90 0E     BCC $D920                     ; 01910 ×0
  D912  C6 74     DEC $74                       ; 01912 ×0
  D914  E0 03     CPX #$03                      ; 01914 ×0
  D916  D0 02     BNE $D91A                     ; 01916 ×0
  D918  C6 BF     DEC $BF                       ; 01918 ×0
  D91A  E0 01     CPX #$01                      ; 0191A ×0
  D91C  D0 02     BNE $D920                     ; 0191C ×0
  D91E  C6 84     DEC $84                       ; 0191E ×0
  D920  A9 02     LDA #$02                      ; 01920 ×0
  D922  D0 21     BNE $D945                     ; 01922 ×0

loc_B0_D924:                    ; from 018eb 018f8
  D924  A6 74     LDX $74                       ; 01924 ×434
  D926  E0 E8     CPX #$E8                      ; 01926 ×434
  D928  B0 B3     BCS $D8DD                     ; 01928 ×434
  D92A  A6 63     LDX $63                       ; 0192A ×434
  D92C  E0 02     CPX #$02                      ; 0192C ×434
  D92E  D0 05     BNE $D935                     ; 0192E ×434
  D930  20 F3 D9  JSR sub_B0_D9F3               ; 01930 ×434
  D933  90 0E     BCC loc_B0_D943               ; 01933 ×434
  D935  E6 74     INC $74                       ; 01935 ×304
  D937  E0 03     CPX #$03                      ; 01937 ×304
  D939  D0 02     BNE loc_B0_D93D               ; 01939 ×304
  D93B  E6 BF     INC $BF                       ; 0193B ×0

loc_B0_D93D:                    ; from 01939
  D93D  E0 01     CPX #$01                      ; 0193D ×304
  D93F  D0 02     BNE loc_B0_D943               ; 0193F ×304
  D941  E6 84     INC $84                       ; 01941 ×0

loc_B0_D943:                    ; from 0193f 01933
  D943  A9 01     LDA #$01                      ; 01943 ×434
  D945  85 CA     STA $CA                       ; 01945 ×434
  D947  A9 00     LDA #$00                      ; 01947 ×434
  D949  85 CE     STA $CE                       ; 01949 ×434
  D94B  85 C9     STA $C9                       ; 0194B ×434
  D94D  60        RTS                           ; 0194D ×434

loc_B0_D94E:                    ; from 018c7
  D94E  4C 39 D8  JMP loc_B0_D839               ; 0194E ×260

jt_B0_D951:                    ; from 004e0
  D951  20 05 DA  JSR sub_B0_DA05               ; 01951 ×18966
  D954  90 03     BCC $D959                     ; 01954 ×18966
  D956  4C 20 D8  JMP loc_B0_D820               ; 01956 ×18966
  D959  A9 3C     LDA #$3C                      ; 01959 ×0
  D95B  85 77     STA $77                       ; 0195B ×0
  D95D  D0 85     BNE $D8E4                     ; 0195D ×0

jt_B0_D95F:                    ; from 004e0
  D95F  A6 0C     LDX $0C                       ; 0195F ×33948
  D961  AD 20 03  LDA $0320                     ; 01961 ×33948
  D964  0D 1F 03  ORA $031F                     ; 01964 ×33948
  D967  D0 08     BNE loc_B0_D971               ; 01967 ×33948
  D969  A5 CD     LDA $CD                       ; 01969 ×32598
  D96B  05 DF     ORA $DF                       ; 0196B ×32598
  D96D  F0 02     BEQ loc_B0_D971               ; 0196D ×32598
  D96F  A6 C9     LDX $C9                       ; 0196F ×24296

loc_B0_D971:                    ; from 0196d 01967
  D971  86 0C     STX $0C                       ; 01971 ×33948
  D973  A5 AF     LDA $AF                       ; 01973 ×33948
  D975  D0 4D     BNE loc_B0_D9C4               ; 01975 ×33948
  D977  A5 0F     LDA $0F                       ; 01977 ×25502
  D979  D0 1C     BNE $D997                     ; 01979 ×25502
  D97B  A5 B8     LDA $B8                       ; 0197B ×25502
  D97D  D0 06     BNE loc_B0_D985               ; 0197D ×25502
  D97F  A5 DE     LDA $DE                       ; 0197F ×0
  D981  A6 DF     LDX $DF                       ; 01981 ×0
  D983  D0 02     BNE $D987                     ; 01983 ×0

loc_B0_D985:                    ; from 0197d
  D985  A5 0C     LDA $0C                       ; 01985 ×25502
  D987  29 03     AND #$03                      ; 01987 ×25502
  D989  0A        ASL A                         ; 01989 ×25502
  D98A  AA        TAX                           ; 0198A ×25502
  D98B  BD BC D9  LDA $D9BC,X                   ; 0198B ×25502
  D98E  85 56     STA $56                       ; 0198E ×25502
  D990  BD BD D9  LDA $D9BD,X                   ; 01990 ×25502
  D993  85 C9     STA $C9                       ; 01993 ×25502
  D995  85 CA     STA $CA                       ; 01995 ×25502
  D997  20 05 DA  JSR sub_B0_DA05               ; 01997 ×25502
  D99A  B0 1D     BCS loc_B0_D9B9               ; 0199A ×25502
  D99C  A9 02     LDA #$02                      ; 0199C ×296
  D99E  85 CA     STA $CA                       ; 0199E ×296
  D9A0  A5 74     LDA $74                       ; 019A0 ×296
  D9A2  69 01     ADC #$01                      ; 019A2 ×296
  D9A4  AA        TAX                           ; 019A4 ×296
  D9A5  69 10     ADC #$10                      ; 019A5 ×296
  D9A7  B0 02     BCS sub_B0_D9AB               ; 019A7 ×296
  D9A9  86 74     STX $74                       ; 019A9 ×296

sub_B0_D9AB:                    ; from 00111
  D9AB  18        CLC                           ; 019AB ×1274
  D9AC  A5 84     LDA $84                       ; 019AC ×1274
  D9AE  69 01     ADC #$01                      ; 019AE ×1274
  D9B0  85 84     STA $84                       ; 019B0 ×1274
  D9B2  90 04     BCC loc_B0_D9B8               ; 019B2 ×1274
  D9B4  A9 00     LDA #$00                      ; 019B4 ×4
  D9B6  85 80     STA $80                       ; 019B6 ×4

loc_B0_D9B8:                    ; from 019d4 019c6 019b2 019dc 019ea 019ee
  D9B8  60        RTS                           ; 019B8 ×35258

loc_B0_D9B9:                    ; from 0199a
  D9B9  4C EE F7  JMP sub_B0_F7EE               ; 019B9 ×25206
  D9BC  .byte 02 00 03 01 01 02                                 ; 019BC data, read by 0198b 01990
  D9C2  .byte 02 00                                             ; 019C2

loc_B0_D9C4:                    ; from 01975
  D9C4  A5 80     LDA $80                       ; 019C4 ×8446
  D9C6  F0 F0     BEQ loc_B0_D9B8               ; 019C6 ×8446
  D9C8  A5 84     LDA $84                       ; 019C8 ×4032
  D9CA  18        CLC                           ; 019CA ×4032
  D9CB  69 02     ADC #$02                      ; 019CB ×4032
  D9CD  85 84     STA $84                       ; 019CD ×4032
  D9CF  B0 11     BCS loc_B0_D9E2               ; 019CF ×4032

sub_B0_D9D1:                    ; from 030b5
  D9D1  AD 90 05  LDA $0590                     ; 019D1 ×29534
  D9D4  F0 E2     BEQ loc_B0_D9B8               ; 019D4 ×29534
  D9D6  A5 84     LDA $84                       ; 019D6 ×354
  D9D8  69 08     ADC #$08                      ; 019D8 ×354
  D9DA  C9 F0     CMP #$F0                      ; 019DA ×354
  D9DC  90 DA     BCC loc_B0_D9B8               ; 019DC ×354
  D9DE  A9 00     LDA #$00                      ; 019DE ×0
  D9E0  F0 04     BEQ $D9E6                     ; 019E0 ×0

loc_B0_D9E2:                    ; from 019cf
  D9E2  A9 00     LDA #$00                      ; 019E2 ×36
  D9E4  85 80     STA $80                       ; 019E4 ×36
  D9E6  85 B8     STA $B8                       ; 019E6 ×36
  D9E8  A5 DF     LDA $DF                       ; 019E8 ×36
  D9EA  D0 CC     BNE loc_B0_D9B8               ; 019EA ×36
  D9EC  A5 0F     LDA $0F                       ; 019EC ×9
  D9EE  D0 C8     BNE loc_B0_D9B8               ; 019EE ×9
  D9F0  4C 31 F1  JMP loc_B0_F131               ; 019F0 ×0

sub_B0_D9F3:                    ; from 01930
  D9F3  A9 B4     LDA #$B4                      ; 019F3 ×434
  D9F5  D0 06     BNE loc_B0_D9FD               ; 019F5 ×434

sub_B0_D9F7:                    ; from 01845
  D9F7  A9 C0     LDA #$C0                      ; 019F7 ×41399
  D9F9  D0 02     BNE loc_B0_D9FD               ; 019F9 ×41399

sub_B0_D9FB:                    ; from 0186a 0190d
  D9FB  A9 80     LDA #$80                      ; 019FB ×6064

loc_B0_D9FD:                    ; from 019f9 019f5
  D9FD  18        CLC                           ; 019FD ×47897
  D9FE  6D 2D 03  ADC $032D                     ; 019FE ×47897
  DA01  8D 2D 03  STA $032D                     ; 01A01 ×47897
  DA04  60        RTS                           ; 01A04 ×47897

sub_B0_DA05:                    ; from 0188d 01814 01997 01951 03588
  DA05  A5 69     LDA $69                       ; 01A05 ×151836
  DA07  D0 06     BNE loc_B0_DA0F               ; 01A07 ×151836
  DA09  A5 68     LDA $68                       ; 01A09 ×1000
  DA0B  C9 C0     CMP #$C0                      ; 01A0B ×1000
  DA0D  90 01     BCC loc_B0_DA10               ; 01A0D ×1000

loc_B0_DA0F:                    ; from 01a07
  DA0F  38        SEC                           ; 01A0F ×151106

loc_B0_DA10:                    ; from 01a0d
  DA10  60        RTS                           ; 01A10 ×151836

sub_B0_DA11:                    ; from 029ea 02540 02f97 02c52 0349a
  DA11  AD 8E 03  LDA $038E                     ; 01A11 ×147708
  DA14  F0 03     BEQ loc_B0_DA19               ; 01A14 ×147708
  DA16  4C 01 DB  JMP loc_B0_DB01               ; 01A16 ×421

loc_B0_DA19:                    ; from 01a14
  DA19  A5 CD     LDA $CD                       ; 01A19 ×147287
  DA1B  F0 03     BEQ loc_B0_DA20               ; 01A1B ×147287
  DA1D  4C 31 DB  JMP loc_B0_DB31               ; 01A1D ×17174

loc_B0_DA20:                    ; from 01a1b
  DA20  A5 DF     LDA $DF                       ; 01A20 ×130113
  DA22  D0 4D     BNE loc_B0_DA71               ; 01A22 ×130113
  DA24  A5 0D     LDA $0D                       ; 01A24 ×47442
  DA26  29 C0     AND #$C0                      ; 01A26 ×47442
  DA28  D0 03     BNE loc_B0_DA2D               ; 01A28 ×47442
  DA2A  4C FD DA  JMP loc_B0_DAFD               ; 01A2A ×46135

loc_B0_DA2D:                    ; from 01a28
  DA2D  A9 01     LDA #$01                      ; 01A2D ×1307
  DA2F  8D 13 03  STA $0313                     ; 01A2F ×1307
  DA32  8D 1F 03  STA $031F                     ; 01A32 ×1307
  DA35  A9 02     LDA #$02                      ; 01A35 ×1307
  DA37  20 2D CD  JSR sub_B0_CD2D               ; 01A37 ×1307
  DA3A  F0 02     BEQ loc_B0_DA3E               ; 01A3A ×1307
  DA3C  A9 03     LDA #$03                      ; 01A3C ×1007

loc_B0_DA3E:                    ; from 01a3a
  DA3E  20 0D F8  JSR sub_B0_F80D               ; 01A3E ×1307
  DA41  A5 64     LDA $64                       ; 01A41 ×1307
  DA43  0A        ASL A                         ; 01A43 ×1307
  DA44  A8        TAY                           ; 01A44 ×1307
  DA45  B9 AA DB  LDA $DBAA,Y                   ; 01A45 ×1307
  DA48  8D A2 03  STA $03A2                     ; 01A48 ×1307
  DA4B  B9 AB DB  LDA $DBAB,Y                   ; 01A4B ×1307
  DA4E  8D A0 03  STA $03A0                     ; 01A4E ×1307
  DA51  A5 73     LDA $73                       ; 01A51 ×1307
  DA53  8D A3 03  STA $03A3                     ; 01A53 ×1307
  DA56  20 28 CD  JSR sub_B0_CD28               ; 01A56 ×1307
  DA59  D0 05     BNE loc_B0_DA60               ; 01A59 ×1307
  DA5B  A5 83     LDA $83                       ; 01A5B ×300
  DA5D  8D A7 03  STA $03A7                     ; 01A5D ×300

loc_B0_DA60:                    ; from 01a59
  DA60  A9 00     LDA #$00                      ; 01A60 ×1307
  DA62  8D A1 03  STA $03A1                     ; 01A62 ×1307
  DA65  E6 CB     INC $CB                       ; 01A65 ×1307
  DA67  A5 0C     LDA $0C                       ; 01A67 ×1307
  DA69  29 03     AND #$03                      ; 01A69 ×1307
  DA6B  85 DE     STA $DE                       ; 01A6B ×1307
  DA6D  E6 DF     INC $DF                       ; 01A6D ×1307
  DA6F  D0 05     BNE loc_B0_DA76               ; 01A6F ×1307

loc_B0_DA71:                    ; from 01a22
  DA71  A9 00     LDA #$00                      ; 01A71 ×82671
  DA73  8D 1F 03  STA $031F                     ; 01A73 ×82671

loc_B0_DA76:                    ; from 01a6f
  DA76  AD A1 03  LDA $03A1                     ; 01A76 ×83978
  DA79  38        SEC                           ; 01A79 ×83978
  DA7A  ED A0 03  SBC $03A0                     ; 01A7A ×83978
  DA7D  8D A1 03  STA $03A1                     ; 01A7D ×83978
  DA80  AD A2 03  LDA $03A2                     ; 01A80 ×83978
  DA83  E9 00     SBC #$00                      ; 01A83 ×83978
  DA85  8D A2 03  STA $03A2                     ; 01A85 ×83978
  DA88  10 29     BPL loc_B0_DAB3               ; 01A88 ×83978
  DA8A  A9 00     LDA #$00                      ; 01A8A ×35365
  DA8C  85 CB     STA $CB                       ; 01A8C ×35365
  DA8E  85 BE     STA $BE                       ; 01A8E ×35365
  DA90  A5 73     LDA $73                       ; 01A90 ×35365
  DA92  A4 63     LDY $63                       ; 01A92 ×35365
  DA94  C0 03     CPY #$03                      ; 01A94 ×35365
  DA96  F0 04     BEQ loc_B0_DA9C               ; 01A96 ×35365
  DA98  C0 04     CPY #$04                      ; 01A98 ×29111
  DA9A  D0 12     BNE loc_B0_DAAE               ; 01A9A ×29111

loc_B0_DA9C:                    ; from 01a96
  DA9C  A4 B8     LDY $B8                       ; 01A9C ×10006
  DA9E  D0 0E     BNE loc_B0_DAAE               ; 01A9E ×10006
  DAA0  C9 C0     CMP #$C0                      ; 01AA0 ×3248
  DAA2  90 0F     BCC loc_B0_DAB3               ; 01AA2 ×3248
  DAA4  A0 02     LDY #$02                      ; 01AA4 ×58
  DAA6  84 0F     STY $0F                       ; 01AA6 ×58
  DAA8  20 3B CA  JSR sub_B0_CA3B               ; 01AA8 ×58
  DAAB  4C 95 DC  JMP loc_B0_DC95               ; 01AAB ×58

loc_B0_DAAE:                    ; from 01a9a 01a9e
  DAAE  CD A3 03  CMP $03A3                     ; 01AAE ×32117
  DAB1  B0 31     BCS loc_B0_DAE4               ; 01AB1 ×32117

loc_B0_DAB3:                    ; from 01a88 01aa2
  DAB3  A5 73     LDA $73                       ; 01AB3 ×82924
  DAB5  38        SEC                           ; 01AB5 ×82924
  DAB6  ED A2 03  SBC $03A2                     ; 01AB6 ×82924
  DAB9  85 73     STA $73                       ; 01AB9 ×82924
  DABB  20 28 CD  JSR sub_B0_CD28               ; 01ABB ×82924
  DABE  D0 12     BNE loc_B0_DAD2               ; 01ABE ×82924
  DAC0  A9 00     LDA #$00                      ; 01AC0 ×19434
  DAC2  85 76     STA $76                       ; 01AC2 ×19434
  DAC4  A5 83     LDA $83                       ; 01AC4 ×19434
  DAC6  38        SEC                           ; 01AC6 ×19434
  DAC7  ED A2 03  SBC $03A2                     ; 01AC7 ×19434
  DACA  85 83     STA $83                       ; 01ACA ×19434
  DACC  A9 1C     LDA #$1C                      ; 01ACC ×19434
  DACE  85 86     STA $86                       ; 01ACE ×19434
  DAD0  D0 2D     BNE loc_B0_DAFF               ; 01AD0 ×19434

loc_B0_DAD2:                    ; from 01abe
  DAD2  A5 64     LDA $64                       ; 01AD2 ×63490
  DAD4  C9 03     CMP #$03                      ; 01AD4 ×63490
  DAD6  F0 07     BEQ loc_B0_DADF               ; 01AD6 ×63490
  DAD8  A9 02     LDA #$02                      ; 01AD8 ×52997

loc_B0_DADA:                    ; from 01ae1
  DADA  85 76     STA $76                       ; 01ADA ×63490
  DADC  4C FF DA  JMP loc_B0_DAFF               ; 01ADC ×63490

loc_B0_DADF:                    ; from 01ad6
  DADF  A9 02     LDA #$02                      ; 01ADF ×10493
  DAE1  4C DA DA  JMP loc_B0_DADA               ; 01AE1 ×10493

loc_B0_DAE4:                    ; from 01ab1
  DAE4  AD A3 03  LDA $03A3                     ; 01AE4 ×996
  DAE7  85 73     STA $73                       ; 01AE7 ×996
  DAE9  A9 01     LDA #$01                      ; 01AE9 ×996
  DAEB  85 76     STA $76                       ; 01AEB ×996
  DAED  20 28 CD  JSR sub_B0_CD28               ; 01AED ×996
  DAF0  D0 05     BNE loc_B0_DAF7               ; 01AF0 ×996
  DAF2  AD A7 03  LDA $03A7                     ; 01AF2 ×258
  DAF5  85 83     STA $83                       ; 01AF5 ×258

loc_B0_DAF7:                    ; from 01af0
  DAF7  A0 00     LDY #$00                      ; 01AF7 ×996
  DAF9  84 DE     STY $DE                       ; 01AF9 ×996
  DAFB  84 DF     STY $DF                       ; 01AFB ×996

loc_B0_DAFD:                    ; from 01a2a
  DAFD  18        CLC                           ; 01AFD ×47131
  DAFE  60        RTS                           ; 01AFE ×47131

loc_B0_DAFF:                    ; from 01adc 01ad0
  DAFF  38        SEC                           ; 01AFF ×82924
  DB00  60        RTS                           ; 01B00 ×82924

loc_B0_DB01:                    ; from 01a16
  DB01  EE 20 03  INC $0320                     ; 01B01 ×421
  DB04  A9 01     LDA #$01                      ; 01B04 ×421
  DB06  20 0D F8  JSR sub_B0_F80D               ; 01B06 ×421
  DB09  A0 00     LDY #$00                      ; 01B09 ×421
  DB0B  A5 64     LDA $64                       ; 01B0B ×421
  DB0D  C9 03     CMP #$03                      ; 01B0D ×421
  DB0F  F0 02     BEQ loc_B0_DB13               ; 01B0F ×421
  DB11  A0 02     LDY #$02                      ; 01B11 ×184

loc_B0_DB13:                    ; from 01b0f
  DB13  B9 B2 DB  LDA $DBB2,Y                   ; 01B13 ×421
  DB16  8D A6 03  STA $03A6                     ; 01B16 ×421
  DB19  B9 B3 DB  LDA $DBB3,Y                   ; 01B19 ×421
  DB1C  8D A4 03  STA $03A4                     ; 01B1C ×421
  DB1F  A5 73     LDA $73                       ; 01B1F ×421
  DB21  8D A7 03  STA $03A7                     ; 01B21 ×421
  DB24  A0 00     LDY #$00                      ; 01B24 ×421
  DB26  8C A5 03  STY $03A5                     ; 01B26 ×421
  DB29  C8        INY                           ; 01B29 ×421
  DB2A  8C 88 03  STY $0388                     ; 01B2A ×421
  DB2D  E6 CD     INC $CD                       ; 01B2D ×421
  DB2F  D0 05     BNE loc_B0_DB36               ; 01B2F ×421

loc_B0_DB31:                    ; from 01a1d
  DB31  A9 00     LDA #$00                      ; 01B31 ×17174
  DB33  8D 20 03  STA $0320                     ; 01B33 ×17174

loc_B0_DB36:                    ; from 01b2f
  DB36  A9 00     LDA #$00                      ; 01B36 ×17595
  DB38  8D 8E 03  STA $038E                     ; 01B38 ×17595
  DB3B  20 97 DB  JSR sub_B0_DB97               ; 01B3B ×17595
  DB3E  10 1B     BPL loc_B0_DB5B               ; 01B3E ×17595
  DB40  A9 00     LDA #$00                      ; 01B40 ×6852
  DB42  8D 88 03  STA $0388                     ; 01B42 ×6852
  DB45  A5 63     LDA $63                       ; 01B45 ×6852
  DB47  C9 05     CMP #$05                      ; 01B47 ×6852
  DB49  F0 10     BEQ loc_B0_DB5B               ; 01B49 ×6852
  DB4B  A5 73     LDA $73                       ; 01B4B ×4140
  DB4D  CD A7 03  CMP $03A7                     ; 01B4D ×4140
  DB50  90 04     BCC loc_B0_DB56               ; 01B50 ×4140
  DB52  A0 01     LDY #$01                      ; 01B52 ×1213
  DB54  84 76     STY $76                       ; 01B54 ×1213

loc_B0_DB56:                    ; from 01b50
  DB56  CD A3 03  CMP $03A3                     ; 01B56 ×4140
  DB59  B0 27     BCS loc_B0_DB82               ; 01B59 ×4140

loc_B0_DB5B:                    ; from 01b3e 01b49
  DB5B  A5 73     LDA $73                       ; 01B5B ×17500
  DB5D  38        SEC                           ; 01B5D ×17500
  DB5E  ED A6 03  SBC $03A6                     ; 01B5E ×17500
  DB61  85 73     STA $73                       ; 01B61 ×17500
  DB63  A4 63     LDY $63                       ; 01B63 ×17500
  DB65  C0 05     CPY #$05                      ; 01B65 ×17500
  DB67  F0 0B     BEQ loc_B0_DB74               ; 01B67 ×17500
  DB69  AD 88 03  LDA $0388                     ; 01B69 ×8752
  DB6C  F0 12     BEQ loc_B0_DB80               ; 01B6C ×8752
  DB6E  A9 02     LDA #$02                      ; 01B6E ×4707
  DB70  85 76     STA $76                       ; 01B70 ×4707
  DB72  F0 0C     BEQ loc_B0_DB80               ; 01B72 ×4707

loc_B0_DB74:                    ; from 01b67
  DB74  A9 02     LDA #$02                      ; 01B74 ×13455
  DB76  A4 73     LDY $73                       ; 01B76 ×13455
  DB78  C0 70     CPY #$70                      ; 01B78 ×13455
  DB7A  90 02     BCC loc_B0_DB7E               ; 01B7A ×13455
  DB7C  69 01     ADC #$01                      ; 01B7C ×7278

loc_B0_DB7E:                    ; from 01b7a
  DB7E  85 76     STA $76                       ; 01B7E ×13455

loc_B0_DB80:                    ; from 01b6c
  DB80  38        SEC                           ; 01B80 ×17500
  DB81  60        RTS                           ; 01B81 ×17500

loc_B0_DB82:                    ; from 01b59
  DB82  AD A3 03  LDA $03A3                     ; 01B82 ×95
  DB85  85 73     STA $73                       ; 01B85 ×95

sub_B0_DB87:                    ; from 03641 0360f
  DB87  A9 00     LDA #$00                      ; 01B87 ×574
  DB89  85 DF     STA $DF                       ; 01B89 ×574
  DB8B  85 DE     STA $DE                       ; 01B8B ×574
  DB8D  85 CD     STA $CD                       ; 01B8D ×574
  DB8F  8D 86 03  STA $0386                     ; 01B8F ×574
  DB92  8D 23 03  STA $0323                     ; 01B92 ×574
  DB95  18        CLC                           ; 01B95 ×574
  DB96  60        RTS                           ; 01B96 ×574

sub_B0_DB97:                    ; from 01b3b 0248b
  DB97  AD A5 03  LDA $03A5                     ; 01B97 ×17595
  DB9A  38        SEC                           ; 01B9A ×17595
  DB9B  ED A4 03  SBC $03A4                     ; 01B9B ×17595
  DB9E  8D A5 03  STA $03A5                     ; 01B9E ×17595
  DBA1  AD A6 03  LDA $03A6                     ; 01BA1 ×17595
  DBA4  E9 00     SBC #$00                      ; 01BA4 ×17595
  DBA6  8D A6 03  STA $03A6                     ; 01BA6 ×17595
  DBA9  60        RTS                           ; 01BA9 ×17595
  DBAA  .byte 04 1A 04 1A 04 1C 04 1C 03 25 06 25               ; 01BAA data, read by 01a45 01a4b 01b13 01b19

sub_B0_DBB6:                    ; from 02fa9 02545 029ef 02c57 00114
  DBB6  A6 CA     LDX $CA                       ; 01BB6 ×75831
  DBB8  A4 64     LDY $64                       ; 01BB8 ×75831
  DBBA  C0 03     CPY #$03                      ; 01BBA ×75831
  DBBC  F0 10     BEQ loc_B0_DBCE               ; 01BBC ×75831
  DBBE  8A        TXA                           ; 01BBE ×40905
  DBBF  29 03     AND #$03                      ; 01BBF ×40905
  DBC1  F0 75     BEQ sub_B0_DC38               ; 01BC1 ×40905
  DBC3  AD 13 03  LDA $0313                     ; 01BC3 ×16887
  DBC6  D0 12     BNE loc_B0_DBDA               ; 01BC6 ×16887
  DBC8  BD 52 DC  LDA $DC52,X                   ; 01BC8 ×15971
  DBCB  4C D1 DB  JMP loc_B0_DBD1               ; 01BCB ×15971

loc_B0_DBCE:                    ; from 01bbc
  DBCE  BD 55 DC  LDA $DC55,X                   ; 01BCE ×34926

loc_B0_DBD1:                    ; from 01bcb
  DBD1  18        CLC                           ; 01BD1 ×50897
  DBD2  6D 36 03  ADC $0336                     ; 01BD2 ×50897
  DBD5  8D 36 03  STA $0336                     ; 01BD5 ×50897
  DBD8  90 52     BCC loc_B0_DC2C               ; 01BD8 ×50897

loc_B0_DBDA:                    ; from 01bc6
  DBDA  A9 00     LDA #$00                      ; 01BDA ×7130
  DBDC  8D 13 03  STA $0313                     ; 01BDC ×7130
  DBDF  C0 03     CPY #$03                      ; 01BDF ×7130
  DBE1  F0 04     BEQ loc_B0_DBE7               ; 01BE1 ×7130
  DBE3  E0 02     CPX #$02                      ; 01BE3 ×2794
  DBE5  F0 46     BEQ loc_B0_DC2D               ; 01BE5 ×2794

loc_B0_DBE7:                    ; from 01be1
  DBE7  EE 8B 03  INC $038B                     ; 01BE7 ×6849
  DBEA  AD 8B 03  LDA $038B                     ; 01BEA ×6849
  DBED  29 03     AND #$03                      ; 01BED ×6849
  DBEF  49 03     EOR #$03                      ; 01BEF ×6849
  DBF1  D0 03     BNE loc_B0_DBF6               ; 01BF1 ×6849
  DBF3  8D 8B 03  STA $038B                     ; 01BF3 ×2274

loc_B0_DBF6:                    ; from 01bf1 01c35
  DBF6  AA        TAX                           ; 01BF6 ×7130

loc_B0_DBF7:                    ; from 01c43
  DBF7  C0 01     CPY #$01                      ; 01BF7 ×12972
  DBF9  F0 2C     BEQ loc_B0_DC27               ; 01BF9 ×12972
  DBFB  C0 02     CPY #$02                      ; 01BFB ×8248
  DBFD  F0 28     BEQ loc_B0_DC27               ; 01BFD ×8248
  DBFF  C0 04     CPY #$04                      ; 01BFF ×4721
  DC01  F0 24     BEQ loc_B0_DC27               ; 01C01 ×4721
  DC03  A5 DF     LDA $DF                       ; 01C03 ×4721
  DC05  05 0F     ORA $0F                       ; 01C05 ×4721
  DC07  D0 0E     BNE loc_B0_DC17               ; 01C07 ×4721
  DC09  A5 00     LDA $00                       ; 01C09 ×1115
  DC0B  C9 08     CMP #$08                      ; 01C0B ×1115
  DC0D  F0 08     BEQ loc_B0_DC17               ; 01C0D ×1115
  DC0F  A5 76     LDA $76                       ; 01C0F ×1055
  DC11  49 01     EOR #$01                      ; 01C11 ×1055
  DC13  29 01     AND #$01                      ; 01C13 ×1055
  DC15  85 76     STA $76                       ; 01C15 ×1055

loc_B0_DC17:                    ; from 01c07 01c0d
  DC17  C0 03     CPY #$03                      ; 01C17 ×4721
  DC19  F0 06     BEQ loc_B0_DC21               ; 01C19 ×4721

loc_B0_DC1B:                    ; from 01c47
  DC1B  BD 49 DC  LDA $DC49,X                   ; 01C1B ×18563
  DC1E  85 86     STA $86                       ; 01C1E ×18563
  DC20  60        RTS                           ; 01C20 ×18563

loc_B0_DC21:                    ; from 01c19
  DC21  BD 4C DC  LDA $DC4C,X                   ; 01C21 ×4338
  DC24  85 86     STA $86                       ; 01C24 ×4338
  DC26  60        RTS                           ; 01C26 ×4338

loc_B0_DC27:                    ; from 01bf9 01bfd
  DC27  BD 4F DC  LDA $DC4F,X                   ; 01C27 ×8251
  DC2A  85 76     STA $76                       ; 01C2A ×8251

loc_B0_DC2C:                    ; from 01bd8
  DC2C  60        RTS                           ; 01C2C ×52934

loc_B0_DC2D:                    ; from 01be5
  DC2D  EE 8C 03  INC $038C                     ; 01C2D ×281
  DC30  AD 8C 03  LDA $038C                     ; 01C30 ×281
  DC33  29 01     AND #$01                      ; 01C33 ×281
  DC35  4C F6 DB  JMP loc_B0_DBF6               ; 01C35 ×281

sub_B0_DC38:                    ; from 01bc1 00e54
  DC38  A2 01     LDX #$01                      ; 01C38 ×24022
  DC3A  8E 13 03  STX $0313                     ; 01C3A ×24022
  DC3D  A2 00     LDX #$00                      ; 01C3D ×24022
  DC3F  A4 64     LDY $64                       ; 01C3F ×24022
  DC41  C0 00     CPY #$00                      ; 01C41 ×24022
  DC43  D0 B2     BNE loc_B0_DBF7               ; 01C43 ×24022
  DC45  86 76     STX $76                       ; 01C45 ×18180
  DC47  F0 D2     BEQ loc_B0_DC1B               ; 01C47 ×18180
  DC49  .byte 1A 1B 1C 10 11 12 03 04 05                        ; 01C49 data, read by 01c1b 01c21 01c27
  DC52  .byte 00                                                ; 01C52
  DC53  .byte 20 10 20 30 10                                    ; 01C53 data, read by 01bc8 01bce

sub_B0_DC58:                    ; from 03658 029e4 02c49 02fac
  DC58  A6 0F     LDX $0F                       ; 01C58 ×84166
  DC5A  CA        DEX                           ; 01C5A ×84166
  DC5B  F0 3E     BEQ loc_B0_DC9B               ; 01C5B ×84166
  DC5D  CA        DEX                           ; 01C5D ×83856
  DC5E  F0 0C     BEQ loc_B0_DC6C               ; 01C5E ×83856
  DC60  CA        DEX                           ; 01C60 ×76225
  DC61  F0 02     BEQ loc_B0_DC65               ; 01C61 ×76225
  DC63  D0 4E     BNE loc_B0_DCB3               ; 01C63 ×62124

loc_B0_DC65:                    ; from 01c61
  DC65  20 25 CA  JSR sub_B0_CA25               ; 01C65 ×14101
  DC68  90 56     BCC loc_B0_DCC0               ; 01C68 ×14101
  DC6A  B0 5A     BCS loc_B0_DCC6               ; 01C6A ×368

loc_B0_DC6C:                    ; from 01c5e
  DC6C  A6 64     LDX $64                       ; 01C6C ×7631
  DC6E  E0 03     CPX #$03                      ; 01C6E ×7631
  DC70  F0 18     BEQ loc_B0_DC8A               ; 01C70 ×7631
  DC72  E0 01     CPX #$01                      ; 01C72 ×6745
  DC74  D0 14     BNE loc_B0_DC8A               ; 01C74 ×6745
  DC76  AD 14 03  LDA $0314                     ; 01C76 ×6494
  DC79  F0 0F     BEQ loc_B0_DC8A               ; 01C79 ×6494
  DC7B  20 25 CA  JSR sub_B0_CA25               ; 01C7B ×2886
  DC7E  90 40     BCC loc_B0_DCC0               ; 01C7E ×2886
  DC80  A9 08     LDA #$08                      ; 01C80 ×74
  DC82  20 0D F8  JSR sub_B0_F80D               ; 01C82 ×74
  DC85  A9 00     LDA #$00                      ; 01C85 ×74
  DC87  8D 14 03  STA $0314                     ; 01C87 ×74

loc_B0_DC8A:                    ; from 01c79 01c70 01c74
  DC8A  A5 73     LDA $73                       ; 01C8A ×4819
  DC8C  18        CLC                           ; 01C8C ×4819
  DC8D  69 02     ADC #$02                      ; 01C8D ×4819
  DC8F  85 73     STA $73                       ; 01C8F ×4819
  DC91  C9 C0     CMP #$C0                      ; 01C91 ×4819
  DC93  90 2B     BCC loc_B0_DCC0               ; 01C93 ×4819

loc_B0_DC95:                    ; from 01aab
  DC95  A9 09     LDA #$09                      ; 01C95 ×368
  DC97  85 76     STA $76                       ; 01C97 ×368
  DC99  D0 44     BNE loc_B0_DCDF               ; 01C99 ×368

loc_B0_DC9B:                    ; from 01c5b
  DC9B  20 3B CA  JSR sub_B0_CA3B               ; 01C9B ×310
  DC9E  EE 14 03  INC $0314                     ; 01C9E ×310
  DCA1  A5 64     LDA $64                       ; 01CA1 ×310
  DCA3  C9 03     CMP #$03                      ; 01CA3 ×310
  DCA5  D0 38     BNE loc_B0_DCDF               ; 01CA5 ×310
  DCA7  A9 08     LDA #$08                      ; 01CA7 ×36
  DCA9  D0 3B     BNE loc_B0_DCE6               ; 01CA9 ×36

loc_B0_DCAB:                    ; from 0253a
  DCAB  A6 0F     LDX $0F                       ; 01CAB ×16994
  DCAD  CA        DEX                           ; 01CAD ×16994
  DCAE  F0 24     BEQ loc_B0_DCD4               ; 01CAE ×16994
  DCB0  CA        DEX                           ; 01CB0 ×16912
  DCB1  F0 0E     BEQ loc_B0_DCC1               ; 01CB1 ×16912

loc_B0_DCB3:                    ; from 01c63
  DCB3  20 31 CA  JSR sub_B0_CA31               ; 01CB3 ×75874
  DCB6  90 08     BCC loc_B0_DCC0               ; 01CB6 ×75874
  DCB8  A9 00     LDA #$00                      ; 01CB8 ×445
  DCBA  85 0F     STA $0F                       ; 01CBA ×445
  DCBC  A9 01     LDA #$01                      ; 01CBC ×445
  DCBE  85 0A     STA $0A                       ; 01CBE ×445

loc_B0_DCC0:                    ; from 01cb6 01c68 01c93 01cc4 01c7e
  DCC0  60        RTS                           ; 01CC0 ×100008

loc_B0_DCC1:                    ; from 01cb1
  DCC1  20 25 CA  JSR sub_B0_CA25               ; 01CC1 ×3162
  DCC4  90 FA     BCC loc_B0_DCC0               ; 01CC4 ×3162

loc_B0_DCC6:                    ; from 01c6a
  DCC6  A9 0B     LDA #$0B                      ; 01CC6 ×450
  DCC8  20 0D F8  JSR sub_B0_F80D               ; 01CC8 ×450
  DCCB  A9 4C     LDA #$4C                      ; 01CCB ×450
  DCCD  20 0D F8  JSR sub_B0_F80D               ; 01CCD ×450
  DCD0  A9 8D     LDA #$8D                      ; 01CD0 ×450
  DCD2  D0 12     BNE loc_B0_DCE6               ; 01CD2 ×450

loc_B0_DCD4:                    ; from 01cae
  DCD4  A9 1E     LDA #$1E                      ; 01CD4 ×82
  DCD6  85 76     STA $76                       ; 01CD6 ×82
  DCD8  A9 1D     LDA #$1D                      ; 01CD8 ×82
  DCDA  85 86     STA $86                       ; 01CDA ×82
  DCDC  20 3B CA  JSR sub_B0_CA3B               ; 01CDC ×82

loc_B0_DCDF:                    ; from 01c99 01ca5
  DCDF  A9 09     LDA #$09                      ; 01CDF ×724
  DCE1  20 0D F8  JSR sub_B0_F80D               ; 01CE1 ×724
  DCE4  A9 CA     LDA #$CA                      ; 01CE4 ×724

loc_B0_DCE6:                    ; from 01cd2 01ca9
  DCE6  20 0D F8  JSR sub_B0_F80D               ; 01CE6 ×1210
  DCE9  E6 0F     INC $0F                       ; 01CE9 ×1210
  DCEB  A9 02     LDA #$02                      ; 01CEB ×1210
  DCED  85 CC     STA $CC                       ; 01CED ×1210
  DCEF  60        RTS                           ; 01CEF ×1210
  DCF0  .byte 00 50 02 00 00 66 08 00 76 10 08 51 00 08 67 08   ; 01CF0 data, read by 010b3 0110d 010bf 01145 (+2)
  DD00  .byte 08 77 10 00 07 02 00 00 6C 08 00 7C 10 08 09 00   ; 01D00 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD10  .byte 08 6D 08 08 7D 10 00 5E 02 00 00 6E 08 00 7E 10   ; 01D10 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD20  .byte 08 5F 00 08 6F 08 08 7F 10 00 50 02 00 00 60 08   ; 01D20 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD30  .byte 00 70 10 08 51 00 08 61 08 08 71 10 00 50 02 00   ; 01D30 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD40  .byte 00 62 08 00 72 10 08 51 00 08 63 08 08 73 10 00   ; 01D40 data, read by 010b3 0110d 010bf 010e5
  DD50  .byte 50 02 00 00 64 08 00 74 10 08 51 00 08 65 08 08   ; 01D50 data, read by 010bf 01145 0114e 010e5 (+2)
  DD60  .byte 75 10 00 0E 02 00 00 1E 08 00 2E 10 08 0F 00 08   ; 01D60 data, read by 010bf 010e5 010b3 0110d (+2)
  DD70  .byte 1F 08 08 2F 10 00 3C 02 00 00 4C 08 00 5C 10 08   ; 01D70 data, read by 010bf 010e5 010b3 0110d (+2)
  DD80  .byte 3D 00 08 4D 08 08 5D 10 00 0E 02 00 00 3E 08 00   ; 01D80 data, read by 010bf 010e5 010b3 0110d (+2)
  DD90  .byte 4E 10 08 0F 00 08 3F 08 08 4F 10 00 58 02 00 00   ; 01D90 data, read by 010bf 010e5 010b3 0110d (+2)
  DDA0  .byte 68 08 00 78 10 08 59 00 08 69 08 08 79 10 08 02   ; 01DA0 data, read by 010bf 010e5 010b3 0110d (+3)
  DDB0  .byte 00 17 FF 03 00 08 0D 00 E8 04 08 03 F0 02 18 03   ; 01DB0 data, read by 010b3 0110d 010bf 01145 (+2)
  DDC0  .byte F8 00 17 03 08 00 17 03 10 02 18 83 28 04 08 83   ; 01DC0 data, read by 010e5 010b3 0110d 010bf (+1)
  DDD0  .byte 30 00 17 83 18 00 17 83 20 08 02 00 19 FF 03 00   ; 01DD0 data, read by 010e5 010b3 0110d 010bf (+5)
  DDE0  .byte 08 0D 00 E8 04 0A 03 F0 02 1A 03 F8 00 19 03 08   ; 01DE0 data, read by 010b3 0110d 010bf 010d7 (+1)
  DDF0  .byte 00 19 03 10 02 1A 83 28 04 0A 83 30 00 19 83 18   ; 01DF0 data, read by 010b3 0110d 010bf 010d7 (+1)
  DE00  .byte 00 19 83 20 07 02 00 08 FF 43 00 02 18 43 08 04   ; 01E00 data, read by 010b3 0110d 010bf 010d7 (+5)
  DE10  .byte 17 43 10 04 17 43 18 04 17 43 20 02 18 C3 38 00   ; 01E10 data, read by 010bf 010d7 010e5 010b3 (+1)
  DE20  .byte 08 C3 40 04 17 C3 28 04 17 C3 30 07 02 00 0A FF   ; 01E20 data, read by 010bf 010d7 010e5 010b3 (+5)
  DE30  .byte 43 00 02 1A 43 08 04 19 43 10 04 19 43 18 04 19   ; 01E30 data, read by 010d7 010e5 010b3 0110d (+1)
  DE40  .byte 43 20 02 1A C3 38 00 0A C3 40 04 19 C3 28 04 19   ; 01E40 data, read by 010d7 010e5 010b3 0110d (+1)
  DE50  .byte C3 30 00 CA 01 00 00 DA 08 00 00 10 08 CB 00 08   ; 01E50 data, read by 010d7 010e5 010b3 0110d (+3)
  DE60  .byte DB 08 08 EB 10 10 CC 00 10 DC 08 10 EC 10 18 00   ; 01E60 data, read by 010bf 010e5 010b3 0110d
  DE70  .byte F8 18 DD 00 18 ED 08 18 FD 10 20 BD F8 20 CD 00   ; 01E70 data, read by 010e5 010b3 0110d 010bf
  DE80  .byte 20 DE 08 20 EE 10 28 BE F8 28 CE 00 00 D5 01 00   ; 01E80 data, read by 010b3 0110d 010bf 010e5 (+2)
  DE90  .byte 00 E5 08 00 F5 10 08 D6 00 08 E6 08 08 F6 10 10   ; 01E90 data, read by 010b3 0110d 010bf 010e5
  DEA0  .byte D7 00 10 E7 08 10 F7 10 18 D9 F8 18 D8 00 18 E8   ; 01EA0 data, read by 010bf 010e5 010b3 0110d
  DEB0  .byte 08 18 F8 10 20 B8 F8 20 C8 00 20 E9 08 20 F9 10   ; 01EB0 data, read by 010e5 010b3 0110d 010bf
  DEC0  .byte 28 B9 F8 28 C9 00 00 D0 01 00 00 E0 08 00 00 10   ; 01EC0 data, read by 010b3 0110d 010bf 010e5 (+2)
  DED0  .byte 08 D1 00 08 E1 08 08 F1 10 10 D2 00 10 E2 08 10   ; 01ED0 data, read by 010b3 0110d 010bf 010e5
  DEE0  .byte F2 10 18 C3 F8 18 D3 00 18 E3 08 18 00 10 20 C4   ; 01EE0 data, read by 010bf 010e5 010b3 0110d
  DEF0  .byte F8 20 D4 00 20 E4 08 20 F4 10 28 C5 F8 28 C6 00   ; 01EF0 data, read by 010e5 010b3 0110d 010bf
  DF00  .byte 00 10 01 00 00 20 08 08 11 00 08 21 08 00 10 01   ; 01F00 data, read by 010b3 0110d 010bf 01145 (+2)
  DF10  .byte 00 00 52 08 08 11 00 08 53 08 00 10 01 00 00 34   ; 01F10 data, read by 010e5 010b3 0110d 010bf (+2)
  DF20  .byte 08 08 11 00 08 35 08 00 10 02 00 00 20 08 08 11   ; 01F20 data, read by 010e5 010b3 0110d 010bf (+2)
  DF30  .byte 00 08 21 08 00 10 02 00 00 52 08 08 11 00 08 53   ; 01F30 data, read by 010e5 010b3 0110d 010bf (+2)
  DF40  .byte 08 00 10 02 00 00 34 08 08 11 00 08 35 08 00 26   ; 01F40 data, read by 010e5 010b3 0110d 010bf (+2)
  DF50  .byte 02 00 00 2C 08 08 1D 00 08 2D 08 00 30 00 00 00   ; 01F50 data, read by 01145 0114e 010e5 010b3 (+2)
  DF60  .byte 40 08 08 31 00 08 41 08 10 32 00 10 42 08 18 33   ; 01F60 data, read by 010bf 010e5 010b3 0110d
  DF70  .byte 00 18 43 08 00 38 00 00 00 48 08 08 39 00 08 49   ; 01F70 data, read by 010e5 010b3 0110d 010bf (+2)
  DF80  .byte 08 10 3A 00 10 4A 08 18 3B 00 18 4B 08 00 44 00   ; 01F80 data, read by 010e5 010b3 0110d 010bf (+2)
  DF90  .byte 00 00 54 08 08 45 00 08 55 08 10 46 00 10 56 08   ; 01F90 data, read by 010e5 010b3 0110d 010bf
  DFA0  .byte 18 47 00 18 57 08 00 8C 00 00 00 9C 08 08 8D 00   ; 01FA0 data, read by 010b3 0110d 010bf 010e5 (+2)
  DFB0  .byte 08 9D 08 10 8E 00 10 9E 08 18 8F 00 18 9F 08 00   ; 01FB0 data, read by 010b3 0110d 010bf 010e5
  DFC0  .byte 04 02 00 00 14 08 00 24 10 08 05 00 08 15 08 08   ; 01FC0 data, read by 010bf 01145 0114e 010e5 (+2)
  DFD0  .byte 25 10 00 01 01 00 00 01 08 00 01 10 00 01 18 00   ; 01FD0 data, read by 010bf 010e5 010b3 0110d (+2)
  DFE0  .byte 01 20 00 01 28 00 01 30 00 01 38 00 01 40 08 06   ; 01FE0 data, read by 010bf 010e5 010b3 0110d
  DFF0  .byte 00 08 06 08 08 06 10 08 06 18 08 06 20 08 06 28   ; 01FF0 data, read by 010e5 010b3 0110d 010bf
  E000  .byte 08 06 30 08 06 38 08 06 40 00 0B 02 00 00 1B 08   ; 02000 data, read by 010b3 0110d 010bf 010e5 (+2)
  E010  .byte 08 0C 00 08 1C 08 00 85 FF 03 00 00 86 03 08 00   ; 02010 data, read by 010b3 0110d 010bf 010e5 (+2)
  E020  .byte 85 83 10 08 88 03 00 08 87 03 08 08 88 83 10 10   ; 02020 data, read by 010bf 010d7 010e5 010b3 (+1)
  E030  .byte 85 43 00 10 86 43 08 10 85 C3 10 00 89 FF 03 00   ; 02030 data, read by 010bf 010d7 010e5 010b3 (+2)
  E040  .byte 00 96 C3 08 00 97 C3 10 08 8A 03 00 08 95 03 08   ; 02040 data, read by 010b3 0110d 010bf 010d7 (+1)
  E050  .byte 08 8A C3 10 10 97 03 00 10 96 03 08 10 89 C3 10   ; 02050 data, read by 010b3 0110d 010bf 010d7 (+1)
  E060  .byte 00 97 FF 43 00 00 96 43 08 00 89 83 10 08 8A 43   ; 02060 data, read by 010b3 0110d 010bf 01145 (+2)
  E070  .byte 00 08 95 43 08 08 8A 83 10 10 89 43 00 10 96 83   ; 02070 data, read by 010e5 010b3 0110d 010bf (+1)
  E080  .byte 08 10 97 83 10 00 F3 03 00 09 00 00 C0 03 00 F8   ; 02080 data, read by 010e5 010b3 0110d 010bf (+5)
  E090  .byte C1 00 F0 C2 00 F0 F0 08 E8 C0 08 E0 C1 08 D8 C2   ; 02090 data, read by 010bf 010e5 010b3 0110d
  E0A0  .byte 08 D8 F0 10 D0 C0 10 07 00 00 FB 03 00 F8 FB 04   ; 020A0 data, read by 010e5 010b3 0110d 010bf (+4)
  E0B0  .byte F0 FB 08 E8 FB 0C E0 FB 10 D8 FB 14 D0 FB 18 06   ; 020B0 data, read by 010b3 0110d 010bf 010e5 (+1)
  E0C0  .byte 00 00 B2 03 00 F8 B2 06 F0 B2 0C E8 B2 12 E0 B2   ; 020C0 data, read by 0105f 010b3 0110d 010bf (+3)
  E0D0  .byte 18 D8 B2 1E 05 00 00 B4 03 00 F8 B4 08 F0 B4 10   ; 020D0 data, read by 010e5 010b3 0110d 010bf (+4)
  E0E0  .byte E8 B4 18 E0 B4 20 06 00 00 B3 03 00 FA B3 08 F4   ; 020E0 data, read by 010b3 0110d 010bf 010e5 (+4)
  E0F0  .byte B3 10 EE B3 18 E8 B3 20 E2 B3 28 06 00 00 B7 03   ; 020F0 data, read by 010bf 010e5 010b3 0110d (+4)
  E100  .byte 00 FC B7 08 F8 B7 10 F4 B7 18 F0 B7 20 EC B7 28   ; 02100 data, read by 010e5 010b3 0110d 010bf
  E110  .byte 09 00 00 C7 03 00 00 BA 08 00 BB 10 F8 BC 10 F8   ; 02110 data, read by 0104b 0105f 010b3 0110d (+4)
  E120  .byte C7 18 F8 BA 20 F8 BB 28 F0 BC 28 F0 C7 30 07 00   ; 02120 data, read by 010bf 010e5 010b3 0110d (+2)
  E130  .byte 00 AC 03 00 00 8B 08 00 9B 10 FC AC 18 FC 8B 20   ; 02130 data, read by 010b3 0110d 010bf 01145 (+2)
  E140  .byte FC 9B 28 F8 AC 30 07 00 00 AB 03 00 00 AB 08 00   ; 02140 data, read by 010b3 0110d 010bf 010e5 (+4)
  E150  .byte AB 10 00 AB 18 00 AB 20 00 AB 28 00 AB 30 07 00   ; 02150 data, read by 010bf 010e5 010b3 0110d (+2)
  E160  .byte 00 AC 43 00 00 8B 08 00 9B 10 04 AC 18 04 8B 20   ; 02160 data, read by 010b3 0110d 010bf 01145 (+2)
  E170  .byte 04 9B 28 08 AC 30 09 00 00 C7 43 00 00 BA 08 00   ; 02170 data, read by 010b3 0110d 010bf 010e5 (+4)
  E180  .byte BB 10 08 BC 10 08 C7 18 08 BA 20 08 BB 28 10 BC   ; 02180 data, read by 010bf 010e5 010b3 0110d
  E190  .byte 28 10 C7 30 06 00 00 B7 43 00 04 B7 08 08 B7 10   ; 02190 data, read by 010e5 010b3 0110d 010bf (+4)
  E1A0  .byte 0C B7 18 10 B7 20 14 B7 28 06 00 00 B3 43 00 06   ; 021A0 data, read by 010b3 0110d 010bf 010e5 (+4)
  E1B0  .byte B3 08 0C B3 10 12 B3 18 18 B3 20 1E B3 28 05 00   ; 021B0 data, read by 010bf 010e5 010b3 0110d (+2)
  E1C0  .byte 00 B4 43 00 08 B4 08 10 B4 10 18 B4 18 20 B4 20   ; 021C0 data, read by 010b3 0110d 010bf 01145 (+2)
  E1D0  .byte 06 00 00 B2 43 00 08 B2 06 10 B2 0C 18 B2 12 20   ; 021D0 data, read by 0104b 0105f 010b3 0110d (+4)
  E1E0  .byte B2 18 28 B2 1E 07 00 00 FB 43 00 08 FB 04 10 FB   ; 021E0 data, read by 010bf 010e5 010b3 0110d (+4)
  E1F0  .byte 08 18 FB 0C 20 FB 10 28 FB 14 30 FB 18 09 00 00   ; 021F0 data, read by 010e5 010b3 0110d 010bf (+2)
  E200  .byte C0 43 00 08 C1 00 10 C2 00 10 F0 08 18 C0 08 20   ; 02200 data, read by 010bf 01145 0114e 010e5 (+2)
  E210  .byte C1 08 28 C2 08 28 F0 10 30 C0 10 00 82 FF 02 00   ; 02210 data, read by 010bf 010e5 010b3 0110d (+2)
  E220  .byte 00 92 02 08 00 A2 02 10 08 83 02 00 08 93 02 08   ; 02220 data, read by 010b3 0110d 010bf 010d7 (+1)
  E230  .byte 08 A3 02 10 00 80 FF 02 00 00 90 02 08 00 A0 02   ; 02230 data, read by 010b3 0110d 010bf 010d7 (+2)
  E240  .byte 10 08 81 02 00 08 91 02 08 08 A1 02 10 01 00 00   ; 02240 data, read by 010e5 010b3 0110d 010bf (+4)
  E250  .byte 05 0B 0C 0D 0E 0F 01 01 00 05 1B 1C 1D 1E 1F 01   ; 02250 data, read by 01262 01271 011f0 011f8 (+1)
  E260  .byte 02 00 05 1B 1C 1D 1E 1F 01 03 00 05 2B 2C 2D 2E   ; 02260 data, read by 011f8 0121e 01262 01271 (+1)
  E270  .byte 2F 00 01 00 00 04 67 EA EB EC 01 01 00 04 67 FA   ; 02270 data, read by 01271 011f0 011f8 0121e (+1)
  E280  .byte FB FC 00 01 00 00 02 CA CB 01 01 00 03 DA DB DC   ; 02280 data, read by 01271 011f0 011f8 0121e (+1)
  E290  .byte 00 01 00 00 02 67 BE 01 01 00 03 CD CE CF 00 01   ; 02290 data, read by 011f0 011f8 0121e 01262 (+1)
  E2A0  .byte 00 00 06 D4 D5 D6 D7 D5 D8 01 01 02 02 D2 E7 01   ; 022A0 data, read by 011f8 0121e 01262 01271 (+1)
  E2B0  .byte 02 02 02 D2 E7 00 02 00 00 02 62 72 02 00 01 02   ; 022B0 data, read by 011f8 0121e 01262 01271 (+1)
  E2C0  .byte 63 73 02 00 02 02 64 74 02 00 03 02 65 75 02 00   ; 022C0 data, read by 01271 011f0 011f8 0121e (+1)
  E2D0  .byte 04 02 66 76 00 02 00 00 03 81 91 A1 02 00 01 03   ; 022D0 data, read by 0121e 01262 01271 011f0 (+1)
  E2E0  .byte 82 92 A2 02 00 02 03 83 93 A3 02 00 FF 03 67 67   ; 022E0 data, read by 01271 011f0 011f8 0121e (+1)
  E2F0  .byte 67 02 00 03 03 67 67 67 00 02 00 00 03 67 94 67   ; 022F0 data, read by 01271 011f0 011f8 0121e (+1)
  E300  .byte 02 00 01 03 85 95 A5 02 00 02 03 86 96 A6 02 00   ; 02300 data, read by 011f0 011f8 0121e 01262 (+1)
  E310  .byte 03 03 87 97 A7 02 00 04 03 67 67 67 00 02 00 00   ; 02310 data, read by 0121e 01262 01271 011f0 (+1)
  E320  .byte 03 88 98 A8 02 00 01 03 89 99 A9 02 00 02 03 8A   ; 02320 data, read by 01262 01271 011f0 011f8 (+1)
  E330  .byte 9A AA 02 00 03 03 8B 9B AB 00 02 00 00 03 8C 9C   ; 02330 data, read by 01271 011f0 011f8 0121e (+1)
  E340  .byte AC 02 00 01 03 8D 9D AD 02 00 02 03 8E 9E AE 02   ; 02340 data, read by 01271 011f0 011f8 0121e (+1)
  E350  .byte 00 03 03 67 9F 67 02 00 FF 03 67 67 67 00 02 00   ; 02350 data, read by 011f8 0121e 01262 01271 (+1)
  E360  .byte 00 02 E2 F2 02 00 01 02 E2 F2 00 02 00 00 02 E4   ; 02360 data, read by 0121e 01262 01271 011f0 (+1)
  E370  .byte F4 02 00 01 02 E4 F4 00 01 00 00 04 E2 E3 E3 E2   ; 02370 data, read by 01271 011f0 011f8 0121e (+1)
  E380  .byte 01 01 00 04 F2 F3 F3 F2 00 01 00 00 04 E4 E5 E5   ; 02380 data, read by 011f0 011f8 0121e 01262 (+1)
  E390  .byte E4 01 01 00 04 F4 F3 F3 F4 00 01 00 00 06 E2 E3   ; 02390 data, read by 01271 011f0 011f8 0121e (+1)
  E3A0  .byte E3 E3 E3 E2 01 01 00 06 F2 F3 F3 F3 F3 F2 00 01   ; 023A0 data, read by 01271 011f0 011f8 0121e (+1)
  E3B0  .byte 00 00 06 E4 E5 E5 E5 E5 E4 01 01 00 06 F4 F3 F3   ; 023B0 data, read by 011f8 0121e 01262 01271 (+1)
  E3C0  .byte F3 F3 F4 00 57 0A 5F 3C 3D 3E 3F 57 12 5F 57 0A   ; 023C0 data, read by 01271 011f0 0138b 0139c (+1)
  E3D0  .byte 5E 68 69 6A 6B 57 1C 5E 78 00 00 7B 57 12 5E 61   ; 023D0 data, read by 013a0 0138b 0139c
  E3E0  .byte 60 61 60 61 60 61 60 61 60 6C 6D 00 6F 61 60 61   ; 023E0 data, read by 0138b
  E3F0  .byte 60 61 60 61 60 61 60 61 60 61 60 61 60 61 60 71   ; 023F0 data, read by 0138b
  E400  .byte 70 71 70 71 70 71 70 71 70 7C 7D 7E 7F 71 70 71   ; 02400 data, read by 0138b
  E410  .byte 70 71 70 71 70 71 70 71 70 71 70 71 70 71 70 5A   ; 02410 data, read by 0138b
  E420  .byte 57 20 A4 5A 57 20 E8 5A 57 08 00 57 08 A0 0F 0F   ; 02420 data, read by 0138b 0139c 013a0
  E430  .byte 8B 2E 57 04 0F 57 08 55 57 18 55 57 08 05 5A 57   ; 02430 data, read by 0138b 0139c 013a0
  E440  .byte 08 00 57 08 A0 57 08 00 57 08 AA 57 08 AA 0F 0F   ; 02440 data, read by 0139c 013a0 0138b
  E450  .byte 8B 2E 57 04 0F 57 10 55 5A 57 20 67 57 20 77 57   ; 02450 data, read by 0138b 0139c 013a0
  E460  .byte 40 67 5A 57 20 67 57 20 77 57 40 67 5A 57 40 67   ; 02460 data, read by 0139c 013a0 0138b
  E470  .byte 57 20 77 57 60 67 5A 57 20 79 57 20 77 57 20 18   ; 02470 data, read by 0138b 0139c 013a0
  E480  .byte 57 20 67 5A                                       ; 02480 data, read by 0138b 0139c 013a0

sub_B0_E484:                    ; from 02557
  E484  A4 9B     LDY $9B                       ; 02484 ×39267
  E486  F0 2B     BEQ loc_B0_E4B3               ; 02486 ×39267
  E488  88        DEY                           ; 02488 ×0
  E489  F0 29     BEQ $E4B4                     ; 02489 ×0
  E48B  20 97 DB  JSR sub_B0_DB97               ; 0248B ×0
  E48E  10 07     BPL $E497                     ; 0248E ×0
  E490  AD 18 02  LDA $0218                     ; 02490 ×0
  E493  C9 B0     CMP #$B0                      ; 02493 ×0
  E495  B0 13     BCS $E4AA                     ; 02495 ×0
  E497  AD 18 02  LDA $0218                     ; 02497 ×0
  E49A  38        SEC                           ; 0249A ×0
  E49B  ED A6 03  SBC $03A6                     ; 0249B ×0
  E49E  8D 18 02  STA $0218                     ; 0249E ×0
  E4A1  20 21 E5  JSR sub_B0_E521               ; 024A1 ×0
  E4A4  20 09 E5  JSR sub_B0_E509               ; 024A4 ×0
  E4A7  4C E0 E4  JMP $E4E0                     ; 024A7 ×0
  E4AA  A9 F4     LDA #$F4                      ; 024AA ×0
  E4AC  8D 18 02  STA $0218                     ; 024AC ×0
  E4AF  A9 00     LDA #$00                      ; 024AF ×0
  E4B1  85 9B     STA $9B                       ; 024B1 ×0

loc_B0_E4B3:                    ; from 02486
  E4B3  60        RTS                           ; 024B3 ×39267
  E4B4  A5 DF     LDA $DF                       ; 024B4 ×0
  E4B6  D0 FB     BNE loc_B0_E4B3               ; 024B6 ×0
  E4B8  A9 04     LDA #$04                      ; 024B8 ×0
  E4BA  20 0D F8  JSR sub_B0_F80D               ; 024BA ×0
  E4BD  A9 04     LDA #$04                      ; 024BD ×0
  E4BF  8D A6 03  STA $03A6                     ; 024BF ×0
  E4C2  A9 13     LDA #$13                      ; 024C2 ×0
  E4C4  8D A4 03  STA $03A4                     ; 024C4 ×0
  E4C7  A9 00     LDA #$00                      ; 024C7 ×0
  E4C9  8D A5 03  STA $03A5                     ; 024C9 ×0
  E4CC  20 21 E5  JSR sub_B0_E521               ; 024CC ×0
  E4CF  A0 02     LDY #$02                      ; 024CF ×0
  E4D1  B9 DD E4  LDA $E4DD,Y                   ; 024D1 ×0
  E4D4  99 18 02  STA $0218,Y                   ; 024D4 ×0
  E4D7  88        DEY                           ; 024D7 ×0
  E4D8  10 F7     BPL $E4D1                     ; 024D8 ×0
  E4DA  E6 9B     INC $9B                       ; 024DA ×0
  E4DC  60        RTS                           ; 024DC ×0
  E4DD  .byte B0 02 03                                          ; 024DD
  E4E0  20 1F E9  JSR sub_B0_E91F               ; 024E0 ×0
  E4E3  A9 08     LDA #$08                      ; 024E3 ×0
  E4E5  8D C8 03  STA $03C8                     ; 024E5 ×0
  E4E8  8D C9 03  STA $03C9                     ; 024E8 ×0
  E4EB  AD 18 02  LDA $0218                     ; 024EB ×0
  E4EE  8D CA 03  STA $03CA                     ; 024EE ×0
  E4F1  AD 1B 02  LDA $021B                     ; 024F1 ×0
  E4F4  8D CB 03  STA $03CB                     ; 024F4 ×0
  E4F7  20 7E CC  JSR sub_B0_CC7E               ; 024F7 ×0
  E4FA  B0 08     BCS $E504                     ; 024FA ×0
  E4FC  20 03 E9  JSR sub_B0_E903               ; 024FC ×0
  E4FF  20 7E CC  JSR sub_B0_CC7E               ; 024FF ×0
  E502  90 AF     BCC loc_B0_E4B3               ; 02502 ×0
  E504  EE 3F 03  INC $033F                     ; 02504 ×0
  E507  D0 A1     BNE $E4AA                     ; 02507 ×0

sub_B0_E509:                    ; from 024a4
  E509  A5 09     LDA $09                       ; 02509 ×0
  E50B  29 03     AND #$03                      ; 0250B ×0
  E50D  D0 A4     BNE loc_B0_E4B3               ; 0250D ×0
  E50F  E6 9D     INC $9D                       ; 0250F ×0
  E511  A5 9D     LDA $9D                       ; 02511 ×0
  E513  29 03     AND #$03                      ; 02513 ×0
  E515  A8        TAY                           ; 02515 ×0
  E516  B9 1D E5  LDA $E51D,Y                   ; 02516 ×0
  E519  8D 19 02  STA $0219                     ; 02519 ×0
  E51C  60        RTS                           ; 0251C ×0
  E51D  .byte 02 36 13 37                                       ; 0251D

sub_B0_E521:                    ; from 024a1 024cc
  E521  A6 9C     LDX $9C                       ; 02521 ×0
  E523  20 16 CC  JSR sub_B0_CC16               ; 02523 ×0
  E526  18        CLC                           ; 02526 ×0
  E527  69 08     ADC #$08                      ; 02527 ×0
  E529  8D 1B 02  STA $021B                     ; 02529 ×0
  E52C  60        RTS                           ; 0252C ×0

loc_B0_E52D:                    ; from 029dd 02534 02c3e
  E52D  E6 CF     INC $CF                       ; 0252D ×246
  E52F  4C 06 C9  JMP loc_B0_C906               ; 0252F ×246

jt_B0_E532:                    ; from 004e0
  E532  A6 CF     LDX $CF                       ; 02532 ×56347
  E534  F0 F7     BEQ loc_B0_E52D               ; 02534 ×56347
  E536  A5 0F     LDA $0F                       ; 02536 ×56261
  E538  F0 03     BEQ loc_B0_E53D               ; 02538 ×56261
  E53A  4C AB DC  JMP loc_B0_DCAB               ; 0253A ×16994

loc_B0_E53D:                    ; from 02538
  E53D  20 07 D8  JSR sub_B0_D807               ; 0253D ×39267
  E540  20 11 DA  JSR sub_B0_DA11               ; 02540 ×39267
  E543  B0 03     BCS loc_B0_E548               ; 02543 ×39267
  E545  20 B6 DB  JSR sub_B0_DBB6               ; 02545 ×19833

loc_B0_E548:                    ; from 02543
  E548  20 1D E6  JSR sub_B0_E61D               ; 02548 ×39267
  E54B  20 BA E7  JSR sub_B0_E7BA               ; 0254B ×39267
  E54E  20 9F E7  JSR sub_B0_E79F               ; 0254E ×39267
  E551  20 B0 E5  JSR sub_B0_E5B0               ; 02551 ×39267
  E554  20 38 E8  JSR sub_B0_E838               ; 02554 ×39267
  E557  20 84 E4  JSR sub_B0_E484               ; 02557 ×39267
  E55A  A5 52     LDA $52                       ; 0255A ×39267
  E55C  D0 23     BNE loc_B0_E581               ; 0255C ×39267
  E55E  A2 20     LDX #$20                      ; 0255E ×6544
  E560  A0 02     LDY #$02                      ; 02560 ×6544

sub_B0_E562:                    ; from 0257e
  E562  BD 00 05  LDA $0500,X                   ; 02562 ×13088
  E565  F0 11     BEQ loc_B0_E578               ; 02565 ×13088
  E567  BD 04 05  LDA $0504,X                   ; 02567 ×389
  E56A  49 01     EOR #$01                      ; 0256A ×389
  E56C  9D 04 05  STA $0504,X                   ; 0256C ×389
  E56F  A9 FF     LDA #$FF                      ; 0256F ×389
  E571  84 FA     STY $FA                       ; 02571 ×389
  E573  20 26 ED  JSR sub_B0_ED26               ; 02573 ×389
  E576  A4 FA     LDY $FA                       ; 02576 ×389

loc_B0_E578:                    ; from 02565
  E578  88        DEY                           ; 02578 ×13088
  E579  F0 06     BEQ loc_B0_E581               ; 02579 ×13088
  E57B  20 EC C9  JSR sub_B0_C9EC               ; 0257B ×6544
  E57E  20 62 E5  JSR sub_B0_E562               ; 0257E ×6544

loc_B0_E581:                    ; from 0255c 02579
  E581  A5 52     LDA $52                       ; 02581 ×45811
  E583  C9 05     CMP #$05                      ; 02583 ×45811
  E585  D0 0C     BNE loc_B0_E593               ; 02585 ×45811
  E587  A2 10     LDX #$10                      ; 02587 ×6542

loc_B0_E589:                    ; from 02591
  E589  20 9A E5  JSR sub_B0_E59A               ; 02589 ×13084
  E58C  B0 06     BCS loc_B0_E594               ; 0258C ×13084
  E58E  20 F2 C9  JSR sub_B0_C9F2               ; 0258E ×13082
  E591  10 F6     BPL loc_B0_E589               ; 02591 ×13082

loc_B0_E593:                    ; from 02585
  E593  60        RTS                           ; 02593 ×45809

loc_B0_E594:                    ; from 0258c
  E594  A9 00     LDA #$00                      ; 02594 ×2
  E596  A0 67     LDY #$67                      ; 02596 ×2
  E598  D0 67     BNE loc_B0_E601               ; 02598 ×2

sub_B0_E59A:                    ; from 0307a 02c7e 02589
  E59A  BD 00 05  LDA $0500,X                   ; 0259A ×105186
  E59D  F0 0D     BEQ loc_B0_E5AC               ; 0259D ×105186
  E59F  20 16 CC  JSR sub_B0_CC16               ; 0259F ×61615
  E5A2  90 08     BCC loc_B0_E5AC               ; 025A2 ×61615
  E5A4  C9 20     CMP #$20                      ; 025A4 ×6886
  E5A6  90 04     BCC loc_B0_E5AC               ; 025A6 ×6886
  E5A8  C9 D0     CMP #$D0                      ; 025A8 ×6746
  E5AA  90 02     BCC loc_B0_E5AE               ; 025AA ×6746

loc_B0_E5AC:                    ; from 025a2 0259d 025a6
  E5AC  18        CLC                           ; 025AC ×104944
  E5AD  60        RTS                           ; 025AD ×104944

loc_B0_E5AE:                    ; from 025aa
  E5AE  38        SEC                           ; 025AE ×242
  E5AF  60        RTS                           ; 025AF ×242

sub_B0_E5B0:                    ; from 02551
  E5B0  A9 00     LDA #$00                      ; 025B0 ×39267
  E5B2  85 6C     STA $6C                       ; 025B2 ×39267
  E5B4  A5 CA     LDA $CA                       ; 025B4 ×39267
  E5B6  C9 02     CMP #$02                      ; 025B6 ×39267
  E5B8  F0 62     BEQ loc_B0_E61C               ; 025B8 ×39267
  E5BA  A5 6A     LDA $6A                       ; 025BA ×36157
  E5BC  C9 E0     CMP #$E0                      ; 025BC ×36157
  E5BE  90 58     BCC loc_B0_E618               ; 025BE ×36157
  E5C0  C9 E8     CMP #$E8                      ; 025C0 ×591
  E5C2  B0 54     BCS loc_B0_E618               ; 025C2 ×591
  E5C4  A9 01     LDA #$01                      ; 025C4 ×136
  E5C6  85 6C     STA $6C                       ; 025C6 ×136
  E5C8  A2 00     LDX #$00                      ; 025C8 ×136
  E5CA  BD 00 05  LDA $0500,X                   ; 025CA ×136
  E5CD  F0 02     BEQ loc_B0_E5D1               ; 025CD ×136
  E5CF  A2 10     LDX #$10                      ; 025CF ×119

loc_B0_E5D1:                    ; from 025cd
  E5D1  A5 98     LDA $98                       ; 025D1 ×136
  E5D3  D0 47     BNE loc_B0_E61C               ; 025D3 ×136
  E5D5  E6 98     INC $98                       ; 025D5 ×17
  E5D7  A5 6A     LDA $6A                       ; 025D7 ×17
  E5D9  29 F8     AND #$F8                      ; 025D9 ×17
  E5DB  9D 01 05  STA $0501,X                   ; 025DB ×17
  E5DE  18        CLC                           ; 025DE ×17
  E5DF  69 08     ADC #$08                      ; 025DF ×17
  E5E1  9D 21 05  STA $0521,X                   ; 025E1 ×17
  E5E4  20 6E F0  JSR sub_B0_F06E               ; 025E4 ×17
  E5E7  9D 22 05  STA $0522,X                   ; 025E7 ×17
  E5EA  A9 C0     LDA #$C0                      ; 025EA ×17
  E5EC  9D 03 05  STA $0503,X                   ; 025EC ×17
  E5EF  A9 B0     LDA #$B0                      ; 025EF ×17
  E5F1  9D 23 05  STA $0523,X                   ; 025F1 ×17
  E5F4  A9 01     LDA #$01                      ; 025F4 ×17
  E5F6  9D 04 05  STA $0504,X                   ; 025F6 ×17
  E5F9  A9 02     LDA #$02                      ; 025F9 ×17
  E5FB  9D 24 05  STA $0524,X                   ; 025FB ×17
  E5FE  A9 FF     LDA #$FF                      ; 025FE ×17
  E600  A8        TAY                           ; 02600 ×17

loc_B0_E601:                    ; from 02598
  E601  9D 00 05  STA $0500,X                   ; 02601 ×19
  E604  9D 20 05  STA $0520,X                   ; 02604 ×19
  E607  98        TYA                           ; 02607 ×19
  E608  48        PHA                           ; 02608 ×19
  E609  86 F9     STX $F9                       ; 02609 ×19
  E60B  20 26 ED  JSR sub_B0_ED26               ; 0260B ×19
  E60E  A5 F9     LDA $F9                       ; 0260E ×19
  E610  18        CLC                           ; 02610 ×19
  E611  69 20     ADC #$20                      ; 02611 ×19
  E613  AA        TAX                           ; 02613 ×19
  E614  68        PLA                           ; 02614 ×19
  E615  4C 26 ED  JMP sub_B0_ED26               ; 02615 ×19

loc_B0_E618:                    ; from 025be 025c2
  E618  A9 00     LDA #$00                      ; 02618 ×36021
  E61A  85 98     STA $98                       ; 0261A ×36021

loc_B0_E61C:                    ; from 025b8 025d3
  E61C  60        RTS                           ; 0261C ×39250

sub_B0_E61D:                    ; from 02548
  E61D  A5 74     LDA $74                       ; 0261D ×39267
  E61F  C9 40     CMP #$40                      ; 0261F ×39267
  E621  B0 0E     BCS loc_B0_E631               ; 02621 ×39267
  E623  A5 90     LDA $90                       ; 02623 ×39267
  E625  D0 06     BNE loc_B0_E62D               ; 02625 ×39267
  E627  A0 20     LDY #$20                      ; 02627 ×4407
  E629  A2 40     LDX #$40                      ; 02629 ×4407
  E62B  D0 09     BNE loc_B0_E636               ; 0262B ×4407

loc_B0_E62D:                    ; from 02625
  E62D  A5 B0     LDA $B0                       ; 0262D ×34860
  E62F  F0 01     BEQ loc_B0_E632               ; 0262F ×34860

loc_B0_E631:                    ; from 02657
  E631  60        RTS                           ; 02631 ×36167

loc_B0_E632:                    ; from 0262f
  E632  A0 40     LDY #$40                      ; 02632 ×28424
  E634  A2 20     LDX #$20                      ; 02634 ×28424

loc_B0_E636:                    ; from 0262b
  E636  84 8C     STY $8C                       ; 02636 ×32831
  E638  A5 CA     LDA $CA                       ; 02638 ×32831
  E63A  F0 10     BEQ loc_B0_E64C               ; 0263A ×32831
  E63C  4A        LSR A                         ; 0263C ×10772
  E63D  B0 0D     BCS loc_B0_E64C               ; 0263D ×10772
  E63F  60        RTS                           ; 0263F ×2919
  E640  .byte A5 6A C9 F0 D0 EB A9 00 85 77 F0 13               ; 02640

loc_B0_E64C:                    ; from 0263a 0263d
  E64C  20 B0 E6  JSR sub_B0_E6B0               ; 0264C ×29912
  E64F  B5 70     LDA $70,X                     ; 0264F ×29912
  E651  F0 06     BEQ loc_B0_E659               ; 02651 ×29912
  E653  B5 74     LDA $74,X                     ; 02653 ×29818
  E655  C5 7B     CMP $7B                       ; 02655 ×29818
  E657  B0 D8     BCS loc_B0_E631               ; 02657 ×29818

loc_B0_E659:                    ; from 02651
  E659  E6 6D     INC $6D                       ; 02659 ×181
  E65B  A9 00     LDA #$00                      ; 0265B ×181
  E65D  F0 02     BEQ loc_B0_E661               ; 0265D ×181
  E65F  A9 01     LDA #$01                      ; 0265F inferred, not run

loc_B0_E661:                    ; from 0265d
  E661  85 78     STA $78                       ; 02661 ×181
  E663  A6 8C     LDX $8C                       ; 02663 ×181
  E665  A0 00     LDY #$00                      ; 02665 ×181

loc_B0_E667:                    ; from 02675
  E667  B9 A0 E6  LDA $E6A0,Y                   ; 02667 ×1448
  E66A  95 70     STA $70,X                     ; 0266A ×1448
  E66C  B9 A8 E6  LDA $E6A8,Y                   ; 0266C ×1448
  E66F  95 80     STA $80,X                     ; 0266F ×1448
  E671  E8        INX                           ; 02671 ×1448
  E672  C8        INY                           ; 02672 ×1448
  E673  C0 08     CPY #$08                      ; 02673 ×1448
  E675  90 F0     BCC loc_B0_E667               ; 02675 ×1448
  E677  A6 8C     LDX $8C                       ; 02677 ×181
  E679  A5 78     LDA $78                       ; 02679 ×181
  E67B  F0 08     BEQ loc_B0_E685               ; 0267B ×181
  E67D  A9 00     LDA #$00                      ; 0267D inferred, not run
  E67F  95 74     STA $74,X                     ; 0267F inferred, not run
  E681  A9 0C     LDA #$0C                      ; 02681 inferred, not run
  E683  95 84     STA $84,X                     ; 02683 inferred, not run

loc_B0_E685:                    ; from 0267b
  E685  A5 77     LDA $77                       ; 02685 ×181
  E687  F0 0A     BEQ loc_B0_E693               ; 02687 ×181
  E689  A5 68     LDA $68                       ; 02689 ×22
  E68B  F0 06     BEQ loc_B0_E693               ; 0268B ×22
  E68D  A9 FE     LDA #$FE                      ; 0268D ×4
  E68F  95 71     STA $71,X                     ; 0268F ×4
  E691  95 81     STA $81,X                     ; 02691 ×4

loc_B0_E693:                    ; from 02687 0268b
  E693  E0 20     CPX #$20                      ; 02693 ×181
  E695  F0 08     BEQ loc_B0_E69F               ; 02695 ×181
  E697  A9 D8     LDA #$D8                      ; 02697 ×72
  E699  95 72     STA $72,X                     ; 02699 ×72
  E69B  A9 44     LDA #$44                      ; 0269B ×72
  E69D  95 82     STA $82,X                     ; 0269D ×72

loc_B0_E69F:                    ; from 02695
  E69F  60        RTS                           ; 0269F ×181
  E6A0  .byte 01 FF B0 78 F3 00 0C 0A 01 FF 20 68 FF 00 0E 09   ; 026A0 data, read by 02667 0266c

sub_B0_E6B0:                    ; from 02a0b 0264c 02cd5
  E6B0  20 C9 E6  JSR sub_B0_E6C9               ; 026B0 ×76188
  E6B3  85 77     STA $77                       ; 026B3 ×76188
  E6B5  A5 64     LDA $64                       ; 026B5 ×76188
  E6B7  0A        ASL A                         ; 026B7 ×76188
  E6B8  0A        ASL A                         ; 026B8 ×76188
  E6B9  20 E9 F7  JSR sub_B0_F7E9               ; 026B9 ×76188
  E6BC  65 77     ADC $77                       ; 026BC ×76188
  E6BE  A8        TAY                           ; 026BE ×76188
  E6BF  B9 DF E6  LDA $E6DF,Y                   ; 026BF ×76188
  E6C2  85 7B     STA $7B                       ; 026C2 ×76188
  E6C4  29 03     AND #$03                      ; 026C4 ×76188
  E6C6  85 77     STA $77                       ; 026C6 ×76188
  E6C8  60        RTS                           ; 026C8 ×76188

sub_B0_E6C9:                    ; from 026b0 02fdc
  E6C9  A5 6D     LDA $6D                       ; 026C9 ×99552
  E6CB  29 0F     AND #$0F                      ; 026CB ×99552
  E6CD  85 77     STA $77                       ; 026CD ×99552
  E6CF  A4 66     LDY $66                       ; 026CF ×99552
  E6D1  88        DEY                           ; 026D1 ×99552
  E6D2  C0 03     CPY #$03                      ; 026D2 ×99552
  E6D4  90 02     BCC loc_B0_E6D8               ; 026D4 ×99552
  E6D6  A0 03     LDY #$03                      ; 026D6 ×37864

loc_B0_E6D8:                    ; from 026d4
  E6D8  98        TYA                           ; 026D8 ×99552
  E6D9  20 E9 F7  JSR sub_B0_F7E9               ; 026D9 ×99552
  E6DC  65 77     ADC $77                       ; 026DC ×99552
  E6DE  60        RTS                           ; 026DE ×99552
  E6DF  .byte 70 40 70 20 70 11 10 70 20 30 50 60 30            ; 026DF data, read by 026bf
  E6EC  .byte 20 70 10                                          ; 026EC
  E6EF  .byte 90 70 71 A0 70 60 90 70                           ; 026EF data, read by 026bf
  E6F7  .byte 61 A0 60 60 08 E8 11 80 A0 61 60 08 E8 11 A0 60   ; 026F7
  E707  .byte 60 A1 60 B0 50 09 E8 10 B1 50 50 09 E8 10 B1 40   ; 02707
  E717  .byte B0 41 C0 08 E9 10 B0 40                           ; 02717
  E71F  .byte 80 A0 68 80 68 90 50 60 B0 A0                     ; 0271F data, read by 026bf
  E729  .byte 68 99 98 60 B0 C0 80 A0 B8 99 98 C0 99 50 C0 C8   ; 02729
  E739  .byte 68 99 E7 60 B0 C8 80 68 99 E7 98 D0 C0 68 99 C0   ; 02739
  E749  .byte D0 68 99 E7 B0 D0                                 ; 02749
  E74F  .byte 80 68 99 E7 98 68 99 E7 80 68 D0 99 D0 68 99 E7   ; 0274F data, read by 026bf
  E75F  .byte D0 80 B8 80 D0 90 D0 80 C8 C0 90 C8 90 D0 A0 88   ; 0275F
  E76F  .byte B0 C0 B0 B0 C8 B0 B8 C0 B0 B0 C8 B0 B8 C0 B0 B8   ; 0276F
  E77F  .byte C8 C8 C8 D0 C8 C8 C8 D0 C8 C8 C8 D0 C8 C8 C8 D0   ; 0277F
  E78F  .byte C8 C8 C8 D0 C8 C8 D0 D0 C8 D0 D0 C8 D0 D0 C8 D0   ; 0278F data, read by 026bf

sub_B0_E79F:                    ; from 0254e
  E79F  A5 09     LDA $09                       ; 0279F ×39267
  E7A1  29 07     AND #$07                      ; 027A1 ×39267
  E7A3  D0 14     BNE loc_B0_E7B9               ; 027A3 ×39267
  E7A5  A0 04     LDY #$04                      ; 027A5 ×4916
  E7A7  A2 20     LDX #$20                      ; 027A7 ×4916

loc_B0_E7A9:                    ; from 027b7
  E7A9  B5 70     LDA $70,X                     ; 027A9 ×19664
  E7AB  F0 06     BEQ loc_B0_E7B3               ; 027AB ×19664
  E7AD  B5 76     LDA $76,X                     ; 027AD ×11168
  E7AF  49 01     EOR #$01                      ; 027AF ×11168
  E7B1  95 76     STA $76,X                     ; 027B1 ×11168

loc_B0_E7B3:                    ; from 027ab
  E7B3  20 EC C9  JSR sub_B0_C9EC               ; 027B3 ×19664
  E7B6  88        DEY                           ; 027B6 ×19664
  E7B7  D0 F0     BNE loc_B0_E7A9               ; 027B7 ×19664

loc_B0_E7B9:                    ; from 027a3
  E7B9  60        RTS                           ; 027B9 ×39267

sub_B0_E7BA:                    ; from 0254b
  E7BA  A5 CA     LDA $CA                       ; 027BA ×39267
  E7BC  25 CE     AND $CE                       ; 027BC ×39267
  E7BE  A8        TAY                           ; 027BE ×39267
  E7BF  B9 E5 E7  LDA $E7E5,Y                   ; 027BF ×39267
  E7C2  18        CLC                           ; 027C2 ×39267
  E7C3  65 9A     ADC $9A                       ; 027C3 ×39267
  E7C5  85 9A     STA $9A                       ; 027C5 ×39267
  E7C7  90 62     BCC loc_B0_E82B               ; 027C7 ×39267
  E7C9  B9 E8 E7  LDA $E7E8,Y                   ; 027C9 ×18290
  E7CC  85 77     STA $77                       ; 027CC ×18290
  E7CE  A0 03     LDY #$03                      ; 027CE ×18290
  E7D0  A2 20     LDX #$20                      ; 027D0 ×18290

loc_B0_E7D2:                    ; from 027dd
  E7D2  84 FA     STY $FA                       ; 027D2 ×73160
  E7D4  20 EB E7  JSR sub_B0_E7EB               ; 027D4 ×73160
  E7D7  A4 FA     LDY $FA                       ; 027D7 ×73160
  E7D9  20 EC C9  JSR sub_B0_C9EC               ; 027D9 ×73160
  E7DC  88        DEY                           ; 027DC ×73160
  E7DD  10 F3     BPL loc_B0_E7D2               ; 027DD ×73160
  E7DF  20 BC E9  JSR sub_B0_E9BC               ; 027DF ×18290
  E7E2  4C 7E E9  JMP loc_B0_E97E               ; 027E2 ×18290
  E7E5  .byte 5F B0 94 FF FE 01                                 ; 027E5 data, read by 027bf 027c9

sub_B0_E7EB:                    ; from 027d4
  E7EB  B5 70     LDA $70,X                     ; 027EB ×73160
  E7ED  F0 3C     BEQ loc_B0_E82B               ; 027ED ×73160
  E7EF  B5 74     LDA $74,X                     ; 027EF ×41333
  E7F1  18        CLC                           ; 027F1 ×41333
  E7F2  65 77     ADC $77                       ; 027F2 ×41333
  E7F4  95 74     STA $74,X                     ; 027F4 ×41333
  E7F6  A5 77     LDA $77                       ; 027F6 ×41333
  E7F8  30 04     BMI loc_B0_E7FE               ; 027F8 ×41333
  E7FA  90 2F     BCC loc_B0_E82B               ; 027FA ×2448
  E7FC  B0 0C     BCS loc_B0_E80A               ; 027FC ×8

loc_B0_E7FE:                    ; from 027f8
  E7FE  B0 2B     BCS loc_B0_E82B               ; 027FE ×38885
  E800  20 2C E8  JSR sub_B0_E82C               ; 02800 ×29
  E803  8A        TXA                           ; 02803 ×29
  E804  29 10     AND #$10                      ; 02804 ×29
  E806  D0 1B     BNE sub_B0_E823               ; 02806 ×29
  E808  F0 0A     BEQ loc_B0_E814               ; 02808 ×29

loc_B0_E80A:                    ; from 027fc
  E80A  20 2C E8  JSR sub_B0_E82C               ; 0280A ×8
  E80D  8A        TXA                           ; 0280D ×8
  E80E  C6 6D     DEC $6D                       ; 0280E ×8
  E810  29 10     AND #$10                      ; 02810 ×8
  E812  F0 0F     BEQ sub_B0_E823               ; 02812 ×8

loc_B0_E814:                    ; from 02808
  E814  B5 71     LDA $71,X                     ; 02814 ×37
  E816  C9 FE     CMP #$FE                      ; 02816 ×37
  E818  D0 00     BNE $E81A                     ; 02818 ×37
  E81A  A9 00     LDA #$00                      ; 0281A ×37
  E81C  20 23 E8  JSR sub_B0_E823               ; 0281C ×37
  E81F  8A        TXA                           ; 0281F ×37
  E820  49 10     EOR #$10                      ; 02820 ×37
  E822  AA        TAX                           ; 02822 ×37

sub_B0_E823:                    ; from 0281c
  E823  A9 00     LDA #$00                      ; 02823 ×74
  E825  95 70     STA $70,X                     ; 02825 ×74
  E827  A9 01     LDA #$01                      ; 02827 ×74
  E829  95 75     STA $75,X                     ; 02829 ×74

loc_B0_E82B:                    ; from 027fe 027ed 027c7 027fa
  E82B  60        RTS                           ; 0282B ×94174

sub_B0_E82C:                    ; from 02800 0280a
  E82C  B5 71     LDA $71,X                     ; 0282C ×37
  E82E  C9 FE     CMP #$FE                      ; 0282E ×37
  E830  D0 05     BNE loc_B0_E837               ; 02830 ×37
  E832  A9 00     LDA #$00                      ; 02832 ×2
  E834  8D FF 03  STA $03FF                     ; 02834 ×2

loc_B0_E837:                    ; from 02830
  E837  60        RTS                           ; 02837 ×37

sub_B0_E838:                    ; from 02554
  E838  A9 02     LDA #$02                      ; 02838 ×39267
  E83A  85 7B     STA $7B                       ; 0283A ×39267
  E83C  20 1F E9  JSR sub_B0_E91F               ; 0283C ×39267
  E83F  4C 45 E8  JMP loc_B0_E845               ; 0283F ×39267

loc_B0_E842:                    ; from 028e6
  E842  20 03 E9  JSR sub_B0_E903               ; 02842 ×39233

loc_B0_E845:                    ; from 0283f
  E845  A0 02     LDY #$02                      ; 02845 ×78500
  E847  A2 20     LDX #$20                      ; 02847 ×78500

loc_B0_E849:                    ; from 02895
  E849  BD 00 05  LDA $0500,X                   ; 02849 ×157000
  E84C  F0 41     BEQ loc_B0_E88F               ; 0284C ×157000
  E84E  20 2E E9  JSR sub_B0_E92E               ; 0284E ×4680
  E851  B0 3C     BCS loc_B0_E88F               ; 02851 ×4680
  E853  A5 DF     LDA $DF                       ; 02853 ×3854
  E855  F0 33     BEQ loc_B0_E88A               ; 02855 ×3854
  E857  20 8F CC  JSR sub_B0_CC8F               ; 02857 ×3568
  E85A  90 33     BCC loc_B0_E88F               ; 0285A ×3568
  E85C  A9 01     LDA #$01                      ; 0285C ×0
  E85E  85 DB     STA $DB                       ; 0285E ×0
  E860  AD 43 03  LDA $0343                     ; 02860 ×0
  E863  4A        LSR A                         ; 02863 ×0
  E864  B0 04     BCS $E86A                     ; 02864 ×0
  E866  A9 03     LDA #$03                      ; 02866 ×0
  E868  D0 02     BNE $E86C                     ; 02868 ×0
  E86A  A9 07     LDA #$07                      ; 0286A ×0
  E86C  CD 42 03  CMP $0342                     ; 0286C ×0
  E86F  D0 19     BNE loc_B0_E88A               ; 0286F ×0
  E871  AD 18 02  LDA $0218                     ; 02871 ×0
  E874  C9 F4     CMP #$F4                      ; 02874 ×0
  E876  D0 12     BNE loc_B0_E88A               ; 02876 ×0
  E878  A5 CA     LDA $CA                       ; 02878 ×0
  E87A  C9 02     CMP #$02                      ; 0287A ×0
  E87C  D0 0C     BNE loc_B0_E88A               ; 0287C ×0
  E87E  A5 D0     LDA $D0                       ; 0287E ×0
  E880  05 9B     ORA $9B                       ; 02880 ×0
  E882  D0 06     BNE loc_B0_E88A               ; 02882 ×0
  E884  A9 01     LDA #$01                      ; 02884 ×0
  E886  85 9B     STA $9B                       ; 02886 ×0
  E888  86 9C     STX $9C                       ; 02888 ×0

loc_B0_E88A:                    ; from 02855
  E88A  20 7E CC  JSR sub_B0_CC7E               ; 0288A ×286
  E88D  B0 6F     BCS loc_B0_E8FE               ; 0288D ×286

loc_B0_E88F:                    ; from 0284c 0285a 02851
  E88F  88        DEY                           ; 0288F ×157000
  E890  F0 05     BEQ loc_B0_E897               ; 02890 ×157000
  E892  20 EC C9  JSR sub_B0_C9EC               ; 02892 ×78500
  E895  D0 B2     BNE loc_B0_E849               ; 02895 ×78500

loc_B0_E897:                    ; from 02890
  E897  A9 02     LDA #$02                      ; 02897 ×78500
  E899  85 79     STA $79                       ; 02899 ×78500
  E89B  A0 03     LDY #$03                      ; 0289B ×78500

loc_B0_E89D:                    ; from 028a4
  E89D  B9 7A E9  LDA $E97A,Y                   ; 0289D ×314000
  E8A0  99 8C 00  STA $008C,Y                   ; 028A0 ×314000
  E8A3  88        DEY                           ; 028A3 ×314000
  E8A4  10 F7     BPL loc_B0_E89D               ; 028A4 ×314000
  E8A6  A2 20     LDX #$20                      ; 028A6 ×78500

loc_B0_E8A8:                    ; from 028e0
  E8A8  B5 75     LDA $75,X                     ; 028A8 ×156933
  E8AA  D0 2B     BNE loc_B0_E8D7               ; 028AA ×156933
  E8AC  A0 36     LDY #$36                      ; 028AC ×143898
  E8AE  B5 71     LDA $71,X                     ; 028AE ×143898
  E8B0  C9 FF     CMP #$FF                      ; 028B0 ×143898
  E8B2  F0 02     BEQ loc_B0_E8B6               ; 028B2 ×143898
  E8B4  A0 26     LDY #$26                      ; 028B4 ×55228

loc_B0_E8B6:                    ; from 028b2
  E8B6  84 8E     STY $8E                       ; 028B6 ×143898
  E8B8  20 69 E9  JSR sub_B0_E969               ; 028B8 ×143898
  E8BB  A5 DF     LDA $DF                       ; 028BB ×143898
  E8BD  F0 13     BEQ loc_B0_E8D2               ; 028BD ×143898
  E8BF  20 8F CC  JSR sub_B0_CC8F               ; 028BF ×66144
  E8C2  90 13     BCC loc_B0_E8D7               ; 028C2 ×66144
  E8C4  A9 00     LDA #$00                      ; 028C4 ×2868
  E8C6  E0 20     CPX #$20                      ; 028C6 ×2868
  E8C8  F0 03     BEQ loc_B0_E8CD               ; 028C8 ×2868
  E8CA  18        CLC                           ; 028CA ×319
  E8CB  69 01     ADC #$01                      ; 028CB ×319

loc_B0_E8CD:                    ; from 028c8
  E8CD  AA        TAX                           ; 028CD ×2868
  E8CE  A9 01     LDA #$01                      ; 028CE ×2868
  E8D0  95 D9     STA $D9,X                     ; 028D0 ×2868

loc_B0_E8D2:                    ; from 028bd
  E8D2  20 7E CC  JSR sub_B0_CC7E               ; 028D2 ×80622
  E8D5  B0 27     BCS loc_B0_E8FE               ; 028D5 ×80622

loc_B0_E8D7:                    ; from 028c2 028aa
  E8D7  C6 79     DEC $79                       ; 028D7 ×156851
  E8D9  F0 07     BEQ loc_B0_E8E2               ; 028D9 ×156851
  E8DB  8A        TXA                           ; 028DB ×78433
  E8DC  18        CLC                           ; 028DC ×78433
  E8DD  69 20     ADC #$20                      ; 028DD ×78433
  E8DF  AA        TAX                           ; 028DF ×78433
  E8E0  D0 C6     BNE loc_B0_E8A8               ; 028E0 ×78433

loc_B0_E8E2:                    ; from 028d9
  E8E2  C6 7B     DEC $7B                       ; 028E2 ×78418
  E8E4  F0 03     BEQ loc_B0_E8E9               ; 028E4 ×78418
  E8E6  4C 42 E8  JMP loc_B0_E842               ; 028E6 ×39233

loc_B0_E8E9:                    ; from 028e4
  E8E9  A5 D0     LDA $D0                       ; 028E9 ×39185
  E8EB  F0 15     BEQ loc_B0_E902               ; 028EB ×39185
  E8ED  20 5C E9  JSR sub_B0_E95C               ; 028ED ×468
  E8F0  20 7E CC  JSR sub_B0_CC7E               ; 028F0 ×468
  E8F3  90 0D     BCC loc_B0_E902               ; 028F3 ×468
  E8F5  A2 01     LDX #$01                      ; 028F5 ×2
  E8F7  8E 21 03  STX $0321                     ; 028F7 ×2
  E8FA  8E FF 03  STX $03FF                     ; 028FA ×2
  E8FD  60        RTS                           ; 028FD ×2

loc_B0_E8FE:                    ; from 028d5 02c1e
  E8FE  A9 01     LDA #$01                      ; 028FE ×156
  E900  85 0F     STA $0F                       ; 02900 ×156

loc_B0_E902:                    ; from 028eb 028f3
  E902  60        RTS                           ; 02902 ×39339

sub_B0_E903:                    ; from 02bd0 02842 030b8 035c6 02eea 02f09 (+2)
  E903  A0 03     LDY #$03                      ; 02903 ×158897

loc_B0_E905:                    ; from 0290c
  E905  B9 6E E9  LDA $E96E,Y                   ; 02905 ×635588
  E908  99 8C 00  STA $008C,Y                   ; 02908 ×635588
  E90B  88        DEY                           ; 0290B ×635588
  E90C  10 F7     BPL loc_B0_E905               ; 0290C ×635588
  E90E  A5 61     LDA $61                       ; 0290E ×158897
  E910  C9 05     CMP #$05                      ; 02910 ×158897
  E912  D0 04     BNE loc_B0_E918               ; 02912 ×158897
  E914  A9 10     LDA #$10                      ; 02914 inferred, not run
  E916  85 8F     STA $8F                       ; 02916 inferred, not run

loc_B0_E918:                    ; from 02912
  E918  A2 00     LDX #$00                      ; 02918 ×158897

loc_B0_E91A:                    ; from 0292c
  E91A  A0 08     LDY #$08                      ; 0291A ×198164
  E91C  4C 62 CC  JMP sub_B0_CC62               ; 0291C ×198164

sub_B0_E91F:                    ; from 0283c 00e23 024e0
  E91F  A0 03     LDY #$03                      ; 0291F ×39267

loc_B0_E921:                    ; from 02928
  E921  B9 72 E9  LDA $E972,Y                   ; 02921 ×157068
  E924  99 8C 00  STA $008C,Y                   ; 02924 ×157068
  E927  88        DEY                           ; 02927 ×157068
  E928  10 F7     BPL loc_B0_E921               ; 02928 ×157068
  E92A  A2 10     LDX #$10                      ; 0292A ×39267
  E92C  D0 EC     BNE loc_B0_E91A               ; 0292C ×39267

sub_B0_E92E:                    ; from 0284e
  E92E  A9 1C     LDA #$1C                      ; 0292E ×4680
  E930  8D C8 03  STA $03C8                     ; 02930 ×4680
  E933  A9 0A     LDA #$0A                      ; 02933 ×4680
  E935  8D C9 03  STA $03C9                     ; 02935 ×4680
  E938  18        CLC                           ; 02938 ×4680
  E939  BD 03 05  LDA $0503,X                   ; 02939 ×4680
  E93C  69 08     ADC #$08                      ; 0293C ×4680
  E93E  8D CA 03  STA $03CA                     ; 0293E ×4680
  E941  18        CLC                           ; 02941 ×4680
  E942  BD 01 05  LDA $0501,X                   ; 02942 ×4680
  E945  69 07     ADC #$07                      ; 02945 ×4680
  E947  85 77     STA $77                       ; 02947 ×4680
  E949  BD 02 05  LDA $0502,X                   ; 02949 ×4680
  E94C  90 02     BCC loc_B0_E950               ; 0294C ×4680
  E94E  49 01     EOR #$01                      ; 0294E inferred, not run

loc_B0_E950:                    ; from 0294c
  E950  85 78     STA $78                       ; 02950 ×4680
  E952  20 20 CC  JSR sub_B0_CC20               ; 02952 ×4680
  E955  B0 04     BCS loc_B0_E95B               ; 02955 ×4680
  E957  8D CB 03  STA $03CB                     ; 02957 ×3854
  E95A  18        CLC                           ; 0295A ×3854

loc_B0_E95B:                    ; from 02955
  E95B  60        RTS                           ; 0295B ×4680

sub_B0_E95C:                    ; from 028ed
  E95C  A0 03     LDY #$03                      ; 0295C ×468

loc_B0_E95E:                    ; from 02965
  E95E  B9 76 E9  LDA $E976,Y                   ; 0295E ×1872
  E961  99 8C 00  STA $008C,Y                   ; 02961 ×1872
  E964  88        DEY                           ; 02964 ×1872
  E965  10 F7     BPL loc_B0_E95E               ; 02965 ×1872
  E967  A2 60     LDX #$60                      ; 02967 ×468

sub_B0_E969:                    ; from 028b8 02be0
  E969  A0 00     LDY #$00                      ; 02969 ×199523
  E96B  4C 62 CC  JMP sub_B0_CC62               ; 0296B ×199523
  E96E  .byte 02 0C 01 15 07 16 04 08 04 08 04 08 0B 02 36 04   ; 0296E data, read by 02905 02921 0295e 0289d

loc_B0_E97E:                    ; from 027e2
  E97E  A0 05     LDY #$05                      ; 0297E ×18290

loc_B0_E980:                    ; from 02987
  E980  B9 B6 E9  LDA $E9B6,Y                   ; 02980 ×109740
  E983  99 D1 00  STA $00D1,Y                   ; 02983 ×109740
  E986  88        DEY                           ; 02986 ×109740
  E987  10 F7     BPL loc_B0_E980               ; 02987 ×109740
  E989  AD FF 03  LDA $03FF                     ; 02989 ×18290
  E98C  F0 04     BEQ loc_B0_E992               ; 0298C ×18290
  E98E  A9 00     LDA #$00                      ; 0298E ×4
  E990  F0 21     BEQ loc_B0_E9B3               ; 02990 ×4

loc_B0_E992:                    ; from 0298c
  E992  A0 40     LDY #$40                      ; 02992 ×18286

loc_B0_E994:                    ; from 029a5
  E994  B9 70 00  LDA $0070,Y                   ; 02994 ×36518
  E997  F0 07     BEQ loc_B0_E9A0               ; 02997 ×36518
  E999  B9 71 00  LDA $0071,Y                   ; 02999 ×20623
  E99C  C9 FE     CMP #$FE                      ; 0299C ×20623
  E99E  F0 09     BEQ loc_B0_E9A9               ; 0299E ×20623

loc_B0_E9A0:                    ; from 02997
  E9A0  98        TYA                           ; 029A0 ×36246
  E9A1  38        SEC                           ; 029A1 ×36246
  E9A2  E9 20     SBC #$20                      ; 029A2 ×36246
  E9A4  A8        TAY                           ; 029A4 ×36246
  E9A5  D0 ED     BNE loc_B0_E994               ; 029A5 ×36246
  E9A7  F0 0A     BEQ loc_B0_E9B3               ; 029A7 ×18014

loc_B0_E9A9:                    ; from 0299e
  E9A9  B9 74 00  LDA $0074,Y                   ; 029A9 ×272
  E9AC  18        CLC                           ; 029AC ×272
  E9AD  69 03     ADC #$03                      ; 029AD ×272
  E9AF  85 D4     STA $D4                       ; 029AF ×272
  E9B1  A9 01     LDA #$01                      ; 029B1 ×272

loc_B0_E9B3:                    ; from 029a7 02990
  E9B3  85 D0     STA $D0                       ; 029B3 ×18290
  E9B5  60        RTS                           ; 029B5 ×18290
  E9B6  .byte 04 A0 70 F6 00 22                                 ; 029B6 data, read by 02980

sub_B0_E9BC:                    ; from 027df
  E9BC  A0 40     LDY #$40                      ; 029BC ×18290

loc_B0_E9BE:                    ; from 029d6
  E9BE  B9 70 00  LDA $0070,Y                   ; 029BE ×36580
  E9C1  F0 0B     BEQ loc_B0_E9CE               ; 029C1 ×36580
  E9C3  B9 74 00  LDA $0074,Y                   ; 029C3 ×20643
  E9C6  18        CLC                           ; 029C6 ×20643
  E9C7  69 0C     ADC #$0C                      ; 029C7 ×20643
  E9C9  99 84 00  STA $0084,Y                   ; 029C9 ×20643
  E9CC  A9 01     LDA #$01                      ; 029CC ×20643

loc_B0_E9CE:                    ; from 029c1
  E9CE  99 80 00  STA $0080,Y                   ; 029CE ×36580
  E9D1  98        TYA                           ; 029D1 ×36580
  E9D2  38        SEC                           ; 029D2 ×36580
  E9D3  E9 20     SBC #$20                      ; 029D3 ×36580
  E9D5  A8        TAY                           ; 029D5 ×36580
  E9D6  D0 E6     BNE loc_B0_E9BE               ; 029D6 ×36580
  E9D8  60        RTS                           ; 029D8 ×18290

jt_B0_E9D9:                    ; from 004e0
  E9D9  A6 CF     LDX $CF                       ; 029D9 ×77213
  E9DB  D0 03     BNE loc_B0_E9E0               ; 029DB ×77213
  E9DD  4C 2D E5  JMP loc_B0_E52D               ; 029DD ×98

loc_B0_E9E0:                    ; from 029db
  E9E0  A5 0F     LDA $0F                       ; 029E0 ×77115
  E9E2  F0 03     BEQ loc_B0_E9E7               ; 029E2 ×77115
  E9E4  4C 58 DC  JMP sub_B0_DC58               ; 029E4 ×21958

loc_B0_E9E7:                    ; from 029e2
  E9E7  20 07 D8  JSR sub_B0_D807               ; 029E7 ×55157
  E9EA  20 11 DA  JSR sub_B0_DA11               ; 029EA ×55157
  E9ED  B0 03     BCS loc_B0_E9F2               ; 029ED ×55157
  E9EF  20 B6 DB  JSR sub_B0_DBB6               ; 029EF ×15489

loc_B0_E9F2:                    ; from 029ed
  E9F2  20 D0 EB  JSR sub_B0_EBD0               ; 029F2 ×55157
  E9F5  20 82 EA  JSR sub_B0_EA82               ; 029F5 ×55157
  E9F8  A5 03     LDA $03                       ; 029F8 ×55157
  E9FA  29 08     AND #$08                      ; 029FA ×55157
  E9FC  D0 06     BNE loc_B0_EA04               ; 029FC ×55157
  E9FE  A5 74     LDA $74                       ; 029FE ×48213
  EA00  C9 80     CMP #$80                      ; 02A00 ×48213
  EA02  B0 1B     BCS loc_B0_EA1F               ; 02A02 ×48213

loc_B0_EA04:                    ; from 029fc
  EA04  AD 04 04  LDA $0404                     ; 02A04 ×54939
  EA07  C9 03     CMP #$03                      ; 02A07 ×54939
  EA09  B0 14     BCS loc_B0_EA1F               ; 02A09 ×54939
  EA0B  20 B0 E6  JSR sub_B0_E6B0               ; 02A0B ×43769
  EA0E  8D 03 04  STA $0403                     ; 02A0E ×43769
  EA11  A0 05     LDY #$05                      ; 02A11 ×43769
  EA13  A2 20     LDX #$20                      ; 02A13 ×43769

loc_B0_EA15:                    ; from 02a24
  EA15  B5 70     LDA $70,X                     ; 02A15 ×146564
  EA17  F0 07     BEQ loc_B0_EA20               ; 02A17 ×146564
  EA19  B5 74     LDA $74,X                     ; 02A19 ×58335
  EA1B  C5 7B     CMP $7B                       ; 02A1B ×58335
  EA1D  90 01     BCC loc_B0_EA20               ; 02A1D ×58335

loc_B0_EA1F:                    ; from 02a09 02a02
  EA1F  60        RTS                           ; 02A1F ×54618

loc_B0_EA20:                    ; from 02a17 02a1d
  EA20  20 EC C9  JSR sub_B0_C9EC               ; 02A20 ×103334
  EA23  88        DEY                           ; 02A23 ×103334
  EA24  D0 EF     BNE loc_B0_EA15               ; 02A24 ×103334
  EA26  AD 03 04  LDA $0403                     ; 02A26 ×539
  EA29  4A        LSR A                         ; 02A29 ×539
  EA2A  90 0D     BCC loc_B0_EA39               ; 02A2A ×539
  EA2C  A2 20     LDX #$20                      ; 02A2C ×166
  EA2E  A0 02     LDY #$02                      ; 02A2E ×166
  EA30  A5 69     LDA $69                       ; 02A30 ×166
  EA32  D0 09     BNE loc_B0_EA3D               ; 02A32 ×166
  EA34  A9 00     LDA #$00                      ; 02A34 ×0
  EA36  8D 03 04  STA $0403                     ; 02A36 ×0

loc_B0_EA39:                    ; from 02a2a
  EA39  A2 40     LDX #$40                      ; 02A39 ×373
  EA3B  A0 03     LDY #$03                      ; 02A3B ×373

loc_B0_EA3D:                    ; from 02a47 02a32
  EA3D  B5 70     LDA $70,X                     ; 02A3D ×853
  EA3F  F0 08     BEQ loc_B0_EA49               ; 02A3F ×853
  EA41  88        DEY                           ; 02A41 ×314
  EA42  F0 31     BEQ loc_B0_EA75               ; 02A42 ×314
  EA44  20 EC C9  JSR sub_B0_C9EC               ; 02A44 ×314
  EA47  D0 F4     BNE loc_B0_EA3D               ; 02A47 ×314

loc_B0_EA49:                    ; from 02a3f
  EA49  E6 6D     INC $6D                       ; 02A49 ×539
  EA4B  EE 04 04  INC $0404                     ; 02A4B ×539
  EA4E  86 F9     STX $F9                       ; 02A4E ×539
  EA50  A0 00     LDY #$00                      ; 02A50 ×539

loc_B0_EA52:                    ; from 02a5b
  EA52  B9 76 EA  LDA $EA76,Y                   ; 02A52 ×3773
  EA55  95 70     STA $70,X                     ; 02A55 ×3773
  EA57  E8        INX                           ; 02A57 ×3773
  EA58  C8        INY                           ; 02A58 ×3773
  EA59  C0 07     CPY #$07                      ; 02A59 ×3773
  EA5B  90 F5     BCC loc_B0_EA52               ; 02A5B ×3773
  EA5D  A6 F9     LDX $F9                       ; 02A5D ×539
  EA5F  AD 03 04  LDA $0403                     ; 02A5F ×539
  EA62  F0 04     BEQ loc_B0_EA68               ; 02A62 ×539
  EA64  A9 16     LDA #$16                      ; 02A64 ×166
  EA66  95 76     STA $76,X                     ; 02A66 ×166

loc_B0_EA68:                    ; from 02a62
  EA68  8A        TXA                           ; 02A68 ×539
  EA69  20 E4 F7  JSR sub_B0_F7E4               ; 02A69 ×539
  EA6C  38        SEC                           ; 02A6C ×539
  EA6D  E9 02     SBC #$02                      ; 02A6D ×539
  EA6F  A8        TAY                           ; 02A6F ×539
  EA70  B9 7D EA  LDA $EA7D,Y                   ; 02A70 ×539
  EA73  95 72     STA $72,X                     ; 02A73 ×539

loc_B0_EA75:                    ; from 02a9f
  EA75  60        RTS                           ; 02A75 ×55696
  EA76  .byte 01 04 38 70 F7 00 13 38 48 58 68 78               ; 02A76 data, read by 02a52 02a70

sub_B0_EA82:                    ; from 029f5
  EA82  A0 05     LDY #$05                      ; 02A82 ×55157
  EA84  84 79     STY $79                       ; 02A84 ×55157
  EA86  A2 20     LDX #$20                      ; 02A86 ×55157

loc_B0_EA88:                    ; from 02aa6
  EA88  86 F9     STX $F9                       ; 02A88 ×275785
  EA8A  B5 70     LDA $70,X                     ; 02A8A ×275785
  EA8C  F0 0F     BEQ loc_B0_EA9D               ; 02A8C ×275785
  EA8E  A5 79     LDA $79                       ; 02A8E ×103416
  EA90  C9 04     CMP #$04                      ; 02A90 ×103416
  EA92  B0 06     BCS loc_B0_EA9A               ; 02A92 ×103416
  EA94  20 23 EB  JSR sub_B0_EB23               ; 02A94 ×82796
  EA97  4C 9D EA  JMP loc_B0_EA9D               ; 02A97 ×82796

loc_B0_EA9A:                    ; from 02a92
  EA9A  20 A8 EA  JSR sub_B0_EAA8               ; 02A9A ×20620

loc_B0_EA9D:                    ; from 02a8c 02a97
  EA9D  C6 79     DEC $79                       ; 02A9D ×275785
  EA9F  F0 D4     BEQ loc_B0_EA75               ; 02A9F ×275785
  EAA1  A6 F9     LDX $F9                       ; 02AA1 ×220628
  EAA3  20 EC C9  JSR sub_B0_C9EC               ; 02AA3 ×220628
  EAA6  D0 E0     BNE loc_B0_EA88               ; 02AA6 ×220628

sub_B0_EAA8:                    ; from 02a9a
  EAA8  A9 02     LDA #$02                      ; 02AA8 ×20620
  EAAA  85 77     STA $77                       ; 02AAA ×20620
  EAAC  20 67 EB  JSR sub_B0_EB67               ; 02AAC ×20620
  EAAF  BD 0A 06  LDA $060A,X                   ; 02AAF ×18082
  EAB2  D0 3F     BNE loc_B0_EAF3               ; 02AB2 ×18082
  EAB4  B5 74     LDA $74,X                     ; 02AB4 ×15114
  EAB6  85 77     STA $77                       ; 02AB6 ×15114
  EAB8  E9 12     SBC #$12                      ; 02AB8 ×15114
  EABA  85 78     STA $78                       ; 02ABA ×15114
  EABC  A0 03     LDY #$03                      ; 02ABC ×15114
  EABE  A2 40     LDX #$40                      ; 02ABE ×15114

loc_B0_EAC0:                    ; from 02ad4
  EAC0  B5 70     LDA $70,X                     ; 02AC0 ×45230
  EAC2  F0 0A     BEQ loc_B0_EACE               ; 02AC2 ×45230
  EAC4  B5 74     LDA $74,X                     ; 02AC4 ×14362
  EAC6  C5 77     CMP $77                       ; 02AC6 ×14362
  EAC8  B0 04     BCS loc_B0_EACE               ; 02AC8 ×14362
  EACA  C5 78     CMP $78                       ; 02ACA ×9820
  EACC  B0 0D     BCS loc_B0_EADB               ; 02ACC ×9820

loc_B0_EACE:                    ; from 02ac2 02ac8
  EACE  88        DEY                           ; 02ACE ×45118
  EACF  F0 05     BEQ loc_B0_EAD6               ; 02ACF ×45118
  EAD1  20 EC C9  JSR sub_B0_C9EC               ; 02AD1 ×30116
  EAD4  D0 EA     BNE loc_B0_EAC0               ; 02AD4 ×30116

loc_B0_EAD6:                    ; from 02acf
  EAD6  A9 40     LDA #$40                      ; 02AD6 ×15002
  EAD8  4C 98 EB  JMP loc_B0_EB98               ; 02AD8 ×15002

loc_B0_EADB:                    ; from 02acc
  EADB  A6 F9     LDX $F9                       ; 02ADB ×112
  EADD  FE 0A 06  INC $060A,X                   ; 02ADD ×112
  EAE0  A9 04     LDA #$04                      ; 02AE0 ×112
  EAE2  9D 0C 06  STA $060C,X                   ; 02AE2 ×112
  EAE5  A9 00     LDA #$00                      ; 02AE5 ×112
  EAE7  9D 0B 06  STA $060B,X                   ; 02AE7 ×112
  EAEA  A9 19     LDA #$19                      ; 02AEA ×112
  EAEC  95 76     STA $76,X                     ; 02AEC ×112
  EAEE  B5 73     LDA $73,X                     ; 02AEE ×112
  EAF0  9D 0D 06  STA $060D,X                   ; 02AF0 ×112

loc_B0_EAF3:                    ; from 02ab2
  EAF3  A6 F9     LDX $F9                       ; 02AF3 ×3080
  EAF5  BD 0B 06  LDA $060B,X                   ; 02AF5 ×3080
  EAF8  38        SEC                           ; 02AF8 ×3080
  EAF9  E9 38     SBC #$38                      ; 02AF9 ×3080
  EAFB  9D 0B 06  STA $060B,X                   ; 02AFB ×3080
  EAFE  BD 0C 06  LDA $060C,X                   ; 02AFE ×3080
  EB01  E9 00     SBC #$00                      ; 02B01 ×3080
  EB03  9D 0C 06  STA $060C,X                   ; 02B03 ×3080
  EB06  10 07     BPL loc_B0_EB0F               ; 02B06 ×3080
  EB08  B5 73     LDA $73,X                     ; 02B08 ×1186
  EB0A  DD 0D 06  CMP $060D,X                   ; 02B0A ×1186
  EB0D  B0 09     BCS loc_B0_EB18               ; 02B0D ×1186

loc_B0_EB0F:                    ; from 02b06
  EB0F  B5 73     LDA $73,X                     ; 02B0F ×3006
  EB11  38        SEC                           ; 02B11 ×3006
  EB12  FD 0C 06  SBC $060C,X                   ; 02B12 ×3006
  EB15  95 73     STA $73,X                     ; 02B15 ×3006
  EB17  60        RTS                           ; 02B17 ×3006

loc_B0_EB18:                    ; from 02b0d
  EB18  BD 0D 06  LDA $060D,X                   ; 02B18 ×74
  EB1B  95 73     STA $73,X                     ; 02B1B ×74
  EB1D  A9 00     LDA #$00                      ; 02B1D ×74
  EB1F  9D 0A 06  STA $060A,X                   ; 02B1F ×74
  EB22  60        RTS                           ; 02B22 ×74

sub_B0_EB23:                    ; from 02a94
  EB23  B5 74     LDA $74,X                     ; 02B23 ×82796
  EB25  E9 10     SBC #$10                      ; 02B25 ×82796
  EB27  85 77     STA $77                       ; 02B27 ×82796
  EB29  69 20     ADC #$20                      ; 02B29 ×82796
  EB2B  85 78     STA $78                       ; 02B2B ×82796
  EB2D  A0 02     LDY #$02                      ; 02B2D ×82796
  EB2F  A2 20     LDX #$20                      ; 02B2F ×82796

loc_B0_EB31:                    ; from 02b44
  EB31  B5 70     LDA $70,X                     ; 02B31 ×164018
  EB33  F0 0A     BEQ loc_B0_EB3F               ; 02B33 ×164018
  EB35  B5 74     LDA $74,X                     ; 02B35 ×18818
  EB37  C5 77     CMP $77                       ; 02B37 ×18818
  EB39  90 04     BCC loc_B0_EB3F               ; 02B39 ×18818
  EB3B  C5 78     CMP $78                       ; 02B3B ×12460
  EB3D  90 17     BCC loc_B0_EB56               ; 02B3D ×12460

loc_B0_EB3F:                    ; from 02b33 02b39
  EB3F  88        DEY                           ; 02B3F ×161836
  EB40  F0 04     BEQ loc_B0_EB46               ; 02B40 ×161836
  EB42  A2 30     LDX #$30                      ; 02B42 ×81222
  EB44  D0 EB     BNE loc_B0_EB31               ; 02B44 ×81222

loc_B0_EB46:                    ; from 02b40
  EB46  20 5A EB  JSR sub_B0_EB5A               ; 02B46 ×80614
  EB49  A6 F9     LDX $F9                       ; 02B49 ×80614
  EB4B  A9 01     LDA #$01                      ; 02B4B ×80614
  EB4D  85 77     STA $77                       ; 02B4D ×80614
  EB4F  20 67 EB  JSR sub_B0_EB67               ; 02B4F ×80614
  EB52  A9 20     LDA #$20                      ; 02B52 ×69467
  EB54  D0 42     BNE loc_B0_EB98               ; 02B54 ×69467

loc_B0_EB56:                    ; from 02b3d
  EB56  A5 F9     LDA $F9                       ; 02B56 ×2182
  EB58  D0 09     BNE loc_B0_EB63               ; 02B58 ×2182

sub_B0_EB5A:                    ; from 02b46
  EB5A  AD 05 04  LDA $0405                     ; 02B5A ×80614
  EB5D  C5 F9     CMP $F9                       ; 02B5D ×80614
  EB5F  D0 05     BNE loc_B0_EB66               ; 02B5F ×80614
  EB61  A9 00     LDA #$00                      ; 02B61 ×56

loc_B0_EB63:                    ; from 02b58
  EB63  8D 05 04  STA $0405                     ; 02B63 ×2238

loc_B0_EB66:                    ; from 02b5f
  EB66  60        RTS                           ; 02B66 ×82796

sub_B0_EB67:                    ; from 02b4f 02aac
  EB67  A5 C9     LDA $C9                       ; 02B67 ×101234
  EB69  25 CE     AND $CE                       ; 02B69 ×101234
  EB6B  A8        TAY                           ; 02B6B ×101234
  EB6C  B9 CA EB  LDA $EBCA,Y                   ; 02B6C ×101234
  EB6F  48        PHA                           ; 02B6F ×101234
  EB70  A5 79     LDA $79                       ; 02B70 ×101234
  EB72  C9 04     CMP #$04                      ; 02B72 ×101234
  EB74  B0 05     BCS loc_B0_EB7B               ; 02B74 ×101234
  EB76  68        PLA                           ; 02B76 ×80614
  EB77  B9 CD EB  LDA $EBCD,Y                   ; 02B77 ×80614
  EB7A  48        PHA                           ; 02B7A ×80614

loc_B0_EB7B:                    ; from 02b74
  EB7B  68        PLA                           ; 02B7B ×101234
  EB7C  7D 08 06  ADC $0608,X                   ; 02B7C ×101234
  EB7F  9D 08 06  STA $0608,X                   ; 02B7F ×101234
  EB82  90 11     BCC loc_B0_EB95               ; 02B82 ×101234
  EB84  B5 74     LDA $74,X                     ; 02B84 ×87844
  EB86  E5 77     SBC $77                       ; 02B86 ×87844
  EB88  95 74     STA $74,X                     ; 02B88 ×87844
  EB8A  B0 0B     BCS loc_B0_EB97               ; 02B8A ×87844
  EB8C  A9 00     LDA #$00                      ; 02B8C ×295
  EB8E  95 70     STA $70,X                     ; 02B8E ×295
  EB90  95 75     STA $75,X                     ; 02B90 ×295
  EB92  CE 04 04  DEC $0404                     ; 02B92 ×295

loc_B0_EB95:                    ; from 02b82
  EB95  68        PLA                           ; 02B95 ×13685
  EB96  68        PLA                           ; 02B96 ×13685

loc_B0_EB97:                    ; from 02b8a
  EB97  60        RTS                           ; 02B97 ×101234

loc_B0_EB98:                    ; from 02b54 02ad8
  EB98  A6 F9     LDX $F9                       ; 02B98 ×84469
  EB9A  18        CLC                           ; 02B9A ×84469
  EB9B  7D 09 06  ADC $0609,X                   ; 02B9B ×84469
  EB9E  9D 09 06  STA $0609,X                   ; 02B9E ×84469
  EBA1  90 20     BCC loc_B0_EBC3               ; 02BA1 ×84469
  EBA3  BD 0E 06  LDA $060E,X                   ; 02BA3 ×12265
  EBA6  18        CLC                           ; 02BA6 ×12265
  EBA7  69 01     ADC #$01                      ; 02BA7 ×12265
  EBA9  C9 03     CMP #$03                      ; 02BA9 ×12265
  EBAB  90 02     BCC loc_B0_EBAF               ; 02BAB ×12265
  EBAD  A9 00     LDA #$00                      ; 02BAD ×3999

loc_B0_EBAF:                    ; from 02bab
  EBAF  9D 0E 06  STA $060E,X                   ; 02BAF ×12265
  EBB2  A8        TAY                           ; 02BB2 ×12265
  EBB3  B9 C4 EB  LDA $EBC4,Y                   ; 02BB3 ×12265
  EBB6  A6 79     LDX $79                       ; 02BB6 ×12265
  EBB8  E0 04     CPX #$04                      ; 02BB8 ×12265
  EBBA  B0 03     BCS loc_B0_EBBF               ; 02BBA ×12265
  EBBC  B9 C7 EB  LDA $EBC7,Y                   ; 02BBC ×8567

loc_B0_EBBF:                    ; from 02bba
  EBBF  A6 F9     LDX $F9                       ; 02BBF ×12265
  EBC1  95 76     STA $76,X                     ; 02BC1 ×12265

loc_B0_EBC3:                    ; from 02ba1 02c0c
  EBC3  60        RTS                           ; 02BC3 ×139552
  EBC4  .byte 16 17 18 13 14 15 C0 FF 80 80 FF 40               ; 02BC4 data, read by 02bb3 02bbc 02b6c 02b77

sub_B0_EBD0:                    ; from 029f2
  EBD0  20 03 E9  JSR sub_B0_E903               ; 02BD0 ×55157
  EBD3  A0 03     LDY #$03                      ; 02BD3 ×55157

loc_B0_EBD5:                    ; from 02bdc
  EBD5  B9 15 EC  LDA $EC15,Y                   ; 02BD5 ×220628
  EBD8  99 8C 00  STA $008C,Y                   ; 02BD8 ×220628
  EBDB  88        DEY                           ; 02BDB ×220628
  EBDC  10 F7     BPL loc_B0_EBD5               ; 02BDC ×220628
  EBDE  A2 20     LDX #$20                      ; 02BDE ×55157
  EBE0  20 69 E9  JSR sub_B0_E969               ; 02BE0 ×55157
  EBE3  A9 05     LDA #$05                      ; 02BE3 ×55157
  EBE5  85 79     STA $79                       ; 02BE5 ×55157

loc_B0_EBE7:                    ; from 02c13
  EBE7  86 F9     STX $F9                       ; 02BE7 ×275615
  EBE9  B5 70     LDA $70,X                     ; 02BE9 ×275615
  EBEB  F0 1D     BEQ loc_B0_EC0A               ; 02BEB ×275615
  EBED  20 6C CC  JSR sub_B0_CC6C               ; 02BED ×103340
  EBF0  A5 DF     LDA $DF                       ; 02BF0 ×103340
  EBF2  F0 11     BEQ loc_B0_EC05               ; 02BF2 ×103340
  EBF4  20 8F CC  JSR sub_B0_CC8F               ; 02BF4 ×78074
  EBF7  90 11     BCC loc_B0_EC0A               ; 02BF7 ×78074
  EBF9  8A        TXA                           ; 02BF9 ×6241
  EBFA  20 E4 F7  JSR sub_B0_F7E4               ; 02BFA ×6241
  EBFD  AA        TAX                           ; 02BFD ×6241
  EBFE  CA        DEX                           ; 02BFE ×6241
  EBFF  CA        DEX                           ; 02BFF ×6241
  EC00  A9 01     LDA #$01                      ; 02C00 ×6241
  EC02  9D D9 00  STA $00D9,X                   ; 02C02 ×6241

loc_B0_EC05:                    ; from 02bf2
  EC05  20 7E CC  JSR sub_B0_CC7E               ; 02C05 ×31507
  EC08  B0 0F     BCS loc_B0_EC19               ; 02C08 ×31507

loc_B0_EC0A:                    ; from 02beb 02bf7
  EC0A  C6 79     DEC $79                       ; 02C0A ×275541
  EC0C  F0 B5     BEQ loc_B0_EBC3               ; 02C0C ×275541
  EC0E  A6 F9     LDX $F9                       ; 02C0E ×220458
  EC10  20 EC C9  JSR sub_B0_C9EC               ; 02C10 ×220458
  EC13  D0 D2     BNE loc_B0_EBE7               ; 02C13 ×220458
  EC15  .byte 02 06 04 0C                                       ; 02C15 data, read by 02bd5

loc_B0_EC19:                    ; from 02c08
  EC19  A9 10     LDA #$10                      ; 02C19 ×74
  EC1B  8D 14 03  STA $0314                     ; 02C1B ×74
  EC1E  4C FE E8  JMP loc_B0_E8FE               ; 02C1E ×74

loc_B0_EC21:                    ; from 02c43
  EC21  A2 FF     LDX #$FF                      ; 02C21 ×62
  EC23  8E 06 05  STX $0506                     ; 02C23 ×62
  EC26  8E 16 05  STX $0516                     ; 02C26 ×62
  EC29  8E 26 05  STX $0526                     ; 02C29 ×62
  EC2C  E8        INX                           ; 02C2C ×62
  EC2D  86 BE     STX $BE                       ; 02C2D ×62
  EC2F  86 B9     STX $B9                       ; 02C2F ×62
  EC31  86 B3     STX $B3                       ; 02C31 ×62
  EC33  86 87     STX $87                       ; 02C33 ×62
  EC35  86 97     STX $97                       ; 02C35 ×62
  EC37  E8        INX                           ; 02C37 ×62
  EC38  86 B8     STX $B8                       ; 02C38 ×62
  EC3A  A2 38     LDX #$38                      ; 02C3A ×62
  EC3C  86 BF     STX $BF                       ; 02C3C ×62
  EC3E  4C 2D E5  JMP loc_B0_E52D               ; 02C3E ×62

jt_B0_EC41:                    ; from 004e0
  EC41  A6 CF     LDX $CF                       ; 02C41 ×31653
  EC43  F0 DC     BEQ loc_B0_EC21               ; 02C43 ×31653
  EC45  A5 0F     LDA $0F                       ; 02C45 ×31591
  EC47  F0 06     BEQ loc_B0_EC4F               ; 02C47 ×31591
  EC49  20 58 DC  JSR sub_B0_DC58               ; 02C49 ×12625
  EC4C  4C 60 EC  JMP loc_B0_EC60               ; 02C4C ×12625

loc_B0_EC4F:                    ; from 02c47
  EC4F  20 07 D8  JSR sub_B0_D807               ; 02C4F ×18966
  EC52  20 11 DA  JSR sub_B0_DA11               ; 02C52 ×18966
  EC55  B0 03     BCS loc_B0_EC5A               ; 02C55 ×18966
  EC57  20 B6 DB  JSR sub_B0_DBB6               ; 02C57 ×5583

loc_B0_EC5A:                    ; from 02c55
  EC5A  20 5F EE  JSR sub_B0_EE5F               ; 02C5A ×18966
  EC5D  20 D9 EE  JSR sub_B0_EED9               ; 02C5D ×18966

loc_B0_EC60:                    ; from 02c4c
  EC60  20 42 ED  JSR sub_B0_ED42               ; 02C60 ×31591
  EC63  20 A1 EC  JSR sub_B0_ECA1               ; 02C63 ×31591
  EC66  A2 20     LDX #$20                      ; 02C66 ×31591

loc_B0_EC68:                    ; from 02c70
  EC68  BC 06 05  LDY $0506,X                   ; 02C68 ×94722
  EC6B  10 1C     BPL loc_B0_EC89               ; 02C6B ×94722
  EC6D  20 F2 C9  JSR sub_B0_C9F2               ; 02C6D ×94679
  EC70  10 F6     BPL loc_B0_EC68               ; 02C70 ×94679
  EC72  A5 52     LDA $52                       ; 02C72 ×31548
  EC74  C9 05     CMP #$05                      ; 02C74 ×31548
  EC76  D0 10     BNE loc_B0_EC88               ; 02C76 ×31548
  EC78  A9 00     LDA #$00                      ; 02C78 ×5257
  EC7A  85 6C     STA $6C                       ; 02C7A ×5257
  EC7C  A2 20     LDX #$20                      ; 02C7C ×5257

loc_B0_EC7E:                    ; from 02c86
  EC7E  20 9A E5  JSR sub_B0_E59A               ; 02C7E ×15761
  EC81  B0 0C     BCS loc_B0_EC8F               ; 02C81 ×15761
  EC83  20 F2 C9  JSR sub_B0_C9F2               ; 02C83 ×15753
  EC86  10 F6     BPL loc_B0_EC7E               ; 02C86 ×15753

loc_B0_EC88:                    ; from 02c76
  EC88  60        RTS                           ; 02C88 ×31540

loc_B0_EC89:                    ; from 02c6b
  EC89  A9 00     LDA #$00                      ; 02C89 ×43
  EC8B  85 51     STA $51                       ; 02C8B ×43
  EC8D  E6 6C     INC $6C                       ; 02C8D ×43

loc_B0_EC8F:                    ; from 02c81
  EC8F  A9 FF     LDA #$FF                      ; 02C8F ×51
  EC91  9D 06 05  STA $0506,X                   ; 02C91 ×51

loc_B0_EC94:                    ; from 03089
  EC94  A9 00     LDA #$00                      ; 02C94 ×283
  EC96  9D 00 05  STA $0500,X                   ; 02C96 ×283
  EC99  9D 05 05  STA $0505,X                   ; 02C99 ×283

loc_B0_EC9C:                    ; from 036ca
  EC9C  A9 67     LDA #$67                      ; 02C9C ×302
  EC9E  4C 26 ED  JMP sub_B0_ED26               ; 02C9E ×302

sub_B0_ECA1:                    ; from 02c63
  ECA1  A5 69     LDA $69                       ; 02CA1 ×31591
  ECA3  F0 2F     BEQ loc_B0_ECD4               ; 02CA3 ×31591
  ECA5  C9 01     CMP #$01                      ; 02CA5 ×31591
  ECA7  D0 06     BNE loc_B0_ECAF               ; 02CA7 ×31591
  ECA9  A5 68     LDA $68                       ; 02CA9 ×0
  ECAB  C9 18     CMP #$18                      ; 02CAB ×0
  ECAD  90 25     BCC loc_B0_ECD4               ; 02CAD ×0

loc_B0_ECAF:                    ; from 02ca7
  ECAF  A5 52     LDA $52                       ; 02CAF ×31591
  ECB1  C9 04     CMP #$04                      ; 02CB1 ×31591
  ECB3  D0 1F     BNE loc_B0_ECD4               ; 02CB3 ×31591
  ECB5  A2 90     LDX #$90                      ; 02CB5 ×5266
  ECB7  BD 00 05  LDA $0500,X                   ; 02CB7 ×5266
  ECBA  F0 06     BEQ loc_B0_ECC2               ; 02CBA ×5266
  ECBC  20 16 CC  JSR sub_B0_CC16               ; 02CBC inferred, not run
  ECBF  B0 01     BCS loc_B0_ECC2               ; 02CBF inferred, not run
  ECC1  60        RTS                           ; 02CC1 inferred, not run

loc_B0_ECC2:                    ; from 02cba
  ECC2  A5 C9     LDA $C9                       ; 02CC2 ×5266
  ECC4  C9 02     CMP #$02                      ; 02CC4 ×5266
  ECC6  F0 0C     BEQ loc_B0_ECD4               ; 02CC6 ×5266
  ECC8  A2 20     LDX #$20                      ; 02CC8 ×4861

loc_B0_ECCA:                    ; from 02cd2
  ECCA  BD 00 05  LDA $0500,X                   ; 02CCA ×13056
  ECCD  F0 06     BEQ loc_B0_ECD5               ; 02CCD ×13056
  ECCF  20 F2 C9  JSR sub_B0_C9F2               ; 02CCF ×10549
  ECD2  10 F6     BPL loc_B0_ECCA               ; 02CD2 ×10549

loc_B0_ECD4:                    ; from 02cb3 02cec 02cc6 02cf2
  ECD4  60        RTS                           ; 02CD4 ×31370

loc_B0_ECD5:                    ; from 02ccd
  ECD5  20 B0 E6  JSR sub_B0_E6B0               ; 02CD5 ×2507
  ECD8  86 8C     STX $8C                       ; 02CD8 ×2507
  ECDA  A2 20     LDX #$20                      ; 02CDA ×2507

loc_B0_ECDC:                    ; from 02cf7
  ECDC  E4 8C     CPX $8C                       ; 02CDC ×3938
  ECDE  F0 14     BEQ loc_B0_ECF4               ; 02CDE ×3938
  ECE0  BD 00 05  LDA $0500,X                   ; 02CE0 ×3697
  ECE3  F0 0F     BEQ loc_B0_ECF4               ; 02CE3 ×3697
  ECE5  20 16 CC  JSR sub_B0_CC16               ; 02CE5 ×3522
  ECE8  B0 06     BCS loc_B0_ECF0               ; 02CE8 ×3522
  ECEA  C5 7B     CMP $7B                       ; 02CEA ×3489
  ECEC  B0 E6     BCS loc_B0_ECD4               ; 02CEC ×3489
  ECEE  90 04     BCC loc_B0_ECF4               ; 02CEE ×1236

loc_B0_ECF0:                    ; from 02ce8
  ECF0  C9 21     CMP #$21                      ; 02CF0 ×33
  ECF2  90 E0     BCC loc_B0_ECD4               ; 02CF2 ×33

loc_B0_ECF4:                    ; from 02cee 02cde 02ce3
  ECF4  20 F2 C9  JSR sub_B0_C9F2               ; 02CF4 ×1652
  ECF7  10 E3     BPL loc_B0_ECDC               ; 02CF7 ×1652
  ECF9  A6 8C     LDX $8C                       ; 02CF9 ×221
  ECFB  A5 6A     LDA $6A                       ; 02CFB ×221
  ECFD  29 F8     AND #$F8                      ; 02CFD ×221
  ECFF  9D 01 05  STA $0501,X                   ; 02CFF ×221
  ED02  A5 6B     LDA $6B                       ; 02D02 ×221
  ED04  29 01     AND #$01                      ; 02D04 ×221
  ED06  49 01     EOR #$01                      ; 02D06 ×221
  ED08  9D 02 05  STA $0502,X                   ; 02D08 ×221
  ED0B  A9 B8     LDA #$B8                      ; 02D0B ×221
  ED0D  9D 03 05  STA $0503,X                   ; 02D0D ×221
  ED10  A9 06     LDA #$06                      ; 02D10 ×221
  ED12  9D 04 05  STA $0504,X                   ; 02D12 ×221
  ED15  A9 01     LDA #$01                      ; 02D15 ×221
  ED17  9D 05 05  STA $0505,X                   ; 02D17 ×221
  ED1A  E6 6D     INC $6D                       ; 02D1A ×221

loc_B0_ED1C:                    ; from 03020
  ED1C  A9 FF     LDA #$FF                      ; 02D1C ×578
  ED1E  9D 06 05  STA $0506,X                   ; 02D1E ×578

loc_B0_ED21:                    ; from 02e5c 030b2
  ED21  A9 FF     LDA #$FF                      ; 02D21 ×6647
  ED23  9D 00 05  STA $0500,X                   ; 02D23 ×6647

sub_B0_ED26:                    ; from 00dc4 036b3 02573 02c9e 0260b 02615
  ED26  86 F9     STX $F9                       ; 02D26 ×8719
  ED28  85 8B     STA $8B                       ; 02D28 ×8719
  ED2A  A9 04     LDA #$04                      ; 02D2A ×8719
  ED2C  85 79     STA $79                       ; 02D2C ×8719
  ED2E  A0 00     LDY #$00                      ; 02D2E ×8719

loc_B0_ED30:                    ; from 02d3a
  ED30  BD 01 05  LDA $0501,X                   ; 02D30 ×34876
  ED33  99 8C 00  STA $008C,Y                   ; 02D33 ×34876
  ED36  C8        INY                           ; 02D36 ×34876
  ED37  E8        INX                           ; 02D37 ×34876
  ED38  C6 79     DEC $79                       ; 02D38 ×34876
  ED3A  D0 F4     BNE loc_B0_ED30               ; 02D3A ×34876
  ED3C  20 C4 D1  JSR sub_B0_D1C4               ; 02D3C ×8719
  ED3F  A6 F9     LDX $F9                       ; 02D3F ×8719
  ED41  60        RTS                           ; 02D41 ×8719

sub_B0_ED42:                    ; from 02c60
  ED42  20 51 ED  JSR sub_B0_ED51               ; 02D42 ×31591
  ED45  20 FE ED  JSR sub_B0_EDFE               ; 02D45 ×31591
  ED48  A5 52     LDA $52                       ; 02D48 ×31591
  ED4A  C9 03     CMP #$03                      ; 02D4A ×31591
  ED4C  B0 17     BCS loc_B0_ED65               ; 02D4C ×31591
  ED4E  4C 28 EE  JMP loc_B0_EE28               ; 02D4E ×15806

sub_B0_ED51:                    ; from 02d42
  ED51  A0 02     LDY #$02                      ; 02D51 ×31591
  ED53  A2 10     LDX #$10                      ; 02D53 ×31591

loc_B0_ED55:                    ; from 02d63
  ED55  B5 70     LDA $70,X                     ; 02D55 ×63182
  ED57  F0 07     BEQ loc_B0_ED60               ; 02D57 ×63182
  ED59  84 FA     STY $FA                       ; 02D59 ×15838
  ED5B  20 66 ED  JSR sub_B0_ED66               ; 02D5B ×15838
  ED5E  A4 FA     LDY $FA                       ; 02D5E ×15838

loc_B0_ED60:                    ; from 02d57
  ED60  A2 20     LDX #$20                      ; 02D60 ×63182
  ED62  88        DEY                           ; 02D62 ×63182
  ED63  D0 F0     BNE loc_B0_ED55               ; 02D63 ×63182

loc_B0_ED65:                    ; from 02d4c
  ED65  60        RTS                           ; 02D65 ×47376

sub_B0_ED66:                    ; from 02d5b
  ED66  B5 77     LDA $77,X                     ; 02D66 ×15838
  ED68  D0 23     BNE loc_B0_ED8D               ; 02D68 ×15838
  ED6A  20 B3 ED  JSR sub_B0_EDB3               ; 02D6A ×12391
  ED6D  20 0A EE  JSR sub_B0_EE0A               ; 02D6D ×12391
  ED70  A5 DE     LDA $DE                       ; 02D70 ×12391
  ED72  F0 18     BEQ loc_B0_ED8C               ; 02D72 ×12391
  ED74  A9 00     LDA #$00                      ; 02D74 ×95
  ED76  95 70     STA $70,X                     ; 02D76 ×95
  ED78  B5 74     LDA $74,X                     ; 02D78 ×95
  ED7A  85 77     STA $77                       ; 02D7A ×95
  ED7C  A2 20     LDX #$20                      ; 02D7C ×95
  ED7E  20 C2 EE  JSR sub_B0_EEC2               ; 02D7E ×95
  ED81  A9 02     LDA #$02                      ; 02D81 ×95
  ED83  A4 DE     LDY $DE                       ; 02D83 ×95
  ED85  88        DEY                           ; 02D85 ×95
  ED86  F0 02     BEQ loc_B0_ED8A               ; 02D86 ×95
  ED88  A9 01     LDA #$01                      ; 02D88 ×8

loc_B0_ED8A:                    ; from 02d86
  ED8A  95 77     STA $77,X                     ; 02D8A ×95

loc_B0_ED8C:                    ; from 02d72 02da3 02dac
  ED8C  60        RTS                           ; 02D8C ×16185

loc_B0_ED8D:                    ; from 02d68 02e08
  ED8D  B4 77     LDY $77,X                     ; 02D8D ×3898
  ED8F  F0 FB     BEQ loc_B0_ED8C               ; 02D8F ×3898
  ED91  A0 00     LDY #$00                      ; 02D91 ×3898
  ED93  20 E7 ED  JSR sub_B0_EDE7               ; 02D93 ×3898
  ED96  B4 77     LDY $77,X                     ; 02D96 ×3898
  ED98  B5 74     LDA $74,X                     ; 02D98 ×3898
  ED9A  C0 01     CPY #$01                      ; 02D9A ×3898
  ED9C  F0 09     BEQ loc_B0_EDA7               ; 02D9C ×3898
  ED9E  38        SEC                           ; 02D9E ×2647
  ED9F  E9 02     SBC #$02                      ; 02D9F ×2647
  EDA1  95 74     STA $74,X                     ; 02DA1 ×2647
  EDA3  B0 E7     BCS loc_B0_ED8C               ; 02DA3 ×2647
  EDA5  90 07     BCC loc_B0_EDAE               ; 02DA5 ×91

loc_B0_EDA7:                    ; from 02d9c
  EDA7  18        CLC                           ; 02DA7 ×1251
  EDA8  69 02     ADC #$02                      ; 02DA8 ×1251
  EDAA  95 74     STA $74,X                     ; 02DAA ×1251
  EDAC  90 DE     BCC loc_B0_ED8C               ; 02DAC ×1251

loc_B0_EDAE:                    ; from 02da5
  EDAE  A9 00     LDA #$00                      ; 02DAE ×104
  EDB0  95 70     STA $70,X                     ; 02DB0 ×104
  EDB2  60        RTS                           ; 02DB2 ×104

sub_B0_EDB3:                    ; from 02d6a
  EDB3  A5 0F     LDA $0F                       ; 02DB3 ×12391
  EDB5  D0 43     BNE loc_B0_EDFA               ; 02DB5 ×12391
  EDB7  A9 20     LDA #$20                      ; 02DB7 ×12391
  EDB9  20 F3 ED  JSR sub_B0_EDF3               ; 02DB9 ×12391
  EDBC  90 3C     BCC loc_B0_EDFA               ; 02DBC ×12391
  EDBE  A4 CA     LDY $CA                       ; 02DBE ×1534

loc_B0_EDC0:                    ; from 02df0
  EDC0  F0 38     BEQ loc_B0_EDFA               ; 02DC0 ×2488
  EDC2  88        DEY                           ; 02DC2 ×1261
  EDC3  F0 0E     BEQ loc_B0_EDD3               ; 02DC3 ×1261
  EDC5  FE 08 06  INC $0608,X                   ; 02DC5 ×698
  EDC8  BD 08 06  LDA $0608,X                   ; 02DC8 ×698
  EDCB  C9 03     CMP #$03                      ; 02DCB ×698
  EDCD  90 0E     BCC loc_B0_EDDD               ; 02DCD ×698
  EDCF  A9 00     LDA #$00                      ; 02DCF ×209
  EDD1  F0 0A     BEQ loc_B0_EDDD               ; 02DD1 ×209

loc_B0_EDD3:                    ; from 02dc3
  EDD3  DE 08 06  DEC $0608,X                   ; 02DD3 ×563
  EDD6  BD 08 06  LDA $0608,X                   ; 02DD6 ×563
  EDD9  10 02     BPL loc_B0_EDDD               ; 02DD9 ×563
  EDDB  A9 02     LDA #$02                      ; 02DDB ×207

loc_B0_EDDD:                    ; from 02dcd 02dd9 02dd1
  EDDD  9D 08 06  STA $0608,X                   ; 02DDD ×1261
  EDE0  A8        TAY                           ; 02DE0 ×1261
  EDE1  B9 FB ED  LDA $EDFB,Y                   ; 02DE1 ×1261
  EDE4  95 76     STA $76,X                     ; 02DE4 ×1261
  EDE6  60        RTS                           ; 02DE6 ×1261

sub_B0_EDE7:                    ; from 02d93
  EDE7  A9 40     LDA #$40                      ; 02DE7 ×3898
  EDE9  20 F3 ED  JSR sub_B0_EDF3               ; 02DE9 ×3898
  EDEC  90 0C     BCC loc_B0_EDFA               ; 02DEC ×3898
  EDEE  B4 77     LDY $77,X                     ; 02DEE ×954
  EDF0  4C C0 ED  JMP loc_B0_EDC0               ; 02DF0 ×954

sub_B0_EDF3:                    ; from 02db9 02de9
  EDF3  18        CLC                           ; 02DF3 ×16289
  EDF4  7D 09 06  ADC $0609,X                   ; 02DF4 ×16289
  EDF7  9D 09 06  STA $0609,X                   ; 02DF7 ×16289

loc_B0_EDFA:                    ; from 02e02 02dbc 02dec 02dc0
  EDFA  60        RTS                           ; 02DFA ×62457
  EDFB  .byte 20 21 35                                          ; 02DFB data, read by 02de1

sub_B0_EDFE:                    ; from 02d45
  EDFE  A2 30     LDX #$30                      ; 02DFE ×31591
  EE00  B5 70     LDA $70,X                     ; 02E00 ×31591
  EE02  F0 F6     BEQ loc_B0_EDFA               ; 02E02 ×31591
  EE04  B5 75     LDA $75,X                     ; 02E04 ×451
  EE06  D0 F2     BNE loc_B0_EDFA               ; 02E06 ×451
  EE08  F0 83     BEQ loc_B0_ED8D               ; 02E08 ×451

sub_B0_EE0A:                    ; from 02d6d
  EE0A  A5 84     LDA $84                       ; 02E0A ×12391
  EE0C  C5 BF     CMP $BF                       ; 02E0C ×12391
  EE0E  F0 17     BEQ loc_B0_EE27               ; 02E0E ×12391
  EE10  90 0B     BCC loc_B0_EE1D               ; 02E10 ×159
  EE12  C6 84     DEC $84                       ; 02E12 ×126
  EE14  A5 84     LDA $84                       ; 02E14 ×126
  EE16  C5 BF     CMP $BF                       ; 02E16 ×126
  EE18  F0 0D     BEQ loc_B0_EE27               ; 02E18 ×126
  EE1A  C6 84     DEC $84                       ; 02E1A ×109
  EE1C  60        RTS                           ; 02E1C ×109

loc_B0_EE1D:                    ; from 02e10
  EE1D  E6 84     INC $84                       ; 02E1D ×33
  EE1F  A5 84     LDA $84                       ; 02E1F ×33
  EE21  C5 BF     CMP $BF                       ; 02E21 ×33
  EE23  F0 02     BEQ loc_B0_EE27               ; 02E23 ×33
  EE25  E6 84     INC $84                       ; 02E25 ×29

loc_B0_EE27:                    ; from 02e0e 02e39 02e2e 02e18 02e23
  EE27  60        RTS                           ; 02E27 ×22493

loc_B0_EE28:                    ; from 02d4e
  EE28  20 DA F7  JSR sub_B0_F7DA               ; 02E28 ×15806
  EE2B  BD 00 05  LDA $0500,X                   ; 02E2B ×15806
  EE2E  F0 F7     BEQ loc_B0_EE27               ; 02E2E ×15806
  EE30  BD 09 05  LDA $0509,X                   ; 02E30 ×11261
  EE33  18        CLC                           ; 02E33 ×11261
  EE34  69 80     ADC #$80                      ; 02E34 ×11261
  EE36  9D 09 05  STA $0509,X                   ; 02E36 ×11261
  EE39  90 EC     BCC loc_B0_EE27               ; 02E39 ×11261
  EE3B  BD 01 05  LDA $0501,X                   ; 02E3B ×5595
  EE3E  38        SEC                           ; 02E3E ×5595
  EE3F  E9 02     SBC #$02                      ; 02E3F ×5595
  EE41  9D 01 05  STA $0501,X                   ; 02E41 ×5595
  EE44  B0 08     BCS loc_B0_EE4E               ; 02E44 ×5595
  EE46  BD 02 05  LDA $0502,X                   ; 02E46 ×104
  EE49  49 01     EOR #$01                      ; 02E49 ×104
  EE4B  9D 02 05  STA $0502,X                   ; 02E4B ×104

loc_B0_EE4E:                    ; from 02e44
  EE4E  BC 04 05  LDY $0504,X                   ; 02E4E ×5595
  EE51  C8        INY                           ; 02E51 ×5595
  EE52  98        TYA                           ; 02E52 ×5595
  EE53  C0 0A     CPY #$0A                      ; 02E53 ×5595
  EE55  90 02     BCC loc_B0_EE59               ; 02E55 ×5595
  EE57  A9 06     LDA #$06                      ; 02E57 ×1309

loc_B0_EE59:                    ; from 02e55
  EE59  9D 04 05  STA $0504,X                   ; 02E59 ×5595
  EE5C  4C 21 ED  JMP loc_B0_ED21               ; 02E5C ×5595

sub_B0_EE5F:                    ; from 02c5a
  EE5F  A5 BE     LDA $BE                       ; 02E5F ×18966
  EE61  05 87     ORA $87                       ; 02E61 ×18966
  EE63  D0 2A     BNE loc_B0_EE8F               ; 02E63 ×18966
  EE65  A5 80     LDA $80                       ; 02E65 ×18838
  EE67  F0 26     BEQ loc_B0_EE8F               ; 02E67 ×18838
  EE69  A9 08     LDA #$08                      ; 02E69 ×12358
  EE6B  85 77     STA $77                       ; 02E6B ×12358
  EE6D  20 74 EF  JSR sub_B0_EF74               ; 02E6D ×12358
  EE70  A2 20     LDX #$20                      ; 02E70 ×12358

loc_B0_EE72:                    ; from 02e89
  EE72  BD 06 05  LDA $0506,X                   ; 02E72 ×37069
  EE75  10 0F     BPL loc_B0_EE86               ; 02E75 ×37069
  EE77  BD 00 05  LDA $0500,X                   ; 02E77 ×37069
  EE7A  F0 0A     BEQ loc_B0_EE86               ; 02E7A ×37069
  EE7C  20 53 EF  JSR sub_B0_EF53               ; 02E7C ×20227
  EE7F  B0 05     BCS loc_B0_EE86               ; 02E7F ×20227
  EE81  20 8F CC  JSR sub_B0_CC8F               ; 02E81 ×18723
  EE84  B0 0A     BCS loc_B0_EE90               ; 02E84 ×18723

loc_B0_EE86:                    ; from 02e7a 02e7f
  EE86  20 F2 C9  JSR sub_B0_C9F2               ; 02E86 ×37064
  EE89  10 E7     BPL loc_B0_EE72               ; 02E89 ×37064
  EE8B  A9 00     LDA #$00                      ; 02E8B ×12353
  EE8D  85 BE     STA $BE                       ; 02E8D ×12353

loc_B0_EE8F:                    ; from 02e67 02e63
  EE8F  60        RTS                           ; 02E8F ×18961

loc_B0_EE90:                    ; from 02e84
  EE90  E6 BE     INC $BE                       ; 02E90 ×5
  EE92  A9 67     LDA #$67                      ; 02E92 ×5
  EE94  9D 06 05  STA $0506,X                   ; 02E94 ×5
  EE97  A2 30     LDX #$30                      ; 02E97 ×5
  EE99  20 C2 EE  JSR sub_B0_EEC2               ; 02E99 ×5
  EE9C  A5 CA     LDA $CA                       ; 02E9C ×5
  EE9E  F0 15     BEQ $EEB5                     ; 02E9E ×5
  EEA0  38        SEC                           ; 02EA0 ×5
  EEA1  E9 01     SBC #$01                      ; 02EA1 ×5
  EEA3  F0 08     BEQ loc_B0_EEAD               ; 02EA3 ×5
  EEA5  A9 01     LDA #$01                      ; 02EA5 ×0
  EEA7  85 77     STA $77                       ; 02EA7 ×0
  EEA9  A9 02     LDA #$02                      ; 02EA9 ×0
  EEAB  D0 0E     BNE loc_B0_EEBB               ; 02EAB ×0

loc_B0_EEAD:                    ; from 02ea3
  EEAD  A9 02     LDA #$02                      ; 02EAD ×5
  EEAF  85 77     STA $77                       ; 02EAF ×5
  EEB1  A9 01     LDA #$01                      ; 02EB1 ×5
  EEB3  D0 06     BNE loc_B0_EEBB               ; 02EB3 ×5
  EEB5  A9 02     LDA #$02                      ; 02EB5 ×0
  EEB7  85 77     STA $77                       ; 02EB7 ×0
  EEB9  A9 00     LDA #$00                      ; 02EB9 ×0

loc_B0_EEBB:                    ; from 02eb3
  EEBB  85 A7     STA $A7                       ; 02EBB ×5
  EEBD  A5 77     LDA $77                       ; 02EBD ×5
  EEBF  85 87     STA $87                       ; 02EBF ×5
  EEC1  60        RTS                           ; 02EC1 ×5

sub_B0_EEC2:                    ; from 02d7e 02f48 02e99
  EEC2  A9 01     LDA #$01                      ; 02EC2 ×138
  EEC4  95 70     STA $70,X                     ; 02EC4 ×138
  EEC6  A9 B8     LDA #$B8                      ; 02EC6 ×138
  EEC8  95 73     STA $73,X                     ; 02EC8 ×138
  EECA  A5 77     LDA $77                       ; 02ECA ×138
  EECC  95 74     STA $74,X                     ; 02ECC ×138
  EECE  A9 00     LDA #$00                      ; 02ECE ×138
  EED0  95 75     STA $75,X                     ; 02ED0 ×138
  EED2  95 77     STA $77,X                     ; 02ED2 ×138
  EED4  A9 20     LDA #$20                      ; 02ED4 ×138
  EED6  95 76     STA $76,X                     ; 02ED6 ×138
  EED8  60        RTS                           ; 02ED8 ×138

sub_B0_EED9:                    ; from 02c5d
  EED9  A6 B3     LDX $B3                       ; 02ED9 ×18966
  EEDB  D0 0C     BNE loc_B0_EEE9               ; 02EDB ×18966
  EEDD  A5 DF     LDA $DF                       ; 02EDD ×18502
  EEDF  D0 09     BNE loc_B0_EEEA               ; 02EDF ×18502
  EEE1  A5 BE     LDA $BE                       ; 02EE1 ×5583
  EEE3  F0 53     BEQ loc_B0_EF38               ; 02EE3 ×5583
  EEE5  A2 01     LDX #$01                      ; 02EE5 ×3
  EEE7  86 0F     STX $0F                       ; 02EE7 ×3

loc_B0_EEE9:                    ; from 02edb
  EEE9  60        RTS                           ; 02EE9 ×467

loc_B0_EEEA:                    ; from 02edf
  EEEA  20 03 E9  JSR sub_B0_E903               ; 02EEA ×12919
  EEED  A2 10     LDX #$10                      ; 02EED ×12919
  EEEF  B5 70     LDA $70,X                     ; 02EEF ×12919
  EEF1  F0 0C     BEQ loc_B0_EEFF               ; 02EF1 ×12919
  EEF3  A9 00     LDA #$00                      ; 02EF3 ×6831
  EEF5  85 77     STA $77                       ; 02EF5 ×6831
  EEF7  20 74 EF  JSR sub_B0_EF74               ; 02EF7 ×6831
  EEFA  20 8F CC  JSR sub_B0_CC8F               ; 02EFA ×6831
  EEFD  B0 39     BCS loc_B0_EF38               ; 02EFD ×6831

loc_B0_EEFF:                    ; from 02ef1
  EEFF  A5 73     LDA $73                       ; 02EFF ×6126
  EF01  C9 A4     CMP #$A4                      ; 02F01 ×6126
  EF03  90 04     BCC loc_B0_EF09               ; 02F03 ×6126
  EF05  A9 01     LDA #$01                      ; 02F05 ×96
  EF07  85 B3     STA $B3                       ; 02F07 ×96

loc_B0_EF09:                    ; from 02f03
  EF09  20 03 E9  JSR sub_B0_E903               ; 02F09 ×6126
  EF0C  A2 20     LDX #$20                      ; 02F0C ×6126

loc_B0_EF0E:                    ; from 02f32
  EF0E  BD 00 05  LDA $0500,X                   ; 02F0E ×18332
  EF11  F0 1C     BEQ loc_B0_EF2F               ; 02F11 ×18332
  EF13  20 53 EF  JSR sub_B0_EF53               ; 02F13 ×13845
  EF16  B0 17     BCS loc_B0_EF2F               ; 02F16 ×13845
  EF18  86 F9     STX $F9                       ; 02F18 ×13399
  EF1A  20 8F CC  JSR sub_B0_CC8F               ; 02F1A ×13399
  EF1D  90 10     BCC loc_B0_EF2F               ; 02F1D ×13399
  EF1F  8A        TXA                           ; 02F1F ×677
  EF20  20 DF F7  JSR sub_B0_F7DF               ; 02F20 ×677
  EF23  A9 01     LDA #$01                      ; 02F23 ×677
  EF25  95 D9     STA $D9,X                     ; 02F25 ×677
  EF27  A6 F9     LDX $F9                       ; 02F27 ×677
  EF29  A5 73     LDA $73                       ; 02F29 ×677
  EF2B  C9 A4     CMP #$A4                      ; 02F2B ×677
  EF2D  B0 0E     BCS loc_B0_EF3D               ; 02F2D ×677

loc_B0_EF2F:                    ; from 02f1d 02f11 02f16
  EF2F  20 F2 C9  JSR sub_B0_C9F2               ; 02F2F ×18294
  EF32  10 DA     BPL loc_B0_EF0E               ; 02F32 ×18294
  EF34  A2 00     LDX #$00                      ; 02F34 ×6088
  EF36  F0 02     BEQ loc_B0_EF3A               ; 02F36 ×6088

loc_B0_EF38:                    ; from 02efd 02ee3 02f51
  EF38  A2 01     LDX #$01                      ; 02F38 ×12411

loc_B0_EF3A:                    ; from 02f36
  EF3A  86 B8     STX $B8                       ; 02F3A ×18499
  EF3C  60        RTS                           ; 02F3C ×18499

loc_B0_EF3D:                    ; from 02f2d
  EF3D  A9 67     LDA #$67                      ; 02F3D ×38
  EF3F  9D 06 05  STA $0506,X                   ; 02F3F ×38
  EF42  A2 A0     LDX #$A0                      ; 02F42 ×38
  EF44  86 73     STX $73                       ; 02F44 ×38
  EF46  A2 10     LDX #$10                      ; 02F46 ×38
  EF48  20 C2 EE  JSR sub_B0_EEC2               ; 02F48 ×38
  EF4B  A9 00     LDA #$00                      ; 02F4B ×38
  EF4D  85 DE     STA $DE                       ; 02F4D ×38
  EF4F  85 B3     STA $B3                       ; 02F4F ×38
  EF51  F0 E5     BEQ loc_B0_EF38               ; 02F51 ×38

sub_B0_EF53:                    ; from 02e7c 02f13
  EF53  A9 10     LDA #$10                      ; 02F53 ×34072
  EF55  8D C9 03  STA $03C9                     ; 02F55 ×34072
  EF58  20 16 CC  JSR sub_B0_CC16               ; 02F58 ×34072
  EF5B  B0 12     BCS loc_B0_EF6F               ; 02F5B ×34072
  EF5D  BD 04 05  LDA $0504,X                   ; 02F5D ×33232
  EF60  38        SEC                           ; 02F60 ×33232
  EF61  E9 06     SBC #$06                      ; 02F61 ×33232
  EF63  A8        TAY                           ; 02F63 ×33232
  EF64  B9 70 EF  LDA $EF70,Y                   ; 02F64 ×33232
  EF67  18        CLC                           ; 02F67 ×33232
  EF68  65 77     ADC $77                       ; 02F68 ×33232
  EF6A  8D CB 03  STA $03CB                     ; 02F6A ×33232
  EF6D  B0 00     BCS loc_B0_EF6F               ; 02F6D ×33232

loc_B0_EF6F:                    ; from 02f5b
  EF6F  60        RTS                           ; 02F6F ×34072
  EF70  .byte 00 06 04 02                                       ; 02F70 data, read by 02f64

sub_B0_EF74:                    ; from 02e6d 02ef7
  EF74  A0 01     LDY #$01                      ; 02F74 ×19189

loc_B0_EF76:                    ; from 02f84
  EF76  B9 8D EF  LDA $EF8D,Y                   ; 02F76 ×38378
  EF79  A6 77     LDX $77                       ; 02F79 ×38378
  EF7B  D0 03     BNE loc_B0_EF80               ; 02F7B ×38378
  EF7D  B9 8D EF  LDA $EF8D,Y                   ; 02F7D ×13662

loc_B0_EF80:                    ; from 02f7b
  EF80  99 8C 00  STA $008C,Y                   ; 02F80 ×38378
  EF83  88        DEY                           ; 02F83 ×38378
  EF84  10 F0     BPL loc_B0_EF76               ; 02F84 ×38378
  EF86  A4 77     LDY $77                       ; 02F86 ×19189
  EF88  A2 10     LDX #$10                      ; 02F88 ×19189
  EF8A  4C 62 CC  JMP sub_B0_CC62               ; 02F8A ×19189
  EF8D  .byte 00 18                                             ; 02F8D data, read by 02f76 02f7d

jt_B0_EF8F:                    ; from 004e0
  EF8F  A6 CF     LDX $CF                       ; 02F8F ×34003
  EF91  F0 1F     BEQ loc_B0_EFB2               ; 02F91 ×34003
  EF93  A5 0F     LDA $0F                       ; 02F93 ×33948
  EF95  D0 15     BNE loc_B0_EFAC               ; 02F95 ×33948
  EF97  20 11 DA  JSR sub_B0_DA11               ; 02F97 ×25538
  EF9A  20 78 F0  JSR sub_B0_F078               ; 02F9A ×25538
  EF9D  20 C7 EF  JSR sub_B0_EFC7               ; 02F9D ×25538
  EFA0  20 B5 F0  JSR sub_B0_F0B5               ; 02FA0 ×25538
  EFA3  20 8C F0  JSR sub_B0_F08C               ; 02FA3 ×25538

loc_B0_EFA6:                    ; from 02faf
  EFA6  20 07 D8  JSR sub_B0_D807               ; 02FA6 ×33948
  EFA9  4C B6 DB  JMP sub_B0_DBB6               ; 02FA9 ×33948

loc_B0_EFAC:                    ; from 02f95
  EFAC  20 58 DC  JSR sub_B0_DC58               ; 02FAC ×8410
  EFAF  4C A6 EF  JMP loc_B0_EFA6               ; 02FAF ×8410

loc_B0_EFB2:                    ; from 02f91
  EFB2  E6 CF     INC $CF                       ; 02FB2 ×55
  EFB4  A2 00     LDX #$00                      ; 02FB4 ×55
  EFB6  86 AF     STX $AF                       ; 02FB6 ×55
  EFB8  8E 23 03  STX $0323                     ; 02FB8 ×55
  EFBB  E8        INX                           ; 02FBB ×55
  EFBC  86 B8     STX $B8                       ; 02FBC ×55
  EFBE  A5 6D     LDA $6D                       ; 02FBE ×55
  EFC0  29 FC     AND #$FC                      ; 02FC0 ×55
  EFC2  85 6D     STA $6D                       ; 02FC2 ×55
  EFC4  4C 06 C9  JMP loc_B0_C906               ; 02FC4 ×55

sub_B0_EFC7:                    ; from 02f9d
  EFC7  A5 69     LDA $69                       ; 02FC7 ×25538
  EFC9  C9 02     CMP #$02                      ; 02FC9 ×25538
  EFCB  90 2B     BCC loc_B0_EFF8               ; 02FCB ×25538
  EFCD  A5 92     LDA $92                       ; 02FCD ×24880
  EFCF  F0 0B     BEQ loc_B0_EFDC               ; 02FCF ×24880
  EFD1  A5 6A     LDA $6A                       ; 02FD1 ×1516
  EFD3  29 F8     AND #$F8                      ; 02FD3 ×1516
  EFD5  C5 94     CMP $94                       ; 02FD5 ×1516
  EFD7  F0 1F     BEQ loc_B0_EFF8               ; 02FD7 ×1516
  EFD9  C6 92     DEC $92                       ; 02FD9 ×357
  EFDB  60        RTS                           ; 02FDB ×357

loc_B0_EFDC:                    ; from 02fcf
  EFDC  20 C9 E6  JSR sub_B0_E6C9               ; 02FDC ×23364
  EFDF  A8        TAY                           ; 02FDF ×23364
  EFE0  B9 27 F0  LDA $F027,Y                   ; 02FE0 ×23364
  EFE3  29 F0     AND #$F0                      ; 02FE3 ×23364
  EFE5  85 94     STA $94                       ; 02FE5 ×23364
  EFE7  A5 6A     LDA $6A                       ; 02FE7 ×23364
  EFE9  29 F8     AND #$F8                      ; 02FE9 ×23364
  EFEB  C5 94     CMP $94                       ; 02FEB ×23364
  EFED  D0 09     BNE loc_B0_EFF8               ; 02FED ×23364
  EFEF  20 F9 EF  JSR sub_B0_EFF9               ; 02FEF ×357
  EFF2  E6 6D     INC $6D                       ; 02FF2 ×357
  EFF4  E6 6D     INC $6D                       ; 02FF4 ×357
  EFF6  E6 92     INC $92                       ; 02FF6 ×357

loc_B0_EFF8:                    ; from 02fed 02fd7 02fcb
  EFF8  60        RTS                           ; 02FF8 ×25181

sub_B0_EFF9:                    ; from 02fef
  EFF9  A2 20     LDX #$20                      ; 02FF9 ×357

loc_B0_EFFB:                    ; from 03003
  EFFB  BD 00 05  LDA $0500,X                   ; 02FFB ×689
  EFFE  F0 06     BEQ loc_B0_F006               ; 02FFE ×689
  F000  20 F2 C9  JSR sub_B0_C9F2               ; 03000 ×332
  F003  10 F6     BPL loc_B0_EFFB               ; 03003 ×332
  F005  60        RTS                           ; 03005 inferred, not run

loc_B0_F006:                    ; from 02ffe
  F006  20 67 F0  JSR sub_B0_F067               ; 03006 ×357
  F009  B9 27 F0  LDA $F027,Y                   ; 03009 ×357
  F00C  29 03     AND #$03                      ; 0300C ×357
  F00E  84 8E     STY $8E                       ; 0300E ×357
  F010  A8        TAY                           ; 03010 ×357
  F011  B9 23 F0  LDA $F023,Y                   ; 03011 ×357
  F014  9D 04 05  STA $0504,X                   ; 03014 ×357
  F017  A4 8E     LDY $8E                       ; 03017 ×357
  F019  C8        INY                           ; 03019 ×357
  F01A  B9 27 F0  LDA $F027,Y                   ; 0301A ×357
  F01D  9D 03 05  STA $0503,X                   ; 0301D ×357
  F020  4C 1C ED  JMP loc_B0_ED1C               ; 03020 ×357
  F023  .byte 0E 0C 0A                                          ; 03023 data, read by 03011
  F026  .byte 0E                                                ; 03026
  F027  .byte 78 98 B8 98 68 90 B8 98 78 98 B8 90 78 90 B8 90   ; 03027 data, read by 02fe0 03009 0301a
  F037  .byte 79 98 B8 90 79 90 C9 98 79 90 B8 98 68 98 C9 98   ; 03037
  F047  .byte 59 98 C9 98 7A 98 B9 98 68 90 B9 78 78 98 BA 90   ; 03047
  F057  .byte 4A 98 AA 98 6A 98 B9 90 68 98 AA 78 58 98 C8 98   ; 03057 data, read by 02fe0 03009 0301a

sub_B0_F067:                    ; from 03006
  F067  A5 6A     LDA $6A                       ; 03067 ×357
  F069  29 F8     AND #$F8                      ; 03069 ×357
  F06B  9D 01 05  STA $0501,X                   ; 0306B ×357

sub_B0_F06E:                    ; from 00d94 025e4
  F06E  A5 6B     LDA $6B                       ; 0306E ×392
  F070  29 01     AND #$01                      ; 03070 ×392
  F072  49 01     EOR #$01                      ; 03072 ×392
  F074  9D 02 05  STA $0502,X                   ; 03074 ×392
  F077  60        RTS                           ; 03077 ×392

sub_B0_F078:                    ; from 02f9a
  F078  A2 20     LDX #$20                      ; 03078 ×25538

loc_B0_F07A:                    ; from 03082
  F07A  20 9A E5  JSR sub_B0_E59A               ; 0307A ×76341
  F07D  B0 06     BCS loc_B0_F085               ; 0307D ×76341
  F07F  20 F2 C9  JSR sub_B0_C9F2               ; 0307F ×76109
  F082  10 F6     BPL loc_B0_F07A               ; 03082 ×76109

loc_B0_F084:                    ; from 030a0 03093
  F084  60        RTS                           ; 03084 ×50370

loc_B0_F085:                    ; from 0307d
  F085  A5 6B     LDA $6B                       ; 03085 ×232
  F087  F0 FB     BEQ loc_B0_F084               ; 03087 ×232
  F089  4C 94 EC  JMP loc_B0_EC94               ; 03089 ×232

sub_B0_F08C:                    ; from 02fa3
  F08C  A5 90     LDA $90                       ; 0308C ×25538
  F08E  F0 0E     BEQ loc_B0_F09E               ; 0308E ×25538
  F090  CE A7 00  DEC $00A7                     ; 03090 ×711
  F093  D0 EF     BNE loc_B0_F084               ; 03093 ×711
  F095  A9 00     LDA #$00                      ; 03095 ×237
  F097  85 A8     STA $A8                       ; 03097 ×237
  F099  85 90     STA $90                       ; 03099 ×237
  F09B  4C A8 F0  JMP loc_B0_F0A8               ; 0309B ×237

loc_B0_F09E:                    ; from 0308e
  F09E  A5 A8     LDA $A8                       ; 0309E ×24827
  F0A0  F0 E2     BEQ loc_B0_F084               ; 030A0 ×24827
  F0A2  A9 03     LDA #$03                      ; 030A2 ×237
  F0A4  85 A7     STA $A7                       ; 030A4 ×237
  F0A6  E6 90     INC $90                       ; 030A6 ×237

loc_B0_F0A8:                    ; from 0309b
  F0A8  A6 91     LDX $91                       ; 030A8 ×474
  F0AA  BD 04 05  LDA $0504,X                   ; 030AA ×474
  F0AD  49 01     EOR #$01                      ; 030AD ×474
  F0AF  9D 04 05  STA $0504,X                   ; 030AF ×474
  F0B2  4C 21 ED  JMP loc_B0_ED21               ; 030B2 ×474

sub_B0_F0B5:                    ; from 02fa0
  F0B5  20 D1 D9  JSR sub_B0_D9D1               ; 030B5 ×25538
  F0B8  20 03 E9  JSR sub_B0_E903               ; 030B8 ×25538
  F0BB  A2 20     LDX #$20                      ; 030BB ×25538

loc_B0_F0BD:                    ; from 030f1
  F0BD  BD 00 05  LDA $0500,X                   ; 030BD ×76324
  F0C0  F0 2C     BEQ loc_B0_F0EE               ; 030C0 ×76324
  F0C2  A5 CB     LDA $CB                       ; 030C2 ×50079
  F0C4  0D 88 03  ORA $0388                     ; 030C4 ×50079
  F0C7  D0 1B     BNE loc_B0_F0E4               ; 030C7 ×50079
  F0C9  20 02 F1  JSR sub_B0_F102               ; 030C9 ×26702
  F0CC  B0 20     BCS loc_B0_F0EE               ; 030CC ×26702
  F0CE  20 8F CC  JSR sub_B0_CC8F               ; 030CE ×22577
  F0D1  90 1B     BCC loc_B0_F0EE               ; 030D1 ×22577
  F0D3  A5 73     LDA $73                       ; 030D3 ×3190
  F0D5  18        CLC                           ; 030D5 ×3190
  F0D6  69 14     ADC #$14                      ; 030D6 ×3190
  F0D8  DD 03 05  CMP $0503,X                   ; 030D8 ×3190
  F0DB  90 11     BCC loc_B0_F0EE               ; 030DB ×3190
  F0DD  E9 04     SBC #$04                      ; 030DD ×355
  F0DF  DD 03 05  CMP $0503,X                   ; 030DF ×355
  F0E2  90 5D     BCC loc_B0_F141               ; 030E2 ×355

loc_B0_F0E4:                    ; from 030c7
  F0E4  20 F4 F0  JSR sub_B0_F0F4               ; 030E4 ×23495
  F0E7  B0 05     BCS loc_B0_F0EE               ; 030E7 ×23495
  F0E9  20 7E CC  JSR sub_B0_CC7E               ; 030E9 ×21070
  F0EC  B0 43     BCS loc_B0_F131               ; 030EC ×21070

loc_B0_F0EE:                    ; from 030c0 030d1 030cc 030db 030e7
  F0EE  20 F2 C9  JSR sub_B0_C9F2               ; 030EE ×76051
  F0F1  10 CA     BPL loc_B0_F0BD               ; 030F1 ×76051
  F0F3  60        RTS                           ; 030F3 ×25265

sub_B0_F0F4:                    ; from 030e4
  F0F4  A9 0B     LDA #$0B                      ; 030F4 ×23495
  F0F6  8D C8 03  STA $03C8                     ; 030F6 ×23495
  F0F9  A9 05     LDA #$05                      ; 030F9 ×23495
  F0FB  18        CLC                           ; 030FB ×23495
  F0FC  7D 03 05  ADC $0503,X                   ; 030FC ×23495
  F0FF  8D CA 03  STA $03CA                     ; 030FF ×23495

sub_B0_F102:                    ; from 030c9
  F102  A9 00     LDA #$00                      ; 03102 ×50197
  F104  8D CB 03  STA $03CB                     ; 03104 ×50197
  F107  BD 04 05  LDA $0504,X                   ; 03107 ×50197
  F10A  38        SEC                           ; 0310A ×50197
  F10B  E9 0A     SBC #$0A                      ; 0310B ×50197
  F10D  4A        LSR A                         ; 0310D ×50197
  F10E  A8        TAY                           ; 0310E ×50197
  F10F  B9 2E F1  LDA $F12E,Y                   ; 0310F ×50197
  F112  8D C9 03  STA $03C9                     ; 03112 ×50197
  F115  BD 01 05  LDA $0501,X                   ; 03115 ×50197
  F118  18        CLC                           ; 03118 ×50197
  F119  6D CB 03  ADC $03CB                     ; 03119 ×50197
  F11C  85 77     STA $77                       ; 0311C ×50197
  F11E  BD 02 05  LDA $0502,X                   ; 0311E ×50197
  F121  69 00     ADC #$00                      ; 03121 ×50197
  F123  29 01     AND #$01                      ; 03123 ×50197
  F125  85 78     STA $78                       ; 03125 ×50197
  F127  20 20 CC  JSR sub_B0_CC20               ; 03127 ×50197
  F12A  8D CB 03  STA $03CB                     ; 0312A ×50197
  F12D  60        RTS                           ; 0312D ×50197
  F12E  .byte 0C 1C 2C                                          ; 0312E data, read by 0310f

loc_B0_F131:                    ; from 030ec
  F131  A0 10     LDY #$10                      ; 03131 ×36
  F133  8C 14 03  STY $0314                     ; 03133 ×36
  F136  A0 00     LDY #$00                      ; 03136 ×36
  F138  84 B8     STY $B8                       ; 03138 ×36
  F13A  A0 01     LDY #$01                      ; 0313A ×36
  F13C  84 AF     STY $AF                       ; 0313C ×36
  F13E  84 0F     STY $0F                       ; 0313E ×36
  F140  60        RTS                           ; 03140 ×36

loc_B0_F141:                    ; from 030e2
  F141  A5 74     LDA $74                       ; 03141 ×237
  F143  8D 38 03  STA $0338                     ; 03143 ×237
  F146  A5 73     LDA $73                       ; 03146 ×237
  F148  18        CLC                           ; 03148 ×237
  F149  69 0E     ADC #$0E                      ; 03149 ×237
  F14B  8D 39 03  STA $0339                     ; 0314B ×237
  F14E  A5 A8     LDA $A8                       ; 0314E ×237
  F150  D0 03     BNE $F155                     ; 03150 ×237
  F152  EE 23 03  INC $0323                     ; 03152 ×237
  F155  A9 00     LDA #$00                      ; 03155 ×237
  F157  85 CD     STA $CD                       ; 03157 ×237
  F159  86 91     STX $91                       ; 03159 ×237
  F15B  A9 01     LDA #$01                      ; 0315B ×237
  F15D  85 A8     STA $A8                       ; 0315D ×237
  F15F  8D 8E 03  STA $038E                     ; 0315F ×237
  F162  60        RTS                           ; 03162 ×237

jt_B0_F163:                    ; from 004e0
  F163  A5 CF     LDA $CF                       ; 03163 ×73410
  F165  20 CD C4  JSR sub_B0_C4CD               ; 03165 ×73410
  F168  .byte 72 F1 86 F1 CF F1 49 F6 55 F6                     ; 03168 data, read by 004d6 004da

jt_B0_F172:                    ; from 004e0
  F172  A2 00     LDX #$00                      ; 03172 ×199
  F174  86 87     STX $87                       ; 03174 ×199
  F176  A2 00     LDX #$00                      ; 03176 ×199
  F178  86 D0     STX $D0                       ; 03178 ×199
  F17A  86 D3     STX $D3                       ; 0317A ×199
  F17C  86 AA     STX $AA                       ; 0317C ×199
  F17E  A2 20     LDX #$20                      ; 0317E ×199
  F180  20 88 F1  JSR sub_B0_F188               ; 03180 ×199
  F183  4C 06 C9  JMP loc_B0_C906               ; 03183 ×199

jt_B0_F186:                    ; from 004e0
  F186  A2 40     LDX #$40                      ; 03186 ×199

sub_B0_F188:                    ; from 03180
  F188  86 7C     STX $7C                       ; 03188 ×398
  F18A  86 8D     STX $8D                       ; 0318A ×398
  F18C  A5 AD     LDA $AD                       ; 0318C ×398
  F18E  4A        LSR A                         ; 0318E ×398
  F18F  85 F8     STA $F8                       ; 0318F ×398
  F191  20 58 F7  JSR sub_B0_F758               ; 03191 ×398
  F194  A0 0C     LDY #$0C                      ; 03194 ×398

loc_B0_F196:                    ; from 031a7
  F196  B9 B5 F1  LDA $F1B5,Y                   ; 03196 ×5174
  F199  A6 CF     LDX $CF                       ; 03199 ×5174
  F19B  F0 03     BEQ loc_B0_F1A0               ; 0319B ×5174
  F19D  B9 C2 F1  LDA $F1C2,Y                   ; 0319D ×2587

loc_B0_F1A0:                    ; from 0319b
  F1A0  A6 8D     LDX $8D                       ; 031A0 ×5174
  F1A2  95 7C     STA $7C,X                     ; 031A2 ×5174
  F1A4  C6 8D     DEC $8D                       ; 031A4 ×5174
  F1A6  88        DEY                           ; 031A6 ×5174
  F1A7  10 ED     BPL loc_B0_F196               ; 031A7 ×5174
  F1A9  20 DB F2  JSR sub_B0_F2DB               ; 031A9 ×398
  F1AC  E6 CF     INC $CF                       ; 031AC ×398
  F1AE  E6 AD     INC $AD                       ; 031AE ×398
  F1B0  E6 AD     INC $AD                       ; 031B0 ×398
  F1B2  4C 72 F6  JMP loc_B0_F672               ; 031B2 ×398
  F1B5  .byte 01 FE 3C 3C 50 00 23 09 00 08 01 00 08 01 FE 6C   ; 031B5 data, read by 03196 0319d
  F1C5  .byte 3C D0 00 2C 09 00 08 02 00 05                     ; 031C5 data, read by 0319d 03735

sub_B0_F1CF:                    ; from 03655 004e0
  F1CF  A5 D0     LDA $D0                       ; 031CF ×73012
  F1D1  20 66 F6  JSR sub_B0_F666               ; 031D1 ×73012
  F1D4  A0 00     LDY #$00                      ; 031D4 ×73012
  F1D6  84 D2     STY $D2                       ; 031D6 ×73012
  F1D8  A5 D0     LDA $D0                       ; 031D8 ×73012
  F1DA  C5 87     CMP $87                       ; 031DA ×73012
  F1DC  D0 01     BNE loc_B0_F1DF               ; 031DC ×73012
  F1DE  C8        INY                           ; 031DE ×26585

loc_B0_F1DF:                    ; from 031dc
  F1DF  84 88     STY $88                       ; 031DF ×73012
  F1E1  B5 70     LDA $70,X                     ; 031E1 ×73012
  F1E3  F0 30     BEQ loc_B0_F215               ; 031E3 ×73012
  F1E5  B5 7F     LDA $7F,X                     ; 031E5 ×70466
  F1E7  10 04     BPL loc_B0_F1ED               ; 031E7 ×70466
  F1E9  A9 00     LDA #$00                      ; 031E9 inferred, not run
  F1EB  F0 06     BEQ loc_B0_F1F3               ; 031EB inferred, not run

loc_B0_F1ED:                    ; from 031e7
  F1ED  C9 10     CMP #$10                      ; 031ED ×70466
  F1EF  90 02     BCC loc_B0_F1F3               ; 031EF ×70466
  F1F1  A9 0F     LDA #$0F                      ; 031F1 inferred, not run

loc_B0_F1F3:                    ; from 031ef
  F1F3  85 F8     STA $F8                       ; 031F3 ×70466
  F1F5  A2 06     LDX #$06                      ; 031F5 ×70466
  F1F7  A0 08     LDY #$08                      ; 031F7 ×70466

loc_B0_F1F9:                    ; from 03200
  F1F9  D9 26 F2  CMP $F226,Y                   ; 031F9 ×74522
  F1FC  B0 04     BCS loc_B0_F202               ; 031FC ×74522
  F1FE  88        DEY                           ; 031FE ×4056
  F1FF  CA        DEX                           ; 031FF ×4056
  F200  D0 F7     BNE loc_B0_F1F9               ; 03200 ×4056

loc_B0_F202:                    ; from 031fc
  F202  A6 7C     LDX $7C                       ; 03202 ×70466
  F204  94 79     STY $79,X                     ; 03204 ×70466
  F206  A4 F8     LDY $F8                       ; 03206 ×70466
  F208  B9 2F F2  LDA $F22F,Y                   ; 03208 ×70466
  F20B  18        CLC                           ; 0320B ×70466
  F20C  75 78     ADC $78,X                     ; 0320C ×70466
  F20E  95 78     STA $78,X                     ; 0320E ×70466
  F210  90 03     BCC loc_B0_F215               ; 03210 ×70466
  F212  20 3F F2  JSR sub_B0_F23F               ; 03212 ×24278

loc_B0_F215:                    ; from 03210 031e3
  F215  A5 0F     LDA $0F                       ; 03215 ×73012
  F217  D0 06     BNE loc_B0_F21F               ; 03217 ×73012
  F219  20 42 F3  JSR sub_B0_F342               ; 03219 ×31839
  F21C  20 CD F6  JSR sub_B0_F6CD               ; 0321C ×31839

loc_B0_F21F:                    ; from 03217
  F21F  A5 D0     LDA $D0                       ; 0321F ×73012
  F221  49 01     EOR #$01                      ; 03221 ×73012
  F223  85 D0     STA $D0                       ; 03223 ×73012
  F225  60        RTS                           ; 03225 ×73012
  F226  .byte 00 00 00 01 03 05 07                              ; 03226
  F22D  .byte 09 0C                                             ; 0322D data, read by 031f9
  F22F  .byte 1C 20 28 20 28 28 30 30 38 30                     ; 0322F
  F239  .byte 38                                                ; 03239 data, read by 03208
  F23A  .byte 40                                                ; 0323A
  F23B  .byte 40 48 54 5C                                       ; 0323B data, read by 03208

sub_B0_F23F:                    ; from 03212
  F23F  A6 7C     LDX $7C                       ; 0323F ×24278
  F241  B5 7A     LDA $7A,X                     ; 03241 ×24278
  F243  C9 00     CMP #$00                      ; 03243 ×24278
  F245  F0 41     BEQ loc_B0_F288               ; 03245 ×24278
  F247  C9 01     CMP #$01                      ; 03247 ×23587
  F249  F0 45     BEQ loc_B0_F290               ; 03249 ×23587
  F24B  C9 02     CMP #$02                      ; 0324B ×11592
  F24D  F0 08     BEQ loc_B0_F257               ; 0324D ×11592
  F24F  A9 02     LDA #$02                      ; 0324F ×590
  F251  95 7A     STA $7A,X                     ; 03251 ×590
  F253  A9 00     LDA #$00                      ; 03253 ×590
  F255  95 7B     STA $7B,X                     ; 03255 ×590

loc_B0_F257:                    ; from 0324d
  F257  B5 7B     LDA $7B,X                     ; 03257 ×11592
  F259  F0 0C     BEQ loc_B0_F267               ; 03259 ×11592
  F25B  B5 7C     LDA $7C,X                     ; 0325B ×6015
  F25D  D5 79     CMP $79,X                     ; 0325D ×6015
  F25F  90 06     BCC loc_B0_F267               ; 0325F ×6015
  F261  A9 00     LDA #$00                      ; 03261 ×697
  F263  95 7A     STA $7A,X                     ; 03263 ×697
  F265  F0 57     BEQ loc_B0_F2BE               ; 03265 ×697

loc_B0_F267:                    ; from 03259 0325f
  F267  E6 D2     INC $D2                       ; 03267 ×10895
  F269  B5 76     LDA $76,X                     ; 03269 ×10895
  F26B  38        SEC                           ; 0326B ×10895
  F26C  E9 01     SBC #$01                      ; 0326C ×10895
  F26E  95 76     STA $76,X                     ; 0326E ×10895
  F270  C9 2A     CMP #$2A                      ; 03270 ×10895
  F272  D0 06     BNE loc_B0_F27A               ; 03272 ×10895
  F274  A9 01     LDA #$01                      ; 03274 ×847
  F276  95 7B     STA $7B,X                     ; 03276 ×847
  F278  D0 04     BNE loc_B0_F27E               ; 03278 ×847

loc_B0_F27A:                    ; from 03272
  F27A  C9 2B     CMP #$2B                      ; 0327A ×10048
  F27C  D0 40     BNE loc_B0_F2BE               ; 0327C ×10048

loc_B0_F27E:                    ; from 03278
  F27E  38        SEC                           ; 0327E ×1704
  F27F  B5 74     LDA $74,X                     ; 0327F ×1704
  F281  E9 03     SBC #$03                      ; 03281 ×1704
  F283  95 74     STA $74,X                     ; 03283 ×1704
  F285  4C BE F2  JMP loc_B0_F2BE               ; 03285 ×1704

loc_B0_F288:                    ; from 03245
  F288  A9 01     LDA #$01                      ; 03288 ×691
  F28A  95 7A     STA $7A,X                     ; 0328A ×691
  F28C  A9 00     LDA #$00                      ; 0328C ×691
  F28E  95 7B     STA $7B,X                     ; 0328E ×691

loc_B0_F290:                    ; from 03249
  F290  B5 7B     LDA $7B,X                     ; 03290 ×12686
  F292  F0 0C     BEQ loc_B0_F2A0               ; 03292 ×12686
  F294  B5 7C     LDA $7C,X                     ; 03294 ×5336
  F296  D5 79     CMP $79,X                     ; 03296 ×5336
  F298  90 06     BCC loc_B0_F2A0               ; 03298 ×5336
  F29A  A9 03     LDA #$03                      ; 0329A ×598
  F29C  95 7A     STA $7A,X                     ; 0329C ×598
  F29E  D0 1E     BNE loc_B0_F2BE               ; 0329E ×598

loc_B0_F2A0:                    ; from 03292 03298
  F2A0  E6 D2     INC $D2                       ; 032A0 ×12088
  F2A2  B5 76     LDA $76,X                     ; 032A2 ×12088
  F2A4  18        CLC                           ; 032A4 ×12088
  F2A5  69 01     ADC #$01                      ; 032A5 ×12088
  F2A7  95 76     STA $76,X                     ; 032A7 ×12088
  F2A9  C9 2C     CMP #$2C                      ; 032A9 ×12088
  F2AB  D0 06     BNE loc_B0_F2B3               ; 032AB ×12088
  F2AD  A9 01     LDA #$01                      ; 032AD ×738
  F2AF  95 7B     STA $7B,X                     ; 032AF ×738
  F2B1  D0 04     BNE loc_B0_F2B7               ; 032B1 ×738

loc_B0_F2B3:                    ; from 032ab
  F2B3  C9 2B     CMP #$2B                      ; 032B3 ×11350
  F2B5  D0 07     BNE loc_B0_F2BE               ; 032B5 ×11350

loc_B0_F2B7:                    ; from 032b1
  F2B7  18        CLC                           ; 032B7 ×1494
  F2B8  B5 74     LDA $74,X                     ; 032B8 ×1494
  F2BA  69 03     ADC #$03                      ; 032BA ×1494
  F2BC  95 74     STA $74,X                     ; 032BC ×1494

loc_B0_F2BE:                    ; from 032b5 0327c 03285 03265 0329e
  F2BE  20 DB F2  JSR sub_B0_F2DB               ; 032BE ×24278
  F2C1  A6 7C     LDX $7C                       ; 032C1 ×24278
  F2C3  B5 76     LDA $76,X                     ; 032C3 ×24278
  F2C5  38        SEC                           ; 032C5 ×24278
  F2C6  E9 2B     SBC #$2B                      ; 032C6 ×24278
  F2C8  F0 0C     BEQ loc_B0_F2D6               ; 032C8 ×24278
  F2CA  10 0C     BPL loc_B0_F2D8               ; 032CA ×22665
  F2CC  85 77     STA $77                       ; 032CC ×12718
  F2CE  38        SEC                           ; 032CE ×12718
  F2CF  A9 00     LDA #$00                      ; 032CF ×12718
  F2D1  E5 77     SBC $77                       ; 032D1 ×12718
  F2D3  4C D8 F2  JMP loc_B0_F2D8               ; 032D3 ×12718

loc_B0_F2D6:                    ; from 032c8
  F2D6  A9 00     LDA #$00                      ; 032D6 ×1613

loc_B0_F2D8:                    ; from 032d3 032ca
  F2D8  95 7C     STA $7C,X                     ; 032D8 ×24278
  F2DA  60        RTS                           ; 032DA ×24278

sub_B0_F2DB:                    ; from 032be 031a9 0373e
  F2DB  A6 7C     LDX $7C                       ; 032DB ×24817
  F2DD  B5 70     LDA $70,X                     ; 032DD ×24817
  F2DF  95 80     STA $80,X                     ; 032DF ×24817
  F2E1  A9 01     LDA #$01                      ; 032E1 ×24817
  F2E3  95 81     STA $81,X                     ; 032E3 ×24817
  F2E5  B5 72     LDA $72,X                     ; 032E5 ×24817
  F2E7  38        SEC                           ; 032E7 ×24817
  F2E8  E9 04     SBC #$04                      ; 032E8 ×24817
  F2EA  95 82     STA $82,X                     ; 032EA ×24817
  F2EC  A9 34     LDA #$34                      ; 032EC ×24817
  F2EE  95 86     STA $86,X                     ; 032EE ×24817
  F2F0  B5 76     LDA $76,X                     ; 032F0 ×24817
  F2F2  38        SEC                           ; 032F2 ×24817
  F2F3  E9 23     SBC #$23                      ; 032F3 ×24817
  F2F5  0A        ASL A                         ; 032F5 ×24817
  F2F6  A8        TAY                           ; 032F6 ×24817
  F2F7  A9 02     LDA #$02                      ; 032F7 ×24817
  F2F9  85 79     STA $79                       ; 032F9 ×24817

loc_B0_F2FB:                    ; from 03309
  F2FB  B9 20 F3  LDA $F320,Y                   ; 032FB ×49634
  F2FE  85 77     STA $77                       ; 032FE ×49634
  F300  18        CLC                           ; 03300 ×49634
  F301  75 73     ADC $73,X                     ; 03301 ×49634
  F303  95 83     STA $83,X                     ; 03303 ×49634
  F305  C8        INY                           ; 03305 ×49634
  F306  E8        INX                           ; 03306 ×49634
  F307  C6 79     DEC $79                       ; 03307 ×49634
  F309  D0 F0     BNE loc_B0_F2FB               ; 03309 ×49634
  F30B  A5 77     LDA $77                       ; 0330B ×24817
  F30D  10 04     BPL loc_B0_F313               ; 0330D ×24817
  F30F  B0 08     BCS loc_B0_F319               ; 0330F ×14530
  F311  90 02     BCC loc_B0_F315               ; 03311 ×1157

loc_B0_F313:                    ; from 0330d
  F313  90 04     BCC loc_B0_F319               ; 03313 ×10287

loc_B0_F315:                    ; from 03311
  F315  A9 01     LDA #$01                      ; 03315 ×2404
  F317  D0 02     BNE loc_B0_F31B               ; 03317 ×2404

loc_B0_F319:                    ; from 0330f 03313
  F319  A9 00     LDA #$00                      ; 03319 ×22413

loc_B0_F31B:                    ; from 03317
  F31B  55 73     EOR $73,X                     ; 0331B ×24817
  F31D  95 83     STA $83,X                     ; 0331D ×24817

loc_B0_F31F:                    ; from 0335b 0335f
  F31F  60        RTS                           ; 0331F ×34543
  F320  .byte 10 CC 17 CE 20 D3 25 DA 2B DF 2D E9 32 F0 34 F8   ; 03320 data, read by 032fb
  F330  .byte 35 FE 34 05 32 0D 2D 14 2A 1D 25 23 1F 2A 15 32   ; 03330 data, read by 032fb
  F340  .byte 10 33                                             ; 03340 data, read by 032fb

sub_B0_F342:                    ; from 03219
  F342  A5 0F     LDA $0F                       ; 03342 ×31839
  F344  D0 D9     BNE loc_B0_F31F               ; 03344 ×31839
  F346  A6 87     LDX $87                       ; 03346 ×31839
  F348  10 03     BPL loc_B0_F34D               ; 03348 ×31839
  F34A  4C 79 F4  JMP loc_B0_F479               ; 0334A ×19884

loc_B0_F34D:                    ; from 03348
  F34D  A5 0D     LDA $0D                       ; 0334D ×11955
  F34F  29 C0     AND #$C0                      ; 0334F ×11955
  F351  F0 03     BEQ loc_B0_F356               ; 03351 ×11955
  F353  4C 79 F4  JMP loc_B0_F479               ; 03353 ×299

loc_B0_F356:                    ; from 03351
  F356  20 6D F3  JSR sub_B0_F36D               ; 03356 ×11656
  F359  A5 88     LDA $88                       ; 03359 ×11656
  F35B  F0 C2     BEQ loc_B0_F31F               ; 0335B ×11656
  F35D  A5 D2     LDA $D2                       ; 0335D ×5864
  F35F  F0 BE     BEQ loc_B0_F31F               ; 0335F ×5864
  F361  20 D4 F3  JSR sub_B0_F3D4               ; 03361 ×1930
  F364  20 9A F3  JSR sub_B0_F39A               ; 03364 ×1930
  F367  20 B0 F3  JSR sub_B0_F3B0               ; 03367 ×1930
  F36A  4C C3 F3  JMP loc_B0_F3C3               ; 0336A ×1930

sub_B0_F36D:                    ; from 03356
  F36D  A5 87     LDA $87                       ; 0336D ×11656
  F36F  20 66 F6  JSR sub_B0_F666               ; 0336F ×11656
  F372  A9 01     LDA #$01                      ; 03372 ×11656
  F374  85 56     STA $56                       ; 03374 ×11656
  F376  A0 48     LDY #$48                      ; 03376 ×11656
  F378  B5 76     LDA $76,X                     ; 03378 ×11656
  F37A  C9 2B     CMP #$2B                      ; 0337A ×11656
  F37C  F0 05     BEQ loc_B0_F383               ; 0337C ×11656
  F37E  90 06     BCC loc_B0_F386               ; 0337E ×11050
  F380  C8        INY                           ; 03380 ×3132
  F381  C8        INY                           ; 03381 ×3132
  F382  C8        INY                           ; 03382 ×3132

loc_B0_F383:                    ; from 0337c
  F383  C8        INY                           ; 03383 ×3738
  F384  C8        INY                           ; 03384 ×3738
  F385  C8        INY                           ; 03385 ×3738

loc_B0_F386:                    ; from 0337e
  F386  84 77     STY $77                       ; 03386 ×11656
  F388  B5 74     LDA $74,X                     ; 03388 ×11656
  F38A  C5 77     CMP $77                       ; 0338A ×11656
  F38C  F0 21     BEQ loc_B0_F3AF               ; 0338C ×11656
  F38E  90 05     BCC loc_B0_F395               ; 0338E ×3182
  F390  C6 74     DEC $74                       ; 03390 ×2048
  F392  4C 88 F5  JMP loc_B0_F588               ; 03392 ×2048

loc_B0_F395:                    ; from 0338e
  F395  E6 74     INC $74                       ; 03395 ×1134
  F397  4C 71 F5  JMP loc_B0_F571               ; 03397 ×1134

sub_B0_F39A:                    ; from 03364
  F39A  A6 7C     LDX $7C                       ; 0339A ×1930
  F39C  B5 7C     LDA $7C,X                     ; 0339C ×1930
  F39E  A8        TAY                           ; 0339E ×1930
  F39F  B5 71     LDA $71,X                     ; 0339F ×1930
  F3A1  C9 FF     CMP #$FF                      ; 033A1 ×1930
  F3A3  F0 05     BEQ $F3AA                     ; 033A3 ×1930
  F3A5  B9 94 F7  LDA $F794,Y                   ; 033A5 ×1930
  F3A8  D0 03     BNE loc_B0_F3AD               ; 033A8 ×1930
  F3AA  B9 9D F7  LDA $F79D,Y                   ; 033AA inferred, not run

loc_B0_F3AD:                    ; from 033a8
  F3AD  85 73     STA $73                       ; 033AD ×1930

loc_B0_F3AF:                    ; from 0338c
  F3AF  60        RTS                           ; 033AF ×10404

sub_B0_F3B0:                    ; from 03367
  F3B0  A6 7C     LDX $7C                       ; 033B0 ×1930
  F3B2  B5 76     LDA $76,X                     ; 033B2 ×1930
  F3B4  A0 06     LDY #$06                      ; 033B4 ×1930
  F3B6  C9 2C     CMP #$2C                      ; 033B6 ×1930
  F3B8  90 06     BCC loc_B0_F3C0               ; 033B8 ×1930
  F3BA  C8        INY                           ; 033BA ×528
  F3BB  C9 2E     CMP #$2E                      ; 033BB ×528
  F3BD  90 01     BCC loc_B0_F3C0               ; 033BD ×528
  F3BF  C8        INY                           ; 033BF ×352

loc_B0_F3C0:                    ; from 033b8 033bd
  F3C0  84 76     STY $76                       ; 033C0 ×1930
  F3C2  60        RTS                           ; 033C2 ×1930

loc_B0_F3C3:                    ; from 0336a
  F3C3  A6 7C     LDX $7C                       ; 033C3 ×1930
  F3C5  B5 83     LDA $83,X                     ; 033C5 ×1930
  F3C7  18        CLC                           ; 033C7 ×1930
  F3C8  69 02     ADC #$02                      ; 033C8 ×1930
  F3CA  85 73     STA $73                       ; 033CA ×1930
  F3CC  B5 84     LDA $84,X                     ; 033CC ×1930
  F3CE  38        SEC                           ; 033CE ×1930
  F3CF  E9 0E     SBC #$0E                      ; 033CF ×1930
  F3D1  85 74     STA $74                       ; 033D1 ×1930
  F3D3  60        RTS                           ; 033D3 ×1930

sub_B0_F3D4:                    ; from 03361
  F3D4  20 2E F4  JSR sub_B0_F42E               ; 033D4 ×1930
  F3D7  20 32 F4  JSR sub_B0_F432               ; 033D7 ×1930
  F3DA  A6 7C     LDX $7C                       ; 033DA ×1930
  F3DC  A5 0C     LDA $0C                       ; 033DC ×1930
  F3DE  29 03     AND #$03                      ; 033DE ×1930
  F3E0  F0 4B     BEQ loc_B0_F42D               ; 033E0 ×1930
  F3E2  49 03     EOR #$03                      ; 033E2 ×1182
  F3E4  F0 47     BEQ loc_B0_F42D               ; 033E4 ×1182
  F3E6  B5 79     LDA $79,X                     ; 033E6 ×1182
  F3E8  85 78     STA $78                       ; 033E8 ×1182
  F3EA  C9 02     CMP #$02                      ; 033EA ×1182
  F3EC  B0 06     BCS loc_B0_F3F4               ; 033EC ×1182
  F3EE  A9 40     LDA #$40                      ; 033EE inferred, not run
  F3F0  85 77     STA $77                       ; 033F0 inferred, not run
  F3F2  D0 10     BNE loc_B0_F404               ; 033F2 inferred, not run

loc_B0_F3F4:                    ; from 033ec
  F3F4  A5 0C     LDA $0C                       ; 033F4 ×1182
  F3F6  29 01     AND #$01                      ; 033F6 ×1182
  F3F8  D0 1B     BNE loc_B0_F415               ; 033F8 ×1182
  F3FA  B5 7A     LDA $7A,X                     ; 033FA ×248
  F3FC  C9 01     CMP #$01                      ; 033FC ×248
  F3FE  F0 1F     BEQ loc_B0_F41F               ; 033FE ×248
  F400  C9 02     CMP #$02                      ; 03400 ×32
  F402  D0 29     BNE loc_B0_F42D               ; 03402 ×32

loc_B0_F404:                    ; from 03419
  F404  B5 7E     LDA $7E,X                     ; 03404 ×818
  F406  69 40     ADC #$40                      ; 03406 ×818
  F408  95 7E     STA $7E,X                     ; 03408 ×818
  F40A  90 21     BCC loc_B0_F42D               ; 0340A ×818
  F40C  B5 7F     LDA $7F,X                     ; 0340C ×160
  F40E  C9 0F     CMP #$0F                      ; 0340E ×160
  F410  B0 1B     BCS loc_B0_F42D               ; 03410 ×160
  F412  F6 7F     INC $7F,X                     ; 03412 ×4
  F414  60        RTS                           ; 03414 ×4

loc_B0_F415:                    ; from 033f8
  F415  B5 7A     LDA $7A,X                     ; 03415 ×934
  F417  C9 01     CMP #$01                      ; 03417 ×934
  F419  F0 E9     BEQ loc_B0_F404               ; 03419 ×934
  F41B  C9 02     CMP #$02                      ; 0341B ×148
  F41D  D0 0E     BNE loc_B0_F42D               ; 0341D ×148

loc_B0_F41F:                    ; from 033fe
  F41F  B5 7D     LDA $7D,X                     ; 0341F ×364
  F421  69 40     ADC #$40                      ; 03421 ×364
  F423  95 7D     STA $7D,X                     ; 03423 ×364
  F425  90 06     BCC loc_B0_F42D               ; 03425 ×364
  F427  B5 7F     LDA $7F,X                     ; 03427 ×56
  F429  F0 02     BEQ loc_B0_F42D               ; 03429 ×56
  F42B  D6 7F     DEC $7F,X                     ; 0342B ×56

loc_B0_F42D:                    ; from 033e0 0340a 03425 03410
  F42D  60        RTS                           ; 0342D ×1926

sub_B0_F42E:                    ; from 033d4
  F42E  A9 0D     LDA #$0D                      ; 0342E ×1930
  F430  D0 02     BNE loc_B0_F434               ; 03430 ×1930

sub_B0_F432:                    ; from 033d7
  F432  A9 0E     LDA #$0E                      ; 03432 ×1930

loc_B0_F434:                    ; from 03430
  F434  18        CLC                           ; 03434 ×3860
  F435  65 7C     ADC $7C                       ; 03435 ×3860
  F437  AA        TAX                           ; 03437 ×3860
  F438  B5 70     LDA $70,X                     ; 03438 ×3860
  F43A  85 7B     STA $7B                       ; 0343A ×3860
  F43C  29 F0     AND #$F0                      ; 0343C ×3860
  F43E  20 E4 F7  JSR sub_B0_F7E4               ; 0343E ×3860
  F441  A8        TAY                           ; 03441 ×3860
  F442  A5 7B     LDA $7B                       ; 03442 ×3860
  F444  F9 A6 F7  SBC $F7A6,Y                   ; 03444 ×3860
  F447  B0 02     BCS loc_B0_F44B               ; 03447 ×3860
  F449  A9 00     LDA #$00                      ; 03449 ×1792

loc_B0_F44B:                    ; from 03447
  F44B  95 70     STA $70,X                     ; 0344B ×3860
  F44D  60        RTS                           ; 0344D ×3860

loc_B0_F44E:                    ; from 03498
  F44E  A9 00     LDA #$00                      ; 0344E ×101
  F450  85 D6     STA $D6                       ; 03450 ×101
  F452  A5 D5     LDA $D5                       ; 03452 ×101
  F454  85 87     STA $87                       ; 03454 ×101
  F456  C5 C7     CMP $C7                       ; 03456 ×101
  F458  F0 05     BEQ loc_B0_F45F               ; 03458 ×101
  F45A  E6 AB     INC $AB                       ; 0345A ×33
  F45C  EE 27 03  INC $0327                     ; 0345C ×33

loc_B0_F45F:                    ; from 03458
  F45F  20 66 F6  JSR sub_B0_F666               ; 0345F ×101
  F462  B5 7B     LDA $7B,X                     ; 03462 ×101
  F464  F0 0E     BEQ loc_B0_F474               ; 03464 ×101
  F466  B5 76     LDA $76,X                     ; 03466 ×36
  F468  C9 2B     CMP #$2B                      ; 03468 ×36
  F46A  B0 08     BCS loc_B0_F474               ; 0346A ×36
  F46C  A9 01     LDA #$01                      ; 0346C ×25
  F46E  95 7A     STA $7A,X                     ; 0346E ×25
  F470  A9 00     LDA #$00                      ; 03470 ×25
  F472  95 7B     STA $7B,X                     ; 03472 ×25

loc_B0_F474:                    ; from 03464 0346a
  F474  A9 00     LDA #$00                      ; 03474 ×101
  F476  85 D3     STA $D3                       ; 03476 ×101
  F478  60        RTS                           ; 03478 ×101

loc_B0_F479:                    ; from 0334a 03353
  F479  A6 D3     LDX $D3                       ; 03479 ×20183
  F47B  F0 41     BEQ loc_B0_F4BE               ; 0347B ×20183
  F47D  CA        DEX                           ; 0347D ×19884
  F47E  F0 26     BEQ loc_B0_F4A6               ; 0347E ×19884
  F480  AD 88 03  LDA $0388                     ; 03480 ×8881
  F483  D0 10     BNE loc_B0_F495               ; 03483 ×8881
  F485  20 01 F6  JSR sub_B0_F601               ; 03485 ×2810
  F488  B0 33     BCS loc_B0_F4BD               ; 03488 ×2810
  F48A  20 12 F6  JSR sub_B0_F612               ; 0348A ×2810
  F48D  90 06     BCC loc_B0_F495               ; 0348D ×2810
  F48F  A5 0C     LDA $0C                       ; 0348F ×137
  F491  29 03     AND #$03                      ; 03491 ×137
  F493  85 D6     STA $D6                       ; 03493 ×137

loc_B0_F495:                    ; from 03483 0348d
  F495  20 C6 F5  JSR sub_B0_F5C6               ; 03495 ×8881
  F498  B0 B4     BCS loc_B0_F44E               ; 03498 ×8881
  F49A  20 11 DA  JSR sub_B0_DA11               ; 0349A ×8780
  F49D  A5 D6     LDA $D6                       ; 0349D ×8780
  F49F  F0 1C     BEQ loc_B0_F4BD               ; 0349F ×8780
  F4A1  85 AF     STA $AF                       ; 034A1 ×3954
  F4A3  4C 5D F5  JMP loc_B0_F55D               ; 034A3 ×3954

loc_B0_F4A6:                    ; from 0347e
  F4A6  20 C6 F5  JSR sub_B0_F5C6               ; 034A6 ×11003
  F4A9  B0 A3     BCS loc_B0_F44E               ; 034A9 ×11003
  F4AB  20 12 F6  JSR sub_B0_F612               ; 034AB ×11003
  F4AE  B0 0B     BCS loc_B0_F4BB               ; 034AE ×11003
  F4B0  20 01 F6  JSR sub_B0_F601               ; 034B0 ×10858
  F4B3  B0 08     BCS loc_B0_F4BD               ; 034B3 ×10858
  F4B5  20 40 F5  JSR sub_B0_F540               ; 034B5 ×10858
  F4B8  4C 1D F5  JMP loc_B0_F51D               ; 034B8 ×10858

loc_B0_F4BB:                    ; from 034ae
  F4BB  E6 D3     INC $D3                       ; 034BB ×145

loc_B0_F4BD:                    ; from 0349f
  F4BD  60        RTS                           ; 034BD ×4971

loc_B0_F4BE:                    ; from 0347b
  F4BE  A9 03     LDA #$03                      ; 034BE ×299
  F4C0  20 0D F8  JSR sub_B0_F80D               ; 034C0 ×299
  F4C3  A9 02     LDA #$02                      ; 034C3 ×299
  F4C5  85 76     STA $76                       ; 034C5 ×299
  F4C7  A5 87     LDA $87                       ; 034C7 ×299
  F4C9  85 C7     STA $C7                       ; 034C9 ×299
  F4CB  20 66 F6  JSR sub_B0_F666               ; 034CB ×299
  F4CE  A9 FE     LDA #$FE                      ; 034CE ×299
  F4D0  85 87     STA $87                       ; 034D0 ×299
  F4D2  B5 7A     LDA $7A,X                     ; 034D2 ×299
  F4D4  85 AF     STA $AF                       ; 034D4 ×299
  F4D6  F0 06     BEQ loc_B0_F4DE               ; 034D6 ×299
  F4D8  49 03     EOR #$03                      ; 034D8 ×299
  F4DA  F0 02     BEQ loc_B0_F4DE               ; 034DA ×299
  F4DC  B5 79     LDA $79,X                     ; 034DC ×295

loc_B0_F4DE:                    ; from 034da
  F4DE  A8        TAY                           ; 034DE ×299
  F4DF  B5 7B     LDA $7B,X                     ; 034DF ×299
  F4E1  D0 12     BNE loc_B0_F4F5               ; 034E1 ×299
  F4E3  B5 7A     LDA $7A,X                     ; 034E3 ×230
  F4E5  C9 02     CMP #$02                      ; 034E5 ×230
  F4E7  D0 0C     BNE loc_B0_F4F5               ; 034E7 ×230
  F4E9  B5 7C     LDA $7C,X                     ; 034E9 ×55
  F4EB  C9 06     CMP #$06                      ; 034EB ×55
  F4ED  90 04     BCC loc_B0_F4F3               ; 034ED ×55
  F4EF  A0 00     LDY #$00                      ; 034EF ×35
  F4F1  F0 02     BEQ loc_B0_F4F5               ; 034F1 ×35

loc_B0_F4F3:                    ; from 034ed
  F4F3  A0 02     LDY #$02                      ; 034F3 ×20

loc_B0_F4F5:                    ; from 034e7 034e1 034f1
  F4F5  B9 14 F5  LDA $F514,Y                   ; 034F5 ×299
  F4F8  85 AE     STA $AE                       ; 034F8 ×299
  F4FA  B5 7C     LDA $7C,X                     ; 034FA ×299
  F4FC  0A        ASL A                         ; 034FC ×299
  F4FD  B4 7B     LDY $7B,X                     ; 034FD ×299
  F4FF  D0 03     BNE loc_B0_F504               ; 034FF ×299
  F501  18        CLC                           ; 03501 ×230
  F502  69 12     ADC #$12                      ; 03502 ×230

loc_B0_F504:                    ; from 034ff
  F504  A8        TAY                           ; 03504 ×299
  F505  B9 B6 F7  LDA $F7B6,Y                   ; 03505 ×299
  F508  8D A2 03  STA $03A2                     ; 03508 ×299
  F50B  B9 B7 F7  LDA $F7B7,Y                   ; 0350B ×299
  F50E  8D A0 03  STA $03A0                     ; 0350E ×299
  F511  E6 D3     INC $D3                       ; 03511 ×299
  F513  60        RTS                           ; 03513 ×299
  F514  .byte 00                                                ; 03514 data, read by 034f5
  F515  .byte 20                                                ; 03515
  F516  .byte 40                                                ; 03516 data, read by 034f5
  F517  .byte 60 80 A0 C0 E0                                    ; 03517
  F51C  .byte FF                                                ; 0351C data, read by 034f5

loc_B0_F51D:                    ; from 034b8
  F51D  A2 00     LDX #$00                      ; 0351D ×10858
  F51F  38        SEC                           ; 0351F ×10858
  F520  AD A1 03  LDA $03A1                     ; 03520 ×10858
  F523  ED A0 03  SBC $03A0                     ; 03523 ×10858
  F526  8D A1 03  STA $03A1                     ; 03526 ×10858
  F529  AD A2 03  LDA $03A2                     ; 03529 ×10858
  F52C  E9 00     SBC #$00                      ; 0352C ×10858
  F52E  8D A2 03  STA $03A2                     ; 0352E ×10858
  F531  30 02     BMI loc_B0_F535               ; 03531 ×10858
  F533  A2 01     LDX #$01                      ; 03533 ×1214

loc_B0_F535:                    ; from 03531
  F535  86 CB     STX $CB                       ; 03535 ×10858
  F537  A5 73     LDA $73                       ; 03537 ×10858
  F539  38        SEC                           ; 03539 ×10858
  F53A  ED A2 03  SBC $03A2                     ; 0353A ×10858
  F53D  85 73     STA $73                       ; 0353D ×10858

loc_B0_F53F:                    ; from 03542 0354c
  F53F  60        RTS                           ; 0353F ×12769

sub_B0_F540:                    ; from 034b5
  F540  A5 AE     LDA $AE                       ; 03540 ×10858
  F542  F0 FB     BEQ loc_B0_F53F               ; 03542 ×10858
  F544  C9 FF     CMP #$FF                      ; 03544 ×9495
  F546  F0 06     BEQ loc_B0_F54E               ; 03546 ×9495
  F548  65 D7     ADC $D7                       ; 03548 ×722
  F54A  85 D7     STA $D7                       ; 0354A ×722
  F54C  90 F1     BCC loc_B0_F53F               ; 0354C ×722

loc_B0_F54E:                    ; from 03546
  F54E  A5 87     LDA $87                       ; 0354E ×8947
  F550  20 66 F6  JSR sub_B0_F666               ; 03550 ×8947
  F553  B4 7F     LDY $7F,X                     ; 03553 ×8947
  F555  C0 05     CPY #$05                      ; 03555 ×8947
  F557  90 04     BCC loc_B0_F55D               ; 03557 ×8947
  F559  A9 02     LDA #$02                      ; 03559 ×8947
  F55B  D0 02     BNE loc_B0_F55F               ; 0355B ×8947

loc_B0_F55D:                    ; from 034a3
  F55D  A9 01     LDA #$01                      ; 0355D ×3954

loc_B0_F55F:                    ; from 0355b
  F55F  85 56     STA $56                       ; 0355F ×12901
  F561  A5 AF     LDA $AF                       ; 03561 ×12901
  F563  C9 01     CMP #$01                      ; 03563 ×12901
  F565  F0 21     BEQ loc_B0_F588               ; 03565 ×12901
  F567  A5 74     LDA $74                       ; 03567 ×2005
  F569  38        SEC                           ; 03569 ×2005
  F56A  E5 56     SBC $56                       ; 0356A ×2005
  F56C  90 02     BCC loc_B0_F570               ; 0356C ×2005
  F56E  85 74     STA $74                       ; 0356E ×1439

loc_B0_F570:                    ; from 0356c
  F570  60        RTS                           ; 03570 ×2005

loc_B0_F571:                    ; from 03397
  F571  20 FC F7  JSR sub_B0_F7FC               ; 03571 ×1134
  F574  30 11     BMI $F587                     ; 03574 ×1134
  F576  A0 04     LDY #$04                      ; 03576 ×1134
  F578  A2 20     LDX #$20                      ; 03578 ×1134

loc_B0_F57A:                    ; from 03585
  F57A  B5 74     LDA $74,X                     ; 0357A ×4536
  F57C  18        CLC                           ; 0357C ×4536
  F57D  65 56     ADC $56                       ; 0357D ×4536
  F57F  95 74     STA $74,X                     ; 0357F ×4536
  F581  20 EC C9  JSR sub_B0_C9EC               ; 03581 ×4536
  F584  88        DEY                           ; 03584 ×4536
  F585  D0 F3     BNE loc_B0_F57A               ; 03585 ×4536
  F587  60        RTS                           ; 03587 ×1134

loc_B0_F588:                    ; from 03565 03392
  F588  20 05 DA  JSR sub_B0_DA05               ; 03588 ×12944
  F58B  B0 0D     BCS loc_B0_F59A               ; 0358B ×12944
  F58D  18        CLC                           ; 0358D inferred, not run
  F58E  A5 74     LDA $74                       ; 0358E inferred, not run
  F590  65 56     ADC $56                       ; 03590 inferred, not run
  F592  AA        TAX                           ; 03592 inferred, not run
  F593  69 10     ADC #$10                      ; 03593 inferred, not run
  F595  B0 02     BCS $F599                     ; 03595 inferred, not run
  F597  86 74     STX $74                       ; 03597 inferred, not run
  F599  60        RTS                           ; 03599 inferred, not run

loc_B0_F59A:                    ; from 0358b
  F59A  20 EE F7  JSR sub_B0_F7EE               ; 0359A ×12944
  F59D  A0 04     LDY #$04                      ; 0359D ×12944
  F59F  A2 20     LDX #$20                      ; 0359F ×12944

loc_B0_F5A1:                    ; from 035c3
  F5A1  B5 70     LDA $70,X                     ; 035A1 ×51776
  F5A3  F0 1A     BEQ loc_B0_F5BF               ; 035A3 ×51776
  F5A5  B5 74     LDA $74,X                     ; 035A5 ×50204
  F5A7  38        SEC                           ; 035A7 ×50204
  F5A8  E5 56     SBC $56                       ; 035A8 ×50204
  F5AA  95 74     STA $74,X                     ; 035AA ×50204
  F5AC  B5 74     LDA $74,X                     ; 035AC ×50204
  F5AE  C9 08     CMP #$08                      ; 035AE ×50204
  F5B0  B0 0D     BCS loc_B0_F5BF               ; 035B0 ×50204
  F5B2  8A        TXA                           ; 035B2 ×1002
  F5B3  29 10     AND #$10                      ; 035B3 ×1002
  F5B5  D0 08     BNE loc_B0_F5BF               ; 035B5 ×1002
  F5B7  A9 00     LDA #$00                      ; 035B7 ×162
  F5B9  95 70     STA $70,X                     ; 035B9 ×162
  F5BB  95 80     STA $80,X                     ; 035BB ×162
  F5BD  F0 00     BEQ loc_B0_F5BF               ; 035BD ×162

loc_B0_F5BF:                    ; from 035b0 035a3 035b5
  F5BF  20 EC C9  JSR sub_B0_C9EC               ; 035BF ×51776
  F5C2  88        DEY                           ; 035C2 ×51776
  F5C3  D0 DC     BNE loc_B0_F5A1               ; 035C3 ×51776
  F5C5  60        RTS                           ; 035C5 ×12944

sub_B0_F5C6:                    ; from 034a6 03495
  F5C6  20 03 E9  JSR sub_B0_E903               ; 035C6 ×19884
  F5C9  A9 01     LDA #$01                      ; 035C9 ×19884
  F5CB  85 D5     STA $D5                       ; 035CB ×19884

loc_B0_F5CD:                    ; from 035fd
  F5CD  A5 D5     LDA $D5                       ; 035CD ×39738
  F5CF  A4 D3     LDY $D3                       ; 035CF ×39738
  F5D1  88        DEY                           ; 035D1 ×39738
  F5D2  D0 04     BNE loc_B0_F5D8               ; 035D2 ×39738
  F5D4  C5 C7     CMP $C7                       ; 035D4 ×22006
  F5D6  F0 23     BEQ loc_B0_F5FB               ; 035D6 ×22006

loc_B0_F5D8:                    ; from 035d2
  F5D8  38        SEC                           ; 035D8 ×28735
  F5D9  2A        ROL A                         ; 035D9 ×28735
  F5DA  69 02     ADC #$02                      ; 035DA ×28735
  F5DC  20 DA F7  JSR sub_B0_F7DA               ; 035DC ×28735
  F5DF  B5 70     LDA $70,X                     ; 035DF ×28735
  F5E1  F0 18     BEQ loc_B0_F5FB               ; 035E1 ×28735
  F5E3  B5 75     LDA $75,X                     ; 035E3 ×28295
  F5E5  D0 14     BNE loc_B0_F5FB               ; 035E5 ×28295
  F5E7  A0 08     LDY #$08                      ; 035E7 ×25813
  F5E9  84 8D     STY $8D                       ; 035E9 ×25813
  F5EB  84 8F     STY $8F                       ; 035EB ×25813
  F5ED  A0 00     LDY #$00                      ; 035ED ×25813
  F5EF  84 8E     STY $8E                       ; 035EF ×25813
  F5F1  84 8C     STY $8C                       ; 035F1 ×25813
  F5F3  20 62 CC  JSR sub_B0_CC62               ; 035F3 ×25813
  F5F6  20 7E CC  JSR sub_B0_CC7E               ; 035F6 ×25813
  F5F9  B0 05     BCS loc_B0_F600               ; 035F9 ×25813

loc_B0_F5FB:                    ; from 035d6 035e5 035e1
  F5FB  C6 D5     DEC $D5                       ; 035FB ×39637
  F5FD  10 CE     BPL loc_B0_F5CD               ; 035FD ×39637
  F5FF  18        CLC                           ; 035FF ×19783

loc_B0_F600:                    ; from 03605 035f9
  F600  60        RTS                           ; 03600 ×33355

sub_B0_F601:                    ; from 034b0 03485
  F601  A5 73     LDA $73                       ; 03601 ×13668
  F603  C9 C0     CMP #$C0                      ; 03603 ×13668
  F605  90 F9     BCC loc_B0_F600               ; 03605 ×13668
  F607  A9 00     LDA #$00                      ; 03607 ×197
  F609  85 87     STA $87                       ; 03609 ×197
  F60B  E6 0F     INC $0F                       ; 0360B ×197
  F60D  E6 CF     INC $CF                       ; 0360D ×197
  F60F  4C 87 DB  JMP sub_B0_DB87               ; 0360F ×197

sub_B0_F612:                    ; from 034ab 0348a
  F612  A5 73     LDA $73                       ; 03612 ×13813
  F614  C9 AC     CMP #$AC                      ; 03614 ×13813
  F616  90 27     BCC loc_B0_F63F               ; 03616 ×13813
  F618  A2 30     LDX #$30                      ; 03618 ×1371

loc_B0_F61A:                    ; from 0363d
  F61A  BD 00 05  LDA $0500,X                   ; 0361A ×5404
  F61D  F0 1B     BEQ loc_B0_F63A               ; 0361D ×5404
  F61F  20 16 CC  JSR sub_B0_CC16               ; 0361F ×3000
  F622  90 06     BCC loc_B0_F62A               ; 03622 ×3000
  F624  C9 E8     CMP #$E8                      ; 03624 ×350
  F626  B0 0B     BCS loc_B0_F633               ; 03626 ×350
  F628  90 10     BCC loc_B0_F63A               ; 03628 ×338

loc_B0_F62A:                    ; from 03622
  F62A  38        SEC                           ; 0362A ×2650
  F62B  E9 00     SBC #$00                      ; 0362B ×2650
  F62D  90 04     BCC loc_B0_F633               ; 0362D ×2650
  F62F  C5 74     CMP $74                       ; 0362F ×2650
  F631  B0 07     BCS loc_B0_F63A               ; 03631 ×2650

loc_B0_F633:                    ; from 03626
  F633  18        CLC                           ; 03633 ×535
  F634  69 18     ADC #$18                      ; 03634 ×535
  F636  C5 74     CMP $74                       ; 03636 ×535
  F638  B0 07     BCS loc_B0_F641               ; 03638 ×535

loc_B0_F63A:                    ; from 0361d 03631 03628
  F63A  20 F2 C9  JSR sub_B0_C9F2               ; 0363A ×5122
  F63D  10 DB     BPL loc_B0_F61A               ; 0363D ×5122

loc_B0_F63F:                    ; from 03616
  F63F  18        CLC                           ; 0363F ×13531
  F640  60        RTS                           ; 03640 ×13531

loc_B0_F641:                    ; from 03638
  F641  20 87 DB  JSR sub_B0_DB87               ; 03641 ×282
  F644  EE 8E 03  INC $038E                     ; 03644 ×282
  F647  38        SEC                           ; 03647 ×282
  F648  60        RTS                           ; 03648 ×282

jt_B0_F649:                    ; from 004e0
  F649  A4 AB     LDY $AB                       ; 03649 ×197
  F64B  B9 5B F6  LDA $F65B,Y                   ; 0364B ×197
  F64E  85 AB     STA $AB                       ; 0364E ×197
  F650  0A        ASL A                         ; 03650 ×197
  F651  85 AD     STA $AD                       ; 03651 ×197
  F653  E6 CF     INC $CF                       ; 03653 ×197

jt_B0_F655:                    ; from 004e0
  F655  20 CF F1  JSR sub_B0_F1CF               ; 03655 ×41173
  F658  4C 58 DC  JMP sub_B0_DC58               ; 03658 ×41173
  F65B  .byte 00 00 02 02 04                                    ; 0365B data, read by 0364b
  F660  .byte 04                                                ; 03660
  F661  .byte 06 06                                             ; 03661 data, read by 0364b
  F663  .byte 06 A5 C7                                          ; 03663

sub_B0_F666:                    ; from 031d1 0336f 03550 03680 034cb 03710 (+1)
  F666  29 01     AND #$01                      ; 03666 ×94651
  F668  0A        ASL A                         ; 03668 ×94651
  F669  69 02     ADC #$02                      ; 03669 ×94651
  F66B  20 E9 F7  JSR sub_B0_F7E9               ; 0366B ×94651
  F66E  85 7C     STA $7C                       ; 0366E ×94651
  F670  AA        TAX                           ; 03670 ×94651

loc_B0_F671:                    ; from 036c3
  F671  60        RTS                           ; 03671 ×96179

loc_B0_F672:                    ; from 031b2 036ec
  F672  A5 AA     LDA $AA                       ; 03672 ×495
  F674  29 03     AND #$03                      ; 03674 ×495
  F676  20 E9 F7  JSR sub_B0_F7E9               ; 03676 ×495
  F679  85 8C     STA $8C                       ; 03679 ×495
  F67B  A5 AD     LDA $AD                       ; 0367B ×495
  F67D  4A        LSR A                         ; 0367D ×495
  F67E  49 01     EOR #$01                      ; 0367E ×495
  F680  20 66 F6  JSR sub_B0_F666               ; 03680 ×495
  F683  A0 00     LDY #$00                      ; 03683 ×495
  F685  B5 74     LDA $74,X                     ; 03685 ×495
  F687  18        CLC                           ; 03687 ×495
  F688  65 6A     ADC $6A                       ; 03688 ×495
  F68A  90 01     BCC loc_B0_F68D               ; 0368A ×495
  F68C  C8        INY                           ; 0368C ×97

loc_B0_F68D:                    ; from 0368a
  F68D  18        CLC                           ; 0368D ×495
  F68E  69 20     ADC #$20                      ; 0368E ×495
  F690  90 01     BCC loc_B0_F693               ; 03690 ×495
  F692  C8        INY                           ; 03692 inferred, not run

loc_B0_F693:                    ; from 03690
  F693  A6 8C     LDX $8C                       ; 03693 ×495
  F695  9D 01 05  STA $0501,X                   ; 03695 ×495
  F698  84 8E     STY $8E                       ; 03698 ×495
  F69A  98        TYA                           ; 0369A ×495
  F69B  45 6B     EOR $6B                       ; 0369B ×495
  F69D  29 01     AND #$01                      ; 0369D ×495
  F69F  9D 02 05  STA $0502,X                   ; 0369F ×495
  F6A2  A9 C0     LDA #$C0                      ; 036A2 ×495
  F6A4  9D 03 05  STA $0503,X                   ; 036A4 ×495
  F6A7  A9 05     LDA #$05                      ; 036A7 ×495
  F6A9  9D 04 05  STA $0504,X                   ; 036A9 ×495
  F6AC  E6 AA     INC $AA                       ; 036AC ×495
  F6AE  A9 FF     LDA #$FF                      ; 036AE ×495
  F6B0  9D 00 05  STA $0500,X                   ; 036B0 ×495
  F6B3  4C 26 ED  JMP sub_B0_ED26               ; 036B3 ×495

loc_B0_F6B6:                    ; from 036ff 03741
  F6B6  A5 AA     LDA $AA                       ; 036B6 ×1547
  F6B8  18        CLC                           ; 036B8 ×1547
  F6B9  69 01     ADC #$01                      ; 036B9 ×1547
  F6BB  29 03     AND #$03                      ; 036BB ×1547
  F6BD  20 DA F7  JSR sub_B0_F7DA               ; 036BD ×1547
  F6C0  BD 00 05  LDA $0500,X                   ; 036C0 ×1547
  F6C3  F0 AC     BEQ loc_B0_F671               ; 036C3 ×1547
  F6C5  A9 00     LDA #$00                      ; 036C5 ×19
  F6C7  9D 00 05  STA $0500,X                   ; 036C7 ×19
  F6CA  4C 9C EC  JMP loc_B0_EC9C               ; 036CA ×19

sub_B0_F6CD:                    ; from 0321c
  F6CD  A5 69     LDA $69                       ; 036CD ×31839
  F6CF  C9 01     CMP #$01                      ; 036CF ×31839
  F6D1  90 0A     BCC loc_B0_F6DD               ; 036D1 ×31839
  F6D3  F0 02     BEQ loc_B0_F6D7               ; 036D3 ×31811
  F6D5  B0 0C     BCS loc_B0_F6E3               ; 036D5 ×23412

loc_B0_F6D7:                    ; from 036d3
  F6D7  A5 68     LDA $68                       ; 036D7 ×8399
  F6D9  C9 0A     CMP #$0A                      ; 036D9 ×8399
  F6DB  B0 06     BCS loc_B0_F6E3               ; 036DB ×8399

loc_B0_F6DD:                    ; from 036d1
  F6DD  A9 00     LDA #$00                      ; 036DD ×48
  F6DF  85 B0     STA $B0                       ; 036DF ×48
  F6E1  85 C0     STA $C0                       ; 036E1 ×48

loc_B0_F6E3:                    ; from 036d5 036db
  F6E3  A5 AD     LDA $AD                       ; 036E3 ×31839
  F6E5  4A        LSR A                         ; 036E5 ×31839
  F6E6  90 07     BCC loc_B0_F6EF               ; 036E6 ×31839
  F6E8  E6 AD     INC $AD                       ; 036E8 ×121
  F6EA  C9 08     CMP #$08                      ; 036EA ×121
  F6EC  90 84     BCC loc_B0_F672               ; 036EC ×121

loc_B0_F6EE:                    ; from 0370c
  F6EE  60        RTS                           ; 036EE ×30195

loc_B0_F6EF:                    ; from 036e6
  F6EF  85 F8     STA $F8                       ; 036EF ×31718
  F6F1  0A        ASL A                         ; 036F1 ×31718
  F6F2  A8        TAY                           ; 036F2 ×31718
  F6F3  A6 6B     LDX $6B                       ; 036F3 ×31718
  F6F5  E8        INX                           ; 036F5 ×31718
  F6F6  86 7B     STX $7B                       ; 036F6 ×31718
  F6F8  B9 45 F7  LDA $F745,Y                   ; 036F8 ×31718
  F6FB  85 78     STA $78                       ; 036FB ×31718
  F6FD  C9 FF     CMP #$FF                      ; 036FD ×31718
  F6FF  F0 B5     BEQ loc_B0_F6B6               ; 036FF ×31718
  F701  C5 7B     CMP $7B                       ; 03701 ×30312
  F703  D0 07     BNE loc_B0_F70C               ; 03703 ×30312
  F705  B9 44 F7  LDA $F744,Y                   ; 03705 ×29955
  F708  85 77     STA $77                       ; 03708 ×29955
  F70A  C5 6A     CMP $6A                       ; 0370A ×29955

loc_B0_F70C:                    ; from 03703
  F70C  B0 E0     BCS loc_B0_F6EE               ; 0370C ×30312
  F70E  A5 F8     LDA $F8                       ; 0370E ×141
  F710  20 66 F6  JSR sub_B0_F666               ; 03710 ×141
  F713  E6 AD     INC $AD                       ; 03713 ×141
  F715  20 20 CC  JSR sub_B0_CC20               ; 03715 ×141
  F718  95 74     STA $74,X                     ; 03718 ×141
  F71A  A9 3C     LDA #$3C                      ; 0371A ×141
  F71C  95 73     STA $73,X                     ; 0371C ×141
  F71E  A9 3C     LDA #$3C                      ; 0371E ×141
  F720  E0 20     CPX #$20                      ; 03720 ×141
  F722  F0 02     BEQ loc_B0_F726               ; 03722 ×141
  F724  A9 6C     LDA #$6C                      ; 03724 ×11

loc_B0_F726:                    ; from 03722
  F726  95 72     STA $72,X                     ; 03726 ×141
  F728  A9 01     LDA #$01                      ; 03728 ×141
  F72A  95 70     STA $70,X                     ; 0372A ×141
  F72C  A9 FE     LDA #$FE                      ; 0372C ×141
  F72E  95 71     STA $71,X                     ; 0372E ×141
  F730  20 58 F7  JSR sub_B0_F758               ; 03730 ×141
  F733  A0 07     LDY #$07                      ; 03733 ×141

loc_B0_F735:                    ; from 0373c
  F735  B9 C7 F1  LDA $F1C7,Y                   ; 03735 ×1128
  F738  95 7C     STA $7C,X                     ; 03738 ×1128
  F73A  CA        DEX                           ; 0373A ×1128
  F73B  88        DEY                           ; 0373B ×1128
  F73C  10 F7     BPL loc_B0_F735               ; 0373C ×1128
  F73E  20 DB F2  JSR sub_B0_F2DB               ; 0373E ×141
  F741  4C B6 F6  JMP loc_B0_F6B6               ; 03741 ×141
  F744  .byte 50 00 D0 00                                       ; 03744
  F748  .byte 50 01 D0 01 50 02 D0 02 50 03 D0 03 50 04         ; 03748 data, read by 03705 036f8
  F756  .byte FF                                                ; 03756
  F757  .byte FF                                                ; 03757 data, read by 036f8

sub_B0_F758:                    ; from 03191 03730
  F758  A4 66     LDY $66                       ; 03758 ×539
  F75A  88        DEY                           ; 0375A ×539
  F75B  98        TYA                           ; 0375B ×539
  F75C  29 03     AND #$03                      ; 0375C ×539
  F75E  A8        TAY                           ; 0375E ×539
  F75F  B9 6C F7  LDA $F76C,Y                   ; 0375F ×539
  F762  18        CLC                           ; 03762 ×539
  F763  65 F8     ADC $F8                       ; 03763 ×539
  F765  A8        TAY                           ; 03765 ×539
  F766  B9 70 F7  LDA $F770,Y                   ; 03766 ×539
  F769  95 7F     STA $7F,X                     ; 03769 ×539
  F76B  60        RTS                           ; 0376B ×539
  F76C  .byte 00 09 12                                          ; 0376C
  F76F  .byte 1B                                                ; 0376F data, read by 0375f
  F770  .byte 0A 0A 0B 0A 0A 0A 0A 0E 0A 0B 0B 0A 0A 0D 0D 0E   ; 03770
  F780  .byte 0E 0B 0A 0F 0B 0E 0A 0E 0A 0F 0C                  ; 03780
  F78B  .byte 0F 0F 0F 0F 0F 0F 0F 0F 0A 68 68 66 64 5D 5B 53   ; 0378B data, read by 03766 033a5
  F79B  .byte 4D 46                                             ; 0379B data, read by 033a5
  F79D  .byte 78 78 73 74 6C 64 5E 55 4B                        ; 0379D
  F7A6  .byte 10 0F 0E 0D 0C 0B 0A 09 08 07 06 05 04 03 02 01   ; 037A6 data, read by 03444
  F7B6  .byte 00 20                                             ; 037B6
  F7B8  .byte 00 1E 00 1C 01 26 01 24 01 22 01 20               ; 037B8 data, read by 03505 0350b
  F7C4  .byte 01 22                                             ; 037C4
  F7C6  .byte 01 24 00 20 00 21 00 22 00 23 00 24 00 25 00 26   ; 037C6 data, read by 03505 0350b
  F7D6  .byte 00 27 00 28                                       ; 037D6 data, read by 03505 0350b

sub_B0_F7DA:                    ; from 035dc 02e28 036bd
  F7DA  20 E9 F7  JSR sub_B0_F7E9               ; 037DA ×46088
  F7DD  AA        TAX                           ; 037DD ×46088
  F7DE  60        RTS                           ; 037DE ×46088

sub_B0_F7DF:                    ; from 02f20
  F7DF  20 E4 F7  JSR sub_B0_F7E4               ; 037DF ×677
  F7E2  AA        TAX                           ; 037E2 ×677
  F7E3  60        RTS                           ; 037E3 ×677

sub_B0_F7E4:                    ; from 02bfa 0343e 037df 02a69
  F7E4  4A        LSR A                         ; 037E4 ×11317
  F7E5  4A        LSR A                         ; 037E5 ×11317
  F7E6  4A        LSR A                         ; 037E6 ×11317
  F7E7  4A        LSR A                         ; 037E7 ×11317
  F7E8  60        RTS                           ; 037E8 ×11317

sub_B0_F7E9:                    ; from 026d9 0366b 026b9 037da 03676
  F7E9  0A        ASL A                         ; 037E9 ×316974
  F7EA  0A        ASL A                         ; 037EA ×316974
  F7EB  0A        ASL A                         ; 037EB ×316974
  F7EC  0A        ASL A                         ; 037EC ×316974
  F7ED  60        RTS                           ; 037ED ×316974

sub_B0_F7EE:                    ; from 0184e 019b9 0359a
  F7EE  18        CLC                           ; 037EE ×87031
  F7EF  A5 6A     LDA $6A                       ; 037EF ×87031
  F7F1  65 56     ADC $56                       ; 037F1 ×87031
  F7F3  85 6A     STA $6A                       ; 037F3 ×87031
  F7F5  A5 6B     LDA $6B                       ; 037F5 ×87031
  F7F7  69 00     ADC #$00                      ; 037F7 ×87031
  F7F9  85 6B     STA $6B                       ; 037F9 ×87031
  F7FB  60        RTS                           ; 037FB ×87031

sub_B0_F7FC:                    ; from 01873 03571
  F7FC  38        SEC                           ; 037FC ×8777
  F7FD  A5 6A     LDA $6A                       ; 037FD ×8777
  F7FF  E5 56     SBC $56                       ; 037FF ×8777
  F801  AA        TAX                           ; 03801 ×8777
  F802  A5 6B     LDA $6B                       ; 03802 ×8777
  F804  E9 00     SBC #$00                      ; 03804 ×8777
  F806  30 04     BMI loc_B0_F80C               ; 03806 ×8777
  F808  86 6A     STX $6A                       ; 03808 ×7232
  F80A  85 6B     STA $6B                       ; 0380A ×7232

loc_B0_F80C:                    ; from 03806
  F80C  60        RTS                           ; 0380C ×8777

sub_B0_F80D:                    ; from 00a40 0018e 01a3e 01ce6 01ce1 00bb1 (+13)
  F80D  86 4F     STX $4F                       ; 0380D ×9887
  F80F  84 40     STY $40                       ; 0380F ×9887
  F811  85 2F     STA $2F                       ; 03811 ×9887
  F813  4A        LSR A                         ; 03813 ×9887
  F814  4A        LSR A                         ; 03814 ×9887
  F815  4A        LSR A                         ; 03815 ×9887
  F816  4A        LSR A                         ; 03816 ×9887
  F817  29 0C     AND #$0C                      ; 03817 ×9887
  F819  85 1E     STA $1E                       ; 03819 ×9887
  F81B  4A        LSR A                         ; 0381B ×9887
  F81C  4A        LSR A                         ; 0381C ×9887
  F81D  A8        TAY                           ; 0381D ×9887
  F81E  BE 78 F8  LDX $F878,Y                   ; 0381E ×9887
  F821  A5 2F     LDA $2F                       ; 03821 ×9887
  F823  29 3F     AND #$3F                      ; 03823 ×9887
  F825  F0 36     BEQ loc_B0_F85D               ; 03825 ×9887
  F827  D5 02     CMP $02,X                     ; 03827 ×7858
  F829  90 48     BCC loc_B0_F873               ; 03829 ×7858
  F82B  D0 08     BNE loc_B0_F835               ; 0382B ×6928
  F82D  C9 0E     CMP #$0E                      ; 0382D ×1011
  F82F  90 42     BCC loc_B0_F873               ; 0382F ×1011
  F831  C9 14     CMP #$14                      ; 03831 ×0
  F833  B0 3E     BCS loc_B0_F873               ; 03833 ×0

loc_B0_F835:                    ; from 0382b
  F835  85 2F     STA $2F                       ; 03835 ×5917
  F837  A0 00     LDY #$00                      ; 03837 ×5917
  F839  94 02     STY $02,X                     ; 03839 ×5917
  F83B  0A        ASL A                         ; 0383B ×5917
  F83C  A8        TAY                           ; 0383C ×5917
  F83D  B9 D1 FA  LDA $FAD1,Y                   ; 0383D ×5917
  F840  95 03     STA $03,X                     ; 03840 ×5917
  F842  85 F2     STA $F2                       ; 03842 ×5917
  F844  B9 D2 FA  LDA $FAD2,Y                   ; 03844 ×5917
  F847  95 04     STA $04,X                     ; 03847 ×5917
  F849  85 F3     STA $F3                       ; 03849 ×5917
  F84B  A0 01     LDY #$01                      ; 0384B ×5917
  F84D  94 00     STY $00,X                     ; 0384D ×5917
  F84F  88        DEY                           ; 0384F ×5917
  F850  94 08     STY $08,X                     ; 03850 ×5917
  F852  B1 F2     LDA ($F2),Y                   ; 03852 ×5917
  F854  29 F0     AND #$F0                      ; 03854 ×5917
  F856  C9 20     CMP #$20                      ; 03856 ×5917
  F858  F0 01     BEQ loc_B0_F85B               ; 03858 ×5917
  F85A  C8        INY                           ; 0385A ×2276

loc_B0_F85B:                    ; from 03858
  F85B  94 0A     STY $0A,X                     ; 0385B ×5917

loc_B0_F85D:                    ; from 03825
  F85D  A9 00     LDA #$00                      ; 0385D ×7946
  F85F  A4 1E     LDY $1E                       ; 0385F ×7946
  F861  C0 08     CPY #$08                      ; 03861 ×7946
  F863  F0 02     BEQ loc_B0_F867               ; 03863 ×7946
  F865  A9 30     LDA #$30                      ; 03865 ×6542

loc_B0_F867:                    ; from 03863
  F867  99 00 40  STA $4000,Y                   ; 03867 ×7946
  F86A  99 01 40  STA $4001,Y                   ; 0386A ×7946
  F86D  A5 2F     LDA $2F                       ; 0386D ×7946
  F86F  29 3F     AND #$3F                      ; 0386F ×7946
  F871  95 02     STA $02,X                     ; 03871 ×7946

loc_B0_F873:                    ; from 0382f 03829
  F873  A6 4F     LDX $4F                       ; 03873 ×9887
  F875  A4 40     LDY $40                       ; 03875 ×9887
  F877  60        RTS                           ; 03877 ×9887
  F878  .byte 10 21 32 43                                       ; 03878 data, read by 0381e

sub_B0_F87C:                    ; from 00099
  F87C  A2 10     LDX #$10                      ; 0387C ×410421
  F87E  A0 00     LDY #$00                      ; 0387E ×410421

loc_B0_F880:                    ; from 0389c
  F880  86 F4     STX $F4                       ; 03880 ×1641684
  F882  84 F5     STY $F5                       ; 03882 ×1641684
  F884  B5 02     LDA $02,X                     ; 03884 ×1641684
  F886  F0 03     BEQ loc_B0_F88B               ; 03886 ×1641684
  F888  20 C8 F8  JSR sub_B0_F8C8               ; 03888 ×626922

loc_B0_F88B:                    ; from 03886
  F88B  A5 F4     LDA $F4                       ; 0388B ×1641684
  F88D  18        CLC                           ; 0388D ×1641684
  F88E  69 11     ADC #$11                      ; 0388E ×1641684
  F890  C9 54     CMP #$54                      ; 03890 ×1641684
  F892  D0 01     BNE loc_B0_F895               ; 03892 ×1641684
  F894  60        RTS                           ; 03894 ×410421

loc_B0_F895:                    ; from 03892
  F895  AA        TAX                           ; 03895 ×1231263
  F896  A5 F5     LDA $F5                       ; 03896 ×1231263
  F898  18        CLC                           ; 03898 ×1231263
  F899  69 04     ADC #$04                      ; 03899 ×1231263
  F89B  A8        TAY                           ; 0389B ×1231263
  F89C  90 E2     BCC loc_B0_F880               ; 0389C ×1231263

loc_B0_F89E:                    ; from 03908
  F89E  94 02     STY $02,X                     ; 0389E ×4887
  F8A0  98        TYA                           ; 038A0 ×4887
  F8A1  A6 F5     LDX $F5                       ; 038A1 ×4887
  F8A3  E0 08     CPX #$08                      ; 038A3 ×4887
  F8A5  F0 02     BEQ loc_B0_F8A9               ; 038A5 ×4887
  F8A7  A9 30     LDA #$30                      ; 038A7 ×4442

loc_B0_F8A9:                    ; from 038a5
  F8A9  9D 00 40  STA $4000,X                   ; 038A9 ×4887
  F8AC  60        RTS                           ; 038AC ×4887

loc_B0_F8AD:                    ; from 03900
  F8AD  C8        INY                           ; 038AD ×1962
  F8AE  B1 F6     LDA ($F6),Y                   ; 038AE ×1962
  F8B0  95 03     STA $03,X                     ; 038B0 ×1962
  F8B2  C8        INY                           ; 038B2 ×1962
  F8B3  B1 F6     LDA ($F6),Y                   ; 038B3 ×1962
  F8B5  95 04     STA $04,X                     ; 038B5 ×1962
  F8B7  C8        INY                           ; 038B7 ×1962
  F8B8  98        TYA                           ; 038B8 ×1962
  F8B9  18        CLC                           ; 038B9 ×1962
  F8BA  65 F6     ADC $F6                       ; 038BA ×1962
  F8BC  95 06     STA $06,X                     ; 038BC ×1962
  F8BE  A9 00     LDA #$00                      ; 038BE ×1962
  F8C0  65 F7     ADC $F7                       ; 038C0 ×1962
  F8C2  95 07     STA $07,X                     ; 038C2 ×1962

loc_B0_F8C4:                    ; from 03916
  F8C4  A9 01     LDA #$01                      ; 038C4 ×3271
  F8C6  95 00     STA $00,X                     ; 038C6 ×3271

sub_B0_F8C8:                    ; from 03888
  F8C8  A0 00     LDY #$00                      ; 038C8 ×630193
  F8CA  B5 03     LDA $03,X                     ; 038CA ×630193
  F8CC  85 F6     STA $F6                       ; 038CC ×630193
  F8CE  B5 04     LDA $04,X                     ; 038CE ×630193
  F8D0  85 F7     STA $F7                       ; 038D0 ×630193
  F8D2  D6 00     DEC $00,X                     ; 038D2 ×630193
  F8D4  F0 1C     BEQ loc_B0_F8F2               ; 038D4 ×630193
  F8D6  AD 10 03  LDA $0310                     ; 038D6 ×546883
  F8D9  F0 14     BEQ loc_B0_F8EF               ; 038D9 ×546883
  F8DB  B5 02     LDA $02,X                     ; 038DB ×40016
  F8DD  C9 16     CMP #$16                      ; 038DD ×40016
  F8DF  F0 0D     BEQ loc_B0_F8EE               ; 038DF ×40016

loc_B0_F8E1:                    ; from 039ce
  F8E1  F6 00     INC $00,X                     ; 038E1 ×47746
  F8E3  98        TYA                           ; 038E3 ×47746
  F8E4  95 08     STA $08,X                     ; 038E4 ×47746
  F8E6  A6 F5     LDX $F5                       ; 038E6 ×47746
  F8E8  9D 02 40  STA $4002,X                   ; 038E8 ×47746
  F8EB  9D 03 40  STA $4003,X                   ; 038EB ×47746

loc_B0_F8EE:                    ; from 038df
  F8EE  60        RTS                           ; 038EE ×49708

loc_B0_F8EF:                    ; from 038d9
  F8EF  4C 75 F9  JMP loc_B0_F975               ; 038EF ×506867

loc_B0_F8F2:                    ; from 038d4
  F8F2  B1 F6     LDA ($F6),Y                   ; 038F2 ×83310
  F8F4  C9 FD     CMP #$FD                      ; 038F4 ×83310
  F8F6  90 20     BCC loc_B0_F918               ; 038F6 ×83310
  F8F8  D0 08     BNE loc_B0_F902               ; 038F8 ×8158
  F8FA  B5 0A     LDA $0A,X                     ; 038FA ×1962
  F8FC  09 80     ORA #$80                      ; 038FC ×1962
  F8FE  95 0A     STA $0A,X                     ; 038FE ×1962
  F900  D0 AB     BNE loc_B0_F8AD               ; 03900 ×1962

loc_B0_F902:                    ; from 038f8
  F902  C9 FE     CMP #$FE                      ; 03902 ×6196
  F904  F0 A7     BEQ loc_B0_F8AD               ; 03904 ×6196
  F906  B5 0A     LDA $0A,X                     ; 03906 ×6196
  F908  10 94     BPL loc_B0_F89E               ; 03908 ×6196
  F90A  29 7F     AND #$7F                      ; 0390A ×1309
  F90C  95 0A     STA $0A,X                     ; 0390C ×1309
  F90E  B5 06     LDA $06,X                     ; 0390E ×1309
  F910  95 03     STA $03,X                     ; 03910 ×1309
  F912  B5 07     LDA $07,X                     ; 03912 ×1309
  F914  95 04     STA $04,X                     ; 03914 ×1309
  F916  D0 AC     BNE loc_B0_F8C4               ; 03916 ×1309

loc_B0_F918:                    ; from 038f6
  F918  B5 0A     LDA $0A,X                     ; 03918 ×75152
  F91A  29 7F     AND #$7F                      ; 0391A ×75152
  F91C  F0 03     BEQ loc_B0_F921               ; 0391C ×75152
  F91E  4C C9 F9  JMP loc_B0_F9C9               ; 0391E ×46065

loc_B0_F921:                    ; from 0391c
  F921  B1 F6     LDA ($F6),Y                   ; 03921 ×29087
  F923  29 F0     AND #$F0                      ; 03923 ×29087
  F925  C9 20     CMP #$20                      ; 03925 ×29087
  F927  D0 13     BNE loc_B0_F93C               ; 03927 ×29087
  F929  B1 F6     LDA ($F6),Y                   ; 03929 ×6301
  F92B  29 0F     AND #$0F                      ; 0392B ×6301
  F92D  95 01     STA $01,X                     ; 0392D ×6301
  F92F  C8        INY                           ; 0392F ×6301
  F930  B1 F6     LDA ($F6),Y                   ; 03930 ×6301
  F932  A6 F5     LDX $F5                       ; 03932 ×6301
  F934  9D 00 40  STA $4000,X                   ; 03934 ×6301
  F937  A6 F4     LDX $F4                       ; 03937 ×6301
  F939  95 09     STA $09,X                     ; 03939 ×6301
  F93B  C8        INY                           ; 0393B ×6301

loc_B0_F93C:                    ; from 03927
  F93C  B5 01     LDA $01,X                     ; 0393C ×29087
  F93E  95 00     STA $00,X                     ; 0393E ×29087
  F940  B5 09     LDA $09,X                     ; 03940 ×29087
  F942  29 10     AND #$10                      ; 03942 ×29087
  F944  F0 1C     BEQ loc_B0_F962               ; 03944 ×29087
  F946  B5 09     LDA $09,X                     ; 03946 ×28469
  F948  29 F0     AND #$F0                      ; 03948 ×28469
  F94A  95 09     STA $09,X                     ; 0394A ×28469
  F94C  B1 F6     LDA ($F6),Y                   ; 0394C ×28469
  F94E  C9 F8     CMP #$F8                      ; 0394E ×28469
  F950  D0 03     BNE loc_B0_F955               ; 03950 ×28469
  F952  C8        INY                           ; 03952 ×41
  F953  B1 F6     LDA ($F6),Y                   ; 03953 ×41

loc_B0_F955:                    ; from 03950
  F955  4A        LSR A                         ; 03955 ×28469
  F956  4A        LSR A                         ; 03956 ×28469
  F957  4A        LSR A                         ; 03957 ×28469
  F958  4A        LSR A                         ; 03958 ×28469
  F959  15 09     ORA $09,X                     ; 03959 ×28469
  F95B  95 09     STA $09,X                     ; 0395B ×28469
  F95D  A6 F5     LDX $F5                       ; 0395D ×28469
  F95F  9D 00 40  STA $4000,X                   ; 0395F ×28469

loc_B0_F962:                    ; from 03944
  F962  B1 F6     LDA ($F6),Y                   ; 03962 ×29087
  F964  29 07     AND #$07                      ; 03964 ×29087
  F966  85 F0     STA $F0                       ; 03966 ×29087
  F968  C8        INY                           ; 03968 ×29087
  F969  B1 F6     LDA ($F6),Y                   ; 03969 ×29087
  F96B  85 F1     STA $F1                       ; 0396B ×29087
  F96D  A6 F4     LDX $F4                       ; 0396D ×29087
  F96F  20 80 FA  JSR sub_B0_FA80               ; 0396F ×29087
  F972  4C A9 FA  JMP sub_B0_FAA9               ; 03972 ×29087

loc_B0_F975:                    ; from 038ef
  F975  B5 0A     LDA $0A,X                     ; 03975 ×506867
  F977  D0 01     BNE loc_B0_F97A               ; 03977 ×506867
  F979  60        RTS                           ; 03979 ×32966

loc_B0_F97A:                    ; from 03977
  F97A  A5 F5     LDA $F5                       ; 0397A ×473901
  F97C  C9 08     CMP #$08                      ; 0397C ×473901
  F97E  D0 01     BNE loc_B0_F981               ; 0397E ×473901
  F980  60        RTS                           ; 03980 ×200234

loc_B0_F981:                    ; from 0397e
  F981  A5 F6     LDA $F6                       ; 03981 ×273667
  F983  D0 02     BNE loc_B0_F987               ; 03983 ×273667
  F985  C6 F7     DEC $F7                       ; 03985 ×4840

loc_B0_F987:                    ; from 03983
  F987  C6 F6     DEC $F6                       ; 03987 ×273667
  F989  A0 00     LDY #$00                      ; 03989 ×273667
  F98B  B1 F6     LDA ($F6),Y                   ; 0398B ×273667
  F98D  29 F0     AND #$F0                      ; 0398D ×273667
  F98F  C9 C0     CMP #$C0                      ; 0398F ×273667
  F991  D0 01     BNE loc_B0_F994               ; 03991 ×273667
  F993  60        RTS                           ; 03993 ×24285

loc_B0_F994:                    ; from 03991
  F994  B5 09     LDA $09,X                     ; 03994 ×249382
  F996  29 10     AND #$10                      ; 03996 ×249382
  F998  D0 01     BNE loc_B0_F99B               ; 03998 ×249382
  F99A  60        RTS                           ; 0399A ×117693

loc_B0_F99B:                    ; from 03998
  F99B  B5 0C     LDA $0C,X                     ; 0399B ×131689
  F99D  38        SEC                           ; 0399D ×131689
  F99E  E9 01     SBC #$01                      ; 0399E ×131689
  F9A0  95 0C     STA $0C,X                     ; 039A0 ×131689
  F9A2  D5 00     CMP $00,X                     ; 039A2 ×131689
  F9A4  D0 08     BNE loc_B0_F9AE               ; 039A4 ×131689
  F9A6  38        SEC                           ; 039A6 ×107844
  F9A7  F5 10     SBC $10,X                     ; 039A7 ×107844
  F9A9  90 08     BCC loc_B0_F9B3               ; 039A9 ×107844
  F9AB  F0 06     BEQ loc_B0_F9B3               ; 039AB ×67915
  F9AD  60        RTS                           ; 039AD ×61396

loc_B0_F9AE:                    ; from 039a4
  F9AE  38        SEC                           ; 039AE ×23845
  F9AF  E9 01     SBC #$01                      ; 039AF ×23845
  F9B1  95 0C     STA $0C,X                     ; 039B1 ×23845

loc_B0_F9B3:                    ; from 039a9 039ab
  F9B3  B5 09     LDA $09,X                     ; 039B3 ×70293
  F9B5  29 0F     AND #$0F                      ; 039B5 ×70293
  F9B7  38        SEC                           ; 039B7 ×70293
  F9B8  E9 01     SBC #$01                      ; 039B8 ×70293
  F9BA  10 01     BPL loc_B0_F9BD               ; 039BA ×70293
  F9BC  60        RTS                           ; 039BC ×4529

loc_B0_F9BD:                    ; from 039ba
  F9BD  B5 09     LDA $09,X                     ; 039BD ×65764
  F9BF  E9 01     SBC #$01                      ; 039BF ×65764
  F9C1  95 09     STA $09,X                     ; 039C1 ×65764
  F9C3  A6 F5     LDX $F5                       ; 039C3 ×65764
  F9C5  9D 00 40  STA $4000,X                   ; 039C5 ×65764
  F9C8  60        RTS                           ; 039C8 ×65764

loc_B0_F9C9:                    ; from 0391e
  F9C9  AD 10 03  LDA $0310                     ; 039C9 ×46065
  F9CC  F0 03     BEQ loc_B0_F9D1               ; 039CC ×46065
  F9CE  4C E1 F8  JMP loc_B0_F8E1               ; 039CE ×9692

loc_B0_F9D1:                    ; from 039cc
  F9D1  B1 F6     LDA ($F6),Y                   ; 039D1 ×36373
  F9D3  29 F0     AND #$F0                      ; 039D3 ×36373
  F9D5  C9 D0     CMP #$D0                      ; 039D5 ×36373
  F9D7  D0 26     BNE loc_B0_F9FF               ; 039D7 ×36373
  F9D9  B1 F6     LDA ($F6),Y                   ; 039D9 ×2247
  F9DB  29 0F     AND #$0F                      ; 039DB ×2247
  F9DD  95 0D     STA $0D,X                     ; 039DD ×2247
  F9DF  C8        INY                           ; 039DF ×2247
  F9E0  B1 F6     LDA ($F6),Y                   ; 039E0 ×2247
  F9E2  95 05     STA $05,X                     ; 039E2 ×2247
  F9E4  A6 F5     LDX $F5                       ; 039E4 ×2247
  F9E6  9D 00 40  STA $4000,X                   ; 039E6 ×2247
  F9E9  C8        INY                           ; 039E9 ×2247
  F9EA  E0 08     CPX #$08                      ; 039EA ×2247
  F9EC  F0 24     BEQ loc_B0_FA12               ; 039EC ×2247
  F9EE  B1 F6     LDA ($F6),Y                   ; 039EE ×1797
  F9F0  4A        LSR A                         ; 039F0 ×1797
  F9F1  4A        LSR A                         ; 039F1 ×1797
  F9F2  4A        LSR A                         ; 039F2 ×1797
  F9F3  4A        LSR A                         ; 039F3 ×1797
  F9F4  A6 F4     LDX $F4                       ; 039F4 ×1797
  F9F6  95 0F     STA $0F,X                     ; 039F6 ×1797
  F9F8  B1 F6     LDA ($F6),Y                   ; 039F8 ×1797
  F9FA  29 0F     AND #$0F                      ; 039FA ×1797
  F9FC  95 10     STA $10,X                     ; 039FC ×1797
  F9FE  C8        INY                           ; 039FE ×1797

loc_B0_F9FF:                    ; from 039d7
  F9FF  A6 F5     LDX $F5                       ; 039FF ×35923
  FA01  E0 08     CPX #$08                      ; 03A01 ×35923
  FA03  F0 0D     BEQ loc_B0_FA12               ; 03A03 ×35923
  FA05  B1 F6     LDA ($F6),Y                   ; 03A05 ×22538
  FA07  C9 F0     CMP #$F0                      ; 03A07 ×22538
  FA09  D0 07     BNE loc_B0_FA12               ; 03A09 ×22538
  FA0B  C8        INY                           ; 03A0B ×884
  FA0C  B1 F6     LDA ($F6),Y                   ; 03A0C ×884
  FA0E  9D 01 40  STA $4001,X                   ; 03A0E ×884
  FA11  C8        INY                           ; 03A11 ×884

loc_B0_FA12:                    ; from 03a09 03a03 039ec
  FA12  B1 F6     LDA ($F6),Y                   ; 03A12 ×36373
  FA14  29 F0     AND #$F0                      ; 03A14 ×36373
  FA16  C9 E0     CMP #$E0                      ; 03A16 ×36373
  FA18  D0 09     BNE loc_B0_FA23               ; 03A18 ×36373
  FA1A  B1 F6     LDA ($F6),Y                   ; 03A1A ×9786
  FA1C  29 0F     AND #$0F                      ; 03A1C ×9786
  FA1E  A6 F4     LDX $F4                       ; 03A1E ×9786
  FA20  95 0B     STA $0B,X                     ; 03A20 ×9786
  FA22  C8        INY                           ; 03A22 ×9786

loc_B0_FA23:                    ; from 03a18
  FA23  20 A9 FA  JSR sub_B0_FAA9               ; 03A23 ×36373
  FA26  88        DEY                           ; 03A26 ×36373
  FA27  B1 F6     LDA ($F6),Y                   ; 03A27 ×36373
  FA29  29 0F     AND #$0F                      ; 03A29 ×36373
  FA2B  85 F0     STA $F0                       ; 03A2B ×36373
  FA2D  F0 0B     BEQ loc_B0_FA3A               ; 03A2D ×36373
  FA2F  B5 0D     LDA $0D,X                     ; 03A2F ×30392
  FA31  18        CLC                           ; 03A31 ×30392

loc_B0_FA32:                    ; from 03a36
  FA32  75 0D     ADC $0D,X                     ; 03A32 ×51089
  FA34  C6 F0     DEC $F0                       ; 03A34 ×51089
  FA36  D0 FA     BNE loc_B0_FA32               ; 03A36 ×51089
  FA38  F0 02     BEQ loc_B0_FA3C               ; 03A38 ×30392

loc_B0_FA3A:                    ; from 03a2d
  FA3A  B5 0D     LDA $0D,X                     ; 03A3A ×5981

loc_B0_FA3C:                    ; from 03a38
  FA3C  95 00     STA $00,X                     ; 03A3C ×36373
  FA3E  18        CLC                           ; 03A3E ×36373
  FA3F  75 0F     ADC $0F,X                     ; 03A3F ×36373
  FA41  95 0C     STA $0C,X                     ; 03A41 ×36373
  FA43  B5 05     LDA $05,X                     ; 03A43 ×36373
  FA45  95 09     STA $09,X                     ; 03A45 ×36373
  FA47  A6 F5     LDX $F5                       ; 03A47 ×36373
  FA49  9D 00 40  STA $4000,X                   ; 03A49 ×36373
  FA4C  B1 F6     LDA ($F6),Y                   ; 03A4C ×36373
  FA4E  4A        LSR A                         ; 03A4E ×36373
  FA4F  4A        LSR A                         ; 03A4F ×36373
  FA50  4A        LSR A                         ; 03A50 ×36373
  FA51  4A        LSR A                         ; 03A51 ×36373
  FA52  C9 0C     CMP #$0C                      ; 03A52 ×36373
  FA54  D0 0C     BNE loc_B0_FA62               ; 03A54 ×36373
  FA56  A9 00     LDA #$00                      ; 03A56 ×3390
  FA58  E0 08     CPX #$08                      ; 03A58 ×3390
  FA5A  F0 02     BEQ loc_B0_FA5E               ; 03A5A ×3390
  FA5C  A9 30     LDA #$30                      ; 03A5C ×2147

loc_B0_FA5E:                    ; from 03a5a
  FA5E  9D 00 40  STA $4000,X                   ; 03A5E ×3390
  FA61  60        RTS                           ; 03A61 ×3390

loc_B0_FA62:                    ; from 03a54
  FA62  A6 F4     LDX $F4                       ; 03A62 ×32983
  FA64  0A        ASL A                         ; 03A64 ×32983
  FA65  A8        TAY                           ; 03A65 ×32983
  FA66  B9 BB FA  LDA $FABB,Y                   ; 03A66 ×32983
  FA69  85 F0     STA $F0                       ; 03A69 ×32983
  FA6B  C8        INY                           ; 03A6B ×32983
  FA6C  B9 BB FA  LDA $FABB,Y                   ; 03A6C ×32983
  FA6F  85 F1     STA $F1                       ; 03A6F ×32983
  FA71  B4 0B     LDY $0B,X                     ; 03A71 ×32983

loc_B0_FA73:                    ; from 03a7d
  FA73  98        TYA                           ; 03A73 ×112651
  FA74  C9 04     CMP #$04                      ; 03A74 ×112651
  FA76  F0 08     BEQ sub_B0_FA80               ; 03A76 ×112651
  FA78  46 F0     LSR $F0                       ; 03A78 ×79668
  FA7A  66 F1     ROR $F1                       ; 03A7A ×79668
  FA7C  C8        INY                           ; 03A7C ×79668
  FA7D  4C 73 FA  JMP loc_B0_FA73               ; 03A7D ×79668

sub_B0_FA80:                    ; from 03a76 0396f
  FA80  A5 F0     LDA $F0                       ; 03A80 ×62070
  FA82  09 08     ORA #$08                      ; 03A82 ×62070
  FA84  85 F0     STA $F0                       ; 03A84 ×62070
  FA86  D5 08     CMP $08,X                     ; 03A86 ×62070
  FA88  D0 0E     BNE loc_B0_FA98               ; 03A88 ×62070
  FA8A  B5 09     LDA $09,X                     ; 03A8A ×46437
  FA8C  29 10     AND #$10                      ; 03A8C ×46437
  FA8E  F0 0A     BEQ loc_B0_FA9A               ; 03A8E ×46437
  FA90  A6 F5     LDX $F5                       ; 03A90 ×31887
  FA92  E0 08     CPX #$08                      ; 03A92 ×31887
  FA94  F0 04     BEQ loc_B0_FA9A               ; 03A94 ×31887
  FA96  D0 09     BNE loc_B0_FAA1               ; 03A96 ×31887

loc_B0_FA98:                    ; from 03a88
  FA98  95 08     STA $08,X                     ; 03A98 ×15633

loc_B0_FA9A:                    ; from 03a8e
  FA9A  A5 F0     LDA $F0                       ; 03A9A ×30183
  FA9C  A6 F5     LDX $F5                       ; 03A9C ×30183
  FA9E  9D 03 40  STA $4003,X                   ; 03A9E ×30183

loc_B0_FAA1:                    ; from 03a96
  FAA1  A6 F5     LDX $F5                       ; 03AA1 ×62070
  FAA3  A5 F1     LDA $F1                       ; 03AA3 ×62070
  FAA5  9D 02 40  STA $4002,X                   ; 03AA5 ×62070
  FAA8  60        RTS                           ; 03AA8 ×62070

sub_B0_FAA9:                    ; from 03a23 03972
  FAA9  C8        INY                           ; 03AA9 ×65460
  FAAA  98        TYA                           ; 03AAA ×65460
  FAAB  18        CLC                           ; 03AAB ×65460
  FAAC  65 F6     ADC $F6                       ; 03AAC ×65460
  FAAE  A6 F4     LDX $F4                       ; 03AAE ×65460
  FAB0  95 03     STA $03,X                     ; 03AB0 ×65460
  FAB2  90 06     BCC loc_B0_FABA               ; 03AB2 ×65460
  FAB4  A5 F7     LDA $F7                       ; 03AB4 ×483
  FAB6  69 00     ADC #$00                      ; 03AB6 ×483
  FAB8  95 04     STA $04,X                     ; 03AB8 ×483

loc_B0_FABA:                    ; from 03ab2
  FABA  60        RTS                           ; 03ABA ×65460
  FABB  .byte 06 AE 06 4E 05 F4 05 9E 05 4E 05 01 04 B9 04 76   ; 03ABB data, read by 03a66 03a6c
  FACB  .byte 04 36 03 F9 03 C0 03 8A 18 FB 37 FB 4C FB         ; 03ACB data, read by 03a66 03a6c 0383d 03844
  FAD9  .byte FF FA                                             ; 03AD9
  FADB  .byte 5F FB                                             ; 03ADB data, read by 0383d 03844
  FADD  .byte 7E FB                                             ; 03ADD
  FADF  .byte 91 FB 98 FB D1 FB DC FB ED FB 08 FC 23 FC 31 FC   ; 03ADF data, read by 0383d 03844
  FAEF  .byte 3F FD A5 FD 25 FE BF FE 18 FF B1 FC DD FC A0 FC   ; 03AEF data, read by 0383d 03844
  FAFF  .byte 24 B0 E0 60 F0 50 F0 40 F0 30 E0 20 00 00 A0 20   ; 03AFF
  FB0F  .byte 00 00 70 20 00 00 30 20 FF                        ; 03B0F
  FB18  .byte 21 B0 F1 70 F1 50 F1 50 F1 78 C1 70 C1 58 91 70   ; 03B18 data, read by 03852 038f2 03921 03929 (+4)
  FB28  .byte 81 70 91 60 81 48 A1 38 91 4B 71 2B 51 28 FF 23   ; 03B28 data, read by 038f2 03921 0394c 03962 (+3)
  FB38  .byte 70 F0 87 D0 78 24 B0 F0 87 D0 6C D0 5B 22 B0 C0   ; 03B38 data, read by 03930 0394c 03962 03969 (+3)
  FB48  .byte 55 B0 4F FF 21 B0 F0 D0 F0 C0 F0 B0 F0 98 F0 88   ; 03B48 data, read by 03969 038f2 03921 0394c (+4)
  FB58  .byte F0 78 C0 6C B0 58 FF 23 B0 00 00 00 00 23 8F 00   ; 03B58 data, read by 038f2 03921 0394c 03962 (+4)
  FB68  .byte 6A 00 47 00 3F 22 B0 F0 38 A0 35 F0 2F 21 86 00   ; 03B68 data, read by 03969 038f2 03921 03962 (+3)
  FB78  .byte 2A 00 28 00 23 FF                                 ; 03B78 data, read by 03969 038f2 03921 03962
  FB7E  .byte 24 E4 D0 8E F0 6A F0 54 F0 47 D0 8E F0 6A F0 54   ; 03B7E
  FB8E  .byte F0 47 FF                                          ; 03B8E
  FB91  .byte 21 70 F0 39 D0 4A FF 21 B0 F0 40 F0 43 F0 45 F0   ; 03B91 data, read by 03852 038f2 03921 03929 (+4)
  FBA1  .byte 55 F0 55 F0 5A F0 60 F0 65 F0 6A F0 70 F0 78 F0   ; 03BA1 data, read by 03969 038f2 03921 0394c (+1)
  FBB1  .byte 80 F0 88 F0 90 F0 98 F0 A0 F0 AA F0 B5 F0 C0 F0   ; 03BB1 data, read by 03969 038f2 03921 0394c (+1)
  FBC1  .byte D0 F0 E0 F0 F0 F1 00 F1 10 F1 28 F1 40 F1 60 FF   ; 03BC1 data, read by 03969 038f2 03921 0394c (+1)
  FBD1  .byte 23 70 F2 50 00 00 22 B0 F1 F0 FF 23 30 F0 0A 00   ; 03BD1 data, read by 03852 038f2 03921 03929 (+4)
  FBE1  .byte 00 22 30 F0 0D 2F 30 00 00 00 00 FF D4 46 22 E0   ; 03BE1 data, read by 03969 038f2 03921 03929 (+12)
  FBF1  .byte 01 21 01 D6 46 22 E1 72 40 02 50 42 00 E2 91 C1   ; 03BF1 data, read by 03a27 03a4c 0398b 038f2 (+8)
  FC01  .byte B1 C1 F0 9C E1 03 FF D4 46 22 E1 01 21 01 D6 46   ; 03C01 data, read by 038f2 039d1 03a05 03a12 (+10)
  FC11  .byte 22 E2 72 40 02 50 42 00 E3 91 C1 B1 C1 F0 94 E1   ; 03C11 data, read by 039ee 039f8 03a05 03a12 (+7)
  FC21  .byte 03 FF D6 20 E2 43 43 03 03 E3 91 C1 71 C1 03 FF   ; 03C21 data, read by 03a27 03a4c 0398b 038f2 (+6)
  FC31  .byte FD 86 FC 61 71 70 60 41 71 61 60 40 21 61 41 E2   ; 03C31 data, read by 03852 038f2 038ae 038b3 (+7)
  FC41  .byte B1 E1 11 21 43 C1 FD 86 FC 21 B1 91 71 61 41 21   ; 03C41 data, read by 03a27 03a4c 0398b 038f2 (+6)
  FC51  .byte 11 21 41 60 70 61 41 21 E2 90 B0 E1 10 20 40 60   ; 03C51 data, read by 038f2 039d1 03a05 03a12 (+4)
  FC61  .byte 71 71 71                                          ; 03C61 data, read by 038f2 039d1 03a05 03a12 (+3)
  FC64  .byte 71 70 60 73 81 91 91 90 70 60 70 95 91 B1 B1 E0   ; 03C64
  FC74  .byte 22 E1 B0 91 91 90 70 61 71 71 11 41 21 21 21 FE   ; 03C74
  FC84  .byte 31 FC                                             ; 03C84
  FC86  .byte E2 B0 E1 10 21 21 20 10 20 40 61 61 60 50 60 70   ; 03C86 data, read by 038f2 039d1 03a05 03a12 (+4)
  FC96  .byte 91 91 90 80 90 E0 20 E1 95 FF 25 48 00 A0 00 86   ; 03C96 data, read by 038f2 039d1 03a05 03a12 (+10)
  FCA6  .byte 00 71 00 86 00 71 2F 42 00 55 FF 27 B0 00 00 FD   ; 03CA6 data, read by 038f2 03921 03962 03969 (+4)
  FCB6  .byte BC FC FD BC FC FF 26 B0 50 21 60 20 70 21 60 20   ; 03CB6 data, read by 038ae 038b3 038f2 03921 (+6)
  FCC6  .byte 2F B0 00 00 26 B0 50 21 60 20 50 21 40 20 2F B0   ; 03CC6 data, read by 038f2 03921 03929 03930 (+4)
  FCD6  .byte 00 00 00 00 00 00 FF 25 30 30 07 40 08 50 07 60   ; 03CD6 data, read by 0394c 03962 03969 0398b (+5)
  FCE6  .byte 08 70 07 90 08 B0 07 C0 08 C0 07 D0 07 D0 08 D0   ; 03CE6 data, read by 03969 038f2 03921 0394c (+1)
  FCF6  .byte 07 E0 08 E0 07 E0 08 E0 07 E0 08 E0 07 E0 08 D0   ; 03CF6 data, read by 03969 038f2 03921 0394c (+1)
  FD06  .byte 07 D0 08 D0 07 D0 08 D0 07 E0 08 E0 07 E0 08 E0   ; 03D06 data, read by 03969 038f2 03921 0394c (+1)
  FD16  .byte 07 D0 08 C0 08 C0 08 B0 07 B0 08 A0 07 A0 08 A0   ; 03D16 data, read by 03969 038f2 03921 0394c (+1)
  FD26  .byte 07 A0 08 A0 07 90 08 80 07 80 08 70 07 60 08 50   ; 03D26 data, read by 03969 038f2 03921 0394c (+1)
  FD36  .byte 07 40 08 30 07 F8 20 08 FF E2 C1 FD 95 FD 21 91   ; 03D36 data, read by 03969 038f2 03921 0394c (+10)
  FD46  .byte 11 91 11 91 21 91 21 91 E3 B1 E2 81 41 81 91 90   ; 03D46 data, read by 038f2 039d1 03a12 03a27 (+2)
  FD56  .byte 70 61 41 FD 95 FD 21 21 71 61 41 21 11 E3 B1 91   ; 03D56 data, read by 038f2 039d1 03a12 03a27 (+4)
  FD66  .byte 61 73 91 E2 71 61 C5 11 91 21                     ; 03D66 data, read by 038f2 039d1 03a12 03a27 (+2)
  FD70  .byte 91 41 91 51 91 61 91 11 91 21 90 80 91 61 71 70   ; 03D70
  FD80  .byte 90 B1 71 61 E1 21 E2 21 20 30 40 50 60 70 93 61   ; 03D80
  FD90  .byte 61 61 FE 3F FD                                    ; 03D90
  FD95  .byte 21 91 21 91 21 91 21 91 21 60 50 61 91 21 91 FF   ; 03D95 data, read by 038f2 039d1 03a12 03a27 (+1)
  FDA5  .byte FD 0F FE 21 10 20 41 01 E2 B1 A1 B1 E1 41 26 C0   ; 03DA5 data, read by 03852 038f2 038ae 038b3 (+7)
  FDB5  .byte FD 0F FE 21 01 E2 B1 91 79 C1 70 50 40 20 43 72   ; 03DB5 data, read by 038f2 038ae 038b3 039d1 (+6)
  FDC5  .byte 70 E1 41 01 E2 71 41 91 71 51 40 57 C0 23 52 50   ; 03DC5 data, read by 038f2 039d1 03a05 03a12 (+4)
  FDD5  .byte E1 21 E2 B1 91 51 41 51 61 90 74 70 50 40 20 43   ; 03DD5 data, read by 038f2 039d1 03a05 03a12 (+4)
  FDE5  .byte 72 70 E1 71 51 41 11 41 21 11 20 E2 95 C0 B1 E1   ; 03DE5 data, read by 038f2 039d1 03a05 03a12 (+4)
  FDF5  .byte 21 01 E2 B1                                       ; 03DF5 data, read by 03a27 03a4c 0398b 038f2 (+4)
  FDF9  .byte E1 01 41 21 01 E2 B0 E1 07 C0 E2 B0 90 80 91 A0   ; 03DF9
  FE09  .byte B0 E1 00 FE A5 FD                                 ; 03E09
  FE0F  .byte E1 11 21 41 21 72 20 E2 B1 71 B1 91 81 91 E1 45   ; 03E0F data, read by 038f2 039d1 03a05 03a12 (+4)
  FE1F  .byte 41 61 51 41 31 FF FD B9 FE FD B9 FE FD A7 FE FD   ; 03E1F data, read by 038f2 039d1 03a05 03a12 (+6)
  FE2F  .byte A7 FE FD B0 FE FD B0 FE FD B9 FE 71 21 41 61 FD   ; 03E2F data, read by 038ae 038b3 038f2 039d1 (+3)
  FE3F  .byte B9 FE FD B9 FE FD A7 FE FD A7 FE FD B0 FE FD B0   ; 03E3F data, read by 038ae 038b3 038f2
  FE4F  .byte FE FD B9 FE E2 73 C3 01 71 41 71 01 71 41 71 21   ; 03E4F data, read by 038b3 038f2 038ae 039d1 (+4)
  FE5F  .byte 91 51 91 21 91 51 91 E3 71 E2 51 21 51 E3 71 E2   ; 03E5F data, read by 038f2 039d1 03a12 03a27 (+2)
  FE6F  .byte 51 21 51 01 71 61 71 01 71 61 71 01 71 61 71 11   ; 03E6F data, read by 03a27 03a4c 038f2 039d1 (+1)
  FE7F  .byte 91 71 91 21 91 51 91 31 E1 01 E3 91 E1 01 E3 71   ; 03E7F data, read by 038f2 039d1 03a12 03a27 (+2)
  FE8F  .byte E2 71 41                                          ; 03E8F data, read by 038f2 039d1 03a12 03a1a (+2)
  FE92  .byte 71 E3 71 E2 51 21 51 01 71 41 71 21 E1 01 E2 61   ; 03E92
  FEA2  .byte E1 01 FE 25 FE                                    ; 03EA2
  FEA7  .byte E2 91 E1 11 E2 41 E1 11 FF E2 91 E1 01 E2 21 E1   ; 03EA7 data, read by 038f2 039d1 03a12 03a1a (+2)
  FEB7  .byte 01 FF E2 71 B1 21 B1 FF E1 03 FD 01 FF 13 23 47   ; 03EB7 data, read by 03a27 03a4c 038f2 039d1 (+7)
  FEC7  .byte 23 C3 13 23 97 73 C3 E1 03 FD 01 FF 63 93 97 73   ; 03EC7 data, read by 038f2 039d1 03a05 03a12 (+6)
  FED7  .byte E1 67 43 47 23 E2 73 C3 FD 0C FF 47               ; 03ED7 data, read by 038f2 039d1 03a05 03a12 (+6)
  FEE3  .byte 73 47 73 E1 2F 03 FD 0C FF E1 03 23 43 71 71 72   ; 03EE3
  FEF3  .byte C0 52 C0 41 41 42 C0 22 C0 E1 03 FE BF FE         ; 03EF3
  FF01  .byte E2 B3 B7 93 C3 83 93 B7 93 C3 FF E2 73 57 73 57   ; 03F01 data, read by 038f2 039d1 03a05 03a12 (+4)
  FF11  .byte 73 E1 4F 23 E2 73 FF C7 FD 64 FF E2 23 53 53 73   ; 03F11 data, read by 038f2 039d1 03a05 03a12 (+7)
  FF21  .byte B3 B3 23 73 73 73 B3 B3 23 B3 B3 FD 64 FF E2 33   ; 03F21 data, read by 038f2 039d1 03a12 03a27 (+4)
  FF31  .byte 93 93 43 73 73 03 43 43 23 63 63 73 C7 FD 74 FF   ; 03F31 data, read by 038f2 039d1 03a12 03a27 (+3)
  FF41  .byte 03 43                                             ; 03F41 data, read by 038f2 039d1 03a12 03a27 (+1)
  FF43  .byte 43 E3 73 E2 43 43 03 43 43 E3 73 E2 43 43 FD 74   ; 03F43
  FF53  .byte FF E1 03 E2 B3 A3 97 83 73 E3 73 E2 73 03 FE 18   ; 03F53
  FF63  .byte FF                                                ; 03F63
  FF64  .byte E2 93 E1 03 03 E2 23 E1 03 03 E2 93 E1 03 03 FF   ; 03F64 data, read by 038f2 039d1 03a12 03a1a (+2)
  FF74  .byte 23 73 73 E3 73 E2 73 73 23 73 73 E3 73 E2 73 73   ; 03F74 data, read by 038f2 039d1 03a12 03a27 (+2)
  FF84  .byte FF                                                ; 03F84 data, read by 038f2
  FF85  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 03F85
  FF95  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 03F95
  FFA5  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 03FA5
  FFB5  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF            ; 03FB5
  FFC2  .byte 6E C7 86 C7 8C C7 9D C7 02 C8 0F C8               ; 03FC2 data, read by 004f2 004f7
  FFCE  .byte 74 C7                                             ; 03FCE
  FFD0  .byte 92 C7                                             ; 03FD0 data, read by 004f2 004f7
  FFD2  .byte CA C7                                             ; 03FD2
  FFD4  .byte 70 D6 FA D6                                       ; 03FD4 data, read by 004f2 004f7
  FFD8  .byte 63 C7                                             ; 03FD8
  FFDA  .byte 24 D7 30 D7 CA C7 D8 C7 E6 C7 F4 C7               ; 03FDA data, read by 004f2 004f7
  FFE6  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 03FE6
  FFF6  .byte 04 01 02 01 5A C0                                 ; 03FF6 data, read by 00578 00057 000ca 00519 (+13)
  FFFC  .byte 00 C0 B7 C0                                       ; 03FFC
