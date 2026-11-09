; bank 0 — PRG $00000-$03FFF, mapped at $C000-$FFFF

  C000  D8        CLD                           ; 00000 ×3
  C001  78        SEI                           ; 00001 ×3

loc_B0_C002:                    ; from 00005
  C002  AD 02 20  LDA $2002                     ; 00002 ×25578
  C005  10 FB     BPL loc_B0_C002               ; 00005 ×25578

loc_B0_C007:                    ; from 0000a
  C007  AD 02 20  LDA $2002                     ; 00007 ×12762
  C00A  10 FB     BPL loc_B0_C007               ; 0000A ×12762
  C00C  20 B8 C0  JSR sub_B0_C0B8               ; 0000C ×3
  C00F  A2 FF     LDX #$FF                      ; 0000F ×3
  C011  9A        TXS                           ; 00011 ×3
  C012  A2 10     LDX #$10                      ; 00012 ×3
  C014  8A        TXA                           ; 00014 ×3
  C015  DD EF 07  CMP $07EF,X                   ; 00015 ×3
  C018  D0 05     BNE loc_B0_C01F               ; 00018 ×3
  C01A  CA        DEX                           ; 0001A inferred, not run
  C01B  D0 F7     BNE $C014                     ; 0001B inferred, not run
  C01D  F0 0E     BEQ $C02D                     ; 0001D inferred, not run

loc_B0_C01F:                    ; from 00018
  C01F  A0 57     LDY #$57                      ; 0001F ×3
  C021  A9 00     LDA #$00                      ; 00021 ×3

loc_B0_C023:                    ; from 00027
  C023  99 00 00  STA $0000,Y                   ; 00023 ×507
  C026  C8        INY                           ; 00026 ×507
  C027  D0 FA     BNE loc_B0_C023               ; 00027 ×507
  C029  A9 02     LDA #$02                      ; 00029 ×3
  C02B  85 59     STA $59                       ; 0002B ×3
  C02D  A0 EF     LDY #$EF                      ; 0002D ×3
  C02F  A9 07     LDA #$07                      ; 0002F ×3
  C031  85 E1     STA $E1                       ; 00031 ×3
  C033  A9 00     LDA #$00                      ; 00033 ×3
  C035  85 E0     STA $E0                       ; 00035 ×3

loc_B0_C037:                    ; from 0003a 00040 00044
  C037  91 E0     STA ($E0),Y                   ; 00037 ×5583
  C039  88        DEY                           ; 00039 ×5583
  C03A  D0 FB     BNE loc_B0_C037               ; 0003A ×5583
  C03C  C6 E1     DEC $E1                       ; 0003C ×24
  C03E  30 06     BMI loc_B0_C046               ; 0003E ×24
  C040  D0 F5     BNE loc_B0_C037               ; 00040 ×21
  C042  A0 56     LDY #$56                      ; 00042 ×3
  C044  D0 F1     BNE loc_B0_C037               ; 00044 ×3

loc_B0_C046:                    ; from 0003e
  C046  85 00     STA $00                       ; 00046 ×3
  C048  8D 00 07  STA $0700                     ; 00048 ×3
  C04B  A2 10     LDX #$10                      ; 0004B ×3

loc_B0_C04D:                    ; from 00052
  C04D  8A        TXA                           ; 0004D ×48
  C04E  9D EF 07  STA $07EF,X                   ; 0004E ×48
  C051  CA        DEX                           ; 00051 ×48
  C052  D0 F9     BNE loc_B0_C04D               ; 00052 ×48
  C054  20 B8 C3  JSR sub_B0_C3B8               ; 00054 ×3

loc_B0_C057:                    ; from 00057
  C057  4C 57 C0  JMP loc_B0_C057               ; 00057 ×350671547
  C05A  48        PHA                           ; 0005A ×59943
  C05B  8A        TXA                           ; 0005B ×59943
  C05C  48        PHA                           ; 0005C ×59943
  C05D  98        TYA                           ; 0005D ×59943
  C05E  48        PHA                           ; 0005E ×59943
  C05F  AD 02 20  LDA $2002                     ; 0005F ×59943
  C062  A5 04     LDA $04                       ; 00062 ×59943
  C064  D0 23     BNE loc_B0_C089               ; 00064 ×59943
  C066  A9 00     LDA #$00                      ; 00066 ×59881
  C068  8D 03 20  STA $2003                     ; 00068 ×59881
  C06B  A9 02     LDA #$02                      ; 0006B ×59881
  C06D  8D 14 40  STA $4014                     ; 0006D ×59881
  C070  E6 04     INC $04                       ; 00070 ×59881
  C072  20 B8 C0  JSR sub_B0_C0B8               ; 00072 ×59881
  C075  20 B7 C1  JSR sub_B0_C1B7               ; 00075 ×59881
  C078  A5 FB     LDA $FB                       ; 00078 ×59881
  C07A  F0 06     BEQ loc_B0_C082               ; 0007A ×59881
  C07C  C6 FB     DEC $FB                       ; 0007C ×817
  C07E  A9 00     LDA #$00                      ; 0007E ×817
  C080  F0 02     BEQ loc_B0_C084               ; 00080 ×817

loc_B0_C082:                    ; from 0007a
  C082  A5 54     LDA $54                       ; 00082 ×59064

loc_B0_C084:                    ; from 00080
  C084  8D 01 20  STA $2001                     ; 00084 ×59881
  C087  C6 04     DEC $04                       ; 00087 ×59881

loc_B0_C089:                    ; from 00064
  C089  AD 02 20  LDA $2002                     ; 00089 ×59943
  C08C  A9 00     LDA #$00                      ; 0008C ×59943
  C08E  8D 05 20  STA $2005                     ; 0008E ×59943
  C091  8D 05 20  STA $2005                     ; 00091 ×59943
  C094  A9 7E     LDA #$7E                      ; 00094 ×59943
  C096  20 C5 C0  JSR sub_B0_C0C5               ; 00096 ×59943
  C099  20 7C F8  JSR sub_B0_F87C               ; 00099 ×59943
  C09C  A5 04     LDA $04                       ; 0009C ×59943
  C09E  F0 05     BEQ loc_B0_C0A5               ; 0009E ×59943
  C0A0  20 C3 C0  JSR sub_B0_C0C3               ; 000A0 ×62
  C0A3  D0 0D     BNE loc_B0_C0B2               ; 000A3 ×62

loc_B0_C0A5:                    ; from 0009e
  C0A5  E6 04     INC $04                       ; 000A5 ×59881
  C0A7  20 02 C4  JSR sub_B0_C402               ; 000A7 ×59881
  C0AA  20 C3 C0  JSR sub_B0_C0C3               ; 000AA ×59881
  C0AD  20 D0 C0  JSR sub_B0_C0D0               ; 000AD ×59881
  C0B0  C6 04     DEC $04                       ; 000B0 ×59881

loc_B0_C0B2:                    ; from 000a3
  C0B2  68        PLA                           ; 000B2 ×59943
  C0B3  A8        TAY                           ; 000B3 ×59943
  C0B4  68        PLA                           ; 000B4 ×59943
  C0B5  AA        TAX                           ; 000B5 ×59943
  C0B6  68        PLA                           ; 000B6 ×59943
  C0B7  40        RTI                           ; 000B7 ×59943

sub_B0_C0B8:                    ; from 00072 00200 0048d 0000c
  C0B8  A9 08     LDA #$08                      ; 000B8 ×59902
  C0BA  8D 00 20  STA $2000                     ; 000BA ×59902
  C0BD  A9 00     LDA #$00                      ; 000BD ×59902
  C0BF  8D 01 20  STA $2001                     ; 000BF ×59902
  C0C2  60        RTS                           ; 000C2 ×59902

sub_B0_C0C3:                    ; from 000aa 000a0 0049c
  C0C3  A9 FE     LDA #$FE                      ; 000C3 ×59949

sub_B0_C0C5:                    ; from 00096
  C0C5  25 53     AND $53                       ; 000C5 ×119892
  C0C7  8D 00 20  STA $2000                     ; 000C7 ×119892
  C0CA  60        RTS                           ; 000CA ×119892

sub_B0_C0CB:                    ; from 0075d 003cb
  C0CB  A9 1E     LDA #$1E                      ; 000CB ×33
  C0CD  85 54     STA $54                       ; 000CD ×33
  C0CF  60        RTS                           ; 000CF ×33

sub_B0_C0D0:                    ; from 000ad
  C0D0  E6 09     INC $09                       ; 000D0 ×59881
  C0D2  A5 00     LDA $00                       ; 000D2 ×59881
  C0D4  20 CD C4  JSR sub_B0_C4CD               ; 000D4 ×59881
  C0D7  .byte 07 C1 07 C1 E9 C0 F9 C0 07 C1 1A C8 00 C1 07 C1   ; 000D7 data, read by 004d6 004da
  C0E7  .byte 08 C1                                             ; 000E7

jt_B0_C0E9:                    ; from 004e0
  C0E9  A6 01     LDX $01                       ; 000E9 ×6307
  C0EB  F0 1A     BEQ jt_B0_C107                ; 000EB ×6307
  C0ED  20 6D D7  JSR sub_B0_D76D               ; 000ED ×6300
  C0F0  A5 0A     LDA $0A                       ; 000F0 ×6300
  C0F2  F0 13     BEQ jt_B0_C107                ; 000F2 ×6300

loc_B0_C0F4:                    ; from 00388
  C0F4  A9 00     LDA #$00                      ; 000F4 ×10
  C0F6  4C 42 C3  JMP loc_B0_C342               ; 000F6 ×10

jt_B0_C0F9:                    ; from 004e0
  C0F9  A5 01     LDA $01                       ; 000F9 ×891
  C0FB  D0 0A     BNE jt_B0_C107                ; 000FB ×891
  C0FD  4C 64 C5  JMP loc_B0_C564               ; 000FD ×11

jt_B0_C100:                    ; from 004e0
  C100  A6 01     LDX $01                       ; 00100 ×41
  C102  D0 03     BNE jt_B0_C107                ; 00102 ×41
  C104  4C 63 CA  JMP sub_B0_CA63               ; 00104 ×33

jt_B0_C107:                    ; from 004e0 000f2 000fb 00102 000eb
  C107  60        RTS                           ; 00107 ×20192
  C108  20 63 CA  JSR sub_B0_CA63               ; 00108 ×0
  C10B  A5 63     LDA $63                       ; 0010B ×0
  C10D  C9 04     CMP #$04                      ; 0010D ×0
  C10F  D0 06     BNE $C117                     ; 0010F ×0
  C111  20 AB D9  JSR sub_B0_D9AB               ; 00111 ×0
  C114  20 B6 DB  JSR sub_B0_DBB6               ; 00114 ×0
  C117  A6 01     LDX $01                       ; 00117 ×0
  C119  F0 1D     BEQ $C138                     ; 00119 ×0
  C11B  CA        DEX                           ; 0011B ×0
  C11C  F0 42     BEQ $C160                     ; 0011C ×0
  C11E  C6 02     DEC $02                       ; 0011E ×0
  C120  D0 E5     BNE jt_B0_C107                ; 00120 ×0
  C122  A6 63     LDX $63                       ; 00122 ×0
  C124  E8        INX                           ; 00124 ×0
  C125  E0 06     CPX #$06                      ; 00125 ×0
  C127  D0 02     BNE $C12B                     ; 00127 ×0
  C129  A2 01     LDX #$01                      ; 00129 inferred, not run
  C12B  86 63     STX $63                       ; 0012B ×0
  C12D  E6 60     INC $60                       ; 0012D ×0
  C12F  A9 00     LDA #$00                      ; 0012F ×0
  C131  85 CC     STA $CC                       ; 00131 ×0
  C133  85 67     STA $67                       ; 00133 ×0
  C135  4C 40 C3  JMP loc_B0_C340               ; 00135 ×0
  C138  20 0D CF  JSR sub_B0_CF0D               ; 00138 ×0
  C13B  20 49 CF  JSR sub_B0_CF49               ; 0013B ×0
  C13E  A6 64     LDX $64                       ; 0013E ×0
  C140  BD B2 C1  LDA $C1B2,X                   ; 00140 ×0
  C143  A8        TAY                           ; 00143 ×0
  C144  A2 00     LDX #$00                      ; 00144 ×0
  C146  A5 63     LDA $63                       ; 00146 ×0
  C148  C9 03     CMP #$03                      ; 00148 ×0
  C14A  F0 02     BEQ $C14E                     ; 0014A ×0
  C14C  A2 10     LDX #$10                      ; 0014C ×0
  C14E  A9 00     LDA #$00                      ; 0014E ×0
  C150  95 80     STA $80,X                     ; 00150 ×0
  C152  20 EC C9  JSR sub_B0_C9EC               ; 00152 ×0
  C155  88        DEY                           ; 00155 ×0
  C156  D0 F6     BNE $C14E                     ; 00156 ×0
  C158  20 E4 D4  JSR sub_B0_D4E4               ; 00158 ×0
  C15B  A9 01     LDA #$01                      ; 0015B ×0
  C15D  85 CC     STA $CC                       ; 0015D ×0
  C15F  60        RTS                           ; 0015F ×0
  C160  A5 09     LDA $09                       ; 00160 ×0
  C162  4A        LSR A                         ; 00162 ×0
  C163  B0 03     BCS $C168                     ; 00163 ×0
  C165  20 6D CE  JSR sub_B0_CE6D               ; 00165 ×0
  C168  AD 0B 03  LDA $030B                     ; 00168 ×0
  C16B  D0 14     BNE $C181                     ; 0016B ×0
  C16D  A5 09     LDA $09                       ; 0016D ×0
  C16F  29 0F     AND #$0F                      ; 0016F ×0
  C171  D0 06     BNE $C179                     ; 00171 ×0
  C173  A5 76     LDA $76                       ; 00173 ×0
  C175  49 01     EOR #$01                      ; 00175 ×0
  C177  85 76     STA $76                       ; 00177 ×0
  C179  20 25 CA  JSR sub_B0_CA25               ; 00179 ×0
  C17C  90 03     BCC $C181                     ; 0017C ×0
  C17E  EE 0B 03  INC $030B                     ; 0017E ×0
  C181  20 DD C9  JSR sub_B0_C9DD               ; 00181 ×0
  C184  20 04 CA  JSR sub_B0_CA04               ; 00184 ×0
  C187  F0 1D     BEQ $C1A6                     ; 00187 ×0
  C189  20 4E D5  JSR sub_B0_D54E               ; 00189 ×0
  C18C  A9 47     LDA #$47                      ; 0018C ×0
  C18E  20 0D F8  JSR sub_B0_F80D               ; 0018E ×0
  C191  A9 00     LDA #$00                      ; 00191 ×0
  C193  85 EA     STA $EA                       ; 00193 ×0
  C195  A9 0A     LDA #$0A                      ; 00195 ×0
  C197  85 EB     STA $EB                       ; 00197 ×0
  C199  20 C4 C6  JSR sub_B0_C6C4               ; 00199 ×0
  C19C  20 25 CA  JSR sub_B0_CA25               ; 0019C ×0
  C19F  90 04     BCC $C1A5                     ; 0019F ×0
  C1A1  A9 02     LDA #$02                      ; 001A1 ×0
  C1A3  85 CC     STA $CC                       ; 001A3 ×0
  C1A5  60        RTS                           ; 001A5 ×0
  C1A6  20 25 CA  JSR sub_B0_CA25               ; 001A6 ×0
  C1A9  90 FA     BCC $C1A5                     ; 001A9 ×0
  C1AB  A9 02     LDA #$02                      ; 001AB ×0
  C1AD  85 CC     STA $CC                       ; 001AD ×0
  C1AF  4C 50 C2  JMP loc_B0_C250               ; 001AF ×0
  C1B2  .byte 05 05 02 01 04                                    ; 001B2

sub_B0_C1B7:                    ; from 00075
  C1B7  A5 00     LDA $00                       ; 001B7 ×59881
  C1B9  20 D5 C1  JSR sub_B0_C1D5               ; 001B9 ×59881
  C1BC  A6 00     LDX $00                       ; 001BC ×59870
  C1BE  BD CC C1  LDA $C1CC,X                   ; 001BE ×59870
  C1C1  F0 08     BEQ loc_B0_C1CB               ; 001C1 ×59870
  C1C3  30 03     BMI loc_B0_C1C8               ; 001C3 ×53169
  C1C5  4C 4B C6  JMP loc_B0_C64B               ; 001C5 ×41492

loc_B0_C1C8:                    ; from 001c3
  C1C8  4C 5D C4  JMP loc_B0_C45D               ; 001C8 ×11677

loc_B0_C1CB:                    ; from 001c1 001fb
  C1CB  60        RTS                           ; 001CB ×7081
  C1CC  .byte FF FF FF 00 00 01 01 01                           ; 001CC data, read by 001be
  C1D4  .byte 01                                                ; 001D4

sub_B0_C1D5:                    ; from 001b9
  C1D5  20 CD C4  JSR sub_B0_C4CD               ; 001D5 ×59881
  C1D8  .byte EA C1 12 C2 3A C2 5D C2 7D C2 F5 C2 03 C3 60 C3   ; 001D8 data, read by 004d6 004da
  C1E8  .byte 8B C3                                             ; 001E8

jt_B0_C1EA:                    ; from 004e0
  C1EA  A6 01     LDX $01                       ; 001EA ×417
  C1EC  F0 1E     BEQ loc_B0_C20C               ; 001EC ×417
  C1EE  CA        DEX                           ; 001EE ×404
  C1EF  F0 08     BEQ loc_B0_C1F9               ; 001EF ×404
  C1F1  20 AA C3  JSR sub_B0_C3AA               ; 001F1 ×12
  C1F4  A9 00     LDA #$00                      ; 001F4 ×12
  C1F6  4C A7 C2  JMP loc_B0_C2A7               ; 001F6 ×12

loc_B0_C1F9:                    ; from 001ef
  C1F9  C6 02     DEC $02                       ; 001F9 ×392
  C1FB  D0 CE     BNE loc_B0_C1CB               ; 001FB ×392
  C1FD  20 BE C3  JSR sub_B0_C3BE               ; 001FD ×12
  C200  20 B8 C0  JSR sub_B0_C0B8               ; 00200 ×12
  C203  20 D6 C3  JSR sub_B0_C3D6               ; 00203 ×12
  C206  20 C8 C4  JSR sub_B0_C4C8               ; 00206 ×12
  C209  4C 54 C2  JMP loc_B0_C254               ; 00209 ×12

loc_B0_C20C:                    ; from 0027f 001ec
  C20C  20 D6 C3  JSR sub_B0_C3D6               ; 0020C ×49
  C20F  4C 50 C2  JMP loc_B0_C250               ; 0020F ×49

jt_B0_C212:                    ; from 004e0
  C212  A5 01     LDA $01                       ; 00212 ×4949
  C214  D0 06     BNE loc_B0_C21C               ; 00214 ×4949
  C216  20 D9 CC  JSR sub_B0_CCD9               ; 00216 ×16
  C219  4C 54 C2  JMP loc_B0_C254               ; 00219 ×16

loc_B0_C21C:                    ; from 00214
  C21C  20 97 D5  JSR sub_B0_D597               ; 0021C ×4933
  C21F  A5 09     LDA $09                       ; 0021F ×4933
  C221  4A        LSR A                         ; 00221 ×4933
  C222  90 04     BCC loc_B0_C228               ; 00222 ×4933
  C224  C6 02     DEC $02                       ; 00224 ×2468
  C226  F0 03     BEQ loc_B0_C22B               ; 00226 ×2468

loc_B0_C228:                    ; from 00222
  C228  4C 8F C5  JMP sub_B0_C58F               ; 00228 ×4926

loc_B0_C22B:                    ; from 00226
  C22B  A5 0E     LDA $0E                       ; 0022B ×7
  C22D  D0 08     BNE $C237                     ; 0022D ×7
  C22F  A9 F0     LDA #$F0                      ; 0022F ×7
  C231  8D 00 02  STA $0200                     ; 00231 ×7
  C234  4C A5 C2  JMP sub_B0_C2A5               ; 00234 ×7
  C237  4C 70 C4  JMP $C470                     ; 00237 inferred, not run

jt_B0_C23A:                    ; from 004e0
  C23A  A6 01     LDX $01                       ; 0023A ×6303
  C23C  F0 03     BEQ loc_B0_C241               ; 0023C ×6303
  C23E  4C 80 D2  JMP sub_B0_D280               ; 0023E ×6296

loc_B0_C241:                    ; from 0023c
  C241  20 D0 CC  JSR sub_B0_CCD0               ; 00241 ×7
  C244  20 D6 C3  JSR sub_B0_C3D6               ; 00244 ×7
  C247  20 3E D7  JSR sub_B0_D73E               ; 00247 ×7
  C24A  20 CB C5  JSR sub_B0_C5CB               ; 0024A ×7
  C24D  20 C8 C4  JSR sub_B0_C4C8               ; 0024D ×7

loc_B0_C250:                    ; from 0020f
  C250  A9 20     LDA #$20                      ; 00250 ×56

loc_B0_C252:                    ; from 002f2 002cf
  C252  85 02     STA $02                       ; 00252 ×128

loc_B0_C254:                    ; from 00219 00209 0027b
  C254  E6 01     INC $01                       ; 00254 ×167
  C256  60        RTS                           ; 00256 ×167

loc_B0_C257:                    ; from 00263
  C257  20 A5 C2  JSR sub_B0_C2A5               ; 00257 ×11
  C25A  68        PLA                           ; 0025A ×11
  C25B  68        PLA                           ; 0025B ×11
  C25C  60        RTS                           ; 0025C ×11

jt_B0_C25D:                    ; from 004e0
  C25D  A6 01     LDX $01                       ; 0025D ×891
  C25F  F0 10     BEQ loc_B0_C271               ; 0025F ×891
  C261  C6 02     DEC $02                       ; 00261 ×880
  C263  F0 F2     BEQ loc_B0_C257               ; 00263 ×880
  C265  A9 08     LDA #$08                      ; 00265 ×869
  C267  25 02     AND $02                       ; 00267 ×869
  C269  D0 03     BNE loc_B0_C26E               ; 00269 ×869
  C26B  4C B2 C5  JMP sub_B0_C5B2               ; 0026B ×429

loc_B0_C26E:                    ; from 00269
  C26E  4C C3 C5  JMP loc_B0_C5C3               ; 0026E ×440

loc_B0_C271:                    ; from 0025f
  C271  20 3B CA  JSR sub_B0_CA3B               ; 00271 ×11
  C274  20 DA CB  JSR sub_B0_CBDA               ; 00274 ×11
  C277  A9 50     LDA #$50                      ; 00277 ×11
  C279  85 02     STA $02                       ; 00279 ×11
  C27B  D0 D7     BNE loc_B0_C254               ; 0027B ×11

jt_B0_C27D:                    ; from 004e0
  C27D  A6 01     LDX $01                       ; 0027D ×5832
  C27F  F0 8B     BEQ loc_B0_C20C               ; 0027F ×5832
  C281  CA        DEX                           ; 00281 ×5796
  C282  F0 4E     BEQ loc_B0_C2D2               ; 00282 ×5796
  C284  CA        DEX                           ; 00284 ×4644
  C285  F0 2B     BEQ loc_B0_C2B2               ; 00285 ×4644
  C287  A5 02     LDA $02                       ; 00287 ×4608
  C289  F0 04     BEQ $C28F                     ; 00289 ×4608
  C28B  C6 02     DEC $02                       ; 0028B ×4608
  C28D  D0 22     BNE loc_B0_C2B1               ; 0028D ×4608
  C28F  20 25 CA  JSR sub_B0_CA25               ; 0028F ×36
  C292  90 1D     BCC loc_B0_C2B1               ; 00292 ×36
  C294  A9 87     LDA #$87                      ; 00294 ×36
  C296  20 E3 C4  JSR sub_B0_C4E3               ; 00296 ×36
  C299  20 35 C8  JSR sub_B0_C835               ; 00299 ×36
  C29C  20 C8 C4  JSR sub_B0_C4C8               ; 0029C ×36
  C29F  C6 60     DEC $60                       ; 0029F ×36
  C2A1  A9 01     LDA #$01                      ; 002A1 ×36
  C2A3  85 0A     STA $0A                       ; 002A3 ×36

sub_B0_C2A5:                    ; from 00300 00257 00234
  C2A5  A9 20     LDA #$20                      ; 002A5 ×87

loc_B0_C2A7:                    ; from 001f6 00323
  C2A7  85 02     STA $02                       ; 002A7 ×107
  C2A9  E6 00     INC $00                       ; 002A9 ×107

loc_B0_C2AB:                    ; from 00348 004a3
  C2AB  A9 00     LDA #$00                      ; 002AB ×159
  C2AD  85 0A     STA $0A                       ; 002AD ×159
  C2AF  85 01     STA $01                       ; 002AF ×159

loc_B0_C2B1:                    ; from 0028d 002d4
  C2B1  60        RTS                           ; 002B1 ×5847

loc_B0_C2B2:                    ; from 00285
  C2B2  C6 02     DEC $02                       ; 002B2 ×36
  C2B4  D0 FB     BNE loc_B0_C2B1               ; 002B4 ×36
  C2B6  A9 07     LDA #$07                      ; 002B6 ×36
  C2B8  20 E3 C4  JSR sub_B0_C4E3               ; 002B8 ×36
  C2BB  A2 E0     LDX #$E0                      ; 002BB ×36
  C2BD  A9 06     LDA #$06                      ; 002BD ×36
  C2BF  20 3F C5  JSR sub_B0_C53F               ; 002BF ×36
  C2C2  A5 61     LDA $61                       ; 002C2 ×36
  C2C4  20 37 C6  JSR sub_B0_C637               ; 002C4 ×36
  C2C7  20 CB C5  JSR sub_B0_C5CB               ; 002C7 ×36
  C2CA  20 C8 C4  JSR sub_B0_C4C8               ; 002CA ×36
  C2CD  A9 80     LDA #$80                      ; 002CD ×36
  C2CF  4C 52 C2  JMP loc_B0_C252               ; 002CF ×36

loc_B0_C2D2:                    ; from 00282
  C2D2  C6 02     DEC $02                       ; 002D2 ×1152
  C2D4  D0 DB     BNE loc_B0_C2B1               ; 002D4 ×1152
  C2D6  20 D0 CC  JSR sub_B0_CCD0               ; 002D6 ×36
  C2D9  20 5C CA  JSR sub_B0_CA5C               ; 002D9 ×36
  C2DC  A2 01     LDX #$01                      ; 002DC ×36
  C2DE  A5 03     LDA $03                       ; 002DE ×36
  C2E0  0A        ASL A                         ; 002E0 ×36
  C2E1  0A        ASL A                         ; 002E1 ×36
  C2E2  10 07     BPL loc_B0_C2EB               ; 002E2 ×36
  C2E4  A9 05     LDA #$05                      ; 002E4 inferred, not run
  C2E6  20 AD C6  JSR sub_B0_C6AD               ; 002E6 inferred, not run
  C2E9  A2 50     LDX #$50                      ; 002E9 inferred, not run

loc_B0_C2EB:                    ; from 002e2
  C2EB  20 2D CB  JSR sub_B0_CB2D               ; 002EB ×36
  C2EE  20 C8 C4  JSR sub_B0_C4C8               ; 002EE ×36
  C2F1  8A        TXA                           ; 002F1 ×36
  C2F2  4C 52 C2  JMP loc_B0_C252               ; 002F2 ×36

jt_B0_C2F5:                    ; from 004e0
  C2F5  20 80 D2  JSR sub_B0_D280               ; 002F5 ×39638
  C2F8  A9 08     LDA #$08                      ; 002F8 ×39638
  C2FA  A6 0B     LDX $0B                       ; 002FA ×39638
  C2FC  D0 44     BNE loc_B0_C342               ; 002FC ×39638
  C2FE  A5 0A     LDA $0A                       ; 002FE ×39638
  C300  D0 A3     BNE sub_B0_C2A5               ; 00300 ×39638
  C302  60        RTS                           ; 00302 ×39605

jt_B0_C303:                    ; from 004e0
  C303  A5 00     LDA $00                       ; 00303 ×41
  C305  85 6E     STA $6E                       ; 00305 ×41
  C307  A6 01     LDX $01                       ; 00307 ×41
  C309  F0 40     BEQ loc_B0_C34B               ; 00309 ×41
  C30B  A9 04     LDA #$04                      ; 0030B ×8
  C30D  20 AD C6  JSR sub_B0_C6AD               ; 0030D ×8
  C310  A5 03     LDA $03                       ; 00310 ×8
  C312  29 20     AND #$20                      ; 00312 ×8
  C314  D0 05     BNE $C31B                     ; 00314 ×8
  C316  A9 85     LDA #$85                      ; 00316 ×8
  C318  20 E3 C4  JSR sub_B0_C4E3               ; 00318 ×8
  C31B  A9 06     LDA #$06                      ; 0031B ×8
  C31D  85 00     STA $00                       ; 0031D ×8
  C31F  A9 00     LDA #$00                      ; 0031F ×8
  C321  85 0E     STA $0E                       ; 00321 ×8
  C323  4C A7 C2  JMP loc_B0_C2A7               ; 00323 ×8

loc_B0_C326:                    ; from 00358
  C326  AD 00 01  LDA $0100                     ; 00326 ×25
  C329  F0 15     BEQ loc_B0_C340               ; 00329 ×25
  C32B  A2 80     LDX #$80                      ; 0032B inferred, not run
  C32D  B5 5F     LDA $5F,X                     ; 0032D inferred, not run
  C32F  BC FF 00  LDY $00FF,X                   ; 0032F inferred, not run
  C332  9D FF 00  STA $00FF,X                   ; 00332 inferred, not run
  C335  94 5F     STY $5F,X                     ; 00335 inferred, not run
  C337  CA        DEX                           ; 00337 inferred, not run
  C338  D0 F3     BNE $C32D                     ; 00338 inferred, not run
  C33A  A5 03     LDA $03                       ; 0033A inferred, not run
  C33C  49 80     EOR #$80                      ; 0033C inferred, not run
  C33E  85 03     STA $03                       ; 0033E inferred, not run

loc_B0_C340:                    ; from 00329
  C340  A9 04     LDA #$04                      ; 00340 ×25

loc_B0_C342:                    ; from 0047d 000f6
  C342  85 00     STA $00                       ; 00342 ×46
  C344  A9 20     LDA #$20                      ; 00344 ×46
  C346  85 02     STA $02                       ; 00346 ×46
  C348  4C AB C2  JMP loc_B0_C2AB               ; 00348 ×46

loc_B0_C34B:                    ; from 00309
  C34B  20 D6 C3  JSR sub_B0_C3D6               ; 0034B ×33
  C34E  20 CB C5  JSR sub_B0_C5CB               ; 0034E ×33
  C351  20 C8 C4  JSR sub_B0_C4C8               ; 00351 ×33
  C354  E6 67     INC $67                       ; 00354 ×33
  C356  A5 60     LDA $60                       ; 00356 ×33
  C358  D0 CC     BNE loc_B0_C326               ; 00358 ×33
  C35A  20 5C CA  JSR sub_B0_CA5C               ; 0035A ×8
  C35D  E6 01     INC $01                       ; 0035D ×8
  C35F  60        RTS                           ; 0035F ×8

jt_B0_C360:                    ; from 004e0
  C360  A0 00     LDY #$00                      ; 00360 ×1810
  C362  84 67     STY $67                       ; 00362 ×1810
  C364  84 66     STY $66                       ; 00364 ×1810
  C366  84 6E     STY $6E                       ; 00366 ×1810
  C368  AD 00 01  LDA $0100                     ; 00368 ×1810
  C36B  D0 09     BNE loc_B0_C376               ; 0036B ×1810
  C36D  A5 05     LDA $05                       ; 0036D ×1810
  C36F  29 10     AND #$10                      ; 0036F ×1810
  C371  F0 03     BEQ loc_B0_C376               ; 00371 ×1810
  C373  4C 5D C4  JMP loc_B0_C45D               ; 00373 ×2

loc_B0_C376:                    ; from 00371
  C376  C6 02     DEC $02                       ; 00376 ×1808
  C378  D0 1F     BNE loc_B0_C399               ; 00378 ×1808
  C37A  AD 00 01  LDA $0100                     ; 0037A ×6
  C37D  F0 03     BEQ loc_B0_C382               ; 0037D ×6
  C37F  4C 2B C3  JMP $C32B                     ; 0037F inferred, not run

loc_B0_C382:                    ; from 0037d
  C382  A5 03     LDA $03                       ; 00382 ×6
  C384  29 BF     AND #$BF                      ; 00384 ×6
  C386  85 03     STA $03                       ; 00386 ×6
  C388  4C F4 C0  JMP loc_B0_C0F4               ; 00388 ×6
  C38B  20 DF D5  JSR sub_B0_D5DF               ; 0038B ×0
  C38E  A5 00     LDA $00                       ; 0038E ×0
  C390  85 6E     STA $6E                       ; 00390 ×0
  C392  A6 01     LDX $01                       ; 00392 ×0
  C394  F0 04     BEQ $C39A                     ; 00394 ×0
  C396  CA        DEX                           ; 00396 ×0
  C397  F0 00     BEQ loc_B0_C399               ; 00397 ×0

loc_B0_C399:                    ; from 00378
  C399  60        RTS                           ; 00399 ×1802
  C39A  18        CLC                           ; 0039A ×0
  C39B  A2 00     LDX #$00                      ; 0039B ×0
  C39D  86 0B     STX $0B                       ; 0039D ×0
  C39F  A5 61     LDA $61                       ; 0039F ×0
  C3A1  E8        INX                           ; 003A1 ×0
  C3A2  20 F3 C6  JSR sub_B0_C6F3               ; 003A2 ×0
  C3A5  85 61     STA $61                       ; 003A5 ×0
  C3A7  4C 50 C2  JMP loc_B0_C250               ; 003A7 ×0

sub_B0_C3AA:                    ; from 001f1 00499
  C3AA  20 53 C7  JSR sub_B0_C753               ; 003AA ×18
  C3AD  A9 03     LDA #$03                      ; 003AD ×18
  C3AF  20 E3 C4  JSR sub_B0_C4E3               ; 003AF ×18
  C3B2  20 B2 C5  JSR sub_B0_C5B2               ; 003B2 ×18
  C3B5  4C C8 C4  JMP sub_B0_C4C8               ; 003B5 ×18

sub_B0_C3B8:                    ; from 00054
  C3B8  20 D6 C3  JSR sub_B0_C3D6               ; 003B8 ×3
  C3BB  4C C1 C3  JMP loc_B0_C3C1               ; 003BB ×3

sub_B0_C3BE:                    ; from 001fd
  C3BE  20 D9 CC  JSR sub_B0_CCD9               ; 003BE ×12

loc_B0_C3C1:                    ; from 003bb
  C3C1  A9 1F     LDA #$1F                      ; 003C1 ×15
  C3C3  8D 15 40  STA $4015                     ; 003C3 ×15
  C3C6  A9 C0     LDA #$C0                      ; 003C6 ×15
  C3C8  8D 17 40  STA $4017                     ; 003C8 ×15
  C3CB  20 CB C0  JSR sub_B0_C0CB               ; 003CB ×15
  C3CE  A9 88     LDA #$88                      ; 003CE ×15
  C3D0  85 53     STA $53                       ; 003D0 ×15
  C3D2  8D 00 20  STA $2000                     ; 003D2 ×15
  C3D5  60        RTS                           ; 003D5 ×15

sub_B0_C3D6:                    ; from 0020c 0034b 00203 00244 00493 003b8
  C3D6  20 56 C5  JSR sub_B0_C556               ; 003D6 ×110
  C3D9  20 E0 C3  JSR sub_B0_C3E0               ; 003D9 ×110
  C3DC  A9 2C     LDA #$2C                      ; 003DC ×110
  C3DE  D0 02     BNE loc_B0_C3E2               ; 003DE ×110

sub_B0_C3E0:                    ; from 003d9
  C3E0  A9 20     LDA #$20                      ; 003E0 ×110

loc_B0_C3E2:                    ; from 003de
  C3E2  85 E1     STA $E1                       ; 003E2 ×220
  C3E4  A0 04     LDY #$04                      ; 003E4 ×220
  C3E6  A9 00     LDA #$00                      ; 003E6 ×220
  C3E8  85 E0     STA $E0                       ; 003E8 ×220
  C3EA  85 E2     STA $E2                       ; 003EA ×220

loc_B0_C3EC:                    ; from 003f2
  C3EC  20 F5 C3  JSR sub_B0_C3F5               ; 003EC ×880
  C3EF  E6 E1     INC $E1                       ; 003EF ×880
  C3F1  88        DEY                           ; 003F1 ×880
  C3F2  D0 F8     BNE loc_B0_C3EC               ; 003F2 ×880
  C3F4  60        RTS                           ; 003F4 ×220

sub_B0_C3F5:                    ; from 003ec
  C3F5  A9 00     LDA #$00                      ; 003F5 ×880
  C3F7  20 BA C4  JSR sub_B0_C4BA               ; 003F7 ×880

loc_B0_C3FA:                    ; from 003ff
  C3FA  8D 07 20  STA $2007                     ; 003FA ×225280
  C3FD  C6 E2     DEC $E2                       ; 003FD ×225280
  C3FF  D0 F9     BNE loc_B0_C3FA               ; 003FF ×225280
  C401  60        RTS                           ; 00401 ×880

sub_B0_C402:                    ; from 000a7
  C402  A2 01     LDX #$01                      ; 00402 ×59881
  C404  8E 16 40  STX $4016                     ; 00404 ×59881
  C407  CA        DEX                           ; 00407 ×59881
  C408  8E 16 40  STX $4016                     ; 00408 ×59881
  C40B  A0 08     LDY #$08                      ; 0040B ×59881

loc_B0_C40D:                    ; from 00424
  C40D  AD 16 40  LDA $4016                     ; 0040D ×479048
  C410  85 E7     STA $E7                       ; 00410 ×479048
  C412  4A        LSR A                         ; 00412 ×479048
  C413  05 E7     ORA $E7                       ; 00413 ×479048
  C415  4A        LSR A                         ; 00415 ×479048
  C416  26 E4     ROL $E4                       ; 00416 ×479048
  C418  AD 17 40  LDA $4017                     ; 00418 ×479048
  C41B  85 E7     STA $E7                       ; 0041B ×479048
  C41D  4A        LSR A                         ; 0041D ×479048
  C41E  05 E7     ORA $E7                       ; 0041E ×479048
  C420  4A        LSR A                         ; 00420 ×479048
  C421  26 E5     ROL $E5                       ; 00421 ×479048
  C423  88        DEY                           ; 00423 ×479048
  C424  D0 E7     BNE loc_B0_C40D               ; 00424 ×479048
  C426  A5 05     LDA $05                       ; 00426 ×59881
  C428  29 10     AND #$10                      ; 00428 ×59881
  C42A  45 0E     EOR $0E                       ; 0042A ×59881
  C42C  85 0E     STA $0E                       ; 0042C ×59881
  C42E  A5 03     LDA $03                       ; 0042E ×59881
  C430  29 20     AND #$20                      ; 00430 ×59881
  C432  F0 1A     BEQ loc_B0_C44E               ; 00432 ×59881
  C434  A5 03     LDA $03                       ; 00434 inferred, not run
  C436  29 F0     AND #$F0                      ; 00436 inferred, not run
  C438  C9 E0     CMP #$E0                      ; 00438 inferred, not run
  C43A  F0 16     BEQ $C452                     ; 0043A inferred, not run
  C43C  A5 E4     LDA $E4                       ; 0043C inferred, not run
  C43E  20 58 C4  JSR $C458                     ; 0043E inferred, not run
  C441  E8        INX                           ; 00441 inferred, not run
  C442  B5 E4     LDA $E4,X                     ; 00442 inferred, not run

loc_B0_C444:                    ; from 0045a
  C444  A8        TAY                           ; 00444 ×59881
  C445  55 07     EOR $07,X                     ; 00445 ×59881
  C447  35 E4     AND $E4,X                     ; 00447 ×59881
  C449  95 05     STA $05,X                     ; 00449 ×59881
  C44B  94 07     STY $07,X                     ; 0044B ×59881
  C44D  60        RTS                           ; 0044D ×59881

loc_B0_C44E:                    ; from 00432
  C44E  A9 FF     LDA #$FF                      ; 0044E ×59881
  C450  D0 02     BNE loc_B0_C454               ; 00450 ×59881
  C452  A9 30     LDA #$30                      ; 00452 inferred, not run

loc_B0_C454:                    ; from 00450
  C454  25 E4     AND $E4                       ; 00454 ×59881
  C456  05 E5     ORA $E5                       ; 00456 ×59881
  C458  85 E4     STA $E4                       ; 00458 ×59881
  C45A  4C 44 C4  JMP loc_B0_C444               ; 0045A ×59881

loc_B0_C45D:                    ; from 001c8 00373
  C45D  A5 05     LDA $05                       ; 0045D ×11679
  C45F  29 30     AND #$30                      ; 0045F ×11679
  C461  F0 25     BEQ loc_B0_C488               ; 00461 ×11679
  C463  A2 00     LDX #$00                      ; 00463 ×17
  C465  86 02     STX $02                       ; 00465 ×17
  C467  A6 00     LDX $00                       ; 00467 ×17
  C469  CA        DEX                           ; 00469 ×17
  C46A  D0 1D     BNE loc_B0_C489               ; 0046A ×17
  C46C  29 20     AND #$20                      ; 0046C ×11
  C46E  D0 10     BNE $C480                     ; 0046E ×11
  C470  A9 00     LDA #$00                      ; 00470 ×11
  C472  85 0E     STA $0E                       ; 00472 ×11
  C474  A6 50     LDX $50                       ; 00474 ×11
  C476  BD A6 C4  LDA $C4A6,X                   ; 00476 ×11
  C479  85 03     STA $03                       ; 00479 ×11
  C47B  A9 03     LDA #$03                      ; 0047B ×11
  C47D  4C 42 C3  JMP loc_B0_C342               ; 0047D ×11
  C480  E6 50     INC $50                       ; 00480 inferred, not run
  C482  A5 50     LDA $50                       ; 00482 inferred, not run
  C484  29 03     AND #$03                      ; 00484 inferred, not run
  C486  85 50     STA $50                       ; 00486 inferred, not run

loc_B0_C488:                    ; from 00461
  C488  60        RTS                           ; 00488 ×11662

loc_B0_C489:                    ; from 0046a
  C489  29 10     AND #$10                      ; 00489 ×6
  C48B  85 0E     STA $0E                       ; 0048B ×6
  C48D  20 B8 C0  JSR sub_B0_C0B8               ; 0048D ×6
  C490  20 D9 CC  JSR sub_B0_CCD9               ; 00490 ×6
  C493  20 D6 C3  JSR sub_B0_C3D6               ; 00493 ×6
  C496  20 8F C5  JSR sub_B0_C58F               ; 00496 ×6
  C499  20 AA C3  JSR sub_B0_C3AA               ; 00499 ×6
  C49C  20 C3 C0  JSR sub_B0_C0C3               ; 0049C ×6
  C49F  A9 01     LDA #$01                      ; 0049F ×6
  C4A1  85 00     STA $00                       ; 004A1 ×6
  C4A3  4C AB C2  JMP loc_B0_C2AB               ; 004A3 ×6
  C4A6  .byte 40                                                ; 004A6 data, read by 00476
  C4A7  .byte 48 60 68                                          ; 004A7

sub_B0_C4AA:                    ; from 00cd3
  C4AA  20 BA C4  JSR sub_B0_C4BA               ; 004AA ×77
  C4AD  A0 00     LDY #$00                      ; 004AD ×77

loc_B0_C4AF:                    ; from 004b7
  C4AF  B1 E4     LDA ($E4),Y                   ; 004AF ×2464
  C4B1  8D 07 20  STA $2007                     ; 004B1 ×2464
  C4B4  C8        INY                           ; 004B4 ×2464
  C4B5  C6 E2     DEC $E2                       ; 004B5 ×2464
  C4B7  D0 F6     BNE loc_B0_C4AF               ; 004B7 ×2464
  C4B9  60        RTS                           ; 004B9 ×77

sub_B0_C4BA:                    ; from 00693 0061d 00513 003f7 00637 004aa
  C4BA  AE 02 20  LDX $2002                     ; 004BA ×98281
  C4BD  A6 E1     LDX $E1                       ; 004BD ×98281
  C4BF  8E 06 20  STX $2006                     ; 004BF ×98281
  C4C2  A6 E0     LDX $E0                       ; 004C2 ×98281
  C4C4  8E 06 20  STX $2006                     ; 004C4 ×98281
  C4C7  60        RTS                           ; 004C7 ×98281

sub_B0_C4C8:                    ; from 002ee 002ca 0029c 00351 003b5 00206 (+1)
  C4C8  A9 07     LDA #$07                      ; 004C8 ×178
  C4CA  85 FB     STA $FB                       ; 004CA ×178
  C4CC  60        RTS                           ; 004CC ×178

sub_B0_C4CD:                    ; from 001d5 000d4 00657 009d0 01809 03165
  C4CD  0A        ASL A                         ; 004CD ×206430
  C4CE  A8        TAY                           ; 004CE ×206430
  C4CF  C8        INY                           ; 004CF ×206430
  C4D0  68        PLA                           ; 004D0 ×206430
  C4D1  85 E0     STA $E0                       ; 004D1 ×206430
  C4D3  68        PLA                           ; 004D3 ×206430
  C4D4  85 E1     STA $E1                       ; 004D4 ×206430
  C4D6  B1 E0     LDA ($E0),Y                   ; 004D6 ×206430
  C4D8  AA        TAX                           ; 004D8 ×206430
  C4D9  C8        INY                           ; 004D9 ×206430
  C4DA  B1 E0     LDA ($E0),Y                   ; 004DA ×206430
  C4DC  85 E1     STA $E1                       ; 004DC ×206430
  C4DE  86 E0     STX $E0                       ; 004DE ×206430
  C4E0  6C E0 00  JMP ($00E0)                   ; 004E0 ×206430

sub_B0_C4E3:                    ; from 00678 005bb 005c8 01716 0171e 005d3 (+8)
  C4E3  A2 FF     LDX #$FF                      ; 004E3 ×12981
  C4E5  0A        ASL A                         ; 004E5 ×12981
  C4E6  A8        TAY                           ; 004E6 ×12981
  C4E7  90 01     BCC loc_B0_C4EA               ; 004E7 ×12981
  C4E9  E8        INX                           ; 004E9 ×5667

loc_B0_C4EA:                    ; from 004e7
  C4EA  A9 C2     LDA #$C2                      ; 004EA ×12981
  C4EC  85 E4     STA $E4                       ; 004EC ×12981
  C4EE  A9 FF     LDA #$FF                      ; 004EE ×12981
  C4F0  85 E5     STA $E5                       ; 004F0 ×12981
  C4F2  B1 E4     LDA ($E4),Y                   ; 004F2 ×12981
  C4F4  85 E2     STA $E2                       ; 004F4 ×12981
  C4F6  C8        INY                           ; 004F6 ×12981
  C4F7  B1 E4     LDA ($E4),Y                   ; 004F7 ×12981
  C4F9  85 E3     STA $E3                       ; 004F9 ×12981
  C4FB  8A        TXA                           ; 004FB ×12981
  C4FC  4C 05 C5  JMP loc_B0_C505               ; 004FC ×12981
  C4FF  .byte A9 00 F0 02 A9 FF                                 ; 004FF

loc_B0_C505:                    ; from 004fc
  C505  85 E4     STA $E4                       ; 00505 ×12981
  C507  A0 00     LDY #$00                      ; 00507 ×12981

loc_B0_C509:                    ; from 00521
  C509  B1 E2     LDA ($E2),Y                   ; 00509 ×13621
  C50B  85 E0     STA $E0                       ; 0050B ×13621
  C50D  C8        INY                           ; 0050D ×13621
  C50E  B1 E2     LDA ($E2),Y                   ; 0050E ×13621
  C510  85 E1     STA $E1                       ; 00510 ×13621
  C512  C8        INY                           ; 00512 ×13621
  C513  20 BA C4  JSR sub_B0_C4BA               ; 00513 ×13621

loc_B0_C516:                    ; from 0052c 0053d
  C516  B1 E2     LDA ($E2),Y                   ; 00516 ×75142
  C518  C8        INY                           ; 00518 ×75142
  C519  C9 FD     CMP #$FD                      ; 00519 ×75142
  C51B  90 0A     BCC loc_B0_C527               ; 0051B ×75142
  C51D  F0 11     BEQ loc_B0_C530               ; 0051D ×13845
  C51F  C9 FE     CMP #$FE                      ; 0051F ×13621
  C521  F0 E6     BEQ loc_B0_C509               ; 00521 ×13621
  C523  C9 FF     CMP #$FF                      ; 00523 ×12981
  C525  F0 08     BEQ loc_B0_C52F               ; 00525 ×12981

loc_B0_C527:                    ; from 0051b
  C527  25 E4     AND $E4                       ; 00527 ×61297
  C529  8D 07 20  STA $2007                     ; 00529 ×61297
  C52C  4C 16 C5  JMP loc_B0_C516               ; 0052C ×61297

loc_B0_C52F:                    ; from 00525
  C52F  60        RTS                           ; 0052F ×12981

loc_B0_C530:                    ; from 0051d
  C530  B1 E2     LDA ($E2),Y                   ; 00530 ×224
  C532  AA        TAX                           ; 00532 ×224
  C533  C8        INY                           ; 00533 ×224
  C534  B1 E2     LDA ($E2),Y                   ; 00534 ×224
  C536  C8        INY                           ; 00536 ×224

loc_B0_C537:                    ; from 0053b
  C537  8D 07 20  STA $2007                     ; 00537 ×4922
  C53A  CA        DEX                           ; 0053A ×4922
  C53B  D0 FA     BNE loc_B0_C537               ; 0053B ×4922
  C53D  F0 D7     BEQ loc_B0_C516               ; 0053D ×224

sub_B0_C53F:                    ; from 002bf 00ce0
  C53F  18        CLC                           ; 0053F ×70
  C540  75 00     ADC $00,X                     ; 00540 ×70
  C542  95 00     STA $00,X                     ; 00542 ×70
  C544  90 02     BCC loc_B0_C548               ; 00544 ×70
  C546  F6 01     INC $01,X                     ; 00546 ×34

loc_B0_C548:                    ; from 00544
  C548  60        RTS                           ; 00548 ×70
  C549  .byte 88 B1 E0 91 E2 98 D0 F8 60 E6 03 E6 02            ; 00549

sub_B0_C556:                    ; from 003d6 00856
  C556  A9 F4     LDA #$F4                      ; 00556 ×153
  C558  A2 00     LDX #$00                      ; 00558 ×153

loc_B0_C55A:                    ; from 00561
  C55A  9D 00 02  STA $0200,X                   ; 0055A ×9792
  C55D  E8        INX                           ; 0055D ×9792
  C55E  E8        INX                           ; 0055E ×9792
  C55F  E8        INX                           ; 0055F ×9792
  C560  E8        INX                           ; 00560 ×9792
  C561  D0 F7     BNE loc_B0_C55A               ; 00561 ×9792
  C563  60        RTS                           ; 00563 ×153

loc_B0_C564:                    ; from 000fd
  C564  A2 5D     LDX #$5D                      ; 00564 ×11
  C566  A5 03     LDA $03                       ; 00566 ×11
  C568  29 20     AND #$20                      ; 00568 ×11
  C56A  08        PHP                           ; 0056A ×11
  C56B  F0 02     BEQ loc_B0_C56F               ; 0056B ×11
  C56D  A2 5A     LDX #$5A                      ; 0056D inferred, not run

loc_B0_C56F:                    ; from 0056b
  C56F  A9 00     LDA #$00                      ; 0056F ×11

loc_B0_C571:                    ; from 00574
  C571  95 00     STA $00,X                     ; 00571 ×1793
  C573  E8        INX                           ; 00573 ×1793
  C574  D0 FB     BNE loc_B0_C571               ; 00574 ×1793
  C576  A2 FC     LDX #$FC                      ; 00576 ×11

loc_B0_C578:                    ; from 0057e
  C578  BD FA FE  LDA $FEFA,X                   ; 00578 ×44
  C57B  95 64     STA $64,X                     ; 0057B ×44
  C57D  E8        INX                           ; 0057D ×44
  C57E  D0 F8     BNE loc_B0_C578               ; 0057E ×44
  C580  28        PLP                           ; 00580 ×11
  C581  D0 01     BNE $C584                     ; 00581 ×11
  C583  60        RTS                           ; 00583 ×11
  C584  A2 20     LDX #$20                      ; 00584 inferred, not run
  C586  B5 5F     LDA $5F,X                     ; 00586 inferred, not run
  C588  9D FF 00  STA $00FF,X                   ; 00588 inferred, not run
  C58B  CA        DEX                           ; 0058B inferred, not run
  C58C  D0 F8     BNE $C586                     ; 0058C inferred, not run
  C58E  60        RTS                           ; 0058E inferred, not run

sub_B0_C58F:                    ; from 00228 00496
  C58F  A2 07     LDX #$07                      ; 0058F ×4932

loc_B0_C591:                    ; from 00598
  C591  BD A6 C5  LDA $C5A6,X                   ; 00591 ×39456
  C594  9D 00 02  STA $0200,X                   ; 00594 ×39456
  C597  CA        DEX                           ; 00597 ×39456
  C598  10 F7     BPL loc_B0_C591               ; 00598 ×39456
  C59A  A6 50     LDX $50                       ; 0059A ×4932
  C59C  BD AE C5  LDA $C5AE,X                   ; 0059C ×4932
  C59F  8D 00 02  STA $0200                     ; 0059F ×4932
  C5A2  8D 04 02  STA $0204                     ; 005A2 ×4932
  C5A5  60        RTS                           ; 005A5 ×4932
  C5A6  .byte 00 B0 00 4E 00 B1 00 56 A8                        ; 005A6 data, read by 00591 0059c
  C5AF  .byte B0 B8 C0                                          ; 005AF

sub_B0_C5B2:                    ; from 0026b 003b2
  C5B2  A9 03     LDA #$03                      ; 005B2 ×447
  C5B4  85 EF     STA $EF                       ; 005B4 ×447

loc_B0_C5B6:                    ; from 005c0
  C5B6  A5 EF     LDA $EF                       ; 005B6 ×1788
  C5B8  18        CLC                           ; 005B8 ×1788
  C5B9  69 0E     ADC #$0E                      ; 005B9 ×1788
  C5BB  20 E3 C4  JSR sub_B0_C4E3               ; 005BB ×1788
  C5BE  C6 EF     DEC $EF                       ; 005BE ×1788
  C5C0  10 F4     BPL loc_B0_C5B6               ; 005C0 ×1788
  C5C2  60        RTS                           ; 005C2 ×447

loc_B0_C5C3:                    ; from 0026e
  C5C3  A5 50     LDA $50                       ; 005C3 ×440
  C5C5  18        CLC                           ; 005C5 ×440
  C5C6  69 8E     ADC #$8E                      ; 005C6 ×440
  C5C8  4C E3 C4  JMP sub_B0_C4E3               ; 005C8 ×440

sub_B0_C5CB:                    ; from 002c7 0034e 0024a
  C5CB  20 14 D7  JSR sub_B0_D714               ; 005CB ×76
  C5CE  20 75 D5  JSR sub_B0_D575               ; 005CE ×76
  C5D1  A9 00     LDA #$00                      ; 005D1 ×76
  C5D3  20 E3 C4  JSR sub_B0_C4E3               ; 005D3 ×76
  C5D6  A5 03     LDA $03                       ; 005D6 ×76
  C5D8  65 03     ADC $03                       ; 005D8 ×76
  C5DA  10 04     BPL loc_B0_C5E0               ; 005DA ×76
  C5DC  29 40     AND #$40                      ; 005DC ×69
  C5DE  F0 0C     BEQ loc_B0_C5EC               ; 005DE ×69

loc_B0_C5E0:                    ; from 005da
  C5E0  A9 02     LDA #$02                      ; 005E0 ×7
  C5E2  20 E3 C4  JSR sub_B0_C4E3               ; 005E2 ×7
  C5E5  A5 03     LDA $03                       ; 005E5 ×7
  C5E7  49 80     EOR #$80                      ; 005E7 ×7
  C5E9  20 F7 C5  JSR sub_B0_C5F7               ; 005E9 ×7

loc_B0_C5EC:                    ; from 005de
  C5EC  20 7B C6  JSR sub_B0_C67B               ; 005EC ×76
  C5EF  20 2D C6  JSR sub_B0_C62D               ; 005EF ×76
  C5F2  20 06 C6  JSR sub_B0_C606               ; 005F2 ×76

jt_B0_C5F5:                    ; from 004e0
  C5F5  A5 03     LDA $03                       ; 005F5 ×10447

sub_B0_C5F7:                    ; from 005e9
  C5F7  30 1A     BMI loc_B0_C613               ; 005F7 ×10454
  C5F9  A9 65     LDA #$65                      ; 005F9 ×10447
  C5FB  85 E0     STA $E0                       ; 005FB ×10447
  C5FD  A9 20     LDA #$20                      ; 005FD ×10447
  C5FF  85 E1     STA $E1                       ; 005FF ×10447
  C601  A0 5D     LDY #$5D                      ; 00601 ×10447
  C603  4C 1D C6  JMP loc_B0_C61D               ; 00603 ×10447

sub_B0_C606:                    ; from 004e0 005f2
  C606  A9 6F     LDA #$6F                      ; 00606 ×10449
  C608  85 E0     STA $E0                       ; 00608 ×10449
  C60A  A9 20     LDA #$20                      ; 0060A ×10449
  C60C  85 E1     STA $E1                       ; 0060C ×10449
  C60E  A0 57     LDY #$57                      ; 0060E ×10449
  C610  4C 1D C6  JMP loc_B0_C61D               ; 00610 ×10449

loc_B0_C613:                    ; from 005f7
  C613  A9 85     LDA #$85                      ; 00613 ×7
  C615  85 E0     STA $E0                       ; 00615 ×7
  C617  A9 20     LDA #$20                      ; 00617 ×7
  C619  85 E1     STA $E1                       ; 00619 ×7
  C61B  A0 5A     LDY #$5A                      ; 0061B ×7

loc_B0_C61D:                    ; from 00610 00603
  C61D  20 BA C4  JSR sub_B0_C4BA               ; 0061D ×20903
  C620  A2 03     LDX #$03                      ; 00620 ×20903

loc_B0_C622:                    ; from 0062a
  C622  B9 02 00  LDA $0002,Y                   ; 00622 ×62709
  C625  20 3A C6  JSR sub_B0_C63A               ; 00625 ×62709
  C628  88        DEY                           ; 00628 ×62709
  C629  CA        DEX                           ; 00629 ×62709
  C62A  D0 F6     BNE loc_B0_C622               ; 0062A ×62709
  C62C  60        RTS                           ; 0062C ×20903

sub_B0_C62D:                    ; from 005ef
  C62D  A9 7C     LDA #$7C                      ; 0062D ×76
  C62F  85 E0     STA $E0                       ; 0062F ×76
  C631  A9 20     LDA #$20                      ; 00631 ×76
  C633  85 E1     STA $E1                       ; 00633 ×76
  C635  A5 61     LDA $61                       ; 00635 ×76

sub_B0_C637:                    ; from 002c4
  C637  20 BA C4  JSR sub_B0_C4BA               ; 00637 ×112

sub_B0_C63A:                    ; from 00625
  C63A  48        PHA                           ; 0063A ×62821
  C63B  4A        LSR A                         ; 0063B ×62821
  C63C  4A        LSR A                         ; 0063C ×62821
  C63D  4A        LSR A                         ; 0063D ×62821
  C63E  4A        LSR A                         ; 0063E ×62821
  C63F  20 43 C6  JSR sub_B0_C643               ; 0063F ×62821
  C642  68        PLA                           ; 00642 ×62821

sub_B0_C643:                    ; from 0063f
  C643  29 0F     AND #$0F                      ; 00643 ×125642
  C645  09 30     ORA #$30                      ; 00645 ×125642
  C647  8D 07 20  STA $2007                     ; 00647 ×125642
  C64A  60        RTS                           ; 0064A ×125642

loc_B0_C64B:                    ; from 001c5
  C64B  20 75 D5  JSR sub_B0_D575               ; 0064B ×41492
  C64E  A5 03     LDA $03                       ; 0064E ×41492
  C650  6A        ROR A                         ; 00650 ×41492
  C651  B0 F7     BCS $C64A                     ; 00651 ×41492
  C653  A5 09     LDA $09                       ; 00653 ×41492
  C655  29 03     AND #$03                      ; 00655 ×41492
  C657  20 CD C4  JSR sub_B0_C4CD               ; 00657 ×41492
  C65A  .byte 06 C6 F5 C5 7B C6 62 C6                           ; 0065A data, read by 004d6 004da

jt_B0_C662:                    ; from 004e0
  C662  A9 1F     LDA #$1F                      ; 00662 ×10376
  C664  85 E4     STA $E4                       ; 00664 ×10376
  C666  A2 01     LDX #$01                      ; 00666 ×10376
  C668  A5 09     LDA $09                       ; 00668 ×10376
  C66A  29 20     AND #$20                      ; 0066A ×10376
  C66C  F0 02     BEQ loc_B0_C670               ; 0066C ×10376
  C66E  A2 81     LDX #$81                      ; 0066E ×5183

loc_B0_C670:                    ; from 0066c
  C670  A5 03     LDA $03                       ; 00670 ×10376
  C672  29 80     AND #$80                      ; 00672 ×10376
  C674  F0 01     BEQ loc_B0_C677               ; 00674 ×10376
  C676  E8        INX                           ; 00676 inferred, not run

loc_B0_C677:                    ; from 00674
  C677  8A        TXA                           ; 00677 ×10376
  C678  4C E3 C4  JMP sub_B0_C4E3               ; 00678 ×10376

sub_B0_C67B:                    ; from 004e0 005ec
  C67B  A9 9D     LDA #$9D                      ; 0067B ×10448
  C67D  85 E0     STA $E0                       ; 0067D ×10448
  C67F  A9 20     LDA #$20                      ; 0067F ×10448
  C681  85 E1     STA $E1                       ; 00681 ×10448
  C683  A5 60     LDA $60                       ; 00683 ×10448
  C685  85 E3     STA $E3                       ; 00685 ×10448
  C687  A9 05     LDA #$05                      ; 00687 ×10448
  C689  85 E2     STA $E2                       ; 00689 ×10448
  C68B  A0 19     LDY #$19                      ; 0068B ×10448

loc_B0_C68D:                    ; from 006aa
  C68D  C6 E3     DEC $E3                       ; 0068D ×62688
  C68F  10 02     BPL loc_B0_C693               ; 0068F ×62688
  C691  A0 00     LDY #$00                      ; 00691 ×45027

loc_B0_C693:                    ; from 0068f
  C693  20 BA C4  JSR sub_B0_C4BA               ; 00693 ×62688
  C696  8C 07 20  STY $2007                     ; 00696 ×62688
  C699  A2 E0     LDX #$E0                      ; 00699 ×62688
  C69B  A9 01     LDA #$01                      ; 0069B ×62688
  C69D  49 FF     EOR #$FF                      ; 0069D ×62688
  C69F  38        SEC                           ; 0069F ×62688
  C6A0  75 00     ADC $00,X                     ; 006A0 ×62688
  C6A2  95 00     STA $00,X                     ; 006A2 ×62688
  C6A4  B0 02     BCS loc_B0_C6A8               ; 006A4 ×62688
  C6A6  D6 01     DEC $01,X                     ; 006A6 inferred, not run

loc_B0_C6A8:                    ; from 006a4
  C6A8  C6 E2     DEC $E2                       ; 006A8 ×62688
  C6AA  10 E1     BPL loc_B0_C68D               ; 006AA ×62688
  C6AC  60        RTS                           ; 006AC ×10448

sub_B0_C6AD:                    ; from 0030d
  C6AD  20 E3 C4  JSR sub_B0_C4E3               ; 006AD ×8
  C6B0  A4 03     LDY $03                       ; 006B0 ×8
  C6B2  10 0F     BPL loc_B0_C6C3               ; 006B2 ×8
  C6B4  A0 32     LDY #$32                      ; 006B4 inferred, not run
  C6B6  A9 07     LDA #$07                      ; 006B6 inferred, not run
  C6B8  A2 E0     LDX #$E0                      ; 006B8 inferred, not run
  C6BA  20 3F C5  JSR sub_B0_C53F               ; 006BA inferred, not run
  C6BD  20 BA C4  JSR sub_B0_C4BA               ; 006BD inferred, not run
  C6C0  8C 07 20  STY $2007                     ; 006C0 inferred, not run

loc_B0_C6C3:                    ; from 006b2
  C6C3  60        RTS                           ; 006C3 ×8

sub_B0_C6C4:                    ; from 014a9 00199
  C6C4  A9 00     LDA #$00                      ; 006C4 ×67
  C6C6  85 E9     STA $E9                       ; 006C6 ×67
  C6C8  A5 03     LDA $03                       ; 006C8 ×67
  C6CA  0A        ASL A                         ; 006CA ×67
  C6CB  10 25     BPL loc_B0_C6F2               ; 006CB ×67
  C6CD  A9 5D     LDA #$5D                      ; 006CD ×15
  C6CF  90 02     BCC loc_B0_C6D3               ; 006CF ×15
  C6D1  A9 5A     LDA #$5A                      ; 006D1 inferred, not run

loc_B0_C6D3:                    ; from 006cf
  C6D3  85 EC     STA $EC                       ; 006D3 ×15
  C6D5  A0 00     LDY #$00                      ; 006D5 ×15
  C6D7  84 ED     STY $ED                       ; 006D7 ×15
  C6D9  A2 03     LDX #$03                      ; 006D9 ×15
  C6DB  18        CLC                           ; 006DB ×15

loc_B0_C6DC:                    ; from 006e5
  C6DC  B1 EC     LDA ($EC),Y                   ; 006DC ×45
  C6DE  20 F7 C6  JSR sub_B0_C6F7               ; 006DE ×45
  C6E1  91 EC     STA ($EC),Y                   ; 006E1 ×45
  C6E3  C8        INY                           ; 006E3 ×45
  C6E4  CA        DEX                           ; 006E4 ×45
  C6E5  D0 F5     BNE loc_B0_C6DC               ; 006E5 ×45
  C6E7  90 38     BCC loc_B0_C721               ; 006E7 ×15
  C6E9  A2 02     LDX #$02                      ; 006E9 inferred, not run
  C6EB  A9 99     LDA #$99                      ; 006EB inferred, not run
  C6ED  95 57     STA $57,X                     ; 006ED inferred, not run
  C6EF  CA        DEX                           ; 006EF inferred, not run
  C6F0  10 FB     BPL $C6ED                     ; 006F0 inferred, not run

loc_B0_C6F2:                    ; from 006cb
  C6F2  60        RTS                           ; 006F2 ×52

sub_B0_C6F3:                    ; from 003a2
  C6F3  86 E8     STX $E8                       ; 006F3 ×0
  C6F5  A2 00     LDX #$00                      ; 006F5 ×0

sub_B0_C6F7:                    ; from 006de
  C6F7  85 EF     STA $EF                       ; 006F7 ×45
  C6F9  29 F0     AND #$F0                      ; 006F9 ×45
  C6FB  85 EE     STA $EE                       ; 006FB ×45
  C6FD  45 EF     EOR $EF                       ; 006FD ×45
  C6FF  85 EF     STA $EF                       ; 006FF ×45
  C701  B5 E8     LDA $E8,X                     ; 00701 ×45
  C703  29 0F     AND #$0F                      ; 00703 ×45
  C705  65 EF     ADC $EF                       ; 00705 ×45
  C707  C9 0A     CMP #$0A                      ; 00707 ×45
  C709  90 02     BCC loc_B0_C70D               ; 00709 ×45
  C70B  69 05     ADC #$05                      ; 0070B ×0

loc_B0_C70D:                    ; from 00709
  C70D  65 EE     ADC $EE                       ; 0070D ×45
  C70F  85 EE     STA $EE                       ; 0070F ×45
  C711  B5 E8     LDA $E8,X                     ; 00711 ×45
  C713  29 F0     AND #$F0                      ; 00713 ×45
  C715  65 EE     ADC $EE                       ; 00715 ×45
  C717  B0 04     BCS $C71D                     ; 00717 ×45
  C719  C9 A0     CMP #$A0                      ; 00719 ×45
  C71B  90 03     BCC loc_B0_C720               ; 0071B ×45
  C71D  E9 A0     SBC #$A0                      ; 0071D ×0
  C71F  38        SEC                           ; 0071F ×0

loc_B0_C720:                    ; from 0071b
  C720  60        RTS                           ; 00720 ×45

loc_B0_C721:                    ; from 006e7
  C721  C5 62     CMP $62                       ; 00721 ×15
  C723  90 15     BCC loc_B0_C73A               ; 00723 ×15
  C725  A2 04     LDX #$04                      ; 00725 inferred, not run
  C727  A5 62     LDA $62                       ; 00727 inferred, not run
  C729  18        CLC                           ; 00729 inferred, not run
  C72A  20 F3 C6  JSR sub_B0_C6F3               ; 0072A inferred, not run
  C72D  90 02     BCC $C731                     ; 0072D inferred, not run
  C72F  A9 FF     LDA #$FF                      ; 0072F inferred, not run
  C731  85 62     STA $62                       ; 00731 inferred, not run
  C733  E6 60     INC $60                       ; 00733 inferred, not run
  C735  A9 06     LDA #$06                      ; 00735 inferred, not run
  C737  20 0D F8  JSR sub_B0_F80D               ; 00737 inferred, not run

loc_B0_C73A:                    ; from 00723
  C73A  A0 02     LDY #$02                      ; 0073A ×15
  C73C  B9 57 00  LDA $0057,Y                   ; 0073C ×15
  C73F  D1 EC     CMP ($EC),Y                   ; 0073F ×15
  C741  90 05     BCC $C748                     ; 00741 ×15
  C743  D0 0D     BNE loc_B0_C752               ; 00743 ×15
  C745  88        DEY                           ; 00745 inferred, not run
  C746  10 F4     BPL $C73C                     ; 00746 inferred, not run
  C748  A0 02     LDY #$02                      ; 00748 inferred, not run
  C74A  B1 EC     LDA ($EC),Y                   ; 0074A inferred, not run
  C74C  99 57 00  STA $0057,Y                   ; 0074C inferred, not run
  C74F  88        DEY                           ; 0074F inferred, not run
  C750  10 F8     BPL $C74A                     ; 00750 inferred, not run

loc_B0_C752:                    ; from 00743
  C752  60        RTS                           ; 00752 ×15

sub_B0_C753:                    ; from 003aa
  C753  A9 0A     LDA #$0A                      ; 00753 ×18
  C755  20 E3 C4  JSR sub_B0_C4E3               ; 00755 ×18
  C758  A9 09     LDA #$09                      ; 00758 ×18
  C75A  20 E3 C4  JSR sub_B0_C4E3               ; 0075A ×18
  C75D  20 CB C0  JSR sub_B0_C0CB               ; 0075D ×18
  C760  A9 00     LDA #$00                      ; 00760 ×18
  C762  60        RTS                           ; 00762 ×18
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
  C81A  A5 07     LDA $07                       ; 0081A ×39641
  C81C  85 0C     STA $0C                       ; 0081C ×39641
  C81E  A5 05     LDA $05                       ; 0081E ×39641
  C820  85 0D     STA $0D                       ; 00820 ×39641

loc_B0_C822:                    ; from 017be
  C822  20 63 CA  JSR sub_B0_CA63               ; 00822 ×45937
  C825  20 B1 CA  JSR sub_B0_CAB1               ; 00825 ×45937
  C828  B0 06     BCS loc_B0_C830               ; 00828 ×45937
  C82A  20 F3 D3  JSR sub_B0_D3F3               ; 0082A ×26173
  C82D  20 91 C9  JSR sub_B0_C991               ; 0082D ×26173

loc_B0_C830:                    ; from 00828
  C830  20 DD C9  JSR sub_B0_C9DD               ; 00830 ×45937
  C833  18        CLC                           ; 00833 ×45937
  C834  60        RTS                           ; 00834 ×45937

sub_B0_C835:                    ; from 00299 0176a
  C835  A0 01     LDY #$01                      ; 00835 ×43
  C837  A6 63     LDX $63                       ; 00837 ×43
  C839  CA        DEX                           ; 00839 ×43
  C83A  86 64     STX $64                       ; 0083A ×43
  C83C  E0 01     CPX #$01                      ; 0083C ×43
  C83E  F0 05     BEQ loc_B0_C845               ; 0083E ×43
  C840  E0 04     CPX #$04                      ; 00840 ×39
  C842  F0 01     BEQ loc_B0_C845               ; 00842 ×39
  C844  88        DEY                           ; 00844 ×39

loc_B0_C845:                    ; from 0083e
  C845  84 65     STY $65                       ; 00845 ×43
  C847  A9 04     LDA #$04                      ; 00847 ×43
  C849  8D 2F 03  STA $032F                     ; 00849 ×43
  C84C  A0 00     LDY #$00                      ; 0084C ×43
  C84E  84 0E     STY $0E                       ; 0084E ×43
  C850  20 89 C8  JSR sub_B0_C889               ; 00850 ×43
  C853  20 FD D2  JSR sub_B0_D2FD               ; 00853 ×43
  C856  20 56 C5  JSR sub_B0_C556               ; 00856 ×43
  C859  A2 F0     LDX #$F0                      ; 00859 ×43
  C85B  A9 07     LDA #$07                      ; 0085B ×43
  C85D  85 79     STA $79                       ; 0085D ×43

loc_B0_C85F:                    ; from 00870
  C85F  A0 08     LDY #$08                      ; 0085F ×301

loc_B0_C861:                    ; from 00867
  C861  A9 00     LDA #$00                      ; 00861 ×2408
  C863  95 80     STA $80,X                     ; 00863 ×2408
  C865  E8        INX                           ; 00865 ×2408
  C866  88        DEY                           ; 00866 ×2408
  C867  D0 F8     BNE loc_B0_C861               ; 00867 ×2408
  C869  8A        TXA                           ; 00869 ×301
  C86A  18        CLC                           ; 0086A ×301
  C86B  69 08     ADC #$08                      ; 0086B ×301
  C86D  AA        TAX                           ; 0086D ×301
  C86E  C6 79     DEC $79                       ; 0086E ×301
  C870  D0 ED     BNE loc_B0_C85F               ; 00870 ×301
  C872  A2 04     LDX #$04                      ; 00872 ×43
  C874  86 7D     STX $7D                       ; 00874 ×43
  C876  A2 03     LDX #$03                      ; 00876 ×43
  C878  A0 00     LDY #$00                      ; 00878 ×43
  C87A  84 7C     STY $7C                       ; 0087A ×43

loc_B0_C87C:                    ; from 00881 00886
  C87C  A9 00     LDA #$00                      ; 0087C ×33024
  C87E  91 7C     STA ($7C),Y                   ; 0087E ×33024
  C880  88        DEY                           ; 00880 ×33024
  C881  D0 F9     BNE loc_B0_C87C               ; 00881 ×33024
  C883  E6 7D     INC $7D                       ; 00883 ×129
  C885  CA        DEX                           ; 00885 ×129
  C886  D0 F4     BNE loc_B0_C87C               ; 00886 ×129
  C888  60        RTS                           ; 00888 ×43

sub_B0_C889:                    ; from 00850
  C889  24 03     BIT $03                       ; 00889 ×43
  C88B  50 26     BVC loc_B0_C8B3               ; 0088B ×43
  C88D  A5 6F     LDA $6F                       ; 0088D ×36
  C88F  F0 06     BEQ loc_B0_C897               ; 0088F ×36
  C891  A9 00     LDA #$00                      ; 00891 inferred, not run
  C893  85 6F     STA $6F                       ; 00893 inferred, not run
  C895  F0 1E     BEQ loc_B0_C8B5               ; 00895 inferred, not run

loc_B0_C897:                    ; from 0088f
  C897  A5 6E     LDA $6E                       ; 00897 ×36
  C899  C9 06     CMP #$06                      ; 00899 ×36
  C89B  F0 24     BEQ loc_B0_C8C1               ; 0089B ×36
  C89D  A4 64     LDY $64                       ; 0089D ×11
  C89F  D0 14     BNE loc_B0_C8B5               ; 0089F ×11
  C8A1  E6 66     INC $66                       ; 008A1 ×11
  C8A3  A5 66     LDA $66                       ; 008A3 ×11
  C8A5  C9 02     CMP #$02                      ; 008A5 ×11
  C8A7  B0 0C     BCS loc_B0_C8B5               ; 008A7 ×11
  C8A9  24 03     BIT $03                       ; 008A9 ×11
  C8AB  50 08     BVC loc_B0_C8B5               ; 008AB ×11
  C8AD  A5 03     LDA $03                       ; 008AD ×11
  C8AF  29 08     AND #$08                      ; 008AF ×11
  C8B1  F0 02     BEQ loc_B0_C8B5               ; 008B1 ×11

loc_B0_C8B3:                    ; from 0088b
  C8B3  E6 66     INC $66                       ; 008B3 ×7

loc_B0_C8B5:                    ; from 008b1
  C8B5  A0 00     LDY #$00                      ; 008B5 ×18
  C8B7  84 6B     STY $6B                       ; 008B7 ×18
  C8B9  84 6D     STY $6D                       ; 008B9 ×18
  C8BB  84 AD     STY $AD                       ; 008BB ×18
  C8BD  84 AB     STY $AB                       ; 008BD ×18
  C8BF  F0 21     BEQ loc_B0_C8E2               ; 008BF ×18

loc_B0_C8C1:                    ; from 0089b
  C8C1  A5 69     LDA $69                       ; 008C1 ×25
  C8C3  A4 63     LDY $63                       ; 008C3 ×25
  C8C5  C0 04     CPY #$04                      ; 008C5 ×25
  C8C7  D0 0A     BNE loc_B0_C8D3               ; 008C7 ×25
  C8C9  C9 03     CMP #$03                      ; 008C9 ×0
  C8CB  B0 0C     BCS loc_B0_C8D9               ; 008CB ×0
  C8CD  C9 02     CMP #$02                      ; 008CD ×0
  C8CF  B0 06     BCS $C8D7                     ; 008CF ×0
  C8D1  C6 6B     DEC $6B                       ; 008D1 ×0

loc_B0_C8D3:                    ; from 008c7
  C8D3  C9 02     CMP #$02                      ; 008D3 ×25
  C8D5  B0 02     BCS loc_B0_C8D9               ; 008D5 ×25
  C8D7  C6 6B     DEC $6B                       ; 008D7 ×0

loc_B0_C8D9:                    ; from 008d5
  C8D9  C0 05     CPY #$05                      ; 008D9 ×25
  C8DB  D0 05     BNE loc_B0_C8E2               ; 008DB ×25
  C8DD  A5 AB     LDA $AB                       ; 008DD ×0
  C8DF  4A        LSR A                         ; 008DF ×0
  C8E0  85 6B     STA $6B                       ; 008E0 ×0

loc_B0_C8E2:                    ; from 008db 008bf
  C8E2  A0 00     LDY #$00                      ; 008E2 ×43
  C8E4  84 9B     STY $9B                       ; 008E4 ×43
  C8E6  84 6A     STY $6A                       ; 008E6 ×43
  C8E8  84 CF     STY $CF                       ; 008E8 ×43
  C8EA  84 0F     STY $0F                       ; 008EA ×43
  C8EC  84 DE     STY $DE                       ; 008EC ×43
  C8EE  84 DF     STY $DF                       ; 008EE ×43
  C8F0  84 CD     STY $CD                       ; 008F0 ×43
  C8F2  8C 88 03  STY $0388                     ; 008F2 ×43
  C8F5  8C FF 03  STY $03FF                     ; 008F5 ×43
  C8F8  A0 01     LDY #$01                      ; 008F8 ×43
  C8FA  84 B8     STY $B8                       ; 008FA ×43

sub_B0_C8FC:                    ; from 01491
  C8FC  A9 00     LDA #$00                      ; 008FC ×110
  C8FE  A2 04     LDX #$04                      ; 008FE ×110

loc_B0_C900:                    ; from 00903
  C900  95 D9     STA $D9,X                     ; 00900 ×550
  C902  CA        DEX                           ; 00902 ×550
  C903  10 FB     BPL loc_B0_C900               ; 00903 ×550
  C905  60        RTS                           ; 00905 ×110

loc_B0_C906:                    ; from 0252f 02fc4
  C906  A5 64     LDA $64                       ; 00906 ×43
  C908  0A        ASL A                         ; 00908 ×43
  C909  AA        TAX                           ; 00909 ×43
  C90A  BD 28 C9  LDA $C928,X                   ; 0090A ×43
  C90D  85 7C     STA $7C                       ; 0090D ×43
  C90F  BD 29 C9  LDA $C929,X                   ; 0090F ×43
  C912  85 7D     STA $7D                       ; 00912 ×43
  C914  A0 00     LDY #$00                      ; 00914 ×43
  C916  B1 7C     LDA ($7C),Y                   ; 00916 ×43
  C918  85 79     STA $79                       ; 00918 ×43
  C91A  A5 7C     LDA $7C                       ; 0091A ×43
  C91C  18        CLC                           ; 0091C ×43
  C91D  69 01     ADC #$01                      ; 0091D ×43
  C91F  85 7C     STA $7C                       ; 0091F ×43
  C921  90 02     BCC loc_B0_C925               ; 00921 ×43
  C923  E6 7D     INC $7D                       ; 00923 inferred, not run

loc_B0_C925:                    ; from 00921
  C925  4C DE CF  JMP loc_B0_CFDE               ; 00925 ×43
  C928  .byte 32 C9 43 C9                                       ; 00928 data, read by 0090a 0090f
  C92C  .byte 54 C9                                             ; 0092C
  C92E  .byte 6F C9                                             ; 0092E data, read by 0090a 0090f
  C930  .byte 80 C9                                             ; 00930
  C932  .byte 02 07 01 06 68 A6 30 00 00 07 01 08 80 BE 28 00   ; 00932 data, read by 00916 00fe4 00fe9
  C942  .byte 1A 02 07 01 06 20 68 40 00 03 07 00 12 B8 F4 00   ; 00942 data, read by 00fe9 00916 00fe4
  C952  .byte 01 1F                                             ; 00952 data, read by 00fe9
  C954  .byte 04 07 01 06 20 A0 3C 00 03 07 01 09 38 B8 38 00   ; 00954
  C964  .byte 20 04 00 09 5C B8 04 00 09 80 B8                  ; 00964
  C96F  .byte 02 07 01 06 20 A1 2A 00 00 07 01 13 38 B5 20 00   ; 0096F data, read by 00916 00fe4 00fe9
  C97F  .byte 10                                                ; 0097F data, read by 00fe9
  C980  .byte 02 07 01 06 20 4A 16 00 06 07 00 12 B8 F4 00 01   ; 00980
  C990  .byte 1F                                                ; 00990

sub_B0_C991:                    ; from 0082d
  C991  24 03     BIT $03                       ; 00991 ×26173
  C993  50 0B     BVC loc_B0_C9A0               ; 00993 ×26173
  C995  AC 06 04  LDY $0406                     ; 00995 ×19877
  C998  D0 06     BNE loc_B0_C9A0               ; 00998 ×19877
  C99A  EE 06 04  INC $0406                     ; 0099A ×36
  C99D  4C 51 CB  JMP loc_B0_CB51               ; 0099D ×36

loc_B0_C9A0:                    ; from 00998 00993
  C9A0  20 0D CF  JSR sub_B0_CF0D               ; 009A0 ×26137
  C9A3  20 49 CF  JSR sub_B0_CF49               ; 009A3 ×26137
  C9A6  24 03     BIT $03                       ; 009A6 ×26137
  C9A8  50 13     BVC loc_B0_C9BD               ; 009A8 ×26137
  C9AA  20 44 D5  JSR sub_B0_D544               ; 009AA ×19841
  C9AD  A6 0F     LDX $0F                       ; 009AD ×19841
  C9AF  D0 0C     BNE loc_B0_C9BD               ; 009AF ×19841
  C9B1  20 04 CA  JSR sub_B0_CA04               ; 009B1 ×12786
  C9B4  D0 07     BNE loc_B0_C9BD               ; 009B4 ×12786
  C9B6  E6 0F     INC $0F                       ; 009B6 inferred, not run
  C9B8  E6 CF     INC $CF                       ; 009B8 inferred, not run
  C9BA  4C DC DC  JMP $DCDC                     ; 009BA inferred, not run

loc_B0_C9BD:                    ; from 009b4 009af 009a8
  C9BD  A6 52     LDX $52                       ; 009BD ×26137
  C9BF  E8        INX                           ; 009BF ×26137
  C9C0  E0 06     CPX #$06                      ; 009C0 ×26137
  C9C2  90 02     BCC loc_B0_C9C6               ; 009C2 ×26137
  C9C4  A2 00     LDX #$00                      ; 009C4 ×4355

loc_B0_C9C6:                    ; from 009c2
  C9C6  86 52     STX $52                       ; 009C6 ×26137
  C9C8  20 CE C9  JSR sub_B0_C9CE               ; 009C8 ×26137
  C9CB  4C 32 CD  JMP loc_B0_CD32               ; 009CB ×26137

sub_B0_C9CE:                    ; from 009c8
  C9CE  A5 64     LDA $64                       ; 009CE ×26137
  C9D0  20 CD C4  JSR sub_B0_C4CD               ; 009D0 ×26137
  C9D3  .byte 32 E5 D9 E9                                       ; 009D3 data, read by 004d6 004da
  C9D7  .byte 41 EC                                             ; 009D7
  C9D9  .byte 8F EF                                             ; 009D9 data, read by 004d6 004da
  C9DB  .byte 63 F1                                             ; 009DB

sub_B0_C9DD:                    ; from 00830 00181
  C9DD  A6 64     LDX $64                       ; 009DD ×45937
  C9DF  BD E7 C9  LDA $C9E7,X                   ; 009DF ×45937
  C9E2  85 79     STA $79                       ; 009E2 ×45937
  C9E4  4C 01 D0  JMP loc_B0_D001               ; 009E4 ×45937
  C9E7  .byte 07 07                                             ; 009E7 data, read by 009df
  C9E9  .byte 04                                                ; 009E9
  C9EA  .byte 02                                                ; 009EA data, read by 009df
  C9EB  .byte 06                                                ; 009EB

sub_B0_C9EC:                    ; from 02892 027d9 02c10 02aa3 02a20 027b3 (+6)
  C9EC  8A        TXA                           ; 009EC ×102496
  C9ED  18        CLC                           ; 009ED ×102496
  C9EE  69 10     ADC #$10                      ; 009EE ×102496
  C9F0  AA        TAX                           ; 009F0 ×102496
  C9F1  60        RTS                           ; 009F1 ×102496

sub_B0_C9F2:                    ; from 0307f 030ee 0258e 03000 02c6d 02c83 (+5)
  C9F2  8A        TXA                           ; 009F2 ×17031
  C9F3  38        SEC                           ; 009F3 ×17031
  C9F4  E9 10     SBC #$10                      ; 009F4 ×17031
  C9F6  AA        TAX                           ; 009F6 ×17031
  C9F7  60        RTS                           ; 009F7 ×17031
  C9F8  .byte 98 18 69 10 A8 60 98 38 E9 10 A8 60               ; 009F8

sub_B0_CA04:                    ; from 009b1 00184
  CA04  AD 43 03  LDA $0343                     ; 00A04 ×12786
  CA07  0D 42 03  ORA $0342                     ; 00A07 ×12786
  CA0A  0D 41 03  ORA $0341                     ; 00A0A ×12786
  CA0D  0D 40 03  ORA $0340                     ; 00A0D ×12786
  CA10  60        RTS                           ; 00A10 ×12786

loc_B0_CA11:                    ; from 01624 00cd6
  CA11  AD 02 20  LDA $2002                     ; 00A11 ×690
  CA14  A9 3F     LDA #$3F                      ; 00A14 ×690
  CA16  8D 06 20  STA $2006                     ; 00A16 ×690
  CA19  A9 00     LDA #$00                      ; 00A19 ×690
  CA1B  8D 06 20  STA $2006                     ; 00A1B ×690
  CA1E  8D 06 20  STA $2006                     ; 00A1E ×690
  CA21  8D 06 20  STA $2006                     ; 00A21 ×690
  CA24  60        RTS                           ; 00A24 ×690

sub_B0_CA25:                    ; from 01cc1 0028f 00179 0019c 001a6 01c65 (+1)
  CA25  A5 45     LDA $45                       ; 00A25 ×1326
  CA27  D0 06     BNE loc_B0_CA2F               ; 00A27 ×1326

loc_B0_CA29:                    ; from 00a39
  CA29  A5 12     LDA $12                       ; 00A29 ×103
  CA2B  D0 02     BNE loc_B0_CA2F               ; 00A2B ×103
  CA2D  38        SEC                           ; 00A2D ×103
  CA2E  60        RTS                           ; 00A2E ×103

loc_B0_CA2F:                    ; from 00a33 00a27
  CA2F  18        CLC                           ; 00A2F ×6954
  CA30  60        RTS                           ; 00A30 ×6954

sub_B0_CA31:                    ; from 01cb3
  CA31  A5 34     LDA $34                       ; 00A31 ×5731
  CA33  D0 FA     BNE loc_B0_CA2F               ; 00A33 ×5731
  CA35  A5 23     LDA $23                       ; 00A35 ×33
  CA37  D0 F6     BNE loc_B0_CA2F               ; 00A37 ×33
  CA39  F0 EE     BEQ loc_B0_CA29               ; 00A39 ×33

sub_B0_CA3B:                    ; from 01cdc 00271 00e5b 01aa8 01c9b
  CA3B  A2 03     LDX #$03                      ; 00A3B ×45

loc_B0_CA3D:                    ; from 00a44
  CA3D  BD 47 CA  LDA $CA47,X                   ; 00A3D ×180
  CA40  20 0D F8  JSR sub_B0_F80D               ; 00A40 ×180
  CA43  CA        DEX                           ; 00A43 ×180
  CA44  10 F7     BPL loc_B0_CA3D               ; 00A44 ×180
  CA46  60        RTS                           ; 00A46 ×45
  CA47  .byte C0 80 40 00                                       ; 00A47 data, read by 00a3d

sub_B0_CA4B:                    ; from 01719
  CA4B  A5 53     LDA $53                       ; 00A4B ×76
  CA4D  09 04     ORA #$04                      ; 00A4D ×76

loc_B0_CA4F:                    ; from 00a59 00a60
  CA4F  85 53     STA $53                       ; 00A4F ×196
  CA51  8D 00 20  STA $2000                     ; 00A51 ×196
  CA54  60        RTS                           ; 00A54 ×196

loc_B0_CA55:                    ; from 01721
  CA55  A5 53     LDA $53                       ; 00A55 ×76
  CA57  29 FB     AND #$FB                      ; 00A57 ×76
  CA59  4C 4F CA  JMP loc_B0_CA4F               ; 00A59 ×76

sub_B0_CA5C:                    ; from 002d9 0035a
  CA5C  A5 53     LDA $53                       ; 00A5C ×44
  CA5E  29 FE     AND #$FE                      ; 00A5E ×44
  CA60  4C 4F CA  JMP loc_B0_CA4F               ; 00A60 ×44

sub_B0_CA63:                    ; from 00a68 00822 00104 00108
  CA63  AD 02 20  LDA $2002                     ; 00A63 ×1047736
  CA66  29 40     AND #$40                      ; 00A66 ×1047736
  CA68  D0 F9     BNE sub_B0_CA63               ; 00A68 ×1047736
  CA6A  8D 10 04  STA $0410                     ; 00A6A ×45970
  CA6D  20 CE CF  JSR sub_B0_CFCE               ; 00A6D ×45970
  CA70  AD 2F 03  LDA $032F                     ; 00A70 ×45970
  CA73  F0 0B     BEQ loc_B0_CA80               ; 00A73 ×45970
  CA75  CE 2F 03  DEC $032F                     ; 00A75 ×172
  CA78  D0 36     BNE loc_B0_CAB0               ; 00A78 ×172
  CA7A  A9 00     LDA #$00                      ; 00A7A ×43
  CA7C  85 FB     STA $FB                       ; 00A7C ×43
  CA7E  F0 30     BEQ loc_B0_CAB0               ; 00A7E ×43

loc_B0_CA80:                    ; from 00a8b 00a73
  CA80  AD 02 20  LDA $2002                     ; 00A80 ×11461243
  CA83  29 40     AND #$40                      ; 00A83 ×11461243
  CA85  D0 06     BNE loc_B0_CA8D               ; 00A85 ×11461243
  CA87  EA        NOP                           ; 00A87 ×11415462
  CA88  CE 10 04  DEC $0410                     ; 00A88 ×11415462
  CA8B  D0 F3     BNE loc_B0_CA80               ; 00A8B ×11415462

loc_B0_CA8D:                    ; from 00a85
  CA8D  A2 1A     LDX #$1A                      ; 00A8D ×45798

loc_B0_CA8F:                    ; from 00a90
  CA8F  CA        DEX                           ; 00A8F ×1190748
  CA90  D0 FD     BNE loc_B0_CA8F               ; 00A90 ×1190748
  CA92  A6 6A     LDX $6A                       ; 00A92 ×45798
  CA94  A5 6B     LDA $6B                       ; 00A94 ×45798
  CA96  4A        LSR A                         ; 00A96 ×45798
  CA97  A5 53     LDA $53                       ; 00A97 ×45798
  CA99  29 FC     AND #$FC                      ; 00A99 ×45798
  CA9B  69 00     ADC #$00                      ; 00A9B ×45798
  CA9D  85 53     STA $53                       ; 00A9D ×45798
  CA9F  AD 02 20  LDA $2002                     ; 00A9F ×45798
  CAA2  EA        NOP                           ; 00AA2 ×45798
  CAA3  8E 05 20  STX $2005                     ; 00AA3 ×45798
  CAA6  A2 00     LDX #$00                      ; 00AA6 ×45798
  CAA8  8E 05 20  STX $2005                     ; 00AA8 ×45798
  CAAB  A5 53     LDA $53                       ; 00AAB ×45798
  CAAD  8D 00 20  STA $2000                     ; 00AAD ×45798

loc_B0_CAB0:                    ; from 00a78 00a7e
  CAB0  60        RTS                           ; 00AB0 ×45970

sub_B0_CAB1:                    ; from 00825
  CAB1  AE 0C 03  LDX $030C                     ; 00AB1 ×45937
  CAB4  CA        DEX                           ; 00AB4 ×45937
  CAB5  F0 0C     BEQ loc_B0_CAC3               ; 00AB5 ×45937
  CAB7  CA        DEX                           ; 00AB7 ×45902
  CAB8  F0 50     BEQ loc_B0_CB0A               ; 00AB8 ×45902
  CABA  A5 0E     LDA $0E                       ; 00ABA ×26173
  CABC  F0 03     BEQ loc_B0_CAC1               ; 00ABC ×26173
  CABE  EE 0C 03  INC $030C                     ; 00ABE ×35

loc_B0_CAC1:                    ; from 00abc
  CAC1  18        CLC                           ; 00AC1 ×26173
  CAC2  60        RTS                           ; 00AC2 ×26173

loc_B0_CAC3:                    ; from 00ab5
  CAC3  EE 0C 03  INC $030C                     ; 00AC3 ×35
  CAC6  EE 10 03  INC $0310                     ; 00AC6 ×35
  CAC9  A9 16     LDA #$16                      ; 00AC9 ×35
  CACB  20 0D F8  JSR sub_B0_F80D               ; 00ACB ×35
  CACE  A9 C0     LDA #$C0                      ; 00ACE ×35
  CAD0  20 0D F8  JSR sub_B0_F80D               ; 00AD0 ×35

loc_B0_CAD3:                    ; from 00b18
  CAD3  A9 2E     LDA #$2E                      ; 00AD3 ×652

loc_B0_CAD5:                    ; from 00b26
  CAD5  85 8E     STA $8E                       ; 00AD5 ×1302
  CAD7  A9 05     LDA #$05                      ; 00AD7 ×1302
  CAD9  85 79     STA $79                       ; 00AD9 ×1302
  CADB  A9 60     LDA #$60                      ; 00ADB ×1302
  CADD  85 8C     STA $8C                       ; 00ADD ×1302
  CADF  A2 04     LDX #$04                      ; 00ADF ×1302
  CAE1  A0 00     LDY #$00                      ; 00AE1 ×1302

loc_B0_CAE3:                    ; from 00b06
  CAE3  A5 8E     LDA $8E                       ; 00AE3 ×6510
  CAE5  9D 00 02  STA $0200,X                   ; 00AE5 ×6510
  CAE8  E8        INX                           ; 00AE8 ×6510
  CAE9  B9 28 CB  LDA $CB28,Y                   ; 00AE9 ×6510
  CAEC  9D 00 02  STA $0200,X                   ; 00AEC ×6510
  CAEF  C8        INY                           ; 00AEF ×6510
  CAF0  E8        INX                           ; 00AF0 ×6510
  CAF1  A9 01     LDA #$01                      ; 00AF1 ×6510
  CAF3  9D 00 02  STA $0200,X                   ; 00AF3 ×6510
  CAF6  E8        INX                           ; 00AF6 ×6510
  CAF7  A5 8C     LDA $8C                       ; 00AF7 ×6510
  CAF9  9D 00 02  STA $0200,X                   ; 00AF9 ×6510
  CAFC  E8        INX                           ; 00AFC ×6510
  CAFD  A5 8C     LDA $8C                       ; 00AFD ×6510
  CAFF  18        CLC                           ; 00AFF ×6510
  CB00  69 08     ADC #$08                      ; 00B00 ×6510
  CB02  85 8C     STA $8C                       ; 00B02 ×6510
  CB04  C6 79     DEC $79                       ; 00B04 ×6510
  CB06  D0 DB     BNE loc_B0_CAE3               ; 00B06 ×6510

loc_B0_CB08:                    ; from 00b12
  CB08  38        SEC                           ; 00B08 ×19764
  CB09  60        RTS                           ; 00B09 ×19764

loc_B0_CB0A:                    ; from 00ab8
  CB0A  A5 0E     LDA $0E                       ; 00B0A ×19729
  CB0C  F0 0E     BEQ loc_B0_CB1C               ; 00B0C ×19729
  CB0E  A5 09     LDA $09                       ; 00B0E ×19695
  CB10  29 0F     AND #$0F                      ; 00B10 ×19695
  CB12  D0 F4     BNE loc_B0_CB08               ; 00B12 ×19695
  CB14  A5 09     LDA $09                       ; 00B14 ×1233
  CB16  29 10     AND #$10                      ; 00B16 ×1233
  CB18  D0 B9     BNE loc_B0_CAD3               ; 00B18 ×1233
  CB1A  F0 08     BEQ loc_B0_CB24               ; 00B1A ×616

loc_B0_CB1C:                    ; from 00b0c
  CB1C  A9 00     LDA #$00                      ; 00B1C ×34
  CB1E  8D 0C 03  STA $030C                     ; 00B1E ×34
  CB21  8D 10 03  STA $0310                     ; 00B21 ×34

loc_B0_CB24:                    ; from 00b1a
  CB24  A9 F4     LDA #$F4                      ; 00B24 ×650
  CB26  D0 AD     BNE loc_B0_CAD5               ; 00B26 ×650
  CB28  .byte 5B 6A 6B 7A 7B                                    ; 00B28 data, read by 00ae9

sub_B0_CB2D:                    ; from 002eb
  CB2D  86 F9     STX $F9                       ; 00B2D ×36
  CB2F  A9 00     LDA #$00                      ; 00B2F ×36
  CB31  8D 40 03  STA $0340                     ; 00B31 ×36
  CB34  8D 41 03  STA $0341                     ; 00B34 ×36
  CB37  8D 42 03  STA $0342                     ; 00B37 ×36
  CB3A  A2 05     LDX #$05                      ; 00B3A ×36
  CB3C  A0 02     LDY #$02                      ; 00B3C ×36
  CB3E  A5 66     LDA $66                       ; 00B3E ×36
  CB40  38        SEC                           ; 00B40 ×36
  CB41  E9 04     SBC #$04                      ; 00B41 ×36
  CB43  F0 06     BEQ loc_B0_CB4B               ; 00B43 ×36
  CB45  30 04     BMI loc_B0_CB4B               ; 00B45 ×36
  CB47  CA        DEX                           ; 00B47 inferred, not run
  CB48  88        DEY                           ; 00B48 inferred, not run
  CB49  D0 F5     BNE $CB40                     ; 00B49 inferred, not run

loc_B0_CB4B:                    ; from 00b45
  CB4B  8E 43 03  STX $0343                     ; 00B4B ×36
  CB4E  A6 F9     LDX $F9                       ; 00B4E ×36
  CB50  60        RTS                           ; 00B50 ×36

loc_B0_CB51:                    ; from 0099d
  CB51  A0 00     LDY #$00                      ; 00B51 ×36
  CB53  F0 02     BEQ loc_B0_CB57               ; 00B53 ×36
  CB55  A0 01     LDY #$01                      ; 00B55 inferred, not run

loc_B0_CB57:                    ; from 00b53
  CB57  A9 00     LDA #$00                      ; 00B57 ×36
  CB59  8D 06 40  STA $4006                     ; 00B59 ×36
  CB5C  8D 07 40  STA $4007                     ; 00B5C ×36
  CB5F  8D 0A 40  STA $400A                     ; 00B5F ×36
  CB62  8D 0B 40  STA $400B                     ; 00B62 ×36
  CB65  A6 63     LDX $63                       ; 00B65 ×36
  CB67  E0 05     CPX #$05                      ; 00B67 ×36
  CB69  F0 0A     BEQ $CB75                     ; 00B69 ×36
  CB6B  E0 03     CPX #$03                      ; 00B6B ×36
  CB6D  F0 09     BEQ $CB78                     ; 00B6D ×36
  CB6F  E0 02     CPX #$02                      ; 00B6F ×36
  CB71  F0 05     BEQ $CB78                     ; 00B71 ×36
  CB73  D0 06     BNE loc_B0_CB7B               ; 00B73 ×36
  CB75  18        CLC                           ; 00B75 ×0
  CB76  69 0A     ADC #$0A                      ; 00B76 ×0
  CB78  18        CLC                           ; 00B78 ×0
  CB79  69 0A     ADC #$0A                      ; 00B79 ×0

loc_B0_CB7B:                    ; from 00b73
  CB7B  AA        TAX                           ; 00B7B ×36
  CB7C  C0 01     CPY #$01                      ; 00B7C ×36
  CB7E  F0 05     BEQ $CB85                     ; 00B7E ×36
  CB80  BD BC CB  LDA $CBBC,X                   ; 00B80 ×36
  CB83  D0 03     BNE loc_B0_CB88               ; 00B83 ×36
  CB85  BD BD CB  LDA $CBBD,X                   ; 00B85 inferred, not run

loc_B0_CB88:                    ; from 00b83
  CB88  85 2E     STA $2E                       ; 00B88 ×36
  CB8A  85 3F     STA $3F                       ; 00B8A ×36
  CB8C  BD BE CB  LDA $CBBE,X                   ; 00B8C ×36
  CB8F  85 26     STA $26                       ; 00B8F ×36
  CB91  BD BF CB  LDA $CBBF,X                   ; 00B91 ×36
  CB94  85 37     STA $37                       ; 00B94 ×36
  CB96  BD C0 CB  LDA $CBC0,X                   ; 00B96 ×36
  CB99  85 30     STA $30                       ; 00B99 ×36
  CB9B  BD C1 CB  LDA $CBC1,X                   ; 00B9B ×36
  CB9E  85 31     STA $31                       ; 00B9E ×36
  CBA0  BD C2 CB  LDA $CBC2,X                   ; 00BA0 ×36
  CBA3  8D 04 40  STA $4004                     ; 00BA3 ×36
  CBA6  BD C3 CB  LDA $CBC3,X                   ; 00BA6 ×36
  CBA9  8D 08 40  STA $4008                     ; 00BA9 ×36
  CBAC  BD C4 CB  LDA $CBC4,X                   ; 00BAC ×36
  CBAF  86 F9     STX $F9                       ; 00BAF ×36
  CBB1  20 0D F8  JSR sub_B0_F80D               ; 00BB1 ×36
  CBB4  A6 F9     LDX $F9                       ; 00BB4 ×36
  CBB6  BD C5 CB  LDA $CBC5,X                   ; 00BB6 ×36
  CBB9  4C 0D F8  JMP sub_B0_F80D               ; 00BB9 ×36
  CBBC  .byte 07                                                ; 00BBC data, read by 00b80
  CBBD  .byte 05                                                ; 00BBD
  CBBE  .byte 7A 20 02 05 7A 20 4E 8F                           ; 00BBE data, read by 00b8c 00b91 00b96 00b9b (+4)
  CBC6  .byte 07 05 BA 2E 02 05 BA 2E 50 91 04 03 FA 24 00 07   ; 00BC6
  CBD6  .byte FA 24 52 93                                       ; 00BD6

sub_B0_CBDA:                    ; from 00274 00e5e
  CBDA  A9 54     LDA #$54                      ; 00BDA ×11
  CBDC  20 0D F8  JSR sub_B0_F80D               ; 00BDC ×11
  CBDF  A9 D5     LDA #$D5                      ; 00BDF ×11
  CBE1  4C 0D F8  JMP sub_B0_F80D               ; 00BE1 ×11

sub_B0_CBE4:                    ; from 011c4
  CBE4  8A        TXA                           ; 00BE4 ×145
  CBE5  48        PHA                           ; 00BE5 ×145
  CBE6  98        TYA                           ; 00BE6 ×145
  CBE7  48        PHA                           ; 00BE7 ×145
  CBE8  A9 00     LDA #$00                      ; 00BE8 ×145
  CBEA  85 7F     STA $7F                       ; 00BEA ×145
  CBEC  85 7E     STA $7E                       ; 00BEC ×145
  CBEE  A5 8E     LDA $8E                       ; 00BEE ×145
  CBF0  29 F8     AND #$F8                      ; 00BF0 ×145
  CBF2  0A        ASL A                         ; 00BF2 ×145
  CBF3  26 7F     ROL $7F                       ; 00BF3 ×145
  CBF5  0A        ASL A                         ; 00BF5 ×145
  CBF6  26 7F     ROL $7F                       ; 00BF6 ×145
  CBF8  85 7E     STA $7E                       ; 00BF8 ×145
  CBFA  A5 8D     LDA $8D                       ; 00BFA ×145
  CBFC  29 01     AND #$01                      ; 00BFC ×145
  CBFE  0A        ASL A                         ; 00BFE ×145
  CBFF  0A        ASL A                         ; 00BFF ×145
  CC00  18        CLC                           ; 00C00 ×145
  CC01  69 20     ADC #$20                      ; 00C01 ×145
  CC03  65 7F     ADC $7F                       ; 00C03 ×145
  CC05  85 7F     STA $7F                       ; 00C05 ×145
  CC07  A5 8C     LDA $8C                       ; 00C07 ×145
  CC09  4A        LSR A                         ; 00C09 ×145
  CC0A  4A        LSR A                         ; 00C0A ×145
  CC0B  4A        LSR A                         ; 00C0B ×145
  CC0C  18        CLC                           ; 00C0C ×145
  CC0D  65 7E     ADC $7E                       ; 00C0D ×145
  CC0F  85 7E     STA $7E                       ; 00C0F ×145
  CC11  68        PLA                           ; 00C11 ×145
  CC12  A8        TAY                           ; 00C12 ×145
  CC13  68        PLA                           ; 00C13 ×145
  CC14  AA        TAX                           ; 00C14 ×145
  CC15  60        RTS                           ; 00C15 ×145

sub_B0_CC16:                    ; from 0259f 00dce 00def 00e6f 02ce5 02f58 (+1)
  CC16  BD 01 05  LDA $0501,X                   ; 00C16 ×4479
  CC19  85 77     STA $77                       ; 00C19 ×4479
  CC1B  BD 02 05  LDA $0502,X                   ; 00C1B ×4479
  CC1E  85 78     STA $78                       ; 00C1E ×4479

sub_B0_CC20:                    ; from 03127 02952 00eb0 03715
  CC20  A5 6B     LDA $6B                       ; 00C20 ×9430
  CC22  29 01     AND #$01                      ; 00C22 ×9430
  CC24  85 7A     STA $7A                       ; 00C24 ×9430
  CC26  A5 78     LDA $78                       ; 00C26 ×9430
  CC28  29 01     AND #$01                      ; 00C28 ×9430
  CC2A  85 78     STA $78                       ; 00C2A ×9430
  CC2C  C5 7A     CMP $7A                       ; 00C2C ×9430
  CC2E  D0 10     BNE loc_B0_CC40               ; 00C2E ×9430
  CC30  A5 77     LDA $77                       ; 00C30 ×5450
  CC32  C5 6A     CMP $6A                       ; 00C32 ×5450
  CC34  B0 05     BCS loc_B0_CC3B               ; 00C34 ×5450
  CC36  20 50 CC  JSR sub_B0_CC50               ; 00C36 ×1189
  CC39  38        SEC                           ; 00C39 ×1189
  CC3A  60        RTS                           ; 00C3A ×1189

loc_B0_CC3B:                    ; from 00c34
  CC3B  20 5B CC  JSR sub_B0_CC5B               ; 00C3B ×4261
  CC3E  18        CLC                           ; 00C3E ×4261
  CC3F  60        RTS                           ; 00C3F ×4261

loc_B0_CC40:                    ; from 00c2e
  CC40  A5 77     LDA $77                       ; 00C40 ×3980
  CC42  C5 6A     CMP $6A                       ; 00C42 ×3980
  CC44  B0 05     BCS loc_B0_CC4B               ; 00C44 ×3980
  CC46  20 50 CC  JSR sub_B0_CC50               ; 00C46 ×3859
  CC49  18        CLC                           ; 00C49 ×3859
  CC4A  60        RTS                           ; 00C4A ×3859

loc_B0_CC4B:                    ; from 00c44
  CC4B  20 5B CC  JSR sub_B0_CC5B               ; 00C4B ×121
  CC4E  38        SEC                           ; 00C4E ×121
  CC4F  60        RTS                           ; 00C4F ×121

sub_B0_CC50:                    ; from 00c46 00c36
  CC50  A9 00     LDA #$00                      ; 00C50 ×5048
  CC52  38        SEC                           ; 00C52 ×5048
  CC53  E5 6A     SBC $6A                       ; 00C53 ×5048
  CC55  18        CLC                           ; 00C55 ×5048
  CC56  65 77     ADC $77                       ; 00C56 ×5048
  CC58  85 77     STA $77                       ; 00C58 ×5048
  CC5A  60        RTS                           ; 00C5A ×5048

sub_B0_CC5B:                    ; from 00c3b 00c4b
  CC5B  38        SEC                           ; 00C5B ×4382
  CC5C  E5 6A     SBC $6A                       ; 00C5C ×4382
  CC5E  85 77     STA $77                       ; 00C5E ×4382
  CC60  18        CLC                           ; 00C60 ×4382
  CC61  60        RTS                           ; 00C61 ×4382

sub_B0_CC62:                    ; from 0296b 0291c 035f3
  CC62  A5 8F     LDA $8F                       ; 00C62 ×84968
  CC64  99 C8 03  STA $03C8,Y                   ; 00C64 ×84968
  CC67  A5 8D     LDA $8D                       ; 00C67 ×84968
  CC69  99 C9 03  STA $03C9,Y                   ; 00C69 ×84968

sub_B0_CC6C:                    ; from 02bed
  CC6C  B5 73     LDA $73,X                     ; 00C6C ×92500
  CC6E  18        CLC                           ; 00C6E ×92500
  CC6F  65 8E     ADC $8E                       ; 00C6F ×92500
  CC71  99 CA 03  STA $03CA,Y                   ; 00C71 ×92500
  CC74  B5 74     LDA $74,X                     ; 00C74 ×92500
  CC76  18        CLC                           ; 00C76 ×92500
  CC77  65 8C     ADC $8C                       ; 00C77 ×92500
  CC79  99 CB 03  STA $03CB,Y                   ; 00C79 ×92500
  CC7C  38        SEC                           ; 00C7C ×92500
  CC7D  60        RTS                           ; 00C7D ×92500

sub_B0_CC7E:                    ; from 028d2 02c05 030e9 0288a 028f0 035f6
  CC7E  86 F8     STX $F8                       ; 00C7E ×18719
  CC80  A2 00     LDX #$00                      ; 00C80 ×18719
  CC82  20 94 CC  JSR sub_B0_CC94               ; 00C82 ×18719
  CC85  90 05     BCC loc_B0_CC8C               ; 00C85 ×18719

loc_B0_CC87:                    ; from 00c91
  CC87  A2 01     LDX #$01                      ; 00C87 ×50967
  CC89  20 94 CC  JSR sub_B0_CC94               ; 00C89 ×50967

loc_B0_CC8C:                    ; from 00c85
  CC8C  A6 F8     LDX $F8                       ; 00C8C ×62650
  CC8E  60        RTS                           ; 00C8E ×62650

sub_B0_CC8F:                    ; from 028bf 02bf4 030ce 02857 00e30 02e81 (+2)
  CC8F  86 F8     STX $F8                       ; 00C8F ×43931
  CC91  4C 87 CC  JMP loc_B0_CC87               ; 00C91 ×43931

sub_B0_CC94:                    ; from 00c89 00c82
  CC94  BD D0 03  LDA $03D0,X                   ; 00C94 ×69686
  CC97  18        CLC                           ; 00C97 ×69686
  CC98  7D C8 03  ADC $03C8,X                   ; 00C98 ×69686
  CC9B  8D CD 03  STA $03CD                     ; 00C9B ×69686
  CC9E  BD D2 03  LDA $03D2,X                   ; 00C9E ×69686
  CCA1  18        CLC                           ; 00CA1 ×69686
  CCA2  7D D0 03  ADC $03D0,X                   ; 00CA2 ×69686
  CCA5  38        SEC                           ; 00CA5 ×69686
  CCA6  FD CA 03  SBC $03CA,X                   ; 00CA6 ×69686
  CCA9  90 07     BCC loc_B0_CCB2               ; 00CA9 ×69686
  CCAB  CD CD 03  CMP $03CD                     ; 00CAB ×33924
  CCAE  F0 04     BEQ loc_B0_CCB4               ; 00CAE ×33924
  CCB0  90 02     BCC loc_B0_CCB4               ; 00CB0 ×33862

loc_B0_CCB2:                    ; from 00ca9
  CCB2  18        CLC                           ; 00CB2 ×60478
  CCB3  60        RTS                           ; 00CB3 ×60478

loc_B0_CCB4:                    ; from 00cb0 00cae
  CCB4  38        SEC                           ; 00CB4 ×9208
  CCB5  60        RTS                           ; 00CB5 ×9208

sub_B0_CCB6:                    ; from 00cd0 00cd9
  CCB6  20 1E D3  JSR sub_B0_D31E               ; 00CB6 ×77
  CCB9  AD E6 CC  LDA $CCE6                     ; 00CB9 ×77
  CCBC  85 E4     STA $E4                       ; 00CBC ×77
  CCBE  AD E7 CC  LDA $CCE7                     ; 00CBE ×77
  CCC1  85 E5     STA $E5                       ; 00CC1 ×77
  CCC3  A9 00     LDA #$00                      ; 00CC3 ×77
  CCC5  85 E0     STA $E0                       ; 00CC5 ×77
  CCC7  A9 3F     LDA #$3F                      ; 00CC7 ×77
  CCC9  85 E1     STA $E1                       ; 00CC9 ×77
  CCCB  A9 20     LDA #$20                      ; 00CCB ×77
  CCCD  85 E2     STA $E2                       ; 00CCD ×77
  CCCF  60        RTS                           ; 00CCF ×77

sub_B0_CCD0:                    ; from 002d6 00241
  CCD0  20 B6 CC  JSR sub_B0_CCB6               ; 00CD0 ×43

loc_B0_CCD3:                    ; from 00ce3
  CCD3  20 AA C4  JSR sub_B0_C4AA               ; 00CD3 ×77
  CCD6  4C 11 CA  JMP loc_B0_CA11               ; 00CD6 ×77

sub_B0_CCD9:                    ; from 00216 003be 00490
  CCD9  20 B6 CC  JSR sub_B0_CCB6               ; 00CD9 ×34
  CCDC  A2 E4     LDX #$E4                      ; 00CDC ×34
  CCDE  A9 20     LDA #$20                      ; 00CDE ×34
  CCE0  20 3F C5  JSR sub_B0_C53F               ; 00CE0 ×34
  CCE3  4C D3 CC  JMP loc_B0_CCD3               ; 00CE3 ×34
  CCE6  .byte E8 CC 0F 30 15 2C 0F 30 16 19 0F 30 16 10 0F 30   ; 00CE6 data, read by 00cb9 00cbe 004af
  CCF6  .byte 16 28 0F 36 03 06 0F 30 10 17 0F 36 15 2C 0F 30   ; 00CF6 data, read by 004af
  CD06  .byte 27 16 0F 30 16 2C 0F 30 16 3C 0F 30 16 10 0F 16   ; 00D06 data, read by 004af 015c7
  CD16  .byte 2C 29 0F 30 12 17 0F 30 10 17 0F 2C 16 36 0F 30   ; 00D16 data, read by 004af
  CD26  .byte 27 16                                             ; 00D26 data, read by 004af

sub_B0_CD28:                    ; from 01abb 01a56 01aed 00e7c
  CD28  A5 63     LDA $63                       ; 00D28 ×12728
  CD2A  C9 01     CMP #$01                      ; 00D2A ×12728
  CD2C  60        RTS                           ; 00D2C ×12728

sub_B0_CD2D:                    ; from 01a37 00e45 01908
  CD2D  A6 63     LDX $63                       ; 00D2D ×196
  CD2F  E0 01     CPX #$01                      ; 00D2F ×196
  CD31  60        RTS                           ; 00D31 ×196

loc_B0_CD32:                    ; from 009cb
  CD32  A2 90     LDX #$90                      ; 00D32 ×26137
  CD34  86 F9     STX $F9                       ; 00D34 ×26137
  CD36  A5 63     LDA $63                       ; 00D36 ×26137
  CD38  C9 02     CMP #$02                      ; 00D38 ×26137
  CD3A  F0 11     BEQ loc_B0_CD4D               ; 00D3A ×26137
  CD3C  C9 05     CMP #$05                      ; 00D3C ×21985
  CD3E  F0 11     BEQ $CD51                     ; 00D3E ×21985
  CD40  A9 00     LDA #$00                      ; 00D40 ×21985
  CD42  A0 B0     LDY #$B0                      ; 00D42 ×21985
  CD44  20 61 CD  JSR sub_B0_CD61               ; 00D44 ×21985
  CD47  20 68 CD  JSR sub_B0_CD68               ; 00D47 ×21985
  CD4A  4C E8 CD  JMP loc_B0_CDE8               ; 00D4A ×21985

loc_B0_CD4D:                    ; from 00d3a
  CD4D  A0 68     LDY #$68                      ; 00D4D ×4152
  CD4F  D0 02     BNE loc_B0_CD53               ; 00D4F ×4152
  CD51  A0 78     LDY #$78                      ; 00D51 ×0

loc_B0_CD53:                    ; from 00d4f
  CD53  A9 04     LDA #$04                      ; 00D53 ×4152
  CD55  20 61 CD  JSR sub_B0_CD61               ; 00D55 ×4152
  CD58  20 68 CD  JSR sub_B0_CD68               ; 00D58 ×4152
  CD5B  20 C7 CD  JSR sub_B0_CDC7               ; 00D5B ×4152
  CD5E  4C E8 CD  JMP loc_B0_CDE8               ; 00D5E ×4152

sub_B0_CD61:                    ; from 00d44 00d55
  CD61  8D 94 05  STA $0594                     ; 00D61 ×26137
  CD64  8C 93 05  STY $0593                     ; 00D64 ×26137

loc_B0_CD67:                    ; from 00d6c 00d81 00dcc 00d70
  CD67  60        RTS                           ; 00D67 ×56426

sub_B0_CD68:                    ; from 00d47 00d58
  CD68  A5 52     LDA $52                       ; 00D68 ×26137
  CD6A  C9 03     CMP #$03                      ; 00D6A ×26137
  CD6C  D0 F9     BNE loc_B0_CD67               ; 00D6C ×26137
  CD6E  A5 6C     LDA $6C                       ; 00D6E ×4356
  CD70  D0 F5     BNE loc_B0_CD67               ; 00D70 ×4356
  CD72  AD 90 05  LDA $0590                     ; 00D72 ×4352
  CD75  D0 29     BNE $CDA0                     ; 00D75 ×4352
  CD77  A6 69     LDX $69                       ; 00D77 ×4352
  CD79  A4 63     LDY $63                       ; 00D79 ×4352
  CD7B  C0 05     CPY #$05                      ; 00D7B ×4352
  CD7D  D0 01     BNE loc_B0_CD80               ; 00D7D ×4352
  CD7F  CA        DEX                           ; 00D7F ×0

loc_B0_CD80:                    ; from 00d7d
  CD80  8A        TXA                           ; 00D80 ×4352
  CD81  D0 E4     BNE loc_B0_CD67               ; 00D81 ×4352
  CD83  C0 05     CPY #$05                      ; 00D83 ×0
  CD85  D0 08     BNE $CD8F                     ; 00D85 ×0
  CD87  A6 68     LDX $68                       ; 00D87 inferred, not run
  CD89  E0 A0     CPX #$A0                      ; 00D89 inferred, not run
  CD8B  B0 DA     BCS loc_B0_CD67               ; 00D8B inferred, not run
  CD8D  A2 A0     LDX #$A0                      ; 00D8D inferred, not run
  CD8F  8E 91 05  STX $0591                     ; 00D8F ×0
  CD92  A2 90     LDX #$90                      ; 00D92 ×0
  CD94  20 6E F0  JSR sub_B0_F06E               ; 00D94 ×0
  CD97  A9 FF     LDA #$FF                      ; 00D97 ×0
  CD99  8D 90 05  STA $0590                     ; 00D99 ×0
  CD9C  A2 90     LDX #$90                      ; 00D9C ×0
  CD9E  D0 24     BNE $CDC4                     ; 00D9E ×0
  CDA0  A6 69     LDX $69                       ; 00DA0 ×0
  CDA2  CA        DEX                           ; 00DA2 ×0
  CDA3  D0 F2     BNE $CD97                     ; 00DA3 ×0
  CDA5  A6 68     LDX $68                       ; 00DA5 inferred, not run
  CDA7  A5 63     LDA $63                       ; 00DA7 inferred, not run
  CDA9  C9 05     CMP #$05                      ; 00DA9 inferred, not run
  CDAB  D0 06     BNE $CDB3                     ; 00DAB inferred, not run
  CDAD  E0 F0     CPX #$F0                      ; 00DAD inferred, not run
  CDAF  90 E6     BCC $CD97                     ; 00DAF inferred, not run
  CDB1  B0 04     BCS $CDB7                     ; 00DB1 inferred, not run
  CDB3  E0 80     CPX #$80                      ; 00DB3 inferred, not run
  CDB5  90 E0     BCC $CD97                     ; 00DB5 inferred, not run
  CDB7  A9 00     LDA #$00                      ; 00DB7 inferred, not run
  CDB9  8D 90 05  STA $0590                     ; 00DB9 inferred, not run
  CDBC  A6 65     LDX $65                       ; 00DBC inferred, not run
  CDBE  D0 02     BNE $CDC2                     ; 00DBE inferred, not run
  CDC0  A9 67     LDA #$67                      ; 00DC0 inferred, not run
  CDC2  A2 90     LDX #$90                      ; 00DC2 inferred, not run
  CDC4  4C 26 ED  JMP sub_B0_ED26               ; 00DC4 ×0

sub_B0_CDC7:                    ; from 00d5b
  CDC7  A2 90     LDX #$90                      ; 00DC7 ×4152
  CDC9  BD 00 05  LDA $0500,X                   ; 00DC9 ×4152
  CDCC  F0 99     BEQ loc_B0_CD67               ; 00DCC ×4152
  CDCE  20 16 CC  JSR sub_B0_CC16               ; 00DCE ×0
  CDD1  B0 14     BCS loc_B0_CDE7               ; 00DD1 ×0
  CDD3  A2 00     LDX #$00                      ; 00DD3 ×0
  CDD5  69 10     ADC #$10                      ; 00DD5 ×0
  CDD7  85 84     STA $84                       ; 00DD7 ×0
  CDD9  90 02     BCC $CDDD                     ; 00DD9 ×0
  CDDB  A2 01     LDX #$01                      ; 00DDB ×0
  CDDD  86 85     STX $85                       ; 00DDD ×0
  CDDF  A9 7F     LDA #$7F                      ; 00DDF ×0
  CDE1  85 83     STA $83                       ; 00DE1 ×0
  CDE3  A9 01     LDA #$01                      ; 00DE3 ×0
  CDE5  85 80     STA $80                       ; 00DE5 ×0

loc_B0_CDE7:                    ; from 00ded
  CDE7  60        RTS                           ; 00DE7 ×26137

loc_B0_CDE8:                    ; from 00d4a 00d5e
  CDE8  A2 90     LDX #$90                      ; 00DE8 ×26137
  CDEA  BD 00 05  LDA $0500,X                   ; 00DEA ×26137
  CDED  F0 F8     BEQ loc_B0_CDE7               ; 00DED ×26137
  CDEF  20 16 CC  JSR sub_B0_CC16               ; 00DEF ×0
  CDF2  B0 F3     BCS loc_B0_CDE7               ; 00DF2 ×0
  CDF4  A5 74     LDA $74                       ; 00DF4 ×0
  CDF6  C9 20     CMP #$20                      ; 00DF6 ×0
  CDF8  90 ED     BCC loc_B0_CDE7               ; 00DF8 ×0
  CDFA  A5 CB     LDA $CB                       ; 00DFA ×0
  CDFC  D0 E9     BNE loc_B0_CDE7               ; 00DFC ×0
  CDFE  A5 73     LDA $73                       ; 00DFE ×0
  CE00  18        CLC                           ; 00E00 ×0
  CE01  69 18     ADC #$18                      ; 00E01 ×0
  CE03  A4 64     LDY $64                       ; 00E03 ×0
  CE05  C0 00     CPY #$00                      ; 00E05 ×0
  CE07  D0 05     BNE $CE0E                     ; 00E07 ×0
  CE09  A5 83     LDA $83                       ; 00E09 inferred, not run
  CE0B  18        CLC                           ; 00E0B inferred, not run
  CE0C  69 0C     ADC #$0C                      ; 00E0C inferred, not run
  CE0E  DD 03 05  CMP $0503,X                   ; 00E0E ×0
  CE11  90 D4     BCC loc_B0_CDE7               ; 00E11 ×0
  CE13  E9 04     SBC #$04                      ; 00E13 ×0
  CE15  DD 03 05  CMP $0503,X                   ; 00E15 ×0
  CE18  B0 CD     BCS loc_B0_CDE7               ; 00E18 ×0
  CE1A  20 03 E9  JSR sub_B0_E903               ; 00E1A ×0
  CE1D  A4 64     LDY $64                       ; 00E1D ×0
  CE1F  C0 00     CPY #$00                      ; 00E1F ×0
  CE21  D0 03     BNE $CE26                     ; 00E21 ×0
  CE23  20 1F E9  JSR sub_B0_E91F               ; 00E23 inferred, not run
  CE26  20 9E CE  JSR sub_B0_CE9E               ; 00E26 ×0
  CE29  A4 65     LDY $65                       ; 00E29 ×0
  CE2B  F0 03     BEQ $CE30                     ; 00E2B ×0
  CE2D  20 8E CE  JSR sub_B0_CE8E               ; 00E2D ×0
  CE30  20 8F CC  JSR sub_B0_CC8F               ; 00E30 ×0
  CE33  90 B2     BCC loc_B0_CDE7               ; 00E33 ×0
  CE35  A2 90     LDX #$90                      ; 00E35 ×0
  CE37  BD 03 05  LDA $0503,X                   ; 00E37 ×0
  CE3A  18        CLC                           ; 00E3A ×0
  CE3B  69 EA     ADC #$EA                      ; 00E3B ×0
  CE3D  A4 65     LDY $65                       ; 00E3D ×0
  CE3F  D0 02     BNE $CE43                     ; 00E3F ×0
  CE41  69 01     ADC #$01                      ; 00E41 ×0
  CE43  85 73     STA $73                       ; 00E43 ×0
  CE45  20 2D CD  JSR sub_B0_CD2D               ; 00E45 ×0
  CE48  D0 0A     BNE $CE54                     ; 00E48 ×0
  CE4A  18        CLC                           ; 00E4A inferred, not run
  CE4B  69 08     ADC #$08                      ; 00E4B inferred, not run
  CE4D  85 83     STA $83                       ; 00E4D inferred, not run
  CE4F  38        SEC                           ; 00E4F inferred, not run
  CE50  E9 18     SBC #$18                      ; 00E50 inferred, not run
  CE52  85 73     STA $73                       ; 00E52 inferred, not run
  CE54  20 38 DC  JSR sub_B0_DC38               ; 00E54 ×0
  CE57  A9 00     LDA #$00                      ; 00E57 ×0
  CE59  85 DF     STA $DF                       ; 00E59 ×0
  CE5B  20 3B CA  JSR sub_B0_CA3B               ; 00E5B ×0
  CE5E  20 DA CB  JSR sub_B0_CBDA               ; 00E5E ×0
  CE61  A9 0A     LDA #$0A                      ; 00E61 ×0
  CE63  85 76     STA $76                       ; 00E63 ×0
  CE65  A9 00     LDA #$00                      ; 00E65 ×0
  CE67  8D 0B 03  STA $030B                     ; 00E67 ×0
  CE6A  E6 0B     INC $0B                       ; 00E6A ×0
  CE6C  60        RTS                           ; 00E6C ×0

sub_B0_CE6D:                    ; from 00165
  CE6D  A2 90     LDX #$90                      ; 00E6D ×0
  CE6F  20 16 CC  JSR sub_B0_CC16               ; 00E6F ×0
  CE72  69 0C     ADC #$0C                      ; 00E72 ×0
  CE74  C5 74     CMP $74                       ; 00E74 ×0
  CE76  F0 15     BEQ $CE8D                     ; 00E76 ×0
  CE78  90 0A     BCC $CE84                     ; 00E78 ×0
  CE7A  E6 74     INC $74                       ; 00E7A ×0
  CE7C  20 28 CD  JSR sub_B0_CD28               ; 00E7C ×0
  CE7F  D0 0C     BNE $CE8D                     ; 00E7F ×0
  CE81  E6 84     INC $84                       ; 00E81 inferred, not run
  CE83  60        RTS                           ; 00E83 inferred, not run
  CE84  C6 74     DEC $74                       ; 00E84 inferred, not run
  CE86  20 28 CD  JSR sub_B0_CD28               ; 00E86 inferred, not run
  CE89  D0 02     BNE $CE8D                     ; 00E89 inferred, not run
  CE8B  C6 84     DEC $84                       ; 00E8B inferred, not run
  CE8D  60        RTS                           ; 00E8D ×0

sub_B0_CE8E:                    ; from 00e2d
  CE8E  A9 20     LDA #$20                      ; 00E8E ×0
  CE90  8D C9 03  STA $03C9                     ; 00E90 ×0
  CE93  AD 91 05  LDA $0591                     ; 00E93 ×0
  CE96  18        CLC                           ; 00E96 ×0
  CE97  69 08     ADC #$08                      ; 00E97 ×0
  CE99  85 77     STA $77                       ; 00E99 ×0
  CE9B  4C AB CE  JMP $CEAB                     ; 00E9B ×0

sub_B0_CE9E:                    ; from 00e26
  CE9E  A9 18     LDA #$18                      ; 00E9E ×0
  CEA0  8D C9 03  STA $03C9                     ; 00EA0 ×0
  CEA3  A9 08     LDA #$08                      ; 00EA3 ×0
  CEA5  18        CLC                           ; 00EA5 ×0
  CEA6  6D 91 05  ADC $0591                     ; 00EA6 ×0
  CEA9  85 77     STA $77                       ; 00EA9 ×0
  CEAB  AD 92 05  LDA $0592                     ; 00EAB ×0
  CEAE  85 78     STA $78                       ; 00EAE ×0
  CEB0  20 20 CC  JSR sub_B0_CC20               ; 00EB0 ×0
  CEB3  8D CB 03  STA $03CB                     ; 00EB3 ×0
  CEB6  60        RTS                           ; 00EB6 ×0

sub_B0_CEB7:                    ; from 0130f
  CEB7  20 0D CF  JSR sub_B0_CF0D               ; 00EB7 ×43
  CEBA  20 9D CF  JSR sub_B0_CF9D               ; 00EBA ×43
  CEBD  AD B8 CF  LDA $CFB8                     ; 00EBD ×43
  CEC0  85 7D     STA $7D                       ; 00EC0 ×43
  CEC2  AD B7 CF  LDA $CFB7                     ; 00EC2 ×43
  CEC5  85 7C     STA $7C                       ; 00EC5 ×43
  CEC7  20 E3 CE  JSR sub_B0_CEE3               ; 00EC7 ×43
  CECA  20 B3 CF  JSR sub_B0_CFB3               ; 00ECA ×43
  CECD  AD B8 CF  LDA $CFB8                     ; 00ECD ×43
  CED0  85 7D     STA $7D                       ; 00ED0 ×43
  CED2  AD B7 CF  LDA $CFB7                     ; 00ED2 ×43
  CED5  85 7C     STA $7C                       ; 00ED5 ×43
  CED7  20 E3 CE  JSR sub_B0_CEE3               ; 00ED7 ×43
  CEDA  20 B3 CF  JSR sub_B0_CFB3               ; 00EDA ×43
  CEDD  20 58 CF  JSR sub_B0_CF58               ; 00EDD ×43
  CEE0  4C 80 D2  JMP sub_B0_D280               ; 00EE0 ×43

sub_B0_CEE3:                    ; from 00ec7 00ed7
  CEE3  A0 00     LDY #$00                      ; 00EE3 ×86

loc_B0_CEE5:                    ; from 00f0a
  CEE5  AD 02 20  LDA $2002                     ; 00EE5 ×258
  CEE8  A5 78     LDA $78                       ; 00EE8 ×258
  CEEA  8D 06 20  STA $2006                     ; 00EEA ×258
  CEED  A5 77     LDA $77                       ; 00EED ×258
  CEEF  8D 06 20  STA $2006                     ; 00EEF ×258

loc_B0_CEF2:                    ; from 00f00
  CEF2  B1 7C     LDA ($7C),Y                   ; 00EF2 ×1806
  CEF4  C8        INY                           ; 00EF4 ×1806
  CEF5  AA        TAX                           ; 00EF5 ×1806
  CEF6  E8        INX                           ; 00EF6 ×1806
  CEF7  D0 01     BNE loc_B0_CEFA               ; 00EF7 ×1806
  CEF9  60        RTS                           ; 00EF9 ×86

loc_B0_CEFA:                    ; from 00ef7
  CEFA  E8        INX                           ; 00EFA ×1720
  CEFB  F0 06     BEQ loc_B0_CF03               ; 00EFB ×1720
  CEFD  8D 07 20  STA $2007                     ; 00EFD ×1548
  CF00  4C F2 CE  JMP loc_B0_CEF2               ; 00F00 ×1548

loc_B0_CF03:                    ; from 00efb
  CF03  A5 77     LDA $77                       ; 00F03 ×172
  CF05  18        CLC                           ; 00F05 ×172
  CF06  69 20     ADC #$20                      ; 00F06 ×172
  CF08  85 77     STA $77                       ; 00F08 ×172
  CF0A  4C E5 CE  JMP loc_B0_CEE5               ; 00F0A ×172

sub_B0_CF0D:                    ; from 009a0 00eb7 00138
  CF0D  A5 64     LDA $64                       ; 00F0D ×26180
  CF0F  0A        ASL A                         ; 00F0F ×26180
  CF10  AA        TAX                           ; 00F10 ×26180
  CF11  38        SEC                           ; 00F11 ×26180
  CF12  BD 3F CF  LDA $CF3F,X                   ; 00F12 ×26180
  CF15  E5 6A     SBC $6A                       ; 00F15 ×26180
  CF17  85 68     STA $68                       ; 00F17 ×26180
  CF19  BD 40 CF  LDA $CF40,X                   ; 00F19 ×26180
  CF1C  E5 6B     SBC $6B                       ; 00F1C ×26180
  CF1E  85 69     STA $69                       ; 00F1E ×26180
  CF20  A8        TAY                           ; 00F20 ×26180
  CF21  A2 00     LDX #$00                      ; 00F21 ×26180
  CF23  8E 0F 04  STX $040F                     ; 00F23 ×26180
  CF26  A5 6A     LDA $6A                       ; 00F26 ×26180
  CF28  C9 80     CMP #$80                      ; 00F28 ×26180
  CF2A  98        TYA                           ; 00F2A ×26180
  CF2B  90 03     BCC loc_B0_CF30               ; 00F2B ×26180
  CF2D  18        CLC                           ; 00F2D ×6623
  CF2E  69 01     ADC #$01                      ; 00F2E ×6623

loc_B0_CF30:                    ; from 00f2b 00f39
  CF30  C9 0A     CMP #$0A                      ; 00F30 ×37615
  CF32  90 07     BCC loc_B0_CF3B               ; 00F32 ×37615
  CF34  E9 0A     SBC #$0A                      ; 00F34 ×11435
  CF36  EE 0F 04  INC $040F                     ; 00F36 ×11435
  CF39  D0 F5     BNE loc_B0_CF30               ; 00F39 ×11435

loc_B0_CF3B:                    ; from 00f32
  CF3B  8D 0E 04  STA $040E                     ; 00F3B ×26180
  CF3E  60        RTS                           ; 00F3E ×26180
  CF3F  .byte 00 0A 00 07                                       ; 00F3F data, read by 00f12 00f19
  CF43  .byte 00 08                                             ; 00F43
  CF45  .byte 00 14                                             ; 00F45 data, read by 00f12 00f19
  CF47  .byte 00 05                                             ; 00F47

sub_B0_CF49:                    ; from 009a3 0013b
  CF49  A5 6A     LDA $6A                       ; 00F49 ×26137
  CF4B  C9 80     CMP #$80                      ; 00F4B ×26137
  CF4D  B0 06     BCS loc_B0_CF55               ; 00F4D ×26137
  CF4F  20 9D CF  JSR sub_B0_CF9D               ; 00F4F ×19514
  CF52  4C 58 CF  JMP sub_B0_CF58               ; 00F52 ×19514

loc_B0_CF55:                    ; from 00f4d
  CF55  20 B3 CF  JSR sub_B0_CFB3               ; 00F55 ×6623

sub_B0_CF58:                    ; from 00f52 00edd
  CF58  A6 51     LDX $51                       ; 00F58 ×26180
  CF5A  A9 01     LDA #$01                      ; 00F5A ×26180
  CF5C  9D 00 07  STA $0700,X                   ; 00F5C ×26180
  CF5F  E8        INX                           ; 00F5F ×26180
  CF60  A5 78     LDA $78                       ; 00F60 ×26180
  CF62  9D 00 07  STA $0700,X                   ; 00F62 ×26180
  CF65  E8        INX                           ; 00F65 ×26180
  CF66  A5 77     LDA $77                       ; 00F66 ×26180
  CF68  18        CLC                           ; 00F68 ×26180
  CF69  69 21     ADC #$21                      ; 00F69 ×26180
  CF6B  9D 00 07  STA $0700,X                   ; 00F6B ×26180
  CF6E  E8        INX                           ; 00F6E ×26180
  CF6F  A9 02     LDA #$02                      ; 00F6F ×26180
  CF71  9D 00 07  STA $0700,X                   ; 00F71 ×26180
  CF74  E8        INX                           ; 00F74 ×26180
  CF75  A9 FF     LDA #$FF                      ; 00F75 ×26180
  CF77  9D 00 07  STA $0700,X                   ; 00F77 ×26180
  CF7A  E8        INX                           ; 00F7A ×26180
  CF7B  AD 0F 04  LDA $040F                     ; 00F7B ×26180
  CF7E  29 0F     AND #$0F                      ; 00F7E ×26180
  CF80  F0 04     BEQ loc_B0_CF86               ; 00F80 ×26180
  CF82  09 30     ORA #$30                      ; 00F82 ×11234
  CF84  D0 02     BNE loc_B0_CF88               ; 00F84 ×11234

loc_B0_CF86:                    ; from 00f80
  CF86  A9 00     LDA #$00                      ; 00F86 ×14946

loc_B0_CF88:                    ; from 00f84
  CF88  9D 00 07  STA $0700,X                   ; 00F88 ×26180
  CF8B  E8        INX                           ; 00F8B ×26180
  CF8C  AD 0E 04  LDA $040E                     ; 00F8C ×26180
  CF8F  29 0F     AND #$0F                      ; 00F8F ×26180
  CF91  09 30     ORA #$30                      ; 00F91 ×26180
  CF93  9D 00 07  STA $0700,X                   ; 00F93 ×26180
  CF96  E8        INX                           ; 00F96 ×26180
  CF97  A9 00     LDA #$00                      ; 00F97 ×26180
  CF99  9D 00 07  STA $0700,X                   ; 00F99 ×26180
  CF9C  60        RTS                           ; 00F9C ×26180

sub_B0_CF9D:                    ; from 00f4f 00eba
  CF9D  A9 01     LDA #$01                      ; 00F9D ×19557

loc_B0_CF9F:                    ; from 00fb5
  CF9F  85 77     STA $77                       ; 00F9F ×26266
  CFA1  A5 6B     LDA $6B                       ; 00FA1 ×26266
  CFA3  29 01     AND #$01                      ; 00FA3 ×26266
  CFA5  45 77     EOR $77                       ; 00FA5 ×26266
  CFA7  0A        ASL A                         ; 00FA7 ×26266
  CFA8  0A        ASL A                         ; 00FA8 ×26266
  CFA9  18        CLC                           ; 00FA9 ×26266
  CFAA  69 23     ADC #$23                      ; 00FAA ×26266
  CFAC  85 78     STA $78                       ; 00FAC ×26266
  CFAE  A9 41     LDA #$41                      ; 00FAE ×26266
  CFB0  85 77     STA $77                       ; 00FB0 ×26266
  CFB2  60        RTS                           ; 00FB2 ×26266

sub_B0_CFB3:                    ; from 00f55 00eca 00eda
  CFB3  A9 00     LDA #$00                      ; 00FB3 ×6709
  CFB5  F0 E8     BEQ loc_B0_CF9F               ; 00FB5 ×6709
  CFB7  .byte B9 CF 10 11 11 11 11 12 FE 3B 00 00 30 5B 7A FE   ; 00FB7 data, read by 00ec2 00ed2 00ebd 00ecd (+1)
  CFC7  .byte 20 21 21 21 21 22 FF                              ; 00FC7 data, read by 00ef2

sub_B0_CFCE:                    ; from 00a6d
  CFCE  A2 03     LDX #$03                      ; 00FCE ×45970

loc_B0_CFD0:                    ; from 00fd7
  CFD0  BD DA CF  LDA $CFDA,X                   ; 00FD0 ×183880
  CFD3  9D 00 02  STA $0200,X                   ; 00FD3 ×183880
  CFD6  CA        DEX                           ; 00FD6 ×183880
  CFD7  10 F7     BPL loc_B0_CFD0               ; 00FD7 ×183880
  CFD9  60        RTS                           ; 00FD9 ×45970
  CFDA  .byte 26 5A 02 EC                                       ; 00FDA data, read by 00fd0

loc_B0_CFDE:                    ; from 00925
  CFDE  A2 00     LDX #$00                      ; 00FDE ×43
  CFE0  86 8C     STX $8C                       ; 00FE0 ×43
  CFE2  A0 00     LDY #$00                      ; 00FE2 ×43

loc_B0_CFE4:                    ; from 00ffe
  CFE4  B1 7C     LDA ($7C),Y                   ; 00FE4 ×86
  CFE6  C8        INY                           ; 00FE6 ×86
  CFE7  85 7A     STA $7A                       ; 00FE7 ×86

loc_B0_CFE9:                    ; from 00ff1
  CFE9  B1 7C     LDA ($7C),Y                   ; 00FE9 ×602
  CFEB  C8        INY                           ; 00FEB ×602
  CFEC  95 70     STA $70,X                     ; 00FEC ×602
  CFEE  E8        INX                           ; 00FEE ×602
  CFEF  C6 7A     DEC $7A                       ; 00FEF ×602
  CFF1  D0 F6     BNE loc_B0_CFE9               ; 00FF1 ×602
  CFF3  C6 79     DEC $79                       ; 00FF3 ×86
  CFF5  F0 09     BEQ loc_B0_D000               ; 00FF5 ×86
  CFF7  A6 8C     LDX $8C                       ; 00FF7 ×43
  CFF9  20 EC C9  JSR sub_B0_C9EC               ; 00FF9 ×43
  CFFC  86 8C     STX $8C                       ; 00FFC ×43
  CFFE  D0 E4     BNE loc_B0_CFE4               ; 00FFE ×43

loc_B0_D000:                    ; from 00ff5 01003
  D000  60        RTS                           ; 01000 ×79

loc_B0_D001:                    ; from 009e4
  D001  A5 70     LDA $70                       ; 01001 ×45937
  D003  F0 FB     BEQ loc_B0_D000               ; 01003 ×45937
  D005  A2 00     LDX #$00                      ; 01005 ×45901
  D007  86 78     STX $78                       ; 01007 ×45901

loc_B0_D009:                    ; from 010a9
  D009  A9 00     LDA #$00                      ; 01009 ×310587
  D00B  8D 0F 03  STA $030F                     ; 0100B ×310587
  D00E  8D 16 03  STA $0316                     ; 0100E ×310587
  D011  A6 78     LDX $78                       ; 01011 ×310587
  D013  B5 70     LDA $70,X                     ; 01013 ×310587
  D015  85 89     STA $89                       ; 01015 ×310587
  D017  B5 71     LDA $71,X                     ; 01017 ×310587
  D019  85 8A     STA $8A                       ; 01019 ×310587
  D01B  B5 72     LDA $72,X                     ; 0101B ×310587
  D01D  F0 7A     BEQ loc_B0_D099               ; 0101D ×310587
  D01F  85 8B     STA $8B                       ; 0101F ×263029
  D021  B5 73     LDA $73,X                     ; 01021 ×263029
  D023  85 8C     STA $8C                       ; 01023 ×263029
  D025  B5 74     LDA $74,X                     ; 01025 ×263029
  D027  85 8D     STA $8D                       ; 01027 ×263029
  D029  B5 75     LDA $75,X                     ; 01029 ×263029
  D02B  29 01     AND #$01                      ; 0102B ×263029
  D02D  85 8E     STA $8E                       ; 0102D ×263029
  D02F  B5 77     LDA $77,X                     ; 0102F ×263029
  D031  85 8F     STA $8F                       ; 01031 ×263029
  D033  B5 76     LDA $76,X                     ; 01033 ×263029
  D035  0A        ASL A                         ; 01035 ×263029
  D036  A8        TAY                           ; 01036 ×263029
  D037  B9 58 D1  LDA $D158,Y                   ; 01037 ×263029
  D03A  85 7C     STA $7C                       ; 0103A ×263029
  D03C  B9 59 D1  LDA $D159,Y                   ; 0103C ×263029
  D03F  85 7D     STA $7D                       ; 0103F ×263029
  D041  86 78     STX $78                       ; 01041 ×263029
  D043  A0 00     LDY #$00                      ; 01043 ×263029
  D045  A5 8A     LDA $8A                       ; 01045 ×263029
  D047  85 77     STA $77                       ; 01047 ×263029
  D049  10 45     BPL loc_B0_D090               ; 01049 ×263029
  D04B  B1 7C     LDA ($7C),Y                   ; 0104B ×120542
  D04D  C8        INY                           ; 0104D ×120542
  D04E  85 7A     STA $7A                       ; 0104E ×120542
  D050  E6 77     INC $77                       ; 01050 ×120542
  D052  F0 24     BEQ loc_B0_D078               ; 01052 ×120542
  D054  A5 64     LDA $64                       ; 01054 ×0
  D056  C9 00     CMP #$00                      ; 01056 ×0
  D058  D0 05     BNE $D05F                     ; 01058 ×0
  D05A  A9 01     LDA #$01                      ; 0105A ×0
  D05C  8D 0F 03  STA $030F                     ; 0105C ×0
  D05F  B1 7C     LDA ($7C),Y                   ; 0105F ×0
  D061  C8        INY                           ; 01061 ×0
  D062  85 7B     STA $7B                       ; 01062 ×0
  D064  18        CLC                           ; 01064 ×0
  D065  65 7A     ADC $7A                       ; 01065 ×0
  D067  85 77     STA $77                       ; 01067 ×0
  D069  A5 8F     LDA $8F                       ; 01069 ×0
  D06B  38        SEC                           ; 0106B ×0
  D06C  E5 77     SBC $77                       ; 0106C ×0
  D06E  F0 26     BEQ loc_B0_D096               ; 0106E ×0
  D070  18        CLC                           ; 01070 ×0
  D071  65 7B     ADC $7B                       ; 01071 ×0
  D073  85 7B     STA $7B                       ; 01073 ×0
  D075  4C 96 D0  JMP loc_B0_D096               ; 01075 ×0

loc_B0_D078:                    ; from 01052
  D078  B1 7C     LDA ($7C),Y                   ; 01078 ×120542
  D07A  C8        INY                           ; 0107A ×120542
  D07B  18        CLC                           ; 0107B ×120542
  D07C  65 7A     ADC $7A                       ; 0107C ×120542
  D07E  85 7A     STA $7A                       ; 0107E ×120542
  D080  A9 00     LDA #$00                      ; 01080 ×120542
  D082  85 7B     STA $7B                       ; 01082 ×120542
  D084  A5 8F     LDA $8F                       ; 01084 ×120542
  D086  38        SEC                           ; 01086 ×120542
  D087  E5 7A     SBC $7A                       ; 01087 ×120542
  D089  F0 0B     BEQ loc_B0_D096               ; 01089 ×120542
  D08B  85 7B     STA $7B                       ; 0108B inferred, not run
  D08D  4C 96 D0  JMP loc_B0_D096               ; 0108D inferred, not run

loc_B0_D090:                    ; from 01049
  D090  85 7A     STA $7A                       ; 01090 ×142487
  D092  A9 00     LDA #$00                      ; 01092 ×142487
  D094  85 7B     STA $7B                       ; 01094 ×142487

loc_B0_D096:                    ; from 01089
  D096  20 AD D0  JSR sub_B0_D0AD               ; 01096 ×263029

loc_B0_D099:                    ; from 0101d
  D099  C6 79     DEC $79                       ; 01099 ×310587
  D09B  F0 0F     BEQ loc_B0_D0AC               ; 0109B ×310587
  D09D  A5 78     LDA $78                       ; 0109D ×264686
  D09F  18        CLC                           ; 0109F ×264686
  D0A0  69 10     ADC #$10                      ; 010A0 ×264686
  D0A2  85 78     STA $78                       ; 010A2 ×264686
  D0A4  A9 00     LDA #$00                      ; 010A4 ×264686
  D0A6  8D 16 03  STA $0316                     ; 010A6 ×264686
  D0A9  4C 09 D0  JMP loc_B0_D009               ; 010A9 ×264686

loc_B0_D0AC:                    ; from 0109b
  D0AC  60        RTS                           ; 010AC ×45901

sub_B0_D0AD:                    ; from 01096
  D0AD  A6 8B     LDX $8B                       ; 010AD ×263029
  D0AF  A5 89     LDA $89                       ; 010AF ×263029
  D0B1  F0 75     BEQ loc_B0_D128               ; 010B1 ×263029

loc_B0_D0B3:                    ; from 01108
  D0B3  B1 7C     LDA ($7C),Y                   ; 010B3 ×1761057
  D0B5  18        CLC                           ; 010B5 ×1761057
  D0B6  65 8D     ADC $8D                       ; 010B6 ×1761057
  D0B8  20 0C D1  JSR sub_B0_D10C               ; 010B8 ×1761057
  D0BB  9D 03 02  STA $0203,X                   ; 010BB ×1761057
  D0BE  C8        INY                           ; 010BE ×1761057
  D0BF  B1 7C     LDA ($7C),Y                   ; 010BF ×1761057
  D0C1  C8        INY                           ; 010C1 ×1761057
  D0C2  9D 01 02  STA $0201,X                   ; 010C2 ×1761057
  D0C5  AD 16 03  LDA $0316                     ; 010C5 ×1761057
  D0C8  D0 03     BNE loc_B0_D0CD               ; 010C8 ×1761057
  D0CA  20 42 D1  JSR sub_B0_D142               ; 010CA ×210760

loc_B0_D0CD:                    ; from 010c8
  D0CD  C9 02     CMP #$02                      ; 010CD ×1761057
  D0CF  D0 06     BNE loc_B0_D0D7               ; 010CF ×1761057
  D0D1  AD 17 03  LDA $0317                     ; 010D1 ×663142
  D0D4  4C DA D0  JMP loc_B0_D0DA               ; 010D4 ×663142

loc_B0_D0D7:                    ; from 010cf
  D0D7  B1 7C     LDA ($7C),Y                   ; 010D7 ×1097915
  D0D9  C8        INY                           ; 010D9 ×1097915

loc_B0_D0DA:                    ; from 010d4
  D0DA  9D 02 02  STA $0202,X                   ; 010DA ×1761057
  D0DD  A5 77     LDA $77                       ; 010DD ×1761057
  D0DF  F0 04     BEQ loc_B0_D0E5               ; 010DF ×1761057
  D0E1  A9 F8     LDA #$F8                      ; 010E1 ×1835
  D0E3  D0 05     BNE loc_B0_D0EA               ; 010E3 ×1835

loc_B0_D0E5:                    ; from 010df
  D0E5  B1 7C     LDA ($7C),Y                   ; 010E5 ×1759222
  D0E7  18        CLC                           ; 010E7 ×1759222
  D0E8  65 8C     ADC $8C                       ; 010E8 ×1759222

loc_B0_D0EA:                    ; from 010e3
  D0EA  C8        INY                           ; 010EA ×1761057
  D0EB  9D 00 02  STA $0200,X                   ; 010EB ×1761057
  D0EE  A5 7A     LDA $7A                       ; 010EE ×1761057
  D0F0  C9 03     CMP #$03                      ; 010F0 ×1761057
  D0F2  B0 0E     BCS loc_B0_D102               ; 010F2 ×1761057
  D0F4  AD 0F 03  LDA $030F                     ; 010F4 ×421520
  D0F7  F0 09     BEQ loc_B0_D102               ; 010F7 ×421520
  D0F9  BD 00 02  LDA $0200,X                   ; 010F9 ×0
  D0FC  38        SEC                           ; 010FC ×0
  D0FD  E9 10     SBC #$10                      ; 010FD ×0
  D0FF  9D 00 02  STA $0200,X                   ; 010FF ×0

loc_B0_D102:                    ; from 010f2 010f7
  D102  E8        INX                           ; 01102 ×1761057
  D103  E8        INX                           ; 01103 ×1761057
  D104  E8        INX                           ; 01104 ×1761057
  D105  E8        INX                           ; 01105 ×1761057
  D106  C6 7A     DEC $7A                       ; 01106 ×1761057
  D108  D0 A9     BNE loc_B0_D0B3               ; 01108 ×1761057
  D10A  F0 2D     BEQ loc_B0_D139               ; 0110A ×210760

sub_B0_D10C:                    ; from 010b8
  D10C  48        PHA                           ; 0110C ×1761057
  D10D  B1 7C     LDA ($7C),Y                   ; 0110D ×1761057
  D10F  30 04     BMI $D115                     ; 0110F ×1761057
  D111  90 0D     BCC loc_B0_D120               ; 01111 ×1761057
  D113  B0 02     BCS loc_B0_D117               ; 01113 ×1835
  D115  B0 09     BCS loc_B0_D120               ; 01115 ×0

loc_B0_D117:                    ; from 01113
  D117  A5 8E     LDA $8E                       ; 01117 ×1835
  D119  29 01     AND #$01                      ; 01119 ×1835
  D11B  49 01     EOR #$01                      ; 0111B ×1835
  D11D  4C 24 D1  JMP loc_B0_D124               ; 0111D ×1835

loc_B0_D120:                    ; from 01111
  D120  A5 8E     LDA $8E                       ; 01120 ×1759222
  D122  29 01     AND #$01                      ; 01122 ×1759222

loc_B0_D124:                    ; from 0111d
  D124  85 77     STA $77                       ; 01124 ×1761057
  D126  68        PLA                           ; 01126 ×1761057
  D127  60        RTS                           ; 01127 ×1761057

loc_B0_D128:                    ; from 01137 010b1
  D128  A9 F4     LDA #$F4                      ; 01128 ×294550
  D12A  9D 00 02  STA $0200,X                   ; 0112A ×294550
  D12D  E8        INX                           ; 0112D ×294550
  D12E  E8        INX                           ; 0112E ×294550
  D12F  E8        INX                           ; 0112F ×294550
  D130  E8        INX                           ; 01130 ×294550
  D131  A5 7A     LDA $7A                       ; 01131 ×294550
  D133  F0 04     BEQ loc_B0_D139               ; 01133 ×294550
  D135  C6 7A     DEC $7A                       ; 01135 ×294550
  D137  D0 EF     BNE loc_B0_D128               ; 01137 ×294550

loc_B0_D139:                    ; from 0110a
  D139  A5 7B     LDA $7B                       ; 01139 ×263029
  D13B  F0 04     BEQ loc_B0_D141               ; 0113B ×263029
  D13D  C6 7B     DEC $7B                       ; 0113D ×0
  D13F  10 E7     BPL loc_B0_D128               ; 0113F ×0

loc_B0_D141:                    ; from 0113b
  D141  60        RTS                           ; 01141 ×263029

sub_B0_D142:                    ; from 010ca
  D142  EE 16 03  INC $0316                     ; 01142 ×210760
  D145  B1 7C     LDA ($7C),Y                   ; 01145 ×210760
  D147  C9 FF     CMP #$FF                      ; 01147 ×210760
  D149  F0 08     BEQ loc_B0_D153               ; 01149 ×210760
  D14B  EE 16 03  INC $0316                     ; 0114B ×95190
  D14E  B1 7C     LDA ($7C),Y                   ; 0114E ×95190
  D150  8D 17 03  STA $0317                     ; 01150 ×95190

loc_B0_D153:                    ; from 01149
  D153  AD 16 03  LDA $0316                     ; 01153 ×210760
  D156  C8        INY                           ; 01156 ×210760
  D157  60        RTS                           ; 01157 ×210760
  D158  .byte 03 DD 16 DD F0 DC 29 DD 3C DD 4F DD               ; 01158 data, read by 01037 0103c
  D164  .byte 62 DD 75 DD 88 DD 9B DD 1B E2 34 E2               ; 01164
  D170  .byte AE DD D9 DD 04 DE 2B DE 52 DE 8C DE C6 DE 00 DF   ; 01170 data, read by 01037 0103c
  D180  .byte 0D DF 1A DF                                       ; 01180 data, read by 01037 0103c
  D184  .byte 27 DF 34 DF 41 DF 4E DF                           ; 01184
  D18C  .byte 5B DF 74 DF 8D DF A6 DF BF DF D2 DF               ; 0118C data, read by 01037 0103c
  D198  .byte 16 E0 3B E0                                       ; 01198
  D19C  .byte 09 E0                                             ; 0119C data, read by 01037 0103c
  D19E  .byte 89 E0 A7 E0 BF E0 D4 E0 E6 E0 FB E0 10 E1 2E E1   ; 0119E
  D1AE  .byte 46 E1 5E E1 76 E1 94 E1 A9 E1 BE E1 D0 E1 E5 E1   ; 011AE
  D1BE  .byte FD E1 85 E0 60 E0                                 ; 011BE

sub_B0_D1C4:                    ; from 02d3c
  D1C4  20 E4 CB  JSR sub_B0_CBE4               ; 011C4 ×145
  D1C7  8A        TXA                           ; 011C7 ×145
  D1C8  48        PHA                           ; 011C8 ×145
  D1C9  A5 8F     LDA $8F                       ; 011C9 ×145
  D1CB  0A        ASL A                         ; 011CB ×145
  D1CC  AA        TAX                           ; 011CC ×145
  D1CD  BD DD D2  LDA $D2DD,X                   ; 011CD ×145
  D1D0  85 7C     STA $7C                       ; 011D0 ×145
  D1D2  BD DE D2  LDA $D2DE,X                   ; 011D2 ×145
  D1D5  85 7D     STA $7D                       ; 011D5 ×145
  D1D7  68        PLA                           ; 011D7 ×145
  D1D8  AA        TAX                           ; 011D8 ×145
  D1D9  20 E4 D1  JSR sub_B0_D1E4               ; 011D9 ×145

loc_B0_D1DC:                    ; from 011f2
  D1DC  86 51     STX $51                       ; 011DC ×290
  D1DE  A9 00     LDA #$00                      ; 011DE ×290
  D1E0  9D 00 07  STA $0700,X                   ; 011E0 ×290
  D1E3  60        RTS                           ; 011E3 ×290

sub_B0_D1E4:                    ; from 011d9
  D1E4  A0 00     LDY #$00                      ; 011E4 ×145
  D1E6  A6 51     LDX $51                       ; 011E6 ×145

loc_B0_D1E8:                    ; from 0127d
  D1E8  A5 7E     LDA $7E                       ; 011E8 ×435
  D1EA  85 79     STA $79                       ; 011EA ×435
  D1EC  A5 7F     LDA $7F                       ; 011EC ×435
  D1EE  85 7A     STA $7A                       ; 011EE ×435
  D1F0  B1 7C     LDA ($7C),Y                   ; 011F0 ×435
  D1F2  F0 E8     BEQ loc_B0_D1DC               ; 011F2 ×435
  D1F4  9D 00 07  STA $0700,X                   ; 011F4 ×290
  D1F7  C8        INY                           ; 011F7 ×290
  D1F8  B1 7C     LDA ($7C),Y                   ; 011F8 ×290
  D1FA  F0 21     BEQ loc_B0_D21D               ; 011FA ×290
  D1FC  86 8C     STX $8C                       ; 011FC ×145
  D1FE  84 8E     STY $8E                       ; 011FE ×145
  D200  A2 00     LDX #$00                      ; 01200 ×145
  D202  86 77     STX $77                       ; 01202 ×145
  D204  A0 05     LDY #$05                      ; 01204 ×145

loc_B0_D206:                    ; from 0120a
  D206  0A        ASL A                         ; 01206 ×725
  D207  26 77     ROL $77                       ; 01207 ×725
  D209  88        DEY                           ; 01209 ×725
  D20A  D0 FA     BNE loc_B0_D206               ; 0120A ×725
  D20C  18        CLC                           ; 0120C ×145
  D20D  65 7E     ADC $7E                       ; 0120D ×145
  D20F  85 79     STA $79                       ; 0120F ×145
  D211  A9 00     LDA #$00                      ; 01211 ×145
  D213  65 7F     ADC $7F                       ; 01213 ×145
  D215  65 77     ADC $77                       ; 01215 ×145
  D217  85 7A     STA $7A                       ; 01217 ×145
  D219  A6 8C     LDX $8C                       ; 01219 ×145
  D21B  A4 8E     LDY $8E                       ; 0121B ×145

loc_B0_D21D:                    ; from 011fa
  D21D  C8        INY                           ; 0121D ×290
  D21E  B1 7C     LDA ($7C),Y                   ; 0121E ×290
  D220  F0 33     BEQ loc_B0_D255               ; 01220 ×290
  D222  86 8C     STX $8C                       ; 01222 ×0
  D224  84 8E     STY $8E                       ; 01224 ×0
  D226  85 77     STA $77                       ; 01226 ×0
  D228  A9 20     LDA #$20                      ; 01228 ×0
  D22A  85 7B     STA $7B                       ; 0122A ×0
  D22C  A5 79     LDA $79                       ; 0122C ×0
  D22E  29 E0     AND #$E0                      ; 0122E ×0
  D230  85 78     STA $78                       ; 01230 ×0
  D232  A5 79     LDA $79                       ; 01232 ×0
  D234  29 1F     AND #$1F                      ; 01234 ×0
  D236  18        CLC                           ; 01236 ×0
  D237  65 77     ADC $77                       ; 01237 ×0
  D239  24 7B     BIT $7B                       ; 01239 ×0
  D23B  08        PHP                           ; 0123B ×0
  D23C  A2 00     LDX #$00                      ; 0123C ×0
  D23E  28        PLP                           ; 0123E ×0
  D23F  F0 02     BEQ $D243                     ; 0123F ×0
  D241  A2 04     LDX #$04                      ; 01241 ×0
  D243  86 77     STX $77                       ; 01243 ×0
  D245  29 1F     AND #$1F                      ; 01245 ×0
  D247  05 78     ORA $78                       ; 01247 ×0
  D249  85 79     STA $79                       ; 01249 ×0
  D24B  A5 7A     LDA $7A                       ; 0124B ×0
  D24D  45 77     EOR $77                       ; 0124D ×0
  D24F  85 7A     STA $7A                       ; 0124F ×0
  D251  A6 8C     LDX $8C                       ; 01251 ×0
  D253  A4 8E     LDY $8E                       ; 01253 ×0

loc_B0_D255:                    ; from 01220
  D255  E8        INX                           ; 01255 ×290
  D256  A5 7A     LDA $7A                       ; 01256 ×290
  D258  9D 00 07  STA $0700,X                   ; 01258 ×290
  D25B  E8        INX                           ; 0125B ×290
  D25C  A5 79     LDA $79                       ; 0125C ×290
  D25E  9D 00 07  STA $0700,X                   ; 0125E ×290
  D261  C8        INY                           ; 01261 ×290
  D262  B1 7C     LDA ($7C),Y                   ; 01262 ×290
  D264  85 7B     STA $7B                       ; 01264 ×290
  D266  E8        INX                           ; 01266 ×290
  D267  9D 00 07  STA $0700,X                   ; 01267 ×290
  D26A  A5 8B     LDA $8B                       ; 0126A ×290
  D26C  E8        INX                           ; 0126C ×290
  D26D  9D 00 07  STA $0700,X                   ; 0126D ×290

loc_B0_D270:                    ; from 01279
  D270  C8        INY                           ; 01270 ×1406
  D271  B1 7C     LDA ($7C),Y                   ; 01271 ×1406
  D273  E8        INX                           ; 01273 ×1406
  D274  9D 00 07  STA $0700,X                   ; 01274 ×1406
  D277  C6 7B     DEC $7B                       ; 01277 ×1406
  D279  D0 F5     BNE loc_B0_D270               ; 01279 ×1406
  D27B  C8        INY                           ; 0127B ×290
  D27C  E8        INX                           ; 0127C ×290
  D27D  4C E8 D1  JMP loc_B0_D1E8               ; 0127D ×290

sub_B0_D280:                    ; from 002f5 0023e 00ee0
  D280  A2 00     LDX #$00                      ; 01280 ×45977

loc_B0_D282:                    ; from 012ca
  D282  BD 00 07  LDA $0700,X                   ; 01282 ×72310
  D285  F0 46     BEQ loc_B0_D2CD               ; 01285 ×72310
  D287  C9 01     CMP #$01                      ; 01287 ×26333
  D289  F0 06     BEQ loc_B0_D291               ; 01289 ×26333
  D28B  A5 53     LDA $53                       ; 0128B ×0
  D28D  09 04     ORA #$04                      ; 0128D ×0
  D28F  D0 04     BNE $D295                     ; 0128F ×0

loc_B0_D291:                    ; from 01289
  D291  A5 53     LDA $53                       ; 01291 ×26333
  D293  29 7B     AND #$7B                      ; 01293 ×26333
  D295  8D 00 20  STA $2000                     ; 01295 ×26333
  D298  AD 02 20  LDA $2002                     ; 01298 ×26333
  D29B  E8        INX                           ; 0129B ×26333
  D29C  BD 00 07  LDA $0700,X                   ; 0129C ×26333
  D29F  8D 06 20  STA $2006                     ; 0129F ×26333
  D2A2  E8        INX                           ; 012A2 ×26333
  D2A3  BD 00 07  LDA $0700,X                   ; 012A3 ×26333
  D2A6  8D 06 20  STA $2006                     ; 012A6 ×26333
  D2A9  E8        INX                           ; 012A9 ×26333
  D2AA  BD 00 07  LDA $0700,X                   ; 012AA ×26333
  D2AD  A8        TAY                           ; 012AD ×26333
  D2AE  E8        INX                           ; 012AE ×26333
  D2AF  BD 00 07  LDA $0700,X                   ; 012AF ×26333
  D2B2  C9 FF     CMP #$FF                      ; 012B2 ×26333
  D2B4  D0 0C     BNE loc_B0_D2C2               ; 012B4 ×26333

loc_B0_D2B6:                    ; from 012be
  D2B6  E8        INX                           ; 012B6 ×53264
  D2B7  BD 00 07  LDA $0700,X                   ; 012B7 ×53264
  D2BA  8D 07 20  STA $2007                     ; 012BA ×53264
  D2BD  88        DEY                           ; 012BD ×53264
  D2BE  D0 F6     BNE loc_B0_D2B6               ; 012BE ×53264
  D2C0  F0 07     BEQ loc_B0_D2C9               ; 012C0 ×26295

loc_B0_D2C2:                    ; from 012c7 012b4
  D2C2  E8        INX                           ; 012C2 ×228
  D2C3  8D 07 20  STA $2007                     ; 012C3 ×228
  D2C6  88        DEY                           ; 012C6 ×228
  D2C7  D0 F9     BNE loc_B0_D2C2               ; 012C7 ×228

loc_B0_D2C9:                    ; from 012c0
  D2C9  E8        INX                           ; 012C9 ×26333
  D2CA  4C 82 D2  JMP loc_B0_D282               ; 012CA ×26333

loc_B0_D2CD:                    ; from 01285
  D2CD  A9 00     LDA #$00                      ; 012CD ×45977
  D2CF  85 51     STA $51                       ; 012CF ×45977
  D2D1  8D 00 07  STA $0700                     ; 012D1 ×45977
  D2D4  A5 53     LDA $53                       ; 012D4 ×45977
  D2D6  29 7B     AND #$7B                      ; 012D6 ×45977
  D2D8  8D 00 20  STA $2000                     ; 012D8 ×45977
  D2DB  18        CLC                           ; 012DB ×45977
  D2DC  60        RTS                           ; 012DC ×45977
  D2DD  .byte 4D E2                                             ; 012DD
  D2DF  .byte 72 E2 83 E2 91 E2                                 ; 012DF data, read by 011cd 011d2
  D2E5  .byte 9F E2 B6 E2 D5 E2 F9 E2 1D E3 3A E3 5E E3 6B E3   ; 012E5
  D2F5  .byte 78 E3 89 E3                                       ; 012F5
  D2F9  .byte 9A E3 AF E3                                       ; 012F9 data, read by 011cd 011d2

sub_B0_D2FD:                    ; from 00853
  D2FD  A9 00     LDA #$00                      ; 012FD ×43
  D2FF  8D 01 20  STA $2001                     ; 012FF ×43
  D302  A5 64     LDA $64                       ; 01302 ×43
  D304  0A        ASL A                         ; 01304 ×43
  D305  0A        ASL A                         ; 01305 ×43
  D306  AA        TAX                           ; 01306 ×43
  D307  20 42 D3  JSR sub_B0_D342               ; 01307 ×43
  D30A  A6 89     LDX $89                       ; 0130A ×43
  D30C  20 42 D3  JSR sub_B0_D342               ; 0130C ×43
  D30F  20 B7 CE  JSR sub_B0_CEB7               ; 0130F ×43
  D312  20 75 D5  JSR sub_B0_D575               ; 01312 ×43
  D315  A9 00     LDA #$00                      ; 01315 ×43
  D317  8D 00 20  STA $2000                     ; 01317 ×43
  D31A  AD 02 20  LDA $2002                     ; 0131A ×43
  D31D  60        RTS                           ; 0131D ×43

sub_B0_D31E:                    ; from 00cb6
  D31E  A9 1E     LDA #$1E                      ; 0131E ×77
  D320  85 54     STA $54                       ; 01320 ×77
  D322  A9 E7     LDA #$E7                      ; 01322 ×77
  D324  25 53     AND $53                       ; 01324 ×77
  D326  09 08     ORA #$08                      ; 01326 ×77
  D328  85 53     STA $53                       ; 01328 ×77
  D32A  8D 00 20  STA $2000                     ; 0132A ×77
  D32D  60        RTS                           ; 0132D ×77
  D32E  .byte AA D3 B9 D3 E1 D3 C8 D3                           ; 0132E data, read by 01342 01346
  D336  .byte AA D3 B9 D3                                       ; 01336
  D33A  .byte AA D3 B9 D3                                       ; 0133A data, read by 01342 01346
  D33E  .byte EA D3 C8 D3                                       ; 0133E

sub_B0_D342:                    ; from 01307 0130c
  D342  BC 2E D3  LDY $D32E,X                   ; 01342 ×86
  D345  E8        INX                           ; 01345 ×86
  D346  BD 2E D3  LDA $D32E,X                   ; 01346 ×86
  D349  E8        INX                           ; 01349 ×86
  D34A  86 89     STX $89                       ; 0134A ×86
  D34C  84 7C     STY $7C                       ; 0134C ×86
  D34E  85 7D     STA $7D                       ; 0134E ×86
  D350  A0 00     LDY #$00                      ; 01350 ×86
  D352  B1 7C     LDA ($7C),Y                   ; 01352 ×86
  D354  85 8A     STA $8A                       ; 01354 ×86
  D356  29 0F     AND #$0F                      ; 01356 ×86
  D358  85 79     STA $79                       ; 01358 ×86
  D35A  C8        INY                           ; 0135A ×86
  D35B  84 7B     STY $7B                       ; 0135B ×86
  D35D  D0 06     BNE loc_B0_D365               ; 0135D ×86

loc_B0_D35F:                    ; from 01386
  D35F  A4 7B     LDY $7B                       ; 0135F ×414
  D361  A5 8A     LDA $8A                       ; 01361 ×414
  D363  30 10     BMI loc_B0_D375               ; 01363 ×414

loc_B0_D365:                    ; from 0135d
  D365  AD 02 20  LDA $2002                     ; 01365 ×110
  D368  B1 7C     LDA ($7C),Y                   ; 01368 ×110
  D36A  AA        TAX                           ; 0136A ×110
  D36B  C8        INY                           ; 0136B ×110
  D36C  B1 7C     LDA ($7C),Y                   ; 0136C ×110
  D36E  8D 06 20  STA $2006                     ; 0136E ×110
  D371  8E 06 20  STX $2006                     ; 01371 ×110
  D374  C8        INY                           ; 01374 ×110

loc_B0_D375:                    ; from 01363
  D375  B1 7C     LDA ($7C),Y                   ; 01375 ×500
  D377  85 7E     STA $7E                       ; 01377 ×500
  D379  C8        INY                           ; 01379 ×500
  D37A  B1 7C     LDA ($7C),Y                   ; 0137A ×500
  D37C  85 7F     STA $7F                       ; 0137C ×500
  D37E  C8        INY                           ; 0137E ×500
  D37F  84 7B     STY $7B                       ; 0137F ×500
  D381  20 89 D3  JSR sub_B0_D389               ; 01381 ×500
  D384  C6 79     DEC $79                       ; 01384 ×500
  D386  D0 D7     BNE loc_B0_D35F               ; 01386 ×500

loc_B0_D388:                    ; from 0138f
  D388  60        RTS                           ; 01388 ×586

sub_B0_D389:                    ; from 01381
  D389  A0 00     LDY #$00                      ; 01389 ×500

loc_B0_D38B:                    ; from 01399
  D38B  B1 7E     LDA ($7E),Y                   ; 0138B ×9380
  D38D  C9 5A     CMP #$5A                      ; 0138D ×9380
  D38F  F0 F7     BEQ loc_B0_D388               ; 0138F ×9380
  D391  C9 57     CMP #$57                      ; 01391 ×8880
  D393  F0 06     BEQ loc_B0_D39B               ; 01393 ×8880
  D395  8D 07 20  STA $2007                     ; 01395 ×6880

loc_B0_D398:                    ; from 013a8
  D398  C8        INY                           ; 01398 ×8880
  D399  D0 F0     BNE loc_B0_D38B               ; 01399 ×8880

loc_B0_D39B:                    ; from 01393
  D39B  C8        INY                           ; 0139B ×2000
  D39C  B1 7E     LDA ($7E),Y                   ; 0139C ×2000
  D39E  AA        TAX                           ; 0139E ×2000
  D39F  C8        INY                           ; 0139F ×2000
  D3A0  B1 7E     LDA ($7E),Y                   ; 013A0 ×2000

loc_B0_D3A2:                    ; from 013a6
  D3A2  8D 07 20  STA $2007                     ; 013A2 ×59104
  D3A5  CA        DEX                           ; 013A5 ×59104
  D3A6  D0 FA     BNE loc_B0_D3A2               ; 013A6 ×59104
  D3A8  F0 EE     BEQ loc_B0_D398               ; 013A8 ×2000
  D3AA  .byte 86 E0 20 C4 E3 77 E4 59 E4 63 E4 6D E4 28 E4 86   ; 013AA data, read by 01352 01368 0136c 01375 (+1)
  D3BA  .byte E0 24 C4 E3 77 E4 59 E4 63 E4 6D E4 28 E4 06 60   ; 013BA data, read by 01368 0136c 01375 0137a (+1)
  D3CA  .byte 22 C4 E3 00 23 6D E4 C0 23 3F E4 60 26 C4 E3 00   ; 013CA data, read by 0136c 01375 0137a 01368
  D3DA  .byte 27 6D E4 C0 27 3F E4 02 00 22 20 E4 00 26 20 E4   ; 013DA data, read by 0136c 01375 0137a 01368 (+1)
  D3EA  .byte 02 E0 20 24 E4 E0 24 24 E4                        ; 013EA

sub_B0_D3F3:                    ; from 0082a
  D3F3  A0 00     LDY #$00                      ; 013F3 ×26173
  D3F5  A6 64     LDX $64                       ; 013F5 ×26173
  D3F7  F0 40     BEQ loc_B0_D439               ; 013F7 ×26173
  D3F9  CA        DEX                           ; 013F9 ×6296
  D3FA  F0 61     BEQ loc_B0_D45D               ; 013FA ×6296
  D3FC  CA        DEX                           ; 013FC ×2144
  D3FD  F0 20     BEQ $D41F                     ; 013FD ×2144
  D3FF  CA        DEX                           ; 013FF ×2144
  D400  F0 08     BEQ loc_B0_D40A               ; 01400 ×2144
  D402  AE 27 03  LDX $0327                     ; 01402 ×0
  D405  F0 2F     BEQ loc_B0_D436               ; 01405 ×0
  D407  4C 8E D4  JMP $D48E                     ; 01407 ×0

loc_B0_D40A:                    ; from 01400
  D40A  AE 8E 03  LDX $038E                     ; 0140A ×2144
  D40D  F0 27     BEQ loc_B0_D436               ; 0140D ×2144
  D40F  AE 23 03  LDX $0323                     ; 0140F ×25
  D412  F0 22     BEQ loc_B0_D436               ; 01412 ×25
  D414  CA        DEX                           ; 01414 ×25
  D415  F0 7A     BEQ loc_B0_D491               ; 01415 ×25
  D417  CA        DEX                           ; 01417 ×14
  D418  F0 76     BEQ loc_B0_D490               ; 01418 ×14
  D41A  CA        DEX                           ; 0141A ×4
  D41B  F0 72     BEQ loc_B0_D48F               ; 0141B ×4
  D41D  D0 6E     BNE loc_B0_D48D               ; 0141D ×2
  D41F  A5 DF     LDA $DF                       ; 0141F ×0
  D421  D0 13     BNE loc_B0_D436               ; 01421 ×0
  D423  A8        TAY                           ; 01423 ×0
  D424  A2 02     LDX #$02                      ; 01424 ×0
  D426  B5 D9     LDA $D9,X                     ; 01426 ×0
  D428  F0 01     BEQ $D42B                     ; 01428 ×0
  D42A  C8        INY                           ; 0142A ×0
  D42B  CA        DEX                           ; 0142B ×0
  D42C  10 F8     BPL $D426                     ; 0142C ×0
  D42E  98        TYA                           ; 0142E ×0
  D42F  F0 05     BEQ loc_B0_D436               ; 0142F ×0
  D431  88        DEY                           ; 01431 ×0
  D432  F0 5D     BEQ loc_B0_D491               ; 01432 ×0
  D434  D0 47     BNE $D47D                     ; 01434 inferred, not run

loc_B0_D436:                    ; from 01445 01457 01472 0140d 0145f
  D436  4C CE D4  JMP loc_B0_D4CE               ; 01436 ×26106

loc_B0_D439:                    ; from 013f7
  D439  AE 3F 03  LDX $033F                     ; 01439 ×19877
  D43C  D0 48     BNE $D486                     ; 0143C ×19877
  D43E  AE 21 03  LDX $0321                     ; 0143E ×19877
  D441  D0 3A     BNE $D47D                     ; 01441 ×19877
  D443  A5 DF     LDA $DF                       ; 01443 ×19877
  D445  D0 EF     BNE loc_B0_D436               ; 01445 ×19877
  D447  A2 02     LDX #$02                      ; 01447 ×4698

loc_B0_D449:                    ; from 01454
  D449  B5 D9     LDA $D9,X                     ; 01449 ×14094
  D44B  F0 06     BEQ loc_B0_D453               ; 0144B ×14094
  D44D  C8        INY                           ; 0144D ×15
  D44E  E0 02     CPX #$02                      ; 0144E ×15
  D450  D0 01     BNE loc_B0_D453               ; 01450 ×15
  D452  C8        INY                           ; 01452 ×0

loc_B0_D453:                    ; from 0144b 01450
  D453  CA        DEX                           ; 01453 ×14094
  D454  10 F3     BPL loc_B0_D449               ; 01454 ×14094
  D456  98        TYA                           ; 01456 ×4698
  D457  F0 DD     BEQ loc_B0_D436               ; 01457 ×4698
  D459  88        DEY                           ; 01459 ×15
  D45A  4C 91 D4  JMP loc_B0_D491               ; 0145A ×15

loc_B0_D45D:                    ; from 013fa
  D45D  A5 DF     LDA $DF                       ; 0145D ×4152
  D45F  D0 D5     BNE loc_B0_D436               ; 0145F ×4152
  D461  A8        TAY                           ; 01461 ×2152
  D462  A2 04     LDX #$04                      ; 01462 ×2152

loc_B0_D464:                    ; from 0146f
  D464  B5 D9     LDA $D9,X                     ; 01464 ×10760
  D466  F0 06     BEQ loc_B0_D46E               ; 01466 ×10760
  D468  C8        INY                           ; 01468 ×27
  D469  E0 02     CPX #$02                      ; 01469 ×27
  D46B  B0 01     BCS loc_B0_D46E               ; 0146B ×27
  D46D  C8        INY                           ; 0146D ×0

loc_B0_D46E:                    ; from 01466 0146b
  D46E  CA        DEX                           ; 0146E ×10760
  D46F  10 F3     BPL loc_B0_D464               ; 0146F ×10760
  D471  98        TYA                           ; 01471 ×2152
  D472  F0 C2     BEQ loc_B0_D436               ; 01472 ×2152
  D474  88        DEY                           ; 01474 ×27
  D475  F0 1A     BEQ loc_B0_D491               ; 01475 ×27
  D477  88        DEY                           ; 01477 ×0
  D478  F0 16     BEQ loc_B0_D490               ; 01478 ×0
  D47A  88        DEY                           ; 0147A ×0
  D47B  D0 04     BNE $D481                     ; 0147B ×0
  D47D  A0 FD     LDY #$FD                      ; 0147D ×0
  D47F  30 05     BMI $D486                     ; 0147F ×0
  D481  88        DEY                           ; 01481 ×0
  D482  F0 0B     BEQ loc_B0_D48F               ; 01482 ×0
  D484  A0 FF     LDY #$FF                      ; 01484 ×0
  D486  A9 05     LDA #$05                      ; 01486 ×0
  D488  20 0D F8  JSR sub_B0_F80D               ; 01488 ×0
  D48B  C8        INY                           ; 0148B ×0
  D48C  C8        INY                           ; 0148C ×0

loc_B0_D48D:                    ; from 0141d
  D48D  C8        INY                           ; 0148D ×2
  D48E  C8        INY                           ; 0148E ×2

loc_B0_D48F:                    ; from 0141b
  D48F  C8        INY                           ; 0148F ×4

loc_B0_D490:                    ; from 01418
  D490  C8        INY                           ; 01490 ×14

loc_B0_D491:                    ; from 01475 0145a 01415
  D491  20 FC C8  JSR sub_B0_C8FC               ; 01491 ×67
  D494  8D 21 03  STA $0321                     ; 01494 ×67
  D497  8D 27 03  STA $0327                     ; 01497 ×67
  D49A  8D 3F 03  STA $033F                     ; 0149A ×67
  D49D  8C 24 03  STY $0324                     ; 0149D ×67
  D4A0  B9 C7 D4  LDA $D4C7,Y                   ; 014A0 ×67
  D4A3  85 EA     STA $EA                       ; 014A3 ×67
  D4A5  A9 00     LDA #$00                      ; 014A5 ×67
  D4A7  85 EB     STA $EB                       ; 014A7 ×67
  D4A9  20 C4 C6  JSR sub_B0_C6C4               ; 014A9 ×67
  D4AC  A5 64     LDA $64                       ; 014AC ×67
  D4AE  C9 03     CMP #$03                      ; 014AE ×67
  D4B0  F0 09     BEQ loc_B0_D4BB               ; 014B0 ×67
  D4B2  AC 24 03  LDY $0324                     ; 014B2 ×42
  D4B5  F0 0D     BEQ loc_B0_D4C4               ; 014B5 ×42
  D4B7  C0 03     CPY #$03                      ; 014B7 ×0
  D4B9  90 09     BCC loc_B0_D4C4               ; 014B9 ×0

loc_B0_D4BB:                    ; from 014b0
  D4BB  A0 01     LDY #$01                      ; 014BB ×25
  D4BD  8C 02 04  STY $0402                     ; 014BD ×25
  D4C0  88        DEY                           ; 014C0 ×25
  D4C1  8C 25 03  STY $0325                     ; 014C1 ×25

loc_B0_D4C4:                    ; from 014b5
  D4C4  4C CE D4  JMP loc_B0_D4CE               ; 014C4 ×67
  D4C7  .byte 01 02 04                                          ; 014C7 data, read by 014a0
  D4CA  .byte 05                                                ; 014CA
  D4CB  .byte 08                                                ; 014CB data, read by 014a0
  D4CC  .byte 10 50                                             ; 014CC

loc_B0_D4CE:                    ; from 01436 014c4
  D4CE  AD 02 04  LDA $0402                     ; 014CE ×26173
  D4D1  F0 20     BEQ loc_B0_D4F3               ; 014D1 ×26173
  D4D3  AD 25 03  LDA $0325                     ; 014D3 ×779
  D4D6  D0 07     BNE loc_B0_D4DF               ; 014D6 ×779
  D4D8  A9 1F     LDA #$1F                      ; 014D8 ×25
  D4DA  8D 25 03  STA $0325                     ; 014DA ×25
  D4DD  D0 15     BNE loc_B0_D4F4               ; 014DD ×25

loc_B0_D4DF:                    ; from 014d6
  D4DF  CE 25 03  DEC $0325                     ; 014DF ×754
  D4E2  D0 0F     BNE loc_B0_D4F3               ; 014E2 ×754

sub_B0_D4E4:                    ; from 00158
  D4E4  A0 18     LDY #$18                      ; 014E4 ×21
  D4E6  A9 F4     LDA #$F4                      ; 014E6 ×21
  D4E8  99 00 02  STA $0200,Y                   ; 014E8 ×21
  D4EB  99 04 02  STA $0204,Y                   ; 014EB ×21
  D4EE  A9 00     LDA #$00                      ; 014EE ×21
  D4F0  8D 02 04  STA $0402                     ; 014F0 ×21

loc_B0_D4F3:                    ; from 014d1 014e2
  D4F3  60        RTS                           ; 014F3 ×26148

loc_B0_D4F4:                    ; from 014dd
  D4F4  A4 64     LDY $64                       ; 014F4 ×25
  D4F6  C0 03     CPY #$03                      ; 014F6 ×25
  D4F8  F0 13     BEQ loc_B0_D50D               ; 014F8 ×25
  D4FA  A5 73     LDA $73                       ; 014FA ×0
  D4FC  18        CLC                           ; 014FC ×0
  D4FD  69 F4     ADC #$F4                      ; 014FD ×0
  D4FF  C0 04     CPY #$04                      ; 014FF ×0
  D501  D0 02     BNE $D505                     ; 01501 ×0
  D503  69 2C     ADC #$2C                      ; 01503 ×0
  D505  8D 39 03  STA $0339                     ; 01505 ×0
  D508  A5 74     LDA $74                       ; 01508 ×0
  D50A  8D 38 03  STA $0338                     ; 0150A ×0

loc_B0_D50D:                    ; from 014f8
  D50D  A0 18     LDY #$18                      ; 0150D ×25
  D50F  AD 39 03  LDA $0339                     ; 0150F ×25
  D512  99 00 02  STA $0200,Y                   ; 01512 ×25
  D515  99 04 02  STA $0204,Y                   ; 01515 ×25
  D518  AE 24 03  LDX $0324                     ; 01518 ×25
  D51B  BD 3D D5  LDA $D53D,X                   ; 0151B ×25
  D51E  99 01 02  STA $0201,Y                   ; 0151E ×25
  D521  F0 02     BEQ $D525                     ; 01521 ×25
  D523  A9 03     LDA #$03                      ; 01523 ×25
  D525  99 05 02  STA $0205,Y                   ; 01525 ×25
  D528  A9 03     LDA #$03                      ; 01528 ×25
  D52A  99 02 02  STA $0202,Y                   ; 0152A ×25
  D52D  99 06 02  STA $0206,Y                   ; 0152D ×25
  D530  AD 38 03  LDA $0338                     ; 01530 ×25
  D533  99 03 02  STA $0203,Y                   ; 01533 ×25
  D536  18        CLC                           ; 01536 ×25
  D537  69 08     ADC #$08                      ; 01537 ×25
  D539  99 07 02  STA $0207,Y                   ; 01539 ×25

loc_B0_D53C:                    ; from 0154c 01546 01562
  D53C  60        RTS                           ; 0153C ×19866
  D53D  .byte A7 12 22                                          ; 0153D data, read by 0151b
  D540  .byte 23                                                ; 01540
  D541  .byte 94                                                ; 01541 data, read by 0151b
  D542  .byte A4 EF                                             ; 01542

sub_B0_D544:                    ; from 009aa
  D544  A5 0F     LDA $0F                       ; 01544 ×19841
  D546  D0 F4     BNE loc_B0_D53C               ; 01546 ×19841
  D548  A5 09     LDA $09                       ; 01548 ×12786
  D54A  29 0F     AND #$0F                      ; 0154A ×12786
  D54C  D0 EE     BNE loc_B0_D53C               ; 0154C ×12786

sub_B0_D54E:                    ; from 00189
  D54E  A2 00     LDX #$00                      ; 0154E ×801

loc_B0_D550:                    ; from 0155d
  D550  DE 41 03  DEC $0341,X                   ; 01550 ×927
  D553  10 0A     BPL loc_B0_D55F               ; 01553 ×927
  D555  A9 09     LDA #$09                      ; 01555 ×126
  D557  9D 41 03  STA $0341,X                   ; 01557 ×126
  D55A  E8        INX                           ; 0155A ×126
  D55B  E0 03     CPX #$03                      ; 0155B ×126
  D55D  D0 F1     BNE loc_B0_D550               ; 0155D ×126

loc_B0_D55F:                    ; from 01553
  D55F  AD 43 03  LDA $0343                     ; 0155F ×801
  D562  D0 D8     BNE loc_B0_D53C               ; 01562 ×801
  D564  A5 00     LDA $00                       ; 01564 ×0
  D566  C9 05     CMP #$05                      ; 01566 ×0
  D568  D0 D2     BNE loc_B0_D53C               ; 01568 ×0
  D56A  AD 01 04  LDA $0401                     ; 0156A inferred, not run
  D56D  D0 CD     BNE loc_B0_D53C               ; 0156D inferred, not run
  D56F  EE 01 04  INC $0401                     ; 0156F inferred, not run
  D572  4C 55 CB  JMP $CB55                     ; 01572 inferred, not run

sub_B0_D575:                    ; from 0064b 005ce 01312
  D575  A9 40     LDA #$40                      ; 01575 ×41611
  D577  85 7E     STA $7E                       ; 01577 ×41611
  D579  A9 03     LDA #$03                      ; 01579 ×41611
  D57B  85 7F     STA $7F                       ; 0157B ×41611
  D57D  AD 02 20  LDA $2002                     ; 0157D ×41611
  D580  A9 20     LDA #$20                      ; 01580 ×41611
  D582  8D 06 20  STA $2006                     ; 01582 ×41611
  D585  A9 92     LDA #$92                      ; 01585 ×41611
  D587  8D 06 20  STA $2006                     ; 01587 ×41611
  D58A  A0 03     LDY #$03                      ; 0158A ×41611

loc_B0_D58C:                    ; from 01594
  D58C  B1 7E     LDA ($7E),Y                   ; 0158C ×166444
  D58E  09 30     ORA #$30                      ; 0158E ×166444
  D590  8D 07 20  STA $2007                     ; 01590 ×166444
  D593  88        DEY                           ; 01593 ×166444
  D594  10 F6     BPL loc_B0_D58C               ; 01594 ×166444
  D596  60        RTS                           ; 01596 ×41611

sub_B0_D597:                    ; from 0021c
  D597  A5 09     LDA $09                       ; 01597 ×4933
  D599  29 07     AND #$07                      ; 01599 ×4933
  D59B  D0 54     BNE loc_B0_D5F1               ; 0159B ×4933
  D59D  EE 02 03  INC $0302                     ; 0159D ×613
  D5A0  AD 02 03  LDA $0302                     ; 015A0 ×613
  D5A3  49 03     EOR #$03                      ; 015A3 ×613
  D5A5  D0 03     BNE loc_B0_D5AA               ; 015A5 ×613
  D5A7  8D 02 03  STA $0302                     ; 015A7 ×204

loc_B0_D5AA:                    ; from 015a5
  D5AA  0A        ASL A                         ; 015AA ×613
  D5AB  A8        TAY                           ; 015AB ×613
  D5AC  B9 3B D6  LDA $D63B,Y                   ; 015AC ×613
  D5AF  85 7C     STA $7C                       ; 015AF ×613
  D5B1  B9 3C D6  LDA $D63C,Y                   ; 015B1 ×613
  D5B4  85 7D     STA $7D                       ; 015B4 ×613
  D5B6  AD 4D D6  LDA $D64D                     ; 015B6 ×613
  D5B9  85 7E     STA $7E                       ; 015B9 ×613
  D5BB  AD 4E D6  LDA $D64E                     ; 015BB ×613
  D5BE  85 7F     STA $7F                       ; 015BE ×613
  D5C0  20 57 D6  JSR sub_B0_D657               ; 015C0 ×613
  D5C3  A0 00     LDY #$00                      ; 015C3 ×613
  D5C5  A2 0C     LDX #$0C                      ; 015C5 ×613

loc_B0_D5C7:                    ; from 015ce
  D5C7  B1 7E     LDA ($7E),Y                   ; 015C7 ×7356
  D5C9  8D 07 20  STA $2007                     ; 015C9 ×7356
  D5CC  C8        INY                           ; 015CC ×7356
  D5CD  CA        DEX                           ; 015CD ×7356
  D5CE  D0 F7     BNE loc_B0_D5C7               ; 015CE ×7356
  D5D0  A0 00     LDY #$00                      ; 015D0 ×613
  D5D2  A2 04     LDX #$04                      ; 015D2 ×613

loc_B0_D5D4:                    ; from 015db
  D5D4  B1 7C     LDA ($7C),Y                   ; 015D4 ×2452
  D5D6  8D 07 20  STA $2007                     ; 015D6 ×2452
  D5D9  C8        INY                           ; 015D9 ×2452
  D5DA  CA        DEX                           ; 015DA ×2452
  D5DB  D0 F7     BNE loc_B0_D5D4               ; 015DB ×2452
  D5DD  F0 45     BEQ loc_B0_D624               ; 015DD ×613

sub_B0_D5DF:                    ; from 0038b
  D5DF  24 03     BIT $03                       ; 015DF ×0
  D5E1  50 0E     BVC loc_B0_D5F1               ; 015E1 ×0
  D5E3  A5 CC     LDA $CC                       ; 015E3 ×0
  D5E5  F0 0A     BEQ loc_B0_D5F1               ; 015E5 ×0
  D5E7  C9 02     CMP #$02                      ; 015E7 ×0
  D5E9  F0 11     BEQ $D5FC                     ; 015E9 ×0
  D5EB  A5 09     LDA $09                       ; 015EB ×0
  D5ED  29 03     AND #$03                      ; 015ED ×0
  D5EF  F0 01     BEQ $D5F2                     ; 015EF ×0

loc_B0_D5F1:                    ; from 0159b
  D5F1  60        RTS                           ; 015F1 ×4320
  D5F2  A2 04     LDX #$04                      ; 015F2 ×0
  D5F4  A0 00     LDY #$00                      ; 015F4 ×0
  D5F6  A5 09     LDA $09                       ; 015F6 ×0
  D5F8  29 04     AND #$04                      ; 015F8 ×0
  D5FA  D0 02     BNE $D5FE                     ; 015FA ×0
  D5FC  A2 10     LDX #$10                      ; 015FC ×0
  D5FE  AD 4F D6  LDA $D64F                     ; 015FE ×0
  D601  85 7C     STA $7C                       ; 01601 ×0
  D603  AD 50 D6  LDA $D650                     ; 01603 ×0
  D606  85 7D     STA $7D                       ; 01606 ×0
  D608  86 77     STX $77                       ; 01608 ×0
  D60A  84 78     STY $78                       ; 0160A ×0
  D60C  20 65 D6  JSR sub_B0_D665               ; 0160C ×0
  D60F  20 57 D6  JSR sub_B0_D657               ; 0160F ×0
  D612  A2 10     LDX #$10                      ; 01612 ×0
  D614  A0 00     LDY #$00                      ; 01614 ×0
  D616  B1 7E     LDA ($7E),Y                   ; 01616 ×0
  D618  8D 07 20  STA $2007                     ; 01618 ×0
  D61B  C8        INY                           ; 0161B ×0
  D61C  CA        DEX                           ; 0161C ×0
  D61D  E4 77     CPX $77                       ; 0161D ×0
  D61F  F0 06     BEQ $D627                     ; 0161F ×0
  D621  8A        TXA                           ; 01621 ×0
  D622  D0 F2     BNE $D616                     ; 01622 ×0

loc_B0_D624:                    ; from 015dd
  D624  4C 11 CA  JMP loc_B0_CA11               ; 01624 ×613
  D627  84 FA     STY $FA                       ; 01627 ×0
  D629  A0 00     LDY #$00                      ; 01629 ×0
  D62B  B1 7C     LDA ($7C),Y                   ; 0162B ×0
  D62D  8D 07 20  STA $2007                     ; 0162D ×0
  D630  C8        INY                           ; 01630 ×0
  D631  CA        DEX                           ; 01631 ×0
  D632  E4 78     CPX $78                       ; 01632 ×0
  D634  D0 F5     BNE $D62B                     ; 01634 ×0
  D636  A4 FA     LDY $FA                       ; 01636 ×0
  D638  4C 21 D6  JMP $D621                     ; 01638 ×0
  D63B  .byte 41 D6 45 D6 49 D6 0F 16 2C 28 0F 2C 28 16 0F 28   ; 0163B data, read by 015ac 015b1 015d4
  D64B  .byte 16 2C 08 CD                                       ; 0164B data, read by 015d4 015b6 015bb
  D64F  .byte 51 D6 0F 14 30 29 E8 CC                           ; 0164F

sub_B0_D657:                    ; from 015c0 0160f
  D657  AD 02 20  LDA $2002                     ; 01657 ×613
  D65A  A9 3F     LDA #$3F                      ; 0165A ×613
  D65C  8D 06 20  STA $2006                     ; 0165C ×613
  D65F  A9 00     LDA #$00                      ; 0165F ×613
  D661  8D 06 20  STA $2006                     ; 01661 ×613
  D664  60        RTS                           ; 01664 ×613

sub_B0_D665:                    ; from 0160c
  D665  AD 55 D6  LDA $D655                     ; 01665 ×0
  D668  85 7E     STA $7E                       ; 01668 ×0
  D66A  AD 56 D6  LDA $D656                     ; 0166A ×0
  D66D  85 7F     STA $7F                       ; 0166D ×0
  D66F  60        RTS                           ; 0166F ×0
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
  D714  A9 0C     LDA #$0C                      ; 01714 ×76
  D716  20 E3 C4  JSR sub_B0_C4E3               ; 01716 ×76
  D719  20 4B CA  JSR sub_B0_CA4B               ; 01719 ×76
  D71C  A9 0D     LDA #$0D                      ; 0171C ×76
  D71E  20 E3 C4  JSR sub_B0_C4E3               ; 0171E ×76
  D721  4C 55 CA  JMP loc_B0_CA55               ; 01721 ×76
  D724  .byte 42 20 FD 1C 24 FE A2 20 FD 1C 29 FF 41 20 23 26   ; 01724 data, read by 00509 0050e 00516 00530 (+1)
  D734  .byte 26 28 FE 5E 20 25 27 27 2A FF                     ; 01734 data, read by 00516 00509 0050e

sub_B0_D73E:                    ; from 00247
  D73E  A2 00     LDX #$00                      ; 0173E ×7
  D740  8E B2 03  STX $03B2                     ; 01740 ×7
  D743  8E 41 03  STX $0341                     ; 01743 ×7
  D746  8E 42 03  STX $0342                     ; 01746 ×7
  D749  8E 43 03  STX $0343                     ; 01749 ×7
  D74C  8E B1 03  STX $03B1                     ; 0174C ×7
  D74F  86 6D     STX $6D                       ; 0174F ×7
  D751  86 6A     STX $6A                       ; 01751 ×7
  D753  86 6B     STX $6B                       ; 01753 ×7
  D755  86 66     STX $66                       ; 01755 ×7
  D757  A2 02     LDX #$02                      ; 01757 ×7
  D759  AD B0 03  LDA $03B0                     ; 01759 ×7
  D75C  4A        LSR A                         ; 0175C ×7
  D75D  90 02     BCC loc_B0_D761               ; 0175D ×7
  D75F  A2 04     LDX #$04                      ; 0175F ×3

loc_B0_D761:                    ; from 0175d
  D761  86 63     STX $63                       ; 01761 ×7
  D763  A9 00     LDA #$00                      ; 01763 ×7
  D765  85 61     STA $61                       ; 01765 ×7
  D767  EE B0 03  INC $03B0                     ; 01767 ×7
  D76A  4C 35 C8  JMP sub_B0_C835               ; 0176A ×7

sub_B0_D76D:                    ; from 000ed
  D76D  A2 06     LDX #$06                      ; 0176D ×6300
  D76F  A5 63     LDA $63                       ; 0176F ×6300
  D771  C9 04     CMP #$04                      ; 01771 ×6300
  D773  F0 02     BEQ loc_B0_D777               ; 01773 ×6300
  D775  A2 03     LDX #$03                      ; 01775 ×4155

loc_B0_D777:                    ; from 01773
  D777  E4 6B     CPX $6B                       ; 01777 ×6300
  D779  F0 46     BEQ loc_B0_D7C1               ; 01779 ×6300
  D77B  A9 00     LDA #$00                      ; 0177B ×6296
  D77D  AC B1 03  LDY $03B1                     ; 0177D ×6296
  D780  D0 32     BNE loc_B0_D7B4               ; 01780 ×6296
  D782  AC B2 03  LDY $03B2                     ; 01782 ×104
  D785  B9 C5 D7  LDA $D7C5,Y                   ; 01785 ×104
  D788  E0 06     CPX #$06                      ; 01788 ×104
  D78A  F0 03     BEQ loc_B0_D78F               ; 0178A ×104
  D78C  B9 E7 D7  LDA $D7E7,Y                   ; 0178C ×67

loc_B0_D78F:                    ; from 0178a
  D78F  8D B3 03  STA $03B3                     ; 0178F ×104
  D792  8D B4 03  STA $03B4                     ; 01792 ×104
  D795  C8        INY                           ; 01795 ×104
  D796  B9 C5 D7  LDA $D7C5,Y                   ; 01796 ×104
  D799  E0 06     CPX #$06                      ; 01799 ×104
  D79B  F0 03     BEQ loc_B0_D7A0               ; 0179B ×104
  D79D  B9 E7 D7  LDA $D7E7,Y                   ; 0179D ×67

loc_B0_D7A0:                    ; from 0179b
  D7A0  8D B1 03  STA $03B1                     ; 017A0 ×104
  D7A3  C8        INY                           ; 017A3 ×104
  D7A4  8C B2 03  STY $03B2                     ; 017A4 ×104
  D7A7  A5 05     LDA $05                       ; 017A7 ×104
  D7A9  29 30     AND #$30                      ; 017A9 ×104
  D7AB  85 77     STA $77                       ; 017AB ×104
  D7AD  AD B4 03  LDA $03B4                     ; 017AD ×104
  D7B0  29 CF     AND #$CF                      ; 017B0 ×104
  D7B2  05 77     ORA $77                       ; 017B2 ×104

loc_B0_D7B4:                    ; from 01780
  D7B4  85 0D     STA $0D                       ; 017B4 ×6296
  D7B6  AD B3 03  LDA $03B3                     ; 017B6 ×6296
  D7B9  85 0C     STA $0C                       ; 017B9 ×6296
  D7BB  CE B1 03  DEC $03B1                     ; 017BB ×6296
  D7BE  4C 22 C8  JMP loc_B0_C822               ; 017BE ×6296

loc_B0_D7C1:                    ; from 01779
  D7C1  E6 0A     INC $0A                       ; 017C1 ×4
  D7C3  18        CLC                           ; 017C3 ×4
  D7C4  60        RTS                           ; 017C4 ×4
  D7C5  .byte 00 7A 80 0E 00 62 02 26 82 22 00 56 02 40 82 18   ; 017C5 data, read by 01785 01796
  D7D5  .byte 02 9A 00 28 80 08 00 28 00 14 00 04 02 82 82 16   ; 017D5 data, read by 01785 01796
  D7E5  .byte 00 B4 01 90 81 10 01 50 81 10 01 80 81 10 01 60   ; 017E5 data, read by 01785 01796 0178c 0179d
  D7F5  .byte 81 10 01 80 00 20 81 10 01 60 81 10 01 88 81 10   ; 017F5 data, read by 0178c 0179d
  D805  .byte 01 40                                             ; 01805 data, read by 0178c 0179d

sub_B0_D807:                    ; from 0253d 029e7 02fa6 02c4f
  D807  A5 64     LDA $64                       ; 01807 ×19039
  D809  20 CD C4  JSR sub_B0_C4CD               ; 01809 ×19039
  D80C  .byte 14 D8 8D D8                                       ; 0180C data, read by 004d6 004da
  D810  .byte 51 D9                                             ; 01810
  D812  .byte 5F D9                                             ; 01812 data, read by 004d6 004da

jt_B0_D814:                    ; from 004e0
  D814  20 05 DA  JSR sub_B0_DA05               ; 01814 ×12750
  D817  B0 07     BCS loc_B0_D820               ; 01817 ×12750
  D819  A9 30     LDA #$30                      ; 01819 inferred, not run
  D81B  85 77     STA $77                       ; 0181B inferred, not run
  D81D  4C E4 D8  JMP $D8E4                     ; 0181D inferred, not run

loc_B0_D820:                    ; from 01817
  D820  A6 DF     LDX $DF                       ; 01820 ×12750
  D822  F0 0A     BEQ loc_B0_D82E               ; 01822 ×12750

loc_B0_D824:                    ; from 0188a
  D824  A6 DE     LDX $DE                       ; 01824 ×11784
  D826  CA        DEX                           ; 01826 ×11784
  D827  F0 16     BEQ loc_B0_D83F               ; 01827 ×11784
  D829  CA        DEX                           ; 01829 ×6147
  D82A  F0 34     BEQ loc_B0_D860               ; 0182A ×6147
  D82C  D0 0B     BNE loc_B0_D839               ; 0182C ×4413

loc_B0_D82E:                    ; from 01822 018a0
  D82E  A5 0C     LDA $0C                       ; 0182E ×5114
  D830  29 03     AND #$03                      ; 01830 ×5114
  D832  AA        TAX                           ; 01832 ×5114
  D833  CA        DEX                           ; 01833 ×5114
  D834  F0 09     BEQ loc_B0_D83F               ; 01834 ×5114
  D836  CA        DEX                           ; 01836 ×2580
  D837  F0 27     BEQ loc_B0_D860               ; 01837 ×2580

loc_B0_D839:                    ; from 0182c 01876
  D839  A9 00     LDA #$00                      ; 01839 ×7980
  D83B  85 CE     STA $CE                       ; 0183B ×7980
  D83D  F0 46     BEQ loc_B0_D885               ; 0183D ×7980

loc_B0_D83F:                    ; from 01827 01834
  D83F  A5 63     LDA $63                       ; 0183F ×8171
  D841  C9 02     CMP #$02                      ; 01841 ×8171
  D843  D0 05     BNE loc_B0_D84A               ; 01843 ×8171
  D845  20 F7 D9  JSR sub_B0_D9F7               ; 01845 ×4020
  D848  90 3F     BCC loc_B0_D889               ; 01848 ×4020

loc_B0_D84A:                    ; from 01843
  D84A  A9 01     LDA #$01                      ; 0184A ×7166
  D84C  85 56     STA $56                       ; 0184C ×7166
  D84E  20 EE F7  JSR sub_B0_F7EE               ; 0184E ×7166
  D851  AE 05 04  LDX $0405                     ; 01851 ×7166
  D854  F0 02     BEQ loc_B0_D858               ; 01854 ×7166
  D856  D6 74     DEC $74,X                     ; 01856 ×0

loc_B0_D858:                    ; from 01854
  D858  A9 FF     LDA #$FF                      ; 01858 ×7166
  D85A  85 CE     STA $CE                       ; 0185A ×7166
  D85C  A9 01     LDA #$01                      ; 0185C ×7166
  D85E  D0 25     BNE loc_B0_D885               ; 0185E ×7166

loc_B0_D860:                    ; from 0182a 01837
  D860  A5 63     LDA $63                       ; 01860 ×1996
  D862  C9 02     CMP #$02                      ; 01862 ×1996
  D864  F0 04     BEQ $D86A                     ; 01864 ×1996
  D866  C9 03     CMP #$03                      ; 01866 ×1996
  D868  D0 05     BNE loc_B0_D86F               ; 01868 ×1996
  D86A  20 FB D9  JSR sub_B0_D9FB               ; 0186A ×0
  D86D  90 1A     BCC loc_B0_D889               ; 0186D ×0

loc_B0_D86F:                    ; from 01868
  D86F  A9 01     LDA #$01                      ; 0186F ×1996
  D871  85 56     STA $56                       ; 01871 ×1996
  D873  20 FC F7  JSR sub_B0_F7FC               ; 01873 ×1996
  D876  30 C1     BMI loc_B0_D839               ; 01876 ×1996
  D878  AE 05 04  LDX $0405                     ; 01878 ×747
  D87B  F0 02     BEQ loc_B0_D87F               ; 0187B ×747
  D87D  F6 74     INC $74,X                     ; 0187D ×0

loc_B0_D87F:                    ; from 0187b
  D87F  A9 FF     LDA #$FF                      ; 0187F ×747
  D881  85 CE     STA $CE                       ; 01881 ×747
  D883  A9 02     LDA #$02                      ; 01883 ×747

loc_B0_D885:                    ; from 0183d 0185e
  D885  85 CA     STA $CA                       ; 01885 ×15893
  D887  85 C9     STA $C9                       ; 01887 ×15893

loc_B0_D889:                    ; from 01848
  D889  60        RTS                           ; 01889 ×16898

loc_B0_D88A:                    ; from 0189a
  D88A  4C 24 D8  JMP loc_B0_D824               ; 0188A ×2000

jt_B0_D88D:                    ; from 004e0
  D88D  20 05 DA  JSR sub_B0_DA05               ; 0188D ×4148
  D890  90 4E     BCC $D8E0                     ; 01890 ×4148
  D892  A5 74     LDA $74                       ; 01892 ×4148
  D894  C9 40     CMP #$40                      ; 01894 ×4148
  D896  90 1F     BCC $D8B7                     ; 01896 ×4148
  D898  A5 DF     LDA $DF                       ; 01898 ×4148
  D89A  D0 EE     BNE loc_B0_D88A               ; 0189A ×4148
  D89C  A5 0C     LDA $0C                       ; 0189C ×2148
  D89E  29 02     AND #$02                      ; 0189E ×2148
  D8A0  F0 8C     BEQ loc_B0_D82E               ; 018A0 ×2148
  D8A2  A6 74     LDX $74                       ; 018A2 ×0
  D8A4  E0 10     CPX #$10                      ; 018A4 ×0
  D8A6  90 B8     BCC loc_B0_D860               ; 018A6 ×0
  D8A8  A5 09     LDA $09                       ; 018A8 ×0
  D8AA  4A        LSR A                         ; 018AA ×0
  D8AB  90 02     BCC $D8AF                     ; 018AB ×0
  D8AD  C6 74     DEC $74                       ; 018AD ×0
  D8AF  A9 02     LDA #$02                      ; 018AF ×0
  D8B1  85 CA     STA $CA                       ; 018B1 ×0
  D8B3  A9 00     LDA #$00                      ; 018B3 ×0
  D8B5  F0 D0     BEQ $D887                     ; 018B5 ×0
  D8B7  A5 DF     LDA $DF                       ; 018B7 ×0
  D8B9  D0 CF     BNE loc_B0_D88A               ; 018B9 ×0
  D8BB  A5 0C     LDA $0C                       ; 018BB ×0
  D8BD  29 02     AND #$02                      ; 018BD ×0
  D8BF  D0 E1     BNE $D8A2                     ; 018BF ×0
  D8C1  A5 0C     LDA $0C                       ; 018C1 ×0
  D8C3  29 01     AND #$01                      ; 018C3 ×0
  D8C5  D0 03     BNE $D8CA                     ; 018C5 ×0
  D8C7  4C 4E D9  JMP $D94E                     ; 018C7 ×0
  D8CA  A6 74     LDX $74                       ; 018CA ×0
  D8CC  E0 40     CPX #$40                      ; 018CC ×0
  D8CE  B0 0D     BCS $D8DD                     ; 018CE ×0
  D8D0  A5 09     LDA $09                       ; 018D0 ×0
  D8D2  4A        LSR A                         ; 018D2 ×0
  D8D3  90 02     BCC $D8D7                     ; 018D3 ×0
  D8D5  E6 74     INC $74                       ; 018D5 ×0
  D8D7  A9 01     LDA #$01                      ; 018D7 ×0
  D8D9  85 CA     STA $CA                       ; 018D9 ×0
  D8DB  D0 D6     BNE $D8B3                     ; 018DB ×0
  D8DD  4C 58 D8  JMP loc_B0_D858               ; 018DD inferred, not run
  D8E0  A9 10     LDA #$10                      ; 018E0 ×0
  D8E2  85 77     STA $77                       ; 018E2 ×0
  D8E4  A5 DF     LDA $DF                       ; 018E4 ×0
  D8E6  F0 0A     BEQ $D8F2                     ; 018E6 ×0
  D8E8  A6 DE     LDX $DE                       ; 018E8 ×0
  D8EA  CA        DEX                           ; 018EA ×0
  D8EB  F0 37     BEQ $D924                     ; 018EB ×0
  D8ED  CA        DEX                           ; 018ED ×0
  D8EE  F0 0F     BEQ $D8FF                     ; 018EE ×0
  D8F0  D0 5C     BNE $D94E                     ; 018F0 ×0
  D8F2  A5 0C     LDA $0C                       ; 018F2 ×0
  D8F4  29 03     AND #$03                      ; 018F4 ×0
  D8F6  AA        TAX                           ; 018F6 ×0
  D8F7  CA        DEX                           ; 018F7 ×0
  D8F8  F0 2A     BEQ $D924                     ; 018F8 ×0
  D8FA  CA        DEX                           ; 018FA ×0
  D8FB  F0 02     BEQ $D8FF                     ; 018FB ×0
  D8FD  D0 4F     BNE $D94E                     ; 018FD ×0
  D8FF  A6 74     LDX $74                       ; 018FF ×0
  D901  E4 77     CPX $77                       ; 01901 ×0
  D903  B0 03     BCS $D908                     ; 01903 ×0
  D905  4C 60 D8  JMP loc_B0_D860               ; 01905 inferred, not run
  D908  20 2D CD  JSR sub_B0_CD2D               ; 01908 ×0
  D90B  F0 05     BEQ $D912                     ; 0190B ×0
  D90D  20 FB D9  JSR sub_B0_D9FB               ; 0190D ×0
  D910  90 0E     BCC $D920                     ; 01910 ×0
  D912  C6 74     DEC $74                       ; 01912 ×0
  D914  E0 03     CPX #$03                      ; 01914 ×0
  D916  D0 02     BNE $D91A                     ; 01916 ×0
  D918  C6 BF     DEC $BF                       ; 01918 inferred, not run
  D91A  E0 01     CPX #$01                      ; 0191A ×0
  D91C  D0 02     BNE $D920                     ; 0191C ×0
  D91E  C6 84     DEC $84                       ; 0191E inferred, not run
  D920  A9 02     LDA #$02                      ; 01920 ×0
  D922  D0 21     BNE $D945                     ; 01922 ×0
  D924  A6 74     LDX $74                       ; 01924 ×0
  D926  E0 E8     CPX #$E8                      ; 01926 ×0
  D928  B0 B3     BCS $D8DD                     ; 01928 ×0
  D92A  A6 63     LDX $63                       ; 0192A ×0
  D92C  E0 02     CPX #$02                      ; 0192C ×0
  D92E  D0 05     BNE $D935                     ; 0192E ×0
  D930  20 F3 D9  JSR sub_B0_D9F3               ; 01930 ×0
  D933  90 0E     BCC $D943                     ; 01933 ×0
  D935  E6 74     INC $74                       ; 01935 ×0
  D937  E0 03     CPX #$03                      ; 01937 ×0
  D939  D0 02     BNE $D93D                     ; 01939 ×0
  D93B  E6 BF     INC $BF                       ; 0193B inferred, not run
  D93D  E0 01     CPX #$01                      ; 0193D ×0
  D93F  D0 02     BNE $D943                     ; 0193F ×0
  D941  E6 84     INC $84                       ; 01941 inferred, not run
  D943  A9 01     LDA #$01                      ; 01943 ×0
  D945  85 CA     STA $CA                       ; 01945 ×0
  D947  A9 00     LDA #$00                      ; 01947 ×0
  D949  85 CE     STA $CE                       ; 01949 ×0
  D94B  85 C9     STA $C9                       ; 0194B ×0
  D94D  60        RTS                           ; 0194D ×0
  D94E  4C 39 D8  JMP loc_B0_D839               ; 0194E ×0
  D951  20 05 DA  JSR sub_B0_DA05               ; 01951 ×0
  D954  90 03     BCC $D959                     ; 01954 ×0
  D956  4C 20 D8  JMP loc_B0_D820               ; 01956 ×0
  D959  A9 3C     LDA #$3C                      ; 01959 inferred, not run
  D95B  85 77     STA $77                       ; 0195B inferred, not run
  D95D  D0 85     BNE $D8E4                     ; 0195D inferred, not run

jt_B0_D95F:                    ; from 004e0
  D95F  A6 0C     LDX $0C                       ; 0195F ×2141
  D961  AD 20 03  LDA $0320                     ; 01961 ×2141
  D964  0D 1F 03  ORA $031F                     ; 01964 ×2141
  D967  D0 08     BNE loc_B0_D971               ; 01967 ×2141
  D969  A5 CD     LDA $CD                       ; 01969 ×2105
  D96B  05 DF     ORA $DF                       ; 0196B ×2105
  D96D  F0 02     BEQ loc_B0_D971               ; 0196D ×2105
  D96F  A6 C9     LDX $C9                       ; 0196F ×1432

loc_B0_D971:                    ; from 0196d 01967
  D971  86 0C     STX $0C                       ; 01971 ×2141
  D973  A5 AF     LDA $AF                       ; 01973 ×2141
  D975  D0 4D     BNE $D9C4                     ; 01975 ×2141
  D977  A5 0F     LDA $0F                       ; 01977 ×2141
  D979  D0 1C     BNE $D997                     ; 01979 ×2141
  D97B  A5 B8     LDA $B8                       ; 0197B ×2141
  D97D  D0 06     BNE loc_B0_D985               ; 0197D ×2141
  D97F  A5 DE     LDA $DE                       ; 0197F inferred, not run
  D981  A6 DF     LDX $DF                       ; 01981 inferred, not run
  D983  D0 02     BNE $D987                     ; 01983 inferred, not run

loc_B0_D985:                    ; from 0197d
  D985  A5 0C     LDA $0C                       ; 01985 ×2141
  D987  29 03     AND #$03                      ; 01987 ×2141
  D989  0A        ASL A                         ; 01989 ×2141
  D98A  AA        TAX                           ; 0198A ×2141
  D98B  BD BC D9  LDA $D9BC,X                   ; 0198B ×2141
  D98E  85 56     STA $56                       ; 0198E ×2141
  D990  BD BD D9  LDA $D9BD,X                   ; 01990 ×2141
  D993  85 C9     STA $C9                       ; 01993 ×2141
  D995  85 CA     STA $CA                       ; 01995 ×2141
  D997  20 05 DA  JSR sub_B0_DA05               ; 01997 ×2141
  D99A  B0 1D     BCS loc_B0_D9B9               ; 0199A ×2141
  D99C  A9 02     LDA #$02                      ; 0199C ×0
  D99E  85 CA     STA $CA                       ; 0199E ×0
  D9A0  A5 74     LDA $74                       ; 019A0 ×0
  D9A2  69 01     ADC #$01                      ; 019A2 ×0
  D9A4  AA        TAX                           ; 019A4 ×0
  D9A5  69 10     ADC #$10                      ; 019A5 ×0
  D9A7  B0 02     BCS sub_B0_D9AB               ; 019A7 ×0
  D9A9  86 74     STX $74                       ; 019A9 ×0

sub_B0_D9AB:                    ; from 00111
  D9AB  18        CLC                           ; 019AB ×0
  D9AC  A5 84     LDA $84                       ; 019AC ×0
  D9AE  69 01     ADC #$01                      ; 019AE ×0
  D9B0  85 84     STA $84                       ; 019B0 ×0
  D9B2  90 04     BCC loc_B0_D9B8               ; 019B2 ×0
  D9B4  A9 00     LDA #$00                      ; 019B4 ×0
  D9B6  85 80     STA $80                       ; 019B6 ×0

loc_B0_D9B8:                    ; from 019d4
  D9B8  60        RTS                           ; 019B8 ×2141

loc_B0_D9B9:                    ; from 0199a
  D9B9  4C EE F7  JMP sub_B0_F7EE               ; 019B9 ×2141
  D9BC  .byte 02 00                                             ; 019BC data, read by 0198b 01990
  D9BE  .byte 03 01                                             ; 019BE
  D9C0  .byte 01 02                                             ; 019C0 data, read by 0198b 01990
  D9C2  .byte 02 00                                             ; 019C2
  D9C4  A5 80     LDA $80                       ; 019C4 ×0
  D9C6  F0 F0     BEQ loc_B0_D9B8               ; 019C6 ×0
  D9C8  A5 84     LDA $84                       ; 019C8 ×0
  D9CA  18        CLC                           ; 019CA ×0
  D9CB  69 02     ADC #$02                      ; 019CB ×0
  D9CD  85 84     STA $84                       ; 019CD ×0
  D9CF  B0 11     BCS $D9E2                     ; 019CF ×0

sub_B0_D9D1:                    ; from 030b5
  D9D1  AD 90 05  LDA $0590                     ; 019D1 ×2141
  D9D4  F0 E2     BEQ loc_B0_D9B8               ; 019D4 ×2141
  D9D6  A5 84     LDA $84                       ; 019D6 ×0
  D9D8  69 08     ADC #$08                      ; 019D8 ×0
  D9DA  C9 F0     CMP #$F0                      ; 019DA ×0
  D9DC  90 DA     BCC loc_B0_D9B8               ; 019DC ×0
  D9DE  A9 00     LDA #$00                      ; 019DE inferred, not run
  D9E0  F0 04     BEQ $D9E6                     ; 019E0 inferred, not run
  D9E2  A9 00     LDA #$00                      ; 019E2 ×0
  D9E4  85 80     STA $80                       ; 019E4 ×0
  D9E6  85 B8     STA $B8                       ; 019E6 ×0
  D9E8  A5 DF     LDA $DF                       ; 019E8 ×0
  D9EA  D0 CC     BNE loc_B0_D9B8               ; 019EA ×0
  D9EC  A5 0F     LDA $0F                       ; 019EC ×0
  D9EE  D0 C8     BNE loc_B0_D9B8               ; 019EE ×0
  D9F0  4C 31 F1  JMP $F131                     ; 019F0 inferred, not run

sub_B0_D9F3:                    ; from 01930
  D9F3  A9 B4     LDA #$B4                      ; 019F3 ×0
  D9F5  D0 06     BNE loc_B0_D9FD               ; 019F5 ×0

sub_B0_D9F7:                    ; from 01845
  D9F7  A9 C0     LDA #$C0                      ; 019F7 ×4020
  D9F9  D0 02     BNE loc_B0_D9FD               ; 019F9 ×4020

sub_B0_D9FB:                    ; from 0186a 0190d
  D9FB  A9 80     LDA #$80                      ; 019FB ×0

loc_B0_D9FD:                    ; from 019f9
  D9FD  18        CLC                           ; 019FD ×4020
  D9FE  6D 2D 03  ADC $032D                     ; 019FE ×4020
  DA01  8D 2D 03  STA $032D                     ; 01A01 ×4020
  DA04  60        RTS                           ; 01A04 ×4020

sub_B0_DA05:                    ; from 01814 0188d 01997 01951 03588
  DA05  A5 69     LDA $69                       ; 01A05 ×19039
  DA07  D0 06     BNE loc_B0_DA0F               ; 01A07 ×19039
  DA09  A5 68     LDA $68                       ; 01A09 ×0
  DA0B  C9 C0     CMP #$C0                      ; 01A0B ×0
  DA0D  90 01     BCC $DA10                     ; 01A0D ×0

loc_B0_DA0F:                    ; from 01a07
  DA0F  38        SEC                           ; 01A0F ×19039
  DA10  60        RTS                           ; 01A10 ×19039

sub_B0_DA11:                    ; from 02540 029ea 02f97 02c52 0349a
  DA11  AD 8E 03  LDA $038E                     ; 01A11 ×19039
  DA14  F0 03     BEQ loc_B0_DA19               ; 01A14 ×19039
  DA16  4C 01 DB  JMP loc_B0_DB01               ; 01A16 ×25

loc_B0_DA19:                    ; from 01a14
  DA19  A5 CD     LDA $CD                       ; 01A19 ×19014
  DA1B  F0 03     BEQ loc_B0_DA20               ; 01A1B ×19014
  DA1D  4C 31 DB  JMP loc_B0_DB31               ; 01A1D ×889

loc_B0_DA20:                    ; from 01a1b
  DA20  A5 DF     LDA $DF                       ; 01A20 ×18125
  DA22  D0 4D     BNE loc_B0_DA71               ; 01A22 ×18125
  DA24  A5 0D     LDA $0D                       ; 01A24 ×5789
  DA26  29 C0     AND #$C0                      ; 01A26 ×5789
  DA28  D0 03     BNE loc_B0_DA2D               ; 01A28 ×5789
  DA2A  4C FD DA  JMP loc_B0_DAFD               ; 01A2A ×5593

loc_B0_DA2D:                    ; from 01a28
  DA2D  A9 01     LDA #$01                      ; 01A2D ×196
  DA2F  8D 13 03  STA $0313                     ; 01A2F ×196
  DA32  8D 1F 03  STA $031F                     ; 01A32 ×196
  DA35  A9 02     LDA #$02                      ; 01A35 ×196
  DA37  20 2D CD  JSR sub_B0_CD2D               ; 01A37 ×196
  DA3A  F0 02     BEQ loc_B0_DA3E               ; 01A3A ×196
  DA3C  A9 03     LDA #$03                      ; 01A3C ×42

loc_B0_DA3E:                    ; from 01a3a
  DA3E  20 0D F8  JSR sub_B0_F80D               ; 01A3E ×196
  DA41  A5 64     LDA $64                       ; 01A41 ×196
  DA43  0A        ASL A                         ; 01A43 ×196
  DA44  A8        TAY                           ; 01A44 ×196
  DA45  B9 AA DB  LDA $DBAA,Y                   ; 01A45 ×196
  DA48  8D A2 03  STA $03A2                     ; 01A48 ×196
  DA4B  B9 AB DB  LDA $DBAB,Y                   ; 01A4B ×196
  DA4E  8D A0 03  STA $03A0                     ; 01A4E ×196
  DA51  A5 73     LDA $73                       ; 01A51 ×196
  DA53  8D A3 03  STA $03A3                     ; 01A53 ×196
  DA56  20 28 CD  JSR sub_B0_CD28               ; 01A56 ×196
  DA59  D0 05     BNE loc_B0_DA60               ; 01A59 ×196
  DA5B  A5 83     LDA $83                       ; 01A5B ×154
  DA5D  8D A7 03  STA $03A7                     ; 01A5D ×154

loc_B0_DA60:                    ; from 01a59
  DA60  A9 00     LDA #$00                      ; 01A60 ×196
  DA62  8D A1 03  STA $03A1                     ; 01A62 ×196
  DA65  E6 CB     INC $CB                       ; 01A65 ×196
  DA67  A5 0C     LDA $0C                       ; 01A67 ×196
  DA69  29 03     AND #$03                      ; 01A69 ×196
  DA6B  85 DE     STA $DE                       ; 01A6B ×196
  DA6D  E6 DF     INC $DF                       ; 01A6D ×196
  DA6F  D0 05     BNE loc_B0_DA76               ; 01A6F ×196

loc_B0_DA71:                    ; from 01a22
  DA71  A9 00     LDA #$00                      ; 01A71 ×12336
  DA73  8D 1F 03  STA $031F                     ; 01A73 ×12336

loc_B0_DA76:                    ; from 01a6f
  DA76  AD A1 03  LDA $03A1                     ; 01A76 ×12532
  DA79  38        SEC                           ; 01A79 ×12532
  DA7A  ED A0 03  SBC $03A0                     ; 01A7A ×12532
  DA7D  8D A1 03  STA $03A1                     ; 01A7D ×12532
  DA80  AD A2 03  LDA $03A2                     ; 01A80 ×12532
  DA83  E9 00     SBC #$00                      ; 01A83 ×12532
  DA85  8D A2 03  STA $03A2                     ; 01A85 ×12532
  DA88  10 29     BPL loc_B0_DAB3               ; 01A88 ×12532
  DA8A  A9 00     LDA #$00                      ; 01A8A ×5163
  DA8C  85 CB     STA $CB                       ; 01A8C ×5163
  DA8E  85 BE     STA $BE                       ; 01A8E ×5163
  DA90  A5 73     LDA $73                       ; 01A90 ×5163
  DA92  A4 63     LDY $63                       ; 01A92 ×5163
  DA94  C0 03     CPY #$03                      ; 01A94 ×5163
  DA96  F0 04     BEQ $DA9C                     ; 01A96 ×5163
  DA98  C0 04     CPY #$04                      ; 01A98 ×5163
  DA9A  D0 12     BNE loc_B0_DAAE               ; 01A9A ×5163
  DA9C  A4 B8     LDY $B8                       ; 01A9C ×167
  DA9E  D0 0E     BNE loc_B0_DAAE               ; 01A9E ×167
  DAA0  C9 C0     CMP #$C0                      ; 01AA0 ×0
  DAA2  90 0F     BCC loc_B0_DAB3               ; 01AA2 ×0
  DAA4  A0 02     LDY #$02                      ; 01AA4 ×0
  DAA6  84 0F     STY $0F                       ; 01AA6 ×0
  DAA8  20 3B CA  JSR sub_B0_CA3B               ; 01AA8 ×0
  DAAB  4C 95 DC  JMP $DC95                     ; 01AAB ×0

loc_B0_DAAE:                    ; from 01a9a 01a9e
  DAAE  CD A3 03  CMP $03A3                     ; 01AAE ×5163
  DAB1  B0 31     BCS loc_B0_DAE4               ; 01AB1 ×5163

loc_B0_DAB3:                    ; from 01a88
  DAB3  A5 73     LDA $73                       ; 01AB3 ×12379
  DAB5  38        SEC                           ; 01AB5 ×12379
  DAB6  ED A2 03  SBC $03A2                     ; 01AB6 ×12379
  DAB9  85 73     STA $73                       ; 01AB9 ×12379
  DABB  20 28 CD  JSR sub_B0_CD28               ; 01ABB ×12379
  DABE  D0 12     BNE loc_B0_DAD2               ; 01ABE ×12379
  DAC0  A9 00     LDA #$00                      ; 01AC0 ×9812
  DAC2  85 76     STA $76                       ; 01AC2 ×9812
  DAC4  A5 83     LDA $83                       ; 01AC4 ×9812
  DAC6  38        SEC                           ; 01AC6 ×9812
  DAC7  ED A2 03  SBC $03A2                     ; 01AC7 ×9812
  DACA  85 83     STA $83                       ; 01ACA ×9812
  DACC  A9 1C     LDA #$1C                      ; 01ACC ×9812
  DACE  85 86     STA $86                       ; 01ACE ×9812
  DAD0  D0 2D     BNE loc_B0_DAFF               ; 01AD0 ×9812

loc_B0_DAD2:                    ; from 01abe
  DAD2  A5 64     LDA $64                       ; 01AD2 ×2567
  DAD4  C9 03     CMP #$03                      ; 01AD4 ×2567
  DAD6  F0 07     BEQ loc_B0_DADF               ; 01AD6 ×2567
  DAD8  A9 02     LDA #$02                      ; 01AD8 ×2004

loc_B0_DADA:                    ; from 01ae1
  DADA  85 76     STA $76                       ; 01ADA ×2567
  DADC  4C FF DA  JMP loc_B0_DAFF               ; 01ADC ×2567

loc_B0_DADF:                    ; from 01ad6
  DADF  A9 02     LDA #$02                      ; 01ADF ×563
  DAE1  4C DA DA  JMP loc_B0_DADA               ; 01AE1 ×563

loc_B0_DAE4:                    ; from 01ab1
  DAE4  AD A3 03  LDA $03A3                     ; 01AE4 ×153
  DAE7  85 73     STA $73                       ; 01AE7 ×153
  DAE9  A9 01     LDA #$01                      ; 01AE9 ×153
  DAEB  85 76     STA $76                       ; 01AEB ×153
  DAED  20 28 CD  JSR sub_B0_CD28               ; 01AED ×153
  DAF0  D0 05     BNE loc_B0_DAF7               ; 01AF0 ×153
  DAF2  AD A7 03  LDA $03A7                     ; 01AF2 ×126
  DAF5  85 83     STA $83                       ; 01AF5 ×126

loc_B0_DAF7:                    ; from 01af0
  DAF7  A0 00     LDY #$00                      ; 01AF7 ×153
  DAF9  84 DE     STY $DE                       ; 01AF9 ×153
  DAFB  84 DF     STY $DF                       ; 01AFB ×153

loc_B0_DAFD:                    ; from 01a2a
  DAFD  18        CLC                           ; 01AFD ×5746
  DAFE  60        RTS                           ; 01AFE ×5746

loc_B0_DAFF:                    ; from 01ad0 01adc
  DAFF  38        SEC                           ; 01AFF ×12379
  DB00  60        RTS                           ; 01B00 ×12379

loc_B0_DB01:                    ; from 01a16
  DB01  EE 20 03  INC $0320                     ; 01B01 ×25
  DB04  A9 01     LDA #$01                      ; 01B04 ×25
  DB06  20 0D F8  JSR sub_B0_F80D               ; 01B06 ×25
  DB09  A0 00     LDY #$00                      ; 01B09 ×25
  DB0B  A5 64     LDA $64                       ; 01B0B ×25
  DB0D  C9 03     CMP #$03                      ; 01B0D ×25
  DB0F  F0 02     BEQ loc_B0_DB13               ; 01B0F ×25
  DB11  A0 02     LDY #$02                      ; 01B11 ×0

loc_B0_DB13:                    ; from 01b0f
  DB13  B9 B2 DB  LDA $DBB2,Y                   ; 01B13 ×25
  DB16  8D A6 03  STA $03A6                     ; 01B16 ×25
  DB19  B9 B3 DB  LDA $DBB3,Y                   ; 01B19 ×25
  DB1C  8D A4 03  STA $03A4                     ; 01B1C ×25
  DB1F  A5 73     LDA $73                       ; 01B1F ×25
  DB21  8D A7 03  STA $03A7                     ; 01B21 ×25
  DB24  A0 00     LDY #$00                      ; 01B24 ×25
  DB26  8C A5 03  STY $03A5                     ; 01B26 ×25
  DB29  C8        INY                           ; 01B29 ×25
  DB2A  8C 88 03  STY $0388                     ; 01B2A ×25
  DB2D  E6 CD     INC $CD                       ; 01B2D ×25
  DB2F  D0 05     BNE loc_B0_DB36               ; 01B2F ×25

loc_B0_DB31:                    ; from 01a1d
  DB31  A9 00     LDA #$00                      ; 01B31 ×889
  DB33  8D 20 03  STA $0320                     ; 01B33 ×889

loc_B0_DB36:                    ; from 01b2f
  DB36  A9 00     LDA #$00                      ; 01B36 ×914
  DB38  8D 8E 03  STA $038E                     ; 01B38 ×914
  DB3B  20 97 DB  JSR sub_B0_DB97               ; 01B3B ×914
  DB3E  10 1B     BPL loc_B0_DB5B               ; 01B3E ×914
  DB40  A9 00     LDA #$00                      ; 01B40 ×414
  DB42  8D 88 03  STA $0388                     ; 01B42 ×414
  DB45  A5 63     LDA $63                       ; 01B45 ×414
  DB47  C9 05     CMP #$05                      ; 01B47 ×414
  DB49  F0 10     BEQ loc_B0_DB5B               ; 01B49 ×414
  DB4B  A5 73     LDA $73                       ; 01B4B ×414
  DB4D  CD A7 03  CMP $03A7                     ; 01B4D ×414
  DB50  90 04     BCC loc_B0_DB56               ; 01B50 ×414
  DB52  A0 01     LDY #$01                      ; 01B52 ×114
  DB54  84 76     STY $76                       ; 01B54 ×114

loc_B0_DB56:                    ; from 01b50
  DB56  CD A3 03  CMP $03A3                     ; 01B56 ×414
  DB59  B0 27     BCS loc_B0_DB82               ; 01B59 ×414

loc_B0_DB5B:                    ; from 01b3e
  DB5B  A5 73     LDA $73                       ; 01B5B ×905
  DB5D  38        SEC                           ; 01B5D ×905
  DB5E  ED A6 03  SBC $03A6                     ; 01B5E ×905
  DB61  85 73     STA $73                       ; 01B61 ×905
  DB63  A4 63     LDY $63                       ; 01B63 ×905
  DB65  C0 05     CPY #$05                      ; 01B65 ×905
  DB67  F0 0B     BEQ $DB74                     ; 01B67 ×905
  DB69  AD 88 03  LDA $0388                     ; 01B69 ×905
  DB6C  F0 12     BEQ loc_B0_DB80               ; 01B6C ×905
  DB6E  A9 02     LDA #$02                      ; 01B6E ×500
  DB70  85 76     STA $76                       ; 01B70 ×500
  DB72  F0 0C     BEQ loc_B0_DB80               ; 01B72 ×500
  DB74  A9 02     LDA #$02                      ; 01B74 ×500
  DB76  A4 73     LDY $73                       ; 01B76 ×500
  DB78  C0 70     CPY #$70                      ; 01B78 ×500
  DB7A  90 02     BCC loc_B0_DB7E               ; 01B7A ×500
  DB7C  69 01     ADC #$01                      ; 01B7C ×360

loc_B0_DB7E:                    ; from 01b7a
  DB7E  85 76     STA $76                       ; 01B7E ×500

loc_B0_DB80:                    ; from 01b6c
  DB80  38        SEC                           ; 01B80 ×905
  DB81  60        RTS                           ; 01B81 ×905

loc_B0_DB82:                    ; from 01b59
  DB82  AD A3 03  LDA $03A3                     ; 01B82 ×9
  DB85  85 73     STA $73                       ; 01B85 ×9

sub_B0_DB87:                    ; from 03641
  DB87  A9 00     LDA #$00                      ; 01B87 ×9
  DB89  85 DF     STA $DF                       ; 01B89 ×9
  DB8B  85 DE     STA $DE                       ; 01B8B ×9
  DB8D  85 CD     STA $CD                       ; 01B8D ×9
  DB8F  8D 86 03  STA $0386                     ; 01B8F ×9
  DB92  8D 23 03  STA $0323                     ; 01B92 ×9
  DB95  18        CLC                           ; 01B95 ×9
  DB96  60        RTS                           ; 01B96 ×9

sub_B0_DB97:                    ; from 01b3b
  DB97  AD A5 03  LDA $03A5                     ; 01B97 ×914
  DB9A  38        SEC                           ; 01B9A ×914
  DB9B  ED A4 03  SBC $03A4                     ; 01B9B ×914
  DB9E  8D A5 03  STA $03A5                     ; 01B9E ×914
  DBA1  AD A6 03  LDA $03A6                     ; 01BA1 ×914
  DBA4  E9 00     SBC #$00                      ; 01BA4 ×914
  DBA6  8D A6 03  STA $03A6                     ; 01BA6 ×914
  DBA9  60        RTS                           ; 01BA9 ×914
  DBAA  .byte 04 1A 04 1A                                       ; 01BAA data, read by 01a45 01a4b
  DBAE  .byte 04 1C                                             ; 01BAE
  DBB0  .byte 04 1C 03 25                                       ; 01BB0 data, read by 01a45 01a4b 01b13 01b19
  DBB4  .byte 06 25                                             ; 01BB4

sub_B0_DBB6:                    ; from 02545 029ef 02fa9 02c57 00114
  DBB6  A6 CA     LDX $CA                       ; 01BB6 ×7223
  DBB8  A4 64     LDY $64                       ; 01BB8 ×7223
  DBBA  C0 03     CPY #$03                      ; 01BBA ×7223
  DBBC  F0 10     BEQ loc_B0_DBCE               ; 01BBC ×7223
  DBBE  8A        TXA                           ; 01BBE ×5082
  DBBF  29 03     AND #$03                      ; 01BBF ×5082
  DBC1  F0 75     BEQ sub_B0_DC38               ; 01BC1 ×5082
  DBC3  AD 13 03  LDA $0313                     ; 01BC3 ×2594
  DBC6  D0 12     BNE loc_B0_DBDA               ; 01BC6 ×2594
  DBC8  BD 52 DC  LDA $DC52,X                   ; 01BC8 ×2471
  DBCB  4C D1 DB  JMP loc_B0_DBD1               ; 01BCB ×2471

loc_B0_DBCE:                    ; from 01bbc
  DBCE  BD 55 DC  LDA $DC55,X                   ; 01BCE ×2141

loc_B0_DBD1:                    ; from 01bcb
  DBD1  18        CLC                           ; 01BD1 ×4612
  DBD2  6D 36 03  ADC $0336                     ; 01BD2 ×4612
  DBD5  8D 36 03  STA $0336                     ; 01BD5 ×4612
  DBD8  90 52     BCC loc_B0_DC2C               ; 01BD8 ×4612

loc_B0_DBDA:                    ; from 01bc6
  DBDA  A9 00     LDA #$00                      ; 01BDA ×639
  DBDC  8D 13 03  STA $0313                     ; 01BDC ×639
  DBDF  C0 03     CPY #$03                      ; 01BDF ×639
  DBE1  F0 04     BEQ loc_B0_DBE7               ; 01BE1 ×639
  DBE3  E0 02     CPX #$02                      ; 01BE3 ×426
  DBE5  F0 46     BEQ loc_B0_DC2D               ; 01BE5 ×426

loc_B0_DBE7:                    ; from 01be1
  DBE7  EE 8B 03  INC $038B                     ; 01BE7 ×625
  DBEA  AD 8B 03  LDA $038B                     ; 01BEA ×625
  DBED  29 03     AND #$03                      ; 01BED ×625
  DBEF  49 03     EOR #$03                      ; 01BEF ×625
  DBF1  D0 03     BNE loc_B0_DBF6               ; 01BF1 ×625
  DBF3  8D 8B 03  STA $038B                     ; 01BF3 ×207

loc_B0_DBF6:                    ; from 01bf1 01c35
  DBF6  AA        TAX                           ; 01BF6 ×639

loc_B0_DBF7:                    ; from 01c43
  DBF7  C0 01     CPY #$01                      ; 01BF7 ×769
  DBF9  F0 2C     BEQ loc_B0_DC27               ; 01BF9 ×769
  DBFB  C0 02     CPY #$02                      ; 01BFB ×362
  DBFD  F0 28     BEQ loc_B0_DC27               ; 01BFD ×362
  DBFF  C0 04     CPY #$04                      ; 01BFF ×362
  DC01  F0 24     BEQ loc_B0_DC27               ; 01C01 ×362
  DC03  A5 DF     LDA $DF                       ; 01C03 ×362
  DC05  05 0F     ORA $0F                       ; 01C05 ×362
  DC07  D0 0E     BNE loc_B0_DC17               ; 01C07 ×362
  DC09  A5 00     LDA $00                       ; 01C09 ×218
  DC0B  C9 08     CMP #$08                      ; 01C0B ×218
  DC0D  F0 08     BEQ loc_B0_DC17               ; 01C0D ×218
  DC0F  A5 76     LDA $76                       ; 01C0F ×218
  DC11  49 01     EOR #$01                      ; 01C11 ×218
  DC13  29 01     AND #$01                      ; 01C13 ×218
  DC15  85 76     STA $76                       ; 01C15 ×218

loc_B0_DC17:                    ; from 01c07
  DC17  C0 03     CPY #$03                      ; 01C17 ×362
  DC19  F0 06     BEQ loc_B0_DC21               ; 01C19 ×362

loc_B0_DC1B:                    ; from 01c47
  DC1B  BD 49 DC  LDA $DC49,X                   ; 01C1B ×2507
  DC1E  85 86     STA $86                       ; 01C1E ×2507
  DC20  60        RTS                           ; 01C20 ×2507

loc_B0_DC21:                    ; from 01c19
  DC21  BD 4C DC  LDA $DC4C,X                   ; 01C21 ×213
  DC24  85 86     STA $86                       ; 01C24 ×213
  DC26  60        RTS                           ; 01C26 ×213

loc_B0_DC27:                    ; from 01bf9
  DC27  BD 4F DC  LDA $DC4F,X                   ; 01C27 ×407
  DC2A  85 76     STA $76                       ; 01C2A ×407

loc_B0_DC2C:                    ; from 01bd8
  DC2C  60        RTS                           ; 01C2C ×4503

loc_B0_DC2D:                    ; from 01be5
  DC2D  EE 8C 03  INC $038C                     ; 01C2D ×14
  DC30  AD 8C 03  LDA $038C                     ; 01C30 ×14
  DC33  29 01     AND #$01                      ; 01C33 ×14
  DC35  4C F6 DB  JMP loc_B0_DBF6               ; 01C35 ×14

sub_B0_DC38:                    ; from 01bc1 00e54
  DC38  A2 01     LDX #$01                      ; 01C38 ×2488
  DC3A  8E 13 03  STX $0313                     ; 01C3A ×2488
  DC3D  A2 00     LDX #$00                      ; 01C3D ×2488
  DC3F  A4 64     LDY $64                       ; 01C3F ×2488
  DC41  C0 00     CPY #$00                      ; 01C41 ×2488
  DC43  D0 B2     BNE loc_B0_DBF7               ; 01C43 ×2488
  DC45  86 76     STX $76                       ; 01C45 ×2358
  DC47  F0 D2     BEQ loc_B0_DC1B               ; 01C47 ×2358
  DC49  .byte 1A 1B 1C 10 11 12 03 04 05                        ; 01C49 data, read by 01c1b 01c21 01c27
  DC52  .byte 00                                                ; 01C52
  DC53  .byte 20 10 20                                          ; 01C53 data, read by 01bc8 01bce
  DC56  .byte 30                                                ; 01C56
  DC57  .byte 10                                                ; 01C57 data, read by 01bce

sub_B0_DC58:                    ; from 02c49 02fac
  DC58  A6 0F     LDX $0F                       ; 01C58 ×0
  DC5A  CA        DEX                           ; 01C5A ×0
  DC5B  F0 3E     BEQ $DC9B                     ; 01C5B ×0
  DC5D  CA        DEX                           ; 01C5D ×0
  DC5E  F0 0C     BEQ $DC6C                     ; 01C5E ×0
  DC60  CA        DEX                           ; 01C60 ×0
  DC61  F0 02     BEQ $DC65                     ; 01C61 ×0
  DC63  D0 4E     BNE $DCB3                     ; 01C63 ×0
  DC65  20 25 CA  JSR sub_B0_CA25               ; 01C65 ×0
  DC68  90 56     BCC loc_B0_DCC0               ; 01C68 ×0
  DC6A  B0 5A     BCS $DCC6                     ; 01C6A ×0
  DC6C  A6 64     LDX $64                       ; 01C6C ×0
  DC6E  E0 03     CPX #$03                      ; 01C6E ×0
  DC70  F0 18     BEQ $DC8A                     ; 01C70 ×0
  DC72  E0 01     CPX #$01                      ; 01C72 ×0
  DC74  D0 14     BNE $DC8A                     ; 01C74 ×0
  DC76  AD 14 03  LDA $0314                     ; 01C76 ×0
  DC79  F0 0F     BEQ $DC8A                     ; 01C79 ×0
  DC7B  20 25 CA  JSR sub_B0_CA25               ; 01C7B ×0
  DC7E  90 40     BCC loc_B0_DCC0               ; 01C7E ×0
  DC80  A9 08     LDA #$08                      ; 01C80 ×0
  DC82  20 0D F8  JSR sub_B0_F80D               ; 01C82 ×0
  DC85  A9 00     LDA #$00                      ; 01C85 ×0
  DC87  8D 14 03  STA $0314                     ; 01C87 ×0
  DC8A  A5 73     LDA $73                       ; 01C8A ×0
  DC8C  18        CLC                           ; 01C8C ×0
  DC8D  69 02     ADC #$02                      ; 01C8D ×0
  DC8F  85 73     STA $73                       ; 01C8F ×0
  DC91  C9 C0     CMP #$C0                      ; 01C91 ×0
  DC93  90 2B     BCC loc_B0_DCC0               ; 01C93 ×0
  DC95  A9 09     LDA #$09                      ; 01C95 ×0
  DC97  85 76     STA $76                       ; 01C97 ×0
  DC99  D0 44     BNE $DCDF                     ; 01C99 ×0
  DC9B  20 3B CA  JSR sub_B0_CA3B               ; 01C9B ×0
  DC9E  EE 14 03  INC $0314                     ; 01C9E ×0
  DCA1  A5 64     LDA $64                       ; 01CA1 ×0
  DCA3  C9 03     CMP #$03                      ; 01CA3 ×0
  DCA5  D0 38     BNE $DCDF                     ; 01CA5 ×0
  DCA7  A9 08     LDA #$08                      ; 01CA7 ×0
  DCA9  D0 3B     BNE loc_B0_DCE6               ; 01CA9 ×0

loc_B0_DCAB:                    ; from 0253a
  DCAB  A6 0F     LDX $0F                       ; 01CAB ×7055
  DCAD  CA        DEX                           ; 01CAD ×7055
  DCAE  F0 24     BEQ loc_B0_DCD4               ; 01CAE ×7055
  DCB0  CA        DEX                           ; 01CB0 ×7021
  DCB1  F0 0E     BEQ loc_B0_DCC1               ; 01CB1 ×7021
  DCB3  20 31 CA  JSR sub_B0_CA31               ; 01CB3 ×5731
  DCB6  90 08     BCC loc_B0_DCC0               ; 01CB6 ×5731
  DCB8  A9 00     LDA #$00                      ; 01CB8 ×33
  DCBA  85 0F     STA $0F                       ; 01CBA ×33
  DCBC  A9 01     LDA #$01                      ; 01CBC ×33
  DCBE  85 0A     STA $0A                       ; 01CBE ×33

loc_B0_DCC0:                    ; from 01cb6 01cc4
  DCC0  60        RTS                           ; 01CC0 ×6987

loc_B0_DCC1:                    ; from 01cb1
  DCC1  20 25 CA  JSR sub_B0_CA25               ; 01CC1 ×1290
  DCC4  90 FA     BCC loc_B0_DCC0               ; 01CC4 ×1290
  DCC6  A9 0B     LDA #$0B                      ; 01CC6 ×34
  DCC8  20 0D F8  JSR sub_B0_F80D               ; 01CC8 ×34
  DCCB  A9 4C     LDA #$4C                      ; 01CCB ×34
  DCCD  20 0D F8  JSR sub_B0_F80D               ; 01CCD ×34
  DCD0  A9 8D     LDA #$8D                      ; 01CD0 ×34
  DCD2  D0 12     BNE loc_B0_DCE6               ; 01CD2 ×34

loc_B0_DCD4:                    ; from 01cae
  DCD4  A9 1E     LDA #$1E                      ; 01CD4 ×34
  DCD6  85 76     STA $76                       ; 01CD6 ×34
  DCD8  A9 1D     LDA #$1D                      ; 01CD8 ×34
  DCDA  85 86     STA $86                       ; 01CDA ×34
  DCDC  20 3B CA  JSR sub_B0_CA3B               ; 01CDC ×34
  DCDF  A9 09     LDA #$09                      ; 01CDF ×34
  DCE1  20 0D F8  JSR sub_B0_F80D               ; 01CE1 ×34
  DCE4  A9 CA     LDA #$CA                      ; 01CE4 ×34

loc_B0_DCE6:                    ; from 01cd2
  DCE6  20 0D F8  JSR sub_B0_F80D               ; 01CE6 ×68
  DCE9  E6 0F     INC $0F                       ; 01CE9 ×68
  DCEB  A9 02     LDA #$02                      ; 01CEB ×68
  DCED  85 CC     STA $CC                       ; 01CED ×68
  DCEF  60        RTS                           ; 01CEF ×68
  DCF0  .byte 00 50 02 00 00 66 08 00 76 10 08 51 00 08 67 08   ; 01CF0 data, read by 010b3 0110d 010bf 01145 (+2)
  DD00  .byte 08 77 10 00 07 02 00 00 6C 08 00 7C 10 08 09 00   ; 01D00 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD10  .byte 08 6D 08 08 7D 10 00 5E 02 00 00 6E 08 00 7E 10   ; 01D10 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD20  .byte 08 5F 00 08 6F 08 08 7F 10 00 50 02 00 00 60 08   ; 01D20 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD30  .byte 00 70 10 08 51 00 08 61 08 08 71 10 00 50 02 00   ; 01D30 data, read by 010b3 0110d 010bf 010e5 (+2)
  DD40  .byte 00 62 08 00 72 10 08 51 00 08 63 08 08 73 10 00   ; 01D40 data, read by 010b3 0110d 010bf 010e5
  DD50  .byte 50 02 00 00 64 08 00 74 10 08 51 00 08 65 08 08   ; 01D50 data, read by 010bf 01145 0114e 010e5 (+2)
  DD60  .byte 75 10                                             ; 01D60 data, read by 010bf 010e5
  DD62  .byte 00 0E 02 00 00 1E 08 00 2E 10 08 0F 00 08 1F 08   ; 01D62
  DD72  .byte 08 2F 10 00 3C 02 00 00 4C 08 00 5C 10 08 3D 00   ; 01D72
  DD82  .byte 08 4D 08 08 5D 10 00 0E 02 00 00 3E 08 00 4E 10   ; 01D82
  DD92  .byte 08 0F 00 08 3F 08 08 4F 10 00 58 02 00 00 68 08   ; 01D92
  DDA2  .byte 00 78 10 08 59 00 08 69 08 08 79 10               ; 01DA2
  DDAE  .byte 08 02 00 17 FF 03 00 08 0D 00 E8 04 08 03 F0 02   ; 01DAE data, read by 0104b 01078 010b3 0110d (+4)
  DDBE  .byte 18 03 F8 00 17 03 08 00 17 03 10 02 18 83 28 04   ; 01DBE data, read by 010bf 010d7 010e5 010b3 (+1)
  DDCE  .byte 08 83 30 00 17 83 18 00 17 83 20 08 02 00 19 FF   ; 01DCE data, read by 010bf 010d7 010e5 010b3 (+4)
  DDDE  .byte 03 00 08 0D 00 E8 04 0A 03 F0 02 1A 03 F8 00 19   ; 01DDE data, read by 010d7 010e5 010b3 0110d (+1)
  DDEE  .byte 03 08 00 19 03 10 02 1A 83 28 04 0A 83 30 00 19   ; 01DEE data, read by 010d7 010e5 010b3 0110d (+1)
  DDFE  .byte 83 18 00 19 83 20 07 02 00 08 FF 43 00 02 18 43   ; 01DFE data, read by 010d7 010e5 010b3 0110d (+4)
  DE0E  .byte 08 04 17 43 10 04 17 43 18 04 17 43 20 02 18 C3   ; 01E0E data, read by 010e5 010b3 0110d 010bf (+1)
  DE1E  .byte 38 00 08 C3 40 04 17 C3 28 04 17 C3 30 07 02 00   ; 01E1E data, read by 010e5 010b3 0110d 010bf (+3)
  DE2E  .byte 0A FF 43 00 02 1A 43 08 04 19 43 10 04 19 43 18   ; 01E2E data, read by 010bf 01145 010d7 010e5 (+2)
  DE3E  .byte 04 19 43 20 02 1A C3 38 00 0A C3 40 04 19 C3 28   ; 01E3E data, read by 010b3 0110d 010bf 010d7 (+1)
  DE4E  .byte 04 19 C3 30 00 CA 01 00 00 DA 08 00 00 10 08 CB   ; 01E4E data, read by 010b3 0110d 010bf 010d7 (+3)
  DE5E  .byte 00 08 DB 08 08 EB 10 10 CC 00 10 DC 08 10 EC 10   ; 01E5E data, read by 010e5 010b3 0110d 010bf
  DE6E  .byte 18 00 F8 18 DD 00 18 ED 08 18 FD 10 20 BD F8 20   ; 01E6E data, read by 010b3 0110d 010bf 010e5
  DE7E  .byte CD 00 20 DE 08 20 EE 10 28 BE F8 28 CE 00 00 D5   ; 01E7E data, read by 010bf 010e5 010b3 0110d
  DE8E  .byte 01 00 00 E5 08 00 F5 10 08 D6 00 08 E6 08 08 F6   ; 01E8E data, read by 01145 0114e 010e5 010b3 (+2)
  DE9E  .byte 10 10 D7 00 10 E7 08 10 F7 10 18 D9 F8 18 D8 00   ; 01E9E data, read by 010e5 010b3 0110d 010bf
  DEAE  .byte 18 E8 08 18 F8 10 20 B8 F8 20 C8 00 20 E9 08 20   ; 01EAE data, read by 010b3 0110d 010bf 010e5
  DEBE  .byte F9 10 28 B9 F8 28 C9 00 00 D0 01 00 00 E0 08 00   ; 01EBE data, read by 010bf 010e5 010b3 0110d (+2)
  DECE  .byte 00 10 08 D1 00 08 E1 08 08 F1 10 10 D2 00 10 E2   ; 01ECE data, read by 010bf 010e5 010b3 0110d
  DEDE  .byte 08 10 F2 10 18 C3 F8 18 D3 00 18 E3 08 18 00 10   ; 01EDE data, read by 010e5 010b3 0110d 010bf
  DEEE  .byte 20 C4 F8 20 D4 00 20 E4 08 20 F4 10 28 C5 F8 28   ; 01EEE data, read by 010b3 0110d 010bf 010e5
  DEFE  .byte C6 00 00 10 01 00 00 20 08 08 11 00 08 21 08 00   ; 01EFE data, read by 010bf 010e5 010b3 0110d (+2)
  DF0E  .byte 10 01 00 00 52 08 08 11 00 08 53 08 00 10 01 00   ; 01F0E data, read by 010bf 01145 0114e 010e5 (+2)
  DF1E  .byte 00 34 08 08 11 00 08 35 08                        ; 01F1E data, read by 010b3 0110d 010bf 010e5
  DF27  .byte 00 10 02 00 00 20 08 08 11 00 08 21 08 00 10 02   ; 01F27
  DF37  .byte 00 00 52 08 08 11 00 08 53 08 00 10 02 00 00 34   ; 01F37
  DF47  .byte 08 08 11 00 08 35 08 00 26 02 00 00 2C 08 08 1D   ; 01F47
  DF57  .byte 00 08 2D 08                                       ; 01F57
  DF5B  .byte 00 30 00 00 00 40 08 08 31 00 08 41 08 10 32 00   ; 01F5B data, read by 010b3 0110d 010bf 01145 (+2)
  DF6B  .byte 10 42 08 18 33 00 18 43 08 00 38 00 00 00 48 08   ; 01F6B data, read by 010b3 0110d 010bf 010e5 (+2)
  DF7B  .byte 08 39 00 08 49 08 10 3A 00 10 4A 08 18 3B 00 18   ; 01F7B data, read by 010b3 0110d 010bf 010e5
  DF8B  .byte 4B 08 00 44 00 00 00 54 08 08 45 00 08 55 08 10   ; 01F8B data, read by 010bf 010e5 010b3 0110d (+2)
  DF9B  .byte 46 00 10 56 08 18 47 00 18 57 08 00 8C 00 00 00   ; 01F9B data, read by 010bf 010e5 010b3 0110d (+2)
  DFAB  .byte 9C 08 08 8D 00 08 9D 08 10 8E 00 10 9E 08 18 8F   ; 01FAB data, read by 010bf 010e5 010b3 0110d
  DFBB  .byte 00 18 9F 08 00 04 02 00 00 14 08 00 24 10 08 05   ; 01FBB data, read by 010e5 010b3 0110d 010bf (+2)
  DFCB  .byte 00 08 15 08 08 25 10                              ; 01FCB data, read by 010e5 010b3 0110d 010bf
  DFD2  .byte 00 01 01 00 00 01 08 00 01 10 00 01 18 00 01 20   ; 01FD2
  DFE2  .byte 00 01 28 00 01 30 00 01 38 00 01 40 08 06 00 08   ; 01FE2
  DFF2  .byte 06 08 08 06 10 08 06 18 08 06 20 08 06 28 08 06   ; 01FF2
  E002  .byte 30 08 06 38 08 06 40 00 0B 02 00 00 1B 08 08 0C   ; 02002
  E012  .byte 00 08 1C 08 00 85 FF 03 00 00 86 03 08 00 85 83   ; 02012
  E022  .byte 10 08 88 03 00 08 87 03 08 08 88 83 10 10 85 43   ; 02022
  E032  .byte 00 10 86 43 08 10 85 C3 10 00 89 FF 03 00 00 96   ; 02032
  E042  .byte C3 08 00 97 C3 10 08 8A 03 00 08 95 03 08 08 8A   ; 02042
  E052  .byte C3 10 10 97 03 00 10 96 03 08 10 89 C3 10 00 97   ; 02052
  E062  .byte FF 43 00 00 96 43 08 00 89 83 10 08 8A 43 00 08   ; 02062
  E072  .byte 95 43 08 08 8A 83 10 10 89 43 00 10 96 83 08 10   ; 02072
  E082  .byte 97 83 10 00 F3 03 00 09 00 00 C0 03 00 F8 C1 00   ; 02082
  E092  .byte F0 C2 00 F0 F0 08 E8 C0 08 E0 C1 08 D8 C2 08 D8   ; 02092
  E0A2  .byte F0 10 D0 C0 10 07 00 00 FB 03 00 F8 FB 04 F0 FB   ; 020A2
  E0B2  .byte 08 E8 FB 0C E0 FB 10 D8 FB 14 D0 FB 18 06 00 00   ; 020B2
  E0C2  .byte B2 03 00 F8 B2 06 F0 B2 0C E8 B2 12 E0 B2 18 D8   ; 020C2
  E0D2  .byte B2 1E 05 00 00 B4 03 00 F8 B4 08 F0 B4 10 E8 B4   ; 020D2
  E0E2  .byte 18 E0 B4 20 06 00 00 B3 03 00 FA B3 08 F4 B3 10   ; 020E2
  E0F2  .byte EE B3 18 E8 B3 20 E2 B3 28 06 00 00 B7 03 00 FC   ; 020F2
  E102  .byte B7 08 F8 B7 10 F4 B7 18 F0 B7 20 EC B7 28 09 00   ; 02102
  E112  .byte 00 C7 03 00 00 BA 08 00 BB 10 F8 BC 10 F8 C7 18   ; 02112
  E122  .byte F8 BA 20 F8 BB 28 F0 BC 28 F0 C7 30 07 00 00 AC   ; 02122
  E132  .byte 03 00 00 8B 08 00 9B 10 FC AC 18 FC 8B 20 FC 9B   ; 02132
  E142  .byte 28 F8 AC 30 07 00 00 AB 03 00 00 AB 08 00 AB 10   ; 02142
  E152  .byte 00 AB 18 00 AB 20 00 AB 28 00 AB 30 07 00 00 AC   ; 02152
  E162  .byte 43 00 00 8B 08 00 9B 10 04 AC 18 04 8B 20 04 9B   ; 02162
  E172  .byte 28 08 AC 30 09 00 00 C7 43 00 00 BA 08 00 BB 10   ; 02172
  E182  .byte 08 BC 10 08 C7 18 08 BA 20 08 BB 28 10 BC 28 10   ; 02182
  E192  .byte C7 30 06 00 00 B7 43 00 04 B7 08 08 B7 10 0C B7   ; 02192
  E1A2  .byte 18 10 B7 20 14 B7 28 06 00 00 B3 43 00 06 B3 08   ; 021A2
  E1B2  .byte 0C B3 10 12 B3 18 18 B3 20 1E B3 28 05 00 00 B4   ; 021B2
  E1C2  .byte 43 00 08 B4 08 10 B4 10 18 B4 18 20 B4 20 06 00   ; 021C2
  E1D2  .byte 00 B2 43 00 08 B2 06 10 B2 0C 18 B2 12 20 B2 18   ; 021D2
  E1E2  .byte 28 B2 1E 07 00 00 FB 43 00 08 FB 04 10 FB 08 18   ; 021E2
  E1F2  .byte FB 0C 20 FB 10 28 FB 14 30 FB 18 09 00 00 C0 43   ; 021F2
  E202  .byte 00 08 C1 00 10 C2 00 10 F0 08 18 C0 08 20 C1 08   ; 02202
  E212  .byte 28 C2 08 28 F0 10 30 C0 10 00 82 FF 02 00 00 92   ; 02212
  E222  .byte 02 08 00 A2 02 10 08 83 02 00 08 93 02 08 08 A3   ; 02222
  E232  .byte 02 10 00 80 FF 02 00 00 90 02 08 00 A0 02 10 08   ; 02232
  E242  .byte 81 02 00 08 91 02 08 08 A1 02 10 01 00 00 05 0B   ; 02242
  E252  .byte 0C 0D 0E 0F 01 01 00 05 1B 1C 1D 1E 1F 01 02 00   ; 02252
  E262  .byte 05 1B 1C 1D 1E 1F 01 03 00 05 2B 2C 2D 2E 2F 00   ; 02262
  E272  .byte 01 00 00 04 67 EA EB EC 01 01 00 04 67 FA FB FC   ; 02272 data, read by 011f0 011f8 0121e 01262 (+1)
  E282  .byte 00 01 00 00 02 CA CB 01 01 00 03 DA DB DC 00 01   ; 02282 data, read by 011f0 011f8 0121e 01262 (+1)
  E292  .byte 00 00 02 67 BE 01 01 00 03 CD CE CF 00            ; 02292 data, read by 011f8 0121e 01262 01271 (+1)
  E29F  .byte 01 00 00 06 D4 D5 D6 D7 D5 D8 01 01 02 02 D2 E7   ; 0229F
  E2AF  .byte 01 02 02 02 D2 E7 00 02 00 00 02 62 72 02 00 01   ; 022AF
  E2BF  .byte 02 63 73 02 00 02 02 64 74 02 00 03 02 65 75 02   ; 022BF
  E2CF  .byte 00 04 02 66 76 00 02 00 00 03 81 91 A1 02 00 01   ; 022CF
  E2DF  .byte 03 82 92 A2 02 00 02 03 83 93 A3 02 00 FF 03 67   ; 022DF
  E2EF  .byte 67 67 02 00 03 03 67 67 67 00 02 00 00 03 67 94   ; 022EF
  E2FF  .byte 67 02 00 01 03 85 95 A5 02 00 02 03 86 96 A6 02   ; 022FF
  E30F  .byte 00 03 03 87 97 A7 02 00 04 03 67 67 67 00 02 00   ; 0230F
  E31F  .byte 00 03 88 98 A8 02 00 01 03 89 99 A9 02 00 02 03   ; 0231F
  E32F  .byte 8A 9A AA 02 00 03 03 8B 9B AB 00 02 00 00 03 8C   ; 0232F
  E33F  .byte 9C AC 02 00 01 03 8D 9D AD 02 00 02 03 8E 9E AE   ; 0233F
  E34F  .byte 02 00 03 03 67 9F 67 02 00 FF 03 67 67 67 00 02   ; 0234F
  E35F  .byte 00 00 02 E2 F2 02 00 01 02 E2 F2 00 02 00 00 02   ; 0235F
  E36F  .byte E4 F4 02 00 01 02 E4 F4 00 01 00 00 04 E2 E3 E3   ; 0236F
  E37F  .byte E2 01 01 00 04 F2 F3 F3 F2 00 01 00 00 04 E4 E5   ; 0237F
  E38F  .byte E5 E4 01 01 00 04 F4 F3 F3 F4 00                  ; 0238F
  E39A  .byte 01 00 00 06 E2 E3 E3 E3 E3 E2 01 01 00 06 F2 F3   ; 0239A data, read by 011f0 011f8 0121e 01262 (+1)
  E3AA  .byte F3 F3 F3 F2 00 01 00 00 06 E4 E5 E5 E5 E5 E4 01   ; 023AA data, read by 01271 011f0 011f8 0121e (+1)
  E3BA  .byte 01 00 06 F4 F3 F3 F3 F3 F4 00 57 0A 5F 3C 3D 3E   ; 023BA data, read by 011f8 0121e 01262 01271 (+4)
  E3CA  .byte 3F 57 12 5F 57 0A 5E 68 69 6A 6B 57 1C 5E 78 00   ; 023CA data, read by 0138b 0139c 013a0
  E3DA  .byte 00 7B 57 12 5E 61 60 61 60 61 60 61 60 61 60 6C   ; 023DA data, read by 0138b 0139c 013a0
  E3EA  .byte 6D 00 6F 61 60 61 60 61 60 61 60 61 60 61 60 61   ; 023EA data, read by 0138b
  E3FA  .byte 60 61 60 61 60 71 70 71 70 71 70 71 70 71 70 7C   ; 023FA data, read by 0138b
  E40A  .byte 7D 7E 7F 71 70 71 70 71 70 71 70 71 70 71 70 71   ; 0240A data, read by 0138b
  E41A  .byte 70 71 70 71 70 5A 57 20 A4 5A                     ; 0241A data, read by 0138b 0139c 013a0
  E424  .byte 57 20 E8 5A                                       ; 02424
  E428  .byte 57 08 00 57 08 A0 0F 0F 8B 2E 57 04 0F 57 08 55   ; 02428 data, read by 0138b 0139c 013a0
  E438  .byte 57 18 55 57 08 05 5A 57 08 00 57 08 A0 57 08 00   ; 02438 data, read by 0138b 0139c 013a0
  E448  .byte 57 08 AA 57 08 AA 0F 0F 8B 2E 57 04 0F 57 10 55   ; 02448 data, read by 0138b 0139c 013a0
  E458  .byte 5A 57 20 67 57 20 77 57 40 67 5A 57 20 67 57 20   ; 02458 data, read by 0138b 0139c 013a0
  E468  .byte 77 57 40 67 5A 57 40 67 57 20 77 57 60 67 5A 57   ; 02468 data, read by 013a0 0138b 0139c
  E478  .byte 20 79 57 20 77 57 20 18 57 20 67 5A               ; 02478 data, read by 0139c 013a0 0138b

sub_B0_E484:                    ; from 02557
  E484  A4 9B     LDY $9B                       ; 02484 ×12750
  E486  F0 2B     BEQ loc_B0_E4B3               ; 02486 ×12750
  E488  88        DEY                           ; 02488 inferred, not run
  E489  F0 29     BEQ $E4B4                     ; 02489 inferred, not run
  E48B  20 97 DB  JSR sub_B0_DB97               ; 0248B inferred, not run
  E48E  10 07     BPL $E497                     ; 0248E inferred, not run
  E490  AD 18 02  LDA $0218                     ; 02490 inferred, not run
  E493  C9 B0     CMP #$B0                      ; 02493 inferred, not run
  E495  B0 13     BCS $E4AA                     ; 02495 inferred, not run
  E497  AD 18 02  LDA $0218                     ; 02497 inferred, not run
  E49A  38        SEC                           ; 0249A inferred, not run
  E49B  ED A6 03  SBC $03A6                     ; 0249B inferred, not run
  E49E  8D 18 02  STA $0218                     ; 0249E inferred, not run
  E4A1  20 21 E5  JSR $E521                     ; 024A1 inferred, not run
  E4A4  20 09 E5  JSR $E509                     ; 024A4 inferred, not run
  E4A7  4C E0 E4  JMP $E4E0                     ; 024A7 inferred, not run
  E4AA  A9 F4     LDA #$F4                      ; 024AA inferred, not run
  E4AC  8D 18 02  STA $0218                     ; 024AC inferred, not run
  E4AF  A9 00     LDA #$00                      ; 024AF inferred, not run
  E4B1  85 9B     STA $9B                       ; 024B1 inferred, not run

loc_B0_E4B3:                    ; from 02486
  E4B3  60        RTS                           ; 024B3 ×12750
  E4B4  A5 DF     LDA $DF                       ; 024B4 inferred, not run
  E4B6  D0 FB     BNE loc_B0_E4B3               ; 024B6 inferred, not run
  E4B8  A9 04     LDA #$04                      ; 024B8 inferred, not run
  E4BA  20 0D F8  JSR sub_B0_F80D               ; 024BA inferred, not run
  E4BD  A9 04     LDA #$04                      ; 024BD inferred, not run
  E4BF  8D A6 03  STA $03A6                     ; 024BF inferred, not run
  E4C2  A9 13     LDA #$13                      ; 024C2 inferred, not run
  E4C4  8D A4 03  STA $03A4                     ; 024C4 inferred, not run
  E4C7  A9 00     LDA #$00                      ; 024C7 inferred, not run
  E4C9  8D A5 03  STA $03A5                     ; 024C9 inferred, not run
  E4CC  20 21 E5  JSR $E521                     ; 024CC inferred, not run
  E4CF  A0 02     LDY #$02                      ; 024CF inferred, not run
  E4D1  B9 DD E4  LDA $E4DD,Y                   ; 024D1 inferred, not run
  E4D4  99 18 02  STA $0218,Y                   ; 024D4 inferred, not run
  E4D7  88        DEY                           ; 024D7 inferred, not run
  E4D8  10 F7     BPL $E4D1                     ; 024D8 inferred, not run
  E4DA  E6 9B     INC $9B                       ; 024DA inferred, not run
  E4DC  60        RTS                           ; 024DC inferred, not run
  E4DD  .byte B0 02 03                                          ; 024DD
  E4E0  20 1F E9  JSR sub_B0_E91F               ; 024E0 inferred, not run
  E4E3  A9 08     LDA #$08                      ; 024E3 inferred, not run
  E4E5  8D C8 03  STA $03C8                     ; 024E5 inferred, not run
  E4E8  8D C9 03  STA $03C9                     ; 024E8 inferred, not run
  E4EB  AD 18 02  LDA $0218                     ; 024EB inferred, not run
  E4EE  8D CA 03  STA $03CA                     ; 024EE inferred, not run
  E4F1  AD 1B 02  LDA $021B                     ; 024F1 inferred, not run
  E4F4  8D CB 03  STA $03CB                     ; 024F4 inferred, not run
  E4F7  20 7E CC  JSR sub_B0_CC7E               ; 024F7 inferred, not run
  E4FA  B0 08     BCS $E504                     ; 024FA inferred, not run
  E4FC  20 03 E9  JSR sub_B0_E903               ; 024FC inferred, not run
  E4FF  20 7E CC  JSR sub_B0_CC7E               ; 024FF inferred, not run
  E502  90 AF     BCC loc_B0_E4B3               ; 02502 inferred, not run
  E504  EE 3F 03  INC $033F                     ; 02504 inferred, not run
  E507  D0 A1     BNE $E4AA                     ; 02507 inferred, not run
  E509  A5 09     LDA $09                       ; 02509 inferred, not run
  E50B  29 03     AND #$03                      ; 0250B inferred, not run
  E50D  D0 A4     BNE loc_B0_E4B3               ; 0250D inferred, not run
  E50F  E6 9D     INC $9D                       ; 0250F inferred, not run
  E511  A5 9D     LDA $9D                       ; 02511 inferred, not run
  E513  29 03     AND #$03                      ; 02513 inferred, not run
  E515  A8        TAY                           ; 02515 inferred, not run
  E516  B9 1D E5  LDA $E51D,Y                   ; 02516 inferred, not run
  E519  8D 19 02  STA $0219                     ; 02519 inferred, not run
  E51C  60        RTS                           ; 0251C inferred, not run
  E51D  .byte 02 36 13 37                                       ; 0251D
  E521  A6 9C     LDX $9C                       ; 02521 inferred, not run
  E523  20 16 CC  JSR sub_B0_CC16               ; 02523 inferred, not run
  E526  18        CLC                           ; 02526 inferred, not run
  E527  69 08     ADC #$08                      ; 02527 inferred, not run
  E529  8D 1B 02  STA $021B                     ; 02529 inferred, not run
  E52C  60        RTS                           ; 0252C inferred, not run

loc_B0_E52D:                    ; from 02534 029dd
  E52D  E6 CF     INC $CF                       ; 0252D ×40
  E52F  4C 06 C9  JMP loc_B0_C906               ; 0252F ×40

jt_B0_E532:                    ; from 004e0
  E532  A6 CF     LDX $CF                       ; 02532 ×19841
  E534  F0 F7     BEQ loc_B0_E52D               ; 02534 ×19841
  E536  A5 0F     LDA $0F                       ; 02536 ×19805
  E538  F0 03     BEQ loc_B0_E53D               ; 02538 ×19805
  E53A  4C AB DC  JMP loc_B0_DCAB               ; 0253A ×7055

loc_B0_E53D:                    ; from 02538
  E53D  20 07 D8  JSR sub_B0_D807               ; 0253D ×12750
  E540  20 11 DA  JSR sub_B0_DA11               ; 02540 ×12750
  E543  B0 03     BCS loc_B0_E548               ; 02543 ×12750
  E545  20 B6 DB  JSR sub_B0_DBB6               ; 02545 ×2938

loc_B0_E548:                    ; from 02543
  E548  20 1D E6  JSR sub_B0_E61D               ; 02548 ×12750
  E54B  20 BA E7  JSR sub_B0_E7BA               ; 0254B ×12750
  E54E  20 9F E7  JSR sub_B0_E79F               ; 0254E ×12750
  E551  20 B0 E5  JSR sub_B0_E5B0               ; 02551 ×12750
  E554  20 38 E8  JSR sub_B0_E838               ; 02554 ×12750
  E557  20 84 E4  JSR sub_B0_E484               ; 02557 ×12750
  E55A  A5 52     LDA $52                       ; 0255A ×12750
  E55C  D0 23     BNE loc_B0_E581               ; 0255C ×12750
  E55E  A2 20     LDX #$20                      ; 0255E ×2124
  E560  A0 02     LDY #$02                      ; 02560 ×2124

sub_B0_E562:                    ; from 0257e
  E562  BD 00 05  LDA $0500,X                   ; 02562 ×4248
  E565  F0 11     BEQ loc_B0_E578               ; 02565 ×4248
  E567  BD 04 05  LDA $0504,X                   ; 02567 ×43
  E56A  49 01     EOR #$01                      ; 0256A ×43
  E56C  9D 04 05  STA $0504,X                   ; 0256C ×43
  E56F  A9 FF     LDA #$FF                      ; 0256F ×43
  E571  84 FA     STY $FA                       ; 02571 ×43
  E573  20 26 ED  JSR sub_B0_ED26               ; 02573 ×43
  E576  A4 FA     LDY $FA                       ; 02576 ×43

loc_B0_E578:                    ; from 02565
  E578  88        DEY                           ; 02578 ×4248
  E579  F0 06     BEQ loc_B0_E581               ; 02579 ×4248
  E57B  20 EC C9  JSR sub_B0_C9EC               ; 0257B ×2124
  E57E  20 62 E5  JSR sub_B0_E562               ; 0257E ×2124

loc_B0_E581:                    ; from 0255c 02579
  E581  A5 52     LDA $52                       ; 02581 ×14874
  E583  C9 05     CMP #$05                      ; 02583 ×14874
  E585  D0 0C     BNE loc_B0_E593               ; 02585 ×14874
  E587  A2 10     LDX #$10                      ; 02587 ×2124

loc_B0_E589:                    ; from 02591
  E589  20 9A E5  JSR sub_B0_E59A               ; 02589 ×4248
  E58C  B0 06     BCS $E594                     ; 0258C ×4248
  E58E  20 F2 C9  JSR sub_B0_C9F2               ; 0258E ×4248
  E591  10 F6     BPL loc_B0_E589               ; 02591 ×4248

loc_B0_E593:                    ; from 02585
  E593  60        RTS                           ; 02593 ×14874
  E594  A9 00     LDA #$00                      ; 02594 ×0
  E596  A0 67     LDY #$67                      ; 02596 ×0
  E598  D0 67     BNE $E601                     ; 02598 ×0

sub_B0_E59A:                    ; from 0307a 02589 02c7e
  E59A  BD 00 05  LDA $0500,X                   ; 0259A ×10651
  E59D  F0 0D     BEQ loc_B0_E5AC               ; 0259D ×10651
  E59F  20 16 CC  JSR sub_B0_CC16               ; 0259F ×4479
  E5A2  90 08     BCC loc_B0_E5AC               ; 025A2 ×4479
  E5A4  C9 20     CMP #$20                      ; 025A4 ×606
  E5A6  90 04     BCC loc_B0_E5AC               ; 025A6 ×606
  E5A8  C9 D0     CMP #$D0                      ; 025A8 ×606
  E5AA  90 02     BCC loc_B0_E5AE               ; 025AA ×606

loc_B0_E5AC:                    ; from 0259d 025a2
  E5AC  18        CLC                           ; 025AC ×10632
  E5AD  60        RTS                           ; 025AD ×10632

loc_B0_E5AE:                    ; from 025aa
  E5AE  38        SEC                           ; 025AE ×19
  E5AF  60        RTS                           ; 025AF ×19

sub_B0_E5B0:                    ; from 02551
  E5B0  A9 00     LDA #$00                      ; 025B0 ×12750
  E5B2  85 6C     STA $6C                       ; 025B2 ×12750
  E5B4  A5 CA     LDA $CA                       ; 025B4 ×12750
  E5B6  C9 02     CMP #$02                      ; 025B6 ×12750
  E5B8  F0 62     BEQ loc_B0_E61C               ; 025B8 ×12750
  E5BA  A5 6A     LDA $6A                       ; 025BA ×12003
  E5BC  C9 E0     CMP #$E0                      ; 025BC ×12003
  E5BE  90 58     BCC loc_B0_E618               ; 025BE ×12003
  E5C0  C9 E8     CMP #$E8                      ; 025C0 ×230
  E5C2  B0 54     BCS loc_B0_E618               ; 025C2 ×230
  E5C4  A9 01     LDA #$01                      ; 025C4 ×24
  E5C6  85 6C     STA $6C                       ; 025C6 ×24
  E5C8  A2 00     LDX #$00                      ; 025C8 ×24
  E5CA  BD 00 05  LDA $0500,X                   ; 025CA ×24
  E5CD  F0 02     BEQ loc_B0_E5D1               ; 025CD ×24
  E5CF  A2 10     LDX #$10                      ; 025CF ×21

loc_B0_E5D1:                    ; from 025cd
  E5D1  A5 98     LDA $98                       ; 025D1 ×24
  E5D3  D0 47     BNE loc_B0_E61C               ; 025D3 ×24
  E5D5  E6 98     INC $98                       ; 025D5 ×3
  E5D7  A5 6A     LDA $6A                       ; 025D7 ×3
  E5D9  29 F8     AND #$F8                      ; 025D9 ×3
  E5DB  9D 01 05  STA $0501,X                   ; 025DB ×3
  E5DE  18        CLC                           ; 025DE ×3
  E5DF  69 08     ADC #$08                      ; 025DF ×3
  E5E1  9D 21 05  STA $0521,X                   ; 025E1 ×3
  E5E4  20 6E F0  JSR sub_B0_F06E               ; 025E4 ×3
  E5E7  9D 22 05  STA $0522,X                   ; 025E7 ×3
  E5EA  A9 C0     LDA #$C0                      ; 025EA ×3
  E5EC  9D 03 05  STA $0503,X                   ; 025EC ×3
  E5EF  A9 B0     LDA #$B0                      ; 025EF ×3
  E5F1  9D 23 05  STA $0523,X                   ; 025F1 ×3
  E5F4  A9 01     LDA #$01                      ; 025F4 ×3
  E5F6  9D 04 05  STA $0504,X                   ; 025F6 ×3
  E5F9  A9 02     LDA #$02                      ; 025F9 ×3
  E5FB  9D 24 05  STA $0524,X                   ; 025FB ×3
  E5FE  A9 FF     LDA #$FF                      ; 025FE ×3
  E600  A8        TAY                           ; 02600 ×3
  E601  9D 00 05  STA $0500,X                   ; 02601 ×3
  E604  9D 20 05  STA $0520,X                   ; 02604 ×3
  E607  98        TYA                           ; 02607 ×3
  E608  48        PHA                           ; 02608 ×3
  E609  86 F9     STX $F9                       ; 02609 ×3
  E60B  20 26 ED  JSR sub_B0_ED26               ; 0260B ×3
  E60E  A5 F9     LDA $F9                       ; 0260E ×3
  E610  18        CLC                           ; 02610 ×3
  E611  69 20     ADC #$20                      ; 02611 ×3
  E613  AA        TAX                           ; 02613 ×3
  E614  68        PLA                           ; 02614 ×3
  E615  4C 26 ED  JMP sub_B0_ED26               ; 02615 ×3

loc_B0_E618:                    ; from 025be 025c2
  E618  A9 00     LDA #$00                      ; 02618 ×11979
  E61A  85 98     STA $98                       ; 0261A ×11979

loc_B0_E61C:                    ; from 025b8 025d3
  E61C  60        RTS                           ; 0261C ×12747

sub_B0_E61D:                    ; from 02548
  E61D  A5 74     LDA $74                       ; 0261D ×12750
  E61F  C9 40     CMP #$40                      ; 0261F ×12750
  E621  B0 0E     BCS loc_B0_E631               ; 02621 ×12750
  E623  A5 90     LDA $90                       ; 02623 ×12750
  E625  D0 06     BNE loc_B0_E62D               ; 02625 ×12750
  E627  A0 20     LDY #$20                      ; 02627 ×971
  E629  A2 40     LDX #$40                      ; 02629 ×971
  E62B  D0 09     BNE loc_B0_E636               ; 0262B ×971

loc_B0_E62D:                    ; from 02625
  E62D  A5 B0     LDA $B0                       ; 0262D ×11779
  E62F  F0 01     BEQ loc_B0_E632               ; 0262F ×11779

loc_B0_E631:                    ; from 02657
  E631  60        RTS                           ; 02631 ×12074

loc_B0_E632:                    ; from 0262f
  E632  A0 40     LDY #$40                      ; 02632 ×9719
  E634  A2 20     LDX #$20                      ; 02634 ×9719

loc_B0_E636:                    ; from 0262b
  E636  84 8C     STY $8C                       ; 02636 ×10690
  E638  A5 CA     LDA $CA                       ; 02638 ×10690
  E63A  F0 10     BEQ loc_B0_E64C               ; 0263A ×10690
  E63C  4A        LSR A                         ; 0263C ×4029
  E63D  B0 0D     BCS loc_B0_E64C               ; 0263D ×4029
  E63F  60        RTS                           ; 0263F ×611
  E640  .byte A5 6A C9 F0 D0 EB A9 00 85 77 F0 13               ; 02640

loc_B0_E64C:                    ; from 0263a 0263d
  E64C  20 B0 E6  JSR sub_B0_E6B0               ; 0264C ×10079
  E64F  B5 70     LDA $70,X                     ; 0264F ×10079
  E651  F0 06     BEQ loc_B0_E659               ; 02651 ×10079
  E653  B5 74     LDA $74,X                     ; 02653 ×10043
  E655  C5 7B     CMP $7B                       ; 02655 ×10043
  E657  B0 D8     BCS loc_B0_E631               ; 02657 ×10043

loc_B0_E659:                    ; from 02651
  E659  E6 6D     INC $6D                       ; 02659 ×65
  E65B  A9 00     LDA #$00                      ; 0265B ×65
  E65D  F0 02     BEQ loc_B0_E661               ; 0265D ×65
  E65F  A9 01     LDA #$01                      ; 0265F inferred, not run

loc_B0_E661:                    ; from 0265d
  E661  85 78     STA $78                       ; 02661 ×65
  E663  A6 8C     LDX $8C                       ; 02663 ×65
  E665  A0 00     LDY #$00                      ; 02665 ×65

loc_B0_E667:                    ; from 02675
  E667  B9 A0 E6  LDA $E6A0,Y                   ; 02667 ×520
  E66A  95 70     STA $70,X                     ; 0266A ×520
  E66C  B9 A8 E6  LDA $E6A8,Y                   ; 0266C ×520
  E66F  95 80     STA $80,X                     ; 0266F ×520
  E671  E8        INX                           ; 02671 ×520
  E672  C8        INY                           ; 02672 ×520
  E673  C0 08     CPY #$08                      ; 02673 ×520
  E675  90 F0     BCC loc_B0_E667               ; 02675 ×520
  E677  A6 8C     LDX $8C                       ; 02677 ×65
  E679  A5 78     LDA $78                       ; 02679 ×65
  E67B  F0 08     BEQ loc_B0_E685               ; 0267B ×65
  E67D  A9 00     LDA #$00                      ; 0267D inferred, not run
  E67F  95 74     STA $74,X                     ; 0267F inferred, not run
  E681  A9 0C     LDA #$0C                      ; 02681 inferred, not run
  E683  95 84     STA $84,X                     ; 02683 inferred, not run

loc_B0_E685:                    ; from 0267b
  E685  A5 77     LDA $77                       ; 02685 ×65
  E687  F0 0A     BEQ loc_B0_E693               ; 02687 ×65
  E689  A5 68     LDA $68                       ; 02689 ×8
  E68B  F0 06     BEQ loc_B0_E693               ; 0268B ×8
  E68D  A9 FE     LDA #$FE                      ; 0268D ×0
  E68F  95 71     STA $71,X                     ; 0268F ×0
  E691  95 81     STA $81,X                     ; 02691 ×0

loc_B0_E693:                    ; from 02687 0268b
  E693  E0 20     CPX #$20                      ; 02693 ×65
  E695  F0 08     BEQ loc_B0_E69F               ; 02695 ×65
  E697  A9 D8     LDA #$D8                      ; 02697 ×24
  E699  95 72     STA $72,X                     ; 02699 ×24
  E69B  A9 44     LDA #$44                      ; 0269B ×24
  E69D  95 82     STA $82,X                     ; 0269D ×24

loc_B0_E69F:                    ; from 02695
  E69F  60        RTS                           ; 0269F ×65
  E6A0  .byte 01 FF B0 78 F3 00 0C 0A 01 FF 20 68 FF 00 0E 09   ; 026A0 data, read by 02667 0266c

sub_B0_E6B0:                    ; from 0264c 02a0b 02cd5
  E6B0  20 C9 E6  JSR sub_B0_E6C9               ; 026B0 ×14103
  E6B3  85 77     STA $77                       ; 026B3 ×14103
  E6B5  A5 64     LDA $64                       ; 026B5 ×14103
  E6B7  0A        ASL A                         ; 026B7 ×14103
  E6B8  0A        ASL A                         ; 026B8 ×14103
  E6B9  20 E9 F7  JSR sub_B0_F7E9               ; 026B9 ×14103
  E6BC  65 77     ADC $77                       ; 026BC ×14103
  E6BE  A8        TAY                           ; 026BE ×14103
  E6BF  B9 DF E6  LDA $E6DF,Y                   ; 026BF ×14103
  E6C2  85 7B     STA $7B                       ; 026C2 ×14103
  E6C4  29 03     AND #$03                      ; 026C4 ×14103
  E6C6  85 77     STA $77                       ; 026C6 ×14103
  E6C8  60        RTS                           ; 026C8 ×14103

sub_B0_E6C9:                    ; from 026b0 02fdc
  E6C9  A5 6D     LDA $6D                       ; 026C9 ×16116
  E6CB  29 0F     AND #$0F                      ; 026CB ×16116
  E6CD  85 77     STA $77                       ; 026CD ×16116
  E6CF  A4 66     LDY $66                       ; 026CF ×16116
  E6D1  88        DEY                           ; 026D1 ×16116
  E6D2  C0 03     CPY #$03                      ; 026D2 ×16116
  E6D4  90 02     BCC loc_B0_E6D8               ; 026D4 ×16116
  E6D6  A0 03     LDY #$03                      ; 026D6 ×0

loc_B0_E6D8:                    ; from 026d4
  E6D8  98        TYA                           ; 026D8 ×16116
  E6D9  20 E9 F7  JSR sub_B0_F7E9               ; 026D9 ×16116
  E6DC  65 77     ADC $77                       ; 026DC ×16116
  E6DE  60        RTS                           ; 026DE ×16116
  E6DF  .byte 70 40 70 20 70 11 10 70 20                        ; 026DF data, read by 026bf
  E6E8  .byte 30 50 60 30 20 70 10 90 70 71 A0 70 60 90 70 61   ; 026E8
  E6F8  .byte A0 60 60 08 E8 11 80 A0 61 60 08 E8 11 A0 60 60   ; 026F8
  E708  .byte A1 60 B0 50 09 E8 10 B1 50 50 09 E8 10 B1 40 B0   ; 02708
  E718  .byte 41 C0 08 E9 10 B0 40                              ; 02718
  E71F  .byte 80 A0 68 80 68 90 50 60 B0 A0                     ; 0271F data, read by 026bf
  E729  .byte 68 99 98 60 B0 C0 80 A0 B8 99 98 C0 99 50 C0 C8   ; 02729
  E739  .byte 68 99 E7 60 B0 C8 80 68 99 E7 98 D0 C0 68 99 C0   ; 02739
  E749  .byte D0 68 99 E7 B0 D0 80 68 99 E7 98 68 99 E7 80 68   ; 02749
  E759  .byte D0 99 D0 68 99 E7 D0 80 B8 80 D0 90 D0 80 C8 C0   ; 02759
  E769  .byte 90 C8 90 D0 A0 88 B0 C0 B0 B0 C8 B0 B8 C0 B0 B0   ; 02769
  E779  .byte C8 B0 B8 C0 B0 B8 C8 C8 C8 D0 C8 C8 C8 D0 C8 C8   ; 02779
  E789  .byte C8 D0 C8 C8 C8 D0 C8 C8 C8 D0 C8 C8 D0 D0 C8 D0   ; 02789
  E799  .byte D0 C8 D0 D0 C8 D0                                 ; 02799

sub_B0_E79F:                    ; from 0254e
  E79F  A5 09     LDA $09                       ; 0279F ×12750
  E7A1  29 07     AND #$07                      ; 027A1 ×12750
  E7A3  D0 14     BNE loc_B0_E7B9               ; 027A3 ×12750
  E7A5  A0 04     LDY #$04                      ; 027A5 ×1597
  E7A7  A2 20     LDX #$20                      ; 027A7 ×1597

loc_B0_E7A9:                    ; from 027b7
  E7A9  B5 70     LDA $70,X                     ; 027A9 ×6388
  E7AB  F0 06     BEQ loc_B0_E7B3               ; 027AB ×6388
  E7AD  B5 76     LDA $76,X                     ; 027AD ×3720
  E7AF  49 01     EOR #$01                      ; 027AF ×3720
  E7B1  95 76     STA $76,X                     ; 027B1 ×3720

loc_B0_E7B3:                    ; from 027ab
  E7B3  20 EC C9  JSR sub_B0_C9EC               ; 027B3 ×6388
  E7B6  88        DEY                           ; 027B6 ×6388
  E7B7  D0 F0     BNE loc_B0_E7A9               ; 027B7 ×6388

loc_B0_E7B9:                    ; from 027a3
  E7B9  60        RTS                           ; 027B9 ×12750

sub_B0_E7BA:                    ; from 0254b
  E7BA  A5 CA     LDA $CA                       ; 027BA ×12750
  E7BC  25 CE     AND $CE                       ; 027BC ×12750
  E7BE  A8        TAY                           ; 027BE ×12750
  E7BF  B9 E5 E7  LDA $E7E5,Y                   ; 027BF ×12750
  E7C2  18        CLC                           ; 027C2 ×12750
  E7C3  65 9A     ADC $9A                       ; 027C3 ×12750
  E7C5  85 9A     STA $9A                       ; 027C5 ×12750
  E7C7  90 62     BCC loc_B0_E82B               ; 027C7 ×12750
  E7C9  B9 E8 E7  LDA $E7E8,Y                   ; 027C9 ×6194
  E7CC  85 77     STA $77                       ; 027CC ×6194
  E7CE  A0 03     LDY #$03                      ; 027CE ×6194
  E7D0  A2 20     LDX #$20                      ; 027D0 ×6194

loc_B0_E7D2:                    ; from 027dd
  E7D2  84 FA     STY $FA                       ; 027D2 ×24776
  E7D4  20 EB E7  JSR sub_B0_E7EB               ; 027D4 ×24776
  E7D7  A4 FA     LDY $FA                       ; 027D7 ×24776
  E7D9  20 EC C9  JSR sub_B0_C9EC               ; 027D9 ×24776
  E7DC  88        DEY                           ; 027DC ×24776
  E7DD  10 F3     BPL loc_B0_E7D2               ; 027DD ×24776
  E7DF  20 BC E9  JSR sub_B0_E9BC               ; 027DF ×6194
  E7E2  4C 7E E9  JMP loc_B0_E97E               ; 027E2 ×6194
  E7E5  .byte 5F B0 94 FF FE 01                                 ; 027E5 data, read by 027bf 027c9

sub_B0_E7EB:                    ; from 027d4
  E7EB  B5 70     LDA $70,X                     ; 027EB ×24776
  E7ED  F0 3C     BEQ loc_B0_E82B               ; 027ED ×24776
  E7EF  B5 74     LDA $74,X                     ; 027EF ×14461
  E7F1  18        CLC                           ; 027F1 ×14461
  E7F2  65 77     ADC $77                       ; 027F2 ×14461
  E7F4  95 74     STA $74,X                     ; 027F4 ×14461
  E7F6  A5 77     LDA $77                       ; 027F6 ×14461
  E7F8  30 04     BMI loc_B0_E7FE               ; 027F8 ×14461
  E7FA  90 2F     BCC loc_B0_E82B               ; 027FA ×1016
  E7FC  B0 0C     BCS $E80A                     ; 027FC ×0

loc_B0_E7FE:                    ; from 027f8
  E7FE  B0 2B     BCS loc_B0_E82B               ; 027FE ×13445
  E800  20 2C E8  JSR sub_B0_E82C               ; 02800 ×7
  E803  8A        TXA                           ; 02803 ×7
  E804  29 10     AND #$10                      ; 02804 ×7
  E806  D0 1B     BNE sub_B0_E823               ; 02806 ×7
  E808  F0 0A     BEQ loc_B0_E814               ; 02808 ×7
  E80A  20 2C E8  JSR sub_B0_E82C               ; 0280A ×0
  E80D  8A        TXA                           ; 0280D ×0
  E80E  C6 6D     DEC $6D                       ; 0280E ×0
  E810  29 10     AND #$10                      ; 02810 ×0
  E812  F0 0F     BEQ sub_B0_E823               ; 02812 ×0

loc_B0_E814:                    ; from 02808
  E814  B5 71     LDA $71,X                     ; 02814 ×7
  E816  C9 FE     CMP #$FE                      ; 02816 ×7
  E818  D0 00     BNE $E81A                     ; 02818 ×7
  E81A  A9 00     LDA #$00                      ; 0281A ×7
  E81C  20 23 E8  JSR sub_B0_E823               ; 0281C ×7
  E81F  8A        TXA                           ; 0281F ×7
  E820  49 10     EOR #$10                      ; 02820 ×7
  E822  AA        TAX                           ; 02822 ×7

sub_B0_E823:                    ; from 0281c
  E823  A9 00     LDA #$00                      ; 02823 ×14
  E825  95 70     STA $70,X                     ; 02825 ×14
  E827  A9 01     LDA #$01                      ; 02827 ×14
  E829  95 75     STA $75,X                     ; 02829 ×14

loc_B0_E82B:                    ; from 027fe 027ed 027c7 027fa
  E82B  60        RTS                           ; 0282B ×31339

sub_B0_E82C:                    ; from 02800 0280a
  E82C  B5 71     LDA $71,X                     ; 0282C ×7
  E82E  C9 FE     CMP #$FE                      ; 0282E ×7
  E830  D0 05     BNE loc_B0_E837               ; 02830 ×7
  E832  A9 00     LDA #$00                      ; 02832 ×0
  E834  8D FF 03  STA $03FF                     ; 02834 ×0

loc_B0_E837:                    ; from 02830
  E837  60        RTS                           ; 02837 ×7

sub_B0_E838:                    ; from 02554
  E838  A9 02     LDA #$02                      ; 02838 ×12750
  E83A  85 7B     STA $7B                       ; 0283A ×12750
  E83C  20 1F E9  JSR sub_B0_E91F               ; 0283C ×12750
  E83F  4C 45 E8  JMP loc_B0_E845               ; 0283F ×12750

loc_B0_E842:                    ; from 028e6
  E842  20 03 E9  JSR sub_B0_E903               ; 02842 ×12727

loc_B0_E845:                    ; from 0283f
  E845  A0 02     LDY #$02                      ; 02845 ×25477
  E847  A2 20     LDX #$20                      ; 02847 ×25477

loc_B0_E849:                    ; from 02895
  E849  BD 00 05  LDA $0500,X                   ; 02849 ×50954
  E84C  F0 41     BEQ loc_B0_E88F               ; 0284C ×50954
  E84E  20 2E E9  JSR sub_B0_E92E               ; 0284E ×508
  E851  B0 3C     BCS loc_B0_E88F               ; 02851 ×508
  E853  A5 DF     LDA $DF                       ; 02853 ×412
  E855  F0 33     BEQ loc_B0_E88A               ; 02855 ×412
  E857  20 8F CC  JSR sub_B0_CC8F               ; 02857 ×328
  E85A  90 33     BCC loc_B0_E88F               ; 0285A ×328
  E85C  A9 01     LDA #$01                      ; 0285C ×0
  E85E  85 DB     STA $DB                       ; 0285E ×0
  E860  AD 43 03  LDA $0343                     ; 02860 ×0
  E863  4A        LSR A                         ; 02863 ×0
  E864  B0 04     BCS $E86A                     ; 02864 ×0
  E866  A9 03     LDA #$03                      ; 02866 ×0
  E868  D0 02     BNE $E86C                     ; 02868 ×0
  E86A  A9 07     LDA #$07                      ; 0286A inferred, not run
  E86C  CD 42 03  CMP $0342                     ; 0286C ×0
  E86F  D0 19     BNE loc_B0_E88A               ; 0286F ×0
  E871  AD 18 02  LDA $0218                     ; 02871 ×0
  E874  C9 F4     CMP #$F4                      ; 02874 ×0
  E876  D0 12     BNE loc_B0_E88A               ; 02876 ×0
  E878  A5 CA     LDA $CA                       ; 02878 ×0
  E87A  C9 02     CMP #$02                      ; 0287A ×0
  E87C  D0 0C     BNE loc_B0_E88A               ; 0287C ×0
  E87E  A5 D0     LDA $D0                       ; 0287E inferred, not run
  E880  05 9B     ORA $9B                       ; 02880 inferred, not run
  E882  D0 06     BNE loc_B0_E88A               ; 02882 inferred, not run
  E884  A9 01     LDA #$01                      ; 02884 inferred, not run
  E886  85 9B     STA $9B                       ; 02886 inferred, not run
  E888  86 9C     STX $9C                       ; 02888 inferred, not run

loc_B0_E88A:                    ; from 02855
  E88A  20 7E CC  JSR sub_B0_CC7E               ; 0288A ×84
  E88D  B0 6F     BCS loc_B0_E8FE               ; 0288D ×84

loc_B0_E88F:                    ; from 0284c 0285a 02851
  E88F  88        DEY                           ; 0288F ×50954
  E890  F0 05     BEQ loc_B0_E897               ; 02890 ×50954
  E892  20 EC C9  JSR sub_B0_C9EC               ; 02892 ×25477
  E895  D0 B2     BNE loc_B0_E849               ; 02895 ×25477

loc_B0_E897:                    ; from 02890
  E897  A9 02     LDA #$02                      ; 02897 ×25477
  E899  85 79     STA $79                       ; 02899 ×25477
  E89B  A0 03     LDY #$03                      ; 0289B ×25477

loc_B0_E89D:                    ; from 028a4
  E89D  B9 7A E9  LDA $E97A,Y                   ; 0289D ×101908
  E8A0  99 8C 00  STA $008C,Y                   ; 028A0 ×101908
  E8A3  88        DEY                           ; 028A3 ×101908
  E8A4  10 F7     BPL loc_B0_E89D               ; 028A4 ×101908
  E8A6  A2 20     LDX #$20                      ; 028A6 ×25477

loc_B0_E8A8:                    ; from 028e0
  E8A8  B5 75     LDA $75,X                     ; 028A8 ×50927
  E8AA  D0 2B     BNE loc_B0_E8D7               ; 028AA ×50927
  E8AC  A0 36     LDY #$36                      ; 028AC ×49054
  E8AE  B5 71     LDA $71,X                     ; 028AE ×49054
  E8B0  C9 FF     CMP #$FF                      ; 028B0 ×49054
  E8B2  F0 02     BEQ loc_B0_E8B6               ; 028B2 ×49054
  E8B4  A0 26     LDY #$26                      ; 028B4 ×19307

loc_B0_E8B6:                    ; from 028b2
  E8B6  84 8E     STY $8E                       ; 028B6 ×49054
  E8B8  20 69 E9  JSR sub_B0_E969               ; 028B8 ×49054
  E8BB  A5 DF     LDA $DF                       ; 028BB ×49054
  E8BD  F0 13     BEQ loc_B0_E8D2               ; 028BD ×49054
  E8BF  20 8F CC  JSR sub_B0_CC8F               ; 028BF ×37562
  E8C2  90 13     BCC loc_B0_E8D7               ; 028C2 ×37562
  E8C4  A9 00     LDA #$00                      ; 028C4 ×1286
  E8C6  E0 20     CPX #$20                      ; 028C6 ×1286
  E8C8  F0 03     BEQ loc_B0_E8CD               ; 028C8 ×1286
  E8CA  18        CLC                           ; 028CA ×143
  E8CB  69 01     ADC #$01                      ; 028CB ×143

loc_B0_E8CD:                    ; from 028c8
  E8CD  AA        TAX                           ; 028CD ×1286
  E8CE  A9 01     LDA #$01                      ; 028CE ×1286
  E8D0  95 D9     STA $D9,X                     ; 028D0 ×1286

loc_B0_E8D2:                    ; from 028bd
  E8D2  20 7E CC  JSR sub_B0_CC7E               ; 028D2 ×12778
  E8D5  B0 27     BCS loc_B0_E8FE               ; 028D5 ×12778

loc_B0_E8D7:                    ; from 028c2 028aa
  E8D7  C6 79     DEC $79                       ; 028D7 ×50893
  E8D9  F0 07     BEQ loc_B0_E8E2               ; 028D9 ×50893
  E8DB  8A        TXA                           ; 028DB ×25450
  E8DC  18        CLC                           ; 028DC ×25450
  E8DD  69 20     ADC #$20                      ; 028DD ×25450
  E8DF  AA        TAX                           ; 028DF ×25450
  E8E0  D0 C6     BNE loc_B0_E8A8               ; 028E0 ×25450

loc_B0_E8E2:                    ; from 028d9
  E8E2  C6 7B     DEC $7B                       ; 028E2 ×25443
  E8E4  F0 03     BEQ loc_B0_E8E9               ; 028E4 ×25443
  E8E6  4C 42 E8  JMP loc_B0_E842               ; 028E6 ×12727

loc_B0_E8E9:                    ; from 028e4
  E8E9  A5 D0     LDA $D0                       ; 028E9 ×12716
  E8EB  F0 15     BEQ loc_B0_E902               ; 028EB ×12716
  E8ED  20 5C E9  JSR sub_B0_E95C               ; 028ED ×0
  E8F0  20 7E CC  JSR sub_B0_CC7E               ; 028F0 ×0
  E8F3  90 0D     BCC loc_B0_E902               ; 028F3 ×0
  E8F5  A2 01     LDX #$01                      ; 028F5 ×0
  E8F7  8E 21 03  STX $0321                     ; 028F7 ×0
  E8FA  8E FF 03  STX $03FF                     ; 028FA ×0
  E8FD  60        RTS                           ; 028FD ×0

loc_B0_E8FE:                    ; from 028d5
  E8FE  A9 01     LDA #$01                      ; 028FE ×34
  E900  85 0F     STA $0F                       ; 02900 ×34

loc_B0_E902:                    ; from 028eb
  E902  60        RTS                           ; 02902 ×12750

sub_B0_E903:                    ; from 02842 02bd0 030b8 00e1a 02eea 02f09 (+1)
  E903  A0 03     LDY #$03                      ; 02903 ×19016

loc_B0_E905:                    ; from 0290c
  E905  B9 6E E9  LDA $E96E,Y                   ; 02905 ×76064
  E908  99 8C 00  STA $008C,Y                   ; 02908 ×76064
  E90B  88        DEY                           ; 0290B ×76064
  E90C  10 F7     BPL loc_B0_E905               ; 0290C ×76064
  E90E  A5 61     LDA $61                       ; 0290E ×19016
  E910  C9 05     CMP #$05                      ; 02910 ×19016
  E912  D0 04     BNE loc_B0_E918               ; 02912 ×19016
  E914  A9 10     LDA #$10                      ; 02914 inferred, not run
  E916  85 8F     STA $8F                       ; 02916 inferred, not run

loc_B0_E918:                    ; from 02912
  E918  A2 00     LDX #$00                      ; 02918 ×19016

loc_B0_E91A:                    ; from 0292c
  E91A  A0 08     LDY #$08                      ; 0291A ×31766
  E91C  4C 62 CC  JMP sub_B0_CC62               ; 0291C ×31766

sub_B0_E91F:                    ; from 0283c
  E91F  A0 03     LDY #$03                      ; 0291F ×12750

loc_B0_E921:                    ; from 02928
  E921  B9 72 E9  LDA $E972,Y                   ; 02921 ×51000
  E924  99 8C 00  STA $008C,Y                   ; 02924 ×51000
  E927  88        DEY                           ; 02927 ×51000
  E928  10 F7     BPL loc_B0_E921               ; 02928 ×51000
  E92A  A2 10     LDX #$10                      ; 0292A ×12750
  E92C  D0 EC     BNE loc_B0_E91A               ; 0292C ×12750

sub_B0_E92E:                    ; from 0284e
  E92E  A9 1C     LDA #$1C                      ; 0292E ×508
  E930  8D C8 03  STA $03C8                     ; 02930 ×508
  E933  A9 0A     LDA #$0A                      ; 02933 ×508
  E935  8D C9 03  STA $03C9                     ; 02935 ×508
  E938  18        CLC                           ; 02938 ×508
  E939  BD 03 05  LDA $0503,X                   ; 02939 ×508
  E93C  69 08     ADC #$08                      ; 0293C ×508
  E93E  8D CA 03  STA $03CA                     ; 0293E ×508
  E941  18        CLC                           ; 02941 ×508
  E942  BD 01 05  LDA $0501,X                   ; 02942 ×508
  E945  69 07     ADC #$07                      ; 02945 ×508
  E947  85 77     STA $77                       ; 02947 ×508
  E949  BD 02 05  LDA $0502,X                   ; 02949 ×508
  E94C  90 02     BCC loc_B0_E950               ; 0294C ×508
  E94E  49 01     EOR #$01                      ; 0294E inferred, not run

loc_B0_E950:                    ; from 0294c
  E950  85 78     STA $78                       ; 02950 ×508
  E952  20 20 CC  JSR sub_B0_CC20               ; 02952 ×508
  E955  B0 04     BCS loc_B0_E95B               ; 02955 ×508
  E957  8D CB 03  STA $03CB                     ; 02957 ×412
  E95A  18        CLC                           ; 0295A ×412

loc_B0_E95B:                    ; from 02955
  E95B  60        RTS                           ; 0295B ×508

sub_B0_E95C:                    ; from 028ed
  E95C  A0 03     LDY #$03                      ; 0295C ×0
  E95E  B9 76 E9  LDA $E976,Y                   ; 0295E ×0
  E961  99 8C 00  STA $008C,Y                   ; 02961 ×0
  E964  88        DEY                           ; 02964 ×0
  E965  10 F7     BPL $E95E                     ; 02965 ×0
  E967  A2 60     LDX #$60                      ; 02967 ×0

sub_B0_E969:                    ; from 028b8 02be0
  E969  A0 00     LDY #$00                      ; 02969 ×53202
  E96B  4C 62 CC  JMP sub_B0_CC62               ; 0296B ×53202
  E96E  .byte 02 0C 01 15 07 16 04 08                           ; 0296E data, read by 02905 02921
  E976  .byte 04 08 04 08                                       ; 02976
  E97A  .byte 0B 02 36 04                                       ; 0297A data, read by 0289d

loc_B0_E97E:                    ; from 027e2
  E97E  A0 05     LDY #$05                      ; 0297E ×6194

loc_B0_E980:                    ; from 02987
  E980  B9 B6 E9  LDA $E9B6,Y                   ; 02980 ×37164
  E983  99 D1 00  STA $00D1,Y                   ; 02983 ×37164
  E986  88        DEY                           ; 02986 ×37164
  E987  10 F7     BPL loc_B0_E980               ; 02987 ×37164
  E989  AD FF 03  LDA $03FF                     ; 02989 ×6194
  E98C  F0 04     BEQ loc_B0_E992               ; 0298C ×6194
  E98E  A9 00     LDA #$00                      ; 0298E ×0
  E990  F0 21     BEQ loc_B0_E9B3               ; 02990 ×0

loc_B0_E992:                    ; from 0298c
  E992  A0 40     LDY #$40                      ; 02992 ×6194

loc_B0_E994:                    ; from 029a5
  E994  B9 70 00  LDA $0070,Y                   ; 02994 ×12388
  E997  F0 07     BEQ loc_B0_E9A0               ; 02997 ×12388
  E999  B9 71 00  LDA $0071,Y                   ; 02999 ×7227
  E99C  C9 FE     CMP #$FE                      ; 0299C ×7227
  E99E  F0 09     BEQ $E9A9                     ; 0299E ×7227

loc_B0_E9A0:                    ; from 02997
  E9A0  98        TYA                           ; 029A0 ×12388
  E9A1  38        SEC                           ; 029A1 ×12388
  E9A2  E9 20     SBC #$20                      ; 029A2 ×12388
  E9A4  A8        TAY                           ; 029A4 ×12388
  E9A5  D0 ED     BNE loc_B0_E994               ; 029A5 ×12388
  E9A7  F0 0A     BEQ loc_B0_E9B3               ; 029A7 ×6194
  E9A9  B9 74 00  LDA $0074,Y                   ; 029A9 ×0
  E9AC  18        CLC                           ; 029AC ×0
  E9AD  69 03     ADC #$03                      ; 029AD ×0
  E9AF  85 D4     STA $D4                       ; 029AF ×0
  E9B1  A9 01     LDA #$01                      ; 029B1 ×0

loc_B0_E9B3:                    ; from 029a7
  E9B3  85 D0     STA $D0                       ; 029B3 ×6194
  E9B5  60        RTS                           ; 029B5 ×6194
  E9B6  .byte 04 A0 70 F6 00 22                                 ; 029B6 data, read by 02980

sub_B0_E9BC:                    ; from 027df
  E9BC  A0 40     LDY #$40                      ; 029BC ×6194

loc_B0_E9BE:                    ; from 029d6
  E9BE  B9 70 00  LDA $0070,Y                   ; 029BE ×12388
  E9C1  F0 0B     BEQ loc_B0_E9CE               ; 029C1 ×12388
  E9C3  B9 74 00  LDA $0074,Y                   ; 029C3 ×7227
  E9C6  18        CLC                           ; 029C6 ×7227
  E9C7  69 0C     ADC #$0C                      ; 029C7 ×7227
  E9C9  99 84 00  STA $0084,Y                   ; 029C9 ×7227
  E9CC  A9 01     LDA #$01                      ; 029CC ×7227

loc_B0_E9CE:                    ; from 029c1
  E9CE  99 80 00  STA $0080,Y                   ; 029CE ×12388
  E9D1  98        TYA                           ; 029D1 ×12388
  E9D2  38        SEC                           ; 029D2 ×12388
  E9D3  E9 20     SBC #$20                      ; 029D3 ×12388
  E9D5  A8        TAY                           ; 029D5 ×12388
  E9D6  D0 E6     BNE loc_B0_E9BE               ; 029D6 ×12388
  E9D8  60        RTS                           ; 029D8 ×6194

jt_B0_E9D9:                    ; from 004e0
  E9D9  A6 CF     LDX $CF                       ; 029D9 ×4152
  E9DB  D0 03     BNE loc_B0_E9E0               ; 029DB ×4152
  E9DD  4C 2D E5  JMP loc_B0_E52D               ; 029DD ×4

loc_B0_E9E0:                    ; from 029db
  E9E0  A5 0F     LDA $0F                       ; 029E0 ×4148
  E9E2  F0 03     BEQ loc_B0_E9E7               ; 029E2 ×4148
  E9E4  4C 58 DC  JMP sub_B0_DC58               ; 029E4 ×0

loc_B0_E9E7:                    ; from 029e2
  E9E7  20 07 D8  JSR sub_B0_D807               ; 029E7 ×4148
  E9EA  20 11 DA  JSR sub_B0_DA11               ; 029EA ×4148
  E9ED  B0 03     BCS loc_B0_E9F2               ; 029ED ×4148
  E9EF  20 B6 DB  JSR sub_B0_DBB6               ; 029EF ×2144

loc_B0_E9F2:                    ; from 029ed
  E9F2  20 D0 EB  JSR sub_B0_EBD0               ; 029F2 ×4148
  E9F5  20 82 EA  JSR sub_B0_EA82               ; 029F5 ×4148
  E9F8  A5 03     LDA $03                       ; 029F8 ×4148
  E9FA  29 08     AND #$08                      ; 029FA ×4148
  E9FC  D0 06     BNE $EA04                     ; 029FC ×4148
  E9FE  A5 74     LDA $74                       ; 029FE ×4148
  EA00  C9 80     CMP #$80                      ; 02A00 ×4148
  EA02  B0 1B     BCS loc_B0_EA1F               ; 02A02 ×4148
  EA04  AD 04 04  LDA $0404                     ; 02A04 ×4148
  EA07  C9 03     CMP #$03                      ; 02A07 ×4148
  EA09  B0 14     BCS loc_B0_EA1F               ; 02A09 ×4148
  EA0B  20 B0 E6  JSR sub_B0_E6B0               ; 02A0B ×4024
  EA0E  8D 03 04  STA $0403                     ; 02A0E ×4024
  EA11  A0 05     LDY #$05                      ; 02A11 ×4024
  EA13  A2 20     LDX #$20                      ; 02A13 ×4024

loc_B0_EA15:                    ; from 02a24
  EA15  B5 70     LDA $70,X                     ; 02A15 ×14467
  EA17  F0 07     BEQ loc_B0_EA20               ; 02A17 ×14467
  EA19  B5 74     LDA $74,X                     ; 02A19 ×5516
  EA1B  C5 7B     CMP $7B                       ; 02A1B ×5516
  EA1D  90 01     BCC loc_B0_EA20               ; 02A1D ×5516

loc_B0_EA1F:                    ; from 02a09
  EA1F  60        RTS                           ; 02A1F ×4113

loc_B0_EA20:                    ; from 02a17 02a1d
  EA20  20 EC C9  JSR sub_B0_C9EC               ; 02A20 ×10478
  EA23  88        DEY                           ; 02A23 ×10478
  EA24  D0 EF     BNE loc_B0_EA15               ; 02A24 ×10478
  EA26  AD 03 04  LDA $0403                     ; 02A26 ×35
  EA29  4A        LSR A                         ; 02A29 ×35
  EA2A  90 0D     BCC loc_B0_EA39               ; 02A2A ×35
  EA2C  A2 20     LDX #$20                      ; 02A2C ×0
  EA2E  A0 02     LDY #$02                      ; 02A2E ×0
  EA30  A5 69     LDA $69                       ; 02A30 ×0
  EA32  D0 09     BNE loc_B0_EA3D               ; 02A32 ×0
  EA34  A9 00     LDA #$00                      ; 02A34 ×0
  EA36  8D 03 04  STA $0403                     ; 02A36 ×0

loc_B0_EA39:                    ; from 02a2a
  EA39  A2 40     LDX #$40                      ; 02A39 ×35
  EA3B  A0 03     LDY #$03                      ; 02A3B ×35

loc_B0_EA3D:                    ; from 02a47
  EA3D  B5 70     LDA $70,X                     ; 02A3D ×61
  EA3F  F0 08     BEQ loc_B0_EA49               ; 02A3F ×61
  EA41  88        DEY                           ; 02A41 ×26
  EA42  F0 31     BEQ loc_B0_EA75               ; 02A42 ×26
  EA44  20 EC C9  JSR sub_B0_C9EC               ; 02A44 ×26
  EA47  D0 F4     BNE loc_B0_EA3D               ; 02A47 ×26

loc_B0_EA49:                    ; from 02a3f
  EA49  E6 6D     INC $6D                       ; 02A49 ×35
  EA4B  EE 04 04  INC $0404                     ; 02A4B ×35
  EA4E  86 F9     STX $F9                       ; 02A4E ×35
  EA50  A0 00     LDY #$00                      ; 02A50 ×35

loc_B0_EA52:                    ; from 02a5b
  EA52  B9 76 EA  LDA $EA76,Y                   ; 02A52 ×245
  EA55  95 70     STA $70,X                     ; 02A55 ×245
  EA57  E8        INX                           ; 02A57 ×245
  EA58  C8        INY                           ; 02A58 ×245
  EA59  C0 07     CPY #$07                      ; 02A59 ×245
  EA5B  90 F5     BCC loc_B0_EA52               ; 02A5B ×245
  EA5D  A6 F9     LDX $F9                       ; 02A5D ×35
  EA5F  AD 03 04  LDA $0403                     ; 02A5F ×35
  EA62  F0 04     BEQ loc_B0_EA68               ; 02A62 ×35
  EA64  A9 16     LDA #$16                      ; 02A64 ×0
  EA66  95 76     STA $76,X                     ; 02A66 ×0

loc_B0_EA68:                    ; from 02a62
  EA68  8A        TXA                           ; 02A68 ×35
  EA69  20 E4 F7  JSR sub_B0_F7E4               ; 02A69 ×35
  EA6C  38        SEC                           ; 02A6C ×35
  EA6D  E9 02     SBC #$02                      ; 02A6D ×35
  EA6F  A8        TAY                           ; 02A6F ×35
  EA70  B9 7D EA  LDA $EA7D,Y                   ; 02A70 ×35
  EA73  95 72     STA $72,X                     ; 02A73 ×35

loc_B0_EA75:                    ; from 02a9f
  EA75  60        RTS                           ; 02A75 ×4183
  EA76  .byte 01 04 38 70 F7 00 13                              ; 02A76 data, read by 02a52
  EA7D  .byte 38 48                                             ; 02A7D
  EA7F  .byte 58 68 78                                          ; 02A7F data, read by 02a70

sub_B0_EA82:                    ; from 029f5
  EA82  A0 05     LDY #$05                      ; 02A82 ×4148
  EA84  84 79     STY $79                       ; 02A84 ×4148
  EA86  A2 20     LDX #$20                      ; 02A86 ×4148

loc_B0_EA88:                    ; from 02aa6
  EA88  86 F9     STX $F9                       ; 02A88 ×20740
  EA8A  B5 70     LDA $70,X                     ; 02A8A ×20740
  EA8C  F0 0F     BEQ loc_B0_EA9D               ; 02A8C ×20740
  EA8E  A5 79     LDA $79                       ; 02A8E ×7532
  EA90  C9 04     CMP #$04                      ; 02A90 ×7532
  EA92  B0 06     BCS $EA9A                     ; 02A92 ×7532
  EA94  20 23 EB  JSR sub_B0_EB23               ; 02A94 ×7532
  EA97  4C 9D EA  JMP loc_B0_EA9D               ; 02A97 ×7532
  EA9A  20 A8 EA  JSR sub_B0_EAA8               ; 02A9A ×0

loc_B0_EA9D:                    ; from 02a8c 02a97
  EA9D  C6 79     DEC $79                       ; 02A9D ×20740
  EA9F  F0 D4     BEQ loc_B0_EA75               ; 02A9F ×20740
  EAA1  A6 F9     LDX $F9                       ; 02AA1 ×16592
  EAA3  20 EC C9  JSR sub_B0_C9EC               ; 02AA3 ×16592
  EAA6  D0 E0     BNE loc_B0_EA88               ; 02AA6 ×16592

sub_B0_EAA8:                    ; from 02a9a
  EAA8  A9 02     LDA #$02                      ; 02AA8 ×0
  EAAA  85 77     STA $77                       ; 02AAA ×0
  EAAC  20 67 EB  JSR sub_B0_EB67               ; 02AAC ×0
  EAAF  BD 0A 06  LDA $060A,X                   ; 02AAF ×0
  EAB2  D0 3F     BNE $EAF3                     ; 02AB2 ×0
  EAB4  B5 74     LDA $74,X                     ; 02AB4 ×0
  EAB6  85 77     STA $77                       ; 02AB6 ×0
  EAB8  E9 12     SBC #$12                      ; 02AB8 ×0
  EABA  85 78     STA $78                       ; 02ABA ×0
  EABC  A0 03     LDY #$03                      ; 02ABC ×0
  EABE  A2 40     LDX #$40                      ; 02ABE ×0
  EAC0  B5 70     LDA $70,X                     ; 02AC0 ×0
  EAC2  F0 0A     BEQ $EACE                     ; 02AC2 ×0
  EAC4  B5 74     LDA $74,X                     ; 02AC4 ×0
  EAC6  C5 77     CMP $77                       ; 02AC6 ×0
  EAC8  B0 04     BCS $EACE                     ; 02AC8 ×0
  EACA  C5 78     CMP $78                       ; 02ACA ×0
  EACC  B0 0D     BCS $EADB                     ; 02ACC ×0
  EACE  88        DEY                           ; 02ACE ×0
  EACF  F0 05     BEQ $EAD6                     ; 02ACF ×0
  EAD1  20 EC C9  JSR sub_B0_C9EC               ; 02AD1 ×0
  EAD4  D0 EA     BNE $EAC0                     ; 02AD4 ×0
  EAD6  A9 40     LDA #$40                      ; 02AD6 ×0
  EAD8  4C 98 EB  JMP loc_B0_EB98               ; 02AD8 ×0
  EADB  A6 F9     LDX $F9                       ; 02ADB ×0
  EADD  FE 0A 06  INC $060A,X                   ; 02ADD ×0
  EAE0  A9 04     LDA #$04                      ; 02AE0 ×0
  EAE2  9D 0C 06  STA $060C,X                   ; 02AE2 ×0
  EAE5  A9 00     LDA #$00                      ; 02AE5 ×0
  EAE7  9D 0B 06  STA $060B,X                   ; 02AE7 ×0
  EAEA  A9 19     LDA #$19                      ; 02AEA ×0
  EAEC  95 76     STA $76,X                     ; 02AEC ×0
  EAEE  B5 73     LDA $73,X                     ; 02AEE ×0
  EAF0  9D 0D 06  STA $060D,X                   ; 02AF0 ×0
  EAF3  A6 F9     LDX $F9                       ; 02AF3 ×0
  EAF5  BD 0B 06  LDA $060B,X                   ; 02AF5 ×0
  EAF8  38        SEC                           ; 02AF8 ×0
  EAF9  E9 38     SBC #$38                      ; 02AF9 ×0
  EAFB  9D 0B 06  STA $060B,X                   ; 02AFB ×0
  EAFE  BD 0C 06  LDA $060C,X                   ; 02AFE ×0
  EB01  E9 00     SBC #$00                      ; 02B01 ×0
  EB03  9D 0C 06  STA $060C,X                   ; 02B03 ×0
  EB06  10 07     BPL $EB0F                     ; 02B06 ×0
  EB08  B5 73     LDA $73,X                     ; 02B08 ×0
  EB0A  DD 0D 06  CMP $060D,X                   ; 02B0A ×0
  EB0D  B0 09     BCS $EB18                     ; 02B0D ×0
  EB0F  B5 73     LDA $73,X                     ; 02B0F ×0
  EB11  38        SEC                           ; 02B11 ×0
  EB12  FD 0C 06  SBC $060C,X                   ; 02B12 ×0
  EB15  95 73     STA $73,X                     ; 02B15 ×0
  EB17  60        RTS                           ; 02B17 ×0
  EB18  BD 0D 06  LDA $060D,X                   ; 02B18 ×0
  EB1B  95 73     STA $73,X                     ; 02B1B ×0
  EB1D  A9 00     LDA #$00                      ; 02B1D ×0
  EB1F  9D 0A 06  STA $060A,X                   ; 02B1F ×0
  EB22  60        RTS                           ; 02B22 ×0

sub_B0_EB23:                    ; from 02a94
  EB23  B5 74     LDA $74,X                     ; 02B23 ×7532
  EB25  E9 10     SBC #$10                      ; 02B25 ×7532
  EB27  85 77     STA $77                       ; 02B27 ×7532
  EB29  69 20     ADC #$20                      ; 02B29 ×7532
  EB2B  85 78     STA $78                       ; 02B2B ×7532
  EB2D  A0 02     LDY #$02                      ; 02B2D ×7532
  EB2F  A2 20     LDX #$20                      ; 02B2F ×7532

loc_B0_EB31:                    ; from 02b44
  EB31  B5 70     LDA $70,X                     ; 02B31 ×15064
  EB33  F0 0A     BEQ loc_B0_EB3F               ; 02B33 ×15064
  EB35  B5 74     LDA $74,X                     ; 02B35 ×0
  EB37  C5 77     CMP $77                       ; 02B37 ×0
  EB39  90 04     BCC loc_B0_EB3F               ; 02B39 ×0
  EB3B  C5 78     CMP $78                       ; 02B3B ×0
  EB3D  90 17     BCC $EB56                     ; 02B3D ×0

loc_B0_EB3F:                    ; from 02b33
  EB3F  88        DEY                           ; 02B3F ×15064
  EB40  F0 04     BEQ loc_B0_EB46               ; 02B40 ×15064
  EB42  A2 30     LDX #$30                      ; 02B42 ×7532
  EB44  D0 EB     BNE loc_B0_EB31               ; 02B44 ×7532

loc_B0_EB46:                    ; from 02b40
  EB46  20 5A EB  JSR sub_B0_EB5A               ; 02B46 ×7532
  EB49  A6 F9     LDX $F9                       ; 02B49 ×7532
  EB4B  A9 01     LDA #$01                      ; 02B4B ×7532
  EB4D  85 77     STA $77                       ; 02B4D ×7532
  EB4F  20 67 EB  JSR sub_B0_EB67               ; 02B4F ×7532
  EB52  A9 20     LDA #$20                      ; 02B52 ×7342
  EB54  D0 42     BNE loc_B0_EB98               ; 02B54 ×7342
  EB56  A5 F9     LDA $F9                       ; 02B56 ×0
  EB58  D0 09     BNE $EB63                     ; 02B58 ×0

sub_B0_EB5A:                    ; from 02b46
  EB5A  AD 05 04  LDA $0405                     ; 02B5A ×7532
  EB5D  C5 F9     CMP $F9                       ; 02B5D ×7532
  EB5F  D0 05     BNE loc_B0_EB66               ; 02B5F ×7532
  EB61  A9 00     LDA #$00                      ; 02B61 ×0
  EB63  8D 05 04  STA $0405                     ; 02B63 ×0

loc_B0_EB66:                    ; from 02b5f
  EB66  60        RTS                           ; 02B66 ×7532

sub_B0_EB67:                    ; from 02b4f 02aac
  EB67  A5 C9     LDA $C9                       ; 02B67 ×7532
  EB69  25 CE     AND $CE                       ; 02B69 ×7532
  EB6B  A8        TAY                           ; 02B6B ×7532
  EB6C  B9 CA EB  LDA $EBCA,Y                   ; 02B6C ×7532
  EB6F  48        PHA                           ; 02B6F ×7532
  EB70  A5 79     LDA $79                       ; 02B70 ×7532
  EB72  C9 04     CMP #$04                      ; 02B72 ×7532
  EB74  B0 05     BCS $EB7B                     ; 02B74 ×7532
  EB76  68        PLA                           ; 02B76 ×7532
  EB77  B9 CD EB  LDA $EBCD,Y                   ; 02B77 ×7532
  EB7A  48        PHA                           ; 02B7A ×7532
  EB7B  68        PLA                           ; 02B7B ×7532
  EB7C  7D 08 06  ADC $0608,X                   ; 02B7C ×7532
  EB7F  9D 08 06  STA $0608,X                   ; 02B7F ×7532
  EB82  90 11     BCC loc_B0_EB95               ; 02B82 ×7532
  EB84  B5 74     LDA $74,X                     ; 02B84 ×7369
  EB86  E5 77     SBC $77                       ; 02B86 ×7369
  EB88  95 74     STA $74,X                     ; 02B88 ×7369
  EB8A  B0 0B     BCS loc_B0_EB97               ; 02B8A ×7369
  EB8C  A9 00     LDA #$00                      ; 02B8C ×27
  EB8E  95 70     STA $70,X                     ; 02B8E ×27
  EB90  95 75     STA $75,X                     ; 02B90 ×27
  EB92  CE 04 04  DEC $0404                     ; 02B92 ×27

loc_B0_EB95:                    ; from 02b82
  EB95  68        PLA                           ; 02B95 ×190
  EB96  68        PLA                           ; 02B96 ×190

loc_B0_EB97:                    ; from 02b8a
  EB97  60        RTS                           ; 02B97 ×7532

loc_B0_EB98:                    ; from 02b54
  EB98  A6 F9     LDX $F9                       ; 02B98 ×7342
  EB9A  18        CLC                           ; 02B9A ×7342
  EB9B  7D 09 06  ADC $0609,X                   ; 02B9B ×7342
  EB9E  9D 09 06  STA $0609,X                   ; 02B9E ×7342
  EBA1  90 20     BCC loc_B0_EBC3               ; 02BA1 ×7342
  EBA3  BD 0E 06  LDA $060E,X                   ; 02BA3 ×911
  EBA6  18        CLC                           ; 02BA6 ×911
  EBA7  69 01     ADC #$01                      ; 02BA7 ×911
  EBA9  C9 03     CMP #$03                      ; 02BA9 ×911
  EBAB  90 02     BCC loc_B0_EBAF               ; 02BAB ×911
  EBAD  A9 00     LDA #$00                      ; 02BAD ×298

loc_B0_EBAF:                    ; from 02bab
  EBAF  9D 0E 06  STA $060E,X                   ; 02BAF ×911
  EBB2  A8        TAY                           ; 02BB2 ×911
  EBB3  B9 C4 EB  LDA $EBC4,Y                   ; 02BB3 ×911
  EBB6  A6 79     LDX $79                       ; 02BB6 ×911
  EBB8  E0 04     CPX #$04                      ; 02BB8 ×911
  EBBA  B0 03     BCS $EBBF                     ; 02BBA ×911
  EBBC  B9 C7 EB  LDA $EBC7,Y                   ; 02BBC ×911
  EBBF  A6 F9     LDX $F9                       ; 02BBF ×911
  EBC1  95 76     STA $76,X                     ; 02BC1 ×911

loc_B0_EBC3:                    ; from 02ba1 02c0c
  EBC3  60        RTS                           ; 02BC3 ×11490
  EBC4  .byte 16 17 18 13 14 15 C0 FF                           ; 02BC4 data, read by 02bb3 02bbc 02b6c
  EBCC  .byte 80                                                ; 02BCC
  EBCD  .byte 80 FF                                             ; 02BCD data, read by 02b77
  EBCF  .byte 40                                                ; 02BCF

sub_B0_EBD0:                    ; from 029f2
  EBD0  20 03 E9  JSR sub_B0_E903               ; 02BD0 ×4148
  EBD3  A0 03     LDY #$03                      ; 02BD3 ×4148

loc_B0_EBD5:                    ; from 02bdc
  EBD5  B9 15 EC  LDA $EC15,Y                   ; 02BD5 ×16592
  EBD8  99 8C 00  STA $008C,Y                   ; 02BD8 ×16592
  EBDB  88        DEY                           ; 02BDB ×16592
  EBDC  10 F7     BPL loc_B0_EBD5               ; 02BDC ×16592
  EBDE  A2 20     LDX #$20                      ; 02BDE ×4148
  EBE0  20 69 E9  JSR sub_B0_E969               ; 02BE0 ×4148
  EBE3  A9 05     LDA #$05                      ; 02BE3 ×4148
  EBE5  85 79     STA $79                       ; 02BE5 ×4148

loc_B0_EBE7:                    ; from 02c13
  EBE7  86 F9     STX $F9                       ; 02BE7 ×20740
  EBE9  B5 70     LDA $70,X                     ; 02BE9 ×20740
  EBEB  F0 1D     BEQ loc_B0_EC0A               ; 02BEB ×20740
  EBED  20 6C CC  JSR sub_B0_CC6C               ; 02BED ×7532
  EBF0  A5 DF     LDA $DF                       ; 02BF0 ×7532
  EBF2  F0 11     BEQ loc_B0_EC05               ; 02BF2 ×7532
  EBF4  20 8F CC  JSR sub_B0_CC8F               ; 02BF4 ×4030
  EBF7  90 11     BCC loc_B0_EC0A               ; 02BF7 ×4030
  EBF9  8A        TXA                           ; 02BF9 ×531
  EBFA  20 E4 F7  JSR sub_B0_F7E4               ; 02BFA ×531
  EBFD  AA        TAX                           ; 02BFD ×531
  EBFE  CA        DEX                           ; 02BFE ×531
  EBFF  CA        DEX                           ; 02BFF ×531
  EC00  A9 01     LDA #$01                      ; 02C00 ×531
  EC02  9D D9 00  STA $00D9,X                   ; 02C02 ×531

loc_B0_EC05:                    ; from 02bf2
  EC05  20 7E CC  JSR sub_B0_CC7E               ; 02C05 ×4033
  EC08  B0 0F     BCS $EC19                     ; 02C08 ×4033

loc_B0_EC0A:                    ; from 02beb 02bf7
  EC0A  C6 79     DEC $79                       ; 02C0A ×20740
  EC0C  F0 B5     BEQ loc_B0_EBC3               ; 02C0C ×20740
  EC0E  A6 F9     LDX $F9                       ; 02C0E ×16592
  EC10  20 EC C9  JSR sub_B0_C9EC               ; 02C10 ×16592
  EC13  D0 D2     BNE loc_B0_EBE7               ; 02C13 ×16592
  EC15  .byte 02 06 04 0C                                       ; 02C15 data, read by 02bd5
  EC19  A9 10     LDA #$10                      ; 02C19 ×0
  EC1B  8D 14 03  STA $0314                     ; 02C1B ×0
  EC1E  4C FE E8  JMP loc_B0_E8FE               ; 02C1E ×0
  EC21  A2 FF     LDX #$FF                      ; 02C21 ×0
  EC23  8E 06 05  STX $0506                     ; 02C23 ×0
  EC26  8E 16 05  STX $0516                     ; 02C26 ×0
  EC29  8E 26 05  STX $0526                     ; 02C29 ×0
  EC2C  E8        INX                           ; 02C2C ×0
  EC2D  86 BE     STX $BE                       ; 02C2D ×0
  EC2F  86 B9     STX $B9                       ; 02C2F ×0
  EC31  86 B3     STX $B3                       ; 02C31 ×0
  EC33  86 87     STX $87                       ; 02C33 ×0
  EC35  86 97     STX $97                       ; 02C35 ×0
  EC37  E8        INX                           ; 02C37 ×0
  EC38  86 B8     STX $B8                       ; 02C38 ×0
  EC3A  A2 38     LDX #$38                      ; 02C3A ×0
  EC3C  86 BF     STX $BF                       ; 02C3C ×0
  EC3E  4C 2D E5  JMP loc_B0_E52D               ; 02C3E ×0
  EC41  A6 CF     LDX $CF                       ; 02C41 ×0
  EC43  F0 DC     BEQ $EC21                     ; 02C43 ×0
  EC45  A5 0F     LDA $0F                       ; 02C45 ×0
  EC47  F0 06     BEQ $EC4F                     ; 02C47 ×0
  EC49  20 58 DC  JSR sub_B0_DC58               ; 02C49 ×0
  EC4C  4C 60 EC  JMP $EC60                     ; 02C4C ×0
  EC4F  20 07 D8  JSR sub_B0_D807               ; 02C4F ×0
  EC52  20 11 DA  JSR sub_B0_DA11               ; 02C52 ×0
  EC55  B0 03     BCS $EC5A                     ; 02C55 ×0
  EC57  20 B6 DB  JSR sub_B0_DBB6               ; 02C57 ×0
  EC5A  20 5F EE  JSR sub_B0_EE5F               ; 02C5A ×0
  EC5D  20 D9 EE  JSR sub_B0_EED9               ; 02C5D ×0
  EC60  20 42 ED  JSR sub_B0_ED42               ; 02C60 ×0
  EC63  20 A1 EC  JSR sub_B0_ECA1               ; 02C63 ×0
  EC66  A2 20     LDX #$20                      ; 02C66 ×0
  EC68  BC 06 05  LDY $0506,X                   ; 02C68 ×0
  EC6B  10 1C     BPL $EC89                     ; 02C6B ×0
  EC6D  20 F2 C9  JSR sub_B0_C9F2               ; 02C6D ×0
  EC70  10 F6     BPL $EC68                     ; 02C70 ×0
  EC72  A5 52     LDA $52                       ; 02C72 ×0
  EC74  C9 05     CMP #$05                      ; 02C74 ×0
  EC76  D0 10     BNE $EC88                     ; 02C76 ×0
  EC78  A9 00     LDA #$00                      ; 02C78 ×0
  EC7A  85 6C     STA $6C                       ; 02C7A ×0
  EC7C  A2 20     LDX #$20                      ; 02C7C ×0
  EC7E  20 9A E5  JSR sub_B0_E59A               ; 02C7E ×0
  EC81  B0 0C     BCS $EC8F                     ; 02C81 ×0
  EC83  20 F2 C9  JSR sub_B0_C9F2               ; 02C83 ×0
  EC86  10 F6     BPL $EC7E                     ; 02C86 ×0
  EC88  60        RTS                           ; 02C88 ×0
  EC89  A9 00     LDA #$00                      ; 02C89 ×0
  EC8B  85 51     STA $51                       ; 02C8B ×0
  EC8D  E6 6C     INC $6C                       ; 02C8D ×0
  EC8F  A9 FF     LDA #$FF                      ; 02C8F ×0
  EC91  9D 06 05  STA $0506,X                   ; 02C91 ×0

loc_B0_EC94:                    ; from 03089
  EC94  A9 00     LDA #$00                      ; 02C94 ×19
  EC96  9D 00 05  STA $0500,X                   ; 02C96 ×19
  EC99  9D 05 05  STA $0505,X                   ; 02C99 ×19
  EC9C  A9 67     LDA #$67                      ; 02C9C ×19
  EC9E  4C 26 ED  JMP sub_B0_ED26               ; 02C9E ×19

sub_B0_ECA1:                    ; from 02c63
  ECA1  A5 69     LDA $69                       ; 02CA1 ×0
  ECA3  F0 2F     BEQ $ECD4                     ; 02CA3 ×0
  ECA5  C9 01     CMP #$01                      ; 02CA5 ×0
  ECA7  D0 06     BNE $ECAF                     ; 02CA7 ×0
  ECA9  A5 68     LDA $68                       ; 02CA9 inferred, not run
  ECAB  C9 18     CMP #$18                      ; 02CAB inferred, not run
  ECAD  90 25     BCC $ECD4                     ; 02CAD inferred, not run
  ECAF  A5 52     LDA $52                       ; 02CAF ×0
  ECB1  C9 04     CMP #$04                      ; 02CB1 ×0
  ECB3  D0 1F     BNE $ECD4                     ; 02CB3 ×0
  ECB5  A2 90     LDX #$90                      ; 02CB5 ×0
  ECB7  BD 00 05  LDA $0500,X                   ; 02CB7 ×0
  ECBA  F0 06     BEQ $ECC2                     ; 02CBA ×0
  ECBC  20 16 CC  JSR sub_B0_CC16               ; 02CBC inferred, not run
  ECBF  B0 01     BCS $ECC2                     ; 02CBF inferred, not run
  ECC1  60        RTS                           ; 02CC1 inferred, not run
  ECC2  A5 C9     LDA $C9                       ; 02CC2 ×0
  ECC4  C9 02     CMP #$02                      ; 02CC4 ×0
  ECC6  F0 0C     BEQ $ECD4                     ; 02CC6 ×0
  ECC8  A2 20     LDX #$20                      ; 02CC8 ×0
  ECCA  BD 00 05  LDA $0500,X                   ; 02CCA ×0
  ECCD  F0 06     BEQ $ECD5                     ; 02CCD ×0
  ECCF  20 F2 C9  JSR sub_B0_C9F2               ; 02CCF ×0
  ECD2  10 F6     BPL $ECCA                     ; 02CD2 ×0
  ECD4  60        RTS                           ; 02CD4 ×0
  ECD5  20 B0 E6  JSR sub_B0_E6B0               ; 02CD5 ×0
  ECD8  86 8C     STX $8C                       ; 02CD8 ×0
  ECDA  A2 20     LDX #$20                      ; 02CDA ×0
  ECDC  E4 8C     CPX $8C                       ; 02CDC ×0
  ECDE  F0 14     BEQ $ECF4                     ; 02CDE ×0
  ECE0  BD 00 05  LDA $0500,X                   ; 02CE0 ×0
  ECE3  F0 0F     BEQ $ECF4                     ; 02CE3 ×0
  ECE5  20 16 CC  JSR sub_B0_CC16               ; 02CE5 ×0
  ECE8  B0 06     BCS $ECF0                     ; 02CE8 ×0
  ECEA  C5 7B     CMP $7B                       ; 02CEA ×0
  ECEC  B0 E6     BCS $ECD4                     ; 02CEC ×0
  ECEE  90 04     BCC $ECF4                     ; 02CEE ×0
  ECF0  C9 21     CMP #$21                      ; 02CF0 ×0
  ECF2  90 E0     BCC $ECD4                     ; 02CF2 ×0
  ECF4  20 F2 C9  JSR sub_B0_C9F2               ; 02CF4 ×0
  ECF7  10 E3     BPL $ECDC                     ; 02CF7 ×0
  ECF9  A6 8C     LDX $8C                       ; 02CF9 ×0
  ECFB  A5 6A     LDA $6A                       ; 02CFB ×0
  ECFD  29 F8     AND #$F8                      ; 02CFD ×0
  ECFF  9D 01 05  STA $0501,X                   ; 02CFF ×0
  ED02  A5 6B     LDA $6B                       ; 02D02 ×0
  ED04  29 01     AND #$01                      ; 02D04 ×0
  ED06  49 01     EOR #$01                      ; 02D06 ×0
  ED08  9D 02 05  STA $0502,X                   ; 02D08 ×0
  ED0B  A9 B8     LDA #$B8                      ; 02D0B ×0
  ED0D  9D 03 05  STA $0503,X                   ; 02D0D ×0
  ED10  A9 06     LDA #$06                      ; 02D10 ×0
  ED12  9D 04 05  STA $0504,X                   ; 02D12 ×0
  ED15  A9 01     LDA #$01                      ; 02D15 ×0
  ED17  9D 05 05  STA $0505,X                   ; 02D17 ×0
  ED1A  E6 6D     INC $6D                       ; 02D1A ×0

loc_B0_ED1C:                    ; from 03020
  ED1C  A9 FF     LDA #$FF                      ; 02D1C ×27
  ED1E  9D 06 05  STA $0506,X                   ; 02D1E ×27

loc_B0_ED21:                    ; from 030b2
  ED21  A9 FF     LDA #$FF                      ; 02D21 ×77
  ED23  9D 00 05  STA $0500,X                   ; 02D23 ×77

sub_B0_ED26:                    ; from 02573 02c9e 0260b 02615
  ED26  86 F9     STX $F9                       ; 02D26 ×145
  ED28  85 8B     STA $8B                       ; 02D28 ×145
  ED2A  A9 04     LDA #$04                      ; 02D2A ×145
  ED2C  85 79     STA $79                       ; 02D2C ×145
  ED2E  A0 00     LDY #$00                      ; 02D2E ×145

loc_B0_ED30:                    ; from 02d3a
  ED30  BD 01 05  LDA $0501,X                   ; 02D30 ×580
  ED33  99 8C 00  STA $008C,Y                   ; 02D33 ×580
  ED36  C8        INY                           ; 02D36 ×580
  ED37  E8        INX                           ; 02D37 ×580
  ED38  C6 79     DEC $79                       ; 02D38 ×580
  ED3A  D0 F4     BNE loc_B0_ED30               ; 02D3A ×580
  ED3C  20 C4 D1  JSR sub_B0_D1C4               ; 02D3C ×145
  ED3F  A6 F9     LDX $F9                       ; 02D3F ×145
  ED41  60        RTS                           ; 02D41 ×145

sub_B0_ED42:                    ; from 02c60
  ED42  20 51 ED  JSR sub_B0_ED51               ; 02D42 ×0
  ED45  20 FE ED  JSR sub_B0_EDFE               ; 02D45 ×0
  ED48  A5 52     LDA $52                       ; 02D48 ×0
  ED4A  C9 03     CMP #$03                      ; 02D4A ×0
  ED4C  B0 17     BCS $ED65                     ; 02D4C ×0
  ED4E  4C 28 EE  JMP $EE28                     ; 02D4E ×0

sub_B0_ED51:                    ; from 02d42
  ED51  A0 02     LDY #$02                      ; 02D51 ×0
  ED53  A2 10     LDX #$10                      ; 02D53 ×0
  ED55  B5 70     LDA $70,X                     ; 02D55 ×0
  ED57  F0 07     BEQ $ED60                     ; 02D57 ×0
  ED59  84 FA     STY $FA                       ; 02D59 ×0
  ED5B  20 66 ED  JSR sub_B0_ED66               ; 02D5B ×0
  ED5E  A4 FA     LDY $FA                       ; 02D5E ×0
  ED60  A2 20     LDX #$20                      ; 02D60 ×0
  ED62  88        DEY                           ; 02D62 ×0
  ED63  D0 F0     BNE $ED55                     ; 02D63 ×0
  ED65  60        RTS                           ; 02D65 ×0

sub_B0_ED66:                    ; from 02d5b
  ED66  B5 77     LDA $77,X                     ; 02D66 ×0
  ED68  D0 23     BNE $ED8D                     ; 02D68 ×0
  ED6A  20 B3 ED  JSR sub_B0_EDB3               ; 02D6A ×0
  ED6D  20 0A EE  JSR sub_B0_EE0A               ; 02D6D ×0
  ED70  A5 DE     LDA $DE                       ; 02D70 ×0
  ED72  F0 18     BEQ $ED8C                     ; 02D72 ×0
  ED74  A9 00     LDA #$00                      ; 02D74 ×0
  ED76  95 70     STA $70,X                     ; 02D76 ×0
  ED78  B5 74     LDA $74,X                     ; 02D78 ×0
  ED7A  85 77     STA $77                       ; 02D7A ×0
  ED7C  A2 20     LDX #$20                      ; 02D7C ×0
  ED7E  20 C2 EE  JSR sub_B0_EEC2               ; 02D7E ×0
  ED81  A9 02     LDA #$02                      ; 02D81 ×0
  ED83  A4 DE     LDY $DE                       ; 02D83 ×0
  ED85  88        DEY                           ; 02D85 ×0
  ED86  F0 02     BEQ $ED8A                     ; 02D86 ×0
  ED88  A9 01     LDA #$01                      ; 02D88 ×0
  ED8A  95 77     STA $77,X                     ; 02D8A ×0
  ED8C  60        RTS                           ; 02D8C ×0
  ED8D  B4 77     LDY $77,X                     ; 02D8D ×0
  ED8F  F0 FB     BEQ $ED8C                     ; 02D8F ×0
  ED91  A0 00     LDY #$00                      ; 02D91 ×0
  ED93  20 E7 ED  JSR sub_B0_EDE7               ; 02D93 ×0
  ED96  B4 77     LDY $77,X                     ; 02D96 ×0
  ED98  B5 74     LDA $74,X                     ; 02D98 ×0
  ED9A  C0 01     CPY #$01                      ; 02D9A ×0
  ED9C  F0 09     BEQ $EDA7                     ; 02D9C ×0
  ED9E  38        SEC                           ; 02D9E ×0
  ED9F  E9 02     SBC #$02                      ; 02D9F ×0
  EDA1  95 74     STA $74,X                     ; 02DA1 ×0
  EDA3  B0 E7     BCS $ED8C                     ; 02DA3 ×0
  EDA5  90 07     BCC $EDAE                     ; 02DA5 ×0
  EDA7  18        CLC                           ; 02DA7 ×0
  EDA8  69 02     ADC #$02                      ; 02DA8 ×0
  EDAA  95 74     STA $74,X                     ; 02DAA ×0
  EDAC  90 DE     BCC $ED8C                     ; 02DAC ×0
  EDAE  A9 00     LDA #$00                      ; 02DAE ×0
  EDB0  95 70     STA $70,X                     ; 02DB0 ×0
  EDB2  60        RTS                           ; 02DB2 ×0

sub_B0_EDB3:                    ; from 02d6a
  EDB3  A5 0F     LDA $0F                       ; 02DB3 ×0
  EDB5  D0 43     BNE $EDFA                     ; 02DB5 ×0
  EDB7  A9 20     LDA #$20                      ; 02DB7 ×0
  EDB9  20 F3 ED  JSR sub_B0_EDF3               ; 02DB9 ×0
  EDBC  90 3C     BCC $EDFA                     ; 02DBC ×0
  EDBE  A4 CA     LDY $CA                       ; 02DBE ×0
  EDC0  F0 38     BEQ $EDFA                     ; 02DC0 ×0
  EDC2  88        DEY                           ; 02DC2 ×0
  EDC3  F0 0E     BEQ $EDD3                     ; 02DC3 ×0
  EDC5  FE 08 06  INC $0608,X                   ; 02DC5 ×0
  EDC8  BD 08 06  LDA $0608,X                   ; 02DC8 ×0
  EDCB  C9 03     CMP #$03                      ; 02DCB ×0
  EDCD  90 0E     BCC $EDDD                     ; 02DCD ×0
  EDCF  A9 00     LDA #$00                      ; 02DCF ×0
  EDD1  F0 0A     BEQ $EDDD                     ; 02DD1 ×0
  EDD3  DE 08 06  DEC $0608,X                   ; 02DD3 ×0
  EDD6  BD 08 06  LDA $0608,X                   ; 02DD6 ×0
  EDD9  10 02     BPL $EDDD                     ; 02DD9 ×0
  EDDB  A9 02     LDA #$02                      ; 02DDB ×0
  EDDD  9D 08 06  STA $0608,X                   ; 02DDD ×0
  EDE0  A8        TAY                           ; 02DE0 ×0
  EDE1  B9 FB ED  LDA $EDFB,Y                   ; 02DE1 ×0
  EDE4  95 76     STA $76,X                     ; 02DE4 ×0
  EDE6  60        RTS                           ; 02DE6 ×0

sub_B0_EDE7:                    ; from 02d93
  EDE7  A9 40     LDA #$40                      ; 02DE7 ×0
  EDE9  20 F3 ED  JSR sub_B0_EDF3               ; 02DE9 ×0
  EDEC  90 0C     BCC $EDFA                     ; 02DEC ×0
  EDEE  B4 77     LDY $77,X                     ; 02DEE ×0
  EDF0  4C C0 ED  JMP $EDC0                     ; 02DF0 ×0

sub_B0_EDF3:                    ; from 02db9 02de9
  EDF3  18        CLC                           ; 02DF3 ×0
  EDF4  7D 09 06  ADC $0609,X                   ; 02DF4 ×0
  EDF7  9D 09 06  STA $0609,X                   ; 02DF7 ×0
  EDFA  60        RTS                           ; 02DFA ×0
  EDFB  .byte 20 21 35                                          ; 02DFB

sub_B0_EDFE:                    ; from 02d45
  EDFE  A2 30     LDX #$30                      ; 02DFE ×0
  EE00  B5 70     LDA $70,X                     ; 02E00 ×0
  EE02  F0 F6     BEQ $EDFA                     ; 02E02 ×0
  EE04  B5 75     LDA $75,X                     ; 02E04 ×0
  EE06  D0 F2     BNE $EDFA                     ; 02E06 ×0
  EE08  F0 83     BEQ $ED8D                     ; 02E08 ×0

sub_B0_EE0A:                    ; from 02d6d
  EE0A  A5 84     LDA $84                       ; 02E0A ×0
  EE0C  C5 BF     CMP $BF                       ; 02E0C ×0
  EE0E  F0 17     BEQ $EE27                     ; 02E0E ×0
  EE10  90 0B     BCC $EE1D                     ; 02E10 ×0
  EE12  C6 84     DEC $84                       ; 02E12 ×0
  EE14  A5 84     LDA $84                       ; 02E14 ×0
  EE16  C5 BF     CMP $BF                       ; 02E16 ×0
  EE18  F0 0D     BEQ $EE27                     ; 02E18 ×0
  EE1A  C6 84     DEC $84                       ; 02E1A ×0
  EE1C  60        RTS                           ; 02E1C ×0
  EE1D  E6 84     INC $84                       ; 02E1D ×0
  EE1F  A5 84     LDA $84                       ; 02E1F ×0
  EE21  C5 BF     CMP $BF                       ; 02E21 ×0
  EE23  F0 02     BEQ $EE27                     ; 02E23 ×0
  EE25  E6 84     INC $84                       ; 02E25 ×0
  EE27  60        RTS                           ; 02E27 ×0
  EE28  20 DA F7  JSR sub_B0_F7DA               ; 02E28 ×0
  EE2B  BD 00 05  LDA $0500,X                   ; 02E2B ×0
  EE2E  F0 F7     BEQ $EE27                     ; 02E2E ×0
  EE30  BD 09 05  LDA $0509,X                   ; 02E30 ×0
  EE33  18        CLC                           ; 02E33 ×0
  EE34  69 80     ADC #$80                      ; 02E34 ×0
  EE36  9D 09 05  STA $0509,X                   ; 02E36 ×0
  EE39  90 EC     BCC $EE27                     ; 02E39 ×0
  EE3B  BD 01 05  LDA $0501,X                   ; 02E3B ×0
  EE3E  38        SEC                           ; 02E3E ×0
  EE3F  E9 02     SBC #$02                      ; 02E3F ×0
  EE41  9D 01 05  STA $0501,X                   ; 02E41 ×0
  EE44  B0 08     BCS $EE4E                     ; 02E44 ×0
  EE46  BD 02 05  LDA $0502,X                   ; 02E46 ×0
  EE49  49 01     EOR #$01                      ; 02E49 ×0
  EE4B  9D 02 05  STA $0502,X                   ; 02E4B ×0
  EE4E  BC 04 05  LDY $0504,X                   ; 02E4E ×0
  EE51  C8        INY                           ; 02E51 ×0
  EE52  98        TYA                           ; 02E52 ×0
  EE53  C0 0A     CPY #$0A                      ; 02E53 ×0
  EE55  90 02     BCC $EE59                     ; 02E55 ×0
  EE57  A9 06     LDA #$06                      ; 02E57 ×0
  EE59  9D 04 05  STA $0504,X                   ; 02E59 ×0
  EE5C  4C 21 ED  JMP loc_B0_ED21               ; 02E5C ×0

sub_B0_EE5F:                    ; from 02c5a
  EE5F  A5 BE     LDA $BE                       ; 02E5F ×0
  EE61  05 87     ORA $87                       ; 02E61 ×0
  EE63  D0 2A     BNE $EE8F                     ; 02E63 ×0
  EE65  A5 80     LDA $80                       ; 02E65 ×0
  EE67  F0 26     BEQ $EE8F                     ; 02E67 ×0
  EE69  A9 08     LDA #$08                      ; 02E69 ×0
  EE6B  85 77     STA $77                       ; 02E6B ×0
  EE6D  20 74 EF  JSR sub_B0_EF74               ; 02E6D ×0
  EE70  A2 20     LDX #$20                      ; 02E70 ×0
  EE72  BD 06 05  LDA $0506,X                   ; 02E72 ×0
  EE75  10 0F     BPL $EE86                     ; 02E75 ×0
  EE77  BD 00 05  LDA $0500,X                   ; 02E77 ×0
  EE7A  F0 0A     BEQ $EE86                     ; 02E7A ×0
  EE7C  20 53 EF  JSR sub_B0_EF53               ; 02E7C ×0
  EE7F  B0 05     BCS $EE86                     ; 02E7F ×0
  EE81  20 8F CC  JSR sub_B0_CC8F               ; 02E81 ×0
  EE84  B0 0A     BCS $EE90                     ; 02E84 ×0
  EE86  20 F2 C9  JSR sub_B0_C9F2               ; 02E86 ×0
  EE89  10 E7     BPL $EE72                     ; 02E89 ×0
  EE8B  A9 00     LDA #$00                      ; 02E8B ×0
  EE8D  85 BE     STA $BE                       ; 02E8D ×0
  EE8F  60        RTS                           ; 02E8F ×0
  EE90  E6 BE     INC $BE                       ; 02E90 ×0
  EE92  A9 67     LDA #$67                      ; 02E92 ×0
  EE94  9D 06 05  STA $0506,X                   ; 02E94 ×0
  EE97  A2 30     LDX #$30                      ; 02E97 ×0
  EE99  20 C2 EE  JSR sub_B0_EEC2               ; 02E99 ×0
  EE9C  A5 CA     LDA $CA                       ; 02E9C ×0
  EE9E  F0 15     BEQ $EEB5                     ; 02E9E ×0
  EEA0  38        SEC                           ; 02EA0 ×0
  EEA1  E9 01     SBC #$01                      ; 02EA1 ×0
  EEA3  F0 08     BEQ $EEAD                     ; 02EA3 ×0
  EEA5  A9 01     LDA #$01                      ; 02EA5 inferred, not run
  EEA7  85 77     STA $77                       ; 02EA7 inferred, not run
  EEA9  A9 02     LDA #$02                      ; 02EA9 inferred, not run
  EEAB  D0 0E     BNE $EEBB                     ; 02EAB inferred, not run
  EEAD  A9 02     LDA #$02                      ; 02EAD ×0
  EEAF  85 77     STA $77                       ; 02EAF ×0
  EEB1  A9 01     LDA #$01                      ; 02EB1 ×0
  EEB3  D0 06     BNE $EEBB                     ; 02EB3 ×0
  EEB5  A9 02     LDA #$02                      ; 02EB5 ×0
  EEB7  85 77     STA $77                       ; 02EB7 ×0
  EEB9  A9 00     LDA #$00                      ; 02EB9 ×0
  EEBB  85 A7     STA $A7                       ; 02EBB ×0
  EEBD  A5 77     LDA $77                       ; 02EBD ×0
  EEBF  85 87     STA $87                       ; 02EBF ×0
  EEC1  60        RTS                           ; 02EC1 ×0

sub_B0_EEC2:                    ; from 02d7e 02e99 02f48
  EEC2  A9 01     LDA #$01                      ; 02EC2 ×0
  EEC4  95 70     STA $70,X                     ; 02EC4 ×0
  EEC6  A9 B8     LDA #$B8                      ; 02EC6 ×0
  EEC8  95 73     STA $73,X                     ; 02EC8 ×0
  EECA  A5 77     LDA $77                       ; 02ECA ×0
  EECC  95 74     STA $74,X                     ; 02ECC ×0
  EECE  A9 00     LDA #$00                      ; 02ECE ×0
  EED0  95 75     STA $75,X                     ; 02ED0 ×0
  EED2  95 77     STA $77,X                     ; 02ED2 ×0
  EED4  A9 20     LDA #$20                      ; 02ED4 ×0
  EED6  95 76     STA $76,X                     ; 02ED6 ×0
  EED8  60        RTS                           ; 02ED8 ×0

sub_B0_EED9:                    ; from 02c5d
  EED9  A6 B3     LDX $B3                       ; 02ED9 ×0
  EEDB  D0 0C     BNE $EEE9                     ; 02EDB ×0
  EEDD  A5 DF     LDA $DF                       ; 02EDD ×0
  EEDF  D0 09     BNE $EEEA                     ; 02EDF ×0
  EEE1  A5 BE     LDA $BE                       ; 02EE1 ×0
  EEE3  F0 53     BEQ $EF38                     ; 02EE3 ×0
  EEE5  A2 01     LDX #$01                      ; 02EE5 ×0
  EEE7  86 0F     STX $0F                       ; 02EE7 ×0
  EEE9  60        RTS                           ; 02EE9 ×0
  EEEA  20 03 E9  JSR sub_B0_E903               ; 02EEA ×0
  EEED  A2 10     LDX #$10                      ; 02EED ×0
  EEEF  B5 70     LDA $70,X                     ; 02EEF ×0
  EEF1  F0 0C     BEQ $EEFF                     ; 02EF1 ×0
  EEF3  A9 00     LDA #$00                      ; 02EF3 ×0
  EEF5  85 77     STA $77                       ; 02EF5 ×0
  EEF7  20 74 EF  JSR sub_B0_EF74               ; 02EF7 ×0
  EEFA  20 8F CC  JSR sub_B0_CC8F               ; 02EFA ×0
  EEFD  B0 39     BCS $EF38                     ; 02EFD ×0
  EEFF  A5 73     LDA $73                       ; 02EFF ×0
  EF01  C9 A4     CMP #$A4                      ; 02F01 ×0
  EF03  90 04     BCC $EF09                     ; 02F03 ×0
  EF05  A9 01     LDA #$01                      ; 02F05 ×0
  EF07  85 B3     STA $B3                       ; 02F07 ×0
  EF09  20 03 E9  JSR sub_B0_E903               ; 02F09 ×0
  EF0C  A2 20     LDX #$20                      ; 02F0C ×0
  EF0E  BD 00 05  LDA $0500,X                   ; 02F0E ×0
  EF11  F0 1C     BEQ $EF2F                     ; 02F11 ×0
  EF13  20 53 EF  JSR sub_B0_EF53               ; 02F13 ×0
  EF16  B0 17     BCS $EF2F                     ; 02F16 ×0
  EF18  86 F9     STX $F9                       ; 02F18 ×0
  EF1A  20 8F CC  JSR sub_B0_CC8F               ; 02F1A ×0
  EF1D  90 10     BCC $EF2F                     ; 02F1D ×0
  EF1F  8A        TXA                           ; 02F1F ×0
  EF20  20 DF F7  JSR sub_B0_F7DF               ; 02F20 ×0
  EF23  A9 01     LDA #$01                      ; 02F23 ×0
  EF25  95 D9     STA $D9,X                     ; 02F25 ×0
  EF27  A6 F9     LDX $F9                       ; 02F27 ×0
  EF29  A5 73     LDA $73                       ; 02F29 ×0
  EF2B  C9 A4     CMP #$A4                      ; 02F2B ×0
  EF2D  B0 0E     BCS $EF3D                     ; 02F2D ×0
  EF2F  20 F2 C9  JSR sub_B0_C9F2               ; 02F2F ×0
  EF32  10 DA     BPL $EF0E                     ; 02F32 ×0
  EF34  A2 00     LDX #$00                      ; 02F34 ×0
  EF36  F0 02     BEQ $EF3A                     ; 02F36 ×0
  EF38  A2 01     LDX #$01                      ; 02F38 ×0
  EF3A  86 B8     STX $B8                       ; 02F3A ×0
  EF3C  60        RTS                           ; 02F3C ×0
  EF3D  A9 67     LDA #$67                      ; 02F3D ×0
  EF3F  9D 06 05  STA $0506,X                   ; 02F3F ×0
  EF42  A2 A0     LDX #$A0                      ; 02F42 ×0
  EF44  86 73     STX $73                       ; 02F44 ×0
  EF46  A2 10     LDX #$10                      ; 02F46 ×0
  EF48  20 C2 EE  JSR sub_B0_EEC2               ; 02F48 ×0
  EF4B  A9 00     LDA #$00                      ; 02F4B ×0
  EF4D  85 DE     STA $DE                       ; 02F4D ×0
  EF4F  85 B3     STA $B3                       ; 02F4F ×0
  EF51  F0 E5     BEQ $EF38                     ; 02F51 ×0

sub_B0_EF53:                    ; from 02e7c 02f13
  EF53  A9 10     LDA #$10                      ; 02F53 ×0
  EF55  8D C9 03  STA $03C9                     ; 02F55 ×0
  EF58  20 16 CC  JSR sub_B0_CC16               ; 02F58 ×0
  EF5B  B0 12     BCS $EF6F                     ; 02F5B ×0
  EF5D  BD 04 05  LDA $0504,X                   ; 02F5D ×0
  EF60  38        SEC                           ; 02F60 ×0
  EF61  E9 06     SBC #$06                      ; 02F61 ×0
  EF63  A8        TAY                           ; 02F63 ×0
  EF64  B9 70 EF  LDA $EF70,Y                   ; 02F64 ×0
  EF67  18        CLC                           ; 02F67 ×0
  EF68  65 77     ADC $77                       ; 02F68 ×0
  EF6A  8D CB 03  STA $03CB                     ; 02F6A ×0
  EF6D  B0 00     BCS $EF6F                     ; 02F6D ×0
  EF6F  60        RTS                           ; 02F6F ×0
  EF70  .byte 00 06 04 02                                       ; 02F70

sub_B0_EF74:                    ; from 02e6d 02ef7
  EF74  A0 01     LDY #$01                      ; 02F74 ×0
  EF76  B9 8D EF  LDA $EF8D,Y                   ; 02F76 ×0
  EF79  A6 77     LDX $77                       ; 02F79 ×0
  EF7B  D0 03     BNE $EF80                     ; 02F7B ×0
  EF7D  B9 8D EF  LDA $EF8D,Y                   ; 02F7D ×0
  EF80  99 8C 00  STA $008C,Y                   ; 02F80 ×0
  EF83  88        DEY                           ; 02F83 ×0
  EF84  10 F0     BPL $EF76                     ; 02F84 ×0
  EF86  A4 77     LDY $77                       ; 02F86 ×0
  EF88  A2 10     LDX #$10                      ; 02F88 ×0
  EF8A  4C 62 CC  JMP sub_B0_CC62               ; 02F8A ×0
  EF8D  .byte 00 18                                             ; 02F8D

jt_B0_EF8F:                    ; from 004e0
  EF8F  A6 CF     LDX $CF                       ; 02F8F ×2144
  EF91  F0 1F     BEQ loc_B0_EFB2               ; 02F91 ×2144
  EF93  A5 0F     LDA $0F                       ; 02F93 ×2141
  EF95  D0 15     BNE $EFAC                     ; 02F95 ×2141
  EF97  20 11 DA  JSR sub_B0_DA11               ; 02F97 ×2141
  EF9A  20 78 F0  JSR sub_B0_F078               ; 02F9A ×2141
  EF9D  20 C7 EF  JSR sub_B0_EFC7               ; 02F9D ×2141
  EFA0  20 B5 F0  JSR sub_B0_F0B5               ; 02FA0 ×2141
  EFA3  20 8C F0  JSR sub_B0_F08C               ; 02FA3 ×2141
  EFA6  20 07 D8  JSR sub_B0_D807               ; 02FA6 ×2141
  EFA9  4C B6 DB  JMP sub_B0_DBB6               ; 02FA9 ×2141
  EFAC  20 58 DC  JSR sub_B0_DC58               ; 02FAC ×0
  EFAF  4C A6 EF  JMP $EFA6                     ; 02FAF ×0

loc_B0_EFB2:                    ; from 02f91
  EFB2  E6 CF     INC $CF                       ; 02FB2 ×3
  EFB4  A2 00     LDX #$00                      ; 02FB4 ×3
  EFB6  86 AF     STX $AF                       ; 02FB6 ×3
  EFB8  8E 23 03  STX $0323                     ; 02FB8 ×3
  EFBB  E8        INX                           ; 02FBB ×3
  EFBC  86 B8     STX $B8                       ; 02FBC ×3
  EFBE  A5 6D     LDA $6D                       ; 02FBE ×3
  EFC0  29 FC     AND #$FC                      ; 02FC0 ×3
  EFC2  85 6D     STA $6D                       ; 02FC2 ×3
  EFC4  4C 06 C9  JMP loc_B0_C906               ; 02FC4 ×3

sub_B0_EFC7:                    ; from 02f9d
  EFC7  A5 69     LDA $69                       ; 02FC7 ×2141
  EFC9  C9 02     CMP #$02                      ; 02FC9 ×2141
  EFCB  90 2B     BCC loc_B0_EFF8               ; 02FCB ×2141
  EFCD  A5 92     LDA $92                       ; 02FCD ×2141
  EFCF  F0 0B     BEQ loc_B0_EFDC               ; 02FCF ×2141
  EFD1  A5 6A     LDA $6A                       ; 02FD1 ×128
  EFD3  29 F8     AND #$F8                      ; 02FD3 ×128
  EFD5  C5 94     CMP $94                       ; 02FD5 ×128
  EFD7  F0 1F     BEQ loc_B0_EFF8               ; 02FD7 ×128
  EFD9  C6 92     DEC $92                       ; 02FD9 ×27
  EFDB  60        RTS                           ; 02FDB ×27

loc_B0_EFDC:                    ; from 02fcf
  EFDC  20 C9 E6  JSR sub_B0_E6C9               ; 02FDC ×2013
  EFDF  A8        TAY                           ; 02FDF ×2013
  EFE0  B9 27 F0  LDA $F027,Y                   ; 02FE0 ×2013
  EFE3  29 F0     AND #$F0                      ; 02FE3 ×2013
  EFE5  85 94     STA $94                       ; 02FE5 ×2013
  EFE7  A5 6A     LDA $6A                       ; 02FE7 ×2013
  EFE9  29 F8     AND #$F8                      ; 02FE9 ×2013
  EFEB  C5 94     CMP $94                       ; 02FEB ×2013
  EFED  D0 09     BNE loc_B0_EFF8               ; 02FED ×2013
  EFEF  20 F9 EF  JSR sub_B0_EFF9               ; 02FEF ×27
  EFF2  E6 6D     INC $6D                       ; 02FF2 ×27
  EFF4  E6 6D     INC $6D                       ; 02FF4 ×27
  EFF6  E6 92     INC $92                       ; 02FF6 ×27

loc_B0_EFF8:                    ; from 02fed 02fd7
  EFF8  60        RTS                           ; 02FF8 ×2114

sub_B0_EFF9:                    ; from 02fef
  EFF9  A2 20     LDX #$20                      ; 02FF9 ×27

loc_B0_EFFB:                    ; from 03003
  EFFB  BD 00 05  LDA $0500,X                   ; 02FFB ×54
  EFFE  F0 06     BEQ loc_B0_F006               ; 02FFE ×54
  F000  20 F2 C9  JSR sub_B0_C9F2               ; 03000 ×27
  F003  10 F6     BPL loc_B0_EFFB               ; 03003 ×27
  F005  60        RTS                           ; 03005 inferred, not run

loc_B0_F006:                    ; from 02ffe
  F006  20 67 F0  JSR sub_B0_F067               ; 03006 ×27
  F009  B9 27 F0  LDA $F027,Y                   ; 03009 ×27
  F00C  29 03     AND #$03                      ; 0300C ×27
  F00E  84 8E     STY $8E                       ; 0300E ×27
  F010  A8        TAY                           ; 03010 ×27
  F011  B9 23 F0  LDA $F023,Y                   ; 03011 ×27
  F014  9D 04 05  STA $0504,X                   ; 03014 ×27
  F017  A4 8E     LDY $8E                       ; 03017 ×27
  F019  C8        INY                           ; 03019 ×27
  F01A  B9 27 F0  LDA $F027,Y                   ; 0301A ×27
  F01D  9D 03 05  STA $0503,X                   ; 0301D ×27
  F020  4C 1C ED  JMP loc_B0_ED1C               ; 03020 ×27
  F023  .byte 0E                                                ; 03023 data, read by 03011
  F024  .byte 0C 0A 0E                                          ; 03024
  F027  .byte 78 98 B8 98 68 90 B8 98 78 98 B8 90 78 90 B8 90   ; 03027 data, read by 02fe0 03009 0301a
  F037  .byte 79 98 B8 90 79 90 C9 98 79 90 B8 98 68 98 C9 98   ; 03037
  F047  .byte 59 98 C9 98 7A 98 B9 98 68 90 B9 78 78 98 BA 90   ; 03047
  F057  .byte 4A 98 AA 98 6A 98 B9 90 68 98 AA 78 58 98 C8 98   ; 03057

sub_B0_F067:                    ; from 03006
  F067  A5 6A     LDA $6A                       ; 03067 ×27
  F069  29 F8     AND #$F8                      ; 03069 ×27
  F06B  9D 01 05  STA $0501,X                   ; 0306B ×27

sub_B0_F06E:                    ; from 025e4 00d94
  F06E  A5 6B     LDA $6B                       ; 0306E ×30
  F070  29 01     AND #$01                      ; 03070 ×30
  F072  49 01     EOR #$01                      ; 03072 ×30
  F074  9D 02 05  STA $0502,X                   ; 03074 ×30
  F077  60        RTS                           ; 03077 ×30

sub_B0_F078:                    ; from 02f9a
  F078  A2 20     LDX #$20                      ; 03078 ×2141

loc_B0_F07A:                    ; from 03082
  F07A  20 9A E5  JSR sub_B0_E59A               ; 0307A ×6403
  F07D  B0 06     BCS loc_B0_F085               ; 0307D ×6403
  F07F  20 F2 C9  JSR sub_B0_C9F2               ; 0307F ×6384
  F082  10 F6     BPL loc_B0_F07A               ; 03082 ×6384

loc_B0_F084:                    ; from 030a0 03093
  F084  60        RTS                           ; 03084 ×4213

loc_B0_F085:                    ; from 0307d
  F085  A5 6B     LDA $6B                       ; 03085 ×19
  F087  F0 FB     BEQ loc_B0_F084               ; 03087 ×19
  F089  4C 94 EC  JMP loc_B0_EC94               ; 03089 ×19

sub_B0_F08C:                    ; from 02fa3
  F08C  A5 90     LDA $90                       ; 0308C ×2141
  F08E  F0 0E     BEQ loc_B0_F09E               ; 0308E ×2141
  F090  CE A7 00  DEC $00A7                     ; 03090 ×75
  F093  D0 EF     BNE loc_B0_F084               ; 03093 ×75
  F095  A9 00     LDA #$00                      ; 03095 ×25
  F097  85 A8     STA $A8                       ; 03097 ×25
  F099  85 90     STA $90                       ; 03099 ×25
  F09B  4C A8 F0  JMP loc_B0_F0A8               ; 0309B ×25

loc_B0_F09E:                    ; from 0308e
  F09E  A5 A8     LDA $A8                       ; 0309E ×2066
  F0A0  F0 E2     BEQ loc_B0_F084               ; 030A0 ×2066
  F0A2  A9 03     LDA #$03                      ; 030A2 ×25
  F0A4  85 A7     STA $A7                       ; 030A4 ×25
  F0A6  E6 90     INC $90                       ; 030A6 ×25

loc_B0_F0A8:                    ; from 0309b
  F0A8  A6 91     LDX $91                       ; 030A8 ×50
  F0AA  BD 04 05  LDA $0504,X                   ; 030AA ×50
  F0AD  49 01     EOR #$01                      ; 030AD ×50
  F0AF  9D 04 05  STA $0504,X                   ; 030AF ×50
  F0B2  4C 21 ED  JMP loc_B0_ED21               ; 030B2 ×50

sub_B0_F0B5:                    ; from 02fa0
  F0B5  20 D1 D9  JSR sub_B0_D9D1               ; 030B5 ×2141
  F0B8  20 03 E9  JSR sub_B0_E903               ; 030B8 ×2141
  F0BB  A2 20     LDX #$20                      ; 030BB ×2141

loc_B0_F0BD:                    ; from 030f1
  F0BD  BD 00 05  LDA $0500,X                   ; 030BD ×6397
  F0C0  F0 2C     BEQ loc_B0_F0EE               ; 030C0 ×6397
  F0C2  A5 CB     LDA $CB                       ; 030C2 ×4443
  F0C4  0D 88 03  ORA $0388                     ; 030C4 ×4443
  F0C7  D0 1B     BNE loc_B0_F0E4               ; 030C7 ×4443
  F0C9  20 02 F1  JSR sub_B0_F102               ; 030C9 ×2392
  F0CC  B0 20     BCS loc_B0_F0EE               ; 030CC ×2392
  F0CE  20 8F CC  JSR sub_B0_CC8F               ; 030CE ×2011
  F0D1  90 1B     BCC loc_B0_F0EE               ; 030D1 ×2011
  F0D3  A5 73     LDA $73                       ; 030D3 ×321
  F0D5  18        CLC                           ; 030D5 ×321
  F0D6  69 14     ADC #$14                      ; 030D6 ×321
  F0D8  DD 03 05  CMP $0503,X                   ; 030D8 ×321
  F0DB  90 11     BCC loc_B0_F0EE               ; 030DB ×321
  F0DD  E9 04     SBC #$04                      ; 030DD ×25
  F0DF  DD 03 05  CMP $0503,X                   ; 030DF ×25
  F0E2  90 5D     BCC loc_B0_F141               ; 030E2 ×25

loc_B0_F0E4:                    ; from 030c7
  F0E4  20 F4 F0  JSR sub_B0_F0F4               ; 030E4 ×2051
  F0E7  B0 05     BCS loc_B0_F0EE               ; 030E7 ×2051
  F0E9  20 7E CC  JSR sub_B0_CC7E               ; 030E9 ×1824
  F0EC  B0 43     BCS $F131                     ; 030EC ×1824

loc_B0_F0EE:                    ; from 030c0 030d1 030cc 030db 030e7
  F0EE  20 F2 C9  JSR sub_B0_C9F2               ; 030EE ×6372
  F0F1  10 CA     BPL loc_B0_F0BD               ; 030F1 ×6372
  F0F3  60        RTS                           ; 030F3 ×2116

sub_B0_F0F4:                    ; from 030e4
  F0F4  A9 0B     LDA #$0B                      ; 030F4 ×2051
  F0F6  8D C8 03  STA $03C8                     ; 030F6 ×2051
  F0F9  A9 05     LDA #$05                      ; 030F9 ×2051
  F0FB  18        CLC                           ; 030FB ×2051
  F0FC  7D 03 05  ADC $0503,X                   ; 030FC ×2051
  F0FF  8D CA 03  STA $03CA                     ; 030FF ×2051

sub_B0_F102:                    ; from 030c9
  F102  A9 00     LDA #$00                      ; 03102 ×4443
  F104  8D CB 03  STA $03CB                     ; 03104 ×4443
  F107  BD 04 05  LDA $0504,X                   ; 03107 ×4443
  F10A  38        SEC                           ; 0310A ×4443
  F10B  E9 0A     SBC #$0A                      ; 0310B ×4443
  F10D  4A        LSR A                         ; 0310D ×4443
  F10E  A8        TAY                           ; 0310E ×4443
  F10F  B9 2E F1  LDA $F12E,Y                   ; 0310F ×4443
  F112  8D C9 03  STA $03C9                     ; 03112 ×4443
  F115  BD 01 05  LDA $0501,X                   ; 03115 ×4443
  F118  18        CLC                           ; 03118 ×4443
  F119  6D CB 03  ADC $03CB                     ; 03119 ×4443
  F11C  85 77     STA $77                       ; 0311C ×4443
  F11E  BD 02 05  LDA $0502,X                   ; 0311E ×4443
  F121  69 00     ADC #$00                      ; 03121 ×4443
  F123  29 01     AND #$01                      ; 03123 ×4443
  F125  85 78     STA $78                       ; 03125 ×4443
  F127  20 20 CC  JSR sub_B0_CC20               ; 03127 ×4443
  F12A  8D CB 03  STA $03CB                     ; 0312A ×4443
  F12D  60        RTS                           ; 0312D ×4443
  F12E  .byte 0C 1C                                             ; 0312E
  F130  .byte 2C                                                ; 03130 data, read by 0310f
  F131  A0 10     LDY #$10                      ; 03131 ×0
  F133  8C 14 03  STY $0314                     ; 03133 ×0
  F136  A0 00     LDY #$00                      ; 03136 ×0
  F138  84 B8     STY $B8                       ; 03138 ×0
  F13A  A0 01     LDY #$01                      ; 0313A ×0
  F13C  84 AF     STY $AF                       ; 0313C ×0
  F13E  84 0F     STY $0F                       ; 0313E ×0
  F140  60        RTS                           ; 03140 ×0

loc_B0_F141:                    ; from 030e2
  F141  A5 74     LDA $74                       ; 03141 ×25
  F143  8D 38 03  STA $0338                     ; 03143 ×25
  F146  A5 73     LDA $73                       ; 03146 ×25
  F148  18        CLC                           ; 03148 ×25
  F149  69 0E     ADC #$0E                      ; 03149 ×25
  F14B  8D 39 03  STA $0339                     ; 0314B ×25
  F14E  A5 A8     LDA $A8                       ; 0314E ×25
  F150  D0 03     BNE $F155                     ; 03150 ×25
  F152  EE 23 03  INC $0323                     ; 03152 ×25
  F155  A9 00     LDA #$00                      ; 03155 ×25
  F157  85 CD     STA $CD                       ; 03157 ×25
  F159  86 91     STX $91                       ; 03159 ×25
  F15B  A9 01     LDA #$01                      ; 0315B ×25
  F15D  85 A8     STA $A8                       ; 0315D ×25
  F15F  8D 8E 03  STA $038E                     ; 0315F ×25
  F162  60        RTS                           ; 03162 ×25
  F163  A5 CF     LDA $CF                       ; 03163 ×0
  F165  20 CD C4  JSR sub_B0_C4CD               ; 03165 ×0
  F168  .byte 72 F1 86 F1 CF F1 49 F6 55 F6                     ; 03168
  F172  A2 00     LDX #$00                      ; 03172 ×0
  F174  86 87     STX $87                       ; 03174 ×0
  F176  A2 00     LDX #$00                      ; 03176 ×0
  F178  86 D0     STX $D0                       ; 03178 ×0
  F17A  86 D3     STX $D3                       ; 0317A ×0
  F17C  86 AA     STX $AA                       ; 0317C ×0
  F17E  A2 20     LDX #$20                      ; 0317E ×0
  F180  20 88 F1  JSR sub_B0_F188               ; 03180 ×0
  F183  4C 06 C9  JMP loc_B0_C906               ; 03183 ×0
  F186  A2 40     LDX #$40                      ; 03186 ×0

sub_B0_F188:                    ; from 03180
  F188  86 7C     STX $7C                       ; 03188 ×0
  F18A  86 8D     STX $8D                       ; 0318A ×0
  F18C  A5 AD     LDA $AD                       ; 0318C ×0
  F18E  4A        LSR A                         ; 0318E ×0
  F18F  85 F8     STA $F8                       ; 0318F ×0
  F191  20 58 F7  JSR sub_B0_F758               ; 03191 ×0
  F194  A0 0C     LDY #$0C                      ; 03194 ×0
  F196  B9 B5 F1  LDA $F1B5,Y                   ; 03196 ×0
  F199  A6 CF     LDX $CF                       ; 03199 ×0
  F19B  F0 03     BEQ $F1A0                     ; 0319B ×0
  F19D  B9 C2 F1  LDA $F1C2,Y                   ; 0319D ×0
  F1A0  A6 8D     LDX $8D                       ; 031A0 ×0
  F1A2  95 7C     STA $7C,X                     ; 031A2 ×0
  F1A4  C6 8D     DEC $8D                       ; 031A4 ×0
  F1A6  88        DEY                           ; 031A6 ×0
  F1A7  10 ED     BPL $F196                     ; 031A7 ×0
  F1A9  20 DB F2  JSR sub_B0_F2DB               ; 031A9 ×0
  F1AC  E6 CF     INC $CF                       ; 031AC ×0
  F1AE  E6 AD     INC $AD                       ; 031AE ×0
  F1B0  E6 AD     INC $AD                       ; 031B0 ×0
  F1B2  4C 72 F6  JMP $F672                     ; 031B2 ×0
  F1B5  .byte 01 FE 3C 3C 50 00 23 09 00 08 01 00 08 01 FE 6C   ; 031B5
  F1C5  .byte 3C D0 00 2C 09 00 08 02 00 05                     ; 031C5

sub_B0_F1CF:                    ; from 03655
  F1CF  A5 D0     LDA $D0                       ; 031CF ×0
  F1D1  20 66 F6  JSR sub_B0_F666               ; 031D1 ×0
  F1D4  A0 00     LDY #$00                      ; 031D4 ×0
  F1D6  84 D2     STY $D2                       ; 031D6 ×0
  F1D8  A5 D0     LDA $D0                       ; 031D8 ×0
  F1DA  C5 87     CMP $87                       ; 031DA ×0
  F1DC  D0 01     BNE $F1DF                     ; 031DC ×0
  F1DE  C8        INY                           ; 031DE ×0
  F1DF  84 88     STY $88                       ; 031DF ×0
  F1E1  B5 70     LDA $70,X                     ; 031E1 ×0
  F1E3  F0 30     BEQ $F215                     ; 031E3 ×0
  F1E5  B5 7F     LDA $7F,X                     ; 031E5 ×0
  F1E7  10 04     BPL $F1ED                     ; 031E7 ×0
  F1E9  A9 00     LDA #$00                      ; 031E9 inferred, not run
  F1EB  F0 06     BEQ $F1F3                     ; 031EB inferred, not run
  F1ED  C9 10     CMP #$10                      ; 031ED ×0
  F1EF  90 02     BCC $F1F3                     ; 031EF ×0
  F1F1  A9 0F     LDA #$0F                      ; 031F1 inferred, not run
  F1F3  85 F8     STA $F8                       ; 031F3 ×0
  F1F5  A2 06     LDX #$06                      ; 031F5 ×0
  F1F7  A0 08     LDY #$08                      ; 031F7 ×0
  F1F9  D9 26 F2  CMP $F226,Y                   ; 031F9 ×0
  F1FC  B0 04     BCS $F202                     ; 031FC ×0
  F1FE  88        DEY                           ; 031FE inferred, not run
  F1FF  CA        DEX                           ; 031FF inferred, not run
  F200  D0 F7     BNE $F1F9                     ; 03200 inferred, not run
  F202  A6 7C     LDX $7C                       ; 03202 ×0
  F204  94 79     STY $79,X                     ; 03204 ×0
  F206  A4 F8     LDY $F8                       ; 03206 ×0
  F208  B9 2F F2  LDA $F22F,Y                   ; 03208 ×0
  F20B  18        CLC                           ; 0320B ×0
  F20C  75 78     ADC $78,X                     ; 0320C ×0
  F20E  95 78     STA $78,X                     ; 0320E ×0
  F210  90 03     BCC $F215                     ; 03210 ×0
  F212  20 3F F2  JSR sub_B0_F23F               ; 03212 ×0
  F215  A5 0F     LDA $0F                       ; 03215 ×0
  F217  D0 06     BNE $F21F                     ; 03217 ×0
  F219  20 42 F3  JSR sub_B0_F342               ; 03219 ×0
  F21C  20 CD F6  JSR sub_B0_F6CD               ; 0321C ×0
  F21F  A5 D0     LDA $D0                       ; 0321F ×0
  F221  49 01     EOR #$01                      ; 03221 ×0
  F223  85 D0     STA $D0                       ; 03223 ×0
  F225  60        RTS                           ; 03225 ×0
  F226  .byte 00 00 00 01 03 05 07 09 0C 1C 20 28 20 28 28 30   ; 03226
  F236  .byte 30 38 30 38 40 40 48 54 5C                        ; 03236

sub_B0_F23F:                    ; from 03212
  F23F  A6 7C     LDX $7C                       ; 0323F ×0
  F241  B5 7A     LDA $7A,X                     ; 03241 ×0
  F243  C9 00     CMP #$00                      ; 03243 ×0
  F245  F0 41     BEQ $F288                     ; 03245 ×0
  F247  C9 01     CMP #$01                      ; 03247 ×0
  F249  F0 45     BEQ $F290                     ; 03249 ×0
  F24B  C9 02     CMP #$02                      ; 0324B ×0
  F24D  F0 08     BEQ $F257                     ; 0324D ×0
  F24F  A9 02     LDA #$02                      ; 0324F ×0
  F251  95 7A     STA $7A,X                     ; 03251 ×0
  F253  A9 00     LDA #$00                      ; 03253 ×0
  F255  95 7B     STA $7B,X                     ; 03255 ×0
  F257  B5 7B     LDA $7B,X                     ; 03257 ×0
  F259  F0 0C     BEQ $F267                     ; 03259 ×0
  F25B  B5 7C     LDA $7C,X                     ; 0325B ×0
  F25D  D5 79     CMP $79,X                     ; 0325D ×0
  F25F  90 06     BCC $F267                     ; 0325F ×0
  F261  A9 00     LDA #$00                      ; 03261 ×0
  F263  95 7A     STA $7A,X                     ; 03263 ×0
  F265  F0 57     BEQ $F2BE                     ; 03265 ×0
  F267  E6 D2     INC $D2                       ; 03267 ×0
  F269  B5 76     LDA $76,X                     ; 03269 ×0
  F26B  38        SEC                           ; 0326B ×0
  F26C  E9 01     SBC #$01                      ; 0326C ×0
  F26E  95 76     STA $76,X                     ; 0326E ×0
  F270  C9 2A     CMP #$2A                      ; 03270 ×0
  F272  D0 06     BNE $F27A                     ; 03272 ×0
  F274  A9 01     LDA #$01                      ; 03274 ×0
  F276  95 7B     STA $7B,X                     ; 03276 ×0
  F278  D0 04     BNE $F27E                     ; 03278 ×0
  F27A  C9 2B     CMP #$2B                      ; 0327A ×0
  F27C  D0 40     BNE $F2BE                     ; 0327C ×0
  F27E  38        SEC                           ; 0327E ×0
  F27F  B5 74     LDA $74,X                     ; 0327F ×0
  F281  E9 03     SBC #$03                      ; 03281 ×0
  F283  95 74     STA $74,X                     ; 03283 ×0
  F285  4C BE F2  JMP $F2BE                     ; 03285 ×0
  F288  A9 01     LDA #$01                      ; 03288 ×0
  F28A  95 7A     STA $7A,X                     ; 0328A ×0
  F28C  A9 00     LDA #$00                      ; 0328C ×0
  F28E  95 7B     STA $7B,X                     ; 0328E ×0
  F290  B5 7B     LDA $7B,X                     ; 03290 ×0
  F292  F0 0C     BEQ $F2A0                     ; 03292 ×0
  F294  B5 7C     LDA $7C,X                     ; 03294 ×0
  F296  D5 79     CMP $79,X                     ; 03296 ×0
  F298  90 06     BCC $F2A0                     ; 03298 ×0
  F29A  A9 03     LDA #$03                      ; 0329A ×0
  F29C  95 7A     STA $7A,X                     ; 0329C ×0
  F29E  D0 1E     BNE $F2BE                     ; 0329E ×0
  F2A0  E6 D2     INC $D2                       ; 032A0 ×0
  F2A2  B5 76     LDA $76,X                     ; 032A2 ×0
  F2A4  18        CLC                           ; 032A4 ×0
  F2A5  69 01     ADC #$01                      ; 032A5 ×0
  F2A7  95 76     STA $76,X                     ; 032A7 ×0
  F2A9  C9 2C     CMP #$2C                      ; 032A9 ×0
  F2AB  D0 06     BNE $F2B3                     ; 032AB ×0
  F2AD  A9 01     LDA #$01                      ; 032AD ×0
  F2AF  95 7B     STA $7B,X                     ; 032AF ×0
  F2B1  D0 04     BNE $F2B7                     ; 032B1 ×0
  F2B3  C9 2B     CMP #$2B                      ; 032B3 ×0
  F2B5  D0 07     BNE $F2BE                     ; 032B5 ×0
  F2B7  18        CLC                           ; 032B7 ×0
  F2B8  B5 74     LDA $74,X                     ; 032B8 ×0
  F2BA  69 03     ADC #$03                      ; 032BA ×0
  F2BC  95 74     STA $74,X                     ; 032BC ×0
  F2BE  20 DB F2  JSR sub_B0_F2DB               ; 032BE ×0
  F2C1  A6 7C     LDX $7C                       ; 032C1 ×0
  F2C3  B5 76     LDA $76,X                     ; 032C3 ×0
  F2C5  38        SEC                           ; 032C5 ×0
  F2C6  E9 2B     SBC #$2B                      ; 032C6 ×0
  F2C8  F0 0C     BEQ $F2D6                     ; 032C8 ×0
  F2CA  10 0C     BPL $F2D8                     ; 032CA ×0
  F2CC  85 77     STA $77                       ; 032CC ×0
  F2CE  38        SEC                           ; 032CE ×0
  F2CF  A9 00     LDA #$00                      ; 032CF ×0
  F2D1  E5 77     SBC $77                       ; 032D1 ×0
  F2D3  4C D8 F2  JMP $F2D8                     ; 032D3 ×0
  F2D6  A9 00     LDA #$00                      ; 032D6 ×0
  F2D8  95 7C     STA $7C,X                     ; 032D8 ×0
  F2DA  60        RTS                           ; 032DA ×0

sub_B0_F2DB:                    ; from 031a9 032be 0373e
  F2DB  A6 7C     LDX $7C                       ; 032DB ×0
  F2DD  B5 70     LDA $70,X                     ; 032DD ×0
  F2DF  95 80     STA $80,X                     ; 032DF ×0
  F2E1  A9 01     LDA #$01                      ; 032E1 ×0
  F2E3  95 81     STA $81,X                     ; 032E3 ×0
  F2E5  B5 72     LDA $72,X                     ; 032E5 ×0
  F2E7  38        SEC                           ; 032E7 ×0
  F2E8  E9 04     SBC #$04                      ; 032E8 ×0
  F2EA  95 82     STA $82,X                     ; 032EA ×0
  F2EC  A9 34     LDA #$34                      ; 032EC ×0
  F2EE  95 86     STA $86,X                     ; 032EE ×0
  F2F0  B5 76     LDA $76,X                     ; 032F0 ×0
  F2F2  38        SEC                           ; 032F2 ×0
  F2F3  E9 23     SBC #$23                      ; 032F3 ×0
  F2F5  0A        ASL A                         ; 032F5 ×0
  F2F6  A8        TAY                           ; 032F6 ×0
  F2F7  A9 02     LDA #$02                      ; 032F7 ×0
  F2F9  85 79     STA $79                       ; 032F9 ×0
  F2FB  B9 20 F3  LDA $F320,Y                   ; 032FB ×0
  F2FE  85 77     STA $77                       ; 032FE ×0
  F300  18        CLC                           ; 03300 ×0
  F301  75 73     ADC $73,X                     ; 03301 ×0
  F303  95 83     STA $83,X                     ; 03303 ×0
  F305  C8        INY                           ; 03305 ×0
  F306  E8        INX                           ; 03306 ×0
  F307  C6 79     DEC $79                       ; 03307 ×0
  F309  D0 F0     BNE $F2FB                     ; 03309 ×0
  F30B  A5 77     LDA $77                       ; 0330B ×0
  F30D  10 04     BPL $F313                     ; 0330D ×0
  F30F  B0 08     BCS $F319                     ; 0330F ×0
  F311  90 02     BCC $F315                     ; 03311 ×0
  F313  90 04     BCC $F319                     ; 03313 ×0
  F315  A9 01     LDA #$01                      ; 03315 ×0
  F317  D0 02     BNE $F31B                     ; 03317 ×0
  F319  A9 00     LDA #$00                      ; 03319 ×0
  F31B  55 73     EOR $73,X                     ; 0331B ×0
  F31D  95 83     STA $83,X                     ; 0331D ×0
  F31F  60        RTS                           ; 0331F ×0
  F320  .byte 10 CC 17 CE 20 D3 25 DA 2B DF 2D E9 32 F0 34 F8   ; 03320
  F330  .byte 35 FE 34 05 32 0D 2D 14 2A 1D 25 23 1F 2A 15 32   ; 03330
  F340  .byte 10 33                                             ; 03340

sub_B0_F342:                    ; from 03219
  F342  A5 0F     LDA $0F                       ; 03342 ×0
  F344  D0 D9     BNE $F31F                     ; 03344 ×0
  F346  A6 87     LDX $87                       ; 03346 ×0
  F348  10 03     BPL $F34D                     ; 03348 ×0
  F34A  4C 79 F4  JMP $F479                     ; 0334A ×0
  F34D  A5 0D     LDA $0D                       ; 0334D ×0
  F34F  29 C0     AND #$C0                      ; 0334F ×0
  F351  F0 03     BEQ $F356                     ; 03351 ×0
  F353  4C 79 F4  JMP $F479                     ; 03353 ×0
  F356  20 6D F3  JSR sub_B0_F36D               ; 03356 ×0
  F359  A5 88     LDA $88                       ; 03359 ×0
  F35B  F0 C2     BEQ $F31F                     ; 0335B ×0
  F35D  A5 D2     LDA $D2                       ; 0335D ×0
  F35F  F0 BE     BEQ $F31F                     ; 0335F ×0
  F361  20 D4 F3  JSR sub_B0_F3D4               ; 03361 ×0
  F364  20 9A F3  JSR sub_B0_F39A               ; 03364 ×0
  F367  20 B0 F3  JSR sub_B0_F3B0               ; 03367 ×0
  F36A  4C C3 F3  JMP $F3C3                     ; 0336A ×0

sub_B0_F36D:                    ; from 03356
  F36D  A5 87     LDA $87                       ; 0336D ×0
  F36F  20 66 F6  JSR sub_B0_F666               ; 0336F ×0
  F372  A9 01     LDA #$01                      ; 03372 ×0
  F374  85 56     STA $56                       ; 03374 ×0
  F376  A0 48     LDY #$48                      ; 03376 ×0
  F378  B5 76     LDA $76,X                     ; 03378 ×0
  F37A  C9 2B     CMP #$2B                      ; 0337A ×0
  F37C  F0 05     BEQ $F383                     ; 0337C ×0
  F37E  90 06     BCC $F386                     ; 0337E ×0
  F380  C8        INY                           ; 03380 ×0
  F381  C8        INY                           ; 03381 ×0
  F382  C8        INY                           ; 03382 ×0
  F383  C8        INY                           ; 03383 ×0
  F384  C8        INY                           ; 03384 ×0
  F385  C8        INY                           ; 03385 ×0
  F386  84 77     STY $77                       ; 03386 ×0
  F388  B5 74     LDA $74,X                     ; 03388 ×0
  F38A  C5 77     CMP $77                       ; 0338A ×0
  F38C  F0 21     BEQ $F3AF                     ; 0338C ×0
  F38E  90 05     BCC $F395                     ; 0338E ×0
  F390  C6 74     DEC $74                       ; 03390 ×0
  F392  4C 88 F5  JMP $F588                     ; 03392 ×0
  F395  E6 74     INC $74                       ; 03395 inferred, not run
  F397  4C 71 F5  JMP $F571                     ; 03397 inferred, not run

sub_B0_F39A:                    ; from 03364
  F39A  A6 7C     LDX $7C                       ; 0339A ×0
  F39C  B5 7C     LDA $7C,X                     ; 0339C ×0
  F39E  A8        TAY                           ; 0339E ×0
  F39F  B5 71     LDA $71,X                     ; 0339F ×0
  F3A1  C9 FF     CMP #$FF                      ; 033A1 ×0
  F3A3  F0 05     BEQ $F3AA                     ; 033A3 ×0
  F3A5  B9 94 F7  LDA $F794,Y                   ; 033A5 ×0
  F3A8  D0 03     BNE $F3AD                     ; 033A8 ×0
  F3AA  B9 9D F7  LDA $F79D,Y                   ; 033AA inferred, not run
  F3AD  85 73     STA $73                       ; 033AD ×0
  F3AF  60        RTS                           ; 033AF ×0

sub_B0_F3B0:                    ; from 03367
  F3B0  A6 7C     LDX $7C                       ; 033B0 ×0
  F3B2  B5 76     LDA $76,X                     ; 033B2 ×0
  F3B4  A0 06     LDY #$06                      ; 033B4 ×0
  F3B6  C9 2C     CMP #$2C                      ; 033B6 ×0
  F3B8  90 06     BCC $F3C0                     ; 033B8 ×0
  F3BA  C8        INY                           ; 033BA ×0
  F3BB  C9 2E     CMP #$2E                      ; 033BB ×0
  F3BD  90 01     BCC $F3C0                     ; 033BD ×0
  F3BF  C8        INY                           ; 033BF ×0
  F3C0  84 76     STY $76                       ; 033C0 ×0
  F3C2  60        RTS                           ; 033C2 ×0
  F3C3  A6 7C     LDX $7C                       ; 033C3 ×0
  F3C5  B5 83     LDA $83,X                     ; 033C5 ×0
  F3C7  18        CLC                           ; 033C7 ×0
  F3C8  69 02     ADC #$02                      ; 033C8 ×0
  F3CA  85 73     STA $73                       ; 033CA ×0
  F3CC  B5 84     LDA $84,X                     ; 033CC ×0
  F3CE  38        SEC                           ; 033CE ×0
  F3CF  E9 0E     SBC #$0E                      ; 033CF ×0
  F3D1  85 74     STA $74                       ; 033D1 ×0
  F3D3  60        RTS                           ; 033D3 ×0

sub_B0_F3D4:                    ; from 03361
  F3D4  20 2E F4  JSR sub_B0_F42E               ; 033D4 ×0
  F3D7  20 32 F4  JSR sub_B0_F432               ; 033D7 ×0
  F3DA  A6 7C     LDX $7C                       ; 033DA ×0
  F3DC  A5 0C     LDA $0C                       ; 033DC ×0
  F3DE  29 03     AND #$03                      ; 033DE ×0
  F3E0  F0 4B     BEQ $F42D                     ; 033E0 ×0
  F3E2  49 03     EOR #$03                      ; 033E2 ×0
  F3E4  F0 47     BEQ $F42D                     ; 033E4 ×0
  F3E6  B5 79     LDA $79,X                     ; 033E6 ×0
  F3E8  85 78     STA $78                       ; 033E8 ×0
  F3EA  C9 02     CMP #$02                      ; 033EA ×0
  F3EC  B0 06     BCS $F3F4                     ; 033EC ×0
  F3EE  A9 40     LDA #$40                      ; 033EE inferred, not run
  F3F0  85 77     STA $77                       ; 033F0 inferred, not run
  F3F2  D0 10     BNE $F404                     ; 033F2 inferred, not run
  F3F4  A5 0C     LDA $0C                       ; 033F4 ×0
  F3F6  29 01     AND #$01                      ; 033F6 ×0
  F3F8  D0 1B     BNE $F415                     ; 033F8 ×0
  F3FA  B5 7A     LDA $7A,X                     ; 033FA ×0
  F3FC  C9 01     CMP #$01                      ; 033FC ×0
  F3FE  F0 1F     BEQ $F41F                     ; 033FE ×0
  F400  C9 02     CMP #$02                      ; 03400 ×0
  F402  D0 29     BNE $F42D                     ; 03402 ×0
  F404  B5 7E     LDA $7E,X                     ; 03404 ×0
  F406  69 40     ADC #$40                      ; 03406 ×0
  F408  95 7E     STA $7E,X                     ; 03408 ×0
  F40A  90 21     BCC $F42D                     ; 0340A ×0
  F40C  B5 7F     LDA $7F,X                     ; 0340C inferred, not run
  F40E  C9 0F     CMP #$0F                      ; 0340E inferred, not run
  F410  B0 1B     BCS $F42D                     ; 03410 inferred, not run
  F412  F6 7F     INC $7F,X                     ; 03412 inferred, not run
  F414  60        RTS                           ; 03414 inferred, not run
  F415  B5 7A     LDA $7A,X                     ; 03415 ×0
  F417  C9 01     CMP #$01                      ; 03417 ×0
  F419  F0 E9     BEQ $F404                     ; 03419 ×0
  F41B  C9 02     CMP #$02                      ; 0341B ×0
  F41D  D0 0E     BNE $F42D                     ; 0341D ×0
  F41F  B5 7D     LDA $7D,X                     ; 0341F ×0
  F421  69 40     ADC #$40                      ; 03421 ×0
  F423  95 7D     STA $7D,X                     ; 03423 ×0
  F425  90 06     BCC $F42D                     ; 03425 ×0
  F427  B5 7F     LDA $7F,X                     ; 03427 inferred, not run
  F429  F0 02     BEQ $F42D                     ; 03429 inferred, not run
  F42B  D6 7F     DEC $7F,X                     ; 0342B inferred, not run
  F42D  60        RTS                           ; 0342D ×0

sub_B0_F42E:                    ; from 033d4
  F42E  A9 0D     LDA #$0D                      ; 0342E ×0
  F430  D0 02     BNE $F434                     ; 03430 ×0

sub_B0_F432:                    ; from 033d7
  F432  A9 0E     LDA #$0E                      ; 03432 ×0
  F434  18        CLC                           ; 03434 ×0
  F435  65 7C     ADC $7C                       ; 03435 ×0
  F437  AA        TAX                           ; 03437 ×0
  F438  B5 70     LDA $70,X                     ; 03438 ×0
  F43A  85 7B     STA $7B                       ; 0343A ×0
  F43C  29 F0     AND #$F0                      ; 0343C ×0
  F43E  20 E4 F7  JSR sub_B0_F7E4               ; 0343E ×0
  F441  A8        TAY                           ; 03441 ×0
  F442  A5 7B     LDA $7B                       ; 03442 ×0
  F444  F9 A6 F7  SBC $F7A6,Y                   ; 03444 ×0
  F447  B0 02     BCS $F44B                     ; 03447 ×0
  F449  A9 00     LDA #$00                      ; 03449 ×0
  F44B  95 70     STA $70,X                     ; 0344B ×0
  F44D  60        RTS                           ; 0344D ×0
  F44E  A9 00     LDA #$00                      ; 0344E ×0
  F450  85 D6     STA $D6                       ; 03450 ×0
  F452  A5 D5     LDA $D5                       ; 03452 ×0
  F454  85 87     STA $87                       ; 03454 ×0
  F456  C5 C7     CMP $C7                       ; 03456 ×0
  F458  F0 05     BEQ $F45F                     ; 03458 ×0
  F45A  E6 AB     INC $AB                       ; 0345A ×0
  F45C  EE 27 03  INC $0327                     ; 0345C ×0
  F45F  20 66 F6  JSR sub_B0_F666               ; 0345F ×0
  F462  B5 7B     LDA $7B,X                     ; 03462 ×0
  F464  F0 0E     BEQ $F474                     ; 03464 ×0
  F466  B5 76     LDA $76,X                     ; 03466 ×0
  F468  C9 2B     CMP #$2B                      ; 03468 ×0
  F46A  B0 08     BCS $F474                     ; 0346A ×0
  F46C  A9 01     LDA #$01                      ; 0346C ×0
  F46E  95 7A     STA $7A,X                     ; 0346E ×0
  F470  A9 00     LDA #$00                      ; 03470 ×0
  F472  95 7B     STA $7B,X                     ; 03472 ×0
  F474  A9 00     LDA #$00                      ; 03474 ×0
  F476  85 D3     STA $D3                       ; 03476 ×0
  F478  60        RTS                           ; 03478 ×0
  F479  A6 D3     LDX $D3                       ; 03479 ×0
  F47B  F0 41     BEQ $F4BE                     ; 0347B ×0
  F47D  CA        DEX                           ; 0347D ×0
  F47E  F0 26     BEQ $F4A6                     ; 0347E ×0
  F480  AD 88 03  LDA $0388                     ; 03480 ×0
  F483  D0 10     BNE $F495                     ; 03483 ×0
  F485  20 01 F6  JSR sub_B0_F601               ; 03485 ×0
  F488  B0 33     BCS $F4BD                     ; 03488 ×0
  F48A  20 12 F6  JSR sub_B0_F612               ; 0348A ×0
  F48D  90 06     BCC $F495                     ; 0348D ×0
  F48F  A5 0C     LDA $0C                       ; 0348F ×0
  F491  29 03     AND #$03                      ; 03491 ×0
  F493  85 D6     STA $D6                       ; 03493 ×0
  F495  20 C6 F5  JSR sub_B0_F5C6               ; 03495 ×0
  F498  B0 B4     BCS $F44E                     ; 03498 ×0
  F49A  20 11 DA  JSR sub_B0_DA11               ; 0349A ×0
  F49D  A5 D6     LDA $D6                       ; 0349D ×0
  F49F  F0 1C     BEQ $F4BD                     ; 0349F ×0
  F4A1  85 AF     STA $AF                       ; 034A1 ×0
  F4A3  4C 5D F5  JMP $F55D                     ; 034A3 ×0
  F4A6  20 C6 F5  JSR sub_B0_F5C6               ; 034A6 ×0
  F4A9  B0 A3     BCS $F44E                     ; 034A9 ×0
  F4AB  20 12 F6  JSR sub_B0_F612               ; 034AB ×0
  F4AE  B0 0B     BCS $F4BB                     ; 034AE ×0
  F4B0  20 01 F6  JSR sub_B0_F601               ; 034B0 ×0
  F4B3  B0 08     BCS $F4BD                     ; 034B3 ×0
  F4B5  20 40 F5  JSR sub_B0_F540               ; 034B5 ×0
  F4B8  4C 1D F5  JMP $F51D                     ; 034B8 ×0
  F4BB  E6 D3     INC $D3                       ; 034BB ×0
  F4BD  60        RTS                           ; 034BD ×0
  F4BE  A9 03     LDA #$03                      ; 034BE ×0
  F4C0  20 0D F8  JSR sub_B0_F80D               ; 034C0 ×0
  F4C3  A9 02     LDA #$02                      ; 034C3 ×0
  F4C5  85 76     STA $76                       ; 034C5 ×0
  F4C7  A5 87     LDA $87                       ; 034C7 ×0
  F4C9  85 C7     STA $C7                       ; 034C9 ×0
  F4CB  20 66 F6  JSR sub_B0_F666               ; 034CB ×0
  F4CE  A9 FE     LDA #$FE                      ; 034CE ×0
  F4D0  85 87     STA $87                       ; 034D0 ×0
  F4D2  B5 7A     LDA $7A,X                     ; 034D2 ×0
  F4D4  85 AF     STA $AF                       ; 034D4 ×0
  F4D6  F0 06     BEQ $F4DE                     ; 034D6 ×0
  F4D8  49 03     EOR #$03                      ; 034D8 ×0
  F4DA  F0 02     BEQ $F4DE                     ; 034DA ×0
  F4DC  B5 79     LDA $79,X                     ; 034DC ×0
  F4DE  A8        TAY                           ; 034DE ×0
  F4DF  B5 7B     LDA $7B,X                     ; 034DF ×0
  F4E1  D0 12     BNE $F4F5                     ; 034E1 ×0
  F4E3  B5 7A     LDA $7A,X                     ; 034E3 ×0
  F4E5  C9 02     CMP #$02                      ; 034E5 ×0
  F4E7  D0 0C     BNE $F4F5                     ; 034E7 ×0
  F4E9  B5 7C     LDA $7C,X                     ; 034E9 ×0
  F4EB  C9 06     CMP #$06                      ; 034EB ×0
  F4ED  90 04     BCC $F4F3                     ; 034ED ×0
  F4EF  A0 00     LDY #$00                      ; 034EF ×0
  F4F1  F0 02     BEQ $F4F5                     ; 034F1 ×0
  F4F3  A0 02     LDY #$02                      ; 034F3 ×0
  F4F5  B9 14 F5  LDA $F514,Y                   ; 034F5 ×0
  F4F8  85 AE     STA $AE                       ; 034F8 ×0
  F4FA  B5 7C     LDA $7C,X                     ; 034FA ×0
  F4FC  0A        ASL A                         ; 034FC ×0
  F4FD  B4 7B     LDY $7B,X                     ; 034FD ×0
  F4FF  D0 03     BNE $F504                     ; 034FF ×0
  F501  18        CLC                           ; 03501 ×0
  F502  69 12     ADC #$12                      ; 03502 ×0
  F504  A8        TAY                           ; 03504 ×0
  F505  B9 B6 F7  LDA $F7B6,Y                   ; 03505 ×0
  F508  8D A2 03  STA $03A2                     ; 03508 ×0
  F50B  B9 B7 F7  LDA $F7B7,Y                   ; 0350B ×0
  F50E  8D A0 03  STA $03A0                     ; 0350E ×0
  F511  E6 D3     INC $D3                       ; 03511 ×0
  F513  60        RTS                           ; 03513 ×0
  F514  .byte 00 20 40 60 80 A0 C0 E0 FF                        ; 03514
  F51D  A2 00     LDX #$00                      ; 0351D ×0
  F51F  38        SEC                           ; 0351F ×0
  F520  AD A1 03  LDA $03A1                     ; 03520 ×0
  F523  ED A0 03  SBC $03A0                     ; 03523 ×0
  F526  8D A1 03  STA $03A1                     ; 03526 ×0
  F529  AD A2 03  LDA $03A2                     ; 03529 ×0
  F52C  E9 00     SBC #$00                      ; 0352C ×0
  F52E  8D A2 03  STA $03A2                     ; 0352E ×0
  F531  30 02     BMI $F535                     ; 03531 ×0
  F533  A2 01     LDX #$01                      ; 03533 ×0
  F535  86 CB     STX $CB                       ; 03535 ×0
  F537  A5 73     LDA $73                       ; 03537 ×0
  F539  38        SEC                           ; 03539 ×0
  F53A  ED A2 03  SBC $03A2                     ; 0353A ×0
  F53D  85 73     STA $73                       ; 0353D ×0
  F53F  60        RTS                           ; 0353F ×0

sub_B0_F540:                    ; from 034b5
  F540  A5 AE     LDA $AE                       ; 03540 ×0
  F542  F0 FB     BEQ $F53F                     ; 03542 ×0
  F544  C9 FF     CMP #$FF                      ; 03544 ×0
  F546  F0 06     BEQ $F54E                     ; 03546 ×0
  F548  65 D7     ADC $D7                       ; 03548 ×0
  F54A  85 D7     STA $D7                       ; 0354A ×0
  F54C  90 F1     BCC $F53F                     ; 0354C ×0
  F54E  A5 87     LDA $87                       ; 0354E ×0
  F550  20 66 F6  JSR sub_B0_F666               ; 03550 ×0
  F553  B4 7F     LDY $7F,X                     ; 03553 ×0
  F555  C0 05     CPY #$05                      ; 03555 ×0
  F557  90 04     BCC $F55D                     ; 03557 ×0
  F559  A9 02     LDA #$02                      ; 03559 ×0
  F55B  D0 02     BNE $F55F                     ; 0355B ×0
  F55D  A9 01     LDA #$01                      ; 0355D ×0
  F55F  85 56     STA $56                       ; 0355F ×0
  F561  A5 AF     LDA $AF                       ; 03561 ×0
  F563  C9 01     CMP #$01                      ; 03563 ×0
  F565  F0 21     BEQ $F588                     ; 03565 ×0
  F567  A5 74     LDA $74                       ; 03567 ×0
  F569  38        SEC                           ; 03569 ×0
  F56A  E5 56     SBC $56                       ; 0356A ×0
  F56C  90 02     BCC $F570                     ; 0356C ×0
  F56E  85 74     STA $74                       ; 0356E ×0
  F570  60        RTS                           ; 03570 ×0
  F571  20 FC F7  JSR sub_B0_F7FC               ; 03571 inferred, not run
  F574  30 11     BMI $F587                     ; 03574 inferred, not run
  F576  A0 04     LDY #$04                      ; 03576 inferred, not run
  F578  A2 20     LDX #$20                      ; 03578 inferred, not run
  F57A  B5 74     LDA $74,X                     ; 0357A inferred, not run
  F57C  18        CLC                           ; 0357C inferred, not run
  F57D  65 56     ADC $56                       ; 0357D inferred, not run
  F57F  95 74     STA $74,X                     ; 0357F inferred, not run
  F581  20 EC C9  JSR sub_B0_C9EC               ; 03581 inferred, not run
  F584  88        DEY                           ; 03584 inferred, not run
  F585  D0 F3     BNE $F57A                     ; 03585 inferred, not run
  F587  60        RTS                           ; 03587 inferred, not run
  F588  20 05 DA  JSR sub_B0_DA05               ; 03588 ×0
  F58B  B0 0D     BCS $F59A                     ; 0358B ×0
  F58D  18        CLC                           ; 0358D inferred, not run
  F58E  A5 74     LDA $74                       ; 0358E inferred, not run
  F590  65 56     ADC $56                       ; 03590 inferred, not run
  F592  AA        TAX                           ; 03592 inferred, not run
  F593  69 10     ADC #$10                      ; 03593 inferred, not run
  F595  B0 02     BCS $F599                     ; 03595 inferred, not run
  F597  86 74     STX $74                       ; 03597 inferred, not run
  F599  60        RTS                           ; 03599 inferred, not run
  F59A  20 EE F7  JSR sub_B0_F7EE               ; 0359A ×0
  F59D  A0 04     LDY #$04                      ; 0359D ×0
  F59F  A2 20     LDX #$20                      ; 0359F ×0
  F5A1  B5 70     LDA $70,X                     ; 035A1 ×0
  F5A3  F0 1A     BEQ $F5BF                     ; 035A3 ×0
  F5A5  B5 74     LDA $74,X                     ; 035A5 ×0
  F5A7  38        SEC                           ; 035A7 ×0
  F5A8  E5 56     SBC $56                       ; 035A8 ×0
  F5AA  95 74     STA $74,X                     ; 035AA ×0
  F5AC  B5 74     LDA $74,X                     ; 035AC ×0
  F5AE  C9 08     CMP #$08                      ; 035AE ×0
  F5B0  B0 0D     BCS $F5BF                     ; 035B0 ×0
  F5B2  8A        TXA                           ; 035B2 ×0
  F5B3  29 10     AND #$10                      ; 035B3 ×0
  F5B5  D0 08     BNE $F5BF                     ; 035B5 ×0
  F5B7  A9 00     LDA #$00                      ; 035B7 ×0
  F5B9  95 70     STA $70,X                     ; 035B9 ×0
  F5BB  95 80     STA $80,X                     ; 035BB ×0
  F5BD  F0 00     BEQ $F5BF                     ; 035BD ×0
  F5BF  20 EC C9  JSR sub_B0_C9EC               ; 035BF ×0
  F5C2  88        DEY                           ; 035C2 ×0
  F5C3  D0 DC     BNE $F5A1                     ; 035C3 ×0
  F5C5  60        RTS                           ; 035C5 ×0

sub_B0_F5C6:                    ; from 034a6 03495
  F5C6  20 03 E9  JSR sub_B0_E903               ; 035C6 ×0
  F5C9  A9 01     LDA #$01                      ; 035C9 ×0
  F5CB  85 D5     STA $D5                       ; 035CB ×0
  F5CD  A5 D5     LDA $D5                       ; 035CD ×0
  F5CF  A4 D3     LDY $D3                       ; 035CF ×0
  F5D1  88        DEY                           ; 035D1 ×0
  F5D2  D0 04     BNE $F5D8                     ; 035D2 ×0
  F5D4  C5 C7     CMP $C7                       ; 035D4 ×0
  F5D6  F0 23     BEQ $F5FB                     ; 035D6 ×0
  F5D8  38        SEC                           ; 035D8 ×0
  F5D9  2A        ROL A                         ; 035D9 ×0
  F5DA  69 02     ADC #$02                      ; 035DA ×0
  F5DC  20 DA F7  JSR sub_B0_F7DA               ; 035DC ×0
  F5DF  B5 70     LDA $70,X                     ; 035DF ×0
  F5E1  F0 18     BEQ $F5FB                     ; 035E1 ×0
  F5E3  B5 75     LDA $75,X                     ; 035E3 ×0
  F5E5  D0 14     BNE $F5FB                     ; 035E5 ×0
  F5E7  A0 08     LDY #$08                      ; 035E7 ×0
  F5E9  84 8D     STY $8D                       ; 035E9 ×0
  F5EB  84 8F     STY $8F                       ; 035EB ×0
  F5ED  A0 00     LDY #$00                      ; 035ED ×0
  F5EF  84 8E     STY $8E                       ; 035EF ×0
  F5F1  84 8C     STY $8C                       ; 035F1 ×0
  F5F3  20 62 CC  JSR sub_B0_CC62               ; 035F3 ×0
  F5F6  20 7E CC  JSR sub_B0_CC7E               ; 035F6 ×0
  F5F9  B0 05     BCS $F600                     ; 035F9 ×0
  F5FB  C6 D5     DEC $D5                       ; 035FB ×0
  F5FD  10 CE     BPL $F5CD                     ; 035FD ×0
  F5FF  18        CLC                           ; 035FF ×0
  F600  60        RTS                           ; 03600 ×0

sub_B0_F601:                    ; from 034b0 03485
  F601  A5 73     LDA $73                       ; 03601 ×0
  F603  C9 C0     CMP #$C0                      ; 03603 ×0
  F605  90 F9     BCC $F600                     ; 03605 ×0
  F607  A9 00     LDA #$00                      ; 03607 ×0
  F609  85 87     STA $87                       ; 03609 ×0
  F60B  E6 0F     INC $0F                       ; 0360B ×0
  F60D  E6 CF     INC $CF                       ; 0360D ×0
  F60F  4C 87 DB  JMP sub_B0_DB87               ; 0360F ×0

sub_B0_F612:                    ; from 034ab 0348a
  F612  A5 73     LDA $73                       ; 03612 ×0
  F614  C9 AC     CMP #$AC                      ; 03614 ×0
  F616  90 27     BCC $F63F                     ; 03616 ×0
  F618  A2 30     LDX #$30                      ; 03618 ×0
  F61A  BD 00 05  LDA $0500,X                   ; 0361A ×0
  F61D  F0 1B     BEQ $F63A                     ; 0361D ×0
  F61F  20 16 CC  JSR sub_B0_CC16               ; 0361F ×0
  F622  90 06     BCC $F62A                     ; 03622 ×0
  F624  C9 E8     CMP #$E8                      ; 03624 ×0
  F626  B0 0B     BCS $F633                     ; 03626 ×0
  F628  90 10     BCC $F63A                     ; 03628 ×0
  F62A  38        SEC                           ; 0362A ×0
  F62B  E9 00     SBC #$00                      ; 0362B ×0
  F62D  90 04     BCC $F633                     ; 0362D ×0
  F62F  C5 74     CMP $74                       ; 0362F ×0
  F631  B0 07     BCS $F63A                     ; 03631 ×0
  F633  18        CLC                           ; 03633 ×0
  F634  69 18     ADC #$18                      ; 03634 ×0
  F636  C5 74     CMP $74                       ; 03636 ×0
  F638  B0 07     BCS $F641                     ; 03638 ×0
  F63A  20 F2 C9  JSR sub_B0_C9F2               ; 0363A ×0
  F63D  10 DB     BPL $F61A                     ; 0363D ×0
  F63F  18        CLC                           ; 0363F ×0
  F640  60        RTS                           ; 03640 ×0
  F641  20 87 DB  JSR sub_B0_DB87               ; 03641 ×0
  F644  EE 8E 03  INC $038E                     ; 03644 ×0
  F647  38        SEC                           ; 03647 ×0
  F648  60        RTS                           ; 03648 ×0
  F649  A4 AB     LDY $AB                       ; 03649 ×0
  F64B  B9 5B F6  LDA $F65B,Y                   ; 0364B ×0
  F64E  85 AB     STA $AB                       ; 0364E ×0
  F650  0A        ASL A                         ; 03650 ×0
  F651  85 AD     STA $AD                       ; 03651 ×0
  F653  E6 CF     INC $CF                       ; 03653 ×0
  F655  20 CF F1  JSR sub_B0_F1CF               ; 03655 ×0
  F658  4C 58 DC  JMP sub_B0_DC58               ; 03658 ×0
  F65B  .byte 00 00 02 02 04 04 06 06 06 A5 C7                  ; 0365B

sub_B0_F666:                    ; from 031d1 0336f 034cb 03550 03680 03710 (+1)
  F666  29 01     AND #$01                      ; 03666 ×0
  F668  0A        ASL A                         ; 03668 ×0
  F669  69 02     ADC #$02                      ; 03669 ×0
  F66B  20 E9 F7  JSR sub_B0_F7E9               ; 0366B ×0
  F66E  85 7C     STA $7C                       ; 0366E ×0
  F670  AA        TAX                           ; 03670 ×0
  F671  60        RTS                           ; 03671 ×0
  F672  A5 AA     LDA $AA                       ; 03672 ×0
  F674  29 03     AND #$03                      ; 03674 ×0
  F676  20 E9 F7  JSR sub_B0_F7E9               ; 03676 ×0
  F679  85 8C     STA $8C                       ; 03679 ×0
  F67B  A5 AD     LDA $AD                       ; 0367B ×0
  F67D  4A        LSR A                         ; 0367D ×0
  F67E  49 01     EOR #$01                      ; 0367E ×0
  F680  20 66 F6  JSR sub_B0_F666               ; 03680 ×0
  F683  A0 00     LDY #$00                      ; 03683 ×0
  F685  B5 74     LDA $74,X                     ; 03685 ×0
  F687  18        CLC                           ; 03687 ×0
  F688  65 6A     ADC $6A                       ; 03688 ×0
  F68A  90 01     BCC $F68D                     ; 0368A ×0
  F68C  C8        INY                           ; 0368C ×0
  F68D  18        CLC                           ; 0368D ×0
  F68E  69 20     ADC #$20                      ; 0368E ×0
  F690  90 01     BCC $F693                     ; 03690 ×0
  F692  C8        INY                           ; 03692 inferred, not run
  F693  A6 8C     LDX $8C                       ; 03693 ×0
  F695  9D 01 05  STA $0501,X                   ; 03695 ×0
  F698  84 8E     STY $8E                       ; 03698 ×0
  F69A  98        TYA                           ; 0369A ×0
  F69B  45 6B     EOR $6B                       ; 0369B ×0
  F69D  29 01     AND #$01                      ; 0369D ×0
  F69F  9D 02 05  STA $0502,X                   ; 0369F ×0
  F6A2  A9 C0     LDA #$C0                      ; 036A2 ×0
  F6A4  9D 03 05  STA $0503,X                   ; 036A4 ×0
  F6A7  A9 05     LDA #$05                      ; 036A7 ×0
  F6A9  9D 04 05  STA $0504,X                   ; 036A9 ×0
  F6AC  E6 AA     INC $AA                       ; 036AC ×0
  F6AE  A9 FF     LDA #$FF                      ; 036AE ×0
  F6B0  9D 00 05  STA $0500,X                   ; 036B0 ×0
  F6B3  4C 26 ED  JMP sub_B0_ED26               ; 036B3 ×0
  F6B6  A5 AA     LDA $AA                       ; 036B6 ×0
  F6B8  18        CLC                           ; 036B8 ×0
  F6B9  69 01     ADC #$01                      ; 036B9 ×0
  F6BB  29 03     AND #$03                      ; 036BB ×0
  F6BD  20 DA F7  JSR sub_B0_F7DA               ; 036BD ×0
  F6C0  BD 00 05  LDA $0500,X                   ; 036C0 ×0
  F6C3  F0 AC     BEQ $F671                     ; 036C3 ×0
  F6C5  A9 00     LDA #$00                      ; 036C5 ×0
  F6C7  9D 00 05  STA $0500,X                   ; 036C7 ×0
  F6CA  4C 9C EC  JMP $EC9C                     ; 036CA ×0

sub_B0_F6CD:                    ; from 0321c
  F6CD  A5 69     LDA $69                       ; 036CD ×0
  F6CF  C9 01     CMP #$01                      ; 036CF ×0
  F6D1  90 0A     BCC $F6DD                     ; 036D1 ×0
  F6D3  F0 02     BEQ $F6D7                     ; 036D3 ×0
  F6D5  B0 0C     BCS $F6E3                     ; 036D5 ×0
  F6D7  A5 68     LDA $68                       ; 036D7 inferred, not run
  F6D9  C9 0A     CMP #$0A                      ; 036D9 inferred, not run
  F6DB  B0 06     BCS $F6E3                     ; 036DB inferred, not run
  F6DD  A9 00     LDA #$00                      ; 036DD inferred, not run
  F6DF  85 B0     STA $B0                       ; 036DF inferred, not run
  F6E1  85 C0     STA $C0                       ; 036E1 inferred, not run
  F6E3  A5 AD     LDA $AD                       ; 036E3 ×0
  F6E5  4A        LSR A                         ; 036E5 ×0
  F6E6  90 07     BCC $F6EF                     ; 036E6 ×0
  F6E8  E6 AD     INC $AD                       ; 036E8 ×0
  F6EA  C9 08     CMP #$08                      ; 036EA ×0
  F6EC  90 84     BCC $F672                     ; 036EC ×0
  F6EE  60        RTS                           ; 036EE ×0
  F6EF  85 F8     STA $F8                       ; 036EF ×0
  F6F1  0A        ASL A                         ; 036F1 ×0
  F6F2  A8        TAY                           ; 036F2 ×0
  F6F3  A6 6B     LDX $6B                       ; 036F3 ×0
  F6F5  E8        INX                           ; 036F5 ×0
  F6F6  86 7B     STX $7B                       ; 036F6 ×0
  F6F8  B9 45 F7  LDA $F745,Y                   ; 036F8 ×0
  F6FB  85 78     STA $78                       ; 036FB ×0
  F6FD  C9 FF     CMP #$FF                      ; 036FD ×0
  F6FF  F0 B5     BEQ $F6B6                     ; 036FF ×0
  F701  C5 7B     CMP $7B                       ; 03701 ×0
  F703  D0 07     BNE $F70C                     ; 03703 ×0
  F705  B9 44 F7  LDA $F744,Y                   ; 03705 ×0
  F708  85 77     STA $77                       ; 03708 ×0
  F70A  C5 6A     CMP $6A                       ; 0370A ×0
  F70C  B0 E0     BCS $F6EE                     ; 0370C ×0
  F70E  A5 F8     LDA $F8                       ; 0370E ×0
  F710  20 66 F6  JSR sub_B0_F666               ; 03710 ×0
  F713  E6 AD     INC $AD                       ; 03713 ×0
  F715  20 20 CC  JSR sub_B0_CC20               ; 03715 ×0
  F718  95 74     STA $74,X                     ; 03718 ×0
  F71A  A9 3C     LDA #$3C                      ; 0371A ×0
  F71C  95 73     STA $73,X                     ; 0371C ×0
  F71E  A9 3C     LDA #$3C                      ; 0371E ×0
  F720  E0 20     CPX #$20                      ; 03720 ×0
  F722  F0 02     BEQ $F726                     ; 03722 ×0
  F724  A9 6C     LDA #$6C                      ; 03724 ×0
  F726  95 72     STA $72,X                     ; 03726 ×0
  F728  A9 01     LDA #$01                      ; 03728 ×0
  F72A  95 70     STA $70,X                     ; 0372A ×0
  F72C  A9 FE     LDA #$FE                      ; 0372C ×0
  F72E  95 71     STA $71,X                     ; 0372E ×0
  F730  20 58 F7  JSR sub_B0_F758               ; 03730 ×0
  F733  A0 07     LDY #$07                      ; 03733 ×0
  F735  B9 C7 F1  LDA $F1C7,Y                   ; 03735 ×0
  F738  95 7C     STA $7C,X                     ; 03738 ×0
  F73A  CA        DEX                           ; 0373A ×0
  F73B  88        DEY                           ; 0373B ×0
  F73C  10 F7     BPL $F735                     ; 0373C ×0
  F73E  20 DB F2  JSR sub_B0_F2DB               ; 0373E ×0
  F741  4C B6 F6  JMP $F6B6                     ; 03741 ×0
  F744  .byte 50 00 D0 00 50 01 D0 01 50 02 D0 02 50 03 D0 03   ; 03744
  F754  .byte 50 04 FF FF                                       ; 03754

sub_B0_F758:                    ; from 03191 03730
  F758  A4 66     LDY $66                       ; 03758 ×0
  F75A  88        DEY                           ; 0375A ×0
  F75B  98        TYA                           ; 0375B ×0
  F75C  29 03     AND #$03                      ; 0375C ×0
  F75E  A8        TAY                           ; 0375E ×0
  F75F  B9 6C F7  LDA $F76C,Y                   ; 0375F ×0
  F762  18        CLC                           ; 03762 ×0
  F763  65 F8     ADC $F8                       ; 03763 ×0
  F765  A8        TAY                           ; 03765 ×0
  F766  B9 70 F7  LDA $F770,Y                   ; 03766 ×0
  F769  95 7F     STA $7F,X                     ; 03769 ×0
  F76B  60        RTS                           ; 0376B ×0
  F76C  .byte 00 09 12 1B 0A 0A 0B 0A 0A 0A 0A 0E 0A 0B 0B 0A   ; 0376C
  F77C  .byte 0A 0D 0D 0E 0E 0B 0A 0F 0B 0E 0A 0E 0A 0F 0C 0F   ; 0377C
  F78C  .byte 0F 0F 0F 0F 0F 0F 0F 0A 68 68 66 64 5D 5B 53 4D   ; 0378C
  F79C  .byte 46 78 78 73 74 6C 64 5E 55 4B 10 0F 0E 0D 0C 0B   ; 0379C
  F7AC  .byte 0A 09 08 07 06 05 04 03 02 01 00 20 00 1E 00 1C   ; 037AC
  F7BC  .byte 01 26 01 24 01 22 01 20 01 22 01 24 00 20 00 21   ; 037BC
  F7CC  .byte 00 22 00 23 00 24 00 25 00 26 00 27 00 28         ; 037CC

sub_B0_F7DA:                    ; from 02e28 035dc 036bd
  F7DA  20 E9 F7  JSR sub_B0_F7E9               ; 037DA ×0
  F7DD  AA        TAX                           ; 037DD ×0
  F7DE  60        RTS                           ; 037DE ×0

sub_B0_F7DF:                    ; from 02f20
  F7DF  20 E4 F7  JSR sub_B0_F7E4               ; 037DF ×0
  F7E2  AA        TAX                           ; 037E2 ×0
  F7E3  60        RTS                           ; 037E3 ×0

sub_B0_F7E4:                    ; from 02bfa 02a69 037df 0343e
  F7E4  4A        LSR A                         ; 037E4 ×566
  F7E5  4A        LSR A                         ; 037E5 ×566
  F7E6  4A        LSR A                         ; 037E6 ×566
  F7E7  4A        LSR A                         ; 037E7 ×566
  F7E8  60        RTS                           ; 037E8 ×566

sub_B0_F7E9:                    ; from 026d9 026b9 037da 0366b 03676
  F7E9  0A        ASL A                         ; 037E9 ×30219
  F7EA  0A        ASL A                         ; 037EA ×30219
  F7EB  0A        ASL A                         ; 037EB ×30219
  F7EC  0A        ASL A                         ; 037EC ×30219
  F7ED  60        RTS                           ; 037ED ×30219

sub_B0_F7EE:                    ; from 0184e 019b9 0359a
  F7EE  18        CLC                           ; 037EE ×9307
  F7EF  A5 6A     LDA $6A                       ; 037EF ×9307
  F7F1  65 56     ADC $56                       ; 037F1 ×9307
  F7F3  85 6A     STA $6A                       ; 037F3 ×9307
  F7F5  A5 6B     LDA $6B                       ; 037F5 ×9307
  F7F7  69 00     ADC #$00                      ; 037F7 ×9307
  F7F9  85 6B     STA $6B                       ; 037F9 ×9307
  F7FB  60        RTS                           ; 037FB ×9307

sub_B0_F7FC:                    ; from 01873
  F7FC  38        SEC                           ; 037FC ×1996
  F7FD  A5 6A     LDA $6A                       ; 037FD ×1996
  F7FF  E5 56     SBC $56                       ; 037FF ×1996
  F801  AA        TAX                           ; 03801 ×1996
  F802  A5 6B     LDA $6B                       ; 03802 ×1996
  F804  E9 00     SBC #$00                      ; 03804 ×1996
  F806  30 04     BMI loc_B0_F80C               ; 03806 ×1996
  F808  86 6A     STX $6A                       ; 03808 ×747
  F80A  85 6B     STA $6B                       ; 0380A ×747

loc_B0_F80C:                    ; from 03806
  F80C  60        RTS                           ; 0380C ×1996

sub_B0_F80D:                    ; from 01a3e 00a40 01ce6 00bb1 00bb9 00acb (+11)
  F80D  86 4F     STX $4F                       ; 0380D ×735
  F80F  84 40     STY $40                       ; 0380F ×735
  F811  85 2F     STA $2F                       ; 03811 ×735
  F813  4A        LSR A                         ; 03813 ×735
  F814  4A        LSR A                         ; 03814 ×735
  F815  4A        LSR A                         ; 03815 ×735
  F816  4A        LSR A                         ; 03816 ×735
  F817  29 0C     AND #$0C                      ; 03817 ×735
  F819  85 1E     STA $1E                       ; 03819 ×735
  F81B  4A        LSR A                         ; 0381B ×735
  F81C  4A        LSR A                         ; 0381C ×735
  F81D  A8        TAY                           ; 0381D ×735
  F81E  BE 78 F8  LDX $F878,Y                   ; 0381E ×735
  F821  A5 2F     LDA $2F                       ; 03821 ×735
  F823  29 3F     AND #$3F                      ; 03823 ×735
  F825  F0 36     BEQ loc_B0_F85D               ; 03825 ×735
  F827  D5 02     CMP $02,X                     ; 03827 ×520
  F829  90 48     BCC $F873                     ; 03829 ×520
  F82B  D0 08     BNE loc_B0_F835               ; 0382B ×520
  F82D  C9 0E     CMP #$0E                      ; 0382D ×0
  F82F  90 42     BCC $F873                     ; 0382F ×0
  F831  C9 14     CMP #$14                      ; 03831 ×0
  F833  B0 3E     BCS $F873                     ; 03833 ×0

loc_B0_F835:                    ; from 0382b
  F835  85 2F     STA $2F                       ; 03835 ×520
  F837  A0 00     LDY #$00                      ; 03837 ×520
  F839  94 02     STY $02,X                     ; 03839 ×520
  F83B  0A        ASL A                         ; 0383B ×520
  F83C  A8        TAY                           ; 0383C ×520
  F83D  B9 D1 FA  LDA $FAD1,Y                   ; 0383D ×520
  F840  95 03     STA $03,X                     ; 03840 ×520
  F842  85 F2     STA $F2                       ; 03842 ×520
  F844  B9 D2 FA  LDA $FAD2,Y                   ; 03844 ×520
  F847  95 04     STA $04,X                     ; 03847 ×520
  F849  85 F3     STA $F3                       ; 03849 ×520
  F84B  A0 01     LDY #$01                      ; 0384B ×520
  F84D  94 00     STY $00,X                     ; 0384D ×520
  F84F  88        DEY                           ; 0384F ×520
  F850  94 08     STY $08,X                     ; 03850 ×520
  F852  B1 F2     LDA ($F2),Y                   ; 03852 ×520
  F854  29 F0     AND #$F0                      ; 03854 ×520
  F856  C9 20     CMP #$20                      ; 03856 ×520
  F858  F0 01     BEQ loc_B0_F85B               ; 03858 ×520
  F85A  C8        INY                           ; 0385A ×174

loc_B0_F85B:                    ; from 03858
  F85B  94 0A     STY $0A,X                     ; 0385B ×520

loc_B0_F85D:                    ; from 03825
  F85D  A9 00     LDA #$00                      ; 0385D ×735
  F85F  A4 1E     LDY $1E                       ; 0385F ×735
  F861  C0 08     CPY #$08                      ; 03861 ×735
  F863  F0 02     BEQ loc_B0_F867               ; 03863 ×735
  F865  A9 30     LDA #$30                      ; 03865 ×620

loc_B0_F867:                    ; from 03863
  F867  99 00 40  STA $4000,Y                   ; 03867 ×735
  F86A  99 01 40  STA $4001,Y                   ; 0386A ×735
  F86D  A5 2F     LDA $2F                       ; 0386D ×735
  F86F  29 3F     AND #$3F                      ; 0386F ×735
  F871  95 02     STA $02,X                     ; 03871 ×735
  F873  A6 4F     LDX $4F                       ; 03873 ×735
  F875  A4 40     LDY $40                       ; 03875 ×735
  F877  60        RTS                           ; 03877 ×735
  F878  .byte 10 21 32 43                                       ; 03878 data, read by 0381e

sub_B0_F87C:                    ; from 00099
  F87C  A2 10     LDX #$10                      ; 0387C ×59943
  F87E  A0 00     LDY #$00                      ; 0387E ×59943

loc_B0_F880:                    ; from 0389c
  F880  86 F4     STX $F4                       ; 03880 ×239772
  F882  84 F5     STY $F5                       ; 03882 ×239772
  F884  B5 02     LDA $02,X                     ; 03884 ×239772
  F886  F0 03     BEQ loc_B0_F88B               ; 03886 ×239772
  F888  20 C8 F8  JSR sub_B0_F8C8               ; 03888 ×90445

loc_B0_F88B:                    ; from 03886
  F88B  A5 F4     LDA $F4                       ; 0388B ×239772
  F88D  18        CLC                           ; 0388D ×239772
  F88E  69 11     ADC #$11                      ; 0388E ×239772
  F890  C9 54     CMP #$54                      ; 03890 ×239772
  F892  D0 01     BNE loc_B0_F895               ; 03892 ×239772
  F894  60        RTS                           ; 03894 ×59943

loc_B0_F895:                    ; from 03892
  F895  AA        TAX                           ; 03895 ×179829
  F896  A5 F5     LDA $F5                       ; 03896 ×179829
  F898  18        CLC                           ; 03898 ×179829
  F899  69 04     ADC #$04                      ; 03899 ×179829
  F89B  A8        TAY                           ; 0389B ×179829
  F89C  90 E2     BCC loc_B0_F880               ; 0389C ×179829

loc_B0_F89E:                    ; from 03908
  F89E  94 02     STY $02,X                     ; 0389E ×427
  F8A0  98        TYA                           ; 038A0 ×427
  F8A1  A6 F5     LDX $F5                       ; 038A1 ×427
  F8A3  E0 08     CPX #$08                      ; 038A3 ×427
  F8A5  F0 02     BEQ loc_B0_F8A9               ; 038A5 ×427
  F8A7  A9 30     LDA #$30                      ; 038A7 ×394

loc_B0_F8A9:                    ; from 038a5
  F8A9  9D 00 40  STA $4000,X                   ; 038A9 ×427
  F8AC  60        RTS                           ; 038AC ×427

loc_B0_F8AD:                    ; from 03900
  F8AD  C8        INY                           ; 038AD ×119
  F8AE  B1 F6     LDA ($F6),Y                   ; 038AE ×119
  F8B0  95 03     STA $03,X                     ; 038B0 ×119
  F8B2  C8        INY                           ; 038B2 ×119
  F8B3  B1 F6     LDA ($F6),Y                   ; 038B3 ×119
  F8B5  95 04     STA $04,X                     ; 038B5 ×119
  F8B7  C8        INY                           ; 038B7 ×119
  F8B8  98        TYA                           ; 038B8 ×119
  F8B9  18        CLC                           ; 038B9 ×119
  F8BA  65 F6     ADC $F6                       ; 038BA ×119
  F8BC  95 06     STA $06,X                     ; 038BC ×119
  F8BE  A9 00     LDA #$00                      ; 038BE ×119
  F8C0  65 F7     ADC $F7                       ; 038C0 ×119
  F8C2  95 07     STA $07,X                     ; 038C2 ×119

loc_B0_F8C4:                    ; from 03916
  F8C4  A9 01     LDA #$01                      ; 038C4 ×201
  F8C6  95 00     STA $00,X                     ; 038C6 ×201

sub_B0_F8C8:                    ; from 03888
  F8C8  A0 00     LDY #$00                      ; 038C8 ×90646
  F8CA  B5 03     LDA $03,X                     ; 038CA ×90646
  F8CC  85 F6     STA $F6                       ; 038CC ×90646
  F8CE  B5 04     LDA $04,X                     ; 038CE ×90646
  F8D0  85 F7     STA $F7                       ; 038D0 ×90646
  F8D2  D6 00     DEC $00,X                     ; 038D2 ×90646
  F8D4  F0 1C     BEQ loc_B0_F8F2               ; 038D4 ×90646
  F8D6  AD 10 03  LDA $0310                     ; 038D6 ×74530
  F8D9  F0 14     BEQ loc_B0_F8EF               ; 038D9 ×74530
  F8DB  B5 02     LDA $02,X                     ; 038DB ×28238
  F8DD  C9 16     CMP #$16                      ; 038DD ×28238
  F8DF  F0 0D     BEQ loc_B0_F8EE               ; 038DF ×28238

loc_B0_F8E1:                    ; from 039ce
  F8E1  F6 00     INC $00,X                     ; 038E1 ×36186
  F8E3  98        TYA                           ; 038E3 ×36186
  F8E4  95 08     STA $08,X                     ; 038E4 ×36186
  F8E6  A6 F5     LDX $F5                       ; 038E6 ×36186
  F8E8  9D 02 40  STA $4002,X                   ; 038E8 ×36186
  F8EB  9D 03 40  STA $4003,X                   ; 038EB ×36186

loc_B0_F8EE:                    ; from 038df
  F8EE  60        RTS                           ; 038EE ×37370

loc_B0_F8EF:                    ; from 038d9
  F8EF  4C 75 F9  JMP loc_B0_F975               ; 038EF ×46292

loc_B0_F8F2:                    ; from 038d4
  F8F2  B1 F6     LDA ($F6),Y                   ; 038F2 ×16116
  F8F4  C9 FD     CMP #$FD                      ; 038F4 ×16116
  F8F6  90 20     BCC loc_B0_F918               ; 038F6 ×16116
  F8F8  D0 08     BNE loc_B0_F902               ; 038F8 ×628
  F8FA  B5 0A     LDA $0A,X                     ; 038FA ×119
  F8FC  09 80     ORA #$80                      ; 038FC ×119
  F8FE  95 0A     STA $0A,X                     ; 038FE ×119
  F900  D0 AB     BNE loc_B0_F8AD               ; 03900 ×119

loc_B0_F902:                    ; from 038f8
  F902  C9 FE     CMP #$FE                      ; 03902 ×509
  F904  F0 A7     BEQ loc_B0_F8AD               ; 03904 ×509
  F906  B5 0A     LDA $0A,X                     ; 03906 ×509
  F908  10 94     BPL loc_B0_F89E               ; 03908 ×509
  F90A  29 7F     AND #$7F                      ; 0390A ×82
  F90C  95 0A     STA $0A,X                     ; 0390C ×82
  F90E  B5 06     LDA $06,X                     ; 0390E ×82
  F910  95 03     STA $03,X                     ; 03910 ×82
  F912  B5 07     LDA $07,X                     ; 03912 ×82
  F914  95 04     STA $04,X                     ; 03914 ×82
  F916  D0 AC     BNE loc_B0_F8C4               ; 03916 ×82

loc_B0_F918:                    ; from 038f6
  F918  B5 0A     LDA $0A,X                     ; 03918 ×15488
  F91A  29 7F     AND #$7F                      ; 0391A ×15488
  F91C  F0 03     BEQ loc_B0_F921               ; 0391C ×15488
  F91E  4C C9 F9  JMP loc_B0_F9C9               ; 0391E ×12493

loc_B0_F921:                    ; from 0391c
  F921  B1 F6     LDA ($F6),Y                   ; 03921 ×2995
  F923  29 F0     AND #$F0                      ; 03923 ×2995
  F925  C9 20     CMP #$20                      ; 03925 ×2995
  F927  D0 13     BNE loc_B0_F93C               ; 03927 ×2995
  F929  B1 F6     LDA ($F6),Y                   ; 03929 ×864
  F92B  29 0F     AND #$0F                      ; 0392B ×864
  F92D  95 01     STA $01,X                     ; 0392D ×864
  F92F  C8        INY                           ; 0392F ×864
  F930  B1 F6     LDA ($F6),Y                   ; 03930 ×864
  F932  A6 F5     LDX $F5                       ; 03932 ×864
  F934  9D 00 40  STA $4000,X                   ; 03934 ×864
  F937  A6 F4     LDX $F4                       ; 03937 ×864
  F939  95 09     STA $09,X                     ; 03939 ×864
  F93B  C8        INY                           ; 0393B ×864

loc_B0_F93C:                    ; from 03927
  F93C  B5 01     LDA $01,X                     ; 0393C ×2995
  F93E  95 00     STA $00,X                     ; 0393E ×2995
  F940  B5 09     LDA $09,X                     ; 03940 ×2995
  F942  29 10     AND #$10                      ; 03942 ×2995
  F944  F0 1C     BEQ loc_B0_F962               ; 03944 ×2995
  F946  B5 09     LDA $09,X                     ; 03946 ×2785
  F948  29 F0     AND #$F0                      ; 03948 ×2785
  F94A  95 09     STA $09,X                     ; 0394A ×2785
  F94C  B1 F6     LDA ($F6),Y                   ; 0394C ×2785
  F94E  C9 F8     CMP #$F8                      ; 0394E ×2785
  F950  D0 03     BNE loc_B0_F955               ; 03950 ×2785
  F952  C8        INY                           ; 03952 ×11
  F953  B1 F6     LDA ($F6),Y                   ; 03953 ×11

loc_B0_F955:                    ; from 03950
  F955  4A        LSR A                         ; 03955 ×2785
  F956  4A        LSR A                         ; 03956 ×2785
  F957  4A        LSR A                         ; 03957 ×2785
  F958  4A        LSR A                         ; 03958 ×2785
  F959  15 09     ORA $09,X                     ; 03959 ×2785
  F95B  95 09     STA $09,X                     ; 0395B ×2785
  F95D  A6 F5     LDX $F5                       ; 0395D ×2785
  F95F  9D 00 40  STA $4000,X                   ; 0395F ×2785

loc_B0_F962:                    ; from 03944
  F962  B1 F6     LDA ($F6),Y                   ; 03962 ×2995
  F964  29 07     AND #$07                      ; 03964 ×2995
  F966  85 F0     STA $F0                       ; 03966 ×2995
  F968  C8        INY                           ; 03968 ×2995
  F969  B1 F6     LDA ($F6),Y                   ; 03969 ×2995
  F96B  85 F1     STA $F1                       ; 0396B ×2995
  F96D  A6 F4     LDX $F4                       ; 0396D ×2995
  F96F  20 80 FA  JSR sub_B0_FA80               ; 0396F ×2995
  F972  4C A9 FA  JMP sub_B0_FAA9               ; 03972 ×2995

loc_B0_F975:                    ; from 038ef
  F975  B5 0A     LDA $0A,X                     ; 03975 ×46292
  F977  D0 01     BNE loc_B0_F97A               ; 03977 ×46292
  F979  60        RTS                           ; 03979 ×5616

loc_B0_F97A:                    ; from 03977
  F97A  A5 F5     LDA $F5                       ; 0397A ×40676
  F97C  C9 08     CMP #$08                      ; 0397C ×40676
  F97E  D0 01     BNE loc_B0_F981               ; 0397E ×40676
  F980  60        RTS                           ; 03980 ×17262

loc_B0_F981:                    ; from 0397e
  F981  A5 F6     LDA $F6                       ; 03981 ×23414
  F983  D0 02     BNE loc_B0_F987               ; 03983 ×23414
  F985  C6 F7     DEC $F7                       ; 03985 ×308

loc_B0_F987:                    ; from 03983
  F987  C6 F6     DEC $F6                       ; 03987 ×23414
  F989  A0 00     LDY #$00                      ; 03989 ×23414
  F98B  B1 F6     LDA ($F6),Y                   ; 0398B ×23414
  F98D  29 F0     AND #$F0                      ; 0398D ×23414
  F98F  C9 C0     CMP #$C0                      ; 0398F ×23414
  F991  D0 01     BNE loc_B0_F994               ; 03991 ×23414
  F993  60        RTS                           ; 03993 ×1533

loc_B0_F994:                    ; from 03991
  F994  B5 09     LDA $09,X                     ; 03994 ×21881
  F996  29 10     AND #$10                      ; 03996 ×21881
  F998  D0 01     BNE loc_B0_F99B               ; 03998 ×21881
  F99A  60        RTS                           ; 0399A ×8279

loc_B0_F99B:                    ; from 03998
  F99B  B5 0C     LDA $0C,X                     ; 0399B ×13602
  F99D  38        SEC                           ; 0399D ×13602
  F99E  E9 01     SBC #$01                      ; 0399E ×13602
  F9A0  95 0C     STA $0C,X                     ; 039A0 ×13602
  F9A2  D5 00     CMP $00,X                     ; 039A2 ×13602
  F9A4  D0 08     BNE loc_B0_F9AE               ; 039A4 ×13602
  F9A6  38        SEC                           ; 039A6 ×9246
  F9A7  F5 10     SBC $10,X                     ; 039A7 ×9246
  F9A9  90 08     BCC loc_B0_F9B3               ; 039A9 ×9246
  F9AB  F0 06     BEQ loc_B0_F9B3               ; 039AB ×4650
  F9AD  60        RTS                           ; 039AD ×4129

loc_B0_F9AE:                    ; from 039a4
  F9AE  38        SEC                           ; 039AE ×4356
  F9AF  E9 01     SBC #$01                      ; 039AF ×4356
  F9B1  95 0C     STA $0C,X                     ; 039B1 ×4356

loc_B0_F9B3:                    ; from 039a9 039ab
  F9B3  B5 09     LDA $09,X                     ; 039B3 ×9473
  F9B5  29 0F     AND #$0F                      ; 039B5 ×9473
  F9B7  38        SEC                           ; 039B7 ×9473
  F9B8  E9 01     SBC #$01                      ; 039B8 ×9473
  F9BA  10 01     BPL loc_B0_F9BD               ; 039BA ×9473
  F9BC  60        RTS                           ; 039BC ×1239

loc_B0_F9BD:                    ; from 039ba
  F9BD  B5 09     LDA $09,X                     ; 039BD ×8234
  F9BF  E9 01     SBC #$01                      ; 039BF ×8234
  F9C1  95 09     STA $09,X                     ; 039C1 ×8234
  F9C3  A6 F5     LDX $F5                       ; 039C3 ×8234
  F9C5  9D 00 40  STA $4000,X                   ; 039C5 ×8234
  F9C8  60        RTS                           ; 039C8 ×8234

loc_B0_F9C9:                    ; from 0391e
  F9C9  AD 10 03  LDA $0310                     ; 039C9 ×12493
  F9CC  F0 03     BEQ loc_B0_F9D1               ; 039CC ×12493
  F9CE  4C E1 F8  JMP loc_B0_F8E1               ; 039CE ×9132

loc_B0_F9D1:                    ; from 039cc
  F9D1  B1 F6     LDA ($F6),Y                   ; 039D1 ×3361
  F9D3  29 F0     AND #$F0                      ; 039D3 ×3361
  F9D5  C9 D0     CMP #$D0                      ; 039D5 ×3361
  F9D7  D0 26     BNE loc_B0_F9FF               ; 039D7 ×3361
  F9D9  B1 F6     LDA ($F6),Y                   ; 039D9 ×167
  F9DB  29 0F     AND #$0F                      ; 039DB ×167
  F9DD  95 0D     STA $0D,X                     ; 039DD ×167
  F9DF  C8        INY                           ; 039DF ×167
  F9E0  B1 F6     LDA ($F6),Y                   ; 039E0 ×167
  F9E2  95 05     STA $05,X                     ; 039E2 ×167
  F9E4  A6 F5     LDX $F5                       ; 039E4 ×167
  F9E6  9D 00 40  STA $4000,X                   ; 039E6 ×167
  F9E9  C8        INY                           ; 039E9 ×167
  F9EA  E0 08     CPX #$08                      ; 039EA ×167
  F9EC  F0 24     BEQ loc_B0_FA12               ; 039EC ×167
  F9EE  B1 F6     LDA ($F6),Y                   ; 039EE ×133
  F9F0  4A        LSR A                         ; 039F0 ×133
  F9F1  4A        LSR A                         ; 039F1 ×133
  F9F2  4A        LSR A                         ; 039F2 ×133
  F9F3  4A        LSR A                         ; 039F3 ×133
  F9F4  A6 F4     LDX $F4                       ; 039F4 ×133
  F9F6  95 0F     STA $0F,X                     ; 039F6 ×133
  F9F8  B1 F6     LDA ($F6),Y                   ; 039F8 ×133
  F9FA  29 0F     AND #$0F                      ; 039FA ×133
  F9FC  95 10     STA $10,X                     ; 039FC ×133
  F9FE  C8        INY                           ; 039FE ×133

loc_B0_F9FF:                    ; from 039d7
  F9FF  A6 F5     LDX $F5                       ; 039FF ×3327
  FA01  E0 08     CPX #$08                      ; 03A01 ×3327
  FA03  F0 0D     BEQ loc_B0_FA12               ; 03A03 ×3327
  FA05  B1 F6     LDA ($F6),Y                   ; 03A05 ×2072
  FA07  C9 F0     CMP #$F0                      ; 03A07 ×2072
  FA09  D0 07     BNE loc_B0_FA12               ; 03A09 ×2072
  FA0B  C8        INY                           ; 03A0B ×62
  FA0C  B1 F6     LDA ($F6),Y                   ; 03A0C ×62
  FA0E  9D 01 40  STA $4001,X                   ; 03A0E ×62
  FA11  C8        INY                           ; 03A11 ×62

loc_B0_FA12:                    ; from 03a09 03a03 039ec
  FA12  B1 F6     LDA ($F6),Y                   ; 03A12 ×3361
  FA14  29 F0     AND #$F0                      ; 03A14 ×3361
  FA16  C9 E0     CMP #$E0                      ; 03A16 ×3361
  FA18  D0 09     BNE loc_B0_FA23               ; 03A18 ×3361
  FA1A  B1 F6     LDA ($F6),Y                   ; 03A1A ×576
  FA1C  29 0F     AND #$0F                      ; 03A1C ×576
  FA1E  A6 F4     LDX $F4                       ; 03A1E ×576
  FA20  95 0B     STA $0B,X                     ; 03A20 ×576
  FA22  C8        INY                           ; 03A22 ×576

loc_B0_FA23:                    ; from 03a18
  FA23  20 A9 FA  JSR sub_B0_FAA9               ; 03A23 ×3361
  FA26  88        DEY                           ; 03A26 ×3361
  FA27  B1 F6     LDA ($F6),Y                   ; 03A27 ×3361
  FA29  29 0F     AND #$0F                      ; 03A29 ×3361
  FA2B  85 F0     STA $F0                       ; 03A2B ×3361
  FA2D  F0 0B     BEQ loc_B0_FA3A               ; 03A2D ×3361
  FA2F  B5 0D     LDA $0D,X                     ; 03A2F ×2425
  FA31  18        CLC                           ; 03A31 ×2425

loc_B0_FA32:                    ; from 03a36
  FA32  75 0D     ADC $0D,X                     ; 03A32 ×3224
  FA34  C6 F0     DEC $F0                       ; 03A34 ×3224
  FA36  D0 FA     BNE loc_B0_FA32               ; 03A36 ×3224
  FA38  F0 02     BEQ loc_B0_FA3C               ; 03A38 ×2425

loc_B0_FA3A:                    ; from 03a2d
  FA3A  B5 0D     LDA $0D,X                     ; 03A3A ×936

loc_B0_FA3C:                    ; from 03a38
  FA3C  95 00     STA $00,X                     ; 03A3C ×3361
  FA3E  18        CLC                           ; 03A3E ×3361
  FA3F  75 0F     ADC $0F,X                     ; 03A3F ×3361
  FA41  95 0C     STA $0C,X                     ; 03A41 ×3361
  FA43  B5 05     LDA $05,X                     ; 03A43 ×3361
  FA45  95 09     STA $09,X                     ; 03A45 ×3361
  FA47  A6 F5     LDX $F5                       ; 03A47 ×3361
  FA49  9D 00 40  STA $4000,X                   ; 03A49 ×3361
  FA4C  B1 F6     LDA ($F6),Y                   ; 03A4C ×3361
  FA4E  4A        LSR A                         ; 03A4E ×3361
  FA4F  4A        LSR A                         ; 03A4F ×3361
  FA50  4A        LSR A                         ; 03A50 ×3361
  FA51  4A        LSR A                         ; 03A51 ×3361
  FA52  C9 0C     CMP #$0C                      ; 03A52 ×3361
  FA54  D0 0C     BNE loc_B0_FA62               ; 03A54 ×3361
  FA56  A9 00     LDA #$00                      ; 03A56 ×241
  FA58  E0 08     CPX #$08                      ; 03A58 ×241
  FA5A  F0 02     BEQ loc_B0_FA5E               ; 03A5A ×241
  FA5C  A9 30     LDA #$30                      ; 03A5C ×137

loc_B0_FA5E:                    ; from 03a5a
  FA5E  9D 00 40  STA $4000,X                   ; 03A5E ×241
  FA61  60        RTS                           ; 03A61 ×241

loc_B0_FA62:                    ; from 03a54
  FA62  A6 F4     LDX $F4                       ; 03A62 ×3120
  FA64  0A        ASL A                         ; 03A64 ×3120
  FA65  A8        TAY                           ; 03A65 ×3120
  FA66  B9 BB FA  LDA $FABB,Y                   ; 03A66 ×3120
  FA69  85 F0     STA $F0                       ; 03A69 ×3120
  FA6B  C8        INY                           ; 03A6B ×3120
  FA6C  B9 BB FA  LDA $FABB,Y                   ; 03A6C ×3120
  FA6F  85 F1     STA $F1                       ; 03A6F ×3120
  FA71  B4 0B     LDY $0B,X                     ; 03A71 ×3120

loc_B0_FA73:                    ; from 03a7d
  FA73  98        TYA                           ; 03A73 ×10846
  FA74  C9 04     CMP #$04                      ; 03A74 ×10846
  FA76  F0 08     BEQ sub_B0_FA80               ; 03A76 ×10846
  FA78  46 F0     LSR $F0                       ; 03A78 ×7726
  FA7A  66 F1     ROR $F1                       ; 03A7A ×7726
  FA7C  C8        INY                           ; 03A7C ×7726
  FA7D  4C 73 FA  JMP loc_B0_FA73               ; 03A7D ×7726

sub_B0_FA80:                    ; from 03a76 0396f
  FA80  A5 F0     LDA $F0                       ; 03A80 ×6115
  FA82  09 08     ORA #$08                      ; 03A82 ×6115
  FA84  85 F0     STA $F0                       ; 03A84 ×6115
  FA86  D5 08     CMP $08,X                     ; 03A86 ×6115
  FA88  D0 0E     BNE loc_B0_FA98               ; 03A88 ×6115
  FA8A  B5 09     LDA $09,X                     ; 03A8A ×4638
  FA8C  29 10     AND #$10                      ; 03A8C ×4638
  FA8E  F0 0A     BEQ loc_B0_FA9A               ; 03A8E ×4638
  FA90  A6 F5     LDX $F5                       ; 03A90 ×3519
  FA92  E0 08     CPX #$08                      ; 03A92 ×3519
  FA94  F0 04     BEQ loc_B0_FA9A               ; 03A94 ×3519
  FA96  D0 09     BNE loc_B0_FAA1               ; 03A96 ×3519

loc_B0_FA98:                    ; from 03a88
  FA98  95 08     STA $08,X                     ; 03A98 ×1477

loc_B0_FA9A:                    ; from 03a8e
  FA9A  A5 F0     LDA $F0                       ; 03A9A ×2596
  FA9C  A6 F5     LDX $F5                       ; 03A9C ×2596
  FA9E  9D 03 40  STA $4003,X                   ; 03A9E ×2596

loc_B0_FAA1:                    ; from 03a96
  FAA1  A6 F5     LDX $F5                       ; 03AA1 ×6115
  FAA3  A5 F1     LDA $F1                       ; 03AA3 ×6115
  FAA5  9D 02 40  STA $4002,X                   ; 03AA5 ×6115
  FAA8  60        RTS                           ; 03AA8 ×6115

sub_B0_FAA9:                    ; from 03a23 03972
  FAA9  C8        INY                           ; 03AA9 ×6356
  FAAA  98        TYA                           ; 03AAA ×6356
  FAAB  18        CLC                           ; 03AAB ×6356
  FAAC  65 F6     ADC $F6                       ; 03AAC ×6356
  FAAE  A6 F4     LDX $F4                       ; 03AAE ×6356
  FAB0  95 03     STA $03,X                     ; 03AB0 ×6356
  FAB2  90 06     BCC loc_B0_FABA               ; 03AB2 ×6356
  FAB4  A5 F7     LDA $F7                       ; 03AB4 ×39
  FAB6  69 00     ADC #$00                      ; 03AB6 ×39
  FAB8  95 04     STA $04,X                     ; 03AB8 ×39

loc_B0_FABA:                    ; from 03ab2
  FABA  60        RTS                           ; 03ABA ×6356
  FABB  .byte 06 AE 06 4E 05 F4                                 ; 03ABB data, read by 03a66 03a6c
  FAC1  .byte 05 9E                                             ; 03AC1
  FAC3  .byte 05 4E 05 01 04 B9 04 76 04 36 03 F9               ; 03AC3 data, read by 03a66 03a6c
  FACF  .byte 03 C0                                             ; 03ACF
  FAD1  .byte 03 8A 18 FB 37 FB 4C FB                           ; 03AD1 data, read by 03a66 03a6c 0383d 03844
  FAD9  .byte FF FA 5F FB 7E FB 91 FB 98 FB                     ; 03AD9
  FAE3  .byte D1 FB DC FB ED FB 08 FC 23 FC 31 FC 3F FD         ; 03AE3 data, read by 0383d 03844
  FAF1  .byte A5 FD 25 FE BF FE 18 FF                           ; 03AF1
  FAF9  .byte B1 FC DD FC A0 FC                                 ; 03AF9 data, read by 0383d 03844
  FAFF  .byte 24 B0 E0 60 F0 50 F0 40 F0 30 E0 20 00 00 A0 20   ; 03AFF
  FB0F  .byte 00 00 70 20 00 00 30 20 FF                        ; 03B0F
  FB18  .byte 21 B0 F1 70 F1 50 F1 50 F1 78 C1 70 C1 58 91 70   ; 03B18 data, read by 03852 038f2 03921 03929 (+4)
  FB28  .byte 81 70 91 60 81 48 A1 38 91 4B 71 2B 51 28 FF 23   ; 03B28 data, read by 038f2 03921 0394c 03962 (+3)
  FB38  .byte 70 F0 87 D0 78 24 B0 F0 87 D0 6C D0 5B 22 B0 C0   ; 03B38 data, read by 03930 0394c 03962 03969 (+3)
  FB48  .byte 55 B0 4F FF 21 B0 F0 D0 F0 C0 F0 B0 F0 98 F0 88   ; 03B48 data, read by 03969 038f2 03921 0394c (+4)
  FB58  .byte F0 78 C0 6C B0 58 FF                              ; 03B58 data, read by 038f2 03921 0394c 03962 (+1)
  FB5F  .byte 23 B0 00 00 00 00 23 8F 00 6A 00 47 00 3F 22 B0   ; 03B5F
  FB6F  .byte F0 38 A0 35 F0 2F 21 86 00 2A 00 28 00 23 FF 24   ; 03B6F
  FB7F  .byte E4 D0 8E F0 6A F0 54 F0 47 D0 8E F0 6A F0 54 F0   ; 03B7F
  FB8F  .byte 47 FF 21 70 F0 39 D0 4A FF 21 B0 F0 40 F0 43 F0   ; 03B8F
  FB9F  .byte 45 F0 55 F0 55 F0 5A F0 60 F0 65 F0 6A F0 70 F0   ; 03B9F
  FBAF  .byte 78 F0 80 F0 88 F0 90 F0 98 F0 A0 F0 AA F0 B5 F0   ; 03BAF
  FBBF  .byte C0 F0 D0 F0 E0 F0 F0 F1 00 F1 10 F1 28 F1 40 F1   ; 03BBF
  FBCF  .byte 60 FF                                             ; 03BCF
  FBD1  .byte 23 70 F2 50 00 00 22 B0 F1 F0 FF 23 30 F0 0A 00   ; 03BD1 data, read by 03852 038f2 03921 03929 (+4)
  FBE1  .byte 00 22 30 F0 0D 2F 30 00 00 00 00 FF D4 46 22 E0   ; 03BE1 data, read by 03969 038f2 03921 03929 (+12)
  FBF1  .byte 01 21 01 D6 46 22 E1 72 40 02 50 42 00 E2 91 C1   ; 03BF1 data, read by 03a27 03a4c 0398b 038f2 (+8)
  FC01  .byte B1 C1 F0 9C E1 03 FF D4 46 22 E1 01 21 01 D6 46   ; 03C01 data, read by 038f2 039d1 03a05 03a12 (+10)
  FC11  .byte 22 E2 72 40 02 50 42 00 E3 91 C1 B1 C1 F0 94 E1   ; 03C11 data, read by 039ee 039f8 03a05 03a12 (+7)
  FC21  .byte 03 FF D6 20 E2 43 43 03 03 E3 91 C1 71 C1 03 FF   ; 03C21 data, read by 03a27 03a4c 0398b 038f2 (+6)
  FC31  .byte FD 86 FC 61 71 70 60 41 71 61 60 40 21 61 41 E2   ; 03C31 data, read by 03852 038f2 038ae 038b3 (+7)
  FC41  .byte B1 E1 11 21 43 C1 FD 86 FC 21 B1 91 71            ; 03C41 data, read by 03a27 03a4c 0398b 038f2 (+6)
  FC4E  .byte 61 41 21 11 21 41 60 70 61 41 21 E2 90 B0 E1 10   ; 03C4E
  FC5E  .byte 20 40 60 71 71 71 71 70 60 73 81 91 91 90 70 60   ; 03C5E
  FC6E  .byte 70 95 91 B1 B1 E0 22 E1 B0 91 91 90 70 61 71 71   ; 03C6E
  FC7E  .byte 11 41 21 21 21 FE 31 FC                           ; 03C7E
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
  FD56  .byte 70 61 41 FD 95 FD 21 21 71 61 41                  ; 03D56 data, read by 038f2 039d1 03a12 03a27 (+3)
  FD61  .byte 21 11 E3 B1 91 61 73 91 E2 71 61 C5 11 91 21 91   ; 03D61
  FD71  .byte 41 91 51 91 61 91 11 91 21 90 80 91 61 71 70 90   ; 03D71
  FD81  .byte B1 71 61 E1 21 E2 21 20 30 40 50 60 70 93 61 61   ; 03D81
  FD91  .byte 61 FE 3F FD                                       ; 03D91
  FD95  .byte 21 91 21 91 21 91 21 91 21 60 50 61 91 21 91 FF   ; 03D95 data, read by 038f2 039d1 03a12 03a27 (+1)
  FDA5  .byte FD 0F FE 21 10 20 41 01 E2 B1 A1 B1 E1 41 26 C0   ; 03DA5
  FDB5  .byte FD 0F FE 21 01 E2 B1 91 79 C1 70 50 40 20 43 72   ; 03DB5
  FDC5  .byte 70 E1 41 01 E2 71 41 91 71 51 40 57 C0 23 52 50   ; 03DC5
  FDD5  .byte E1 21 E2 B1 91 51 41 51 61 90 74 70 50 40 20 43   ; 03DD5
  FDE5  .byte 72 70 E1 71 51 41 11 41 21 11 20 E2 95 C0 B1 E1   ; 03DE5
  FDF5  .byte 21 01 E2 B1 E1 01 41 21 01 E2 B0 E1 07 C0 E2 B0   ; 03DF5
  FE05  .byte 90 80 91 A0 B0 E1 00 FE A5 FD E1 11 21 41 21 72   ; 03E05
  FE15  .byte 20 E2 B1 71 B1 91 81 91 E1 45 41 61 51 41 31 FF   ; 03E15
  FE25  .byte FD B9 FE FD B9 FE FD A7 FE FD A7 FE FD B0 FE FD   ; 03E25
  FE35  .byte B0 FE FD B9 FE 71 21 41 61 FD B9 FE FD B9 FE FD   ; 03E35
  FE45  .byte A7 FE FD A7 FE FD B0 FE FD B0 FE FD B9 FE E2 73   ; 03E45
  FE55  .byte C3 01 71 41 71 01 71 41 71 21 91 51 91 21 91 51   ; 03E55
  FE65  .byte 91 E3 71 E2 51 21 51 E3 71 E2 51 21 51 01 71 61   ; 03E65
  FE75  .byte 71 01 71 61 71 01 71 61 71 11 91 71 91 21 91 51   ; 03E75
  FE85  .byte 91 31 E1 01 E3 91 E1 01 E3 71 E2 71 41 71 E3 71   ; 03E85
  FE95  .byte E2 51 21 51 01 71 41 71 21 E1 01 E2 61 E1 01 FE   ; 03E95
  FEA5  .byte 25 FE E2 91 E1 11 E2 41 E1 11 FF E2 91 E1 01 E2   ; 03EA5
  FEB5  .byte 21 E1 01 FF E2 71 B1 21 B1 FF E1 03 FD 01 FF 13   ; 03EB5
  FEC5  .byte 23 47 23 C3 13 23 97 73 C3 E1 03 FD 01 FF 63 93   ; 03EC5
  FED5  .byte 97 73 E1 67 43 47 23 E2 73 C3 FD 0C FF 47 73 47   ; 03ED5
  FEE5  .byte 73 E1 2F 03 FD 0C FF E1 03 23 43 71 71 72 C0 52   ; 03EE5
  FEF5  .byte C0 41 41 42 C0 22 C0 E1 03 FE BF FE E2 B3 B7 93   ; 03EF5
  FF05  .byte C3 83 93 B7 93 C3 FF E2 73 57 73 57 73 E1 4F 23   ; 03F05
  FF15  .byte E2 73 FF C7 FD 64 FF E2 23 53 53 73 B3 B3 23 73   ; 03F15
  FF25  .byte 73 73 B3 B3 23 B3 B3 FD 64 FF E2 33 93 93 43 73   ; 03F25
  FF35  .byte 73 03 43 43 23 63 63 73 C7 FD 74 FF 03 43 43 E3   ; 03F35
  FF45  .byte 73 E2 43 43 03 43 43 E3 73 E2 43 43 FD 74 FF E1   ; 03F45
  FF55  .byte 03 E2 B3 A3 97 83 73 E3 73 E2 73 03 FE 18 FF E2   ; 03F55
  FF65  .byte 93 E1 03 03 E2 23 E1 03 03 E2 93 E1 03 03 FF 23   ; 03F65
  FF75  .byte 73 73 E3 73 E2 73 73 23 73 73 E3 73 E2 73 73 FF   ; 03F75
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
  FFF6  .byte 04 01 02 01 5A C0                                 ; 03FF6 data, read by 00578 00057 000ca 00519 (+11)
  FFFC  .byte 00 C0 B7 C0                                       ; 03FFC
