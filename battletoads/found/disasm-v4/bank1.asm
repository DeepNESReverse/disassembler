; bank 1 — PRG $08000-$0FFFF, mapped at $8000-$FFFF


sub_B1_8000:                    ; from 0ffdc
  8000  6C 13 00  JMP ($0013)                   ; 08000 ×27361

jt_B1_8003:                    ; from 08000
  8003  4C A2 80  JMP loc_B1_80A2               ; 08003 ×680

jt_B1_8006:                    ; from 08000
  8006  4C 19 87  JMP loc_B1_8719               ; 08006 ×13779
  8009  .byte 4C A2 80 4C C4 87                                 ; 08009
  800F  4C F9 8E  JMP $8EF9                     ; 0800F ×0

jt_B1_8012:                    ; from 08000
  8012  4C 1B 80  JMP loc_B1_801B               ; 08012 ×5597

jt_B1_8015:                    ; from 08000
  8015  4C 68 85  JMP loc_B1_8568               ; 08015 ×4987

jt_B1_8018:                    ; from 08000
  8018  4C D2 85  JMP loc_B1_85D2               ; 08018 ×2318

loc_B1_801B:                    ; from 08012
  801B  BA        TSX                           ; 0801B ×5597
  801C  86 2F     STX $2F                       ; 0801C ×5597
  801E  AD 02 20  LDA $2002                     ; 0801E ×5597
  8021  A2 0F     LDX #$0F                      ; 08021 ×5597
  8023  9A        TXS                           ; 08023 ×5597
  8024  A0 0C     LDY #$0C                      ; 08024 ×5597

loc_B1_8026:                    ; from 0809c
  8026  B9 5A 85  LDA $855A,Y                   ; 08026 ×39179
  8029  8D 06 20  STA $2006                     ; 08029 ×39179
  802C  B9 5B 85  LDA $855B,Y                   ; 0802C ×39179
  802F  8D 06 20  STA $2006                     ; 0802F ×39179
  8032  68        PLA                           ; 08032 ×39179
  8033  8D 07 20  STA $2007                     ; 08033 ×39179
  8036  68        PLA                           ; 08036 ×39179
  8037  8D 07 20  STA $2007                     ; 08037 ×39179
  803A  68        PLA                           ; 0803A ×39179
  803B  8D 07 20  STA $2007                     ; 0803B ×39179
  803E  68        PLA                           ; 0803E ×39179
  803F  8D 07 20  STA $2007                     ; 0803F ×39179
  8042  68        PLA                           ; 08042 ×39179
  8043  8D 07 20  STA $2007                     ; 08043 ×39179
  8046  68        PLA                           ; 08046 ×39179
  8047  8D 07 20  STA $2007                     ; 08047 ×39179
  804A  68        PLA                           ; 0804A ×39179
  804B  8D 07 20  STA $2007                     ; 0804B ×39179
  804E  68        PLA                           ; 0804E ×39179
  804F  8D 07 20  STA $2007                     ; 0804F ×39179
  8052  68        PLA                           ; 08052 ×39179
  8053  8D 07 20  STA $2007                     ; 08053 ×39179
  8056  68        PLA                           ; 08056 ×39179
  8057  8D 07 20  STA $2007                     ; 08057 ×39179
  805A  68        PLA                           ; 0805A ×39179
  805B  8D 07 20  STA $2007                     ; 0805B ×39179
  805E  68        PLA                           ; 0805E ×39179
  805F  8D 07 20  STA $2007                     ; 0805F ×39179
  8062  68        PLA                           ; 08062 ×39179
  8063  8D 07 20  STA $2007                     ; 08063 ×39179
  8066  68        PLA                           ; 08066 ×39179
  8067  8D 07 20  STA $2007                     ; 08067 ×39179
  806A  68        PLA                           ; 0806A ×39179
  806B  8D 07 20  STA $2007                     ; 0806B ×39179
  806E  68        PLA                           ; 0806E ×39179
  806F  8D 07 20  STA $2007                     ; 0806F ×39179
  8072  68        PLA                           ; 08072 ×39179
  8073  8D 07 20  STA $2007                     ; 08073 ×39179
  8076  68        PLA                           ; 08076 ×39179
  8077  8D 07 20  STA $2007                     ; 08077 ×39179
  807A  68        PLA                           ; 0807A ×39179
  807B  8D 07 20  STA $2007                     ; 0807B ×39179
  807E  68        PLA                           ; 0807E ×39179
  807F  8D 07 20  STA $2007                     ; 0807F ×39179
  8082  68        PLA                           ; 08082 ×39179
  8083  8D 07 20  STA $2007                     ; 08083 ×39179
  8086  68        PLA                           ; 08086 ×39179
  8087  8D 07 20  STA $2007                     ; 08087 ×39179
  808A  68        PLA                           ; 0808A ×39179
  808B  8D 07 20  STA $2007                     ; 0808B ×39179
  808E  68        PLA                           ; 0808E ×39179
  808F  8D 07 20  STA $2007                     ; 0808F ×39179
  8092  68        PLA                           ; 08092 ×39179
  8093  8D 07 20  STA $2007                     ; 08093 ×39179
  8096  68        PLA                           ; 08096 ×39179
  8097  8D 07 20  STA $2007                     ; 08097 ×39179
  809A  88        DEY                           ; 0809A ×39179
  809B  88        DEY                           ; 0809B ×39179
  809C  10 88     BPL loc_B1_8026               ; 0809C ×39179
  809E  A6 2F     LDX $2F                       ; 0809E ×5597
  80A0  9A        TXS                           ; 080A0 ×5597
  80A1  60        RTS                           ; 080A1 ×5597

loc_B1_80A2:                    ; from 08003
  80A2  A6 15     LDX $15                       ; 080A2 ×680
  80A4  A9 01     LDA #$01                      ; 080A4 ×680
  80A6  85 00     STA $00                       ; 080A6 ×680
  80A8  AD 02 20  LDA $2002                     ; 080A8 ×680
  80AB  BD 20 82  LDA $8220,X                   ; 080AB ×680
  80AE  85 01     STA $01                       ; 080AE ×680
  80B0  BD 21 82  LDA $8221,X                   ; 080B0 ×680
  80B3  85 02     STA $02                       ; 080B3 ×680
  80B5  A0 00     LDY #$00                      ; 080B5 ×680
  80B7  B1 01     LDA ($01),Y                   ; 080B7 ×680
  80B9  85 03     STA $03                       ; 080B9 ×680
  80BB  C8        INY                           ; 080BB ×680
  80BC  B1 01     LDA ($01),Y                   ; 080BC ×680
  80BE  85 04     STA $04                       ; 080BE ×680
  80C0  98        TYA                           ; 080C0 ×680
  80C1  38        SEC                           ; 080C1 ×680
  80C2  65 01     ADC $01                       ; 080C2 ×680
  80C4  85 01     STA $01                       ; 080C4 ×680
  80C6  A5 02     LDA $02                       ; 080C6 ×680
  80C8  69 00     ADC #$00                      ; 080C8 ×680
  80CA  85 02     STA $02                       ; 080CA ×680

loc_B1_80CC:                    ; from 080f7 08185
  80CC  A0 00     LDY #$00                      ; 080CC ×1981
  80CE  B1 01     LDA ($01),Y                   ; 080CE ×1981
  80D0  F0 4A     BEQ loc_B1_811C               ; 080D0 ×1981
  80D2  85 05     STA $05                       ; 080D2 ×1301
  80D4  C8        INY                           ; 080D4 ×1301
  80D5  B1 01     LDA ($01),Y                   ; 080D5 ×1301
  80D7  85 08     STA $08                       ; 080D7 ×1301
  80D9  C8        INY                           ; 080D9 ×1301
  80DA  B1 01     LDA ($01),Y                   ; 080DA ×1301
  80DC  85 06     STA $06                       ; 080DC ×1301
  80DE  C8        INY                           ; 080DE ×1301
  80DF  B1 01     LDA ($01),Y                   ; 080DF ×1301
  80E1  85 07     STA $07                       ; 080E1 ×1301
  80E3  98        TYA                           ; 080E3 ×1301
  80E4  38        SEC                           ; 080E4 ×1301
  80E5  65 01     ADC $01                       ; 080E5 ×1301
  80E7  85 01     STA $01                       ; 080E7 ×1301
  80E9  A5 02     LDA $02                       ; 080E9 ×1301
  80EB  69 00     ADC #$00                      ; 080EB ×1301
  80ED  85 02     STA $02                       ; 080ED ×1301
  80EF  A5 08     LDA $08                       ; 080EF ×1301
  80F1  C9 04     CMP #$04                      ; 080F1 ×1301
  80F3  F0 34     BEQ loc_B1_8129               ; 080F3 ×1301

loc_B1_80F5:                    ; from 0810b
  80F5  A5 05     LDA $05                       ; 080F5 ×47407
  80F7  F0 D3     BEQ loc_B1_80CC               ; 080F7 ×47407
  80F9  A5 04     LDA $04                       ; 080F9 ×46323
  80FB  8D 06 20  STA $2006                     ; 080FB ×46323
  80FE  A5 03     LDA $03                       ; 080FE ×46323
  8100  8D 06 20  STA $2006                     ; 08100 ×46323
  8103  A5 08     LDA $08                       ; 08103 ×46323
  8105  0A        ASL A                         ; 08105 ×46323
  8106  B0 06     BCS sub_B1_810E               ; 08106 ×46323
  8108  20 0E 81  JSR sub_B1_810E               ; 08108 ×46323
  810B  4C F5 80  JMP loc_B1_80F5               ; 0810B ×46323

sub_B1_810E:                    ; from 08108
  810E  AA        TAX                           ; 0810E ×46323
  810F  BD 21 81  LDA $8121,X                   ; 0810F ×46323
  8112  85 1F     STA $1F                       ; 08112 ×46323
  8114  BD 22 81  LDA $8122,X                   ; 08114 ×46323
  8117  85 20     STA $20                       ; 08117 ×46323
  8119  6C 1F 00  JMP ($001F)                   ; 08119 ×46323

loc_B1_811C:                    ; from 080d0
  811C  A9 00     LDA #$00                      ; 0811C ×680
  811E  85 00     STA $00                       ; 0811E ×680
  8120  60        RTS                           ; 08120 ×680
  8121  .byte A8 81 B4 81 C5 81 D6 81                           ; 08121 data, read by 0810f 08114

loc_B1_8129:                    ; from 080f3
  8129  A0 00     LDY #$00                      ; 08129 ×217
  812B  B1 06     LDA ($06),Y                   ; 0812B ×217
  812D  85 1B     STA $1B                       ; 0812D ×217
  812F  C8        INY                           ; 0812F ×217
  8130  B1 06     LDA ($06),Y                   ; 08130 ×217
  8132  85 1C     STA $1C                       ; 08132 ×217
  8134  C8        INY                           ; 08134 ×217
  8135  A5 04     LDA $04                       ; 08135 ×217
  8137  8D 06 20  STA $2006                     ; 08137 ×217
  813A  A5 03     LDA $03                       ; 0813A ×217
  813C  8D 06 20  STA $2006                     ; 0813C ×217
  813F  A9 00     LDA #$00                      ; 0813F ×217
  8141  85 1A     STA $1A                       ; 08141 ×217
  8143  A5 05     LDA $05                       ; 08143 ×217
  8145  0A        ASL A                         ; 08145 ×217
  8146  26 1A     ROL $1A                       ; 08146 ×217
  8148  0A        ASL A                         ; 08148 ×217
  8149  26 1A     ROL $1A                       ; 08149 ×217
  814B  0A        ASL A                         ; 0814B ×217
  814C  26 1A     ROL $1A                       ; 0814C ×217
  814E  0A        ASL A                         ; 0814E ×217
  814F  26 1A     ROL $1A                       ; 0814F ×217
  8151  85 19     STA $19                       ; 08151 ×217
  8153  18        CLC                           ; 08153 ×217
  8154  65 03     ADC $03                       ; 08154 ×217
  8156  85 03     STA $03                       ; 08156 ×217
  8158  A5 1A     LDA $1A                       ; 08158 ×217
  815A  65 04     ADC $04                       ; 0815A ×217
  815C  85 04     STA $04                       ; 0815C ×217
  815E  A9 00     LDA #$00                      ; 0815E ×217
  8160  38        SEC                           ; 08160 ×217
  8161  E5 19     SBC $19                       ; 08161 ×217
  8163  85 19     STA $19                       ; 08163 ×217
  8165  A9 00     LDA #$00                      ; 08165 ×217
  8167  E5 1A     SBC $1A                       ; 08167 ×217
  8169  85 1A     STA $1A                       ; 08169 ×217

loc_B1_816B:                    ; from 0817f 081a6 08183
  816B  B1 06     LDA ($06),Y                   ; 0816B ×274488
  816D  C8        INY                           ; 0816D ×274488
  816E  D0 02     BNE loc_B1_8172               ; 0816E ×274488
  8170  E6 07     INC $07                       ; 08170 ×931

loc_B1_8172:                    ; from 0816e
  8172  C5 1B     CMP $1B                       ; 08172 ×274488
  8174  F0 16     BEQ loc_B1_818C               ; 08174 ×274488
  8176  C5 1C     CMP $1C                       ; 08176 ×261053
  8178  F0 0E     BEQ loc_B1_8188               ; 08178 ×261053
  817A  8D 07 20  STA $2007                     ; 0817A ×251553
  817D  E6 19     INC $19                       ; 0817D ×251553
  817F  D0 EA     BNE loc_B1_816B               ; 0817F ×251553
  8181  E6 1A     INC $1A                       ; 08181 ×756
  8183  D0 E6     BNE loc_B1_816B               ; 08183 ×756

loc_B1_8185:                    ; from 081a0
  8185  4C CC 80  JMP loc_B1_80CC               ; 08185 ×217

loc_B1_8188:                    ; from 08178
  8188  A2 FF     LDX #$FF                      ; 08188 ×9500
  818A  D0 02     BNE loc_B1_818E               ; 0818A ×9500

loc_B1_818C:                    ; from 08174
  818C  A2 00     LDX #$00                      ; 0818C ×13435

loc_B1_818E:                    ; from 0818a
  818E  B1 06     LDA ($06),Y                   ; 0818E ×22935
  8190  85 05     STA $05                       ; 08190 ×22935
  8192  C8        INY                           ; 08192 ×22935
  8193  D0 02     BNE loc_B1_8197               ; 08193 ×22935
  8195  E6 07     INC $07                       ; 08195 ×114

loc_B1_8197:                    ; from 081a4 08193
  8197  8E 07 20  STX $2007                     ; 08197 ×133343
  819A  E6 19     INC $19                       ; 0819A ×133343
  819C  D0 04     BNE loc_B1_81A2               ; 0819C ×133343
  819E  E6 1A     INC $1A                       ; 0819E ×840
  81A0  F0 E3     BEQ loc_B1_8185               ; 081A0 ×840

loc_B1_81A2:                    ; from 0819c
  81A2  C6 05     DEC $05                       ; 081A2 ×133297
  81A4  D0 F1     BNE loc_B1_8197               ; 081A4 ×133297
  81A6  F0 C3     BEQ loc_B1_816B               ; 081A6 ×22889

jt_B1_81A8:                    ; from 08119
  81A8  A0 00     LDY #$00                      ; 081A8 ×4113
  81AA  A2 10     LDX #$10                      ; 081AA ×4113
  81AC  20 01 82  JSR sub_B1_8201               ; 081AC ×4113
  81AF  A9 10     LDA #$10                      ; 081AF ×4113
  81B1  4C E6 81  JMP loc_B1_81E6               ; 081B1 ×4113

jt_B1_81B4:                    ; from 08119
  81B4  A0 00     LDY #$00                      ; 081B4 ×232
  81B6  A2 08     LDX #$08                      ; 081B6 ×232
  81B8  20 01 82  JSR sub_B1_8201               ; 081B8 ×232
  81BB  A2 08     LDX #$08                      ; 081BB ×232
  81BD  20 17 82  JSR sub_B1_8217               ; 081BD ×232
  81C0  A9 08     LDA #$08                      ; 081C0 ×232
  81C2  4C E6 81  JMP loc_B1_81E6               ; 081C2 ×232

jt_B1_81C5:                    ; from 08119
  81C5  A0 00     LDY #$00                      ; 081C5 ×194
  81C7  A2 08     LDX #$08                      ; 081C7 ×194
  81C9  20 17 82  JSR sub_B1_8217               ; 081C9 ×194
  81CC  A2 08     LDX #$08                      ; 081CC ×194
  81CE  20 01 82  JSR sub_B1_8201               ; 081CE ×194
  81D1  A9 08     LDA #$08                      ; 081D1 ×194
  81D3  4C E6 81  JMP loc_B1_81E6               ; 081D3 ×194

jt_B1_81D6:                    ; from 08119
  81D6  A0 00     LDY #$00                      ; 081D6 ×41784
  81D8  A2 08     LDX #$08                      ; 081D8 ×41784
  81DA  20 01 82  JSR sub_B1_8201               ; 081DA ×41784
  81DD  A0 00     LDY #$00                      ; 081DD ×41784
  81DF  A2 08     LDX #$08                      ; 081DF ×41784
  81E1  20 01 82  JSR sub_B1_8201               ; 081E1 ×41784
  81E4  A9 08     LDA #$08                      ; 081E4 ×41784

loc_B1_81E6:                    ; from 081b1 081c2 081d3
  81E6  18        CLC                           ; 081E6 ×46323
  81E7  65 06     ADC $06                       ; 081E7 ×46323
  81E9  85 06     STA $06                       ; 081E9 ×46323
  81EB  A5 07     LDA $07                       ; 081EB ×46323
  81ED  69 00     ADC #$00                      ; 081ED ×46323
  81EF  85 07     STA $07                       ; 081EF ×46323
  81F1  A5 03     LDA $03                       ; 081F1 ×46323
  81F3  18        CLC                           ; 081F3 ×46323
  81F4  69 10     ADC #$10                      ; 081F4 ×46323
  81F6  85 03     STA $03                       ; 081F6 ×46323
  81F8  A5 04     LDA $04                       ; 081F8 ×46323
  81FA  69 00     ADC #$00                      ; 081FA ×46323
  81FC  85 04     STA $04                       ; 081FC ×46323
  81FE  C6 05     DEC $05                       ; 081FE ×46323
  8200  60        RTS                           ; 08200 ×46323

sub_B1_8201:                    ; from 08208 081da 081e1 081ac 081b8 081ce
  8201  B1 06     LDA ($06),Y                   ; 08201 ×737760
  8203  8D 07 20  STA $2007                     ; 08203 ×737760
  8206  C8        INY                           ; 08206 ×737760
  8207  CA        DEX                           ; 08207 ×737760
  8208  D0 F7     BNE sub_B1_8201               ; 08208 ×737760
  820A  60        RTS                           ; 0820A ×88107
  820B  .byte B1 06 49 FF 8D 07 20 C8 CA D0 F5 60               ; 0820B

sub_B1_8217:                    ; from 081bd 081c9
  8217  A9 00     LDA #$00                      ; 08217 ×426

loc_B1_8219:                    ; from 0821d
  8219  8D 07 20  STA $2007                     ; 08219 ×3408
  821C  CA        DEX                           ; 0821C ×3408
  821D  D0 FA     BNE loc_B1_8219               ; 0821D ×3408
  821F  60        RTS                           ; 0821F ×426
  8220  .byte 90 83                                             ; 08220
  8222  .byte 94 82 71 82 AC 83 90 83 78 82                     ; 08222 data, read by 080ab 080b0
  822C  .byte 94 82 94 82 90 83 90 83 90 83                     ; 0822C
  8236  .byte 90 83                                             ; 08236 data, read by 080ab 080b0
  8238  .byte BF 83                                             ; 08238
  823A  .byte B7 82 CA 82 97 83 A5 83 D9 82 02 83 25 83         ; 0823A data, read by 080ab 080b0
  8248  .byte A5 83 25 83 90 83                                 ; 08248
  824E  .byte 40 83 7F 82 86 82 8D 82                           ; 0824E data, read by 080ab 080b0
  8256  .byte F0 82 FB 82 BF 83                                 ; 08256
  825C  .byte 9E 83 4F 83 62 83 89 83 66 82 00 00 FD 03 DE 83   ; 0825C data, read by 080ab 080b0 080b7 080bc (+4)
  826C  .byte 03 03 C6 83 00 00 10 32 03 DE 83 00 00 00 32 03   ; 0826C data, read by 080ce 080d5 080da 080df (+2)
  827C  .byte DE 83 00 50 1C 30 03 C6 83 00 E0 15 12 01 DE 83   ; 0827C data, read by 080da 080df 080ce 080b7 (+2)
  828C  .byte 00 40 1E 1A 01 6E 84 00 00 00 21 00 AD B0 09 00   ; 0828C data, read by 080ce 080b7 080bc 080d5 (+2)
  829C  .byte BD B0 83 04 4D B1 23 04 03 B9 0A 04 14 BB 04 04   ; 0829C data, read by 080da 080df 080ce 080d5
  82AC  .byte AD BB 0A 04 DF BB 02 00 B2 85 00 00 00 21 00 AD   ; 082AC data, read by 080da 080df 080ce 080d5 (+2)
  82BC  .byte B0 09 00 BD B0 B4 04 A7 EB 0F 04 DF BB 00 00 00   ; 082BC data, read by 080df 080ce 080d5 080da (+2)
  82CC  .byte 21 00 AD B0 09 00 BD B0 C3 04 9A D9 00 00 00 21   ; 082CC data, read by 080ce 080d5 080da 080df (+2)
  82DC  .byte 00 AD B0 09 00 BD B0 2D 04 A6 F4 5F 04 4F F7 37   ; 082DC data, read by 080d5 080da 080df 080ce
  82EC  .byte 04 E5 FC 00                                       ; 082EC data, read by 080d5 080da 080df 080ce
  82F0  .byte 70 05 11 04 4F F7 0B 00 B5 FE 00 60 0B 08 04 E5   ; 082F0
  8300  .byte FC 00                                             ; 08300
  8302  .byte 00 00 21 00 AD B0 09 00 BD B0 A6 04 9E D0 06 04   ; 08302 data, read by 080b7 080bc 080ce 080d5 (+2)
  8312  .byte 14 BB 04 00 C5 BD 04 04 AD BB 05 04 DF BB 0A 00   ; 08312 data, read by 080da 080df 080ce 080d5
  8322  .byte 25 BE 00 00 00 21 00 AD B0 09 00 BD B0 A6 04 E9   ; 08322 data, read by 080da 080df 080ce 080b7 (+2)
  8332  .byte E2 0A 04 14 BB 04 04 AD BB 0F 04 DF BB 00 00 00   ; 08332 data, read by 080df 080ce 080d5 080da (+2)
  8342  .byte 21 00 AD B0 09 00 BD B0 C3 04 42 CC 00 00 00 21   ; 08342 data, read by 080ce 080d5 080da 080df (+2)
  8352  .byte 00 AD B0 08 00 BD B0 01 01 AA 85 C3 04 25 C1 00   ; 08352 data, read by 080d5 080da 080df 080ce
  8362  .byte 00 00 21 00 AD B0 08 00 BD B0 01 00 32 CC 61 04   ; 08362 data, read by 080b7 080bc 080ce 080d5 (+2)
  8372  .byte A6 C6 22 04 9A D9 23 04 03 B9 0A 04 14 BB 04 04   ; 08372 data, read by 080da 080df 080ce 080d5
  8382  .byte AD BB 0E 04 DF BB 00 A0 0E 16 00 65 BC 00 00 10   ; 08382 data, read by 080da 080df 080ce 080d5 (+2)
  8392  .byte FF 04 C4 87 00 00 10 FF 04 89 95 00 00 10 D4 04   ; 08392 data, read by 080ce 080d5 080da 080df (+2)
  83A2  .byte B2 A6 00 00 10 FF 04 35 9E 00 F0 1E 04 03 3C 87   ; 083A2 data, read by 080da 080df 080ce 080b7 (+2)
  83B2  .byte 02 02 5C 87 0A 03 6C 87 01 01 BC 87 00            ; 083B2 data, read by 080ce 080d5 080da 080df
  83BF  .byte 00 00 30 00 55 BE 00                              ; 083BF
  83C6  .byte 18 30 00 00 00 00 00 00 18 18 18 18 00 18 18 00   ; 083C6 data, read by 08201
  83D6  .byte 78 FC CC 0C 18 30 00 30 00 00 00 00 00 00 00 00   ; 083D6 data, read by 08201
  83E6  .byte 38 4C C6 C6 C6 64 38 00 18 38 18 18 18 18 7E 00   ; 083E6 data, read by 08201
  83F6  .byte 7C C6 0E 3C 78 E0 FE 00 7E 0C 18 3C 06 C6 7C 00   ; 083F6 data, read by 08201
  8406  .byte 1C 3C 6C CC FE 0C 0C 00 FC C0 FC 06 06 06 7C 00   ; 08406 data, read by 08201
  8416  .byte 3C 60 C0 FC C6 C6 7C 00 FE C6 0C 18 30 30 30 00   ; 08416 data, read by 08201
  8426  .byte 7C C6 C6 7C C6 C6 7C 00 7C C6 C6 7E 06 0C 78 00   ; 08426 data, read by 08201
  8436  .byte 00 00 00 00 00 00 18 18 00 00 00 00 00 00 18 30   ; 08436 data, read by 08201
  8446  .byte 00 00 00 FE FE 00 00 00 7C 82 9A A2 A2 9A 82 7C   ; 08446 data, read by 08201
  8456  .byte 0C 08 18 10 30 20 60 00 03 06 0C 0C 0F 0C 0C 00   ; 08456 data, read by 08201
  8466  .byte 80 C0 60 60 E0 60 60 00 38 6C C6 C6 FE C6 C6 00   ; 08466 data, read by 08201
  8476  .byte FC C6 C6 FC C6 C6 FC 00 3C 66 C0 C0 C0 66 3C 00   ; 08476 data, read by 08201
  8486  .byte F8 CC C6 C6 C6 CC F8 00 FE C0 C0 FC C0 C0 FE 00   ; 08486 data, read by 08201
  8496  .byte FE C0 C0 FC C0 C0 C0 00 3C 60 C0 CE C6 66 3E 00   ; 08496 data, read by 08201
  84A6  .byte C6 C6 C6 FE C6 C6 C6 00 3C 18 18 18 18 18 3C 00   ; 084A6 data, read by 08201
  84B6  .byte 1E 0C 0C 0C 0C CC 78 00 C6 CC D8 F0 F8 DC CE 00   ; 084B6 data, read by 08201
  84C6  .byte 60 60 60 60 60 60 7E 00 C6 EE FE FE D6 C6 C6 00   ; 084C6 data, read by 08201
  84D6  .byte C6 E6 F6 FE DE CE C6 00 7C C6 C6 C6 C6 C6 7C 00   ; 084D6 data, read by 08201
  84E6  .byte FC C6 C6 C6 FC C0 C0 00 38 6C C6 C6 DE 6C 3A 00   ; 084E6 data, read by 08201
  84F6  .byte FC C6 C6 FC D8 CC C6 00 7C C6 C0 7C 06 C6 7C 00   ; 084F6 data, read by 08201
  8506  .byte 7E 18 18 18 18 18 18 00 C6 C6 C6 C6 C6 C6 7C 00   ; 08506 data, read by 08201
  8516  .byte C6 C6 6C 6C 38 38 10 00 C6 C6 D6 FE FE EE C6 00   ; 08516 data, read by 08201
  8526  .byte C6 C6 6C 38 6C C6 C6 00 66 66 66 3C 18 18 18 00   ; 08526 data, read by 08201
  8536  .byte FE 0E 1C 38 70 E0 FE 00 36 48 71 3D 6E 68 AB 63   ; 08536 data, read by 08201 0856c 08580
  8546  .byte 59 30 8A BF 9D 30 A2 76 6D A2 75 3D 8C 70 50 7E   ; 08546 data, read by 08201
  8556  .byte 81 78 10 BF 0F E0 23 62 23 42 23 22 23 02 22 E2   ; 08556 data, read by 08201 08026 0802c
  8566  .byte 22 C2                                             ; 08566 data, read by 08201 08026 0802c

loc_B1_8568:                    ; from 08015
  8568  A5 10     LDA $10                       ; 08568 ×4987
  856A  0A        ASL A                         ; 0856A ×4987
  856B  AA        TAX                           ; 0856B ×4987
  856C  BD 3E 85  LDA $853E,X                   ; 0856C ×4987
  856F  8D 00 02  STA $0200                     ; 0856F ×4987
  8572  38        SEC                           ; 08572 ×4987
  8573  E9 03     SBC #$03                      ; 08573 ×4987
  8575  8D 04 02  STA $0204                     ; 08575 ×4987
  8578  A9 40     LDA #$40                      ; 08578 ×4987
  857A  8D 01 02  STA $0201                     ; 0857A ×4987
  857D  8D 05 02  STA $0205                     ; 0857D ×4987
  8580  BD 3F 85  LDA $853F,X                   ; 08580 ×4987
  8583  8D 03 02  STA $0203                     ; 08583 ×4987
  8586  18        CLC                           ; 08586 ×4987
  8587  69 03     ADC #$03                      ; 08587 ×4987
  8589  8D 07 02  STA $0207                     ; 08589 ×4987
  858C  A0 01     LDY #$01                      ; 0858C ×4987

loc_B1_858E:                    ; from 085a7
  858E  98        TYA                           ; 0858E ×9974
  858F  0A        ASL A                         ; 0858F ×9974
  8590  0A        ASL A                         ; 08590 ×9974
  8591  AA        TAX                           ; 08591 ×9974
  8592  98        TYA                           ; 08592 ×9974
  8593  9D 02 02  STA $0202,X                   ; 08593 ×9974
  8596  A5 0B     LDA $0B                       ; 08596 ×9974
  8598  29 08     AND #$08                      ; 08598 ×9974
  859A  D0 05     BNE loc_B1_85A1               ; 0859A ×9974
  859C  B9 11 00  LDA $0011,Y                   ; 0859C ×5182
  859F  10 05     BPL loc_B1_85A6               ; 0859F ×5182

loc_B1_85A1:                    ; from 0859a
  85A1  A9 F8     LDA #$F8                      ; 085A1 ×7375
  85A3  9D 00 02  STA $0200,X                   ; 085A3 ×7375

loc_B1_85A6:                    ; from 0859f
  85A6  88        DEY                           ; 085A6 ×9974
  85A7  10 E5     BPL loc_B1_858E               ; 085A7 ×9974
  85A9  60        RTS                           ; 085A9 ×4987
  85AA  .byte 3C 7E FF FF FF FF 7E 3C 3A 3A 3A 3A 3A 3A 3A 0A   ; 085AA data, read by 08201
  85BA  .byte FF FF FF FF FF 7F 3F 0F 04 04 04 04 04 04 04 00   ; 085BA data, read by 08201
  85CA  .byte FB FB FB FB FB FA F8 F0                           ; 085CA data, read by 08201

loc_B1_85D2:                    ; from 08018
  85D2  A2 21     LDX #$21                      ; 085D2 ×2318
  85D4  A0 02     LDY #$02                      ; 085D4 ×2318
  85D6  20 CB FF  JSR sub_B1_FFCB               ; 085D6 ×2318
  85D9  A6 82     LDX $82                       ; 085D9 ×2318
  85DB  A5 1F     LDA $1F                       ; 085DB ×2318
  85DD  4A        LSR A                         ; 085DD ×2318
  85DE  4A        LSR A                         ; 085DE ×2318
  85DF  BC DF 03  LDY $03DF,X                   ; 085DF ×2318
  85E2  10 07     BPL loc_B1_85EB               ; 085E2 ×2318
  85E4  85 1F     STA $1F                       ; 085E4 ×1093
  85E6  A9 40     LDA #$40                      ; 085E6 ×1093
  85E8  38        SEC                           ; 085E8 ×1093
  85E9  E5 1F     SBC $1F                       ; 085E9 ×1093

loc_B1_85EB:                    ; from 085e2
  85EB  A0 00     LDY #$00                      ; 085EB ×2318
  85ED  84 2D     STY $2D                       ; 085ED ×2318
  85EF  84 16     STY $16                       ; 085EF ×2318
  85F1  A4 22     LDY $22                       ; 085F1 ×2318
  85F3  38        SEC                           ; 085F3 ×2318
  85F4  E9 02     SBC #$02                      ; 085F4 ×2318
  85F6  B0 02     BCS loc_B1_85FA               ; 085F6 ×2318
  85F8  A9 00     LDA #$00                      ; 085F8 ×792

loc_B1_85FA:                    ; from 085f6
  85FA  85 15     STA $15                       ; 085FA ×2318
  85FC  38        SEC                           ; 085FC ×2318
  85FD  F9 B7 03  SBC $03B7,Y                   ; 085FD ×2318
  8600  B0 02     BCS loc_B1_8604               ; 08600 ×2318
  8602  C6 16     DEC $16                       ; 08602 ×99

loc_B1_8604:                    ; from 08600
  8604  18        CLC                           ; 08604 ×2318
  8605  79 39 04  ADC $0439,Y                   ; 08605 ×2318
  8608  99 39 04  STA $0439,Y                   ; 08608 ×2318
  860B  A5 16     LDA $16                       ; 0860B ×2318
  860D  79 2A 04  ADC $042A,Y                   ; 0860D ×2318
  8610  99 2A 04  STA $042A,Y                   ; 08610 ×2318
  8613  A5 15     LDA $15                       ; 08613 ×2318
  8615  99 B7 03  STA $03B7,Y                   ; 08615 ×2318
  8618  60        RTS                           ; 08618 ×2318
  8619  .byte FF 7B 55 95 04 08 20 00 04 84 AA 6E FF F7 FF FF   ; 08619 data, read by 08201 0872f
  8629  .byte 61 94 EE BF FF FF FF FF BE 6B 11 40 00 00 00 00   ; 08629 data, read by 08201 0872f
  8639  .byte EF FF FF 7A 65 64 02 00 10 00 00 85 9A 9B FD FF   ; 08639 data, read by 08201 0872f
  8649  .byte 00 00 84 50 95 C9 FF 6F FF FF 7B BF 6A 36 10 90   ; 08649 data, read by 08201 0872f
  8659  .byte 7F FF FF FF FF DF AF 05 80 00 00 04 00 20 54 FE   ; 08659 data, read by 08201 0872f
  8669  .byte 00 00 20 00 00 24 91 CC FF FF FF FF FF FB 6E 33   ; 08669 data, read by 08201 0872f
  8679  .byte FA FD FF FF FF FF BE BD 05 22 00 00 10 00 41 42   ; 08679 data, read by 08201 0872f
  8689  .byte 4A 20 00 00 20 00 24 B4 B5 EF FF FF DF FF D7 4B   ; 08689 data, read by 08201 0872f
  8699  .byte 00 90 C2 C5 EF FF FF FF FF 7F 3D 3A 10 00 00 00   ; 08699 data, read by 08201 0872f
  86A9  .byte BF 3F 1D 0A 00 00 24 20 40 C4 E6 F5 FF FF FF FF   ; 086A9 data, read by 08201 0872f
  86B9  .byte 00 00 34 79 FB FF FF FF FF FF CB 86 04 20 00 10   ; 086B9 data, read by 08201 0872f
  86C9  .byte FF FF FF FB 55 00 08 00 10 00 00 04 AA FF F7 FF   ; 086C9 data, read by 08201 0872f
  86D9  .byte 7F A6 55 00 21 20 00 10 84 5D AE FF FE FF FF FF   ; 086D9 data, read by 08201 0872f
  86E9  .byte 40 E8 F5 FE FF FF FF FF BF 17 0A 01 00 00 00 04   ; 086E9 data, read by 08201 0872f
  86F9  .byte FF FF 7B D4 08 80 00 00 00 10 84 2B F7 7F FF FF   ; 086F9 data, read by 08201 0872f
  8709  .byte 04 41 0B 77 FF FF FF FF FB BE F4 A8 00 00 10 10   ; 08709 data, read by 08201 0872f

loc_B1_8719:                    ; from 08006
  8719  A9 17     LDA #$17                      ; 08719 ×13779
  871B  85 B3     STA $B3                       ; 0871B ×13779
  871D  A9 D0     LDA #$D0                      ; 0871D ×13779
  871F  85 B4     STA $B4                       ; 0871F ×13779
  8721  A9 86     LDA #$86                      ; 08721 ×13779
  8723  85 95     STA $95                       ; 08723 ×13779
  8725  A5 B5     LDA $B5                       ; 08725 ×13779
  8727  6A        ROR A                         ; 08727 ×13779
  8728  6A        ROR A                         ; 08728 ×13779
  8729  6A        ROR A                         ; 08729 ×13779
  872A  29 C0     AND #$C0                      ; 0872A ×13779
  872C  A8        TAY                           ; 0872C ×13779
  872D  A2 60     LDX #$60                      ; 0872D ×13779

loc_B1_872F:                    ; from 08739
  872F  B9 19 86  LDA $8619,Y                   ; 0872F ×881856
  8732  9D 00 01  STA $0100,X                   ; 08732 ×881856
  8735  C8        INY                           ; 08735 ×881856
  8736  E8        INX                           ; 08736 ×881856
  8737  E0 A0     CPX #$A0                      ; 08737 ×881856
  8739  D0 F4     BNE loc_B1_872F               ; 08739 ×881856
  873B  60        RTS                           ; 0873B ×13779
  873C  .byte 00 00 00 00 6C FE FE FE FE FE 7C 7C 38 38 10 00   ; 0873C data, read by 08201
  874C  .byte 00 00 00 00 6C 92 82 82 82 82 44 44 28 28 10 00   ; 0874C data, read by 08201
  875C  .byte 00 7E 42 42 42 42 7E 00 00 7E 7E 7E 7E 7E 7E 00   ; 0875C data, read by 08201
  876C  .byte 00 3E 63 63 63 63 63 3E 00 18 38 38 18 18 18 3C   ; 0876C data, read by 08201
  877C  .byte 00 3E 63 03 3E 60 60 7F 00 3E 63 03 0E 03 63 3E   ; 0877C data, read by 08201
  878C  .byte 00 60 60 6C 6C 7F 0C 0C 00 7F 60 60 7E 03 63 3E   ; 0878C data, read by 08201
  879C  .byte 00 3E 63 60 7E 63 63 3E 00 7F 66 06 0C 0C 18 18   ; 0879C data, read by 08201
  87AC  .byte 00 3E 63 63 3E 63 63 3E 00 3E 63 63 3F 03 63 3E   ; 087AC data, read by 08201
  87BC  .byte 00 00 00 00 00 00 00 03 0D 11 0D 10 1F 3F 3F 1F   ; 087BC data, read by 08201 0812b 08130 0816b (+1)
  87CC  .byte 07 00 01 02 7F 7F 7F 7F 7F 7F 7F 7F E8 11 05 40   ; 087CC data, read by 08201 0816b 0818e
  87DC  .byte A0 11 08 EA 0D 07 11 08 0D 02 11 04 0D 03 11 07   ; 087DC data, read by 08201 0816b 0818e
  87EC  .byte 00 AA 55 AA 55 AA 55 AA 00 FF AA 55 AA 55 AA 55   ; 087EC data, read by 08201 0816b
  87FC  .byte 0D 02 FA FD FE FD 0D 03 11 07 D0 00 80 40 A0 50   ; 087FC data, read by 08201 0816b 0818e
  880C  .byte 17 AF 2F 11 05 E8 50 06 02 02 06 3A F2 F2 F2 F8   ; 0880C data, read by 08201 0816b 0818e
  881C  .byte FC FC F8 C0 0D 03 01 02 41 22 18 07 0D 02 7F 7F   ; 0881C data, read by 08201 0816b 0818e
  882C  .byte 3F 1F 07 0D 03 11 05 07 F8 07 11 06 07 00 11 06   ; 0882C data, read by 08201 0816b 0818e
  883C  .byte 00 11 08 00 40 A0 40 A0 40 A0 40 11 08 0D 08 11   ; 0883C data, read by 08201 0816b 0818e
  884C  .byte 08 0D 02 AA 55 AA 55 AA 55 11 02 55 AA 55 AA 55   ; 0884C data, read by 08201 0818e 0816b
  885C  .byte AA 0D 02 11 08 0D 07 5F AF 5F AF 5F AF 5F F8 A0   ; 0885C data, read by 08201 0816b 0818e
  886C  .byte 50 A0 50 A0 50 A0 00 11 06 F8 0D 09 F2 F2 F2 F4   ; 0886C data, read by 08201 0816b 0818e
  887C  .byte F8 C0 0D 10 01 01 00 01 03 07 0F 1F 3F 7F 7F 1F   ; 0887C data, read by 08201 0816b 0818e
  888C  .byte 1F 3F 7F 11 0C F5 EA D5 AA D5 AA 55 11 09 50 A0   ; 0888C data, read by 08201 0816b 0818e
  889C  .byte 50 A0 40 A0 40 11 08 0D 08 11 08 00 2A 55 2A 15   ; 0889C data, read by 08201 0816b 0818e
  88AC  .byte 2A 15 2A FF D5 AA D5 EA D5 EA D5 FF BF 7F BF 5F   ; 088AC data, read by 08201 0816b
  88BC  .byte AF 5F AF 00 40 80 40 A0 50 A0 50 FF AA D5 EA F5   ; 088BC data, read by 08201 0816b
  88CC  .byte FA FD FE 0D 0F 7F 00 01 03 07 0F 1F 3F 00 03 07   ; 088CC data, read by 08201 0816b 0818e
  88DC  .byte 0F 1F 1F 3F 7F 00 11 08 FE FF FE FD FA FD FA 0F   ; 088DC data, read by 08201 0816b 0818e
  88EC  .byte 11 07 F0 AA 55 AA 55 AA 55 AA 11 08 00 80 40 80   ; 088EC data, read by 08201 0816b 0818e
  88FC  .byte 40 0D 03 11 08 0D 08 11 08 00 15 0A 15 0A 05 0A   ; 088FC data, read by 08201 0816b 0818e
  890C  .byte 05 FF EA F5 EA F5 FA F5 FA 00 57 AB 57 AB 55 AA   ; 0890C data, read by 08201 0816b
  891C  .byte 55 FF A8 54 A8 54 AA 55 AA 00 11 08 0D 08 55 AA   ; 0891C data, read by 08201 0816b 0818e
  892C  .byte D5 AA D5 EA F5 FF 0D 09 80 40 A0 50 A8 54 FE 0D   ; 0892C data, read by 08201 0816b 0818e
  893C  .byte 08 FF 0D 07 11 08 00 80 40 A0 50 A8 54 AA 0D 08   ; 0893C data, read by 08201 0818e 0816b
  894C  .byte 11 05 3F C1 FE 11 08 0D 05 03 19 0F 0D 06 07 3F   ; 0894C data, read by 08201 0816b 0818e
  895C  .byte 0D 03 01 3E 0F 11 02 0D 04 01 11 03 0D 03 FF 00   ; 0895C data, read by 08201 0816b 0818e
  896C  .byte FF FE F4 0D 04 11 04 0D 05 07 11 07 F8 0D 07 C0   ; 0896C data, read by 08201 0816b 0818e
  897C  .byte 38 04 0D 06 C0 F8 0D 03 80 7C 03 0D 06 80 FC 11   ; 0897C data, read by 08201 0816b 0818e
  898C  .byte 02 0D 03 FF 80 80 D0 E8 0D 04 7F 7F 2F 17 0D 07   ; 0898C data, read by 08201 0818e 0816b
  899C  .byte 11 08 00 7F 0D 07 7F 3F 1F 0F 07 03 01 00 FF 7F   ; 0899C data, read by 08201 0816b 0818e
  89AC  .byte 3F 1F 0F 07 03 01 11 09 FA FD FE FD FE FF FE 11   ; 089AC data, read by 08201 0816b 0818e
  89BC  .byte 09 AA 55 AA 55 AA 55 AA 11 09 0D 03 40 80 40 80   ; 089BC data, read by 08201 0818e 0816b
  89CC  .byte 11 09 0D 07 11 09 05 0A 05 0A 15 0A 15 FF FA F5   ; 089CC data, read by 08201 0816b 0818e
  89DC  .byte FA F5 EA F5 EA 00 55 AA 55 AB 57 AB 57 FF AA 55   ; 089DC data, read by 08201 0816b
  89EC  .byte AA 54 A8 54 A8 00 11 08 0D 07 FF F5 EA D5 AA D5   ; 089EC data, read by 08201 0816b 0818e
  89FC  .byte AA 55 0D 08 FE 54 A8 50 A0 40 80 0D 09 01 01 0D   ; 089FC data, read by 08201 0816b 0818e
  8A0C  .byte 06 7F 3F 1F 0F 07 03 01 00 11 03 7F 3F 1F 1F F0   ; 08A0C data, read by 08201 0818e 0816b
  8A1C  .byte 11 07 0F 55 AA D5 AA D5 EA F5 00 11 08 40 A0 40   ; 08A1C data, read by 08201 0816b 0818e
  8A2C  .byte A0 50 A0 50 11 08 0D 03 03 06 EF DF BF 3E 0D 03   ; 08A2C data, read by 08201 0816b 0818e
  8A3C  .byte 03 07 CF 9F 8F 11 02 0E 1D 3D 7E FE BE FF 80 F1   ; 08A3C data, read by 08201 0816b 0818e
  8A4C  .byte EE DE BF 7F 3F 11 02 03 07 0F 9F BF B7 FF 00 FC   ; 08A4C data, read by 08201 0816b 0818e
  8A5C  .byte FB 77 2F 1F 17 11 02 C0 20 90 D0 C8 C8 FF 00 3F   ; 08A5C data, read by 08201 0816b 0818e
  8A6C  .byte CF E7 E3 F3 F1 11 02 07 0F 1F 3F 7F 67 FF 00 F8   ; 08A6C data, read by 08201 0816b 0818e
  8A7C  .byte F7 EF DF BF A7 11 02 80 40 20 A0 90 90 FF 00 7F   ; 08A7C data, read by 08201 0816b 0818e
  8A8C  .byte 9F CF C7 E7 E3 11 02 01 03 07 0F 1F 1E FF 00 FE   ; 08A8C data, read by 08201 0816b 0818e
  8A9C  .byte FD FB F7 EF EE 11 02 E0 90 C8 E4 F2 72 FF 00 1F   ; 08A9C data, read by 08201 0816b 0818e
  8AAC  .byte E7 F3 F9 FC 7C 11 02 0D 06 FF 00 11 05 7F 11 02   ; 08AAC data, read by 08201 0816b 0818e
  8ABC  .byte 0F 1C 3E 7F FF F9 FF 00 F0 EF DF BF 7F 79 11 02   ; 08ABC data, read by 08201 0816b 0818e
  8ACC  .byte 00 80 40 20 10 10 FF 00 FF 3F 8F C7 E3 63 11 02   ; 08ACC data, read by 08201 0816b 0818e
  8ADC  .byte 00 01 03 07 0F 0F FF 00 FF FE FD FB F7 F7 11 02   ; 08ADC data, read by 08201 0816b 0818e
  8AEC  .byte F0 E8 F4 F2 F1 91 FF 00 0F F3 F8 FC FE 9E 00 FF   ; 08AEC data, read by 08201 0816b
  8AFC  .byte 0D 06 FF 00 11 03 7F 3F 1F 00 FF 07 0C 1E 3F 7F   ; 08AFC data, read by 08201 0816b 0818e
  8B0C  .byte 7E FF 00 F8 F7 EF DF BF BE 0D 02 80 40 20 10 18   ; 08B0C data, read by 08201 0816b 0818e
  8B1C  .byte 18 FF 00 7F 9F C7 E3 E1 60 0D 02 55 AB 57 AF 5F   ; 08B1C data, read by 08201 0816b 0818e
  8B2C  .byte AF FF 00 AA 55 AB 53 A7 57 FF 00 0F 03 01 88 84   ; 08B2C data, read by 08201 0816b
  8B3C  .byte 84 0D 02 E0 F0 F8 F0 F8 E0 FF 00 FC FA F6 F6 6C   ; 08B3C data, read by 08201 0816b 0818e
  8B4C  .byte 68 0D 03 03 07 07 0F 0F FA 00 1F C7 C3 E0 E0 E0   ; 08B4C data, read by 08201 0816b 0818e
  8B5C  .byte 0D 04 20 10 08 18 AA 00 81 71 49 8C 86 84 0D 04   ; 08B5C data, read by 08201 0816b 0818e
  8B6C  .byte 30 70 78 78 0D 03 C0 E0 F7 7B 74 0D 05 07 03 01   ; 08B6C data, read by 08201 0816b 0818e
  8B7C  .byte 0D 07 11 08 00 2A 15 2A 15 2A 55 2A FF D5 EA D5   ; 08B7C data, read by 08201 0816b 0818e
  8B8C  .byte EA D5 AA D5 00 AF 5F AF 5F BF 5F BF FF 50 A0 50   ; 08B8C data, read by 08201 0816b
  8B9C  .byte A0 40 A0 40 00 FE FD FA F5 EA D5 AA FF 0D 08 AA   ; 08B9C data, read by 08201 0816b 0818e
  8BAC  .byte 54 A8 50 A0 40 80 0D 09 24 42 81 00 7E 11 03 3C   ; 08BAC data, read by 08201 0816b 0818e
  8BBC  .byte 7E E7 C3 BD 00 FF 00 11 04 C3 C3 66 0D 02 11 02   ; 08BBC data, read by 08201 0816b 0818e
  8BCC  .byte 0D 02 24 18 3C 80 C0 60 30 18 0C 06 03 C0 60 30   ; 08BCC data, read by 0816b 0818e
  8BDC  .byte 18 0C 06 03 01 01 03 06 0C 18 30 60 C0 03 06 0C   ; 08BDC data, read by 0816b
  8BEC  .byte 18 30 60 C0 80 0D 0F 80 3E 3C D8 08 04 03 0D 02   ; 08BEC data, read by 0816b 0818e
  8BFC  .byte 8F 8F 07 07 03 0D 03 FC FC 58 61 91 0E FF 80 3F   ; 08BFC data, read by 0816b 0818e
  8C0C  .byte 7F BF 9E 2E 70 11 02 BF AF 93 08 04 03 FF 00 17   ; 08C0C data, read by 0816b 0818e
  8C1C  .byte 1F 2F 37 7B FC 11 02 C8 88 90 10 20 C0 FF 00 F1   ; 08C1C data, read by 0816b 0818e
  8C2C  .byte F1 E1 E3 C7 1F 11 02 6F 7F 26 10 08 07 FF 00 A7   ; 08C2C data, read by 0816b 0818e
  8C3C  .byte BF DF EF F7 F8 11 02 10 10 20 20 40 80 11 02 E3   ; 08C3C data, read by 0816b 0818e
  8C4C  .byte E3 C3 C7 8F 1F FF 00 1E 1F 0B 04 02 01 11 02 EE   ; 08C4C data, read by 0816b 0818e
  8C5C  .byte EF F7 FB FD FE FF 00 F2 E2 C4 08 10 E0 11 02 7C   ; 08C5C data, read by 0816b 0818e
  8C6C  .byte FC F8 F0 E1 07 FF 0D 07 11 02 7F 7F 7F 11 04 00   ; 08C6C data, read by 0816b 0818e
  8C7C  .byte FE FF 5F 20 10 0F 11 02 7C 7F BF DF EF F0 FF 00   ; 08C7C data, read by 0816b 0818e
  8C8C  .byte 80 80 0D 04 11 02 E3 E3 C3 87 0F 3F FF 00 0F 0F   ; 08C8C data, read by 0816b 0818e
  8C9C  .byte 07 03 01 00 11 02 F7 F7 FB FD FE 11 02 00 91 E1   ; 08C9C data, read by 0816b 0818e
  8CAC  .byte C2 04 08 F0 11 02 BE FE FC F8 F0 03 FF 0D 07 F6   ; 08CAC data, read by 0816b 0818e
  8CBC  .byte FF 1F 1F 3F 7F 11 03 00 7E 7E 38 10 09 07 00 FF   ; 08CBC data, read by 0816b 0818e
  8CCC  .byte BE BF DF EF F6 F8 FF 00 98 18 30 60 C0 80 0D 02   ; 08CCC data, read by 0816b 0818e
  8CDC  .byte 60 E0 C1 81 03 0F FF 00 AF 5E AE 54 AB 55 0D 02   ; 08CDC data, read by 0816b 0818e
  8CEC  .byte 57 A7 53 AB 54 AA FF 00 8C 0C 18 30 E1 07 FF 00   ; 08CEC data, read by 0816b
  8CFC  .byte E0 F0 E0 C0 0D 04 60 60 70 F4 FB FC FF 00 0F 0F   ; 08CFC data, read by 0816b 0818e
  8D0C  .byte 07 03 0D 04 30 30 60 E3 C3 0F FA 00 C0 C0 80 0D   ; 08D0C data, read by 0816b 0818e
  8D1C  .byte 05 06 0E 1C 78 70 80 A8 00 F8 F0 E0 0D 05 F8 70   ; 08D1C data, read by 0818e 0816b
  8D2C  .byte 77 60 C0 80 0D 02 03 03 0D 06 01 0D 0F 80 0D 1E   ; 08D2C data, read by 0816b 0818e
  8D3C  .byte 01 0D 10 3C 7A E1 C5 C5 D9 42 3C 00 3C 7E 66 66   ; 08D3C data, read by 0816b 0818e
  8D4C  .byte 7E 3C 00 03 06 0C 3C 7A F9 E5 E3 01 03 06 08 3C   ; 08D4C data, read by 0816b
  8D5C  .byte 66 42 42 65 A5 99 42 38 0C 06 03 C2 46 7E 3C 04   ; 08D5C data, read by 0816b
  8D6C  .byte 06 03 01 E7 A7 DD 6A 4C 30 60 C0 42 46 3E 1C 30   ; 08D6C data, read by 0816b
  8D7C  .byte 60 C0 80 80 C0 60 3C 56 BB E5 E7 C0 60 30 00 38   ; 08D7C data, read by 0816b
  8D8C  .byte 64 42 42 0D 06 11 02 0D 05 11 02 00 01 03 06 0C   ; 08D8C data, read by 0816b 0818e
  8D9C  .byte 18 30 E0 C0 03 06 0C 18 30 E0 C0 0D 02 C0 E0 30   ; 08D9C data, read by 0816b 0818e
  8DAC  .byte 18 0C 06 03 C0 E0 30 18 0C 06 03 01 00 11 02 0D   ; 08DAC data, read by 0816b 0818e
  8DBC  .byte 05 11 02 0D 07 03 07 0C 18 30 60 C0 03 07 0C 18   ; 08DBC data, read by 0818e 0816b
  8DCC  .byte 30 60 C0 80 80 C0 60 30 18 0C 07 03 C0 60 30 18   ; 08DCC data, read by 0816b
  8DDC  .byte 0C 07 03 00 FF 80 1F 18 18 18 18 18 11 02 00 07   ; 08DDC data, read by 0816b 0818e
  8DEC  .byte 07 07 07 07 FF FA 11 08 00 11 06 A0 55 AA 55 AA   ; 08DEC data, read by 0816b 0818e
  8DFC  .byte 55 AA 11 02 AA 11 06 00 FF 0D 05 11 02 00 11 05   ; 08DFC data, read by 0816b 0818e
  8E0C  .byte 00 FF 00 AA 55 AA 55 AA FF 0D 02 55 AA 55 AA 55   ; 08E0C data, read by 0816b 0818e
  8E1C  .byte 00 FF 00 11 06 0D 08 FF 00 55 AA 55 AA 55 FF 0D   ; 08E1C data, read by 0816b 0818e
  8E2C  .byte 07 FF 54 0D 0E FF 09 30 30 30 30 30 30 0D 02 08   ; 08E2C data, read by 0818e 0816b
  8E3C  .byte 08 08 08 08 08 18 18 18 18 18 18 18 18 07 07 07   ; 08E3C data, read by 0816b
  8E4C  .byte 07 07 07 07 07 11 10 55 AA 55 AA 55 AA 55 AA 11   ; 08E4C data, read by 0816b 0818e
  8E5C  .byte 08 0D 08 11 08 55 AA 55 AA 55 AA 55 AA AA 55 AA   ; 08E5C data, read by 0818e 0816b
  8E6C  .byte 55 AA 55 AA 55 11 08 0D 08 AA 55 AA 55 AA 55 AA   ; 08E6C data, read by 0816b 0818e
  8E7C  .byte 55 0D 18 30 30 30 30 30 30 30 30 08 08 08 08 08   ; 08E7C data, read by 0816b 0818e
  8E8C  .byte 08 08 08 18 18 18 18 18 18 FF 87 07 07 07 07 07   ; 08E8C data, read by 0816b
  8E9C  .byte 07 11 09 7E 11 05 00 11 02 55 AA 55 AA 55 11 02   ; 08E9C data, read by 0816b 0818e
  8EAC  .byte 00 11 05 00 11 02 0D 05 11 02 00 11 05 00 11 02   ; 08EAC data, read by 0816b 0818e
  8EBC  .byte 55 AA 55 AA 55 11 02 00 AA 55 AA 55 AA 00 11 07   ; 08EBC data, read by 0816b 0818e
  8ECC  .byte 0D 02 FF 0D 06 FF 00 AA 55 AA 55 AA 00 FF 0D 0F   ; 08ECC data, read by 0816b 0818e
  8EDC  .byte FF 0D 09 30 30 30 30 30 08 FF 01 08 08 08 08 08   ; 08EDC data, read by 0816b 0818e
  8EEC  .byte 0D 04 FF 0D 06 FF 0D 0E FF 0D 06 11 02            ; 08EEC data, read by 0816b 0818e
  8EF9  A6 82     LDX $82                       ; 08EF9 ×0
  8EFB  A0 00     LDY #$00                      ; 08EFB ×0
  8EFD  FE DE 04  INC $04DE,X                   ; 08EFD ×0
  8F00  BD DE 04  LDA $04DE,X                   ; 08F00 ×0
  8F03  18        CLC                           ; 08F03 ×0
  8F04  7D 0B 05  ADC $050B,X                   ; 08F04 ×0
  8F07  9D 0B 05  STA $050B,X                   ; 08F07 ×0
  8F0A  BD FC 04  LDA $04FC,X                   ; 08F0A ×0
  8F0D  69 00     ADC #$00                      ; 08F0D ×0
  8F0F  29 03     AND #$03                      ; 08F0F ×0
  8F11  9D FC 04  STA $04FC,X                   ; 08F11 ×0
  8F14  99 00 07  STA $0700,Y                   ; 08F14 ×0
  8F17  C9 02     CMP #$02                      ; 08F17 ×0
  8F19  BD 0B 05  LDA $050B,X                   ; 08F19 ×0
  8F1C  90 0E     BCC $8F2C                     ; 08F1C ×0
  8F1E  B9 00 07  LDA $0700,Y                   ; 08F1E ×0
  8F21  C9 02     CMP #$02                      ; 08F21 ×0
  8F23  D0 D8     BNE $8EFD                     ; 08F23 ×0
  8F25  BD 0B 05  LDA $050B,X                   ; 08F25 ×0
  8F28  C9 D0     CMP #$D0                      ; 08F28 ×0
  8F2A  B0 D1     BCS $8EFD                     ; 08F2A ×0
  8F2C  99 01 07  STA $0701,Y                   ; 08F2C ×0
  8F2F  29 07     AND #$07                      ; 08F2F ×0
  8F31  85 15     STA $15                       ; 08F31 ×0
  8F33  B9 01 07  LDA $0701,Y                   ; 08F33 ×0
  8F36  0A        ASL A                         ; 08F36 ×0
  8F37  29 F0     AND #$F0                      ; 08F37 ×0
  8F39  05 15     ORA $15                       ; 08F39 ×0
  8F3B  99 01 07  STA $0701,Y                   ; 08F3B ×0
  8F3E  B9 00 07  LDA $0700,Y                   ; 08F3E ×0
  8F41  2A        ROL A                         ; 08F41 ×0
  8F42  09 10     ORA #$10                      ; 08F42 ×0
  8F44  99 00 07  STA $0700,Y                   ; 08F44 ×0
  8F47  84 15     STY $15                       ; 08F47 ×0
  8F49  B9 01 07  LDA $0701,Y                   ; 08F49 ×0
  8F4C  18        CLC                           ; 08F4C ×0
  8F4D  69 E9     ADC #$E9                      ; 08F4D ×0
  8F4F  85 19     STA $19                       ; 08F4F ×0
  8F51  B9 00 07  LDA $0700,Y                   ; 08F51 ×0
  8F54  29 0F     AND #$0F                      ; 08F54 ×0
  8F56  69 8F     ADC #$8F                      ; 08F56 ×0
  8F58  85 1A     STA $1A                       ; 08F58 ×0
  8F5A  BD FC 04  LDA $04FC,X                   ; 08F5A ×0
  8F5D  C9 02     CMP #$02                      ; 08F5D ×0
  8F5F  D0 17     BNE $8F78                     ; 08F5F ×0
  8F61  BD 0B 05  LDA $050B,X                   ; 08F61 ×0
  8F64  C9 50     CMP #$50                      ; 08F64 ×0
  8F66  90 10     BCC $8F78                     ; 08F66 ×0
  8F68  B9 01 07  LDA $0701,Y                   ; 08F68 ×0
  8F6B  69 8F     ADC #$8F                      ; 08F6B ×0
  8F6D  99 01 07  STA $0701,Y                   ; 08F6D ×0
  8F70  B9 00 07  LDA $0700,Y                   ; 08F70 ×0
  8F73  69 04     ADC #$04                      ; 08F73 ×0
  8F75  99 00 07  STA $0700,Y                   ; 08F75 ×0
  8F78  B9 01 07  LDA $0701,Y                   ; 08F78 ×0
  8F7B  18        CLC                           ; 08F7B ×0
  8F7C  69 8B     ADC #$8B                      ; 08F7C ×0
  8F7E  85 1B     STA $1B                       ; 08F7E ×0
  8F80  B9 00 07  LDA $0700,Y                   ; 08F80 ×0
  8F83  29 0F     AND #$0F                      ; 08F83 ×0
  8F85  69 95     ADC #$95                      ; 08F85 ×0
  8F87  85 1C     STA $1C                       ; 08F87 ×0
  8F89  A0 08     LDY #$08                      ; 08F89 ×0
  8F8B  BD ED 04  LDA $04ED,X                   ; 08F8B ×0
  8F8E  A2 00     LDX #$00                      ; 08F8E ×0
  8F90  C9 20     CMP #$20                      ; 08F90 ×0
  8F92  90 0B     BCC $8F9F                     ; 08F92 ×0
  8F94  E8        INX                           ; 08F94 ×0
  8F95  C9 40     CMP #$40                      ; 08F95 ×0
  8F97  90 06     BCC $8F9F                     ; 08F97 ×0
  8F99  E8        INX                           ; 08F99 ×0
  8F9A  C9 68     CMP #$68                      ; 08F9A ×0
  8F9C  90 01     BCC $8F9F                     ; 08F9C ×0
  8F9E  E8        INX                           ; 08F9E ×0
  8F9F  B1 1B     LDA ($1B),Y                   ; 08F9F ×0
  8FA1  3D D9 8F  AND $8FD9,X                   ; 08FA1 ×0
  8FA4  85 16     STA $16                       ; 08FA4 ×0
  8FA6  B1 19     LDA ($19),Y                   ; 08FA6 ×0
  8FA8  3D DD 8F  AND $8FDD,X                   ; 08FA8 ×0
  8FAB  05 16     ORA $16                       ; 08FAB ×0
  8FAD  48        PHA                           ; 08FAD ×0
  8FAE  A0 00     LDY #$00                      ; 08FAE ×0
  8FB0  B1 1B     LDA ($1B),Y                   ; 08FB0 ×0
  8FB2  3D E1 8F  AND $8FE1,X                   ; 08FB2 ×0
  8FB5  85 16     STA $16                       ; 08FB5 ×0
  8FB7  B1 19     LDA ($19),Y                   ; 08FB7 ×0
  8FB9  3D E5 8F  AND $8FE5,X                   ; 08FB9 ×0
  8FBC  05 16     ORA $16                       ; 08FBC ×0
  8FBE  A4 15     LDY $15                       ; 08FBE ×0
  8FC0  99 02 07  STA $0702,Y                   ; 08FC0 ×0
  8FC3  68        PLA                           ; 08FC3 ×0
  8FC4  99 03 07  STA $0703,Y                   ; 08FC4 ×0
  8FC7  A6 82     LDX $82                       ; 08FC7 ×0
  8FC9  C8        INY                           ; 08FC9 ×0
  8FCA  C8        INY                           ; 08FCA ×0
  8FCB  C8        INY                           ; 08FCB ×0
  8FCC  C8        INY                           ; 08FCC ×0
  8FCD  C0 28     CPY #$28                      ; 08FCD ×0
  8FCF  F0 03     BEQ $8FD4                     ; 08FCF ×0
  8FD1  4C FD 8E  JMP $8EFD                     ; 08FD1 ×0
  8FD4  A9 80     LDA #$80                      ; 08FD4 ×0
  8FD6  85 CC     STA $CC                       ; 08FD6 ×0
  8FD8  60        RTS                           ; 08FD8 ×0
  8FD9  .byte BE 9A 12 00 41 65 ED FF DB D1 11 00 24 2E EE FF   ; 08FD9 data, read by 0816b 0818e
  8FE9  .byte 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 08FE9 data, read by 0816b
  8FF9  .byte 00 00 00 00 08 10 08 08 00 00 00 00 00 08 10 10   ; 08FF9 data, read by 0816b
  9009  .byte 00 00 00 00 00 00 04 40 00 00 00 00 00 00 00 00   ; 09009 data, read by 0816b
  9019  .byte 00 00 00 00 00 00 40 20 00 00 00 00 00 00 20 10   ; 09019 data, read by 0816b
  9029  .byte 00 00 00 00 10 10 18 18 00 00 00 00 00 00 20 20   ; 09029 data, read by 0816b
  9039  .byte 00 00 00 00 00 00 00 41 00 00 00 00 00 00 00 00   ; 09039 data, read by 0816b
  9049  .byte 18 20 14 20 10 07 17 02 20 18 28 1C 0F 1F 0F 0F   ; 09049 data, read by 0816b
  9059  .byte A0 A4 90 10 A0 20 40 44 40 40 64 E0 C2 C2 81 81   ; 09059 data, read by 0816b
  9069  .byte 20 20 40 40 80 80 80 00 10 18 38 30 70 60 60 60   ; 09069 data, read by 0816b
  9079  .byte 00 00 00 00 00 00 00 04 00 00 00 08 08 04 04 02   ; 09079 data, read by 0816b
  9089  .byte 08 08 0C 04 04 02 02 02 30 30 30 38 18 1C 1C 1C   ; 09089 data, read by 0816b
  9099  .byte 42 62 61 21 31 32 32 35 01 01 00 00 00 01 01 02   ; 09099 data, read by 0816b
  90A9  .byte 8A 48 49 29 49 49 88 0C 07 87 86 C6 86 86 07 03   ; 090A9 data, read by 0816b
  90B9  .byte 80 80 00 04 01 01 A2 F2 05 04 04 00 00 02 01 21   ; 090B9 data, read by 0816b
  90C9  .byte 04 06 C7 87 43 43 43 45 20 00 02 02 01 81 81 83   ; 090C9 data, read by 0816b
  90D9  .byte 00 00 08 08 90 90 58 48 00 00 00 00 00 00 80 80   ; 090D9 data, read by 0816b
  90E9  .byte 04 02 02 82 82 C4 C4 44 02 01 01 01 01 83 C3 43   ; 090E9 data, read by 0816b
  90F9  .byte 00 00 00 00 00 01 01 01 00 00 00 00 80 80 80 00   ; 090F9 data, read by 0816b
  9109  .byte 02 00 80 80 80 C0 C0 E1 0C 0C 08 08 00 00 00 00   ; 09109 data, read by 0816b
  9119  .byte 32 F3 75 F5 F5 F5 B5 B4 00 00 02 02 02 42 42 63   ; 09119 data, read by 0816b
  9129  .byte 2C 2F 26 07 17 17 95 95 03 00 00 00 00 00 03 03   ; 09129 data, read by 0816b
  9139  .byte F2 72 E2 EA EA C9 C5 C5 21 21 41 41 C1 80 80 80   ; 09139 data, read by 0816b
  9149  .byte 45 65 5A 43 65 7A 7A 2C 83 83 A7 BE BE BC BC D8   ; 09149 data, read by 0816b
  9159  .byte 49 8D 9B 15 36 23 27 25 81 01 13 13 37 27 2E 2C   ; 09159 data, read by 0816b
  9169  .byte 08 08 88 90 10 90 90 D0 07 06 86 8C 0C 08 08 08   ; 09169 data, read by 0816b
  9179  .byte 01 03 03 03 83 83 83 C3 00 00 00 00 80 80 80 C0   ; 09179 data, read by 0816b
  9189  .byte E1 F1 F1 31 12 13 45 47 00 00 00 00 01 01 03 03   ; 09189 data, read by 0816b
  9199  .byte B4 F2 62 E2 E1 F1 F0 70 63 61 E1 E1 C0 C0 80 80   ; 09199 data, read by 0816b
  91A9  .byte 95 45 A5 91 54 6A AA B6 03 83 C3 E3 E3 F1 71 79   ; 091A9 data, read by 0816b
  91B9  .byte C5 C5 E2 E5 FA F5 FA F5 80 80 C1 C3 E7 FF FF FE   ; 091B9 data, read by 0816b
  91C9  .byte 2C AC AC 1E 9E 9D DD DD D8 D8 D8 EC EC EE EE EE   ; 091C9 data, read by 0816b
  91D9  .byte 0C 08 28 60 60 60 70 38 0C 28 28 60 70 70 78 3C   ; 091D9 data, read by 0816b
  91E9  .byte D0 C0 E0 EF E4 E2 E2 C2 08 08 00 00 03 01 01 01   ; 091E9 data, read by 0816b
  91F9  .byte 21 21 31 30 98 58 58 3C 20 30 30 38 1C 9C 9C DE   ; 091F9 data, read by 0816b
  9209  .byte 47 47 62 62 72 70 78 38 03 03 03 02 02 00 00 00   ; 09209 data, read by 0816b
  9219  .byte 68 F8 D8 DC 5E 5E 5F 6F 90 10 30 30 30 38 3C 1F   ; 09219 data, read by 0816b
  9229  .byte B5 55 55 55 AD E8 E8 C8 78 38 38 38 70 71 F1 F1   ; 09229 data, read by 0816b
  9239  .byte 7B 7F 7F BF BD BF BD DE FC FC FC 7E 7E 7E 7F 2F   ; 09239 data, read by 0816b
  9249  .byte DC CE EC EC EC E8 E8 E8 EF 6F 37 37 36 36 36 74   ; 09249 data, read by 0816b
  9259  .byte 39 1C 0E 1F 1F 1F 1F 3F 3E 1F 0F 0F 07 07 03 03   ; 09259 data, read by 0816b
  9269  .byte D1 D1 49 4A 12 12 14 14 00 00 88 89 91 91 93 13   ; 09269 data, read by 0816b
  9279  .byte 2C 2C 2C 2C 4C 5C 5C 5C CE CE CE CE 8E 9E 9E 9E   ; 09279 data, read by 0816b
  9289  .byte 2C 2C 2C E4 D4 D4 D4 54 10 10 10 18 38 38 38 B8   ; 09289 data, read by 0816b
  9299  .byte 6F 67 77 7B FF FE FE FA 1F 1F 0F 07 03 03 03 07   ; 09299 data, read by 0816b
  92A9  .byte D0 90 A0 21 41 41 81 81 E3 E3 C3 C6 86 8E 0E 0E   ; 092A9 data, read by 0816b
  92B9  .byte DD DF DD DF BD BE BF 7E 2F 2E 2E 2E 1F 1F 1F 3F   ; 092B9 data, read by 0816b
  92C9  .byte C8 D0 10 10 20 20 20 40 74 6C E8 E8 D8 DC DC BE   ; 092C9 data, read by 0816b
  92D9  .byte 3F 3F 3E 3E 3E 1E 1E 3F 03 07 06 0E 1C 3C 38 78   ; 092D9 data, read by 0816b
  92E9  .byte 38 38 38 3F 3F 3F 3F 3F 37 3F 3F 3F 3F 1F 1F 1F   ; 092E9 data, read by 0816b
  92F9  .byte B8 F8 F0 F1 F3 E7 E5 C0 3E 7C FC F8 F0 E0 E2 CF   ; 092F9 data, read by 0816b
  9309  .byte 56 56 56 5B AB AB 3B 9B B8 B8 B8 BC DC DC DC FC   ; 09309 data, read by 0816b
  9319  .byte FA F6 F6 6E 6F AF AF EF 07 0F 0F 1F 1F 1F 1F 1F   ; 09319 data, read by 0816b
  9329  .byte 80 C0 C1 63 7F 3F BF BC 1F 1E 1E 9C 80 C0 C1 C3   ; 09329 data, read by 0816b
  9339  .byte 7E FE FC BC 78 F8 78 F8 3F 3F 7F 7F FF FF FF FF   ; 09339 data, read by 0816b
  9349  .byte 68 74 7A 7D FE 7D FF 7F 97 8B 85 82 C1 C2 C0 E0   ; 09349 data, read by 0816b
  9359  .byte 7F 7B 79 F8 FC FC FE FF F8 FC FE 7F 7F FF FF FF   ; 09359 data, read by 0816b
  9369  .byte 3F BF BF BF 7F 7F 3F 3F 1F 0F 0F 0F 87 87 C7 C3   ; 09369 data, read by 0816b
  9379  .byte C0 D8 9D BA BD BE BD BE DF FF FF FF FF FF FF FF   ; 09379 data, read by 0816b
  9389  .byte 77 B7 6F EF F7 FB FC FF F8 F8 F0 F0 F8 FC FF FF   ; 09389 data, read by 0816b
  9399  .byte EB EB DB D9 B8 78 FC FC 1F 1F 3F 3F 7F FF FF FF   ; 09399 data, read by 0816b
  93A9  .byte 9D DA D9 CB E9 EB 69 63 E3 E7 E7 F7 F7 F7 F7 FF   ; 093A9 data, read by 0816b
  93B9  .byte F0 F8 F0 F8 F0 F8 F8 FC FF FF FF FF FF FF FF FF   ; 093B9 data, read by 0816b
  93C9  .byte FF 7F                                             ; 093C9 data, read by 0816b
  93CB  .byte FF 7F BF 5F 3F 5F E1 E3 FF FF FF FF FF FF FF FF   ; 093CB
  93DB  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF BF BF   ; 093DB
  93EB  .byte 9F 8D 81 01 3F 7F C3 C3 E3 F3 FF FF FF FF BF BF   ; 093EB
  93FB  .byte BF DF DF DF FF FF FF FF FF FF FF FF FF FF FF FF   ; 093FB
  940B  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FC FC   ; 0940B
  941B  .byte FD FD FF FF FF FF FF FF FF FF FF FF FF FF 31 33   ; 0941B
  942B  .byte B3 3B BB FF FF FF FF FF FF FF FF FF FF FF FC FE   ; 0942B
  943B  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF 2F 17   ; 0943B
  944B  .byte 2F 95 FF FF FF FF FF FF FF FF FF FF FF FF 7F FF   ; 0944B
  945B  .byte 7F FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 0945B
  946B  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 0946B
  947B  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF F8   ; 0947B
  948B  .byte F7 EE DC DC BE BE FF FF F8 F1 E0 E0 C0 C0 FD FE   ; 0948B
  949B  .byte 3E 1F 1F 0F 0F 0E FF FF FF 3F 3F 1F 1F 1F FF CF   ; 0949B
  94AB  .byte 43 65 72 72 72 7A FF FF 8F 83 81 81 81 81 FF AF   ; 094AB
  94BB  .byte 67 43 C3 C3 C3 C1 FF DF 9F BF 3F 27 27 23 AE A7   ; 094BB
  94CB  .byte 43 41 40 A0 A0 A0 D0 C8 84 82 81 C0 C0 C0 0E 0E   ; 094CB
  94DB  .byte 0C 8C 9C 98 18 98 0F 0F 0E 0E 1E 1C 9C 1C 3A 3A   ; 094DB
  94EB  .byte 1A 1A 14 14 04 05 C1 41 21 21 23 23 23 23 E1 F1   ; 094EB
  94FB  .byte 39 19 0C 0C 0C 18 13 0B 41 25 10 10 10 20 50 50   ; 094FB
  950B  .byte 51 11 11 22 22 22 60 61 62 26 26 04 0C 0C B0 B0   ; 0950B
  951B  .byte B0 30 32 11 19 09 38 38 38 38 38 1A 1E 0E 07 0A   ; 0951B
  952B  .byte 14 25 11 23 23 22 03 07 0F 18 20 40 40 40 B8 D0   ; 0952B
  953B  .byte 80 40 20 10 10 10 C0 E0 60 30 10 00 00 00 42 41   ; 0953B
  954B  .byte 01 00 00 00 00 00 0C 06 02 01 00 00 00 00 01 01   ; 0954B
  955B  .byte 01 01 01 02 02 04 06 02 02 02 06 04 04 08 22 12   ; 0955B
  956B  .byte 11 10 10 08 04 00 40 60 60 60 20 10 00 00 00 04   ; 0956B
  957B  .byte 00 02 80 04 00 00 04 02 02 00 00 00 00 00         ; 0957B
  9589  .byte 14 24 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 09589 data, read by 0812b 08130 0816b
  9599  .byte 00 00 14 07 01 14 0B 10 38 70 F0 F0 14 04 10 20   ; 09599 data, read by 0816b 0818e
  95A9  .byte 60 C0 14 04 04 0E 1E 3E 14 05 04 08 18 14 06 01   ; 095A9 data, read by 0816b 0818e
  95B9  .byte 03 14 07 01 14 04 40 E0 A0 C0 14 05 40 C0 80 03   ; 095B9 data, read by 0816b 0818e
  95C9  .byte 07 07 09 08 10 10 20 01 03 03 07 07 0E 0E 1C F0   ; 095C9 data, read by 0816b
  95D9  .byte F0 E0 E1 23 27 4F 5F C0 80 80 00 01 03 07 0F 7E   ; 095D9 data, read by 0816b
  95E9  .byte 7C FC FC F8 F8 F8 F0 30 30 60 E0 C0 C0 80 80 03   ; 095E9 data, read by 0816b
  95F9  .byte 07 0F 1F 3F 5F 9E 8E 01 02 04 0C 18 38 70 70 07   ; 095F9 data, read by 0816b
  9609  .byte 0F 1F 3F 7F 5F 9F 9F 03 06 0E 1C 3C 38 78 70 C0   ; 09609 data, read by 0816b
  9619  .byte C0 C1 83 87 8F 1F 3F 14 03 01 02 04 0C 18 20 C0   ; 09619 data, read by 0816b 0818e
  9629  .byte C1 C1 82 87 0F 1E 1C 38 B8 30 70 62 E4 C9 AF C7   ; 09629 data, read by 0816b
  9639  .byte 47 82 80 00 04 0F 1F 3F 3E 7E 7C F8 F8 F4 F1 F3   ; 09639 data, read by 0816b
  9649  .byte E7 4F 5F BF DF 9F 00 01 03 06 0C 1C 38 78 C1 C1   ; 09649 data, read by 0816b
  9659  .byte C2 83 83 87 0F 1F 14 02 01 00 01 03 06 0E 03 07   ; 09659 data, read by 0816b 0818e
  9669  .byte 8F DF FE FE FC FC E0 E2 44 88 18 30 60 60 14 10   ; 09669 data, read by 0816b 0818e
  9679  .byte 07 02 02 05 05 0A 1E 3C E0 C0 C0 80 80 01 09 13   ; 09679 data, read by 0816b
  9689  .byte 7F 9E 9F 06 06 04 0D 0F 38 71 70 C1 C1 83 82 00   ; 09689 data, read by 0816b
  9699  .byte 3E 7C FC FC 7D 79 0D 94 D9 B3 73 E3 E3 C7 C3 4B   ; 09699 data, read by 0816b
  96A9  .byte 1F 3F 7F FE FE FC FD FF E8 D8 B0 71 E1 E3 C2 C1   ; 096A9 data, read by 0816b
  96B9  .byte 8E 0A 1C 3C 7D FD FE FA 70 F0 E8 D0 B0 60 E1 C1   ; 096B9 data, read by 0816b
  96C9  .byte 3F 7F BF 9F 1F 0D 01 02 1C 3C 78 78 F8 F0 E0 E0   ; 096C9 data, read by 0816b
  96D9  .byte FC F9 FB 97 AF 3F 7F 7F 40 40 01 02 04 0C 18 38   ; 096D9 data, read by 0816b
  96E9  .byte 01 01 82 82 04 04 08 08 14 02 01 01 03 03 07 06   ; 096E9 data, read by 0816b 0818e
  96F9  .byte 7C F8 F8 F0 F1 E3 EF DF 23 66 C6 8C 88 19 13 2F   ; 096F9 data, read by 0816b
  9709  .byte 1F 1F 3F FF FE FE FE FD 06 0C 18 30 F0 E0 C0 C0   ; 09709 data, read by 0816b
  9719  .byte 98 A8 30 50 60 A0 C0 41 07 17 0F 2F 1E 5E 3C BC   ; 09719 data, read by 0816b
  9729  .byte FF 0F 1F 3F 7F BF BF 1F 83 87 0F 1F 3F 7E 7E FC   ; 09729 data, read by 0816b
  9739  .byte FC FC F8 F8 F1 F3 FF F7 C3 83 87 07 0E 0D 03 0F   ; 09739 data, read by 0816b
  9749  .byte 12 3D 7D FA FA F4 F4 FB C0 D0 A0 61 C1 83 83 05   ; 09749 data, read by 0816b
  9759  .byte FF 3E 3E 1E 04 04 08 88 70 F0 E0 E0 E0 C0 C0 00   ; 09759 data, read by 0816b
  9769  .byte 10 10 21 23 47 4F DF FF 0E 0C 1C 19 3B 37 2F 4E   ; 09769 data, read by 0816b
  9779  .byte FF DF CF 8F 87 87 14 02 1F 3F 3F 7E 7C FC F8 F8   ; 09779 data, read by 0816b 0818e
  9789  .byte FD FA FB FD F6 FF 7F 1F 80 01 00 02 01 02 04 0C   ; 09789 data, read by 0816b
  9799  .byte 81 82 02 04 04 08 08 10 78 79 F1 F3 E3 E7 C7 CF   ; 09799 data, read by 0816b
  97A9  .byte 1F 0F 0C 14 03 01 01 FC F8 F8 E0 E0 C0 C0 80 F7   ; 097A9 data, read by 0816b 0818e
  97B9  .byte 23 63 40 C0 80 81 03 0F 1E 1E 3C 3C 78 78 F1 EF   ; 097B9 data, read by 0816b
  97C9  .byte 24 03 7F FF FE FE 02 06 0C 1C 38 78 F8 F0 91 93   ; 097C9 data, read by 0816b 0818e
  97D9  .byte 27 2F 5F 7F CF CF 00 01 03 07 0F 1E 3E 3C E7 E7   ; 097D9 data, read by 0816b
  97E9  .byte C7 C1 C0 C1 81 82 9C 9C 30 30 20 20 40 41 14 03   ; 097E9 data, read by 0816b 0818e
  97F9  .byte 01 03 07 0F 1F F0 F0 E0 E0 C1 C3 87 8F 3F 7F FF   ; 097F9 data, read by 0816b
  9809  .byte FE FE FE FE FF 1C 38 78 F8 F0 F0 E0 E0 10 20 20   ; 09809 data, read by 0816b
  9819  .byte 40 40 80 A0 70 8F 9F 1F 3E 3E 7C 5C A8 03 02 06   ; 09819 data, read by 0816b
  9829  .byte 06 0F 1F 7F FF 80 01 01 01 04 0C 18 78 07 1F 3F   ; 09829 data, read by 0816b
  9839  .byte 2F 47 43 81 80 F3 E7 DF DF BF BF 7F 7F 24 03 FD   ; 09839 data, read by 0816b 0818e
  9849  .byte FE FE FD FD F0 E0 E0 C0 C1 C1 82 83 87 87 01 21   ; 09849 data, read by 0816b
  9859  .byte 72 F2 F4 F4 7C 78 F0 D0 A0 60 C0 C0 82 84 04 08   ; 09859 data, read by 0816b
  9869  .byte 08 10 10 20 01 03 03 07 07 0F 0F 1F 2F 27 47 43   ; 09869 data, read by 0816b
  9879  .byte 83 81 01 00 1F 1F 3F 3F 7F 7F FF FE FF FD 24 05   ; 09879 data, read by 0816b 0818e
  9889  .byte 7F E0 C2 C1 83 87 0F 1E 3E F1 F3 24 03 DF 8F 8F   ; 09889 data, read by 0816b 0818e
  9899  .byte 48 C1 83 8F 1F 3F 7F 7F 24 02 FE FE FE FE FE FC   ; 09899 data, read by 0816b 0818e
  98A9  .byte F0 F0 E1 E1 C1 C1 81 83 14 04 20 70 79 F9 24 03   ; 098A9 data, read by 0816b 0818e
  98B9  .byte FE DF AC A4 60 67 0F 1F 3F 7F FF 7F 3F 83 07 0F   ; 098B9 data, read by 0816b
  98C9  .byte 1F 3F 7F FE FE F8 F8 F0 F0 F0 E1 E3 EF C0 80 80   ; 098C9 data, read by 0816b
  98D9  .byte 14 03 01 03 20 4E 5E 7E FE FC FC FC 1F 35 28 10   ; 098D9 data, read by 0816b 0818e
  98E9  .byte 70 E0 C0 C0 00 01 02 02 04 04 08 08 FE FC FD F9   ; 098E9 data, read by 0816b
  98F9  .byte FB F3 F7 E7 24 02 FE FE 7C 7C 38 38 7C FC F9 F9   ; 098F9 data, read by 0816b 0818e
  9909  .byte F3 F3 E7 E7 07 07 03 03 14 04 24 02 FE FE F8 F8   ; 09909 data, read by 0816b 0818e
  9919  .byte F0 F0 FD FF EF 07 1F 3F 7F FF 02 01 03 0F 0F 1F   ; 09919 data, read by 0816b
  9929  .byte 3F 7F FA FA FC FC F8 F8 F8 F8 E1 E1 E3 C3 C7 C7   ; 09929 data, read by 0816b
  9939  .byte C7 87 3F 1F 1F 0F 0F 14 03 FC FC F8 F8 F0 E0 E0   ; 09939 data, read by 0816b 0818e
  9949  .byte C0 24 04 3F 7F 7F FF 0F 1F 1F 1E 1C 3C 38 70 FC   ; 09949 data, read by 0816b 0818e
  9959  .byte F8 F8 F8 F8 F0 F0 F0 81 01 03 03 07 07 0F 0F 10   ; 09959 data, read by 0816b
  9969  .byte 10 20 20 40 60 F8 FF EF CF DF 9F BF 3F 7E FF 10   ; 09969 data, read by 0816b
  9979  .byte 10 20 20 60 78 FE FF CF CF 9F 9F 3F 7F 24 02 01   ; 09979 data, read by 0816b 0818e
  9989  .byte 01 02 02 04 10 3C FF E0 E0 C1 C1 83 97 3F FF 7F   ; 09989 data, read by 0816b
  9999  .byte 3F 1F 0F 07 83 F1 24 09 F8 F8 F8 E8 CC 9C 7E FF   ; 09999 data, read by 0816b 0818e
  99A9  .byte 87 87 87 87 07 1E 7E FF 00 01 01 02 06 1E 7F FF   ; 099A9 data, read by 0816b
  99B9  .byte C0 80 80 01 05 1F 7F 24 02 3F 14 03 03 1F FF 70   ; 099B9 data, read by 0816b 0818e
  99C9  .byte E0 C0 C0 80 83 1F FF E0 E0 C0 C0 C0 F1 FD FF 1F   ; 099C9 data, read by 0816b
  99D9  .byte 1F 3F 3F FF FE FE FF F8 80 07 1F 24 04 C0 14 07   ; 099D9 data, read by 0816b 0818e
  99E9  .byte E0 14 02 0A 55 AA 24 02 E0 14 07 0F 02 00 54 AA   ; 099E9 data, read by 0816b 0818e
  99F9  .byte 55 24 02 0F 02 14 06 1E 04 80 40 A8 54 AA FD 1E   ; 099F9 data, read by 0816b 0818e
  9A09  .byte 04 14 06 F4 14 02 54 AA 55 FA FF F4 14 07 03 80   ; 09A09 data, read by 0816b 0818e
  9A19  .byte 54 AA 55 FA 24 02 03 14 07 FF 07 01 80 50 AA D5   ; 09A19 data, read by 0816b 0818e
  9A29  .byte EA FF 3F 07 01 14 04 24 04 7D 3A 10 00 24 03 7F   ; 09A29 data, read by 0816b 0818e
  9A39  .byte 3F 1F 0F 0F 24 04 7D AA 11 00 24 08 14 06 82 00   ; 09A39 data, read by 0816b 0818e
  9A49  .byte 24 05 AB 40 00 02 04 08 11 22 45 4A 85 FC F8 F0   ; 09A49 data, read by 0816b 0818e
  9A59  .byte E0 C0 80 80 00 1F 3F 7F 24 05 14 08 24 08 14 08   ; 09A59 data, read by 0816b 0818e
  9A69  .byte FE F8 C1 C8 F5 24 03 14 08 FF 0F 15 AF 7F 24 03   ; 09A69 data, read by 0816b 0818e
  9A79  .byte 14 08 04 14 08 41 AA D5 24 04 00 50 14 06 80 00   ; 09A79 data, read by 0816b 0818e
  9A89  .byte AA 24 0D 14 08 EA F5 FA FD FE FD FE FD 14 08 18   ; 09A89 data, read by 0816b 0818e
  9A99  .byte 84 42 A2 41 A1 41 A0 07 03 01 01 14 08 82 15 44   ; 09A99 data, read by 0816b 0818e
  9AA9  .byte 00 24 04 7D AA 10 00 05 0B 05 0B 07 07 03 07 01   ; 09AA9 data, read by 0816b 0818e
  9AB9  .byte 01 05 01 03 01 01 03 24 08 80 C0 40 A0 C0 E0 D0   ; 09AB9 data, read by 0816b 0818e
  9AC9  .byte E8 FE FD FE FD FA D5 AA 55 14 08 A0 40 A0 40 80   ; 09AC9 data, read by 0816b 0818e
  9AD9  .byte 40 80 14 05 06 07 07 07 07 0B 07 0B 07 83 03 03   ; 09AD9 data, read by 0816b 0818e
  9AE9  .byte 03 03 03 03 03 01 80 C0 24 08 F8 FC FA FD FA F5   ; 09AE9 data, read by 0816b 0818e
  9AF9  .byte FA F4 24 08 14 02 80 00 80 40 A0 40 EA F4 EA D4   ; 09AF9 data, read by 0816b 0818e
  9B09  .byte A8 D0 A0 40 14 08 20 40 80 14 05 07 07 07 07 07   ; 09B09 data, read by 0816b 0818e
  9B19  .byte 0F 0F 0F 02 01 02 01 01 14 03 80 C0 A0 C0 A0 D0   ; 09B19 data, read by 0816b 0818e
  9B29  .byte E8 F4 24 04 7F 7F 3F 3F 24 02 7F 3F 3F 1F 1F 0F   ; 09B29 data, read by 0816b 0818e
  9B39  .byte E8 D0 A0 50 A0 40 A0 40 14 08 20 40 20 40 20 40   ; 09B39 data, read by 0816b 0818e
  9B49  .byte 80 00 0F 0F 0F 0F 0F 0F 1F 3F 24 05 AA 55 EA 24   ; 09B49 data, read by 0816b 0818e
  9B59  .byte 08 3F 3F 3F 1F 1F 0F 14 02 1F 1F 0F 0F 07 01 00   ; 09B59 data, read by 0818e 0816b
  9B69  .byte 03 24 03 FE 7C 30 00 20 FA FD FE FC 70 20 87 C7   ; 09B69 data, read by 0816b 0818e
  9B79  .byte 24 06 0E 91 40 A0 54 AA 55 AB 0E 81 24 05 CF 1E   ; 09B79 data, read by 0816b 0818e
  9B89  .byte 00 15 2A 55 BA 7D CB 1E 00 24 06 FE C0 01 02 15   ; 09B89 data, read by 0816b 0818e
  9B99  .byte AA 55 AB 7E C0 24 05 FC E1 07 00 02 15 AA 57 BC   ; 09B99 data, read by 0816b 0818e
  9BA9  .byte E0 00 24 05 7F 3C 01 00 C0 A0 D5 AA 57 3C 00 24   ; 09BA9 data, read by 0816b 0818e
  9BB9  .byte 02 7F 7F 3F 9F C4 F0 00 A8 55 6A 35 1B 04 00 FF   ; 09BB9 data, read by 0818e 0816b
  9BC9  .byte FE FC FC FC F8 F1 01 01 0A 54 AC 54 A8 F0 00 FE   ; 09BC9 data, read by 0816b
  9BD9  .byte FD FA 75 6A 15 0A 14 09 A0 40 80 14 0B 01 03 14   ; 09BD9 data, read by 0816b 0818e
  9BE9  .byte 08 3F 3F 7F 24 05 FD F8 F0 C0 81 03 0F 1F FE FC   ; 09BE9 data, read by 0818e 0816b
  9BF9  .byte F8 F0 C0 80 14 02 70 BC 1A 1C 0E 0F 02 00 CF A3   ; 09BF9 data, read by 0816b 0818e
  9C09  .byte 15 13 89 48 A1 00 C0 E8 DD BC 0D 1E 0F 16 00 20   ; 09C09 data, read by 0816b
  9C19  .byte 38 78 F8 FC FC FC 40 BC BF BF BF 24 03 F8 60 60   ; 09C19 data, read by 0816b 0818e
  9C29  .byte 60 60 20 20 20 00 38 F4 F8 F4 E8 F1 E9 01 07 0B   ; 09C29 data, read by 0816b
  9C39  .byte 07 0B 17 0F 17 7F FF DF DF DF DF DF DF C0 C0 E0   ; 09C39 data, read by 0816b
  9C49  .byte E0 E0 E0 E0 E1 D8 D4 D8 D4 D8 DC DA DC 60 60 E0   ; 09C49 data, read by 0816b
  9C59  .byte E0 E0 E0 E0 E0 5F 5F 5F 5F 7F 7F 7F 3F 30 30 30   ; 09C59 data, read by 0816b
  9C69  .byte 30 10 10 10 10 7F FC FC FC FC F8 F9 F8 C0 C0 80   ; 09C69 data, read by 0816b
  9C79  .byte 80 80 C0 40 40 DE 3C 7A B4 79 F0 69 E3 0F 1F 1F   ; 09C79 data, read by 0816b
  9C89  .byte 1F 3E 3F 3E 7C 44 A8 51 A2 44 80 00 A0 80 42 84   ; 09C89 data, read by 0816b
  9C99  .byte 08 90 08 11 03 14 08 0F 1F 3F 3F 7F 24 03 14 08   ; 09C99 data, read by 0816b 0818e
  9CA9  .byte 24 08 14 08 24 08 16 E6 06 06 02 01 14 02 F4 E4   ; 09CA9 data, read by 0816b 0818e
  9CB9  .byte 04 04 02 01 40 AA 7F FF 7F FF 7F FF 0F 00 20 20   ; 09CB9 data, read by 0816b
  9CC9  .byte 20 00 20 F0 0F 00 F1 E9 F1 E9 F3 EC F8 00 0F 17   ; 09CC9 data, read by 0816b
  9CD9  .byte 0F 17 0F 1C F8 01 DF DF DF DF DF 7E 0C 00 E1 E1   ; 09CD9 data, read by 0816b
  9CE9  .byte E1 E1 E1 F2 0C 00 DA DC CE ED EE 6D 16 00 E0 E0   ; 09CE9 data, read by 0816b
  9CF9  .byte F0 F0 F0 70 18 00 3F 3B 39 3A 3D 3A 79 00 10 18   ; 09CF9 data, read by 0816b
  9D09  .byte 08 08 08 08 78 00 F9 B2 B1 B3 B3 BF FC 00 40 40   ; 09D09 data, read by 0816b
  9D19  .byte 40 41 41 42 FC 00 E5 D3 C6 FF AA 54 A0 00 7A 7C   ; 09D19 data, read by 0816b
  9D29  .byte F8 BF 55 A8 50 02 14 08 03 07 0F 1F 3F 7F 7F FF   ; 09D29 data, read by 0816b 0818e
  9D39  .byte 14 08 24 08 14 08 E8 F4 FA FD FA FD FE FF 14 08   ; 09D39 data, read by 0816b 0818e
  9D49  .byte 90 A0 D0 E8 F4 FA FD FE 3F CF 17 17 27 22 47 7F   ; 09D49 data, read by 0816b
  9D59  .byte 03 03 0B 0A 1A 1D 3F 3F F9 E1 C3 83 07 07 8B CB   ; 09D59 data, read by 0816b
  9D69  .byte 80 00 01 21 82 80 04 04 FE 24 03 F3 E7 8F 0F C0   ; 09D69 data, read by 0816b 0818e
  9D79  .byte 80 14 06 E1 E6 FC F8 F8 E0 C0 80 00 01 03 07 06   ; 09D79 data, read by 0816b 0818e
  9D89  .byte 1E 3C 7C 24 05 FE FC FC 3E 3E 3C 3C 38 30 30 20   ; 09D89 data, read by 0816b 0818e
  9D99  .byte F0 F0 E0 A0 40 40 80 F8 0F 0E 1E 1C 3C 38 78 70   ; 09D99 data, read by 0816b
  9DA9  .byte 16 11 21 23 43 43 83 83 09 0C 1C 19 39 31 71 65   ; 09DA9 data, read by 0816b
  9DB9  .byte 80 00 01 E1 F3 F3 24 02 78 F8 70 D0 C0 C0 80 80   ; 09DB9 data, read by 0816b 0818e
  9DC9  .byte 35 09 09 11 93 E3 C3 83 14 04 01 01 01 01 FD 24   ; 09DC9 data, read by 0816b 0818e
  9DD9  .byte 06 DF F0 E0 C1 C3 86 8E 0C 08 03 03 C3 C3 C1 C0   ; 09DD9 data, read by 0818e 0816b
  9DE9  .byte 9C FE E5 CD 0D 1D 1C 3C 78 70 24 03 BE 3F 3F 7F   ; 09DE9 data, read by 0816b 0818e
  9DF9  .byte 7F 80 14 03 04 1C 38 38 03 01 14 06 01 14 07 BE   ; 09DF9 data, read by 0816b 0818e
  9E09  .byte 3D 39 11 03 03 01 00 18 10 10 00 01 01 14 02 24   ; 09E09 data, read by 0816b 0818e
  9E19  .byte 02 FE F8 F0 C0 80 00 60 E0 C0 80 14 04 FF 7E 7C   ; 09E19 data, read by 0818e 0816b
  9E29  .byte 78 70 20 14 02 10 10 20 20 20 14 03 0C 0D 0C 16   ; 09E29 data, read by 0816b 0818e 0812b 08130
  9E39  .byte 02 55 0C 0D 01 AA 55 0C 0D 55 AA 55 0C 0F 15 0C   ; 09E39 data, read by 0816b 0818e
  9E49  .byte 0D 05 AA 55 0C 0B 01 2A 55 AA 57 0C 0A 02 55 AA   ; 09E49 data, read by 0818e 0816b
  9E59  .byte 55 BF FF 0C 09 15 AA 55 AB 7F 0D 02 0C 08 2A 55   ; 09E59 data, read by 0816b 0818e
  9E69  .byte AA 57 0D 03 55 0C 07 AA AA 55 AF 0D 03 AA 55 0C   ; 09E69 data, read by 0816b 0818e
  9E79  .byte 06 55 AA AA 5F 0D 02 FE 55 AA 50 0C 04 01 AA 55   ; 09E79 data, read by 0818e 0816b
  9E89  .byte AF AF 0D 03 AA 55 A8 0C 05 55 AA 57 FF 0C 06 02   ; 09E89 data, read by 0816b 0818e
  9E99  .byte 15 0C 0B 01 0A 55 AA 55 0C 0A 0A 55 AA 55 AF FF   ; 09E99 data, read by 0816b 0818e
  9EA9  .byte 0C 08 02 55 AA 55 AF 0D 02 F5 0C 07 0A AA 55 AF   ; 09EA9 data, read by 0816b 0818e
  9EB9  .byte 7F FF FD AA 55 0C 05 02 55 AA AB 7F FF FD AA 55   ; 09EB9 data, read by 0816b 0818e
  9EC9  .byte AA 40 0C 03 02 55 AA 55 BF 0D 02 FA 55 AA 50 00   ; 09EC9 data, read by 0816b 0818e
  9ED9  .byte 02 0C 02 05 AA 55 AF 0D 03 F5 AA 55 A0 0C 02 15   ; 09ED9 data, read by 0816b 0818e
  9EE9  .byte 00 0A 55 AA 5F 0D 03 EA 55 AA 00 01 2A 55 AB 15   ; 09EE9 data, read by 0816b 0818e
  9EF9  .byte AA 55 0D 05 AA 54 00 02 55 AA 57 FF 55 AB 0D 06   ; 09EF9 data, read by 0816b 0818e
  9F09  .byte A8 00 05 AA 55 AF 0D 02 57 0D 07 00 0A 55 AA 5F   ; 09F09 data, read by 0816b 0818e
  9F19  .byte 0D 0B 05 AA 55 AB 0D 0C 0C 03 01 0A 55 AA 57 0C   ; 09F19 data, read by 0816b 0818e
  9F29  .byte 09 05 2A 55 AB 5F 0D 02 0C 08 AA 55 AF 7F FF FD   ; 09F29 data, read by 0818e 0816b
  9F39  .byte EA 55 0C 05 02 15 AA BF FF FE F5 AA 54 A0 0C 03   ; 09F39 data, read by 0816b 0818e
  9F49  .byte 01 0A 55 AB 5F FF FE F5 AA 54 A0 00 15 AA 01 0A   ; 09F49 data, read by 0816b
  9F59  .byte 55 AB 5F 0D 03 AA 55 A0 00 05 AA 55 AF 55 AA 5F   ; 09F59 data, read by 0816b 0818e
  9F69  .byte 0D 05 A8 00 05 2A 55 AF 0D 02 57 0D 07 01 2A 55   ; 09F69 data, read by 0816b 0818e
  9F79  .byte AB 7F 0D 0B 55 AA 5F 0D 0D 5F 0D 11 F0 8F E0 C0   ; 09F79 data, read by 0816b 0818e
  9F89  .byte 81 CF 0D 09 03 0F 3F 1F 1F 0D 0C FE C0 00 8F FC   ; 09F89 data, read by 0816b 0818e
  9F99  .byte F8 0D 0A 0F 07 0F 03 00 01 0D 08 0C 07 05 0C 08   ; 09F99 data, read by 0816b 0818e
  9FA9  .byte BF FF FE F5 AA 54 A0 02 0C 02 01 0A 55 AB 5F FF   ; 09FA9 data, read by 0816b 0818e
  9FB9  .byte FA D5 AA 50 81 0A 55 AB 05 2A 55 AF 7F 0D 03 A8   ; 09FB9 data, read by 0816b 0818e
  9FC9  .byte 40 05 2A 55 AF 7F FF 57 BF 0D 06 15 AA 57 BF 0D   ; 09FC9 data, read by 0816b 0818e
  9FD9  .byte 0C 55 BF 0D 11 FC E0 80 C0 CF 0D 0A C0 0C 02 0F   ; 09FD9 data, read by 0818e 0816b
  9FE9  .byte 0D 0B 07 07 1F 0D 0C FC F0 E0 F0 0D 0C 0C 03 F8   ; 09FE9 data, read by 0816b 0818e
  9FF9  .byte E0 C3 0D 0A 01 01 03 0F 7F 0D 0B 0C 05 05 2A 55   ; 09FF9 data, read by 0816b 0818e
  A009  .byte 0C 0A 02 15 AA 55 AF 7F 0C 08 2A 55 AB 5F 0D 02   ; 0A009 data, read by 0816b 0818e
  A019  .byte FE F5 0C 06 01 0A BF 7F FE FD EA D5 A8 40 0C 02   ; 0A019 data, read by 0816b 0818e
  A029  .byte 01 02 15 2A 57 BF FA D5 AA 50 80 02 15 AB 05 2A   ; 0A029 data, read by 0816b
  A039  .byte 55 AF 7F 0D 29 FC C0 0D 0A FE F8 E0 C0 83 1F 0D   ; 0A039 data, read by 0816b 0818e
  A049  .byte 08 F8 0C 02 03 1F 0D 0B 03 07 1F 0D 14 FC 0D 0E   ; 0A049 data, read by 0818e 0816b
  A059  .byte F0 00 0D 0D F0 0C 02 0D 0D 1F 1F 3F 0D 08 AB 57   ; 0A059 data, read by 0816b 0818e
  A069  .byte BF FF FE FD EA 54 0C 04 01 02 15 AB 0D 02 FA D5   ; 0A069 data, read by 0816b 0818e
  A079  .byte AA 50 81 0A 0C 02 05 2A 55 AF 7F FF AA 54 A0 02   ; 0A079 data, read by 0816b 0818e
  A089  .byte 05 2B 57 BF 55 AB 5F 0D 05 05 2A 57 AF 7F 0D 10   ; 0A089 data, read by 0816b 0818e
  A099  .byte FC F0 C0 0D 09 FE F0 C0 0C 04 0D 08 C0 0C 07 0D   ; 0A099 data, read by 0816b 0818e
  A0A9  .byte 08 7F F0 0C 06 0D 08 0F 1F 0C 06 0D 09 F0 0C 06   ; 0A0A9 data, read by 0818e 0816b
  A0B9  .byte 0D 08 0C 08 0D 08 01 0F 7F FF 07 03 0F 3F 0D 08   ; 0A0B9 data, read by 0816b 0818e
  A0C9  .byte 0C 03 01 02 15 2A 55 0C 08 FA F5 AA 50 A0 02 15   ; 0A0C9 data, read by 0816b 0818e
  A0D9  .byte 2B 05 0A 55 AF 5F 0D 03 15 AB 5F 0D 0E FC F8 E0   ; 0A0D9 data, read by 0816b 0818e
  A0E9  .byte C0 C0 E7 0D 09 0C 04 0F 0D 0B 0C 02 0F 0D 0D 00   ; 0A0E9 data, read by 0816b 0818e
  A0F9  .byte E0 F0 E0 80 00 F0 E0 0D 08 0C 07 1F 0D 08 0C 04   ; 0A0F9 data, read by 0816b 0818e
  A109  .byte 03 07 03 00 0D 08 01 07 3F 0D 04 00 0D 0F 00 0D   ; 0A109 data, read by 0816b 0818e
  A119  .byte 08 0A 15 AA 55 AF 5F 0D 02 0C 08 A1 02 15 2B 5F   ; 0A119 data, read by 0818e 0816b
  A129  .byte BF 0D 02 5F 0D 07 57 BF 0D 0E C3 0D 05 F8 C0 0D   ; 0A129 data, read by 0816b 0818e
  A139  .byte 0B FC E0 0C 03 0D 08 E0 C0 0C 06 0D 08 1F 0F 0F   ; 0A139 data, read by 0818e 0816b
  A149  .byte 0F 1F 1F EA 55 0D 0D D5 AA 54 0D 0B FE AA 55 A8   ; 0A149 data, read by 0816b 0818e
  A159  .byte 00 0D 0A EA 55 AA 40 00 0A 0D 07 F5 AF 5F 7F FD   ; 0A159 data, read by 0816b 0818e
  A169  .byte FA D5 AA 54 0C 03 02 05 2A 55 AB A1 02 15 2B 57   ; 0A169 data, read by 0816b 0818e
  A179  .byte BF 7F FF 5F 0D 07 5F BF 0D 11 E0 00 80 C0 00 0D   ; 0A179 data, read by 0816b 0818e
  A189  .byte 08 FC C0 0C 06 0D 08 0C 07 2A 0D 07 D5 0C 05 02   ; 0A189 data, read by 0818e 0816b
  A199  .byte 55 AA 0D 05 FD AA 55 02 05 0C 02 05 AA 57 BC 0D   ; 0A199 data, read by 0816b 0818e
  A1A9  .byte 04 FA 55 A8 43 AA 40 01 2A 55 BC C0 00 0D 02 FE   ; 0A1A9 data, read by 0818e 0816b
  A1B9  .byte D5 AA 43 3F FF 80 00 55 A8 80 0C 03 0D 02 AA 57   ; 0A1B9 data, read by 0816b 0818e
  A1C9  .byte 7F 0D 03 05 AA 55 0F 0C 03 05 FA 55 AA F0 0D 03   ; 0A1C9 data, read by 0816b 0818e
  A1D9  .byte FA 50 80 80 0C 02 01 AA 57 AF 7F 7F 0D 02 FE 55   ; 0A1D9 data, read by 0816b 0818e
  A1E9  .byte A8 FA F5 AA 54 A8 42 05 0A 05 0A 55 AB 57 BF 0D   ; 0A1E9 data, read by 0816b
  A1F9  .byte 02 A1 42 05 2B 57 BF 7F FF 5F BF 0D 06 57 BF 7F   ; 0A1F9 data, read by 0818e 0816b
  A209  .byte 0D 11 FE FC FC 0D 09 FC F0 C0 0C 02 03 7F 0D 09   ; 0A209 data, read by 0816b 0818e
  A219  .byte 0C 03 03 3F 0D 0B 0C 03 80 C0 C0 C0 80 0D 08 0C   ; 0A219 data, read by 0816b 0818e
  A229  .byte 06 05 AA 0D 06 FA 55 0C 04 05 2A 5F 0D 05 FA D5   ; 0A229 data, read by 0818e 0816b
  A239  .byte A0 0C 03 05 2A 57 FF FA 55 0D 02 FA D5 A8 0C 03   ; 0A239 data, read by 0816b 0818e
  A249  .byte 05 2A 55 BF FE D5 AA 55 FA D5 AA 40 0C 02 01 02   ; 0A249 data, read by 0816b 0818e
  A259  .byte 55 BC F0 E0 80 01 AA 55 AA 43 0F 1F 7F FE 55 AA   ; 0A259 data, read by 0816b
  A269  .byte 7F 0C 03 0A 55 A7 5F 80 0D 03 F5 AA 58 A0 80 0C   ; 0A269 data, read by 0816b 0818e
  A279  .byte 02 15 AA 5F 0D 02 7F 0D 02 EA 55 A0 0C 03 01 0A   ; 0A279 data, read by 0818e 0816b
  A289  .byte 55 AF 0D 04 FE F5 AA 50 0C 04 55 AA 5F 0D 02 FA   ; 0A289 data, read by 0816b 0818e
  A299  .byte 55 FF AA 55 A0 0C 04 2B 53 BF FF FE 75 AA 55 D4   ; 0A299 data, read by 0816b 0818e
  A2A9  .byte AC 40 0C 05 0D 03 F8 A0 7F BF 7F 0C 03 07 0F 0C   ; 0A2A9 data, read by 0816b 0818e
  A2B9  .byte 03 0D 06 FA F5 0D 0B FD EA 55 AA 50 0D 09 F5 AA   ; 0A2B9 data, read by 0818e 0816b
  A2C9  .byte 55 AA 50 81 02 0D 06 FE FD A8 50 80 00 01 2A 57   ; 0A2C9 data, read by 0816b 0818e
  A2D9  .byte BF 0D 04 FE D5 A8 40 AA 50 85 2A 5F FF FA D5 0D   ; 0A2D9 data, read by 0816b 0818e
  A2E9  .byte 02 FA D5 A0 0C 03 05 2A 5F FF EA 55 AA 55 FA D5   ; 0A2E9 data, read by 0818e 0816b
  A2F9  .byte A0 0C 05 5F FF FA 55 AA 55 A8 40 A0 0C 07 FA 55   ; 0A2F9 data, read by 0816b 0818e
  A309  .byte AA 55 AA 40 0C 07 03 0F 7F AA 55 AA 50 0C 03 01   ; 0A309 data, read by 0816b 0818e
  A319  .byte 0C 05 0D 02 FE AE 5F 9F 3F 3F 0C 02 55 01 0C 04   ; 0A319 data, read by 0816b 0818e
  A329  .byte 0D 02 AA BF 0D 03 FE 35 1A 5D 40 0C 04 C0 E0 A0   ; 0A329 data, read by 0816b 0818e
  A339  .byte 0D 02 FE D5 AA 55 AA 54 0C 08 0D 02 BE 55 AA 55   ; 0A339 data, read by 0816b 0818e
  A349  .byte AA 0C 09 FA D5 AA 55 AA 50 0C 0A AA 55 AA 50 0C   ; 0A349 data, read by 0816b 0818e
  A359  .byte 0C AA 55 00 01 0C 0C FE 55 AA 55 AA 15 0C 0A 0D   ; 0A359 data, read by 0818e 0816b
  A369  .byte 06 FA D5 0D 0C FA D5 AA 54 0D 09 FD EA 55 AA 50   ; 0A369 data, read by 0818e 0816b
  A379  .byte 81 0A 0D 06 FE F5 AA 54 A8 41 05 2B 57 FD 0D 03   ; 0A379 data, read by 0816b 0818e
  A389  .byte FE FA D4 A8 00 80 02 15 AF 7E F5 AA 55 FF FD EA   ; 0A389 data, read by 0816b
  A399  .byte 50 80 0C 03 15 AF 7E F5 AA 55 AA 55 EA 50 80 0C   ; 0A399 data, read by 0816b 0818e
  A3A9  .byte 05 FA D5 AA 55 AA 55 AA 55 0C 08 AA 55 AA 55 AA   ; 0A3A9 data, read by 0818e 0816b
  A3B9  .byte 55 AA 0C 08 7E AA 54 A8 50 80 05 06 07 0C 03 01   ; 0A3B9 data, read by 0816b 0818e
  A3C9  .byte 03 02 01 0C 05 2A 55 AB FF 01 07 3F FF D5 AA 54   ; 0A3C9 data, read by 0816b 0818e
  A3D9  .byte 0C 03 2A 55 BF FF FD EA FD FA 54 A0 0C 04 AA 7F   ; 0A3D9 data, read by 0816b 0818e
  A3E9  .byte 0D 02 FA 55 AA 40 55 80 0C 06 0D 02 EA F5 AA 54   ; 0A3E9 data, read by 0816b 0818e
  A3F9  .byte 80 0C 09 AA 7F 0D 02 FE F5 AA 55 55 80 0C 06 FE   ; 0A3F9 data, read by 0816b 0818e
  A409  .byte FD EA D5 AA 50 80 02 0D 07 FD AA 55 AC 40 01 0A   ; 0A409 data, read by 0816b 0818e
  A419  .byte 57 BF 0D 04 FE F5 A8 40 A0 00 05 2B 5F FD AA 50   ; 0A419 data, read by 0816b 0818e
  A429  .byte 0D 02 FA D4 A0 0C 02 07 57 BF 7A F5 AA 50 80 00   ; 0A429 data, read by 0816b 0818e
  A439  .byte A8 40 80 0C 02 07 3F FF EA 55 AA 55 AA 55 2A 13   ; 0A439 data, read by 0816b 0818e
  A449  .byte 0C 05 80 80 E0 AA 55 AA 50 A1 4A 93 0F 0C 03 03   ; 0A449 data, read by 0816b 0818e
  A459  .byte 0E 15 2C F0 AA 50 08 00 55 AA F5 FF 00 0F F7 FF   ; 0A459 data, read by 0816b
  A469  .byte AA 55 0A 00 A8 0C 03 05 AA 55 FF 07 0D 03 FA 55   ; 0A469 data, read by 0816b 0818e
  A479  .byte AA 0C 02 0A 55 AF 7F FF FE FD FF F5 AA 50 80 0C   ; 0A479 data, read by 0816b 0818e
  A489  .byte 03 07 A8 5F FF FB 55 AA 55 F8 57 A0 0C 05 AA 55   ; 0A489 data, read by 0818e 0816b
  A499  .byte FA FD AA 54 A8 0C 02 80 0C 06 AA 55 AA 0C 0D A8   ; 0A499 data, read by 0816b 0818e
  A4A9  .byte 40 0C 0E 0D 06 FE F5 0D 0A FE FD EA 55 A8 60 0D   ; 0A4A9 data, read by 0816b 0818e
  A4B9  .byte 08 FA D5 AA 50 80 02 15 2B 0D 05 FD EA D4 A8 40   ; 0A4B9 data, read by 0818e 0816b
  A4C9  .byte 01 0A 55 AF 7A F5 0D 02 FE F5 AA 50 80 00 15 AF   ; 0A4C9 data, read by 0816b 0818e
  A4D9  .byte 5C FD E8 50 A0 63 EA 50 A0 00 03 0F 1F 1C FA D4   ; 0A4D9 data, read by 0816b
  A4E9  .byte A0 00 03 1F 0D 02 00 03 1F FF FC E0 0C 05 3F FF   ; 0A4E9 data, read by 0816b 0818e
  A4F9  .byte FC F0 AA 0D 03 C0 00 03 0F 55 0C 06 15 AA 0D 06   ; 0A4F9 data, read by 0816b 0818e
  A509  .byte EA 55 1E 7F FF FE 00 AA 5D FF E1 80 00 01 FF 55   ; 0A509 data, read by 0816b
  A519  .byte A2 00 3F FF FE 01 55 A9 0D 02 C0 0C 02 FC AA 56   ; 0A519 data, read by 0816b 0818e
  A529  .byte 0C 02 FF 55 AA 55 8A C0 E0 F0 0C 08 FF F5 AA 55   ; 0A529 data, read by 0816b 0818e
  A539  .byte A0 0C 0B FA 55 A8 50 0C 0C AA 40 0C 0E 0D 02 FA   ; 0A539 data, read by 0816b 0818e
  A549  .byte F5 AA 54 A8 40 0D 08 EA 54 A8 40 81 0A 17 AF 0D   ; 0A549 data, read by 0816b 0818e
  A559  .byte 04 FE F5 E8 50 81 0A 15 AF 7E 75 AA 55 FE F5 EA   ; 0A559 data, read by 0818e 0816b
  A569  .byte 50 80 0C 03 5F FD EA D5 AA 55 AA 55 A0 0C 07 AA   ; 0A569 data, read by 0816b 0818e
  A579  .byte 55 AB 55 AA 50 A0 42 0C 05 01 07 1D FE F5 AA 50   ; 0A579 data, read by 0816b 0818e
  A589  .byte 0C 02 55 AA 0C 04 7F FF AA 55 BF 55 AA 05 02 09   ; 0A589 data, read by 0816b 0818e
  A599  .byte 5E FF 0C 05 F0 A0 00 55 AF 0D 02 BA 55 AA 50 AA   ; 0A599 data, read by 0816b 0818e
  A5A9  .byte 50 0C 06 5F FF FA 55 AA 50 80 00 A0 0C 07 FF FD   ; 0A5A9 data, read by 0816b 0818e
  A5B9  .byte BA 55 A0 0C 0B AA 55 AA 0C 0D A0 50 A0 0C 0D 0D   ; 0A5B9 data, read by 0816b 0818e
  A5C9  .byte 02 FA D5 AA 54 A0 40 0D 08 AA 54 A0 40 01 0A 57   ; 0A5C9 data, read by 0818e 0816b
  A5D9  .byte AF 0D 04 FE F5 A8 50 01 0A 17 AF 7A F5 AA 54 FE   ; 0A5D9 data, read by 0816b 0818e
  A5E9  .byte F5 E8 50 80 00 01 03 7A F5 D8 41 82 17 27 5F 80   ; 0A5E9 data, read by 0816b
  A5F9  .byte 00 07 1E 7D E8 D8 A0 A1 04 2F 5F 7A F5 AA 50 1E   ; 0A5F9 data, read by 0816b
  A609  .byte FB D0 A0 80 0C 03 FA F8 A8 51 A1 01 01 0C 09 15   ; 0A609 data, read by 0816b 0818e
  A619  .byte 69 FF FA D5 AA 55 A0 2A 16 0C 06 5F FF D5 EA 54   ; 0A619 data, read by 0816b 0818e
  A629  .byte A0 0C 02 A0 0C 07 F5 AA 55 A0 0C 0C 05 0B 57 BF   ; 0A629 data, read by 0816b 0818e
  A639  .byte 7A F5 AA 54 FA F4 A8 40 80 0C 02 01 7A F5 AA 50   ; 0A639 data, read by 0816b 0818e
  A649  .byte A0 40 02 05 80 0C 02 07 0F 3F FD FA AE 57 2A 05   ; 0A649 data, read by 0816b 0818e
  A659  .byte 00 55 AA 7F 01 00 C0 E0 FF AA 55 80 7A D0 A1 42   ; 0A659 data, read by 0816b
  A669  .byte 2B 4F BC F8 80 03 0E 1D D4 B0 40 00 27 5F 1F F0   ; 0A669 data, read by 0816b
  A679  .byte E0 80 0C 02 D8 A0 E0 0C 05 E0 F0 0C 0E A8 40 80   ; 0A679 data, read by 0816b 0818e
  A689  .byte 05 0A 13 27 5F 03 07 0F 3A 75 EC D8 A0 2B 5F BF   ; 0A689 data, read by 0816b
  A699  .byte FE F8 E0 80 00 D4 A0 40 0C 05 FF F8 C0 0C 0D BC   ; 0A699 data, read by 0816b 0818e
  A6A9  .byte 78 E0 80 0C 04 40 80 0C 06 22 24 22 10 40 7F 7F   ; 0A6A9 data, read by 0816b 0818e 0812b 08130
  A6B9  .byte 40 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 02 FC FC   ; 0A6B9 data, read by 0816b
  A6C9  .byte 02 FC FC FC FC FC FE FE FC FE FE FE FE 00 3F 7F   ; 0A6C9 data, read by 0816b
  A6D9  .byte 00 7F 40 40 40 22 03 7F 40 7F 7F 7F 00 FC FE 02   ; 0A6D9 data, read by 0816b 0818e
  A6E9  .byte FE 02 02 02 22 03 FC 00 FC FC FC 00 24 02 22 03   ; 0A6E9 data, read by 0816b 0818e
  A6F9  .byte FF 22 02 24 03 22 05 24 03 22 02 AA 22 0A 20 6C   ; 0A6F9 data, read by 0816b 0818e
  A709  .byte 6C 6C 6C 6C 6C 00 1F 13 13 13 13 13 13 00 24 07   ; 0A709 data, read by 0816b 0818e
  A719  .byte 00 24 07 00 FF C8 C8 C8 C8 C8 C8 00 24 07 00 FF   ; 0A719 data, read by 0816b 0818e
  A729  .byte 22 07 24 07 00 EC 13 13 13 13 13 13 00 FF EC EC   ; 0A729 data, read by 0816b 0818e
  A739  .byte EC EC EC EC 00 FC B6 B2 B2 B2 B2 B2 22 09 FF 6F   ; 0A739 data, read by 0816b 0818e
  A749  .byte 6F 6F 6F 6F 6F 00 24 07 00 FF EC EC EC EC EC EC   ; 0A749 data, read by 0816b 0818e
  A759  .byte 00 24 07 00 FF 22 07 24 07 00 64 9B 9B 9B 9B 9B   ; 0A759 data, read by 0816b 0818e
  A769  .byte 9B 00 FF 64 64 64 64 64 64 00 01 01 F5 ED DD BD   ; 0A769 data, read by 0816b
  A779  .byte 7D FE FC FA F2 E2 C2 82 02 EB DD DC DD DF B7 B7   ; 0A779 data, read by 0816b
  A789  .byte B7 00 08 08 08 09 19 19 19 00 07 1F 00 FF 00 FF   ; 0A789 data, read by 0816b
  A799  .byte 22 09 7F 7F 7F 40 7F 7F 40 40 7F 7F 7F 7F 7F 7F   ; 0A799 data, read by 0816b 0818e
  A7A9  .byte 7F 7F FC FC FC 02 FC FC 02 02 FE FE FE FC FE FE   ; 0A7A9 data, read by 0816b
  A7B9  .byte FC FC 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F 7F   ; 0A7B9 data, read by 0816b
  A7C9  .byte 7F 7F FC FC FC FC FC FC FC FC FE FE FE FE FE FE   ; 0A7C9 data, read by 0816b
  A7D9  .byte FE FE 24 06 00 FF 22 06 FF 22 02 AA 55 AA 55 00   ; 0A7D9 data, read by 0816b 0818e
  A7E9  .byte FF 22 09 6C 6C 6C 6C 6C 6C 3F 00 13 13 13 13 13   ; 0A7E9 data, read by 0816b 0818e
  A7F9  .byte 13 22 02 24 07 00 24 06 22 02 C8 C8 C8 C8 C8 C8   ; 0A7F9 data, read by 0816b 0818e
  A809  .byte 37 00 24 06 C8 22 07 FF 00 24 06 22 02 13 13 13   ; 0A809 data, read by 0816b 0818e
  A819  .byte 13 13 13 FF 00 EC EC EC EC EC EC 22 02 B2 B2 B2   ; 0A819 data, read by 0816b 0818e
  A829  .byte B2 B2 B6 FC 22 09 6F 6F 6F 6F 6F 6F 90 00 24 06   ; 0A829 data, read by 0816b 0818e
  A839  .byte 6F 00 EC EC EC EC EC EC 13 00 24 06 EC 22 07 FF   ; 0A839 data, read by 0816b 0818e
  A849  .byte 00 24 06 22 02 9B 9B 9B 9B 9B 9B FF 00 64 64 64   ; 0A849 data, read by 0816b 0818e
  A859  .byte 64 64 64 22 04 FA F2 E2 D2 92 52 FE FC 22 02 E0   ; 0A859 data, read by 0816b 0818e
  A869  .byte C0 20 60 33 53 53 53 B1 B1 52 3C 9D BD BD BD 7E   ; 0A869 data, read by 0816b
  A879  .byte 7E 3C 22 02 FF 00 FF 22 02 0B 22 09 40 40 40 40   ; 0A879 data, read by 0816b 0818e
  A889  .byte 22 02 40 00 7F 7F 7F 7F 7F 7F 7F 7F 02 02 02 02   ; 0A889 data, read by 0816b 0818e
  A899  .byte 02 02 02 02 FC FC FC FC FC FC FC FC 7F 7F 40 40   ; 0A899 data, read by 0816b
  A8A9  .byte 7F 40 40 40 7F 7F 7F 7F 7F 7F 7F 7F FC FC 02 02   ; 0A8A9 data, read by 0816b
  A8B9  .byte FC 02 02 02 FE FE FC FC FE FC FC FC FF 22 02 FF   ; 0A8B9 data, read by 0816b 0818e
  A8C9  .byte 22 05 24 02 00 24 04 00 24 02 00 24 04 22 08 62   ; 0A8C9 data, read by 0816b 0818e
  A8D9  .byte 62 62 62 62 62 62 62 70 70 70 70 70 70 70 70 FD   ; 0A8D9 data, read by 0816b
  A8E9  .byte FD FD FD FD FD FD FD 02 02 02 02 02 02 02 02 90   ; 0A8E9 data, read by 0816b
  A8F9  .byte 90 90 90 90 90 90 90 6F 6F 6F 6F 6F 6F 6F 6F BF   ; 0A8F9 data, read by 0816b
  A909  .byte BF BF BF BF BF BF BF 24 10 22 08 A0 50 A0 50 A0   ; 0A909 data, read by 0816b 0818e
  A919  .byte 50 A0 50 5F AF 5F AF 5F AF 5F AF 1E 1E 1E 1E 1E   ; 0A919 data, read by 0816b
  A929  .byte 1E 1E 1E 24 08 3A 3A 3A 3A 3A 3A 3A 3A CC CC CC   ; 0A929 data, read by 0816b 0818e
  A939  .byte CC CC CC CC CC 80 00 C0 F0 FF 00 FF 22 02 80 22   ; 0A939 data, read by 0816b 0818e
  A949  .byte 02 24 02 22 02 FC FC F8 F3 E7 CF 9F 00 02 01 03   ; 0A949 data, read by 0818e 0816b
  A959  .byte 07 0F 1F 3F 7F 24 03 FE FD FA F4 E9 22 04 01 03   ; 0A959 data, read by 0816b 0818e
  A969  .byte 07 0F FF E0 1F E0 1F 60 80 0F 22 02 1F 24 03 F0   ; 0A969 data, read by 0816b 0818e
  A979  .byte C0 FF 1F E3 1D E2 01 00 C0 22 02 E0 FC FE FF 3F   ; 0A979 data, read by 0816b 0818e
  A989  .byte 0F 24 05 7F BF 1F 22 06 80 C0 1A 1A 5A 1A 5A 9A   ; 0A989 data, read by 0816b 0818e
  A999  .byte 9A 1A 0C 0C 0C 0C 0C 4C 4C CC 3F 22 02 3F 3F 00   ; 0A999 data, read by 0816b 0818e
  A9A9  .byte 3F 3F 40 7F 7F 40 40 7F 40 40 FE 02 02 FE FE 02   ; 0A9A9 data, read by 0816b
  A9B9  .byte FE FE 00 FC FC 22 02 FC 22 02 40 40 40 40 40 40   ; 0A9B9 data, read by 0816b 0818e
  A9C9  .byte 40 40 7F 7F 7F 7F 7F 7F 7F 7F 02 02 02 02 02 02   ; 0A9C9 data, read by 0816b
  A9D9  .byte 02 02 FC FC FC FC FC FC FC FC FF 00 24 0E 22 08   ; 0A9D9 data, read by 0816b 0818e
  A9E9  .byte FF 00 24 05 00 10 10 10 10 12 12 12 12 60 60 60   ; 0A9E9 data, read by 0816b 0818e
  A9F9  .byte 60 60 60 60 60 52 2A 52 2A 52 2A 52 2A 22 08 6F   ; 0A9F9 data, read by 0816b 0818e
  AA09  .byte 6F 6F 6F 6F 6F 6F 6F 22 08 40 40 40 40 40 40 40   ; 0AA09 data, read by 0816b 0818e
  AA19  .byte 40 BF BF BF BF BF BF BF BF AA 55 AA 55 AA 55 AA   ; 0AA19 data, read by 0816b
  AA29  .byte 55 22 08 AF 4F AF 4F AF 4F AF 4F 22 08 E1 E1 E1   ; 0AA29 data, read by 0816b 0818e
  AA39  .byte E1 E1 E1 E1 E1 1E 1E 1E 1E 1E 1E 1E 1E 06 04 06   ; 0AA39 data, read by 0816b
  AA49  .byte 04 06 04 06 04 C8 C8 C8 C8 C8 C8 C8 C8 24 04 22   ; 0AA49 data, read by 0816b 0818e
  AA59  .byte 05 FE FE 22 03 C0 00 01 02 04 0F 0F 1F 3F 00 FE   ; 0AA59 data, read by 0818e 0816b
  AA69  .byte FD FB F7 EF DF BF 7F A0 50 A1 52 A0 40 80 00 5E   ; 0AA69 data, read by 0816b
  AA79  .byte AD 5A A5 4F 9F 3F 7F E2 D4 D4 A8 A8 A8 A8 A8 0F   ; 0AA79 data, read by 0816b
  AA89  .byte 1F 1E 3E 3C 3C 3C 3C 1F 0F 07 27 A3 A3 A3 A3 C0   ; 0AA89 data, read by 0816b
  AA99  .byte E0 E0 F0 F0 F0 F0 F0 7E 24 02 81 81 24 02 7E 00   ; 0AA99 data, read by 0816b 0818e
  AAA9  .byte 7E 7E 7E 7E 22 03 40 40 40 3F 40 40 3F 3F 7F 7F   ; 0AAA9 data, read by 0816b 0818e
  AAB9  .byte 7F 40 7F 7F 40 40 02 02 02 FC 02 02 FC FC FC FC   ; 0AAB9 data, read by 0816b
  AAC9  .byte FC 02 FC FC 02 02 24 08 22 08 2A 15 2A 15 2A 15   ; 0AAC9 data, read by 0816b 0818e
  AAD9  .byte 2A 15 22 08 3F 3F DF EF F7 FB FD FE 7F BF DF EF   ; 0AAD9 data, read by 0816b 0818e
  AAE9  .byte F7 FB FD FE BE BD BB B7 AF 9F BF 7F 22 08 7F BF   ; 0AAE9 data, read by 0816b 0818e
  AAF9  .byte DF EF F7 FB FD FE 22 08 A0 51 A3 50 AB 55 AA 55   ; 0AAF9 data, read by 0816b 0818e
  AB09  .byte 5E AC 58 A0 40 80 22 02 1E 1E 1E 1E 1E 1E 1E 1E   ; 0AB09 data, read by 0816b 0818e
  AB19  .byte 24 08 54 A9 52 A5 0A 15 2A 55 AA 54 A8 50 E0 C0   ; 0AB19 data, read by 0816b 0818e
  AB29  .byte 80 00 AA 55 AA 55 AA 55 AA 55 22 08 AA 54 AA 56   ; 0AB29 data, read by 0816b 0818e
  AB39  .byte AE 5E 9E 1E 00 01 03 07 0F 1F 3F 7F E1 E0 E0 E0   ; 0AB39 data, read by 0816b
  AB49  .byte E0 E0 E0 E0 72 72 72 70 70 70 70 70 FE F8 FA 02   ; 0AB49 data, read by 0816b
  AB59  .byte 0A 0A AA 2A 00 FC F8 F4 0C 1C 1C 1C A9 A9 A8 D4   ; 0AB59 data, read by 0816b
  AB69  .byte D4 D2 EB F5 3C 3C 3E 1E 1F 1F 0D 06 B3 B3 33 63   ; 0AB69 data, read by 0816b
  AB79  .byte E3 C7 C7 C7 E0 E0 C0 80 22 05 24 02 22 02 24 02   ; 0AB79 data, read by 0816b 0818e
  AB89  .byte 22 03 24 03 22 03 66 66 66 66 66 66 66 66 38 38   ; 0AB89 data, read by 0816b 0818e
  AB99  .byte 38 38 38 38 38 38 3F 40 3F 3F 40 40 3F 00 40 00   ; 0AB99 data, read by 0816b
  ABA9  .byte 40 40 22 04 FE 02 FE FE 02 02 FC 22 09 55 AA 55   ; 0ABA9 data, read by 0816b 0818e
  ABB9  .byte AA 22 04 AA 55 AA 55 24 04 2A 15 2A 15 3F 3F 3F   ; 0ABB9 data, read by 0816b 0818e
  ABC9  .byte 3F 22 08 50 A0 50 A0 22 04 2F 1F 8F 4F F7 FB FD   ; 0ABC9 data, read by 0816b 0818e
  ABD9  .byte FE A8 54 A9 52 A0 40 80 00 02 01 02 05 0F 1F 3F   ; 0ABD9 data, read by 0816b
  ABE9  .byte 7F 2A 28 2A 28 2A 28 2A 28 40 40 40 40 40 40 40   ; 0ABE9 data, read by 0816b
  ABF9  .byte 40 1E 1D 1A 15 0A 15 3F 00 FE FC F8 F0 E0 C0 80   ; 0ABF9 data, read by 0816b
  AC09  .byte 00 AA 55 AA 55 AA 55 FF 22 09 FE FD FB F7 EF DF   ; 0AC09 data, read by 0816b 0818e
  AC19  .byte BF 7F 22 08 BF BF FF BF FF BF FF BF 22 09 FC FA   ; 0AC19 data, read by 0816b 0818e
  AC29  .byte F2 0A 1A 3A 3A 22 03 04 0C 0C 0C 4C BA 3A 3A 1A   ; 0AC29 data, read by 0816b 0818e
  AC39  .byte 1A 1A 1A 1A 4C 0C 0C 0C 0C 0C 0C 0C FE FC FA F6   ; 0AC39 data, read by 0816b
  AC49  .byte EE DE 1E 1E 00 01 03 07 0F 1F BF 7F FA FC FE 24   ; 0AC49 data, read by 0816b
  AC59  .byte 05 03 01 22 06 CF 60 7F 1F 80 E0 FC FF 7F 1F 22   ; 0AC59 data, read by 0818e 0816b
  AC69  .byte 06 C7 1E F8 22 02 03 1F FF F8 E0 22 06 0F 1F 3F   ; 0AC69 data, read by 0818e 0816b
  AC79  .byte 7F 24 04 22 08 0F 30 47 4F 97 BB BD BE 7F BF DF   ; 0AC79 data, read by 0816b 0818e
  AC89  .byte EF F7 FB FD FE 7F 80 80 80 87 88 88 88 00 3F 5F   ; 0AC89 data, read by 0816b
  AC99  .byte 6F 70 73 75 76 7F BF DF EF F7 FB FC FC 22 06 01   ; 0AC99 data, read by 0816b 0818e
  ACA9  .byte 02 00 3F 5F 60 60 60 61 62 00 3F 5F 6F 70 70 70   ; 0ACA9 data, read by 0816b
  ACB9  .byte 70 55 2A 95 4A A0 50 A0 50 2A 95 4A A5 57 AB 5D   ; 0ACB9 data, read by 0816b
  ACC9  .byte AE 22 03 24 04 00 24 08 3F 3F 3F 22 04 3F 22 03   ; 0ACC9 data, read by 0816b 0818e
  ACD9  .byte 3F 3F 3F 3F 00 1E 1E 1E EE F6 FA FC 00 7F BF DF   ; 0ACD9 data, read by 0816b
  ACE9  .byte EF F7 FB FD FE A8 54 A8 57 AF 5F BF 00 02 01 03   ; 0ACE9 data, read by 0816b
  ACF9  .byte 07 0F 1F 3F 7F AA 55 AA 55 AA 55 AA 55 22 08 32   ; 0ACF9 data, read by 0816b 0818e
  AD09  .byte 31 33 37 20 00 3F 00 CC CC C8 C0 C0 C0 80 22 03   ; 0AD09 data, read by 0816b 0818e
  AD19  .byte FA F0 E2 10 32 70 FE FC 22 02 E0 C0 80 00 24 08   ; 0AD19 data, read by 0816b 0818e
  AD29  .byte 22 09 24 03 22 02 AA 22 09 AA 55 AA 55 AA 55 AA   ; 0AD29 data, read by 0816b 0818e
  AD39  .byte 22 0A 0F 10 2F 5F 5F 5F 7F C0 8F 1F 30 60 60 60   ; 0AD39 data, read by 0816b 0818e
  AD49  .byte 60 FE 22 02 F0 00 10 20 50 00 FD FB 07 EF CF 9F   ; 0AD49 data, read by 0816b 0818e
  AD59  .byte 2F 22 03 0F 17 1B 1D 1E 7F BF DF EF F7 FB FD FE   ; 0AD59 data, read by 0816b 0818e
  AD69  .byte 22 03 0F 17 1B 1C 1C 7F BF DF E0 E7 EB ED EE 66   ; 0AD69 data, read by 0816b 0818e
  AD79  .byte A6 C6 06 06 FA FC 00 70 B0 D0 E0 22 04 7B BB DB   ; 0AD79 data, read by 0816b 0818e
  AD89  .byte EB F3 03 FD FE 04 04 04 04 04 F8 22 02 10 10 10   ; 0AD89 data, read by 0816b 0818e
  AD99  .byte E0 22 04 6F AF CF 0F F7 FB FD FE 22 02 24 03 00   ; 0AD99 data, read by 0816b 0818e
  ADA9  .byte FF 00 24 02 22 02 24 02 22 02 7A BA DA EA F2 02   ; 0ADA9 data, read by 0816b 0818e
  ADB9  .byte FC 00 0C 0C 0C 0C F4 F8 22 02 16 15 13 17 0F 00   ; 0ADB9 data, read by 0816b 0818e
  ADC9  .byte 3F 00 60 60 60 60 6F 5F 22 02 FE FD FB F7 EF DF   ; 0ADC9 data, read by 0816b 0818e
  ADD9  .byte BF 7F 22 08 FF 00 24 06 22 09 01 02 F5 EA D5 AA   ; 0ADD9 data, read by 0816b 0818e
  ADE9  .byte 55 FE FC F8 F0 E0 C0 80 00 FE 01 FB F7 EF DF BF   ; 0ADE9 data, read by 0816b
  ADF9  .byte 7F 22 08 AA 54 A8 50 A0 50 A0 50 00 01 03 07 0F   ; 0ADF9 data, read by 0816b 0818e
  AE09  .byte 0F 1F 2F 01 F0 08 F4 FA FA FA FA 02 F1 F8 0C 06   ; 0AE09 data, read by 0816b
  AE19  .byte 06 06 06 1E 1D 1B 17 0F 1F 00 7F FE FC F8 F0 E0   ; 0AE19 data, read by 0816b
  AE29  .byte C0 BF 00 C3 BD 66 66 66 36 B5 B5 00 38 38 38 38   ; 0AE29 data, read by 0816b
  AE39  .byte 18 18 18 B5 B5 D2 D2 D2 DA DA E4 18 18 19 19 19   ; 0AE39 data, read by 0816b
  AE49  .byte 11 11 03 8F 73 78 76 B5 DA D5 EA 22 02 20 10 18   ; 0AE49 data, read by 0816b 0818e
  AE59  .byte 0C 0E 07 FD FB 7B 3B 95 65 95 7B 00 01 01 01 03   ; 0AE59 data, read by 0816b
  AE69  .byte 03 03 87 8F 4F 4F 4E 29 26 29 5E 00 80 80 80 80   ; 0AE69 data, read by 0816b
  AE79  .byte 81 87 87 F9 E6 9E 7C AC D8 29 51 22 02 04 18 70   ; 0AE79 data, read by 0816b 0818e
  AE89  .byte E0 C0 80 E9 F4 F4 FB F1 8E 71 FE 07 03 03 22 02   ; 0AE89 data, read by 0816b 0818e
  AE99  .byte 01 0F 7F 3A BA 7E FB F4 2E F6 11 C7 C7 83 00 03   ; 0AE99 data, read by 0816b
  AEA9  .byte C7 EF EF 1C 1F 3F DF 2F 14 0F 0F C7 C0 C0 00 C0   ; 0AEA9 data, read by 0816b
  AEB9  .byte E3 F7 F7 D1 A3 23 C7 87 71 0E FF 22 05 80 F0 FE   ; 0AEB9 data, read by 0816b 0818e
  AEC9  .byte 80 71 0E 81 F3 F4 F5 EA 0F 22 04 03 03 07 10 D0   ; 0AEC9 data, read by 0816b 0818e
  AED9  .byte 28 F4 FB FE 38 58 EF 0F 07 03 00 01 C5 85 78 87   ; 0AED9 data, read by 0816b
  AEE9  .byte 84 8F 9F 3E 5C 5C 07 08 10 20 40 81 83 87 01 8E   ; 0AEE9 data, read by 0816b
  AEF9  .byte 70 80 C3 2F A7 51 FE 22 06 80 EA D5 DA B1 B6 78   ; 0AEF9 data, read by 0816b 0818e
  AF09  .byte 63 9F 07 0E 0C 18 10 20 22 02 DA 95 65 85 0B 1B   ; 0AF09 data, read by 0816b 0818e
  AF19  .byte 3B 7D 07 03 03 03 01 01 01 00 5B 28 26 21 46 CF   ; 0AF19 data, read by 0816b
  AF29  .byte CF 8F 87 87 81 80 80 22 03 53 A9 49 A5 7D 1E 86   ; 0AF29 data, read by 0816b 0818e
  AF39  .byte F9 80 C0 E0 70 18 04 22 02 3F 7C E0 80 80 80 80   ; 0AF39 data, read by 0816b 0818e
  AF49  .byte 00 80 03 1F 3E 3E 5C 64 F8 F0 02 03 03 01 01 01   ; 0AF49 data, read by 0816b
  AF59  .byte 01 07 9B 7D FD FE FE 7E 9E 22 03 80 40 40 30 8F   ; 0AF59 data, read by 0816b 0818e
  AF69  .byte FE FD FD 7B 27 9F CF F0 01 01 03 03 02 0C 39 F3   ; 0AF69 data, read by 0816b
  AF79  .byte EE F6 F9 F9 FB F7 CE 3C 11 C6 39 C3 24 04 29 C7   ; 0AF79 data, read by 0816b 0818e
  AF89  .byte FE 3C 22 04 FE 39 C7 7D 1B C7 24 02 00 01 C7 FE   ; 0AF89 data, read by 0816b 0818e
  AF99  .byte FC 38 22 02 FF FE 39 C6 39 83 CF FF 22 02 01 C7   ; 0AF99 data, read by 0816b 0818e
  AFA9  .byte FE 7C 30 00 FE 39 C6 39 C7 24 03 00 01 C7 FE 38   ; 0AFA9 data, read by 0816b 0818e
  AFB9  .byte 22 03 FA FA F5 F5 F5 FA FA FD 06 06 0C 0C 0C 06   ; 0AFB9 data, read by 0816b 0818e
  AFC9  .byte 06 03 F5 E5 EB DB DB ED F5 FA 0C 1C 18 38 38 1C   ; 0AFC9 data, read by 0816b
  AFD9  .byte 0C 06 5F 5F 2F AF 2F 5F 5F BF 60 60 B0 30 B0 60   ; 0AFD9 data, read by 0816b
  AFE9  .byte 60 C0 B7 B7 DB DB D7 B7 AF 6F 38 38 1C 1C 18 38   ; 0AFE9 data, read by 0816b
  AFF9  .byte 30 70 06 8E DD FD C8 80 04 36 78 F0 E1 E1 C0 83   ; 0AFF9 data, read by 0816b
  B009  .byte 07 07 C0 80 01 05 0B 1B 36 74 C0 82 0D 39 F3 E3   ; 0B009 data, read by 0816b
  B019  .byte C6 84 0F 2E 5C D8 B0 A0 41 03 EF CE 9C 18 30 23   ; 0B019 data, read by 0816b
  B029  .byte 4E 3C E8 60 20 01 33 BF 73 60 08 03 0F 1E BC 38   ; 0B029 data, read by 0816b
  B039  .byte 70 60 70 70 70 70 70 70 70 70 22 08 24 08 22 08   ; 0B039 data, read by 0816b 0818e
  B049  .byte 55 AA 55 AA 55 AA 55 AA 24 08 12 12 12 12 12 12   ; 0B049 data, read by 0816b 0818e
  B059  .byte 12 12 08 08 08 08 08 08 08 08 00 FF 00 FF 22 10   ; 0B059 data, read by 0816b 0818e
  B069  .byte FF 00 FF 22 09 3D 78 E0 C0 C0 80 80 00 80 03 1B   ; 0B069 data, read by 0816b 0818e
  B079  .byte 3B 3B 7B 7C FC F0 02 03 03 01 00 01 01 07 FB FD   ; 0B079 data, read by 0816b
  B089  .byte FD 82 7C FE FE 22 03 80 40 40 30 8F 7D 83 FF 7F   ; 0B089 data, read by 0816b 0818e
  B099  .byte 3F BF CF F0 01 01 03 03 06 0C 39 73 7E BE BD BD   ; 0B099 data, read by 0816b
  B0A9  .byte BB B7 4E 3C 00 3F FF FF FF FF 3F 00 00 00 00 00   ; 0B0A9 data, read by 0816b 08201
  B0B9  .byte 00 00 00 00 7C 6C EC DC DA E5 7D 26 38 38 78 78   ; 0B0B9 data, read by 08201 0816b
  B0C9  .byte 7C 7E 26 00 83 83 86 8F 45 A3 A0 C0 01 01 03 07   ; 0B0C9 data, read by 08201 0816b
  B0D9  .byte 83 C0 C0 00 20 40 C8 FC DE 67 DE 30 C0 80 00 C8   ; 0B0D9 data, read by 08201 0816b
  B0E9  .byte FC FE 30 00 72 74 68 AF 9F 60 1E 01 3C 38 30 70   ; 0B0E9 data, read by 08201 0816b
  B0F9  .byte 7F 1F 01 00 40 80 00 FC FE 07 DB 36 80 00 00 00   ; 0B0F9 data, read by 08201 0816b
  B109  .byte FC FE 36 00 00 00 18 3C 3C 18 00 00 00 00 18 3C   ; 0B109 data, read by 08201 0816b
  B119  .byte 3C 18 00 00 18 18 18 18 18 18 18 18 10 08 10 08   ; 0B119 data, read by 08201 0816b
  B129  .byte 10 08 10 08 0C 0C 0C 0C 18 18 18 18 08 04 08 04   ; 0B129 data, read by 08201 0816b
  B139  .byte 10 08 10 08 0C 0C 18 18 18 30 30 30 08 04 10 08   ; 0B139 data, read by 08201 0816b
  B149  .byte 10 10 20 10 1A 29 1A 03 01 0A 1E 1E FF 1A 04 01   ; 0B149 data, read by 08201 0816b 0812b 08130 (+1)
  B159  .byte 09 0F 0E 1A 02 20 50 9A 85 81 E1 1A 03 20 60 7A   ; 0B159 data, read by 08201 0816b 0818e
  B169  .byte FE 9E 07 18 23 47 4F 26 4D 8E 00 07 1F 3F 3F 1F   ; 0B169 data, read by 08201 0816b
  B179  .byte 3E 7F E0 72 FB F9 BC 2F CE 46 5F 8F D5 E6 F3 D8   ; 0B179 data, read by 08201 0816b
  B189  .byte 39 BD F8 50 B8 F8 F0 F0 D9 EE 00 A0 F0 30 C0 00   ; 0B189 data, read by 08201 0816b
  B199  .byte E0 F1 1A 06 F0 0F 1A 07 F0 47 31 3C 7E BF FC 7C   ; 0B199 data, read by 08201 0816b 0818e
  B1A9  .byte 7E 3F 0F 03 01 60 53 33 21 45 AD FF 78 BC CF F7   ; 0B1A9 data, read by 08201 0816b
  B1B9  .byte 13 BA D3 BF 87 43 F0 F8 FC FE DF CF CD 3A F4 E3   ; 0B1B9 data, read by 08201 0816b
  B1C9  .byte E0 41 BB B8 30 C1 03 1A 02 7F FE 04 02 02 1C E0   ; 0B1C9 data, read by 08201 0816b 0818e
  B1D9  .byte 00 FE FC F8 FC FC E0 1A 02 9C 06 09 14 17 0F 07   ; 0B1D9 data, read by 08201 0816b 0818e
  B1E9  .byte 00 03 01 06 0F 0F 07 1A 02 37 96 94 54 8E BF 7E   ; 0B1E9 data, read by 08201 0816b 0818e
  B1F9  .byte 34 F8 78 78 B8 7C 76 74 1A 04 02 45 F9 F8 7E 1A   ; 0B1F9 data, read by 08201 0816b 0818e
  B209  .byte 04 02 46 77 3D 1A 03 40 B4 2A 01 C1 1A 04 40 D4   ; 0B209 data, read by 08201 0818e 0816b
  B219  .byte FE BE 1F 2F 43 4F 9F 9F 9B 4D 00 10 3D 3E 7E 7E   ; 0B219 data, read by 08201 0816b
  B229  .byte 7D 3E 07 90 DD DF EF FF EE F7 F8 7F 2F 31 1E 80   ; 0B229 data, read by 08201 0816b
  B239  .byte DF CF E0 40 E0 E0 C0 A3 5C B6 00 80 C0 C0 00 40   ; 0B239 data, read by 08201 0816b
  B249  .byte A3 C9 46 23 7D 7C 7E BF F9 78 3F 1F 03 0B 0D 42   ; 0B249 data, read by 08201 0816b
  B259  .byte 47 37 7C BF FF 3F 3E C7 F7 1B 93 E0 DF D0 C1 38   ; 0B259 data, read by 08201 0816b
  B269  .byte F8 FC EF E7 E2 9D 3E F9 F8 F0 1B DC 9C 60 C1 1A   ; 0B269 data, read by 08201 0816b
  B279  .byte 03 F6 0F 3F FF 82 81 02 1C 00 F6 FF F8 7C 7E FC   ; 0B279 data, read by 08201 0818e 0816b
  B289  .byte E0 F2 1E 0D 05 0C 0B 05 03 0D 01 03 03 07 07 03   ; 0B289 data, read by 08201 0816b
  B299  .byte 00 DF BE B8 50 58 DC E8 F0 E0 C0 C0 A0 B0 B8 D0   ; 0B299 data, read by 08201 0816b
  B2A9  .byte 1A 03 01 02 14 3C 3C FF 1A 03 01 03 13 1B 0C 1A   ; 0B2A9 data, read by 08201 0816b 0818e
  B2B9  .byte 03 90 E8 14 04 08 1A 04 10 E8 F8 F0 2E 57 5B 9D   ; 0B2B9 data, read by 08201 0818e 0816b
  B2C9  .byte 9D 9A 5C 8F 11 3A 3C 7E 7E 7D 3B 7C 83 C8 EE 77   ; 0B2C9 data, read by 0816b
  B2D9  .byte 7F B6 3B FF 7C BF 17 A8 87 69 E4 03 C3 04 FA FF   ; 0B2D9 data, read by 0816b
  B2E9  .byte DF C7 E5 FA 00 C3 C5 DB 3D 3C D8 81 3E 3C E2 01   ; 0B2E9 data, read by 0816b
  B2F9  .byte 82 84 18 60 DC F8 FC FE 7C 78 E0 80 21 38 3E 3F   ; 0B2F9 data, read by 0816b
  B309  .byte 70 F7 F3 F9 1F 07 01 00 2F 4F 6F 47 FF FE 19 30   ; 0B309 data, read by 0816b
  B319  .byte FF 3F BF DF EE D9 E7 CF 00 C0 C0 E0 B9 38 B8 78   ; 0B319 data, read by 0816b
  B329  .byte F8 F0 F0 E0 40 C0 C0 80 1A 04 91 13 26 25 32 7F   ; 0B329 data, read by 0816b 0818e
  B339  .byte 7E 3C 0F 0F 1F 1E 1C 3E 3C 00 37 6F DF A0 40 E0   ; 0B339 data, read by 0816b
  B349  .byte C0 80 F8 F0 E0 C0 80 C0 80 00 F8 C4 86 7F 7E 7C   ; 0B349 data, read by 0816b
  B359  .byte 30 1A 02 38 7C 3E 3C 30 1A 07 EE F1 F8 1A 06 EE   ; 0B359 data, read by 0816b 0818e
  B369  .byte 7F 1A 02 01 01 0A 14 B0 70 1A 04 01 0B 0F AF 00   ; 0B369 data, read by 0816b 0818e
  B379  .byte 80 40 A0 20 18 3F 7E 1A 02 80 40 C0 E0 C8 9D 87   ; 0B379 data, read by 0816b 0818e
  B389  .byte 81 83 42 31 0C 03 00 7F 7F 7C 3C 0E 03 1A 02 DC   ; 0B389 data, read by 0816b 0818e
  B399  .byte FF FC 7F 1F 97 2F 27 2B CC 73 1C 07 09 1E 1F 3E   ; 0B399 data, read by 0816b
  B3A9  .byte ED 7D 0B F6 98 B0 87 CD 33 E3 F7 0F 7F 7F 78 A0   ; 0B3A9 data, read by 0816b
  B3B9  .byte D0 C8 8C 1E 26 D7 3D C0 E0 F0 F0 E0 D8 38 F3 9F   ; 0B3B9 data, read by 0816b
  B3C9  .byte C7 E0 73 7C 3C 1E 0F 7C 3F 1F 0C 03 03 01 00 DD   ; 0B3C9 data, read by 0816b
  B3D9  .byte E7 1F E7 0B 1B 1D 9D 3B FA E6 18 FC FC FE 7E F7   ; 0B3D9 data, read by 0816b
  B3E9  .byte F7 F3 F9 EF F3 CE 80 8E 0E 0E 0E 1E 0E 1A 02 4E   ; 0B3E9 data, read by 0816b 0818e
  B3F9  .byte 76 F2 62 03 02 01 00 31 21 61 01 01 01 1A 02 CB   ; 0B3F9 data, read by 0816b 0818e
  B409  .byte CA 44 46 7F 56 28 10 3C 3C 38 3C 3E 38 10 1A 06   ; 0B409 data, read by 0816b 0818e
  B419  .byte 04 0F EF 1A 06 04 06 1A 04 60 9A 25 05 1A 05 60   ; 0B419 data, read by 0816b 0818e
  B429  .byte DA FA 0B 15 25 26 66 63 D1 C8 04 0E 1E 1F 1F 1F   ; 0B429 data, read by 0816b
  B439  .byte 2F 37 FC 8F 80 CF DF 2F DF 27 3B 7C 7F 3F 2D D4   ; 0B439 data, read by 0816b
  B449  .byte E2 F8 08 10 F0 38 78 F0 30 7F F0 E0 00 F0 F0 20   ; 0B449 data, read by 0816b
  B459  .byte C0 90 1A 05 3C 43 F0 1A 06 3C 0F 31 3A 7F 79 73   ; 0B459 data, read by 0816b 0818e
  B469  .byte B3 F7 D7 0E 07 00 07 0F 4F 4F 6F FB 39 DC F9 B8   ; 0B469 data, read by 0816b
  B479  .byte BF DF 9F 1F DE 63 87 C7 C0 E0 E0 F7 E5 12 DC FC   ; 0B479 data, read by 0816b
  B489  .byte F8 F0 C8 6E 1E EC E0 C0 1A 02 30 FF FE 02 0C 10   ; 0B489 data, read by 0816b 0818e
  B499  .byte 0F 1A 02 FF 01 01 03 0F 1A 03 18 FE 1F 0E 04 04   ; 0B499 data, read by 0816b 0818e
  B4A9  .byte F8 00 E0 F8 FE F0 F8 F8 1A 02 3B 12 24 28 77 BE   ; 0B4A9 data, read by 0816b 0818e
  B4B9  .byte 4E 3C 07 0F 1F 1F 38 7C 3C 00 8F 1F 3F 40 80 1A   ; 0B4B9 data, read by 0816b
  B4C9  .byte 03 F0 E0 C0 80 1A 04 C4 8C 42 2F 59 26 18 00 38   ; 0B4C9 data, read by 0818e 0816b
  B4D9  .byte 78 3C 1E 3E 18 1A 07 10 38 38 1A 06 10 10 3C 52   ; 0B4D9 data, read by 0816b 0818e
  B4E9  .byte 99 89 8C 84 5E 5F 10 3C 7E 7F 7F 7F 22 22 1A 02   ; 0B4E9 data, read by 0816b 0818e
  B4F9  .byte 80 80 46 4F 5F F6 1A 04 80 86 8F 0F 1A 03 70 F8   ; 0B4F9 data, read by 0816b 0818e
  B509  .byte BC 9E F7 1A 04 70 78 74 0E F3 FA 73 B6 BF BF 9F   ; 0B509 data, read by 0816b 0818e
  B519  .byte 7C 4C 65 0C 69 74 76 70 0F 3C FE FE FF 7E 3F FF   ; 0B519 data, read by 0816b
  B529  .byte 67 D3 49 89 84 E3 FD 03 9F F0 78 1C 8C 64 92 EB   ; 0B529 data, read by 0816b
  B539  .byte EF E0 F0 F8 78 98 EC F4 F0 9B 9F 8F 40 20 1E 1F   ; 0B539 data, read by 0816b
  B549  .byte 1F 7F 7F 7F 3F 1F 01 1A 02 B7 FB FE 04 09 EF FF   ; 0B549 data, read by 0816b 0818e
  B559  .byte FE F8 FC FD FB F6 18 00 01 BF DF 63 3F 29 02 E7   ; 0B559 data, read by 0816b 0818e
  B569  .byte 39 7F 3F 9C C0 1A 02 18 FE 78 F8 FC FA FD F5 F5   ; 0B569 data, read by 0816b 0818e
  B579  .byte F6 80 1A 02 04 06 0E 0E 0C FC 7C 3E 1F 0F 03 1A   ; 0B579 data, read by 0816b 0818e
  B589  .byte 02 03 03 01 1A 05 7E 3F 0B 8B F4 F3 0F 07 29 02   ; 0B589 data, read by 0818e 0816b
  B599  .byte F7 77 0F 0F 07 00 E3 6F 7E 40 80 C0 80 00 1E 9E   ; 0B599 data, read by 0816b
  B5A9  .byte 80 80 00 80 1A 03 06 0F 0F 07 4F B1 4D 1A 02 06   ; 0B5A9 data, read by 0816b 0818e
  B5B9  .byte 07 1A 02 47 33 00 30 78 7F 3F 7F 8F 6F 1A 02 30   ; 0B5B9 data, read by 0816b 0818e
  B5C9  .byte 3C 07 00 3C 1E 00 30 48 9C BF FF 81 FE 1A 02 30   ; 0B5C9 data, read by 0816b 0818e
  B5D9  .byte 78 70 00 7E FF 1A 04 80 E0 FE F1 1A 07 E0 22 42   ; 0B5D9 data, read by 0816b 0818e
  B5E9  .byte 73 4A 87 7F 0F 07 1D 3D 0D 35 7A 03 06 02 5F 7F   ; 0B5E9 data, read by 0816b
  B5F9  .byte FF 7B AF FF F8 FB EB C5 C5 9C F1 83 07 37 29 03   ; 0B5F9 data, read by 0816b 0818e
  B609  .byte FC FB 57 D7 F3 FC F8 80 03 87 AF AF CF FA ED F5   ; 0B609 data, read by 0816b
  B619  .byte 35 CB F7 F7 F5 3C 1E 0E CE F6 FA FA FA F9 DD CF   ; 0B619 data, read by 0816b
  B629  .byte 60 38 1F 07 01 37 3B 3F 1F 07 1A 03 F8 DC 9F 1F   ; 0B629 data, read by 0816b 0818e
  B639  .byte 3F FF FC F0 C7 E3 E0 E0 C0 1A 03 55 57 BF 94 CE   ; 0B639 data, read by 0816b 0818e
  B649  .byte 5C 38 00 BB BB 70 78 34 38 1A 03 07 79 97 72 1D   ; 0B649 data, read by 0816b 0818e
  B659  .byte 02 1A 03 07 7F 0F 02 1A 02 58 A6 69 FD 79 97 6C   ; 0B659 data, read by 0816b 0818e
  B669  .byte 10 00 58 FE FE FE 78 10 00 CF 9F 3F 33 BF BF 5F   ; 0B669 data, read by 0816b
  B679  .byte 5F BF 7E FB FD 63 61 B2 B2 80 40 A0 DF 7E BE 4D   ; 0B679 data, read by 0816b
  B689  .byte 33 00 80 40 E0 FF 7D 36 0C BE FE FE FE FC 18 1A   ; 0B689 data, read by 0816b
  B699  .byte 02 64 24 A4 24 18 1A 03 FD 7D 9A 66 1E 3C 10 00   ; 0B699 data, read by 0818e 0816b
  B6A9  .byte FE FA 6C 18 04 10 1A 02 78 FE 47 23 21 10 10 1E   ; 0B6A9 data, read by 0816b 0818e
  B6B9  .byte 00 78 3E 1F 1F 0F 0F 0F 80 E0 70 39 1C 0E 07 E7   ; 0B6B9 data, read by 0816b
  B6C9  .byte 00 80 E0 F0 F8 FC FE FE 78 5C 8C 8E C6 76 5F 87   ; 0B6C9 data, read by 0816b
  B6D9  .byte 30 38 78 FC 7C 3C 3E 7E 3F 87 83 43 43 43 47 FF   ; 0B6D9 data, read by 0816b
  B6E9  .byte FE 7E 7E 3F 3F 3F 3F 78 0E 0E 8C CE FF FE FE FF   ; 0B6E9 data, read by 0816b
  B6F9  .byte FC FC F8 38 5A 63 53 4F 2F 47 F3 7D 7F 78 7E BF   ; 0B6F9 data, read by 0816b
  B709  .byte 17 39 7D 29 03 F5 70 CF F5 F9 E1 9D FE 7B 31 B5   ; 0B709 data, read by 0816b 0818e
  B719  .byte BB DF 29 02 BD DC EE F8 F8 29 02 DF F7 7E FF 40   ; 0B719 data, read by 0816b 0818e
  B729  .byte 20 38 FF 35 8F C1 64 8F 66 1B 1B 2F 17 16 08 7C   ; 0B729 data, read by 0816b
  B739  .byte 1C 06 06 1C 0E 08 00 EF B4 FF F9 F7 F9 90 00 1C   ; 0B739 data, read by 0816b
  B749  .byte 0F BF B7 21 90 1A 02 5F 86 D4 E8 C0 1A 03 A6 78   ; 0B749 data, read by 0816b 0818e
  B759  .byte A8 40 1A 08 0F 3F 7D E9 1A 05 0F 3F 7F 00 03 0F   ; 0B759 data, read by 0816b 0818e
  B769  .byte 19 BC FE FF BF 1A 02 03 06 0B AD 96 AB 00 C0 F0   ; 0B769 data, read by 0816b 0818e
  B779  .byte DC E6 D3 DE 50 1A 02 40 B0 5C 6E E0 E0 19 33 67   ; 0B779 data, read by 0816b 0818e
  B789  .byte 67 DA A7 66 13 0F 1F 3E 3D 65 5A 1C 0E 23 61 FD   ; 0B789 data, read by 0816b
  B799  .byte FF 43 FD DE 7E 29 02 C3 BD BF 5B 85 C1 9F BF C7   ; 0B799 data, read by 0816b 0818e
  B7A9  .byte 3F 29 02 E3 73 6C 7E FF FE 73 B1 CC CC F0 FC FE   ; 0B7A9 data, read by 0816b 0818e
  B7B9  .byte 7F DF EE FC F8 80 50 FC FE 2A 1C 80 70 9C 4E 6E   ; 0B7B9 data, read by 0816b
  B7C9  .byte BD BD 58 28 10 78 3C 1C 78 78 30 10 00 97 D7 EC   ; 0B7C9 data, read by 0816b
  B7D9  .byte BB B8 10 1A 02 0E 8F 9B 10 10 1A 03 07 CE D4 68   ; 0B7D9 data, read by 0816b 0818e
  B7E9  .byte 80 1A 03 F8 F4 A8 80 1A 08 03 0F 1F FF 1A 05 03   ; 0B7E9 data, read by 0816b 0818e
  B7F9  .byte 0F 0A 1A 04 E0 F0 C8 D7 1A 05 E0 F0 A8 1F 3C 7C   ; 0B7F9 data, read by 0816b 0818e
  B809  .byte CE 4F 4F 47 E7 07 1F 3B 71 3A 3D 3D 3D 29 02 7F   ; 0B809 data, read by 0816b 0818e
  B819  .byte 73 6F F3 29 02 2A B3 CF DE D3 ED EC 6C F0 F8 C8   ; 0B819 data, read by 0816b 0818e
  B829  .byte B0 FE 29 03 60 70 F0 C0 30 FE F5 3E B7 BF 9F 4F   ; 0B829 data, read by 0816b 0818e
  B839  .byte 23 19 07 00 5D 6C 75 39 1E 0E 1A 02 29 02 FD FD   ; 0B839 data, read by 0816b 0818e
  B849  .byte FB E5 82 01 CA 75 DA EB 67 83 01 00 FF FE F0 E0   ; 0B849 data, read by 0816b
  B859  .byte E0 C0 80 00 06 10 E0 00 C0 80 1A 02 90 58 2C 26   ; 0B859 data, read by 0816b 0818e
  B869  .byte 23 21 38 1F 00 30 18 1C 1E 1F 1F 07 50 58 58 7C   ; 0B869 data, read by 0816b
  B879  .byte D8 EE D6 F7 00 30 30 38 78 1C 8C CE 7C BE 9A AE   ; 0B879 data, read by 0816b
  B889  .byte 6E 3F 5A 5D 03 79 71 59 19 13 31 3A FF 7B 33 37   ; 0B889 data, read by 0816b
  B899  .byte 7F FF 3F 33 C7 EF ED E2 F2 F3 E2 ED C0 F8 FC FE   ; 0B899 data, read by 0816b
  B8A9  .byte FE FE 29 02 80 C0 48 8C 8C CC BE 54 7B 7C 3F 8E   ; 0B8A9 data, read by 0816b 0818e
  B8B9  .byte 70 3F 1F 0F FD 29 02 7F 3F 1E 0F 03 CB FF E3 FB   ; 0B8B9 data, read by 0816b 0818e
  B8C9  .byte 7F 7B B5 BA B7 DF FF DE DE DE 6B 75 F8 F8 FC BE   ; 0B8C9 data, read by 0816b
  B8D9  .byte FF DF EA FC 60 20 F0 7C 2A 3E 14 20 EF 2F 5D F2   ; 0B8D9 data, read by 0816b
  B8E9  .byte CB B7 41 00 18 1F 3F 7F 77 41 1A 02 FF F3 ED F0   ; 0B8E9 data, read by 0816b 0818e
  B8F9  .byte E0 80 1A 02 6E 1D F0 60 1A 04 0A 0B 03 0F 1E 3C   ; 0B8F9 data, read by 0816b 0818e 0812b 08130
  B909  .byte 38 F0 E0 E0 00 01 07 0F 1F 1F 7F 7F F8 FC 04 06   ; 0B909 data, read by 0816b
  B919  .byte 02 F3 19 0F 00 E0 F8 F8 FC 0C E6 F0 C0 C0 C0 80   ; 0B919 data, read by 0816b
  B929  .byte CA 55 7F 3F 7F 7F 7F 7F 35 2A 0A 02 0F 17 2F 57   ; 0B929 data, read by 0816b 0818e
  B939  .byte AF FE FE FC F0 E8 D0 A8 50 0A 03 03 07 0F 1E 3C   ; 0B939 data, read by 0816b 0818e
  B949  .byte 79 F3 E7 01 03 07 0F 1F 3F 7F FF CE 9C 38 70 E0   ; 0B949 data, read by 0816b
  B959  .byte C0 80 00 0B 08 03 07 0F 1E 3C 79 FF 39 01 03 07   ; 0B959 data, read by 0816b 0818e
  B969  .byte 0F 1F 06 00 E7 CE 9C 38 70 E0 E0 F0 0C 0B 05 1F   ; 0B969 data, read by 0816b 0818e
  B979  .byte 0F F3 38 66 42 42 66 3C 1C 33 FF FD FD FD B9 C3   ; 0B979 data, read by 0816b
  B989  .byte FF FE 04 09 0F 1F 1F 3F 3F 27 03 07 07 0E 0E 1C   ; 0B989 data, read by 0816b
  B999  .byte 1C 1C E6 C8 F8 F1 F2 E2 E5 24 9F 3F 3F 7E 7D FD   ; 0B999 data, read by 0816b
  B9A9  .byte FB FB 02 01 E0 18 C4 E4 F2 3E FD FE 1F E7 FB FB   ; 0B9A9 data, read by 0816b
  B9B9  .byte FD F9 21 21 B3 9E 4E 59 50 50 FE FE 5C 61 BF BF   ; 0B9B9 data, read by 0816b
  B9C9  .byte BF BF 27 27 27 13 13 09 09 04 1C 1C 1C 0E 0E 07   ; 0B9C9 data, read by 0816b
  B9D9  .byte 07 03 24 24 22 93 91 C8 C8 E4 FB FB FD 7C 7E 3F   ; 0B9D9 data, read by 0816b
  B9E9  .byte 3F 9F 06 0E 3C FC F8 E1 01 02 F9 F1 C3 03 07 1E   ; 0B9E9 data, read by 0816b
  B9F9  .byte FE FC 59 4F 42 9C E0 0A 03 AE B0 BC 60 0A 04 CE   ; 0B9F9 data, read by 0816b 0818e
  BA09  .byte 3F 16 17 16 17 16 17 39 00 0F 0F 0F 0F 0F 0F 43   ; 0BA09 data, read by 0816b
  BA19  .byte FE 3A 3A 3A 3A 3A 3A FC 00 C4 C4 C4 C4 C4 C4 B1   ; 0BA19 data, read by 0816b
  BA29  .byte B9 B1 B9 B1 B9 B1 B9 7E 7E 7E 7E 7E 7E 7E 7E 8D   ; 0BA29 data, read by 0816b
  BA39  .byte CD 8D CD 8D CD 8D CD F2 F2 F2 F2 F2 F2 F2 F2 3C   ; 0BA39 data, read by 0816b
  BA49  .byte 4F 5E BC BF BC 7C 1F 0F 30 3F 5F 60 7F 1F 00 7C   ; 0BA49 data, read by 0816b
  BA59  .byte FE 7E 3F FF 1F 1E F8 80 00 80 C0 00 E0 E0 00 03   ; 0BA59 data, read by 0816b
  BA69  .byte 07 0F 1F 3F 7F FE 7C 00 03 07 0F 1F 3E 7C 0A 02   ; 0BA69 data, read by 0816b 0818e
  BA79  .byte 07 0F 1F 3F 7E FC 78 0A 02 07 0F 1E 3C 78 0A 03   ; 0BA79 data, read by 0816b 0818e
  BA89  .byte 0E 1F 3E 7C F8 70 0A 03 0E 1C 38 70 0A 04 18 3C   ; 0BA89 data, read by 0816b 0818e
  BA99  .byte 78 F0 60 0A 04 18 30 60 0A 05 20 70 E0 40 0A 05   ; 0BA99 data, read by 0816b 0818e
  BAA9  .byte 20 40 0A 06 38 4E 85 0A 06 08 14 08 10 11 23 23   ; 0BAA9 data, read by 0816b 0818e
  BAB9  .byte 23 47 C1 02 06 06 0C 0C 1C 38 3E 09 05 25 75 65   ; 0BAB9 data, read by 0816b
  BAC9  .byte 6A FA 3A 48 C4 C4 84 84 88 08 CC F0 BC 8F 43 A1   ; 0BAC9 data, read by 0816b
  BAD9  .byte 9F 41 27 4F 73 7C 3F 5F 6C 3F 1E 09 CE FF 39 1A   ; 0BAD9 data, read by 0816b
  BAE9  .byte FC 1E 7A FE 38 C6 FE FC C0 F0 E4 FE 46 43 21 11   ; 0BAE9 data, read by 0816b
  BAF9  .byte 10 09 05 09 3D 3E 1F 0F 0F 07 02 F6 36 1E 0F 8F   ; 0BAF9 data, read by 0816b
  BB09  .byte 83 4D 2D 4C EC F4 FA 7A 7C 3E 16 02 04 34 34 34   ; 0BB09 data, read by 0816b 0812b 08130
  BB19  .byte 34 34 34 34 34 18 18 18 18 18 18 18 18 1A 1A 1A   ; 0BB19 data, read by 0816b
  BB29  .byte 1A 34 34 34 34 0C 0C 0C 0C 18 18 18 18 1A 1A 34   ; 0BB29 data, read by 0816b
  BB39  .byte 34 34 68 68 68 0C 0C 18 18 18 30 30 30 34 72 E1   ; 0BB39 data, read by 0816b
  BB49  .byte E1 7E 02 03 18 3C 7E 7E 02 04 1A 1A 34 34 68 68   ; 0BB49 data, read by 0816b 0818e
  BB59  .byte D0 D0 0C 0C 18 18 30 30 60 60 00 03 0F 3C F3 CC   ; 0BB59 data, read by 0816b
  BB69  .byte 30 C0 02 02 03 0F 3C F0 C0 00 06 08 0F 0F 16 2C   ; 0BB69 data, read by 0816b 0818e
  BB79  .byte 58 B3 01 07 07 00 06 0C 18 30 32 1D BE FA F3 39   ; 0BB79 data, read by 0816b
  BB89  .byte 19 99 CC F6 FB FD 3C 1E 0E 0E 58 77 59 82 71 2E   ; 0BB89 data, read by 0816b
  BB99  .byte 19 07 08 10 02 06 86 06 0C 1F 3C 40 80 00 03 03   ; 0BB99 data, read by 0816b 0818e
  BBA9  .byte 07 0C 02 04 01 03 01 03 FF 00 FF 01 05 03 02 01   ; 0BBA9 data, read by 0816b 0818e 0812b 08130
  BBB9  .byte 07 30 F8 48 30 01 05 30 70 01 03 C0 F0 3F C7 38   ; 0BBB9 data, read by 0818e 0816b
  BBC9  .byte 07 01 03 C0 F8 3F 07 01 03 02 0F FC F2 0C F0 01   ; 0BBC9 data, read by 0816b 0818e
  BBD9  .byte 03 02 0E FC F0 00 06 09 06 06 3F C0 06 06 3F C0   ; 0BBD9 data, read by 0818e 0816b 0812b 08130
  BBE9  .byte 07 3C 60 80 06 04 07 3C 60 80 06 04 01 02 04 08   ; 0BBE9 data, read by 0816b 0818e
  BBF9  .byte 10 20 40 40 01 02 04 08 10 20 40 40 80 80 40 40   ; 0BBF9 data, read by 0816b
  BC09  .byte 40 20 20 20 80 80 40 40 40 20 20 20 18 3C 5C 7C   ; 0BC09 data, read by 0816b
  BC19  .byte FF 3C 3C 18 18 3C 54 70 FF 34 3C 18 01 03 07 0F   ; 0BC19 data, read by 0816b
  BC29  .byte 1F 2E 76 7B 00 01 03 07 0F 1F 3B 3E 80 40 A0 50   ; 0BC29 data, read by 0816b
  BC39  .byte 28 2C 32 CA 00 80 40 A0 D0 D0 CC 34 BA BA BA BA   ; 0BC39 data, read by 0816b
  BC49  .byte BA BA BA BA 7F 7F 7F 7F 7F 7F 7F 7F 05 05 05 05   ; 0BC49 data, read by 0816b
  BC59  .byte 05 05 05 05 FA FA FA FA FA FA FA FA 73 F3 73 73   ; 0BC59 data, read by 0816b 08201
  BC69  .byte 73 73 71 F8 73 F3 73 73 73 73 71 F8 B7 B7 B7 B7   ; 0BC69 data, read by 08201 0816b
  BC79  .byte B7 B7 E7 00 B7 B7 B7 B7 B7 B7 E7 00 C0 60 60 C0   ; 0BC79 data, read by 08201 0816b
  BC89  .byte 00 00 00 00 C0 60 60 C0 00 00 00 00 4E CE CA 4A   ; 0BC89 data, read by 08201 0816b
  BC99  .byte 4A 4A EE EE 4E CE CA 4A 4A 4A EE EE EE EE 2A EA   ; 0BC99 data, read by 08201 0816b
  BCA9  .byte EA 8A EE EE EE EE 2A EA EA 8A EE EE EE EE 8A EA   ; 0BCA9 data, read by 08201 0816b
  BCB9  .byte EA 2A EE EE EE EE 8A EA EA 2A EE EE EE EE 28 2E   ; 0BCB9 data, read by 08201 0816b
  BCC9  .byte 2E 22 2E 2E EE EE 28 2E 2E 22 2E 2E EE EE AA AA   ; 0BCC9 data, read by 08201
  BCD9  .byte AA AA EE EE EE EE AA AA AA AA EE EE E0 E0 A0 A0   ; 0BCD9 data, read by 08201
  BCE9  .byte A0 A0 E0 E0 E0 E0 A0 A0 A0 A0 E0 E0 7E 81 81 81   ; 0BCE9 data, read by 08201
  BCF9  .byte 81 81 81 7E 00 7E 7E 7E 7E 7E 7E 00 00 00 00 00   ; 0BCF9 data, read by 08201
  BD09  .byte 08 1C 1F 3F 00 00 00 00 00 08 04 1F 7F FB FF FF   ; 0BD09 data, read by 08201
  BD19  .byte FF FF FF 4C 33 77 5F 5F 5F 50 4C 00 00 00 00 00   ; 0BD19 data, read by 08201
  BD29  .byte 48 FC FF FF 00 00 00 00 00 48 44 5F FF FB FF 7F   ; 0BD29 data, read by 08201
  BD39  .byte 3F 3F 78 30 53 73 7F 3F 1F 08 30 00 00 00 80 60   ; 0BD39 data, read by 08201
  BD49  .byte 2C 07 0E 16 00 00 80 66 3F 7B F2 60 00 00 80 60   ; 0BD49 data, read by 08201
  BD59  .byte 24 1E 2E 16 24 76 F6 7E 1C 02 02 00 00 00 00 00   ; 0BD59 data, read by 08201
  BD69  .byte FF 00 00 00 00 00 00 FF 00 00 00 00 01 01 03 0F   ; 0BD69 data, read by 08201
  BD79  .byte FF 3F 3F 1F 01 01 03 0F FF 3F 3F 1F 00 00 02 8C   ; 0BD79 data, read by 08201
  BD89  .byte F8 F8 F0 F8 00 00 02 8C F8 F8 F0 F8 1F 1F 3F 3F   ; 0BD89 data, read by 08201
  BD99  .byte 63 81 00 00 1F 1F 3F 3F 63 81 00 00 F8 FC FF F8   ; 0BD99 data, read by 08201
  BDA9  .byte E0 C0 80 80 F8 FC FF F8 E0 C0 80 80 00 00 0E 1F   ; 0BDA9 data, read by 08201
  BDB9  .byte FF 0E 00 00 00 00 0E FF 1F 0E 00 00 00 00 00 FF   ; 0BDB9 data, read by 08201
  BDC9  .byte 00 FF 00 00 00 00 FF FF FF 00 00 00 00 38 60 41   ; 0BDC9 data, read by 08201
  BDD9  .byte 41 03 06 1C 3C 7E FF FE FE FC 78 20 00 0C 1E ED   ; 0BDD9 data, read by 08201
  BDE9  .byte 09 F9 12 0C 00 00 0C FE FE 0E 0C 00 18 3C FE 22   ; 0BDE9 data, read by 08201
  BDF9  .byte E2 62 44 38 00 18 FC FC 3C 3C 38 00               ; 0BDF9 data, read by 08201
  BE05  .byte 00 DC 1E B3 61 62 24 18 00 C0 FC 7E 7C 3C 18 00   ; 0BE05
  BE15  .byte 20 8C 5E 73 71 71 3A 1C E0 70 3C 3E 3E 3E 1C 00   ; 0BE15
  BE25  .byte 28 08 7C E2 C2 64 38 00 30 30 38 7C 7C 38 00 00   ; 0BE25 data, read by 08201
  BE35  .byte C0 20 90 48 24 12 09 04 C0 E0 70 38 1C 0E 07 03   ; 0BE35 data, read by 08201
  BE45  .byte 00 F0 0F F0 0F 00 00 00 00 F0 FF 0F 00 00 00 00   ; 0BE45 data, read by 08201
  BE55  .byte 27 27 67 6F 6F 6F 7F 3F 1F 1F 1F 1F 1F 1F 0F 0F   ; 0BE55 data, read by 08201
  BE65  .byte FD F8 F8 F8 F8 F1 F2 E7 FE FC FC F8 F0 F1 F3 F2   ; 0BE65 data, read by 08201
  BE75  .byte 27 27 67 6F 6F 6F 7F 7F 1F 1F 1F 1F 1F 1F 0F 0F   ; 0BE75 data, read by 08201
  BE85  .byte FF FC FA FE F8 F5 FA F7 FE FE FC F8 F8 F9 F1 F2   ; 0BE85 data, read by 08201
  BE95  .byte FD F9 F8 F8 F8 F1 F2 E7 FE FC FC F8 F0 F1 F3 F2   ; 0BE95 data, read by 08201
  BEA5  .byte FD FD FA F8 F4 F9 F2 F7 FE FE FC FC F8 F1 F3 F2   ; 0BEA5 data, read by 08201
  BEB5  .byte 3F 0F 0F 17 07 03 0B 03 0F 1F 1F 0F 0F 07 07 07   ; 0BEB5 data, read by 08201
  BEC5  .byte F0 E5 CC EE C8 C5 93 89 E7 E7 E6 C4 C4 CB 89 14   ; 0BEC5
  BED5  .byte 3F 2F 0F 17 07 03 0B 03 0F 1F 1F 0F 0F 0F 07 07   ; 0BED5
  BEE5  .byte E4 F5 E5 CE C8 E5 93 89 F3 E7 E6 E4 E4 CB C9 14   ; 0BEE5
  BEF5  .byte F0 E5 CB EC C7 C8 92 8F E7 E6 E4 C4 C8 C7 8C 10   ; 0BEF5
  BF05  .byte 7F 2F 2F 17 7F 2B 0B 03 0F 1F 1F 0F 07 07 07 07   ; 0BF05
  BF15  .byte E0 F5 CC CE E8 C5 93 9D F7 E7 E6 E4 C4 CB 89 04   ; 0BF15
  BF25  .byte 3F 2F 0F 17 67 23 0B 03 0F 1F 1F 0F 0F 07 07 07   ; 0BF25
  BF35  .byte 1F 1F 1E 0E 0F 0F 02 0C 0F 3F 3F 1F 1F 1F 1B 1F   ; 0BF35
  BF45  .byte 80 E0 FE FC 7C 7C FE FE C1 F0 FC FE FE FE 7C FC   ; 0BF45
  BF55  .byte 3F 2F 1E 0E 0F 0F 02 08 07 1F 3F 1F 1F 1F 1B 1F   ; 0BF55
  BF65  .byte 80 E6 FE FD 7D 7D FD FF C1 F0 FC FE FE FE 7E FC   ; 0BF65
  BF75  .byte 1F 1F 1E 0E 0F 0F 02 0E 0F 3F 3F 1F 1F 1F 1B 1D   ; 0BF75
  BF85  .byte 87 E0 FE FC 7C 7C FE FE C0 F0 FC FE FE FE 7C FC   ; 0BF85
  BF95  .byte 1F 1E 1E 0E 0F 06 0F 0F 0F 3F 3F 1F 1F 1B 1D 1F   ; 0BF95
  BFA5  .byte 91 E0 FC 7F 7F FF FD FE E0 FC FE FE FE FE FE FC   ; 0BFA5
  BFB5  .byte 0F 0F 0F 00 1E 0F 1E 1F 1F 1F 1F 1F 01 1E 01 00   ; 0BFB5
  BFC5  .byte F8 F8 F4 F0 68 70 D0 40 FC FC F8 F8 F0 E0 E0 E0   ; 0BFC5
  BFD5  .byte 0F 0F 0F 00 1E 0F 0F 00 1F 1F 1F 1F 01 10 16 0F   ; 0BFD5
  BFE5  .byte FE F8 FC F0 68 60 D0 A0 FC FC F8 F8 F0 F0 E0 C0   ; 0BFE5
  BFF5  .byte 0F 0F 0F 00 1E 0F 0E 00 1F 1F 1F 1F 01 1E 17 0F   ; 0BFF5
  C005  .byte F8 FC F0 F8 60 50 C0 E0 FC F8 F8 F0 F0 E0 E0 C0   ; 0C005
  C015  .byte 0F 0F 0F 00 1E 0F 06 01 1F 1F 1F 1F 01 1E 01 00   ; 0C015
  C025  .byte F8 F8 F4 F0 78 60 F0 D0 FC FC F8 F8 F0 F0 E0 E0   ; 0C025
  C035  .byte 0F 03 10 1F 3F 3D 32 1C 1F 1F 0F 00 1E 1E 0D 03   ; 0C035
  C045  .byte FA F4 38 A0 70 40 C0 E0 FC F8 F0 70 E0 E0 E0 C0   ; 0C045
  C055  .byte 1E 00 0D 0F 1F 1E 1E 01 07 1F 1F 1F 1F 1F 1F 1E   ; 0C055
  C065  .byte E0 A0 80 40 00 80 00 00 C0 C0 C0 80 80 00 00 00   ; 0C065
  C075  .byte 1F 03 1F 1F 1E 01 18 00 01 1F 1F 1F 1F 1E 00 00   ; 0C075
  C085  .byte C0 00 00 80 00 00 00 00 80 80 80 00 00 00 00 00   ; 0C085
  C095  .byte 01 0F 1F 1F 1E 07 12 00 1F 1F 1F 1F 1F 1E 0C 00   ; 0C095
  C0A5  .byte C0 C0 00 80 00 00 00 00 80 80 80 00 00 00 00 00   ; 0C0A5
  C0B5  .byte 00 06 1E 01 0F 1F 1F 1E 01 01 01 1F 1F 1F 1F 1F   ; 0C0B5
  C0C5  .byte C0 E0 E0 80 80 40 00 80 E0 C0 C0 C0 C0 80 80 00   ; 0C0C5
  C0D5  .byte 01 17 1F 1F 1E 07 12 00 1F 1F 1F 1F 1F 1E 0C 00   ; 0C0D5
  C0E5  .byte 12 00 18 18 18 28 28 20 0C 00 00 00 00 10 10 10   ; 0C0E5
  C0F5  .byte 00 00 00 00 02 03 03 03 00 00 00 00 00 00 00 00   ; 0C0F5
  C105  .byte 10 18 18 08 08 20 20 20 00 00 00 10 10 10 10 10   ; 0C105
  C115  .byte 1E 01 12 00 18 18 18 28 1F 1E 0C 00 00 00 00 10   ; 0C115
  C125  .byte 09 16 09 05 7C BF 5F 09 06 7C 3F 00 60 F8 7E 1F   ; 0C125 data, read by 0812b 08130 0816b 0818e
  C135  .byte 0F 10 0F 09 02 60 18 0E 07 0F 00 02 01 1E 16 02   ; 0C135 data, read by 0816b 0818e
  C145  .byte 80 FF 00 01 00 01 1F 16 02 09 02 FF 7F 16 02 07   ; 0C145 data, read by 0816b 0818e
  C155  .byte 17 F6 0F F8 16 04 EE 0D 00 F0 FC FE FC F8 74 04   ; 0C155 data, read by 0816b 0818e
  C165  .byte F8 00 F0 FC 78 E0 88 F8 00 18 3E 1F 0F 0F 0F 10   ; 0C165 data, read by 0816b
  C175  .byte 0F 00 18 0E 07 07 07 0F 00 82 16 02 3F C7 38 07   ; 0C175 data, read by 0816b 0818e
  C185  .byte 00 01 80 16 02 3F 07 09 02 38 7E 3F 0F 07 06 05   ; 0C185 data, read by 0816b 0818e
  C195  .byte 02 00 38 0E 07 03 03 02 00 01 1E 7F FF FE C1 3E   ; 0C195 data, read by 0816b
  C1A5  .byte C0 00 01 0F 7F FF FE C0 09 02 E1 7B BF BF 5F DF   ; 0C1A5 data, read by 0816b 0818e
  C1B5  .byte FF 09 02 E1 7B 7F 3F 3F FF 7E 16 02 FE FE FE EC   ; 0C1B5 data, read by 0816b 0818e
  C1C5  .byte E8 00 7E FE FC B8 F4 D0 10 10 38 78 DC 8D 07 02   ; 0C1C5 data, read by 0816b
  C1D5  .byte 00 10 38 78 DC 8D 07 02 09 02 3C 42 42 42 42 3C   ; 0C1D5 data, read by 0816b 0818e
  C1E5  .byte 09 02 3C 42 42 42 42 3C 00 FF 1F EB 2C 5A 31 09   ; 0C1E5 data, read by 0816b 0818e
  C1F5  .byte 02 FE FF 1F 1B 31 09 03 E8 F4 F4 FA 7A BA 7C 18   ; 0C1F5 data, read by 0818e 0816b
  C205  .byte 10 08 08 84 C4 64 18 09 05 41 E8 5C 08 09 05 40   ; 0C205 data, read by 0816b 0818e
  C215  .byte 08 09 04 40 E2 4F 1E 08 09 04 40 02 08 09 04 01   ; 0C215 data, read by 0816b 0818e
  C225  .byte 6B FF 7F 35 09 04 01 6A 35 09 04 10 B2 FF FE 54   ; 0C225 data, read by 0816b 0818e
  C235  .byte 09 04 10 A2 54 09 02 02 17 3A 7F FF 7F 15 09 02   ; 0C235 data, read by 0816b 0818e
  C245  .byte 02 10 0A 6A 15 09 03 4C FE FF F1 F8 50 09 03 4C   ; 0C245 data, read by 0816b 0818e
  C255  .byte 92 A0 50 00 0F 1F 33 6C D3 60 09 03 0F 1F 33 60   ; 0C255 data, read by 0816b 0818e
  C265  .byte 09 03 C0 E0 F1 3F DF 2E 11 0E 00 C0 E0 F1 3F 1F   ; 0C265 data, read by 0816b 0818e
  C275  .byte 0E 00 E0 F8 FC 7E 3F 1D C2 3C 00 E0 F8 F4 EE FE   ; 0C275 data, read by 0816b
  C285  .byte 3C 09 03 41 F3 5F 2E 11 0E 09 03 41 33 1F 0E 00   ; 0C285 data, read by 0816b 0818e
  C295  .byte 1C 3E 7F F7 EB 95 62 81 00 1C 3E 7F F7 E3 81 09   ; 0C295 data, read by 0816b
  C2A5  .byte 02 07 1F 3F 7E 78 B7 A9 09 02 07 1F 3F 3F 78 70   ; 0C2A5 data, read by 0818e 0816b
  C2B5  .byte 00 80 C0 F0 78 7C 3E 3E 09 02 80 C0 F0 F8 FC F4   ; 0C2B5 data, read by 0816b 0818e
  C2C5  .byte B9 58 5E 2F 13 0C 03 00 70 30 38 1E 0F 03 09 02   ; 0C2C5 data, read by 0816b 0818e
  C2D5  .byte 3A 84 78 F0 D0 20 C0 00 DC 78 10 20 E0 C0 09 02   ; 0C2D5 data, read by 0816b 0818e
  C2E5  .byte 03 17 1F 7F FF 7F FF FD 03 17 18 60 C0 40 87 8D   ; 0C2E5 data, read by 0816b
  C2F5  .byte 00 D0 F0 FA FC FF FE FE 00 D0 70 3A 0C 07 02 0A   ; 0C2F5 data, read by 0816b
  C305  .byte FB 7C FF 3F 5F 1F 0B 02 8B 4C C7 21 50 1C 0B 02   ; 0C305 data, read by 0816b
  C315  .byte 63 F7 5D 5F 7F E0 DC E3 00 63 37 3F 3F 7F E3 00   ; 0C315 data, read by 0816b
  C325  .byte 70 FC E2 DB DE E1 FE 7F 00 70 FC FE F5 FE C0 E2   ; 0C325 data, read by 0816b
  C335  .byte 1F EF 1C 09 05 F2 1E 09 0C 08 1C 09 07 08 1F 1F   ; 0C335 data, read by 0816b 0818e
  C345  .byte 17 33 3B 18 04 03 0C 0D 0F 1F 17 07 03 00 03 07   ; 0C345 data, read by 0816b
  C355  .byte 2F 7F BF 58 30 36 00 03 07 2F 7F 3F 1F 19 39 70   ; 0C355 data, read by 0816b
  C365  .byte 20 09 05 10 20 09 07 01 07 1F 3F 7F FF 7F 09 02   ; 0C365 data, read by 0816b 0818e
  C375  .byte 01 07 1F 3F 7F 3F 0F 1F 9F 9F 16 04 00 0F 0F 0F   ; 0C375 data, read by 0816b 0818e
  C385  .byte 9F 16 02 F0 00 0C 1F 3F 3F 7F 7F FF 09 02 0C 1F   ; 0C385 data, read by 0816b 0818e
  C395  .byte 1F 3F 3F 7F 7F FF FC F0 E0 C0 C0 80 3F 7C F0 E0   ; 0C395 data, read by 0816b
  C3A5  .byte C0 80 80 00 3F 1F 0F 7F 16 04 1F 07 07 0F 7E 7E   ; 0C3A5 data, read by 0816b 0818e
  C3B5  .byte 7E 7E 09 02 03 07 23 73 16 02 09 03 03 01 21 73   ; 0C3B5 data, read by 0816b 0818e
  C3C5  .byte FF 3C FE FE 16 05 00 3C FC FC 16 03 F0 0F 1F 3F   ; 0C3C5 data, read by 0816b 0818e
  C3D5  .byte 1F 0F 4F 16 02 07 0F 1F 0F 07 07 4F 7E FF FE F8   ; 0C3D5 data, read by 0816b 0818e
  C3E5  .byte E0 C0 80 80 00 FE F8 E0 C0 80 09 03 7F 7F 7F 16   ; 0C3E5 data, read by 0816b 0818e
  C3F5  .byte 03 7F 1F 3F 3F 3F 7F 7E 7E 0E 0E 09 03 07 17 2B   ; 0C3F5 data, read by 0818e 0816b
  C405  .byte 55 AA 09 04 0B 15 2A 55 09 02 70 FC FE C2 01 0D   ; 0C405 data, read by 0816b 0818e
  C415  .byte 09 03 70 FC FC FE FE 2A 35 4A 67 5F 76 E5 A5 15   ; 0C415 data, read by 0816b 0818e
  C425  .byte 0A 35 18 20 0D 1E 5E 46 A6 40 A0 C1 3F 82 81 BF   ; 0C425 data, read by 0816b
  C435  .byte 5D BF 5F 3E C0 7F 7F C8 08 04 3C D6 D6 D3 D3 70   ; 0C435 data, read by 0816b
  C445  .byte F0 F8 C8 2C 6C EE 6E D2 B3 CB 67 70 9C 9F 8C 2F   ; 0C445 data, read by 0816b
  C455  .byte 4E 34 18 0F 63 60 73 A3 E3 E3 C0 01 00 FF 3E DC   ; 0C455 data, read by 0816b
  C465  .byte 9C 1C 3F 16 02 00 C5 EF ED F1 FE 60 E0 90 90 36   ; 0C465 data, read by 0816b 0818e
  C475  .byte 32 6E E0 C0 00 60 60 8E 87 43 41 20 10 0F 03 71   ; 0C475 data, read by 0816b
  C485  .byte 78 3C 3E 1F 0F 09 02 3B 1F 0F 06 80 40 3F 0F C4   ; 0C485 data, read by 0816b 0818e
  C495  .byte E1 F2 F9 7F 3F 09 02 EF DE 9E 24 48 90 60 80 D6   ; 0C495 data, read by 0816b 0818e
  C4A5  .byte AC 6C D8 B0 60 80 09 02 03 1F BF 16 02 7C 01 09   ; 0C4A5 data, read by 0816b 0818e
  C4B5  .byte 02 03 1F BF 16 02 FE 06 BF F7 F6 CF 01 FE FF 00   ; 0C4B5 data, read by 0818e 0816b
  C4C5  .byte 06 BA AD FE FF 01 FE 00 70 8C 72 FD FD 3D FA 09   ; 0C4C5 data, read by 0816b
  C4D5  .byte 02 70 FC 7E BE DE 3C 63 B7 5F 5F 4F 80 1C E3 00   ; 0C4D5 data, read by 0818e 0816b
  C4E5  .byte 63 37 3F 3F 7F E3 00 41 80 80 40 20 18 07 00 BF   ; 0C4E5 data, read by 0816b
  C4F5  .byte 7F 7F 3F 1F 07 09 02 FC F9 66 18 60 80 09 02 FF   ; 0C4F5 data, read by 0816b 0818e
  C505  .byte FE F8 E0 80 09 03 FF FC 7E F8 F4 F8 E0 90 23 84   ; 0C505 data, read by 0816b 0818e
  C515  .byte 6E D8 14 38 E0 90 5C 5A 5C 5A 5C 5A 5C 5A 3F 3F   ; 0C515 data, read by 0816b
  C525  .byte 3F 3F 3F 3F 3F 3F 5E 3E 1E 3E 1E 3E 1E 3E A0 C0   ; 0C525 data, read by 0816b
  C535  .byte E0 C0 E0 C0 E0 C0 BF B8 B4 B8 B4 B8 B4 FF 7F 7F   ; 0C535 data, read by 0816b
  C545  .byte 7F 7F 7F 7F 7F 00 E1 3F 1F 3F 1F 3F 1F FF FE C0   ; 0C545 data, read by 0816b
  C555  .byte E0 C0 E0 C0 E0 09 05 1E 21 4F 93 09 05 1E 3F 7E   ; 0C555 data, read by 0816b 0818e
  C565  .byte 09 04 78 84 3E 4F 09 05 78 FC FA 20 70 BF BC BF   ; 0C565 data, read by 0816b 0818e
  C575  .byte BF 9F 9F 00 20 70 7F 7F 7F 7C 7B 12 11 E9 39 CC   ; 0C575 data, read by 0816b
  C585  .byte E0 F1 FF 0F 0F 07 C7 F3 FF 1F FF D8 B8 FC FE FF   ; 0C585 data, read by 0816b
  C595  .byte DE EC E8 60 F0 B8 9C DE EC F0 F0 9F 8B 44 23 10   ; 0C595 data, read by 0816b
  C5A5  .byte 0C 03 00 78 77 3B 1C 0F 03 09 02 FF 5F 27 18 87   ; 0C5A5 data, read by 0816b 0818e
  C5B5  .byte 60 18 07 C7 BF DF E7 78 1F 07 00 F9 B9 B1 62 82   ; 0C5B5 data, read by 0816b
  C5C5  .byte 04 18 E0 BE DE DE BC 7C F8 E0 09 03 0F 30 4B 9B   ; 0C5C5 data, read by 0816b 0818e
  C5D5  .byte BF BE 09 03 0F 3F 7D 7F 7F 09 03 C0 E0 B0 BF 7F   ; 0C5D5 data, read by 0816b 0818e
  C5E5  .byte 09 04 C0 40 F0 FF 20 77 B8 BF BF 9F 4F 47 00 20   ; 0C5E5 data, read by 0816b 0818e
  C5F5  .byte 77 7F 7F 7E 3D 3E 02 02 02 FA 1C C5 E1 FF 01 01   ; 0C5F5 data, read by 0816b
  C605  .byte 01 01 E3 FB FF 1F 7D FA FD EA EB EB ED EA FF FD   ; 0C605 data, read by 0816b
  C615  .byte F2 F5 F4 F4 F2 F1 FF 02 FC B8 50 A8 DC E8 FE FC   ; 0C615 data, read by 0816b
  C625  .byte 00 10 80 40 28 90 7F 3F 1F 8D 42 21 18 07 EF F1   ; 0C625 data, read by 0816b
  C635  .byte EF 73 7D 1E 07 00 FE FE FC E8 10 E1 06 F8 EF F7   ; 0C635 data, read by 0816b
  C645  .byte F7 F7 EF 1E F8 00 5E 49 46 40 80 09 03 89 86 80   ; 0C645 data, read by 0816b 0818e
  C655  .byte 80 09 05 01 03 3D 7F E3 46 3B 09 02 01 03 3B 7F   ; 0C655 data, read by 0816b 0818e
  C665  .byte 3B 09 02 80 C0 7C 62 63 7E DC 09 03 80 9C 9E 9C   ; 0C665 data, read by 0816b 0818e
  C675  .byte 00 01 02 03 07 0C 1C 1F 0E 00 01 01 00 07 0F 0E   ; 0C675 data, read by 0816b
  C685  .byte 04 18 FC E4 B8 B0 B0 70 E0 00 18 98 C0 C0 40 80   ; 0C685 data, read by 0816b
  C695  .byte 00 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18   ; 0C695 data, read by 0816b
  C6A5  .byte 18 2A 2B 07 1F 3F 3F 7F 7F 7F FF 00 04 1E 1F 3E   ; 0C6A5 data, read by 0816b 0812b 08130
  C6B5  .byte 3C 38 7C F0 CF E3 F1 E3 C7 CF C7 00 70 3F 1F 3F   ; 0C6B5 data, read by 0816b
  C6C5  .byte 7F FF 7F F0 FC FF FD FA C4 38 C0 80 F0 FC FE FC   ; 0C6C5 data, read by 0816b
  C6D5  .byte F8 C0 00 9F 60 5F 42 FC 70 2A 02 7E 1F 20 3C 70   ; 0C6D5 data, read by 0816b 0818e
  C6E5  .byte 2A 03 E0 03 FC 2A 05 3F FC 2A 08 02 09 01 11 12   ; 0C6E5 data, read by 0816b 0818e
  C6F5  .byte 22 00 0F 1D 3E 3E 3E 3D 7D 22 22 25 05 45 45 43   ; 0C6F5 data, read by 0816b
  C705  .byte 8B 7D 7D 7A FA FA FA FC F4 2A 03 01 01 00 01 02   ; 0C705 data, read by 0816b 0818e
  C715  .byte 01 01 01 03 03 03 03 07 8A 8A 96 16 06 14 2C 2C   ; 0C715 data, read by 0816b 0818e
  C725  .byte F4 F4 E8 E8 F8 E8 D0 D0 0C 08 09 19 1B 13 1A 06   ; 0C725 data, read by 0816b 0818e
  C735  .byte 1F 1F 3E 3E 3C 3C 65 79 B0 B0 70 60 60 60 E0 E0   ; 0C735 data, read by 0816b
  C745  .byte 40 40 80 80 80 80 2A 02 39 6D 5F 3F 73 3F 2A 02   ; 0C745 data, read by 0816b 0818e
  C755  .byte 7E 76 7A 7C 1C 2A 03 E0 C0 C0 C0 80 2A 0C 03 08   ; 0C755 data, read by 0816b 0818e
  C765  .byte 08 20 03 07 0C 00 03 0C 11 23 0C 1B 37 60 2A 02   ; 0C765 data, read by 0816b 0818e
  C775  .byte 3D FF EF 78 E7 F8 80 1F C3 3F F0 87 18 00 03 00   ; 0C775 data, read by 0816b
  C785  .byte 06 F8 3E 0F E3 9E 07 F0 2B 04 1F 00 20 58 30 88   ; 0C785 data, read by 0816b 0818e
  C795  .byte 64 72 98 00 C0 E0 38 CC F6 FA FD 19 13 33 AB A9   ; 0C795 data, read by 0816b
  C7A5  .byte 14 99 26 3E 7C 7C 7C 7E 7F BF 1F DE B7 CB 56 D6   ; 0C7A5 data, read by 0816b
  C7B5  .byte 7E 1D C0 21 40 04 89 09 81 E2 FF 9D 0E E5 7F EF   ; 0C7B5 data, read by 0816b 0818e
  C7C5  .byte 7C E1 07 63 FB 2B 06 CE EA E9 C9 55 F4 CA 15 FD   ; 0C7C5 data, read by 0816b 0818e
  C7D5  .byte FC FE FE FE FE FC F8 51 28 12 05 2A 04 4F 27 11   ; 0C7D5 data, read by 0816b 0818e
  C7E5  .byte 0C 02 2A 03 3F C1 3C 83 3F 2A 03 2B 03 7F 00 C8   ; 0C7E5 data, read by 0816b 0818e
  C7F5  .byte 2A 02 FC E0 0E E1 18 98 2A 02 2B 03 FE E1 1E 2A   ; 0C7F5 data, read by 0816b 0818e
  C805  .byte 02 68 90 48 00 80 2A 03 F2 E4 80 10 40 2A 05 0C   ; 0C805 data, read by 0816b 0818e
  C815  .byte 1B 14 08 13 17 2A 03 0C 0B 07 0C 0B 18 34 FF 3F   ; 0C815 data, read by 0816b 0818e
  C825  .byte 3D 34 34 B6 00 18 00 C0 DA DB DB 49 2A 02 38 C8   ; 0C825 data, read by 0816b 0818e
  C835  .byte E8 F0 78 F8 2A 03 30 10 00 80 60 26 24 23 01 2A   ; 0C835 data, read by 0816b 0818e
  C845  .byte 04 1B 1B 1C 1E 0F 07 11 0C 9E CD 41 80 18 3C 37   ; 0C845 data, read by 0816b 0818e
  C855  .byte 2C 61 32 BE 7F E7 DB D8 10 DC 9C 7C F8 30 E2 8C   ; 0C855 data, read by 0816b
  C865  .byte 30 60 60 80 00 C0 2A 04 03 0F 1F 3F 2F 1F 3F 2A   ; 0C865 data, read by 0816b 0818e
  C875  .byte 02 01 02 2A 04 F8 FD 2B 03 F7 EF EF 00 E0 80 2A   ; 0C875 data, read by 0816b 0818e
  C885  .byte 02 18 30 70 2A 02 80 80 C0 C0 E0 D0 2A 07 40 6F   ; 0C885 data, read by 0816b 0818e
  C895  .byte 5E 3F 3F 3F 7F 7F FF 01 01 07 0B 06 05 2A 02 FF   ; 0C895 data, read by 0816b 0818e
  C8A5  .byte CF BF FC BF C7 F0 7E AC 72 C4 F3 FF 3F 0F A1 F0   ; 0C8A5 data, read by 0816b
  C8B5  .byte E0 9B FF F4 C3 04 18 40 80 60 F9 FB FC F8 E0 C0   ; 0C8B5 data, read by 0816b
  C8C5  .byte 80 6E FF D2 0C 10 60 2A 02 80 E4 EC F0 E0 80 07   ; 0C8C5 data, read by 0816b 0818e
  C8D5  .byte 1E 0D 07 07 0F 1F 1F 00 01 03 00 02 03 07 0F F9   ; 0C8D5 data, read by 0816b
  C8E5  .byte 7C FA FD F9 E1 F9 8A 06 F3 FD 9E 6E DE C6 F5 C7   ; 0C8E5 data, read by 0816b
  C8F5  .byte FE 7D 3C 9E BF 7E 7F B8 44 BA C3 79 7E 2B 02 C0   ; 0C8F5 data, read by 0816b 0818e
  C905  .byte 00 80 C0 20 60 F0 70 2A 04 C0 80 60 A0 1F 37 79   ; 0C905 data, read by 0816b 0818e
  C915  .byte 3E 6F 7F FF BF 0F 0F 27 19 10 00 60 70 FC F8 FE   ; 0C915 data, read by 0816b
  C925  .byte 7F CF FF FE FF 03 C7 F1 FE 37 05 0D 00 FF 76 0F   ; 0C925 data, read by 0816b
  C935  .byte 9F 5F 5F 9F 3F 2B 03 7F BF BF 7F FF 7E BF 97 CD   ; 0C935 data, read by 0816b 0818e
  C945  .byte C7 E6 E3 C3 B0 56 EE F6 FA F8 FC FC 5F 7C 7B 77   ; 0C945 data, read by 0816b
  C955  .byte 37 37 17 0E 20 03 07 0F 0F 0F 0D 05 FE CF E7 F3   ; 0C955 data, read by 0816b
  C965  .byte F3 F3 E3 C3 01 F0 F8 FC FC FC FC FC 1F 86 E0 2B   ; 0C965 data, read by 0816b
  C975  .byte 06 7F 0F 2A 05 87 1F FF FD FD F9 FA F6 F8 E0 00   ; 0C975 data, read by 0816b 0818e
  C985  .byte 02 02 06 04 08 3F 7F 67 3E 01 2A 03 0E 3F 1F 01   ; 0C985 data, read by 0816b 0818e
  C995  .byte 2A 04 07 CF 2B 02 BF 6F 39 0F F8 30 C0 F8 7F 1E   ; 0C995 data, read by 0816b 0818e
  C9A5  .byte 06 00 2B 03 F9 DC FB F0 80 2A 03 07 23 50 80 00   ; 0C9A5 data, read by 0816b 0818e
  C9B5  .byte E8 F0 FC FE FF 1E F8 00 10 40 60 8C F2 E8 2A 03   ; 0C9B5 data, read by 0816b 0818e
  C9C5  .byte 07 1F 3F 7C 7D FF BF 2A 04 03 03 01 01 E0 F8 FE   ; 0C9C5 data, read by 0816b 0818e
  C9D5  .byte FF FD 7D FF DE 2A 03 02 0B 8E 9A 6D 2A 03 1E FA   ; 0C9D5 data, read by 0816b 0818e
  C9E5  .byte D6 6C E8 2A 04 0C 68 F0 F0 0F 1F 3F 7F 3F 7F 2B   ; 0C9E5 data, read by 0816b 0818e
  C9F5  .byte 02 2A 08 FD 9F BF FF BC EF DF EF 26 78 47 1F 7F   ; 0C9F5 data, read by 0816b 0818e
  CA05  .byte 78 68 53 FD FA F2 C4 18 F0 20 90 7E FC FC F8 E0   ; 0CA05 data, read by 0816b
  CA15  .byte 00 C0 60 7F 7F FF EF 5F 3F 7F 7E 2A 02 03 02 09   ; 0CA15 data, read by 0816b 0818e
  CA25  .byte 0F 1F 3F F8 F0 F8 F4 E6 86 E5 29 27 CF F7 7B B9   ; 0CA25 data, read by 0818e 0816b
  CA35  .byte 79 1B D7 FE 7E 9C F3 78 FD FB FD 20 9C E0 CC E7   ; 0CA35 data, read by 0816b
  CA45  .byte FA FD FE E0 E0 C0 30 88 D8 BC DC 00 C0 00 C0 70   ; 0CA45 data, read by 0816b
  CA55  .byte A0 D8 E8 00 03 0F 3F 7F BF 7F FF 2A 05 08 10 30   ; 0CA55 data, read by 0816b 0818e
  CA65  .byte 00 F0 FC FE 2B 02 DF BE 2A 05 10 30 74 2A 04 01   ; 0CA65 data, read by 0816b 0818e
  CA75  .byte 07 1F FF 2A 06 01 00 3F 7F 7F DF EF DF DF BF 08   ; 0CA75 data, read by 0816b 0818e
  CA85  .byte 2A 02 20 10 60 E0 C0 DF DF CF EE FB CD DF B8 36   ; 0CA85 data, read by 0816b 0818e
  CA95  .byte 33 3F 15 0C 3A 30 67 F6 FE E6 88 10 E1 81 63 80   ; 0CA95 data, read by 0816b
  CAA5  .byte 74 F8 F0 E0 2A 02 81 C0 C0 C0 00 1A 3F 3F 7D 00   ; 0CAA5 data, read by 0816b 0818e
  CAB5  .byte 80 2A 03 0A 1A 3E 1F FF 7F 3F 1B 37 38 1B 2A 04   ; 0CAB5 data, read by 0816b 0818e
  CAC5  .byte 0C 1B 17 04 2B 04 FE FC 40 F8 2A 02 01 03 1F 2B   ; 0CAC5 data, read by 0816b 0818e
  CAD5  .byte 02 07 FB F7 FF 6F 7C FA FD F8 27 4F CF 9B 9B 1D   ; 0CAD5 data, read by 0816b 0818e
  CAE5  .byte 1E 1F E9 DD 9F FF 7E 20 C2 FD F0 E8 ED 1F BF DF   ; 0CAE5 data, read by 0816b
  CAF5  .byte 3D 00 F4 E8 D0 20 20 60 C0 00 B8 70 E0 C0 C0 80   ; 0CAF5 data, read by 0816b
  CB05  .byte 2A 02 1F 3F 7F 7F FF FE 2B 02 2A 05 01 07 0F 2B   ; 0CB05 data, read by 0816b 0818e
  CB15  .byte 04 F7 FA 78 61 2A 03 07 3F 2B 02 FE F0 FF F7 7B   ; 0CB15 data, read by 0816b 0818e
  CB25  .byte 80 03 3F FF 0F 00 3F 2B 02 FC C0 00 C0 F0 7E BF   ; 0CB25 data, read by 0816b 0818e
  CB35  .byte 07 F8 FF F0 2A 02 F0 FE FF 07 2A 05 80 C3 F7 3F   ; 0CB35 data, read by 0816b 0818e
  CB45  .byte DF 2A 04 81 E0 F1 38 0F 0F 0F 77 F7 E3 F3 77 2A   ; 0CB45 data, read by 0816b 0818e
  CB55  .byte 03 08 68 7C 7C 38 78 01 87 2B 06 FE 78 2A 05 7F   ; 0CB55 data, read by 0816b 0818e
  CB65  .byte 2B 03 EF DF DF DF 80 00 07 0F 1F 3F 3F 3F 2B 03   ; 0CB65 data, read by 0816b 0818e
  CB75  .byte FB FB FB F3 E3 00 F0 F8 FC FC FC FC FC 78 FC FE   ; 0CB75 data, read by 0816b
  CB85  .byte FF FE 78 38 10 00 10 80 22 2A 02 10 00 F1 F8 FF   ; 0CB85 data, read by 0816b 0818e
  CB95  .byte BE 58 61 1E 00 60 70 78 7F 3F 1E 2A 02 FF 7F 07   ; 0CB95 data, read by 0816b 0818e
  CBA5  .byte 84 84 02 03 01 2A 02 03 03 03 01 01 00 BE F8 E0   ; 0CBA5 data, read by 0816b 0818e
  CBB5  .byte E3 DC F3 F7 7F 7F 3F 7F FC E0 C0 E2 F6 18 30 60   ; 0CBB5 data, read by 0816b
  CBC5  .byte 80 2A 04 E0 C0 80 2A 05 BD 62 1C 2A 05 7E 1C 2A   ; 0CBC5 data, read by 0816b 0818e
  CBD5  .byte 07 03 01 38 3C 06 03 33 00 03 01 38 3C 06 03 33   ; 0CBD5 data, read by 0816b 0818e
  CBE5  .byte 18 18 91 93 53 7F FF 00 18 18 91 93 53 7F FF 2A   ; 0CBE5 data, read by 0816b
  CBF5  .byte 02 60 E0 80 0E 3E F0 E0 00 60 E0 80 0E 3E F0 E0   ; 0CBF5 data, read by 0816b 0818e
  CC05  .byte 7C 04 3E 33 06 06 2A 02 7C 04 3E 33 06 06 2A 04   ; 0CC05 data, read by 0816b 0818e
  CC15  .byte 6E FF 66 43 C3 2A 03 6E FF 66 43 C3 00 3E 32 E0   ; 0CC15 data, read by 0816b 0818e
  CC25  .byte FC 60 30 30 00 3E 32 E0 FC 60 30 30 00 18 18 18   ; 0CC25 data, read by 0816b 08201
  CC35  .byte 18 18 18 18 18 18 18 18 18 18 18 18 18 10 11 FF   ; 0CC35 data, read by 0816b 08201 0812b 08130
  CC45  .byte C0 11 03 80 FF AA 00 3F 7F 7F 7F 7F 7F 7F FF 03   ; 0CC45 data, read by 0816b 0818e
  CC55  .byte FC 11 02 07 F0 9F 00 FC 11 06 C0 F0 38 C6 F9 FE   ; 0CC55 data, read by 0816b 0818e
  CC65  .byte 7F 1F 10 02 C0 F8 FE 11 03 10 02 80 60 98 E4 F2   ; 0CC65 data, read by 0816b 0818e
  CC75  .byte F9 10 03 80 E0 F8 FC FE 80 80 80 80 80 80 80 80   ; 0CC75 data, read by 0816b 0818e
  CC85  .byte 7F 7F 7F 7F 7F 7F 7F 7F 01 10 03 1F 0F 01 00 11   ; 0CC85 data, read by 0816b 0818e
  CC95  .byte 04 E0 F0 FE FF CF 7F 10 02 11 03 3F 11 04 00 03   ; 0CC95 data, read by 0818e 0816b
  CCA5  .byte 02 C0 88 08 1C 7E 9E 89 84 1E F0 F0 E0 98 68 76   ; 0CCA5 data, read by 0816b
  CCB5  .byte 7F FF 20 20 70 F8 78 24 12 79 C0 C0 80 60 A0 D8   ; 0CCB5 data, read by 0816b
  CCC5  .byte FC FE 80 80 80 80 80 80 80 D0 7F 7F 7F 7F 7F 7F   ; 0CCC5 data, read by 0816b
  CCD5  .byte 7F 2F 10 04 30 1C 0F 07 11 04 CF E3 F0 F8 10 06   ; 0CCD5 data, read by 0816b 0818e
  CCE5  .byte 80 E0 11 06 7F 1F 0F 07 03 01 10 03 03 11 07 FC   ; 0CCE5 data, read by 0816b 0818e
  CCF5  .byte C8 E4 F4 7A 3A 3D 1D DA F0 F8 F8 FC F4 F6 FE 3C   ; 0CCF5 data, read by 0816b
  CD05  .byte AA D5 11 03 BC C3 FF 55 2A 10 03 43 3C 00 03 41   ; 0CD05 data, read by 0816b 0818e
  CD15  .byte A8 F4 FA 7F 0F E3 FC BE 57 0B 05 80 F0 1C FC 11   ; 0CD15 data, read by 0816b
  CD25  .byte 02 7F BF 5F A7 F1 03 10 02 80 40 A0 58 0E 03 80   ; 0CD25 data, read by 0818e 0816b
  CD35  .byte F1 FE 11 03 FB FC 7F 0E 06 04 45 C3 C7 63 0F 3F   ; 0CD35 data, read by 0816b 0818e
  CD45  .byte CE F4 F0 F0 70 9E F6 C6 C4 80 A0 60 E0 E1 1E 01   ; 0CD45 data, read by 0816b
  CD55  .byte 10 05 1E 01 10 06 3C C0 3F 10 05 C3 3F 10 06 01   ; 0CD55 data, read by 0816b 0818e
  CD65  .byte 0E F0 10 05 FE F0 10 06 38 74 FA F9 72 FD F9 72   ; 0CD65 data, read by 0816b 0818e
  CD75  .byte 00 38 7C 7E 3C 7E 7E 3C FD FD F9 F2 79 FD F1 FA   ; 0CD75 data, read by 0816b
  CD85  .byte 7E 7E 7E 7C 3E 7E 7E 7C 7A FD F9 BA 54 22 1C 00   ; 0CD85 data, read by 0816b
  CD95  .byte 3C 7E 7E 7C 38 1C 10 02 FF CF D1 ED E7 73 FC F3   ; 0CD95 data, read by 0816b 0818e
  CDA5  .byte 00 70 6E 72 39 BD B3 CF FF 03 7D 11 02 E1 1F F1   ; 0CDA5 data, read by 0816b 0818e
  CDB5  .byte 00 FC FE FE FE FE FE FE 00 01 03 05 0B 17 2F 2D   ; 0CDB5 data, read by 0816b
  CDC5  .byte 10 03 02 06 0E 1E 1E CE 30 C0 86 1F 3B 6F 81 11   ; 0CDC5 data, read by 0816b 0818e
  CDD5  .byte 03 F9 E0 C4 90 7E 01 01 01 01 01 01 01 01 FE FE   ; 0CDD5 data, read by 0818e 0816b
  CDE5  .byte FE FE FE FE FE FE 5B 55 A9 B1 A1 A9 55 AB 3E 3E   ; 0CDE5 data, read by 0816b
  CDF5  .byte 7E 7E 5E 56 2A 24 F3 7F 1E 04 00 A0 D4 EA 7E 9E   ; 0CDF5 data, read by 0816b
  CE05  .byte E5 FB FF 5F 2B 15 01 01 01 01 01 01 01 81 FE FE   ; 0CE05 data, read by 0816b
  CE15  .byte FE FE FE FE FE 7E 6D 27 13 09 05 03 01 00 12 18   ; 0CE15 data, read by 0816b
  CE25  .byte 0C 06 02 10 03 F5 4E 5F D3 A7 9F 11 02 0A B1 A0   ; 0CE25 data, read by 0816b 0818e
  CE35  .byte 2C 5E 7E 70 00 55 AA 11 03 01 03 FF AA 54 10 03   ; 0CE35 data, read by 0816b 0818e
  CE45  .byte FE FC 00 FF DA BA BA BB BD BD 9D 00 3F 7F 7F 7F   ; 0CE45 data, read by 0816b
  CE55  .byte 7F 7F 7F FF 10 08 11 08 10 06 01 00 11 06 FE FF   ; 0CE55 data, read by 0816b 0818e
  CE65  .byte 7B B9 79 B9 79 B9 79 00 84 46 86 46 86 46 86 FD   ; 0CE65 data, read by 0816b
  CE75  .byte CD DA D2 A7 9F FF FB 0F 33 25 2D 5E 7E 71 07 0F   ; 0CE75 data, read by 0816b
  CE85  .byte 9E 9A 8E 4C 46 A2 B1 F0 E1 E5 F1 F3 F9 FD FE C0   ; 0CE85 data, read by 0816b
  CE95  .byte E1 72 61 E2 CB C3 87 3F DE ED DE DD B4 BC 78 BF   ; 0CE95 data, read by 0816b
  CEA5  .byte 7F EF 67 B7 8B F3 9F 40 8C 1C 9C 4E 76 0E 60 7F   ; 0CEA5 data, read by 0816b
  CEB5  .byte 2E 17 0B 04 03 10 03 1F 0F 07 03 10 03 FF 81 42   ; 0CEB5 data, read by 0816b 0818e
  CEC5  .byte A5 D3 3C C3 3C 00 FE FD FA FC F3 3C 00 FE 64 C8   ; 0CEC5 data, read by 0816b
  CED5  .byte 90 20 C0 10 03 98 30 60 C0 10 03 03 04 09 13 27   ; 0CED5 data, read by 0816b 0818e
  CEE5  .byte 2E 4E 5C 00 03 06 0F 1F 1F 3F 3F FE 3D 9E 8F 67   ; 0CEE5 data, read by 0816b
  CEF5  .byte 63 03 01 1C D0 61 F0 9B 9D FC FE 00 F0 08 E4 F2   ; 0CEF5 data, read by 0816b
  CF05  .byte FA F9 F9 10 02 F0 18 DC BC 06 06 00 01 01 01 03   ; 0CF05 data, read by 0816b 0818e
  CF15  .byte 03 04 0B 10 04 01 00 03 07 B8 78 78 80 C6 EF 1F   ; 0CF15 data, read by 0816b 0818e
  CF25  .byte 87 7F 11 02 7F 39 12 E3 F8 03 03 01 01 01 01 80   ; 0CF25 data, read by 0816b 0818e
  CF35  .byte 80 FC FC FE FE FE FE 7F 7F FA F9 F9 F9 F5 F5 F5   ; 0CF35 data, read by 0816b
  CF45  .byte F5 04 06 06 06 0A 0A 0A 0A 2F 2F 5D 5D 5D 5D 5D   ; 0CF45 data, read by 0816b
  CF55  .byte BA 1F 1F 3F 3F 3F 3F 3F 7F 87 03 03 01 01 10 03   ; 0CF55 data, read by 0816b 0818e
  CF65  .byte F8 FC FC FE FE 11 03 81 81 81 C1 C1 C1 C1 C1 7E   ; 0CF65 data, read by 0816b 0818e
  CF75  .byte 7E 7E 3E 3E 3E 3E 3E DA DA DA DA 9A 9A 19 19 24   ; 0CF75 data, read by 0816b
  CF85  .byte 24 24 24 64 64 E6 E6 BA BA BA BA BA BA BA F4 7F   ; 0CF85 data, read by 0816b
  CF95  .byte 7F 7F 7F 7F 7F 7F 7F 10 08 11 08 C0 40 40 40 40   ; 0CF95 data, read by 0816b 0818e
  CFA5  .byte 10 03 3F BF BF BF BF 11 03 1D 0D 1D 0D 1D 0D 1D   ; 0CFA5 data, read by 0816b 0818e
  CFB5  .byte 0D E2 F2 E2 F2 E2 F2 E2 F2 F4 F4 F4 F4 F4 F4 F4   ; 0CFB5 data, read by 0816b
  CFC5  .byte FF 7F 7F 7F 7F 7F 7F 7F 10 08 11 08 10 08 11 08   ; 0CFC5 data, read by 0816b 0818e
  CFD5  .byte 00 1D 0D 1D 0D 1D 3B 1B FF E2 F2 E2 F2 E2 C4 E4   ; 0CFD5 data, read by 0816b
  CFE5  .byte 00 0E 17 2F 5F 4F 52 29 06 00 0E 1F 3F 3F 2F 06   ; 0CFE5 data, read by 0816b
  CFF5  .byte 00 EF 11 03 B7 23 88 77 00 EF 11 04 77 00 6C FE   ; 0CFF5 data, read by 0816b 0818e
  D005  .byte 11 02 6D 22 94 68 00 6C FE FE FE FC 68 00 11 07   ; 0D005 data, read by 0816b 0818e
  D015  .byte 00 FF E3 C9 C9 C9 E3 FF 7F 11 07 00 FF 93 93 93   ; 0D015 data, read by 0816b 0818e
  D025  .byte 93 C7 11 02 FE FE FE FE FE FE FE 00 FE 03 CF CF   ; 0D025 data, read by 0816b 0818e
  D035  .byte CF CF 11 02 10 02 03 07 07 0F 0F 1F 03 0F 1C 38   ; 0D035 data, read by 0816b 0818e
  D045  .byte 38 70 70 60 00 F0 F8 FC FC FE FE FE C0 10 07 1F   ; 0D045 data, read by 0816b 0818e
  D055  .byte 1F 3F 3F 3F 3F 1F 1F E0 E0 C0 C0 C0 C0 E0 E0 11   ; 0D055 data, read by 0816b
  D065  .byte 08 10 08 1F 0F 0F 07 3F 1F 10 02 60 70 70 38 38   ; 0D065 data, read by 0818e 0816b
  D075  .byte 1C 0F 03 FE FE FE FC FC F8 70 10 07 80 C0 11 07   ; 0D075 data, read by 0816b 0818e
  D085  .byte 00 FF C3 E7 E7 E7 C3 FF 7F FF FE FE FE FE FE FE   ; 0D085 data, read by 0816b
  D095  .byte 00 FE 0F 27 27 27 27 11 02 22 35 35 02 BA BC BA   ; 0D095 data, read by 0816b 0818e 0812b 08130
  D0A5  .byte BC BA 7F 00 7F 7F 7F 7F 7F 7F 00 FF F8 02 01 02   ; 0D0A5 data, read by 0816b
  D0B5  .byte 01 02 FF 00 FF FD FE FD FE FD 00 FE 2B BD 7D BD   ; 0D0B5 data, read by 0816b
  D0C5  .byte 7D BD FE 00 D4 42 82 42 82 42 00 7F 35 06 7F 00   ; 0D0C5 data, read by 0816b 0818e
  D0D5  .byte 7E 7E 7E 7E 7E 7E 00 FF 22 06 FF 00 35 06 00 FE   ; 0D0D5 data, read by 0816b 0818e
  D0E5  .byte D5 AB D5 AB D5 AB FE 00 2A 54 2A 54 2A 54 00 FF   ; 0D0E5 data, read by 0816b
  D0F5  .byte 7E 7E 3C 3C 18 18 18 7E 3C 3C 18 18 22 03 01 03   ; 0D0F5 data, read by 0816b 0818e
  D105  .byte 03 01 01 03 64 F9 00 01 01 22 03 03 67 04 8E DE   ; 0D105 data, read by 0816b 0818e
  D115  .byte FE ED F8 F0 E3 00 04 8C 8C D2 DF 6F 5C 80 C0 C0   ; 0D115 data, read by 0816b
  D125  .byte C0 B6 0F 1E 7C 00 80 80 80 40 F6 EC 98 7F 3F 1F   ; 0D125 data, read by 0816b
  D135  .byte 17 16 14 18 3C 39 1E 07 0A 0D 0F 07 0B C7 A3 F9   ; 0D135 data, read by 0816b
  D145  .byte 7C 3C 38 10 40 BB DD 26 BB DB D7 EF BF D0 9E 3F   ; 0D145 data, read by 0816b 0818e
  D155  .byte 7E 7C 78 78 F0 A0 60 CE BC 90 80 80 40 7C FC 63   ; 0D155 data, read by 0816b
  D165  .byte 01 03 03 03 01 3B 63 22 02 01 01 01 00 E1 F3 E7   ; 0D165 data, read by 0816b 0818e
  D175  .byte 35 02 83 83 01 5E 6C D8 81 83 01 01 00 F8 FC FE   ; 0D175 data, read by 0816b 0818e
  D185  .byte 9F 86 80 80 80 E0 38 1C 06 22 04 7F 35 03 7F 18   ; 0D185 data, read by 0816b 0818e
  D195  .byte 06 01 00 7F 7F 7F 00 07 01 00 35 05 66 18 99 00   ; 0D195 data, read by 0816b 0818e
  D1A5  .byte 35 03 00 81 E7 7E 22 05 7F 35 02 22 06 7F 7F 22   ; 0D1A5 data, read by 0816b 0818e
  D1B5  .byte 05 35 03 22 06 35 03 7F 00 7F 35 03 7F 7F 00 3F   ; 0D1B5 data, read by 0818e 0816b
  D1C5  .byte 00 7F 7F 7F 00 35 02 3F 35 06 00 DB 00 35 03 00   ; 0D1C5 data, read by 0816b 0818e
  D1D5  .byte 05 01 48 00 01 09 04 00 01 01 41 21 10 22 05 04   ; 0D1D5 data, read by 0816b 0818e
  D1E5  .byte 22 02 20 40 22 03 04 08 10 02 22 02 CC 00 04 09   ; 0D1E5 data, read by 0816b 0818e
  D1F5  .byte 01 20 00 01 F0 22 03 10 21 01 01 66 00 40 20 00   ; 0D1F5 data, read by 0816b 0818e
  D205  .byte 08 22 02 1E 22 03 10 08 22 05 01 03 7C FE 7F 22   ; 0D205 data, read by 0816b 0818e
  D215  .byte 04 01 03 79 3C 22 03 08 1C E6 F6 FB 22 04 08 1C   ; 0D215 data, read by 0818e 0816b
  D225  .byte CC E6 22 02 20 78 9E 8E 47 23 22 03 20 74 7C 3C   ; 0D225 data, read by 0816b 0818e
  D235  .byte 1F 01 03 17 2F 26 16 21 C3 22 02 03 12 1F 0D 1E   ; 0D235 data, read by 0816b 0818e
  D245  .byte 3E 0E 1C B9 7B 37 B7 0F 1F 07 03 1E 94 F8 68 F0   ; 0D245 data, read by 0816b
  D255  .byte F0 2C CC E6 E6 C3 83 E3 F3 D8 38 1C 1C 3E 7E 3E   ; 0D255 data, read by 0816b
  D265  .byte 0E 0C 86 87 43 30 08 06 01 FB 7D 7C 3F 0F 07 01   ; 0D265 data, read by 0816b
  D275  .byte 00 3F 1F CF E3 40 20 00 80 E0 F0 3C DF 35 03 7F   ; 0D275 data, read by 0816b 0818e
  D285  .byte E4 F4 F4 FC EC 04 1C 37 18 08 08 10 E0 F8 F8 FA   ; 0D285 data, read by 0816b 0818e
  D295  .byte C0 24 4E 43 43 43 43 43 3F 1B 3D 3E 3E 3E 3E 3E   ; 0D295 data, read by 0816b
  D2A5  .byte 1A 1A 9A D4 D4 EC CB D0 FD FD 7D BB BB B3 B0 A0   ; 0D2A5 data, read by 0816b
  D2B5  .byte C0 C0 C0 E0 D8 2C 1E CF 80 80 80 80 E0 F8 FC 3E   ; 0D2B5 data, read by 0816b
  D2C5  .byte 9E 4F 83 60 1D 05 04 03 70 3C 7F 1F 03 03 03 00   ; 0D2C5 data, read by 0816b
  D2D5  .byte F0 78 1C 06 EF 2F 26 1C 80 E0 F8 FC 1E 1E 1C 00   ; 0D2D5 data, read by 0816b
  D2E5  .byte 13 0E 22 06 0E 22 0D 40 EC 22 07 40 22 06 02 67   ; 0D2E5 data, read by 0816b 0818e
  D2F5  .byte 22 07 02 02 0C 1C 10 18 20 40 A0 01 03 0F 0F 07   ; 0D2F5 data, read by 0816b 0818e
  D305  .byte 1F 3F 5F 5F 83 8C 0C 18 07 22 02 30 7C F3 F3 E7   ; 0D305 data, read by 0816b 0818e
  D315  .byte F8 35 02 B8 FC 7C 78 38 F4 02 39 10 38 B8 F0 F0   ; 0D315 data, read by 0816b 0818e
  D325  .byte 08 FC FE 28 30 60 50 E0 D0 E1 D0 17 0F 1F 2F 1F   ; 0D325 data, read by 0816b
  D335  .byte 2F 1E 2F 80 00 0D 06 03 00 10 08 7F FF FE 35 03   ; 0D335 data, read by 0816b 0818e
  D345  .byte EF F7 22 03 80 40 F9 3F 06 35 03 7F BF C6 F9 FF   ; 0D345 data, read by 0816b 0818e
  D355  .byte C8 6C 2E 3F 33 D7 F3 EF F0 F0 F4 EE DE 2E CE 14   ; 0D355 data, read by 0816b
  D365  .byte E0 F0 E8 F4 78 74 7A 3D 1F 0F 17 0B 07 0B 05 02   ; 0D365 data, read by 0816b
  D375  .byte 06 07 88 47 88 40 A0 D5 F9 F8 77 BF 7F BF 5F 2A   ; 0D375 data, read by 0816b
  D385  .byte 00 C4 3A CA E5 34 1A 1A FF 3B C5 F5 FA FB FD FD   ; 0D385 data, read by 0816b
  D395  .byte F5 31 E2 82 06 0A 15 2D EA EE 9C 7C F8 F4 EE DE   ; 0D395 data, read by 0816b
  D3A5  .byte F5 7E 1F 22 05 0A 01 22 06 4F 87 80 7D 05 05 03   ; 0D3A5 data, read by 0816b 0818e
  D3B5  .byte 00 BC 7F 7F 03 03 03 22 02 F7 EE 30 B0 D0 D0 E0   ; 0D3B5 data, read by 0816b 0818e
  D3C5  .byte C0 0E C0 E0 E0 E0 E0 C0 22 03 18 3C 56 A3 AE A3   ; 0D3C5 data, read by 0816b 0818e
  D3D5  .byte 22 03 18 3C 7E 70 7C 22 03 01 03 B4 59 CB 22 04   ; 0D3D5 data, read by 0816b 0818e
  D3E5  .byte 01 03 36 3D 22 02 04 1E AB E3 F2 FA 22 03 04 16   ; 0D3E5 data, read by 0816b 0818e
  D3F5  .byte 9E 0C B4 29 2E 2C 4A 4A 4E CE CE 1E 19 1B 3D 3D   ; 0D3F5 data, read by 0816b
  D405  .byte 3D 3D 3D 81 22 03 07 0F 1F 3F 7E 35 03 FE F8 F0   ; 0D405 data, read by 0816b 0818e
  D415  .byte E0 1F 0D 22 02 7C FE 35 02 E8 F2 35 02 E3 81 22   ; 0D415 data, read by 0816b 0818e
  D425  .byte 02 E7 CF 3F 3E 3E 1E 88 B0 82 06 CE FC FC F8 70   ; 0D425 data, read by 0818e 0816b
  D435  .byte 40 1A 14 10 28 30 68 50 E8 07 0B 0F 17 0F 17 2F   ; 0D435 data, read by 0816b 0818e
  D445  .byte 17 51 83 03 03 07 07 07 07 EF 7E FE FE FC FC FC   ; 0D445 data, read by 0816b
  D455  .byte FC 35 08 22 08 E8 F4 F4 F4 F6 F6 F6 FB 10 08 08   ; 0D455 data, read by 0816b 0818e
  D465  .byte 08 0C 0C 0C 06 D0 E8 F4 6B 77 71 38 34 2F 17 0B   ; 0D465 data, read by 0816b
  D475  .byte 14 0F 0F 07 0B 07 07 87 77 EF 37 17 9B FC FC 7C   ; 0D475 data, read by 0816b
  D485  .byte 8C F4 F8 FA FC 35 08 22 08 FB FB FB FB FB FB FB   ; 0D485 data, read by 0816b 0818e
  D495  .byte F6 06 06 06 06 06 06 06 0C 02 32 4C B0 B1 F2 73   ; 0D495 data, read by 0816b
  D4A5  .byte 3C 01 01 33 7F 7F 7F 3C 00 0D 1D 7B 87 79 90 09   ; 0D4A5 data, read by 0816b
  D4B5  .byte 06 FE FE FC F8 86 0F 06 00 FF 7F 2F 90 CF 7F 80   ; 0D4B5 data, read by 0816b
  D4C5  .byte 00 80 C0 F0 7F 3F 80 22 02 FB F3 CE 3C F0 C0 22   ; 0D4C5 data, read by 0816b 0818e
  D4D5  .byte 02 06 0E 3C F0 C0 22 05 06 0F 5B E1 A0 43 22 03   ; 0D4D5 data, read by 0818e 0816b
  D4E5  .byte 06 06 5E 7F 3F 22 03 80 80 E0 72 F7 22 06 E0 A2   ; 0D4E5 data, read by 0816b 0818e
  D4F5  .byte 21 40 82 87 BF 97 4B 45 1F 3F 7D 7C 74 7A 3C 7E   ; 0D4F5 data, read by 0816b
  D505  .byte 63 07 87 C3 35 03 7D DD FF 7F 3E 05 82 02 86 C0   ; 0D505 data, read by 0816b 0818e
  D515  .byte C0 80 C0 FC 3E 13 C3 80 80 22 02 C0 FC FE 3E 11   ; 0D515 data, read by 0816b 0818e
  D525  .byte 18 34 62 63 65 60 D0 0F 07 0B 1D 1C 1B 1F 2F F9   ; 0D525 data, read by 0816b 0818e
  D535  .byte 7F 0F 01 F8 DE 69 28 8E F1 FE FF 07 E1 F0 F0 3B   ; 0D535 data, read by 0816b
  D545  .byte 8E C4 E0 30 20 C0 00 06 04 00 C0 E0 C0 22 02 44   ; 0D545 data, read by 0816b 0818e
  D555  .byte 82 83 84 48 30 22 02 3B 7B 7C 78 30 22 03 02 83   ; 0D555 data, read by 0816b 0818e
  D565  .byte C1 38 04 03 22 02 FF 7F 3F 07 03 22 03 80 78 F4   ; 0D565 data, read by 0816b 0818e
  D575  .byte 02 0D ED 2D 1C 00 80 F8 FC FE 1E 1E 22 02 06 0F   ; 0D575 data, read by 0816b 0818e
  D585  .byte 53 E1 A0 43 83 22 02 06 0E 5E 7F 3F 7E 22 02 80   ; 0D585 data, read by 0816b 0818e
  D595  .byte 80 E0 72 FF 87 22 05 E0 A2 7E 80 82 B3 93 8F 8F   ; 0D595 data, read by 0816b 0818e
  D5A5  .byte 47 43 7F 7D 7C 7C 7A 7A 3D 3E 3F 1E 8F F9 FC FF   ; 0D5A5 data, read by 0816b
  D5B5  .byte F4 EC FE FC 72 07 0B 10 98 70 C0 80 E0 7C 1E C3   ; 0D5B5 data, read by 0816b 0818e
  D5C5  .byte 23 1E 80 00 80 E0 FC 3E 1E 04 61 50 88 87 80 81   ; 0D5C5 data, read by 0816b
  D5D5  .byte 43 46 1F 2F 77 78 7F 7F 3F 3F 1F 03 80 7F 02 1A   ; 0D5D5 data, read by 0816b
  D5E5  .byte 36 6E FC FF 7F 80 FC FC F8 F0 F1 78 78 0C C8 30   ; 0D5E5 data, read by 0816b
  D5F5  .byte 22 02 C0 90 F0 F8 30 22 03 97 4B A5 92 9F 77 17   ; 0D5F5 data, read by 0816b 0818e
  D605  .byte 0F 78 3C 5E 6F 67 0F 0F 00 5E 2C 94 4A 7D DD 5E   ; 0D605 data, read by 0816b
  D615  .byte 3C E0 F0 78 3C 1E 3E 3E 22 03 06 0F 53 E3 A0 43   ; 0D615 data, read by 0816b 0818e
  D625  .byte 22 03 06 0E 5E 7F 3F 22 02 80 C0 C0 F0 3A FF 22   ; 0D625 data, read by 0816b 0818e
  D635  .byte 03 80 80 80 F0 D2 20 40 5A 8B 8B 8B 47 47 1F 3F   ; 0D635 data, read by 0818e 0816b
  D645  .byte 3D 7C 7C 7C 3E 3E 63 0F 0F C3 FE FE FD F9 DF FF   ; 0D645 data, read by 0816b
  D655  .byte FE 3D 01 05 06 8E 80 80 00 C0 F8 3E 07 C1 22 04   ; 0D655 data, read by 0816b 0818e
  D665  .byte C0 F8 FE 3E 23 20 50 44 83 A0 51 81 1F 1F 2F 3B   ; 0D665 data, read by 0816b
  D675  .byte 7C 5F 2F 7F E3 7F 1D 01 F8 1E 9F BF 9C E3 FE FF   ; 0D675 data, read by 0816b
  D685  .byte 07 E1 E0 C0 39 8A 84 C0 60 40 80 E0 06 04 00 80   ; 0D685 data, read by 0816b
  D695  .byte C0 80 22 02 08 28 53 A4 F1 F6 88 70 07 07 2F 7F   ; 0D695 data, read by 0816b 0818e
  D6A5  .byte 7E 78 70 00 37 CF 30 C0 22 04 F8 F0 C0 22 05 F2   ; 0D6A5 data, read by 0816b 0818e
  D6B5  .byte E1 42 24 18 22 03 0C 1E 3C 18 22 06 CF 30 1F 68   ; 0D6B5 data, read by 0816b 0818e
  D6C5  .byte B7 5E 22 03 CF E8 F7 35 02 22 02 83 7C 7C 82 7D   ; 0D6C5 data, read by 0816b 0818e
  D6D5  .byte FD 22 03 83 83 7D FE FE 22 02 E0 18 44 AA 74 F9   ; 0D6D5 data, read by 0816b 0818e
  D6E5  .byte 22 03 E0 F8 FC FC FE 56 A9 50 2B 15 12 08 08 00   ; 0D6E5 data, read by 0816b 0818e
  D6F5  .byte 56 3F 1F 0F 0F 07 07 0F 15 AE 92 67 23 47 4B 35   ; 0D6F5 data, read by 0816b
  D705  .byte 02 71 6F 1F 1F 3F 3F 35 03 7F F7 F0 FB 35 07 FD   ; 0D705 data, read by 0818e 0816b
  D715  .byte FF FD F9 55 29 92 E2 3C 78 FE FE FE FE 7C DC E8   ; 0D715 data, read by 0816b
  D725  .byte E0 8B 87 8B 45 42 20 18 07 7F 7F 7F 3F 3F 1F 07   ; 0D725 data, read by 0816b
  D735  .byte 00 BF 7F BF 57 2A 04 83 7C 35 06 7C 00 35 02 FE   ; 0D735 data, read by 0816b 0818e
  D745  .byte EC C0 80 22 02 F2 B2 CC C0 80 22 07 03 1C 20 DE   ; 0D745 data, read by 0816b 0818e
  D755  .byte 22 05 03 1F 3F 22 02 01 F6 08 11 60 F7 22 03 01   ; 0D755 data, read by 0816b 0818e
  D765  .byte F7 35 03 22 02 E0 18 E4 7A BD FD 22 03 E0 F8 FC   ; 0D765 data, read by 0816b 0818e
  D775  .byte FE FE 3B 47 BF AA 51 A0 80 89 07 3F 7F 7F 3F 7F   ; 0D775 data, read by 0816b
  D785  .byte 7F 77 7F F7 AB 13 03 0D 96 8B 35 06 7F 7F FE FF   ; 0D785 data, read by 0816b 0818e
  D795  .byte FC F6 E7 EF 3F 35 07 FE FE 3D 3D FD 7A F4 FE FE   ; 0D795 data, read by 0816b 0818e
  D7A5  .byte FE FE FE FE FC C8 0C 04 04 98 A8 48 08 04 02 01   ; 0D7A5 data, read by 0816b
  D7B5  .byte 00 67 47 07 07 03 02 22 02 43 45 42 21 10 08 06   ; 0D7B5 data, read by 0816b 0818e
  D7C5  .byte 01 3F 3F 3F 1F 0F 07 01 00 FB F3 EB 53 AB 07 1B   ; 0D7C5 data, read by 0816b
  D7D5  .byte E1 FE FE FE FE FE FB E1 00 35 02 FE FE FC F8 F0   ; 0D7D5 data, read by 0816b 0818e
  D7E5  .byte E0 02 02 04 04 08 10 E0 22 03 18 24 24 18 22 04   ; 0D7E5 data, read by 0816b 0818e
  D7F5  .byte 18 24 24 18 22 02 E0 10 E8 68 37 34 05 45 00 E0   ; 0D7F5 data, read by 0816b 0818e
  D805  .byte F0 F0 F8 FB FB BF 22 05 80 40 60 22 06 80 80 40   ; 0D805 data, read by 0816b 0818e
  D815  .byte 20 10 0C 83 51 AB 55 BF DF EF F3 7C AE 54 AA D8   ; 0D815 data, read by 0816b
  D825  .byte 64 1A 0D 05 87 E3 F9 A0 B8 FC FE FE 7E 1E 06 FF   ; 0D825 data, read by 0816b
  D835  .byte 01 00 02 07 07 03 01 00 FE 35 06 FE FB 7B 11 89   ; 0D835 data, read by 0816b 0818e
  D845  .byte C4 E2 F1 38 66 B6 EF F7 FB FD FE 22 03 80 40 A0   ; 0D845 data, read by 0816b 0818e
  D855  .byte 50 28 22 04 80 C0 E0 F0 00 01 22 06 35 08 F8 7C   ; 0D855 data, read by 0816b 0818e
  D865  .byte BC 5E 2E 1F 2F 17 35 08 A8 94 74 48 70 20 34 2A   ; 0D865 data, read by 0816b 0818e
  D875  .byte 70 78 B8 B0 80 C0 C0 D4 22 04 80 40 A0 50 35 04   ; 0D875 data, read by 0816b 0818e
  D885  .byte 7F BF 5F AF 0E 06 22 05 01 35 07 FE 33 3F 2F 23   ; 0D885 data, read by 0816b 0818e
  D895  .byte 57 6B FE FE DE DE DE DE AA 96 0C 04 AA D5 FA 35   ; 0D895 data, read by 0816b
  D8A5  .byte 05 55 2A 05 22 05 02 15 AF 5E FC F8 F0 C0 FD EA   ; 0D8A5 data, read by 0818e 0816b
  D8B5  .byte 50 A0 22 04 94 08 22 06 08 22 07 BC 54 A4 48 88   ; 0D8B5 data, read by 0816b 0818e
  D8C5  .byte 10 20 C0 40 A8 58 B0 70 E0 C0 00 3C 66 C3 81 81   ; 0D8C5 data, read by 0816b
  D8D5  .byte C3 66 3C 3C 66 C3 81 81 C3 66 3C 00 01 02 03 0C   ; 0D8D5 data, read by 0816b
  D8E5  .byte 3E F0 22 03 01 00 03 0F 3F FF 06 BF C1 22 03 88   ; 0D8E5 data, read by 0816b 0818e
  D8F5  .byte 4E 00 06 BE 35 03 F7 F5 00 40 A0 90 52 27 27 FF   ; 0D8F5 data, read by 0816b 0818e
  D905  .byte 22 02 40 60 A0 C2 C2 46 05 08 38 41 67 9F 56 34   ; 0D905 data, read by 0816b 0818e
  D915  .byte 02 07 07 3F 1E 78 2D 0B 40 27 3F 7F E0 E0 A1 01   ; 0D915 data, read by 0816b
  D925  .byte BF DF DD E0 9E 1F 5F FF 40 D1 F3 FB BD 7E 5F 2E   ; 0D925 data, read by 0816b
  D935  .byte FF AE AD 25 62 91 A8 D7 FF FE FE FC F8 F0 60 80   ; 0D935 data, read by 0816b
  D945  .byte 1E FC FC F8 F0 00 80 00 08 18 21 42 FD F9 42 3C   ; 0D945 data, read by 0816b
  D955  .byte 07 07 1F 3F 7E 7E 3C 00 04 0C 19 62 8F 74 88 70   ; 0D955 data, read by 0816b
  D965  .byte 35 02 FE FD 70 88 70 00 27 24 48 90 E0 22 03 D8   ; 0D965 data, read by 0816b 0818e
  D975  .byte D8 B0 60 22 04 00 07 79 97 72 1D 02 00 00 00 07   ; 0D975 data, read by 0816b 0818e
  D985  .byte 7F 0F 02 00 00 58 A6 69 FD 79 97 6C 10 00 58 FE   ; 0D985 data, read by 0816b
  D995  .byte FE FE 78 10 00 16 22 00 03 0F 1F 2F 47 87 8F 16   ; 0D995 data, read by 0816b 0812b 08130 0818e
  D9A5  .byte 02 03 0F 1F 3E 78 70 C0 E0 F6 22 03 FC F3 00 C0   ; 0D9A5 data, read by 0818e 0816b
  D9B5  .byte E0 C0 80 03 0F 3C FC FF 0F 00 F8 FC 06 09 03 00   ; 0D9B5 data, read by 0816b
  D9C5  .byte F0 22 02 0F FF F6 C1 FF 81 06 08 10 1F C0 3E 00   ; 0D9C5 data, read by 0816b 0818e
  D9D5  .byte 7E F9 F7 EF E0 3F 06 3E 72 EF DC D0 C1 07 00 0C   ; 0D9D5 data, read by 0816b
  D9E5  .byte 3C 30 63 6F FE F9 00 80 80 C0 20 10 7C FF 16 04   ; 0D9E5 data, read by 0816b 0818e
  D9F5  .byte C0 E0 90 7C 10 21 40 40 81 FF 9C FF 0F 1E 3F 3F   ; 0D9F5 data, read by 0816b
  DA05  .byte 7F 00 63 60 FF 7F 0F 01 16 02 FF 1E 7F 22 05 00   ; 0DA05 data, read by 0816b 0818e
  DA15  .byte E0 FC FE FF 7F 0E 04 F8 80 F0 FC FE FE FC F8 16   ; 0DA15 data, read by 0816b
  DA25  .byte 02 3F 87 7C 16 05 C0 78 16 06 7F 93 08 07 16 04   ; 0DA25 data, read by 0818e 0816b
  DA35  .byte 98 0C 07 16 05 80 E3 FC C0 16 04 7F 1C 16 09 03   ; 0DA35 data, read by 0816b 0818e
  DA45  .byte 1F 7F FF 7F 16 04 03 1F 7E F8 16 02 07 0E 99 F6   ; 0DA45 data, read by 0816b 0818e
  DA55  .byte F8 F3 16 03 07 0E 99 07 0C 0F 3F 7F FF 7F 3F 6F   ; 0DA55 data, read by 0816b 0818e
  DA65  .byte A0 02 0F 3F 7C F3 EF 90 5F 00 C0 F0 FE 22 02 FE   ; 0DA65 data, read by 0816b 0818e
  DA75  .byte 1C 16 02 40 F0 FE FC 00 E0 11 11 23 47 40 80 01   ; 0DA75 data, read by 0816b 0818e
  DA85  .byte 07 0F 0E 1C 38 3F 7F FF F8 22 02 FE E0 0C FE DF   ; 0DA85 data, read by 0816b 0818e
  DA95  .byte E0 16 02 01 1F 22 02 E7 1F E2 04 04 09 0E F0 F0   ; 0DA95 data, read by 0816b 0818e
  DAA5  .byte 7F 1D FB FB F6 F1 0F 0F 80 03 0F 3C D0 20 40 80   ; 0DAA5 data, read by 0816b
  DAB5  .byte 00 FC F0 C0 20 C0 80 16 02 80 83 7F 33 0E 06 01   ; 0DAB5 data, read by 0816b 0818e
  DAC5  .byte 00 7F 7C 00 0C 07 01 16 02 81 E2 FC 30 C0 16 03   ; 0DAC5 data, read by 0816b 0818e
  DAD5  .byte 7E 1C 00 C0 16 04 EF 66 18 16 05 70 18 16 07 03   ; 0DAD5 data, read by 0816b 0818e
  DAE5  .byte 04 0E 1E 3F 7F FF 16 02 03 07 0F 1F 3F 7F 16 02   ; 0DAE5 data, read by 0816b 0818e
  DAF5  .byte 80 40 20 90 90 C8 16 03 80 C0 E0 E0 F0 01 03 03   ; 0DAF5 data, read by 0816b 0818e
  DB05  .byte 0F 1F 3F 7F FF 00 01 01 03 0F 1F 3F 7F 22 10 C8   ; 0DB05 data, read by 0816b 0818e
  DB15  .byte 84 F4 E2 FA F9 FD FD F0 F8 F8 FC FC FE FE FE 22   ; 0DB15 data, read by 0816b
  DB25  .byte 02 7F 7F 3F 3F 1F 1F 7F 7F 3F 3F 1F 1F 0F 0F 22   ; 0DB25 data, read by 0818e 0816b
  DB35  .byte 06 FE FE 22 08 FD FB F7 EF DF DF BF FA FE FC F8   ; 0DB35 data, read by 0818e 0816b
  DB45  .byte F0 E0 E0 40 04 1F 0F 0F 07 07 03 01 00 0F 07 07   ; 0DB45 data, read by 0816b
  DB55  .byte 03 03 01 16 02 FD FD F3 F6 F5 CA BF F9 FE FE FC   ; 0DB55 data, read by 0816b 0818e
  DB65  .byte F9 FA F5 C0 00 F6 AA 55 AB 55 AB 76 9C 08 54 AA   ; 0DB65 data, read by 0816b
  DB75  .byte 54 AA 54 88 00 1F 20 5E FC 22 04 00 1F 3F 7F 7F   ; 0DB75 data, read by 0816b 0818e
  DB85  .byte 7F 7F 7F 00 80 40 40 20 A0 A0 10 16 02 80 80 C0   ; 0DB85 data, read by 0816b 0818e
  DB95  .byte C0 C0 E0 FF AF 8F 8F AF 8F 8F 87 2F 5F 7F 7F 7F   ; 0DB95 data, read by 0816b
  DBA5  .byte 7F 79 7B D0 C8 E8 C4 F2 FA F1 FD E0 F0 F0 F8 FC   ; 0DBA5 data, read by 0816b
  DBB5  .byte FC FE FE 43 4B 44 45 81 91 A1 A2 3F 3E 3F 3F 7F   ; 0DBB5 data, read by 0816b
  DBC5  .byte 7F 7F 7F FE FE B6 AF 57 AB 57 AB 74 B0 C8 50 A8   ; 0DBC5 data, read by 0816b
  DBD5  .byte 54 A8 54 A3 92 53 42 43 51 81 A1 7E 7F 3E 3F 3E   ; 0DBD5 data, read by 0816b
  DBE5  .byte 3F 7F 7F 57 AE 56 AE 56 AE 56 AE A8 50 A8 50 A8   ; 0DBE5 data, read by 0816b
  DBF5  .byte 50 A8 50 A1 A1 89 48 88 90 70 40 7F 7F 7F 3F 7F   ; 0DBF5 data, read by 0816b
  DC05  .byte 7F 1F 3F 57 AF 57 AB D7 AE D6 AE A8 50 A8 D4 A8   ; 0DC05 data, read by 0816b
  DC15  .byte D0 A8 50 21 11 21 21 11 09 05 03 1F 0F 1F 1F 0F   ; 0DC15 data, read by 0816b
  DC25  .byte 07 02 00 56 AE 56 AB 57 AB 7F C0 A8 50 A8 54 A8   ; 0DC25 data, read by 0816b
  DC35  .byte 54 80 16 04 04 0E 1F 7F FF 16 04 04 0E 1C 78 16   ; 0DC35 data, read by 0816b 0818e
  DC45  .byte 02 30 78 78 FC FE FF 16 03 30 10 10 14 0E 0B 11   ; 0DC45 data, read by 0818e 0816b
  DC55  .byte 10 21 23 43 40 80 07 0F 0F 1E 1C 3C 3F 7F 22 04   ; 0DC55 data, read by 0816b 0818e
  DC65  .byte FB F0 16 02 80 01 0B 1B 34 0F 22 02 EF EF DF BF   ; 0DC65 data, read by 0816b 0818e
  DC75  .byte 7F 1B 13 01 F1 F5 6D 5F BF 22 03 E4 BE BE 7F FF   ; 0DC75 data, read by 0816b 0818e
  DC85  .byte FE 6E 4E C0 C4 D4 B6 7E FC FC FC 86 F9 9C FE 4F   ; 0DC85 data, read by 0816b
  DC95  .byte 21 1E 00 79 06 63 61 30 1E 16 02 11 AA DC 18 1C   ; 0DC95 data, read by 0816b 0818e
  DCA5  .byte ED 2D 12 EE 55 23 E7 E3 32 12 16 02 8C 4B 50 D0   ; 0DCA5 data, read by 0816b 0818e
  DCB5  .byte 20 16 02 FF 73 B0 A0 20 16 03 06 04 64 58 80 80   ; 0DCB5 data, read by 0816b 0818e
  DCC5  .byte 16 02 FC F8 98 80 16 04 07 08 17 2F 5F 4F 42 32   ; 0DCC5 data, read by 0816b 0818e
  DCD5  .byte 00 07 0F 1F 3F 3F 3F 1F 80 40 A0 A0 D0 B0 50 B0   ; 0DCD5 data, read by 0816b
  DCE5  .byte 00 80 C0 C0 A0 40 A0 40 28 2C 2C 2C 2C 2C 4C 4C   ; 0DCE5 data, read by 0816b
  DCF5  .byte 1F 1F 1F 1F 1F 1F 3F 3F 50 A0 60 A0 60 A0 60 B0   ; 0DCF5 data, read by 0816b
  DD05  .byte A0 40 80 40 80 40 80 40 4C 58 98 98 98 48 21 1F   ; 0DD05 data, read by 0816b
  DD15  .byte 3F 3F 7F 7F 7F 3F 1E 00 6A B5 5A B5 5A B4 68 D0   ; 0DD15 data, read by 0816b
  DD25  .byte 80 40 A0 40 A0 40 80 00 07 18 27 5F 5F 98 9F 8F   ; 0DD25 data, read by 0816b
  DD35  .byte 00 07 1F 3F 3E 7F 7F 7F F8 0C F3 FD FD 26 CB EB   ; 0DD35 data, read by 0816b
  DD45  .byte 00 F0 FC FE 1E EF F7 F7 30 48 EE 77 27 D9 5B D0   ; 0DD45 data, read by 0816b
  DD55  .byte 00 30 30 FE FA 7E F7 EF 80 40 70 B8 F8 FC FE 81   ; 0DD55 data, read by 0816b
  DD65  .byte 00 80 80 C0 80 00 3C 7E 0F 1F 3F 7F 43 85 84 84   ; 0DD65 data, read by 0816b
  DD75  .byte 16 02 1C 3C 3C 7A 7B 7B 7C 7C BC B9 D3 FF 80 22   ; 0DD75 data, read by 0816b 0818e
  DD85  .byte 03 7F 7E 3C 7F 7F 00 EB ED EF F7 FB FF 3F CF 74   ; 0DD85 data, read by 0818e 0816b
  DD95  .byte 72 70 38 0C C6 F0 30 F8 80 60 90 E8 F4 9A 0D 16   ; 0DD95 data, read by 0816b
  DDA5  .byte 02 80 E0 F0 78 7C FE 84 84 84 42 7D 3E 1F 07 7B   ; 0DDA5 data, read by 0818e 0816b
  DDB5  .byte 7B 7B 3D 02 01 16 02 3F 16 03 22 02 7F FF C0 22   ; 0DDB5 data, read by 0816b 0818e
  DDC5  .byte 03 16 02 80 00 F8 60 20 1F EF F7 FB FC 07 9F DF   ; 0DDC5 data, read by 0818e 0816b
  DDD5  .byte E0 10 08 04 00 07 1E FC F8 F0 E0 80 00 F8 E0 16   ; 0DDD5 data, read by 0816b
  DDE5  .byte 06 C0 80 10 30 30 20 04 0C E0 E0 70 70 38 38 1C   ; 0DDE5 data, read by 0818e 0816b
  DDF5  .byte 1C F8 F8 7C 7C 3E 3E 1F 1F 16 0E C8 3D 16 07 C8   ; 0DDF5 data, read by 0816b 0818e
  DE05  .byte 03 34 6F FE FF 91 90 90 00 03 37 77 6E EE EF EF   ; 0DE05 data, read by 0816b
  DE15  .byte 03 00 70 F8 E3 EB 6F 1F FD 03 70 F8 FC FC F8 E0   ; 0DE15 data, read by 0816b
  DE25  .byte 80 60 30 08 04 F2 F1 E1 00 80 E0 30 18 0C 0E 1E   ; 0DE25 data, read by 0816b
  DE35  .byte 90 90 B8 B8 B0 4D 36 03 EF EF 47 47 4F 32 01 16   ; 0DE35 data, read by 0816b
  DE45  .byte 02 1E 3F FE FF FC F8 70 FF E1 DE 3D 7C 78 70 00   ; 0DE45 data, read by 0818e 0816b
  DE55  .byte 03 0E 1E F0 C0 16 03 FC F0 E0 16 05 0F 30 4E 5E   ; 0DE55 data, read by 0816b 0818e
  DE65  .byte B8 B0 B0 B0 00 0F 3F 3F 7F 7F 7F 7F F0 0C 86 82   ; 0DE65 data, read by 0816b
  DE75  .byte 05 03 05 0B 00 F0 F8 FC FA FC FA F4 80 80 81 6A   ; 0DE75 data, read by 0816b
  DE85  .byte 55 3F 0F 00 7F 7F 7E 15 2A 16 03 07 0F 57 AE 5E   ; 0DE85 data, read by 0816b 0818e
  DE95  .byte FC F0 00 F8 F0 A8 50 A0 16 03 FF 16 0F 83 83 87   ; 0DE95 data, read by 0816b 0818e
  DEA5  .byte C7 67 8F C5 7F 7F 7F 7E 3C 18 7F 3F 00 8B 9B 9E   ; 0DEA5 data, read by 0816b
  DEB5  .byte 34 EE 9F EB 3E 76 66 64 C8 10 6E 1E 16 05 08 32   ; 0DEB5 data, read by 0816b 0818e
  DEC5  .byte 6C FB 16 08 1B 2D 5B 37 7D FD FB 85 06 1E 3C 18   ; 0DEC5 data, read by 0816b 0818e
  DED5  .byte 02 33 7D 7E FC FF F8 F0 A8 D4 FC F8 16 04 50 A8   ; 0DED5 data, read by 0816b 0818e
  DEE5  .byte C8 00 18 0F 1D 27 6F 56 BE BF 07 00 06 1B 18 39   ; 0DEE5 data, read by 0816b
  DEF5  .byte 61 60 61 3C 76 9F BF 5A F9 FD 1F 03 19 6C 60 E5   ; 0DEF5 data, read by 0816b
  DF05  .byte 86 82 F8 3E 1F 0F F6 80 40 A0 F0 F8 F4 F0 16 02   ; 0DF05 data, read by 0816b 0818e
  DF15  .byte 80 40 BF BF BF 7B 75 5C C7 83 60 40 58 1A 1B 23   ; 0DF15 data, read by 0816b
  DF25  .byte 3E 7F EC FE F6 FE EC EC 6E AB 10 0C 0C 14 F0 F0   ; 0DF25 data, read by 0816b
  DF35  .byte F4 76 83 83 83 4F 9F B8 98 5C 7F 7F 7F 3C 78 40   ; 0DF35 data, read by 0816b
  DF45  .byte 70 38 8B 9B 9F 36 CC 90 98 5C 76 66 64 C8 30 60   ; 0DF45 data, read by 0816b
  DF55  .byte 70 38 6C 3C 16 06 18 16 07 6C 3C 16 06 18 16 0D   ; 0DF55 data, read by 0816b 0818e
  DF65  .byte 7E 8B 16 07 74 00 1C 7E F3 FB B5 E5 07 16 02 1C   ; 0DF65 data, read by 0816b 0818e
  DF75  .byte 6E 66 63 02 00 19 7E FF 9D C9 CF F7 F7 07 07 70   ; 0DF75 data, read by 0816b
  DF85  .byte 72 3E 3B 09 4C F8 FF F8 FF 7E C3 B0 F0 C0 16 03   ; 0DF85 data, read by 0816b 0818e
  DF95  .byte 80 00 40 20 01 07 1F 37 63 41 C1 81 16 03 08 1C   ; 0DF95 data, read by 0816b 0818e
  DFA5  .byte 3E 3F 7F 7F 22 02 FE FE 7F 7F 7F 06 16 02 01 01   ; 0DFA5 data, read by 0816b 0818e
  DFB5  .byte 80 E4 EC 3E 1C 8C CE FF EF E6 C0 F0 F8 78 3C 04   ; 0DFB5 data, read by 0816b
  DFC5  .byte C0 40 00 83 4F BF BF 88 5C 6C 3C 7F 3E 58 40 70   ; 0DFC5 data, read by 0816b
  DFD5  .byte 38 18 00 FF DF 9B E6 4C 2E 36 1E 9A 32 66 0C 30   ; 0DFD5 data, read by 0816b
  DFE5  .byte 1C 0C 16 04 03 06 0F 6F B7 16 06 18 78 16 02 10   ; 0DFE5 data, read by 0816b 0818e
  DFF5  .byte 64 D8 F6 FC FF 16 08 2D 33 3E 7E 7D 42 30 DE 1E   ; 0DFF5 data, read by 0816b 0818e
  E005  .byte 0C 01 19 3E 3F 0F 01 F8 F0 E8 B4 FC F8 FC 1F 16   ; 0E005 data, read by 0816b
  E015  .byte 02 10 48 48 00 F8 FC 0E 7F ED FB 38 07 01 06 00   ; 0E015 data, read by 0818e 0816b
  E025  .byte 0E 73 30 16 04 EE 5F FF 33 FF 77 80 00 99 EC 20   ; 0E025 data, read by 0816b 0818e
  E035  .byte 0C 16 04 1F 0F F6 80 F0 08 80 00 F4 F0 16 06 0F   ; 0E035 data, read by 0816b 0818e
  E045  .byte 1F 3F 3F 7F 7F 22 02 00 07 1F 1F 3F 3F 7F 7F 80   ; 0E045 data, read by 0816b 0818e
  E055  .byte 40 A0 A0 A0 60 40 C0 00 80 C0 C0 C0 80 80 00 3F   ; 0E055 data, read by 0816b
  E065  .byte 7F 7F 7E FF FD FF FA 1F 3F 3F 3F 7E 7C 7C 7C FA   ; 0E065 data, read by 0816b
  E075  .byte F6 FC E8 F8 D0 F0 A0 FC F8 F0 F0 E0 E0 C0 C0 FF   ; 0E075 data, read by 0816b
  E085  .byte FA FE F4 EC 98 70 00 7C 7C 78 78 70 60 16 03 38   ; 0E085 data, read by 0816b 0818e
  E095  .byte 7C FC F4 EC 98 70 16 02 38 78 78 70 60 16 03 06   ; 0E095 data, read by 0816b 0818e
  E0A5  .byte 1F 38 30 30 20 07 1F 3F 7F 7F 7F 22 02 16 02 30   ; 0E0A5 data, read by 0816b 0818e
  E0B5  .byte 78 1C 5C 2C 2E E0 F8 CC 84 E2 A2 D3 D1 28 28 28   ; 0E0B5 data, read by 0816b
  E0C5  .byte 28 28 28 28 28 22 08 2E 2E 2E 2E 2E 2E 0E 2E D1   ; 0E0C5 data, read by 0816b 0818e
  E0D5  .byte D1 D1 D1 D1 D1 F1 D1 14 14 14 14 14 14 14 14 7F   ; 0E0D5 data, read by 0816b
  E0E5  .byte 7F 7F 7F 7F 7F 7F 7F 5C 5C 5C 5C 5C 5C 5C 5C A2   ; 0E0E5 data, read by 0816b
  E0F5  .byte A2 A2 A2 A2 A2 A2 A2 2E 2E 2E 2E 2E 2E 2E 2E D1   ; 0E0F5 data, read by 0816b
  E105  .byte D1 D1 D1 D1 D1 D1 D1 28 18 14 14 14 14 14 14 22   ; 0E105 data, read by 0816b
  E115  .byte 03 7F 7F 7F 7F 7F 6E 2E 2E 2E 2E 2E 2E 2E 91 D1   ; 0E115 data, read by 0818e 0816b
  E125  .byte D1 D1 D1 D1 D1 D1 14 14 10 10 00 03 1F 1F 7F 7F   ; 0E125 data, read by 0816b
  E135  .byte 7F 7F 22 03 FC 2E 2E 2E 2E 06 86 F2 F8 D1 D1 D1   ; 0E135 data, read by 0816b 0818e
  E145  .byte D1 F9 F9 FD 1F 3F 3F 7F 7F 7F 38 16 02 F3 EE FF   ; 0E145 data, read by 0816b 0818e
  E155  .byte EF F8 E0 60 00 FC FC FE FE FE 7E 16 02 8F 67 B7   ; 0E155 data, read by 0816b 0818e
  E165  .byte D7 7F 38 16 03 07 18 27 5F 5F 7E BB 16 02 07 1F   ; 0E165 data, read by 0816b 0818e
  E175  .byte 3F 3E 3F 7F 00 C0 7C C7 DC 74 B8 DC 16 02 80 F8   ; 0E175 data, read by 0816b 0818e
  E185  .byte E0 98 C0 F8 BF BD DF 67 38 0F 01 00 7F 7F 3F 1F   ; 0E185 data, read by 0816b
  E195  .byte 07 16 03 AF 1A 04 F0 20 1A F0 00 52 E4 F0 C0 C0   ; 0E195 data, read by 0816b 0818e
  E1A5  .byte E0 16 02 01 02 03 07 07 0F 0F 0A 00 01 01 03 03   ; 0E1A5 data, read by 0816b 0818e
  E1B5  .byte 07 07 07 80 C0 40 60 60 30 30 30 16 02 80 80 80   ; 0E1B5 data, read by 0816b 0818e
  E1C5  .byte C0 C0 C0 0E 0F 0E 0E 0E 0E 0E 1E 05 06 07 07 07   ; 0E1C5 data, read by 0816b
  E1D5  .byte 07 07 07 50 B0 70 70 70 70 70 78 A0 40 80 80 80   ; 0E1D5 data, read by 0816b
  E1E5  .byte 80 80 80 3E 76 6E FE FE FF 77 03 0B 1B 33 63 41   ; 0E1E5 data, read by 0816b
  E1F5  .byte 44 01 00 7C 6E 76 7B 7D DF EE C0 90 98 9C 9E 8E   ; 0E1F5 data, read by 0816b
  E205  .byte 26 80 00 38 70 70 FC FE F9 B3 46 10 20 20 60 68   ; 0E205 data, read by 0816b
  E215  .byte 76 7C 38 18 18 18 18 18 18 18 18 18 18 18 18 18   ; 0E215 data, read by 0816b
  E225  .byte 18 18 18 16 04 78 FC 86 83 16 05 78 7C 7E 40 40   ; 0E225 data, read by 0816b 0818e
  E235  .byte 40 40 7F 22 02 FE 3F 3F 3F 3F 00 7F FE F9 C0 60   ; 0E235 data, read by 0816b 0818e
  E245  .byte 30 1F F7 22 02 7F 80 C0 E0 F0 0F 80 40 C0 16 02   ; 0E245 data, read by 0816b 0818e
  E255  .byte 7C 22 04 FE 16 03 7C 00 FF 01 03 0C 3F 7F 22 03   ; 0E255 data, read by 0816b 0818e
  E265  .byte 07 16 04 70 0F 00 F8 FF C0 F0 FC FE 22 02 FC 01   ; 0E265 data, read by 0816b 0818e
  E275  .byte 16 04 F0 0C 83 FE 7F 3E 02 01 16 04 3E 01 01 16   ; 0E275 data, read by 0816b 0818e
  E285  .byte 05 83 01 00 E0 10 08 07 01 7E 22 02 1F 0F 07 16   ; 0E285 data, read by 0818e 0816b
  E295  .byte 02 22 03 1F 3F 7F 22 02 16 02 FF E0 DF BF 7F FF   ; 0E295 data, read by 0818e 0816b
  E2A5  .byte C0 80 00 E0 F8 FC FF E0 7F 22 02 1F E7 FB E0 80   ; 0E2A5 data, read by 0816b 0818e
  E2B5  .byte 57 56 AA A9 00 07 F0 00 A9 A9 55 56 FF F8 16 02   ; 0E2B5 data, read by 0816b 0818e
  E2C5  .byte E0 58 F4 FE 0F 02 84 78 00 A0 78 FC FE FC 78 80   ; 0E2C5 data, read by 0816b
  E2D5  .byte 1F 3F 7F 3F 16 04 0F 1F 3F 16 05 FC F0 C0 16 05   ; 0E2D5 data, read by 0816b 0818e
  E2E5  .byte F0 C0 16 06 46 53 01 18 27 5A DE CF DF 7E 46 02   ; 0E2E5 data, read by 0816b 0818e 0812b 08130
  E2F5  .byte 18 3D 25 30 20 1F 2C 18 FF 5E DE FF FD DF 46 03   ; 0E2F5 data, read by 0816b 0818e
  E305  .byte A9 A5 10 1B E7 46 03 80 80 F0 FE FF 46 06 F0 E4   ; 0E305 data, read by 0816b 0818e
  E315  .byte F8 E3 C7 D7 6F 02 7A CF 3F 3C 38 29 00 01 01 31   ; 0E315 data, read by 0816b
  E325  .byte 1C 60 F0 EF FF 5C 50 53 02 9F 0F 30 1C 20 20 20   ; 0E325 data, read by 0816b 0818e
  E335  .byte 1F 0E 38 E0 46 04 E4 F0 C0 46 05 1A 36 26 6E 5D   ; 0E335 data, read by 0816b 0818e
  E345  .byte DF DF 5F 07 0F 1D 19 3A 30 20 2E AF 6F 6F EF DF   ; 0E345 data, read by 0816b
  E355  .byte 53 03 73 F1 D1 90 A0 46 02 E0 D8 E8 F4 F4 FA FA   ; 0E355 data, read by 0816b 0818e
  E365  .byte 53 02 20 30 98 98 0C 0C 00 06 7F 3F 1F 33 61 E1   ; 0E365 data, read by 0816b 0818e
  E375  .byte C0 C0 0E 0C 00 0F 1F 1F 3F 3F 53 03 7B 3D 3E 1E   ; 0E375 data, read by 0816b 0818e
  E385  .byte 1E C0 80 00 F4 FB FD FD FD FE FE F4 F4 F6 F7 F5   ; 0E385 data, read by 0816b
  E395  .byte 6D 04 00 08 38 F8 F8 FA F2 C0 C0 C1 73 C3 E3 79   ; 0E395 data, read by 0816b
  E3A5  .byte 1F 3F 3F 3F 0F 3C 1F 07 00 1E 1E 3C 7C 7F 7F 2F   ; 0E3A5 data, read by 0816b
  E3B5  .byte F8 FD FD FB F3 80 F0 F8 00 6B 9B 36 EC 9C 7E 16   ; 0E3B5 data, read by 0816b
  E3C5  .byte FC F6 E6 CC 10 60 98 FC 00 6C DE BE F4 E5 E7 53   ; 0E3C5 data, read by 0816b 0818e
  E3D5  .byte 02 1F 33 61 43 42 40 00 70 7E 7F 7F 7F 53 04 99   ; 0E3D5 data, read by 0818e 0816b
  E3E5  .byte 88 8C 84 46 04 C0 70 B8 DC BF 9F DF CF 80 C0 60   ; 0E3E5 data, read by 0816b 0818e
  E3F5  .byte 38 00 0E 06 06 53 02 71 20 60 40 40 40 70 60 0F   ; 0E3F5 data, read by 0816b 0818e
  E405  .byte 1F 1F 3F 3F 3F 53 03 7F 3D 1D 1C 1C 46 02 C0 F0   ; 0E405 data, read by 0816b 0818e
  E415  .byte FB FB FB FB E7 F0 D0 D0 D0 D0 D0 B0 46 02 20 E0   ; 0E415 data, read by 0816b 0818e
  E425  .byte E0 E0 E0 C0 80 C0 61 33 1D 30 18 0F 7F 3F 1F 0F   ; 0E425 data, read by 0816b
  E435  .byte 02 0F 07 00 E1 C3 FE FE EC 0C 3C E0 DE BC 80 1C   ; 0E435 data, read by 0816b
  E445  .byte 7C F8 C0 00 D7 D7 DF 5F 5F 2F 17 1F 39 38 30 30   ; 0E445 data, read by 0816b
  E455  .byte 38 1C 08 03 F8 F8 FC FC FE FE 53 02 60 20 30 10   ; 0E455 data, read by 0816b 0818e
  E465  .byte 46 03 E0 1F 1F 3F 4F 87 87 87 87 01 01 00 3E 7F   ; 0E465 data, read by 0816b 0818e
  E475  .byte 7F 7F 7F 53 03 7F 3D 3C 3C 3C 0E 0C 00 F0 FB FB   ; 0E475 data, read by 0816b 0818e
  E485  .byte FB FB F8 FC F6 F6 FB FB 7B FB 46 02 08 38 FC FC   ; 0E485 data, read by 0816b 0818e
  E495  .byte FC FC 70 C0 95 8F BF FC 5E 3E 0F 3F 6F 73 60 30   ; 0E495 data, read by 0816b
  E4A5  .byte 38 00 87 07 AF 7E FD E0 F0 F0 7F FF 7E 99 00 80   ; 0E4A5 data, read by 0816b
  E4B5  .byte C0 00 87 8C 01 07 FC 03 46 02 7F 7F FE F8 03 46   ; 0E4B5 data, read by 0816b 0818e
  E4C5  .byte 03 77 DF BD 32 06 0C 98 E0 80 26 4E DC F8 F0 60   ; 0E4C5 data, read by 0818e 0816b
  E4D5  .byte 00 FE 53 07 00 FE FE FE FE 00 FE 00 01 01 01 01   ; 0E4D5 data, read by 0816b 0818e
  E4E5  .byte 01 01 01 FE FE FE FE FE FE FE FE 00 0F 3F 7F 53   ; 0E4E5 data, read by 0816b
  E4F5  .byte 02 BF BF 7C 00 0F 3F 7F 7F 7F 7F 3F F0 FC FE 53   ; 0E4F5 data, read by 0818e 0816b
  E505  .byte 02 FD FD 0E 00 F0 FC FE FE FE F2 F0 3C 3F 3C 1F   ; 0E505 data, read by 0818e 0816b
  E515  .byte 1F 3F 7C 9F 0F 10 13 08 07 10 13 68 0C F0 08 E8   ; 0E515 data, read by 0816b
  E525  .byte D0 F0 0E E9 F0 00 F0 10 E0 00 F0 16 21 40 90 BC   ; 0E525 data, read by 0816b
  E535  .byte 7F 3C 1C 03 1E 3F 7F 7F 3F 1F 03 00 FA FC 46 02   ; 0E535 data, read by 0816b 0818e
  E545  .byte FE 46 02 FF FD 03 53 05 00 84 02 0D 1D 9E 1C 38   ; 0E545 data, read by 0816b 0818e
  E555  .byte C0 78 FC F2 E2 E0 E0 C0 46 06 0F 3F 7F 46 06 0F   ; 0E555 data, read by 0816b 0818e
  E565  .byte 3F 46 05 F0 FC FE 46 06 F0 FC 53 02 BF 8F 70 3C   ; 0E565 data, read by 0816b 0818e
  E575  .byte 7F B8 7F 7F 7F 7F 3F 0F 10 57 53 02 FD FD 0E 0C   ; 0E575 data, read by 0816b 0818e
  E585  .byte FE 09 FE FE FE F2 F0 F0 00 F6 23 61 90 BC 7F 3C   ; 0E585 data, read by 0816b
  E595  .byte 1C 03 1D 3E 7F 7F 3F 1F 03 00 FD FA FE 00 FF 46   ; 0E595 data, read by 0816b
  E5A5  .byte 02 FF 02 FD 01 FF FE 53 02 00 44 86 8D 1D FD 1C   ; 0E5A5 data, read by 0818e 0816b
  E5B5  .byte 38 C0 B8 78 72 E2 82 E0 C0 46 03 07 58 E7 8F 9E   ; 0E5B5 data, read by 0816b 0818e
  E5C5  .byte BC 46 03 07 5E 7F 7F 7F 30 68 A7 A4 63 C7 7B 01   ; 0E5C5 data, read by 0816b 0818e
  E5D5  .byte 00 30 78 7B FC 78 84 FE 68 9C CC E4 F4 F6 7F FD   ; 0E5D5 data, read by 0816b
  E5E5  .byte 80 68 38 18 08 08 86 06 6F FE DE 7F 1F 1D 1F 0F   ; 0E5E5 data, read by 0816b
  E5F5  .byte 1F 6F 67 01 06 06 46 05 C0 FC 53 02 FB 53 04 3F   ; 0E5F5 data, read by 0816b 0818e
  E605  .byte 00 0C 0C BD 5F BF 5F FE F6 FC F8 42 A1 41 A0 18   ; 0E605 data, read by 0816b
  E615  .byte 18 46 02 7F 58 48 B7 B0 70 30 0F 00 3F 3F 7F 7F   ; 0E615 data, read by 0816b 0818e
  E625  .byte 3F 0F 00 FE 1A 02 FD 0D 06 0C F0 00 E4 FC F2 F2   ; 0E625 data, read by 0816b
  E635  .byte F8 F0 46 03 03 0C 13 67 CF 9E 46 03 03 0F 1F 7F   ; 0E635 data, read by 0816b 0818e
  E645  .byte 7F 18 34 D3 52 B1 E3 3D 46 02 18 3C BD 7E BC C2   ; 0E645 data, read by 0816b 0818e
  E655  .byte FF 46 02 C0 30 C8 E6 F3 F9 46 03 C0 30 18 0E 06   ; 0E655 data, read by 0816b 0818e
  E665  .byte DE FC FC FF 6F 3F 3F 1F 3F 1F 1F 33 30 01 01 00   ; 0E665 data, read by 0816b
  E675  .byte 01 00 01 80 F9 FF 7F FF FE FF FE FF 7E 81 81 00   ; 0E675 data, read by 0816b
  E685  .byte 7B B7 4F 3F FA FC 78 F0 84 48 B0 CC 0C 80 80 00   ; 0E685 data, read by 0816b
  E695  .byte AA 55 AA 55 AA 55 AA 55 46 09 03 0D 12 24 2D 49   ; 0E695 data, read by 0816b 0818e
  E6A5  .byte B1 46 02 03 0F 1F 1F 3F 7F FE 01 80 30 40 81 80   ; 0E6A5 data, read by 0816b 0818e
  E6B5  .byte 21 00 FE 53 03 FE FF FE 00 E0 10 28 74 B6 7F B3   ; 0E6B5 data, read by 0816b 0818e
  E6C5  .byte 46 02 E0 D0 88 48 80 4C B8 5E 22 1C 03 46 03 7F   ; 0E6C5 data, read by 0816b 0818e
  E6D5  .byte 3F 1F 03 46 04 31 6A 15 00 FE 3F 03 00 FE F5 EA   ; 0E6D5 data, read by 0816b 0818e
  E6E5  .byte FF 01 46 03 73 E7 47 0E 7C F8 F0 00 8C 18 B8 F0   ; 0E6E5 data, read by 0816b 0818e
  E6F5  .byte 80 46 06 1C 22 4D B1 A3 46 04 1C 3E 7E 7C 46 03   ; 0E6F5 data, read by 0816b 0818e
  E705  .byte 80 40 A0 3F 61 46 04 80 C0 C0 9E 02 02 04 08 31   ; 0E705 data, read by 0816b 0818e
  E715  .byte 4F 9E 90 01 01 03 07 0F 3F 7F 7F 84 09 52 02 00   ; 0E715 data, read by 0816b
  E725  .byte 05 13 31 FB F7 EF 53 02 FE FC FE 8E 27 4B 57 0F   ; 0E725 data, read by 0816b 0818e
  E735  .byte BE 7C 38 70 F8 F4 E8 F0 C0 80 C0 95 8A 45 6A 3F   ; 0E735 data, read by 0816b
  E745  .byte 1F 0F 00 7A 75 3B 15 46 04 31 C4 0B 97 AF FF 7E   ; 0E745 data, read by 0816b 0818e
  E755  .byte 38 FE FB F4 68 50 46 03 03 0F 1F 3E 78 70 E1 CC   ; 0E755 data, read by 0816b 0818e
  E765  .byte 46 02 03 0F 1F 3F 3F 73 E0 F8 DC 06 03 01 83 07   ; 0E765 data, read by 0816b 0818e
  E775  .byte 46 02 E0 F0 FC FE FC F8 0D 1B 1B 36 6C EC D8 D8   ; 0E775 data, read by 0816b 0818e
  E785  .byte 06 0C 0C 18 30 70 60 60 D4 DE EF 6C 78 78 78 DC   ; 0E785 data, read by 0816b
  E795  .byte 3B 31 10 10 00 20 20 60 E0 60 30 D8 6C 66 37 37   ; 0E795 data, read by 0816b
  E7A5  .byte 00 80 C0 60 30 38 18 18 E1 43 03 01 46 05 01 01   ; 0E7A5 data, read by 0816b 0818e
  E7B5  .byte 46 05 B8 78 F0 E0 C0 46 03 C0 C0 80 46 05 3C 18   ; 0E7B5 data, read by 0816b 0818e
  E7C5  .byte 46 0F 01 02 1C 21 7B 7B FB 46 02 01 03 1E 34 34   ; 0E7C5 data, read by 0816b 0818e
  E7D5  .byte 75 E0 10 08 C4 E4 F2 F2 FA 00 E0 F0 38 18 0C 2C   ; 0E7D5 data, read by 0816b
  E7E5  .byte 64 97 97 96 96 97 97 96 97 6B 6A 69 69 6B 6A 69   ; 0E7E5 data, read by 0816b
  E7F5  .byte 69 FB 3B DB 2B 0B DB 3B FB 4E DE FE F6 FE 2E E6   ; 0E7F5 data, read by 0816b
  E805  .byte B6 FF 7F 7F 27 1E 03 01 00 05 05 05 1A 03 01 46   ; 0E805 data, read by 0816b
  E815  .byte 02 F6 F6 E6 CC 0C 18 F0 E0 9C 1C 1C 38 F8 F0 E0   ; 0E815 data, read by 0818e 0816b
  E825  .byte 00 38 64 FA FD 8E 82 83 81 00 38 3C 7E 7F 7F 7E   ; 0E825 data, read by 0816b
  E835  .byte 7E 80 80 70 88 F8 F0 80 80 46 02 80 70 46 04 81   ; 0E835 data, read by 0816b 0818e
  E845  .byte 80 82 D5 AB 56 7C 38 7E 7F 7D 2A 54 28 46 02 02   ; 0E845 data, read by 0816b 0818e
  E855  .byte 07 7F FE 61 0D 03 46 02 02 07 7F 1F 03 46 02 80   ; 0E855 data, read by 0816b 0818e
  E865  .byte E0 F0 D0 A0 20 40 80 00 80 E0 E0 C0 C0 80 46 04   ; 0E865 data, read by 0816b 0818e
  E875  .byte 18 3F FE 53 02 46 04 18 3F 53 02 46 02 07 7F FD   ; 0E875 data, read by 0816b 0818e
  E885  .byte 70 0F 01 46 03 07 7F 0F 01 46 02 80 40 40 80 40   ; 0E885 data, read by 0816b 0818e
  E895  .byte 40 80 46 02 80 80 00 80 80 00 FE 6F 1E D8 21 1E   ; 0E895 data, read by 0816b 0818e
  E8A5  .byte 46 02 53 03 3F 1E 46 05 6F 9F 7F 3F F1 EE 46 03   ; 0E8A5 data, read by 0816b 0818e
  E8B5  .byte 6F 53 04 00 30 78 BC 7E 3C 92 FD 46 02 30 78 FC   ; 0E8B5 data, read by 0816b 0818e
  E8C5  .byte F8 FC FE 01 01 7E FF 80 7E 01 46 03 01 7F 7F 01   ; 0E8C5 data, read by 0816b 0818e
  E8D5  .byte 46 02 DE 5F 07 93 70 08 07 00 53 03 6F 0F 07 46   ; 0E8D5 data, read by 0816b 0818e
  E8E5  .byte 02 1D ED EA 74 68 08 10 E0 FE FE FC F8 F0 F0 E0   ; 0E8E5 data, read by 0818e 0816b
  E8F5  .byte 46 02 0E 1D 3D 7A 54 28 10 46 02 0E 1E 3C 38 10   ; 0E8F5 data, read by 0816b 0818e
  E905  .byte 00 38 7C FE FA B1 45 36 08 00 38 7C 7C 7E 3A 08   ; 0E905 data, read by 0816b
  E915  .byte 00 78 F4 FA FA 75 31 29 16 00 78 7C 7C 3E 1E 16   ; 0E915 data, read by 0816b
  E925  .byte 00 1C 3A 3A 34 5A B2 44 38 00 1C 1C 18 3C 7C 38   ; 0E925 data, read by 0816b
  E935  .byte 00 26 7D FD B9 42 3C 46 03 26 7E 7E 3C 46 03 01   ; 0E935 data, read by 0816b 0818e
  E945  .byte 03 0E 1F 3E 7E FC B8 46 02 01 0E 1F 3F 7F 7F 7E   ; 0E945 data, read by 0816b 0818e
  E955  .byte FF BF DB A6 91 2F 10 00 7E 7F BF FF EE C0 E0 00   ; 0E955 data, read by 0816b
  E965  .byte 80 C0 F8 F4 7A 7A B4 46 02 80 C0 F8 FC FC 7C 41   ; 0E965 data, read by 0816b 0818e
  E975  .byte 27 5F 45 22 10 0F 00 3E 1E 3F 3F 1F 0F 46 02 67   ; 0E975 data, read by 0816b 0818e
  E985  .byte E4 FA 65 A8 05 E0 1F 80 83 E7 53 03 1F 00 04 D2   ; 0E985 data, read by 0816b 0818e
  E995  .byte A2 0C F0 40 80 00 F8 FC FC F0 00 80 46 03 01 02   ; 0E995 data, read by 0816b 0818e
  E9A5  .byte 1C 25 3B 3B FB 46 02 01 03 1A 35 35 75 E0 10 08   ; 0E9A5 data, read by 0816b 0818e
  E9B5  .byte C4 E4 F2 F2 FA 00 E0 F0 38 18 8C 8C 94 97 97 96   ; 0E9B5 data, read by 0816b
  E9C5  .byte 96 96 97 97 97 69 68 6B 6B 69 6A 6B 6A FB 3B DB   ; 0E9C5 data, read by 0816b
  E9D5  .byte 2B 0B DB 3B FB 36 E6 EE FE E6 36 DE CE FF 7F 7F   ; 0E9D5 data, read by 0816b
  E9E5  .byte 26 1E 03 01 00 04 04 04 1B 03 01 46 02 F6 F6 E6   ; 0E9E5 data, read by 0816b 0818e
  E9F5  .byte CC 0C 18 F0 E0 EC EC DC 38 F8 F0 E0 46 03 18 24   ; 0E9F5 data, read by 0816b 0818e
  EA05  .byte 24 18 46 04 18 24 24 18 46 02 7C 0E 82 73 09 05   ; 0EA05 data, read by 0816b 0818e
  EA15  .byte 05 05 00 F0 FC 7C 0E 06 06 06 00 20 51 51 8A 8A   ; 0EA15 data, read by 0816b
  EA25  .byte 04 00 20 71 FB FB DF DF 8E 04 07 18 27 5E 78 B0   ; 0EA25 data, read by 0816b
  EA35  .byte A0 A0 00 07 1F 3F 3F 7F 7F 7F E0 18 8C 06 0E 17   ; 0EA35 data, read by 0816b
  EA45  .byte 2F 17 00 E0 F0 F8 F0 E8 D0 E8 80 80 82 45 6A 3F   ; 0EA45 data, read by 0816b
  EA55  .byte 1F 07 7F 7F 7D 3A 15 46 03 2F 57 AF 5E BE FC F8   ; 0EA55 data, read by 0816b 0818e
  EA65  .byte E0 D0 A8 50 A0 40 46 03 06 1A 26 5D 5D B2 A1 C9   ; 0EA65 data, read by 0816b 0818e
  EA75  .byte 00 04 1C 38 38 7C 7E 36 60 58 CC D6 0A 87 5B 60   ; 0EA75 data, read by 0816b
  EA85  .byte 00 20 70 F8 F4 78 20 00 36 C9 B0 60 55 2A 1F 07   ; 0EA85 data, read by 0816b
  EA95  .byte 00 06 4F 1F 2A 15 46 02 DC 2F 57 AE 5E FC F8 E0   ; 0EA95 data, read by 0816b 0818e
  EAA5  .byte 20 D0 A8 50 A0 46 04 08 14 2E 5A 54 A2 81 46 02   ; 0EAA5 data, read by 0816b 0818e
  EAB5  .byte 08 1C 3C 38 7C 7E 00 08 1C 1E 2B 47 4B 37 46 02   ; 0EAB5 data, read by 0816b 0818e
  EAC5  .byte 08 08 14 38 34 08 80 80 61 55 2A 1F 07 00 7F 7F   ; 0EAC5 data, read by 0816b
  EAD5  .byte 1E 2A 15 46 03 CB D7 AE DE FC F8 F0 00 34 28 50   ; 0EAD5 data, read by 0816b 0818e
  EAE5  .byte 20 46 09 0C 3A 52 46 06 0C 3C 46 05 30 58 64 46   ; 0EAE5 data, read by 0816b 0818e
  EAF5  .byte 06 30 38 A4 44 38 57 AA 75 3E 1C 78 38 00 28 55   ; 0EAF5 data, read by 0818e 0816b
  EB05  .byte 0A 46 02 22 1C 3E 56 AE FC F8 70 1C 46 02 28 50   ; 0EB05 data, read by 0816b 0818e
  EB15  .byte 46 04 01 0F 1F 3F 39 3C 4A 46 02 01 0E 11 10 08   ; 0EB15 data, read by 0816b 0818e
  EB25  .byte 3C 83 C7 EF FF FD 3C 3C 3C 00 83 45 A5 28 18 18   ; 0EB25 data, read by 0816b
  EB35  .byte 18 B0 F8 FC FC CE 8E 1E 29 00 B0 48 48 84 04 08   ; 0EB35 data, read by 0816b
  EB45  .byte 1E 89 FF E3 E3 E2 E2 E5 E5 7E 7C 7C 7C 7D 7D 7B   ; 0EB45 data, read by 0816b
  EB55  .byte 7B 3F FF C3 3C 53 04 0E 38 FC FF FE BD DB E7 48   ; 0EB55 data, read by 0816b 0818e
  EB65  .byte FF F3 F3 73 73 B3 B3 3F 3C 3C 3C BC BC FC FC E5   ; 0EB65 data, read by 0816b
  EB75  .byte E5 E2 E2 E3 62 3C 00 7B 7B 7D 7D 7C 3C 46 02 53   ; 0EB75 data, read by 0816b 0818e
  EB85  .byte 04 3C C3 3C 00 EF 53 04 3C 46 02 B3 B3 73 73 73   ; 0EB85 data, read by 0818e 0816b
  EB95  .byte F3 1C 00 FC FC BC BC BC 1C 46 02 3C 7E 7E 53 05   ; 0EB95 data, read by 0816b 0818e
  EBA5  .byte 46 08 25 2D 25 05 02 06 04 25 03 80 82 85 89 9A   ; 0EBA5 data, read by 0816b 0818e 0812b 08130
  EBB5  .byte 0C 0C 2C 2C 2C 34 54 5D 12 32 52 52 52 4B AB A2   ; 0EBB5 data, read by 0816b
  EBC5  .byte 14 34 34 54 9E AE CE DE AA CA CA AA 61 51 31 21   ; 0EBC5 data, read by 0816b
  EBD5  .byte 3F 5F 6F 3F 1F 2F 1F 2F 40 A0 90 40 20 50 20 D0   ; 0EBD5 data, read by 0816b
  EBE5  .byte F0 F0 E0 E0 60 80 FC FE 08 08 10 10 90 7C 02 01   ; 0EBE5 data, read by 0816b
  EBF5  .byte 7E BD 7D BD 7C 9E EE FF 81 42 82 42 83 61 11 00   ; 0EBF5 data, read by 0816b
  EC05  .byte 1B 3C 4F 7F 07 03 01 00 24 43 B0 80 78 04 02 01   ; 0EC05 data, read by 0816b
  EC15  .byte F8 FC FC FE 76 32 20 00 24 1E 3E 4F CF 6F 72 20   ; 0EC15 data, read by 0816b
  EC25  .byte 2D 03 70 25 07 8F 70 25 09 02 06 25 05 02 05 09   ; 0EC25 data, read by 0816b 0818e
  EC35  .byte 25 06 04 16 25 05 04 1A 69 16 56 5C FC FC 00 F8   ; 0EC35 data, read by 0816b 0818e
  EC45  .byte FC 69 A9 A2 02 02 FC 04 02 AC EC 78 78 B8 B7 77   ; 0EC45 data, read by 0816b
  EC55  .byte FB 52 12 84 85 47 48 88 04 02 03 01 05 16 2A 6D   ; 0EC55 data, read by 0816b
  EC65  .byte 77 05 04 06 1A 29 55 92 88 F8 FC FC FE 76 32 20   ; 0EC65 data, read by 0816b
  EC75  .byte 00 24 1E 3E 4F CF 6F 72 20 E5 EB 7B 25 05 1A 14   ; 0EC75 data, read by 0816b 0818e
  EC85  .byte 84 FF 78 25 03 0F 07 25 06 F0 08 0F 03 25 09 0C   ; 0EC85 data, read by 0816b 0818e
  EC95  .byte 3C 7E 25 04 0C 32 42 81 25 03 E0 F0 F8 FC FC 25   ; 0EC95 data, read by 0816b 0818e
  ECA5  .byte 02 E0 10 08 28 1E 3E 00 C0 FC FE FF 7F EF EF C0   ; 0ECA5 data, read by 0816b 0818e
  ECB5  .byte 3C 02 01 00 80 10 10 7F 3F 0F 07 03 03 25 02 80   ; 0ECB5 data, read by 0816b 0818e
  ECC5  .byte 40 30 08 04 04 03 03 FE 76 72 B0 D0 60 E0 E0 4F   ; 0ECC5 data, read by 0816b
  ECD5  .byte CF CF 6A 38 90 10 10 E8 F7 F3 F7 75 73 FA F9 17   ; 0ECD5 data, read by 0816b
  ECE5  .byte 08 0C 08 8A 8C 05 06 3E 1F 3F 6F 57 37 2F 1F 41   ; 0ECE5 data, read by 0816b
  ECF5  .byte 20 40 90 A8 48 50 20 B6 D6 4C 6C B4 B8 10 00 49   ; 0ECF5 data, read by 0816b
  ED05  .byte 29 B2 92 4A 44 A8 10 56 57 15 15 06 02 25 02 A9   ; 0ED05 data, read by 0816b 0818e
  ED15  .byte A8 6A 2A 19 05 02 00 20 20 30 50 58 6C 34 5E 50   ; 0ED15 data, read by 0816b
  ED25  .byte 50 48 A8 A4 92 4A A1 25 02 40 61 71 31 58 6D 01   ; 0ED25 data, read by 0816b 0818e
  ED35  .byte 41 A1 92 8A 4A A5 92 00 80 80 80 80 80 3C FE 80   ; 0ED35 data, read by 0816b
  ED45  .byte 40 40 40 40 7C C2 01 AF D7 EF F7 F7 7B F8 7D 50   ; 0ED45 data, read by 0816b
  ED55  .byte 28 10 08 08 84 07 82 36 1B 67 1F 07 19 07 01 49   ; 0ED55 data, read by 0816b
  ED65  .byte 64 98 60 18 26 18 0E F8 FC FE FE 76 32 90 80 24   ; 0ED65 data, read by 0816b
  ED75  .byte 1E 3F 4F CF EF 6A 50 79 3F DF 2D 03 F0 39 86 C0   ; 0ED75 data, read by 0816b 0818e
  ED85  .byte 20 25 03 0F C6 39 7C 7F 3F 0F 03 03 00 46 83 80   ; 0ED85 data, read by 0816b 0818e
  ED95  .byte 40 30 0C 04 03 C0 FC 3E DA 48 A0 80 00 7C 06 C7   ; 0ED95 data, read by 0816b
  EDA5  .byte 3F FE F8 E0 80 1C 0D 0E 07 1F 13 08 00 23 12 11   ; 0EDA5 data, read by 0816b
  EDB5  .byte 18 20 3D 3F 08 3C 7E 7E 7E BC D8 D8 D0 C2 A5 99   ; 0EDB5 data, read by 0816b
  EDC5  .byte BD 7E 3C 3C 3C 25 02 0A 16 2F 2F 5F 5F 03 0F 15   ; 0EDC5 data, read by 0816b 0818e
  EDD5  .byte 29 50 50 A0 A0 25 0F 3E FB F6 EC D8 08 D5 EA 00   ; 0EDD5 data, read by 0816b 0818e
  EDE5  .byte 04 09 12 24 F5 2A 15 EE 0D 1B 3B 7B 7B 36 01 00   ; 0EDE5 data, read by 0816b
  EDF5  .byte 12 24 44 84 88 49 3E 07 E0 F0 F8 CC F6 7A 44 80   ; 0EDF5 data, read by 0816b
  EE05  .byte 10 28 1C 3E 3F BF BF 46 03 03 5F BF 7E 7F FF FE   ; 0EE05 data, read by 0816b
  EE15  .byte 1C 7C A0 40 81 80 00 01 25 02 0B 17 2F 2F 5F 5F   ; 0EE15 data, read by 0816b 0818e
  EE25  .byte 03 0F 14 28 50 50 A0 A0 25 04 80 80 98 9A 25 02   ; 0EE25 data, read by 0816b 0818e
  EE35  .byte 80 80 40 58 36 65 00 0C 0E 16 16 5B 6B 2B 0C 12   ; 0EE35 data, read by 0816b
  EE45  .byte 11 29 68 A4 94 D4 1A 38 74 C8 D0 B0 A0 A0 A5 C6   ; 0EE45 data, read by 0816b
  EE55  .byte 8A 34 28 48 50 50 7B 3B 3B 3E 3E 7E 79 79 84 44   ; 0EE55 data, read by 0816b
  EE65  .byte 44 41 41 81 86 06 CC EC 7C 3E 7E 7E 0C F8 33 13   ; 0EE65 data, read by 0816b
  EE75  .byte 83 45 8F F5 FA FC 73 3B 1F 0F 1F 1F 03 3E 8C 44   ; 0EE75 data, read by 0816b
  EE85  .byte 20 11 23 3D 7E 7F 1C 25 07 3E 1C 25 06 0E 37 40   ; 0EE85 data, read by 0816b 0818e
  EE95  .byte C0 C0 E0 F0 F8 00 0E 3F 7F 7F 7F 7F AF 00 C0 F0   ; 0EE95 data, read by 0816b
  EEA5  .byte 38 0C 06 07 03 25 02 C0 F0 F8 FC FE FE 70 B0 B8   ; 0EEA5 data, read by 0816b 0818e
  EEB5  .byte BC BE 9F 4F 47 1F 5F 5F 5F 6B 73 3D 3E F8 7E 3F   ; 0EEB5 data, read by 0816b
  EEC5  .byte 1F 87 67 1F 01 9F EB F3 FB 7D 1E 01 00 07 01 C3   ; 0EEC5 data, read by 0816b
  EED5  .byte FF FE FE FC C0 FE FE FE 6E 6C 64 40 00 16 54 5C   ; 0EED5 data, read by 0816b
  EEE5  .byte FC FC 00 EF DF 69 A9 A2 02 00 FF 13 27 00 1F 2D   ; 0EEE5 data, read by 0816b
  EEF5  .byte 02 FC C0 25 02 1F 2D 04 FC C0 C0 00 80 F0 FE 25   ; 0EEF5 data, read by 0818e 0816b
  EF05  .byte 04 80 F0 FE FF FE 25 03 FF FE F8 3C 1E 07 03 00   ; 0EF05 data, read by 0818e 0816b
  EF15  .byte 2F 0F 1E FE 3F 1F 07 03 80 C0 E0 38 25 04 C0 E0   ; 0EF15 data, read by 0816b 0818e
  EF25  .byte F8 FC 38 25 04 7F 2D 02 E0 3F DF C0 7F 9F 2F 0F   ; 0EF25 data, read by 0816b 0818e
  EF35  .byte 1F FF 3F 3F 00 80 F0 FC 7E 87 03 00 80 F0 FC FE   ; 0EF35 data, read by 0816b
  EF45  .byte 2D 03 07 25 05 80 C0 25 05 80 C0 E0 C0 3F DF C0   ; 0EF45 data, read by 0816b 0818e
  EF55  .byte E0 E0 60 E0 E0 FF 3F 3F 10 10 90 10 10 F0 F0 F0   ; 0EF55 data, read by 0816b
  EF65  .byte E0 E0 60 87 EF 08 08 08 10 10 9F 79 13 7F E0 F0   ; 0EF65 data, read by 0816b
  EF75  .byte 78 3C 7F EF F4 00 5F 6F 37 1B 0C 54 6B C0 20 10   ; 0EF75 data, read by 0816b
  EF85  .byte 08 04 F2 FA 3E 00 C0 E0 F0 F8 0C 04 C0 78 3C 3F   ; 0EF85 data, read by 0816b
  EF95  .byte 5F BF 70 30 0F 37 1B 0C 34 78 3F 0F 00 1E 3E FC   ; 0EF95 data, read by 0816b
  EFA5  .byte FC E2 1C 18 F0 E0 C0 25 02 1C E0 E0 00 01 03 07   ; 0EFA5 data, read by 0816b 0818e
  EFB5  .byte 07 27 77 7E FE 00 01 02 02 02 22 24 54 00 82 C7   ; 0EFB5 data, read by 0816b
  EFC5  .byte C7 C7 CE EE EE 25 02 82 82 82 84 44 44 FE 7E 1C   ; 0EFC5 data, read by 0816b 0818e
  EFD5  .byte 1C 08 25 03 54 14 08 08 25 04 EE EE FC 7C 7C 7C   ; 0EFD5 data, read by 0816b 0818e
  EFE5  .byte 38 10 44 44 48 28 28 28 10 25 04 1F 3F 61 FC 5D   ; 0EFE5 data, read by 0816b 0818e
  EFF5  .byte 25 04 1F 3F 43 0F 00 30 4C D2 CD E1 7F BB 25 02   ; 0EFF5 data, read by 0816b 0818e
  F005  .byte 30 38 BE DE E0 FC 65 DC E2 42 02 02 01 00 3B 63   ; 0F005 data, read by 0816b
  F015  .byte 41 01 01 01 25 02 F2 BF DF EE DC 9C 08 00 EC F2   ; 0F015 data, read by 0816b 0818e
  F025  .byte BA 98 88 08 25 06 01 0F 7E F0 25 05 01 0F 7F 25   ; 0F025 data, read by 0816b 0818e
  F035  .byte 04 F0 FC 02 29 25 05 F0 FC FE 38 61 C7 9F BF FF   ; 0F035 data, read by 0818e 0816b
  F045  .byte FE E8 1F 3F 7F 7C 64 40 41 57 3F 2D 05 7E 3F ED   ; 0F045 data, read by 0816b 0818e
  F055  .byte E5 E0 63 09 08 8C C6 2D 03 FE FE FC F8 FC B6 96   ; 0F055 data, read by 0816b 0818e
  F065  .byte 82 8C 24 20 30 18 F8 BC 5E 2E 17 0C 03 00 57 73   ; 0F065 data, read by 0816b
  F075  .byte 35 1D 0E 03 25 02 7E 3F 1F 8F DF FE 3C F8 84 C6   ; 0F075 data, read by 0816b 0818e
  F085  .byte E2 72 A2 D4 F8 25 02 5C 8E 86 C2 C0 72 3C 3C 3E   ; 0F085 data, read by 0816b 0818e
  F095  .byte 7F 7F 3F 3F 0C 25 03 80 2D 04 1F 25 03 80 2D 02   ; 0F095 data, read by 0816b 0818e
  F0A5  .byte 1F 25 03 03 2D 02 FE FC 80 25 03 03 FE F8 80 25   ; 0F0A5 data, read by 0816b 0818e
  F0B5  .byte 05 01 0F 7F FF 25 06 0F 7F 25 02 30 78 FC FE FE   ; 0F0B5 data, read by 0818e 0816b
  F0C5  .byte FF 25 03 30 18 00 FC E0 30 79 FE FC FF 7F 7F 3F   ; 0F0C5 data, read by 0816b 0818e
  F0D5  .byte 00 30 19 0D 06 06 03 03 FF 03 0F 1F 3E 7C FC FC   ; 0F0D5 data, read by 0816b
  F0E5  .byte 7F FC F8 E0 C1 83 03 F3 FF 3F 7F FC E0 C0 C0 C0   ; 0F0E5 data, read by 0816b
  F0F5  .byte F0 C0 80 03 1F 3F 3F 3F F8 E4 04 02 02 02 31 F1   ; 0F0F5 data, read by 0816b
  F105  .byte 00 18 F8 FC FC FC CE 0E 2D 02 7F 78 79 39 38 1C   ; 0F105 data, read by 0816b 0818e
  F115  .byte 03 25 02 07 07 07 07 03 2D 03 1F 2F 2F 17 97 7C   ; 0F115 data, read by 0816b 0818e
  F125  .byte 0E 07 E7 F3 F3 F9 79 18 88 88 C4 C5 C6 C0 E0 E7   ; 0F125 data, read by 0816b
  F135  .byte 77 77 3B BA B9 BF 9F C4 C4 64 62 82 01 21 F6 38   ; 0F135 data, read by 0816b
  F145  .byte 38 98 9C 7C FE FE F8 F3 7F 3F 1F 0F 07 07 03 0C   ; 0F145 data, read by 0816b
  F155  .byte 00 01 25 05 F8 F8 FC FC 2D 02 E8 03 47 87 03 03   ; 0F155 data, read by 0816b 0818e
  F165  .byte 25 02 07 00 7F 5F 7F FE F2 84 38 C0 BE BE 9E 1C   ; 0F165 data, read by 0816b 0818e
  F175  .byte 3C 78 C0 25 04 03 1F 2D 02 5F 25 04 03 1F FF BF   ; 0F175 data, read by 0816b 0818e
  F185  .byte 25 04 E0 FC FE E1 25 05 E0 FC FE 1A 15 2A 55 AA   ; 0F185 data, read by 0816b 0818e
  F195  .byte F5 2D 02 05 0A 15 2A 55 0A 25 02 D5 AA 55 AA 55   ; 0F195 data, read by 0816b 0818e
  F1A5  .byte AA FD FF 2A 55 AA 55 AA 55 02 00 60 A0 40 80 00   ; 0F1A5 data, read by 0816b
  F1B5  .byte 80 00 01 BF 5F BF 7F FF 7F FF FE 10 10 08 08 08   ; 0F1B5 data, read by 0816b
  F1C5  .byte 0C 0E 8F E0 E0 F0 F0 F0 F0 F4 76 0F 0F 1F 3F 7F   ; 0F1C5 data, read by 0816b
  F1D5  .byte 71 E2 E1 00 03 01 25 02 0E 1F 1F 7F 7F 2D 03 8F   ; 0F1D5 data, read by 0816b 0818e
  F1E5  .byte 17 0B 00 1F 0F 03 01 70 F8 FC F0 F1 F1 F1 F1 F1   ; 0F1E5 data, read by 0816b
  F1F5  .byte F9 F9 0F 0E 8E CE EE EE 76 77 78 98 18 18 18 78   ; 0F1F5 data, read by 0816b
  F205  .byte F8 E0 87 67 E7 E7 E7 87 7F FF F0 F8 F8 FC FC FE   ; 0F205 data, read by 0816b
  F215  .byte FE FF 60 70 70 78 78 3C 1C 0E E0 F0 78 7C 3F 1F   ; 0F215 data, read by 0816b
  F225  .byte 0F 00 1F 0F 07 03 25 04 0B 0B 87 CF 2D 03 0D FC   ; 0F225 data, read by 0816b 0818e
  F235  .byte FC 78 30 25 03 02 FB F8 FC FC FE FE 2D 02 77 77   ; 0F235 data, read by 0816b 0818e
  F245  .byte 3B 3B 1D 1D 0E 0E 19 79 FB FC FC F8 F0 E0 FE FE   ; 0F245 data, read by 0816b
  F255  .byte FC 78 78 70 60 40 FE BF BF BE 78 30 25 02 1C 4E   ; 0F255 data, read by 0816b 0818e
  F265  .byte 46 40 25 04 BF AF 6F 2B 1B 0B 07 02 40 50 10 14   ; 0F265 data, read by 0816b 0818e
  F275  .byte 04 04 25 02 2D 02 FE 7C 78 70 E0 40 1C 1E 0C 88   ; 0F275 data, read by 0816b 0818e
  F285  .byte 80 80 25 05 07 1F 3F 7F D5 25 04 07 1F 3F 2B 00   ; 0F285 data, read by 0816b 0818e
  F295  .byte 03 0F 7F 2D 03 5C 25 02 03 0F 7F 2D 02 BF 25 02   ; 0F295 data, read by 0816b 0818e
  F2A5  .byte E0 F8 FC C2 01 01 25 03 E0 F8 FC FE FE 35 2A 55   ; 0F2A5 data, read by 0816b 0818e
  F2B5  .byte AA 2D 04 0A 15 2A 55 25 04 54 AA 54 A8 D4 FC FC   ; 0F2B5 data, read by 0816b 0818e
  F2C5  .byte F8 AB 55 AB 57 2B 03 03 07 25 05 0C 3C CC 2D 05   ; 0F2C5 data, read by 0816b 0818e
  F2D5  .byte F3 C3 33 40 40 40 40 70 7C 7E 7F 80 80 80 80 80   ; 0F2D5 data, read by 0816b
  F2E5  .byte B0 BC 9E 7F 2D 02 E3 CD C5 C5 C1 1F 01 00 1C 3E   ; 0F2E5 data, read by 0816b 0818e
  F2F5  .byte 3E 3E 3E F8 2D 07 87 F0 3F 07 25 04 8C 8C EC FC   ; 0F2F5 data, read by 0816b 0818e
  F305  .byte FE FA F2 F2 73 73 13 E3 FD 1D 0D 0D 7D 79 79 7A   ; 0F305 data, read by 0816b
  F315  .byte 7C 40 40 40 86 86 86 84 80 80 80 80 7F 78 F3 F1   ; 0F315 data, read by 0816b
  F325  .byte F1 F0 78 7F 00 07 0F 0F 0F 0F 07 00 C7 2D 02 FE   ; 0F325 data, read by 0816b 0818e
  F335  .byte 78 1F 25 02 38 25 02 01 07 25 03 CF CB 90 30 F3   ; 0F335 data, read by 0816b 0818e
  F345  .byte 3F 07 03 30 34 6F CF 0C 00 03 00 ED FE 7E FC FC   ; 0F345 data, read by 0816b
  F355  .byte F8 F0 C0 16 0C BC 38 38 70 C0 25 02 01 07 1F 3F   ; 0F355 data, read by 0816b 0818e
  F365  .byte 57 AA D5 25 02 01 07 1F 2B 55 2A 18 7F 2D 03 FC   ; 0F365 data, read by 0816b 0818e
  F375  .byte B0 50 00 18 7F 2D 03 5F AF 25 02 F0 E8 04 02 01   ; 0F375 data, read by 0816b 0818e
  F385  .byte 01 25 03 F0 F8 FC FE FE 0D 1A 1F 1F 18 23 4F BF   ; 0F385 data, read by 0816b 0818e
  F395  .byte 02 05 25 02 07 1F 31 40 AA 55 EA FD 1F 7F 2D 02   ; 0F395 data, read by 0816b 0818e
  F3A5  .byte 55 AA 15 02 E0 F8 7C 0E 80 00 80 00 83 8C 88 88   ; 0F3A5 data, read by 0816b
  F3B5  .byte 7F FF 7F FF 7C 73 77 77 04 04 06 C6 C7 C7 C7 C7   ; 0F3B5 data, read by 0816b
  F3C5  .byte F8 F8 F8 38 3A 3A 3A 3A 7F F8 F2 F1 F9 78 7C 3F   ; 0F3C5 data, read by 0816b
  F3D5  .byte 00 07 0F 0F 07 07 03 00 FF 3F 9F 5F 4F 0F 1F FB   ; 0F3D5 data, read by 0816b
  F3E5  .byte 06 C7 E3 E3 F3 F3 E2 02 88 8B 8F 8F 8C 80 81 87   ; 0F3E5 data, read by 0816b
  F3F5  .byte 77 74 73 77 77 7F 7F 7B C7 C6 C6 04 04 44 C8 F0   ; 0F3F5 data, read by 0816b
  F405  .byte 3A 38 B8 F8 F8 F8 F0 E0 3F 3F 7F 7F FC 7B 34 18   ; 0F405 data, read by 0816b
  F415  .byte 25 04 03 04 08 00 FF FE FC FB E4 D8 A0 C0 00 01   ; 0F415 data, read by 0816b 0818e
  F425  .byte 03 04 18 20 40 00 38 78 F8 FB 3F 07 25 02 C7 87   ; 0F425 data, read by 0816b 0818e
  F435  .byte 07 04 25 04 7F 7F FE FC F8 E0 25 02 9E 9E 1C 18   ; 0F435 data, read by 0816b 0818e
  F445  .byte 20 25 03 9E 66 1F 0F 1D 18 1C 1B 7F 1B 02 01 03   ; 0F445 data, read by 0816b 0818e
  F455  .byte 07 03 00 9F BD 79 F2 C4 08 30 C0 7C 7E FE FC F8   ; 0F455 data, read by 0816b
  F465  .byte F0 C0 00 73 1C 81 7C 02 01 25 02 FC FF 7F 03 01   ; 0F465 data, read by 0816b 0818e
  F475  .byte 25 03 DD 39 F9 72 32 82 44 38 3E FE FE FC FC 7C   ; 0F475 data, read by 0816b 0818e
  F485  .byte 38 00 34 7C FE 0E 0F FE 25 02 F8 80 E4 F0 F2 25   ; 0F485 data, read by 0816b 0818e
  F495  .byte 03 AD AD AD ED 75 6A 6A 64 FE FE FE 3E 2E 04 04   ; 0F495 data, read by 0818e 0816b
  F4A5  .byte 00 05 14 0F 17 13 31 4F 80 40 2F 00 0F 0F 0F 30   ; 0F4A5 data, read by 0816b 0812b 08130
  F4B5  .byte 7F 3F 10 E0 D0 D8 E4 F2 39 1E FD 00 E0 E0 D8 3C   ; 0F4B5 data, read by 0816b
  F4C5  .byte FE F8 02 08 0B 09 04 16 2F 4F 9F 07 07 07 03 01   ; 0F4C5 data, read by 0816b
  F4D5  .byte 10 38 7B 18 FD F8 7E 3F 81 14 02 E7 EF DF EF F1   ; 0F4D5 data, read by 0816b 0818e
  F4E5  .byte 7E 00 80 E0 E0 60 18 C4 EA AD A5 40 C0 C0 E0 38   ; 0F4E5 data, read by 0816b
  F4F5  .byte 1C 5E DE 4D 9D 9D 9B 9B 9C 9D 9C 3E 7E 7E 7D 7C   ; 0F4F5 data, read by 0816b
  F505  .byte 7B 7B 7B 37 7B 7B 6F 6F 73 77 73 FA FA F8 F4 F0   ; 0F505 data, read by 0816b
  F515  .byte EE EF EF FE FE 14 06 07 23 21 21 70 73 14 02 9A   ; 0F515 data, read by 0816b 0818e
  F525  .byte 5A 4A 4D 2D A5 A5 92 7C BC BC BE DE DE DE EC 9A   ; 0F525 data, read by 0816b 0818e
  F535  .byte 89 52 27 23 27 1F 17 77 77 2F 1F 1F 1B 07 0F 14   ; 0F535 data, read by 0816b
  F545  .byte 03 DF 2B D5 E8 E8 14 03 3F DF EF F7 F7 E7 F1 FA   ; 0F545 data, read by 0816b 0818e
  F555  .byte F2 C4 0A 12 6A F8 FE FC FC F8 F4 EC 9C 9F 5C 5E   ; 0F555 data, read by 0816b
  F565  .byte 4F 27 11 0C 03 7F 3F 3F 3F 1F 0F 03 00 E4 87 D8   ; 0F565 data, read by 0816b
  F575  .byte F8 F8 34 88 70 FB F8 E0 F0 F8 F8 70 05 06 40 E0   ; 0F575 data, read by 0816b 0818e
  F585  .byte 70 05 06 40 20 05 06 06 39 05 07 06 05 04 30 7C   ; 0F585 data, read by 0816b 0818e
  F595  .byte FE 7F 05 05 30 7C BE 03 01 01 01 02 0C D4 E4 01   ; 0F595 data, read by 0816b 0818e
  F5A5  .byte 05 03 01 03 0B DB C3 F4 D8 B7 3B 7A FD FF 80 C3   ; 0F5A5 data, read by 0816b 0818e
  F5B5  .byte F7 FC FC FF 3F 3F 89 84 C3 70 3C 8F A3 BF 76 7B   ; 0F5B5 data, read by 0816b
  F5C5  .byte 3C 8F C3 F0 FC FC F8 68 68 F4 3A 9E 7B F1 60 90   ; 0F5C5 data, read by 0816b
  F5D5  .byte F0 08 FC 7C 86 CF 16 2F 40 28 17 0D 16 0C 0D 1F   ; 0F5D5 data, read by 0816b
  F5E5  .byte 3F 27 05 02 0C 00 C7 C1 20 58 FF 3C 82 7C 14 02   ; 0F5E5 data, read by 0816b 0818e
  F5F5  .byte DF 87 18 F8 7C 00 FF EF DF 1F 8C 63 1C 00 FF FD   ; 0F5F5 data, read by 0816b
  F605  .byte FC F3 73 1C 05 02 14 02 CF 0E C0 3F 05 02 3F 3F   ; 0F605 data, read by 0816b 0818e
  F615  .byte 14 02 3F 05 03 CE EF FD 1A 84 78 05 02 BC DE FE   ; 0F615 data, read by 0816b 0818e
  F625  .byte FC 78 05 03 0F 1F 3F 5F 43 40 BF 80 00 0F 1C 23   ; 0F625 data, read by 0816b 0818e
  F635  .byte 3F 3F 40 7F 80 C0 B8 A4 B2 7C BA 39 00 80 40 D8   ; 0F635 data, read by 0816b
  F645  .byte DC B8 74 C6 01 01 01 00 06 CD FB 7A 05 05 06 CC   ; 0F645 data, read by 0816b 0818e
  F655  .byte FD 06 FD 1F 9E 4F E7 70 BF F9 03 F3 7E 39 1E 87   ; 0F655 data, read by 0816b
  F665  .byte C0 E8 68 07 3E E9 DE 3F FF 30 F0 F8 E1 D6 27 C7   ; 0F665 data, read by 0816b
  F675  .byte 0F 05 02 80 60 90 E8 6E B1 05 03 80 E0 70 B0 DE   ; 0F675 data, read by 0816b 0818e
  F685  .byte 60 B9 BF 4F 23 1B 09 09 00 60 79 3F 1F 07 07 07   ; 0F685 data, read by 0816b
  F695  .byte 6B 77 3F 3F 8C 41 26 18 F7 14 03 7F 3E 19 07 3F   ; 0F695 data, read by 0816b 0818e
  F6A5  .byte DF AF 2F 6E AF 63 FF C0 E0 F0 D0 B1 71 14 07 7F   ; 0F6A5 data, read by 0816b 0818e
  F6B5  .byte 14 02 7F 3F 1F 0F 1F BF 14 02 7A 5D 42 AC B0 B0   ; 0F6B5 data, read by 0816b 0818e
  F6C5  .byte A8 AF BC BE BC D0 C0 C0 D0 D0 8F 87 83 45 23 11   ; 0F6C5 data, read by 0816b
  F6D5  .byte 13 13 7F 7F 7F 3F 1F 0F 0F 0F 14 02 F7 4B F5 7A   ; 0F6D5 data, read by 0816b 0818e
  F6E5  .byte FD FD 14 02 CF F7 FB FD FE FE FC F9 F1 F1 C2 02   ; 0F6E5 data, read by 0816b 0818e
  F6F5  .byte 04 1F FF FE FE FE FD FD FB E0 A2 DD FD FA FA 64   ; 0F6F5 data, read by 0816b
  F705  .byte 08 90 5C FE FE FC FC F8 F0 60 9F 4F 9F 9F 47 23   ; 0F705 data, read by 0816b
  F715  .byte 18 07 7F 3F 7F 7F 3F 1F 07 00 EB EC D0 D0 E8 E8   ; 0F715 data, read by 0816b
  F725  .byte 10 E0 F4 F0 E0 E0 F0 F0 E0 00 CD 1A 8D 47 21 12   ; 0F725 data, read by 0816b
  F735  .byte 0C 00 3E FC 7E 3E 1E 0C 05 02 CD 1A 8D 47 21 12   ; 0F735 data, read by 0816b 0818e
  F745  .byte 0C 00 3E FC 7E 3E 1E 0C 05 02 0B 29 00 18 3C 66   ; 0F745 data, read by 0816b 0818e 0812b 08130
  F755  .byte 66 3C 18 0B 03 18 3C 38 10 0B 02 3C 7E F3 EB D3   ; 0F755 data, read by 0816b 0818e
  F765  .byte C7 7E 3C 00 3C 7E 7C 7C 78 20 00 78 FC D6 A5 43   ; 0F765 data, read by 0816b
  F775  .byte 87 4B 96 00 78 FC FA FC F8 F4 E8 75 E9 D0 E1 D2   ; 0F775 data, read by 0816b
  F785  .byte 65 3F 1E 3F 7E 7F 7E 7D 3A 0B 04 07 1F 3D 7A 75   ; 0F785 data, read by 0816b 0818e
  F795  .byte E8 0B 03 07 1F 3F 3F 7F 0B 02 E0 F8 7C AE 5A 05   ; 0F795 data, read by 0816b 0818e
  F7A5  .byte 0B 03 E0 F8 F8 F4 FA F3 EE D2 68 7A 35 3F 07 7F   ; 0F7A5 data, read by 0816b 0818e
  F7B5  .byte 7F 7F 3F 35 0A 0B 02 EB 87 8F 26 AE 7C F8 E0 F4   ; 0F7B5 data, read by 0816b 0818e
  F7C5  .byte F8 F0 E8 50 80 0B 02 01 06 09 17 15 12 2E 5D 00   ; 0F7C5 data, read by 0816b 0818e
  F7D5  .byte 01 07 0F 0F 0F 1F 3F EF 1F EF FA 10 07 CF E1 00   ; 0F7D5 data, read by 0816b
  F7E5  .byte EF F7 29 05 00 E0 F0 B8 1C 2C 9C BE 0B 02 E0 F0   ; 0F7E5 data, read by 0816b 0818e
  F7F5  .byte E8 D0 E0 C0 59 BB B0 B0 B1 BB 5E 6D 3F 7F 7F 7F   ; 0F7F5 data, read by 0816b
  F805  .byte 7F 7F 3F 3F FA 50 80 C0 E0 40 81 43 29 06 FE FC   ; 0F805 data, read by 0816b 0818e
  F815  .byte 5E 2F 13 07 5F BF 5E BE E0 D0 EC F8 A0 40 A0 40   ; 0F815 data, read by 0816b
  F825  .byte 76 70 38 38 1E 0D 02 00 3F 3F 1F 1F 0F 0B 03 01   ; 0F825 data, read by 0816b 0818e
  F835  .byte 00 02 05 AB 17 FF 38 FE FF FD FA 54 E8 0B 02 7C   ; 0F835 data, read by 0816b 0818e
  F845  .byte 5E BE 7C F8 F0 C0 00 80 A0 40 80 0B 04 01 1F 25   ; 0F845 data, read by 0816b 0818e
  F855  .byte 28 24 53 88 94 00 01 1A 17 1B 2C 77 7B F0 F8 FC   ; 0F855 data, read by 0816b
  F865  .byte 7C 34 B6 79 1D 00 F0 78 80 F8 78 86 FE 03 0E 11   ; 0F865 data, read by 0816b
  F875  .byte 27 4E 4D 5B 93 00 01 0F 1E 3D 3B 37 6F E3 1F E3   ; 0F875 data, read by 0816b
  F885  .byte 9D 29 04 00 E0 9C 7E FE 29 02 FE 36 19 9F CF FF   ; 0F885 data, read by 0816b 0818e
  F895  .byte E3 9D 3E F9 FE 7F 3D 00 1C 7E FF 38 F0 F8 FE 79   ; 0F895 data, read by 0816b
  F8A5  .byte FA 87 7F F0 00 30 E0 E6 07 7F FF 18 A4 5A BD F9   ; 0F8A5 data, read by 0816b
  F8B5  .byte E2 04 18 00 18 BC FE FE FC F8 E0 B3 B7 A3 67 23   ; 0F8B5 data, read by 0816b
  F8C5  .byte 25 23 25 6F 6F 5F 1F 1F 1F 1F 1F FF FD FD FC FE   ; 0F8C5 data, read by 0816b
  F8D5  .byte 29 03 FE FE FE 29 05 3F 1F 00 80 61 1E 8E C0 29   ; 0F8D5 data, read by 0816b 0818e
  F8E5  .byte 03 7F 9E E1 F1 FF FC E0 01 0E F0 70 20 A0 29 02   ; 0F8E5 data, read by 0818e 0816b
  F8F5  .byte FE F0 00 80 C0 C0 97 9F 87 8B 45 20 50 6C 7F 7F   ; 0F8F5 data, read by 0816b
  F905  .byte 7F 7F BF DF EF F3 29 04 7F BF 07 03 29 08 FD FD   ; 0F905 data, read by 0816b 0818e
  F915  .byte 7A BA D4 E8 E8 E8 FE 7E BC DC E8 F0 F0 F0 18 28   ; 0F915 data, read by 0816b
  F925  .byte 44 42 75 86 9F 5E 07 17 1B 1D 0E 7F 7F 3F 7E 7B   ; 0F925 data, read by 0816b
  F935  .byte 3D 8E 40 3F 0B 02 29 02 FE 7F 3F 0B 03 C0 39 C5   ; 0F935 data, read by 0816b 0818e
  F945  .byte 89 89 04 03 00 3F C7 03 07 07 03 0B 02 FA F4 F4   ; 0F945 data, read by 0816b 0818e
  F955  .byte FA FD 7D 82 7C FC F8 F8 FC FE FE 7C 0B 05 3F 7F   ; 0F955 data, read by 0816b 0818e
  F965  .byte DF D5 0B 05 3F 7F 7F 0B 04 29 03 55 0B 05 29 03   ; 0F965 data, read by 0816b 0818e
  F975  .byte 0B 04 FC FE FE 53 0B 05 FC FC FE 6A 7F 68 6D C8   ; 0F975 data, read by 0816b 0818e
  F985  .byte C8 C8 CA 3F 3F 37 37 77 77 77 75 AA FF 00 55 0B   ; 0F985 data, read by 0816b
  F995  .byte 03 AA 29 07 55 56 FF 1F B7 17 17 37 47 FC FE EE   ; 0F995 data, read by 0818e 0816b
  F9A5  .byte EE EE EE CE BE C5 CF CF DD DA B4 68 3F 7A 70 70   ; 0F9A5 data, read by 0816b
  F9B5  .byte 62 65 4B 17 00 55 29 02 55 AA 01 00 FF AA 0B 02   ; 0F9B5 data, read by 0816b 0818e
  F9C5  .byte AA 55 FE FF 00 A7 E7 E6 B6 56 AE 1C F8 5E 1E 1C   ; 0F9C5 data, read by 0816b
  F9D5  .byte 4C AC 54 E0 0B 04 0F 7F DF EF F5 0B 04 0F 7F 7F   ; 0F9D5 data, read by 0816b 0818e
  F9E5  .byte 7F 00 03 7F D5 E9 D5 A9 51 0B 02 03 7E FE FE FE   ; 0F9E5 data, read by 0816b 0818e
  F9F5  .byte FE 00 80 E0 78 1C 17 08 0F 0B 02 80 E0 F8 FC 29   ; 0F9F5 data, read by 0816b 0818e
  FA05  .byte 02 0B 02 80 E0 78 5C 22 3F 0B 03 80 E0 F0 FC FE   ; 0FA05 data, read by 0818e 0816b
  FA15  .byte 7C FB D5 EA D4 60 60 63 3F 7F 7F 7F 7F 3F 3F 3C   ; 0FA15 data, read by 0816b
  FA25  .byte 50 3F E0 80 80 81 BF 29 06 FE C0 80 7D 8A 85 82   ; 0FA25 data, read by 0816b 0818e
  FA35  .byte 81 C1 F0 F8 29 02 7F 7F 7F 3F 0F 07 DF AF 57 2B   ; 0FA35 data, read by 0816b 0818e
  FA45  .byte 15 1B 05 82 FE FE FE FE FE FE FE 7C FF 55 AA 54   ; 0FA45 data, read by 0816b
  FA55  .byte 24 14 0D 06 08 AE 55 2F 1F 0F 06 00 AB 55 AA 15   ; 0FA55 data, read by 0816b
  FA65  .byte 0A 07 F8 00 54 AA 55 EA F5 F8 0B 02 F1 79 BD 5E   ; 0FA65 data, read by 0816b 0818e
  FA75  .byte BC E0 0B 02 0E 86 42 A0 40 0B 06 07 3F 7F E1 FE   ; 0FA75 data, read by 0816b 0818e
  FA85  .byte 0B 04 07 3F 7F 7F 00 0F FF FA A2 42 A2 02 0B 02   ; 0FA85 data, read by 0816b 0818e
  FA95  .byte 07 FD FD FD FD FD 00 80 F0 7F 2B 17 2B 3E 0B 02   ; 0FA95 data, read by 0816b 0818e
  FAA5  .byte 80 F0 29 04 0B 03 C0 F8 FC F6 8F 0B 04 C0 F8 FC   ; 0FAA5 data, read by 0816b 0818e
  FAB5  .byte FE FF FD FA D5 EA D4 E0 C0 7F 7F 7F 7F 7F 7F 7F   ; 0FAB5 data, read by 0816b
  FAC5  .byte 7F E3 5F 83 03 83 07 1F FF FD FD FD FD FD F9 E1   ; 0FAC5 data, read by 0816b
  FAD5  .byte 01 C1 17 2A 15 0A 00 C0 FE 29 06 3F 01 7F FF BF   ; 0FAD5 data, read by 0816b 0818e
  FAE5  .byte 56 AA 16 02 82 FE FE FE FC FC FC FC 7C CF FF 55   ; 0FAE5 data, read by 0816b
  FAF5  .byte 2A 1D 03 0B 02 70 40 2A 15 02 0B 03 F7 AA 57 AA   ; 0FAF5 data, read by 0816b 0818e
  FB05  .byte 02 82 73 0C 0A 57 AA 57 FF 7F 0C 00 FF AF 55 0A   ; 0FB05 data, read by 0816b
  FB15  .byte 01 0F F0 0B 02 50 AA F5 FE F0 0B 02 F1 FF AE 56   ; 0FB15 data, read by 0816b 0818e
  FB25  .byte 2C F0 0B 02 0E 00 50 A8 D0 0B 03 3C 42 91 E1 F9   ; 0FB25 data, read by 0816b 0818e
  FB35  .byte F1 F9 61 00 3C 7E 7E 7E 7E 7E 3E 7A 72 7A 72 62   ; 0FB35 data, read by 0816b
  FB45  .byte 72 7A 32 3C 3C 3C 3C 3C 3C 3C 1C 34 34 34 34 34   ; 0FB45 data, read by 0816b
  FB55  .byte 1C 1C 08 18 18 18 18 18 08 08 00 01 0E 30 4F FF   ; 0FB55 data, read by 0816b
  FB65  .byte FB F3 F3 00 01 0F 3F 7F 7F 7F 7F C0 38 14 0A 45   ; 0FB65 data, read by 0816b
  FB75  .byte A3 45 83 00 C0 E8 F4 FA FC FA FC F6 F7 FA F3 FB   ; 0FB75 data, read by 0816b
  FB85  .byte 73 3B 37 7F 7F 7F 7F 7F 3F 1F 1F 45 83 46 AA C6   ; 0FB85 data, read by 0816b
  FB95  .byte AC C4 8C FA FC F8 F4 F8 F0 F8 F0 EE FC EE FC 7E   ; 0FB95 data, read by 0816b
  FBA5  .byte 7D 3A 3C 7F 7F 7F 7F 3F 3E 1F 1E 71 E3 75 E3 F6   ; 0FBA5 data, read by 0816b
  FBB5  .byte EA D4 CC FE FC FA FC F8 F4 F8 F0 C2 E6 C2 E6 C2   ; 0FBB5 data, read by 0816b
  FBC5  .byte E6 E2 74 7C 78 7C 78 7C 78 7C 38 64 74 64 64 68   ; 0FBC5 data, read by 0816b
  FBD5  .byte 68 68 30 38 38 38 38 30 30 30 0B 02 01 07 19 61   ; 0FBD5 data, read by 0816b 0818e
  FBE5  .byte 39 27 21 01 07 1F 7F FB 7F 7F 77 27 38 61 19 07   ; 0FBE5 data, read by 0816b
  FBF5  .byte 01 0B 02 7F 7F FB 7F 1F 07 01 00 01 02 07 03 39   ; 0FBF5 data, read by 0816b 0818e
  FC05  .byte 47 B8 7F 00 01 03 01 00 38 7F 3F 80 40 20 90 D1   ; 0FC05 data, read by 0816b
  FC15  .byte 52 AB 6F 00 80 C0 E0 60 21 11 93 0B 02 18 24 BA   ; 0FC15 data, read by 0816b 0818e
  FC25  .byte F9 61 3A 0B 03 18 1C 3E 3E 04 FD 1E 3F 78 E3 84   ; 0FC25 data, read by 0816b 0818e
  FC35  .byte 79 01 02 00 1E 3F 7C 78 0B 02 58 0E 31 EC 32 9D   ; 0FC35 data, read by 0816b 0818e
  FC45  .byte 4D 4D 07 01 00 30 1C 0E 86 86 0B 04 1E 7B FC FE   ; 0FC45 data, read by 0816b 0818e
  FC55  .byte 0B 05 1E 7F 7F 0B 04 78 EE F1 F9 0B 05 78 FE FE   ; 0FC55 data, read by 0816b 0818e
  FC65  .byte FE FF BE D5 6A 40 30 0F 7F 7F 7F 7F 3F 3F 0F 00   ; 0FC65 data, read by 0816b
  FC75  .byte E9 F1 E9 51 A2 02 0C F0 FE FE FE FE FC FC F0 0B   ; 0FC75 data, read by 0816b
  FC85  .byte 02 03 07 0E 1D 3E 7F FB 0B 02 03 07 0F 03 3C 7E   ; 0FC85 data, read by 0818e 0816b
  FC95  .byte 00 1C 3E 75 E8 F1 FF DF 0B 02 1C 3E 7F 1F E0 F7   ; 0FC95 data, read by 0816b 0818e
  FCA5  .byte 00 78 FC EE D1 A3 C5 CF 0B 02 78 FC 7E 7C 7A B0   ; 0FCA5 data, read by 0816b 0818e
  FCB5  .byte E9 D3 E3 D3 67 3F 1E 00 7E 7D 7D 7D 39 10 0B 02   ; 0FCB5 data, read by 0816b 0818e
  FCC5  .byte F7 D1 A3 C7 8B 56 BD 78 FC FE FC F8 F4 E9 40 00   ; 0FCC5 data, read by 0816b
  FCD5  .byte FC EA D1 C3 85 0A 94 78 38 7C 7E 7C 7A F4 68 00   ; 0FCD5 data, read by 0816b
  FCE5  .byte 04 09 04 06 3F C0 04 07 3F 04 06 FC 03 04 07 FC   ; 0FCE5 data, read by 0812b 08130 0816b 0818e
  FCF5  .byte 13 2F 5E 5D BA B4 B9 B2 0F 1F 3F 3F 7F 7F 7F 7F   ; 0FCF5 data, read by 0816b
  FD05  .byte F2 5D A7 41 1A E1 42 85 FC FE FD FE FD FE FD FA   ; 0FD05 data, read by 0816b
  FD15  .byte C8 74 9E 0C 6B 87 0B 17 F0 F8 FA F8 F4 F8 F4 E8   ; 0FD15 data, read by 0816b
  FD25  .byte B9 B0 58 54 2A 1D 0F 03 7F 7F 3F 3F 1D 0A 04 02   ; 0FD25 data, read by 0816b 0818e
  FD35  .byte 03 05 0B 57 AF 7E FC F0 FC FA F4 A0 50 80 04 02   ; 0FD35 data, read by 0816b 0818e
  FD45  .byte 0F 17 2E 5E BC F8 F0 C0 F0 E8 D0 80 40 04 04 1E   ; 0FD45 data, read by 0816b 0818e
  FD55  .byte 3F 75 E8 D1 E3 D5 04 02 1E 3E 7F 7E 7C 6A 04 02   ; 0FD55 data, read by 0816b 0818e
  FD65  .byte 38 FC E2 D3 E3 F7 04 03 38 3C 3C 3C 08 6F 7F FE   ; 0FD65 data, read by 0816b 0818e
  FD75  .byte C1 CA 55 7F 9F 10 00 61 7E 75 2A 00 60 CF F6 E6   ; 0FD75 data, read by 0816b
  FD85  .byte E6 CE FC F8 C4 70 78 38 38 30 04 02 38 AF FE FE   ; 0FD85 data, read by 0816b 0818e
  FD95  .byte 7D 71 A8 A1 83 50 01 01 1E 3E 7F 7E 7C 32 C3 83   ; 0FD95 data, read by 0816b
  FDA5  .byte 17 AE FE DE F3 FC FC FC E8 50 00 3C 3C CF 7E 2B   ; 0FDA5 data, read by 0816b
  FDB5  .byte 53 A1 A8 54 28 33 03 1C 3E 7F FF 7E 38 63 37 3E   ; 0FDB5 data, read by 0816b
  FDC5  .byte FA F2 A4 40 00 9C C8 C0 1C 3F FE E4 04 02 02 07   ; 0FDC5 data, read by 0816b 0818e
  FDD5  .byte 07 06 17 3B B7 04 02 02 02 03 02 10 18 08 1C 1C   ; 0FDD5 data, read by 0816b 0818e
  FDE5  .byte 1C B4 F4 F5 F5 00 08 08 08 18 98 98 98 40 E0 E0   ; 0FDE5 data, read by 0816b
  FDF5  .byte E2 A7 A7 AD AE 00 40 40 40 C2 C2 C6 C4 7D 6F 36   ; 0FDF5 data, read by 0816b
  FE05  .byte 32 39 58 DC D6 26 32 19 1D 0E 2F 67 6B ED 6E 65   ; 0FE05 data, read by 0816b
  FE15  .byte 65 67 BF 5E 4D 36 B1 BA BA B9 54 A5 B6 D4 DE AE   ; 0FE15 data, read by 0816b
  FE25  .byte BA 3A F6 D7 0F 60 64 C4 CC CC D8 2A F2 D7 EB 77   ; 0FE25 data, read by 0816b
  FE35  .byte 28 17 0C 03 00 6B 74 38 1F 0F 03 04 02 99 18 0F   ; 0FE35 data, read by 0816b 0818e
  FE45  .byte FF 00 FF 81 7E 6E EF F6 00 09 02 7E 00 0D 99 F2   ; 0FE45 data, read by 0816b 0818e
  FE55  .byte E4 08 B0 C0 00 F6 6E 1C F8 F0 C0 04 02 07 1F 3F   ; 0FE55 data, read by 0816b 0818e
  FE65  .byte 7F 7F FF FA F5 00 07 1F 3F 3F 7F 7F 7F FF 81 09   ; 0FE65 data, read by 0816b
  FE75  .byte 03 FA F4 29 00 09 06 FE 09 05 F9 72 6A 00 09 05   ; 0FE75 data, read by 0818e 0816b
  FE85  .byte FD FD FA F1 59 53 23 24 18 00 7F 7E 3E 3C 1C 18   ; 0FE85 data, read by 0816b
  FE95  .byte 04 02 D3 EB F3 F1 F0 E0 60 00 3C 1C 08 04 05 77   ; 0FE95 data, read by 0816b 0818e
  FEA5  .byte 67 57 A7 4F 36 06 00 F8 F8 F8 78 30 04 03 09 10   ; 0FEA5 data, read by 0816b 0818e
  FEB5  .byte 06 0E 0C 1C 38 38 70 F0 02 02 04 04 08 08 10 10   ; 0FEB5 data, read by 0816b 0818e
  FEC5  .byte E0 60 70 38 38 1C 1E 0E 20 20 10 08 08 04 02 02   ; 0FEC5 data, read by 0816b 0818e
  FED5  .byte 00 00 04 1F 37 E1 00 00 00 00 00 08 16 61 00 00   ; 0FED5 data, read by 0816b 0818e
  FEE5  .byte 00 00 00 01 C7 FF FE 39 00 00 00 00 00 01 C6 38   ; 0FEE5 data, read by 0816b
  FEF5  .byte 78 3C 7D FF FF FC FF E3 08 04 04 00 41 84 19 20   ; 0FEF5 data, read by 0816b 0818e
  FF05  .byte 01 07 1F 7E F8 E0 80 00 00 00 01 06 18 60 80 00   ; 0FF05 data, read by 0816b
  FF15  .byte 80 C7 EE 78 10 00 00 00 00 01 86 68 10 00 00 00   ; 0FF15 data, read by 0816b
  FF25  .byte 38 70 60 C0 C0 C0 C0 60 08 10 20 40 40 40 40 20   ; 0FF25 data, read by 0816b
  FF35  .byte 78 3C 3E 1C 38 70 70 E0 08 04 02 04 08 10 10 20   ; 0FF35 data, read by 0816b 0818e
  FF45  .byte 0C 08 10 20 40 20 20 00 04 08 10 20 40 00 00 00   ; 0FF45 data, read by 0816b 0818e
  FF55  .byte 38 30 70 38 0C 04 02 01 08 10 10 08 04 04 02 01   ; 0FF55 data, read by 0816b 0818e
  FF65  .byte 40 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 0FF65 data, read by 0816b
  FF75  .byte FF FF FF 8D B6 FF 20 66 FF A9 00 8D B3 FF 60 85   ; 0FF75 data, read by 0816b
  FF85  .byte 3E 29 10 09 03 A8 99 B3 FF 20 66 FF A5 3E A8 99   ; 0FF85 data, read by 0816b 0818e
  FF95  .byte B3 FF 60                                          ; 0FF95 data, read by 0816b
  FF98  86 76     STX $76                       ; 0FF98 ×282
  FF9A  85 75     STA $75                       ; 0FF9A ×282
  FF9C  A9 01     LDA #$01                      ; 0FF9C ×282
  FF9E  A2 00     LDX #$00                      ; 0FF9E ×282
  FFA0  8E B3 FF  STX $FFB3                     ; 0FFA0 ×282
  FFA3  .byte 4C 65 FF A6 76 A5 2E A8 99 B3 FF                  ; 0FFA3 data, read by 0816b
  FFAE  A4 77     LDY $77                       ; 0FFAE ×282
  FFB0  A5 75     LDA $75                       ; 0FFB0 ×282
  FFB2  40        RTI                           ; 0FFB2 ×282
  FFB3  .byte 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F   ; 0FFB3 data, read by 0ffe4 0816b 0ffd6 0818e
  FFC3  .byte 10 11 12 13 14 15 16 17                           ; 0FFC3 data, read by 0816b

sub_B1_FFCB:                    ; from 085d6
  FFCB  A9 00     LDA #$00                      ; 0FFCB ×2318
  FFCD  09 01     ORA #$01                      ; 0FFCD ×2318
  FFCF  85 2D     STA $2D                       ; 0FFCF ×2318
  FFD1  A5 13     LDA $13                       ; 0FFD1 ×2318
  FFD3  48        PHA                           ; 0FFD3 ×2318
  FFD4  86 13     STX $13                       ; 0FFD4 ×2318
  FFD6  B9 B3 FF  LDA $FFB3,Y                   ; 0FFD6 ×2318
  FFD9  99 B3 FF  STA $FFB3,Y                   ; 0FFD9 ×2318
  FFDC  20 00 80  JSR sub_B1_8000               ; 0FFDC ×27361
  FFDF  A4 2D     LDY $2D                       ; 0FFDF ×27361
  FFE1  68        PLA                           ; 0FFE1 ×27361
  FFE2  85 13     STA $13                       ; 0FFE2 ×27361
  FFE4  B9 B3 FF  LDA $FFB3,Y                   ; 0FFE4 ×27361
  FFE7  99 B3 FF  STA $FFB3,Y                   ; 0FFE7 ×27361
  FFEA  60        RTS                           ; 0FFEA ×2318
  FFEB  .byte CA D0 FD 88 D0 FA 60 A9 00 8D B3 FF 4C F2 FF      ; 0FFEB
  FFFA  .byte 98 FF                                             ; 0FFFA data, read by 08119 08208 080f9 08203 (+15)
  FFFC  .byte F2 FF 65 FF                                       ; 0FFFC
