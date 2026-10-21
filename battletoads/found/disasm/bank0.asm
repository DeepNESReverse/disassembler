; bank 0 — PRG $00000-$07FFF, mapped at $8000-$FFFF


sub_B0_8000:                    ; from 07fdc
  8000  6C 13 00  JMP ($0013)                   ; 00000 ×28269

jt_B0_8003:                    ; from 00000
  8003  4C B2 E7  JMP loc_B0_E7B2               ; 00003 ×2209

jt_B0_8006:                    ; from 00000
  8006  4C 26 83  JMP loc_B0_8326               ; 00006 ×46

jt_B0_8009:                    ; from 00000
  8009  4C 13 83  JMP loc_B0_8313               ; 00009 ×46

jt_B0_800C:                    ; from 00000
  800C  4C BA 8D  JMP loc_B0_8DBA               ; 0000C ×22126

jt_B0_800F:                    ; from 00000
  800F  4C 80 D0  JMP sub_B0_D080               ; 0000F ×1426

jt_B0_8012:                    ; from 00000
  8012  4C 33 80  JMP sub_B0_8033               ; 00012 ×46
  8015  .byte 4C 16 83                                          ; 00015

jt_B0_8018:                    ; from 00000
  8018  4C 19 83  JMP loc_B0_8319               ; 00018 ×46

jt_B0_801B:                    ; from 00000
  801B  4C BC E6  JMP loc_B0_E6BC               ; 0001B ×49

jt_B0_801E:                    ; from 00000
  801E  4C D8 E6  JMP loc_B0_E6D8               ; 0001E ×46

jt_B0_8021:                    ; from 00000
  8021  4C 4A 8F  JMP loc_B0_8F4A               ; 00021 ×2013

jt_B0_8024:                    ; from 00000
  8024  4C B7 EE  JMP loc_B0_EEB7               ; 00024 ×3
  8027  .byte 4C 76 83 4C AA 87 4C 66 85                        ; 00027

jt_B0_8030:                    ; from 00000
  8030  4C 63 B5  JMP loc_B0_B563               ; 00030 ×213

sub_B0_8033:                    ; from 0035b 00012 00574
  8033  A5 2D     LDA $2D                       ; 00033 ×93
  8035  48        PHA                           ; 00035 ×93
  8036  A5 89     LDA $89                       ; 00036 ×93
  8038  85 B1     STA $B1                       ; 00038 ×93
  803A  29 0F     AND #$0F                      ; 0003A ×93
  803C  09 40     ORA #$40                      ; 0003C ×93
  803E  85 83     STA $83                       ; 0003E ×93
  8040  A9 80     LDA #$80                      ; 00040 ×93
  8042  85 95     STA $95                       ; 00042 ×93
  8044  20 57 87  JSR sub_B0_8757               ; 00044 ×93
  8047  C6 88     DEC $88                       ; 00047 ×93
  8049  A9 20     LDA #$20                      ; 00049 ×93
  804B  85 8B     STA $8B                       ; 0004B ×93

loc_B0_804D:                    ; from 0007f
  804D  A5 87     LDA $87                       ; 0004D ×2976
  804F  18        CLC                           ; 0004F ×2976
  8050  69 08     ADC #$08                      ; 00050 ×2976
  8052  85 87     STA $87                       ; 00052 ×2976
  8054  90 02     BCC loc_B0_8058               ; 00054 ×2976
  8056  E6 88     INC $88                       ; 00056 ×93

loc_B0_8058:                    ; from 00054
  8058  20 57 87  JSR sub_B0_8757               ; 00058 ×2976
  805B  A6 10     LDX $10                       ; 0005B ×2976
  805D  E0 01     CPX #$01                      ; 0005D ×2976
  805F  D0 19     BNE loc_B0_807A               ; 0005F ×2976
  8061  A5 D1     LDA $D1                       ; 00061 ×320
  8063  D0 15     BNE loc_B0_807A               ; 00063 ×320
  8065  CA        DEX                           ; 00065 ×320
  8066  A9 61     LDA #$61                      ; 00066 ×320

loc_B0_8068:                    ; from 0006e
  8068  9D 00 01  STA $0100,X                   ; 00068 ×10240
  806B  E8        INX                           ; 0006B ×10240
  806C  E0 20     CPX #$20                      ; 0006C ×10240
  806E  D0 F8     BNE loc_B0_8068               ; 0006E ×10240
  8070  A9 FF     LDA #$FF                      ; 00070 ×320
  8072  A2 3F     LDX #$3F                      ; 00072 ×320

loc_B0_8074:                    ; from 00078
  8074  9D 20 01  STA $0120,X                   ; 00074 ×20480
  8077  CA        DEX                           ; 00077 ×20480
  8078  10 FA     BPL loc_B0_8074               ; 00078 ×20480

loc_B0_807A:                    ; from 0005f
  807A  20 08 81  JSR sub_B0_8108               ; 0007A ×2976
  807D  C6 8B     DEC $8B                       ; 0007D ×2976
  807F  D0 CC     BNE loc_B0_804D               ; 0007F ×2976
  8081  68        PLA                           ; 00081 ×93
  8082  85 2D     STA $2D                       ; 00082 ×93
  8084  60        RTS                           ; 00084 ×93
  8085  .byte A9 3F 8D 06 20 A2 00 8E 06 20 A9 0F 8D 07 20 E8   ; 00085
  8095  .byte E0 10 D0 F8 60                                    ; 00095
  809A  A0 00     LDY #$00                      ; 0009A inferred, not run
  809C  B9 00 07  LDA $0700,Y                   ; 0009C inferred, not run
  809F  8D 06 20  STA $2006                     ; 0009F inferred, not run
  80A2  B9 01 07  LDA $0701,Y                   ; 000A2 inferred, not run
  80A5  8D 06 20  STA $2006                     ; 000A5 inferred, not run
  80A8  B9 02 07  LDA $0702,Y                   ; 000A8 inferred, not run
  80AB  8D 07 20  STA $2007                     ; 000AB inferred, not run
  80AE  B9 00 07  LDA $0700,Y                   ; 000AE inferred, not run
  80B1  8D 06 20  STA $2006                     ; 000B1 inferred, not run
  80B4  B9 01 07  LDA $0701,Y                   ; 000B4 inferred, not run
  80B7  09 08     ORA #$08                      ; 000B7 inferred, not run
  80B9  8D 06 20  STA $2006                     ; 000B9 inferred, not run
  80BC  B9 03 07  LDA $0703,Y                   ; 000BC inferred, not run
  80BF  8D 07 20  STA $2007                     ; 000BF inferred, not run
  80C2  C8        INY                           ; 000C2 inferred, not run
  80C3  C8        INY                           ; 000C3 inferred, not run
  80C4  C8        INY                           ; 000C4 inferred, not run
  80C5  C8        INY                           ; 000C5 inferred, not run
  80C6  C0 28     CPY #$28                      ; 000C6 inferred, not run
  80C8  D0 D2     BNE $809C                     ; 000C8 inferred, not run
  80CA  A2 00     LDX #$00                      ; 000CA inferred, not run
  80CC  20 65 FF  JSR sub_B0_FF65               ; 000CC inferred, not run
  80CF  A2 61     LDX #$61                      ; 000CF inferred, not run
  80D1  4C 6A FF  JMP loc_B0_FF6A               ; 000D1 inferred, not run

loc_B0_80D4:                    ; from 0010d
  80D4  85 15     STA $15                       ; 000D4 ×52917
  80D6  8D 00 20  STA $2000                     ; 000D6 ×52917
  80D9  A2 FF     LDX #$FF                      ; 000D9 ×52917
  80DB  9A        TXS                           ; 000DB ×52917
  80DC  A0 02     LDY #$02                      ; 000DC ×52917
  80DE  A5 97     LDA $97                       ; 000DE ×52917
  80E0  8D 06 20  STA $2006                     ; 000E0 ×52917
  80E3  A5 98     LDA $98                       ; 000E3 ×52917
  80E5  8D 06 20  STA $2006                     ; 000E5 ×52917
  80E8  29 1F     AND #$1F                      ; 000E8 ×52917
  80EA  0A        ASL A                         ; 000EA ×52917
  80EB  0A        ASL A                         ; 000EB ×52917
  80EC  85 16     STA $16                       ; 000EC ×52917

loc_B0_80EE:                    ; from 00166
  80EE  69 26     ADC #$26                      ; 000EE ×105834
  80F0  85 1F     STA $1F                       ; 000F0 ×105834
  80F2  A9 82     LDA #$82                      ; 000F2 ×105834
  80F4  4C 41 81  JMP loc_B0_8141               ; 000F4 ×105834
  80F7  .byte A2 48 A0 01 20 EB FF 60                           ; 000F7
  80FF  .byte 22 22 20 80 88 80 5F A8 A8                        ; 000FF data, read by 001c1 001c9 001ce

sub_B0_8108:                    ; from 003a4 0007a
  8108  BA        TSX                           ; 00108 ×186205
  8109  86 2F     STX $2F                       ; 00109 ×186205
  810B  A5 30     LDA $30                       ; 0010B ×186205
  810D  F0 C5     BEQ loc_B0_80D4               ; 0010D ×186205
  810F  A9 04     LDA #$04                      ; 0010F ×133288
  8111  8D 00 20  STA $2000                     ; 00111 ×133288
  8114  85 15     STA $15                       ; 00114 ×133288
  8116  A2 03     LDX #$03                      ; 00116 ×133288

loc_B0_8118:                    ; from 00119
  8118  CA        DEX                           ; 00118 ×399864
  8119  D0 FD     BNE loc_B0_8118               ; 00119 ×399864
  811B  A9 20     LDA #$20                      ; 0011B ×133288
  811D  8D 06 20  STA $2006                     ; 0011D ×133288
  8120  A5 98     LDA $98                       ; 00120 ×133288
  8122  8D 06 20  STA $2006                     ; 00122 ×133288
  8125  A0 02     LDY #$02                      ; 00125 ×133288
  8127  A5 83     LDA $83                       ; 00127 ×133288
  8129  49 FF     EOR #$FF                      ; 00129 ×133288
  812B  38        SEC                           ; 0012B ×133288
  812C  E9 10     SBC #$10                      ; 0012C ×133288
  812E  29 F8     AND #$F8                      ; 0012E ×133288
  8130  4A        LSR A                         ; 00130 ×133288
  8131  85 17     STA $17                       ; 00131 ×133288
  8133  4A        LSR A                         ; 00133 ×133288
  8134  4A        LSR A                         ; 00134 ×133288
  8135  AA        TAX                           ; 00135 ×133288
  8136  CA        DEX                           ; 00136 ×133288
  8137  9A        TXS                           ; 00137 ×133288
  8138  A5 17     LDA $17                       ; 00138 ×133288

loc_B0_813A:                    ; from 00193
  813A  18        CLC                           ; 0013A ×266576
  813B  69 2E     ADC #$2E                      ; 0013B ×266576
  813D  85 1F     STA $1F                       ; 0013D ×266576
  813F  A9 82     LDA #$82                      ; 0013F ×266576

loc_B0_8141:                    ; from 000f4
  8141  69 00     ADC #$00                      ; 00141 ×372410
  8143  85 20     STA $20                       ; 00143 ×372410
  8145  6C 1F 00  JMP ($001F)                   ; 00145 ×372410

loc_B0_8148:                    ; from 002a6
  8148  88        DEY                           ; 00148 ×743510
  8149  F0 4A     BEQ loc_B0_8195               ; 00149 ×743510
  814B  A5 15     LDA $15                       ; 0014B ×371755
  814D  10 03     BPL loc_B0_8152               ; 0014D ×371755
  814F  4C 26 82  JMP jt_B0_8226                ; 0014F ×185550

loc_B0_8152:                    ; from 0014d
  8152  D0 37     BNE loc_B0_818B               ; 00152 ×186205
  8154  A5 97     LDA $97                       ; 00154 ×52917
  8156  8D 06 20  STA $2006                     ; 00156 ×52917
  8159  A5 98     LDA $98                       ; 00159 ×52917
  815B  29 E0     AND #$E0                      ; 0015B ×52917
  815D  8D 06 20  STA $2006                     ; 0015D ×52917
  8160  A9 80     LDA #$80                      ; 00160 ×52917
  8162  38        SEC                           ; 00162 ×52917
  8163  E5 16     SBC $16                       ; 00163 ×52917
  8165  18        CLC                           ; 00165 ×52917
  8166  4C EE 80  JMP loc_B0_80EE               ; 00166 ×52917

loc_B0_8169:                    ; from 001e2
  8169  A2 5F     LDX #$5F                      ; 00169 ×235
  816B  9A        TXS                           ; 0016B ×235
  816C  A0 03     LDY #$03                      ; 0016C ×235

loc_B0_816E:                    ; from 00184
  816E  B9 78 01  LDA $0178,Y                   ; 0016E ×940
  8171  8D 06 20  STA $2006                     ; 00171 ×940
  8174  B9 7C 01  LDA $017C,Y                   ; 00174 ×940
  8177  8D 06 20  STA $2006                     ; 00177 ×940
  817A  A6 B3     LDX $B3                       ; 0017A ×940

loc_B0_817C:                    ; from 00181
  817C  68        PLA                           ; 0017C ×5464
  817D  8D 07 20  STA $2007                     ; 0017D ×5464
  8180  CA        DEX                           ; 00180 ×5464
  8181  D0 F9     BNE loc_B0_817C               ; 00181 ×5464
  8183  88        DEY                           ; 00183 ×940
  8184  10 E8     BPL loc_B0_816E               ; 00184 ×940
  8186  A6 B4     LDX $B4                       ; 00186 ×235
  8188  4C 0C 82  JMP loc_B0_820C               ; 00188 ×235

loc_B0_818B:                    ; from 00152
  818B  A2 FF     LDX #$FF                      ; 0018B ×133288
  818D  9A        TXS                           ; 0018D ×133288
  818E  A9 78     LDA #$78                      ; 0018E ×133288
  8190  38        SEC                           ; 00190 ×133288
  8191  E5 17     SBC $17                       ; 00191 ×133288
  8193  B0 A5     BCS loc_B0_813A               ; 00193 ×133288

loc_B0_8195:                    ; from 00149
  8195  A9 10     LDA #$10                      ; 00195 ×371755
  8197  8D 00 20  STA $2000                     ; 00197 ×371755
  819A  A5 15     LDA $15                       ; 0019A ×371755
  819C  30 1E     BMI loc_B0_81BC               ; 0019C ×371755
  819E  A0 02     LDY #$02                      ; 0019E ×186205
  81A0  A5 95     LDA $95                       ; 001A0 ×186205
  81A2  85 15     STA $15                       ; 001A2 ×186205
  81A4  C9 84     CMP #$84                      ; 001A4 ×186205
  81A6  B0 69     BCS loc_B0_8211               ; 001A6 ×186205
  81A8  C9 81     CMP #$81                      ; 001A8 ×173627
  81AA  B0 14     BCS loc_B0_81C0               ; 001AA ×173627
  81AC  A9 23     LDA #$23                      ; 001AC ×173258
  81AE  8D 06 20  STA $2006                     ; 001AE ×173258
  81B1  A9 C0     LDA #$C0                      ; 001B1 ×173258
  81B3  8D 06 20  STA $2006                     ; 001B3 ×173258
  81B6  A2 1F     LDX #$1F                      ; 001B6 ×173258
  81B8  9A        TXS                           ; 001B8 ×173258
  81B9  4C 26 82  JMP jt_B0_8226                ; 001B9 ×173258

loc_B0_81BC:                    ; from 0019c 0020f
  81BC  A6 2F     LDX $2F                       ; 001BC ×188414
  81BE  9A        TXS                           ; 001BE ×188414
  81BF  60        RTS                           ; 001BF ×188414

loc_B0_81C0:                    ; from 001aa
  81C0  A8        TAY                           ; 001C0 ×369
  81C1  B9 7E 80  LDA $807E,Y                   ; 001C1 ×369
  81C4  45 96     EOR $96                       ; 001C4 ×369
  81C6  8D 06 20  STA $2006                     ; 001C6 ×369
  81C9  B9 81 80  LDA $8081,Y                   ; 001C9 ×369
  81CC  85 95     STA $95                       ; 001CC ×369
  81CE  BE 84 80  LDX $8084,Y                   ; 001CE ×369
  81D1  A9 62     LDA #$62                      ; 001D1 ×369
  81D3  8D 06 20  STA $2006                     ; 001D3 ×369
  81D6  A9 10     LDA #$10                      ; 001D6 ×369
  81D8  8D C3 FF  STA $FFC3                     ; 001D8 ×369
  81DB  9A        TXS                           ; 001DB ×369
  81DC  A0 02     LDY #$02                      ; 001DC ×369
  81DE  D0 56     BNE jt_B0_8236                ; 001DE ×369

loc_B0_81E0:                    ; from 00217
  81E0  C9 84     CMP #$84                      ; 001E0 ×655
  81E2  D0 85     BNE loc_B0_8169               ; 001E2 ×655

loc_B0_81E4:                    ; from 067b5
  81E4  A9 3F     LDA #$3F                      ; 001E4 ×2629
  81E6  8D 06 20  STA $2006                     ; 001E6 ×2629
  81E9  A6 CB     LDX $CB                       ; 001E9 ×2629
  81EB  8E 06 20  STX $2006                     ; 001EB ×2629
  81EE  A0 10     LDY #$10                      ; 001EE ×2629

loc_B0_81F0:                    ; from 00202
  81F0  B5 55     LDA $55,X                     ; 001F0 ×42064
  81F2  38        SEC                           ; 001F2 ×42064
  81F3  E5 C9     SBC $C9                       ; 001F3 ×42064
  81F5  B0 04     BCS loc_B0_81FB               ; 001F5 ×42064
  81F7  A9 0F     LDA #$0F                      ; 001F7 ×27629
  81F9  D0 02     BNE loc_B0_81FD               ; 001F9 ×27629

loc_B0_81FB:                    ; from 001f5
  81FB  EA        NOP                           ; 001FB ×14435
  81FC  EA        NOP                           ; 001FC ×14435

loc_B0_81FD:                    ; from 001f9
  81FD  8D 07 20  STA $2007                     ; 001FD ×42064
  8200  E8        INX                           ; 00200 ×42064
  8201  88        DEY                           ; 00201 ×42064
  8202  D0 EC     BNE loc_B0_81F0               ; 00202 ×42064
  8204  8C 06 20  STY $2006                     ; 00204 ×2629
  8207  8C 06 20  STY $2006                     ; 00207 ×2629
  820A  A2 10     LDX #$10                      ; 0020A ×2629

loc_B0_820C:                    ; from 0020d 00188
  820C  CA        DEX                           ; 0020C ×48658
  820D  D0 FD     BNE loc_B0_820C               ; 0020D ×48658
  820F  F0 AB     BEQ loc_B0_81BC               ; 0020F ×2864

loc_B0_8211:                    ; from 001a6
  8211  A2 80     LDX #$80                      ; 00211 ×12578
  8213  86 95     STX $95                       ; 00213 ×12578
  8215  C9 86     CMP #$86                      ; 00215 ×12578
  8217  90 C7     BCC loc_B0_81E0               ; 00217 ×12578
  8219  A9 17     LDA #$17                      ; 00219 ×11923
  821B  8D 06 20  STA $2006                     ; 0021B ×11923
  821E  A9 D0     LDA #$D0                      ; 0021E ×11923
  8220  8D 06 20  STA $2006                     ; 00220 ×11923
  8223  A2 5F     LDX #$5F                      ; 00223 ×11923
  8225  9A        TXS                           ; 00225 ×11923

jt_B0_8226:                    ; from 0014f 001b9 00145
  8226  68        PLA                           ; 00226 ×375780
  8227  8D 07 20  STA $2007                     ; 00227 ×375780

jt_B0_822A:                    ; from 00145
  822A  68        PLA                           ; 0022A ×420144
  822B  8D 07 20  STA $2007                     ; 0022B ×420144
  822E  68        PLA                           ; 0022E ×420144
  822F  8D 07 20  STA $2007                     ; 0022F ×420144

jt_B0_8232:                    ; from 00145
  8232  68        PLA                           ; 00232 ×423065
  8233  8D 07 20  STA $2007                     ; 00233 ×423065

jt_B0_8236:                    ; from 001de 00145
  8236  68        PLA                           ; 00236 ×423564
  8237  8D 07 20  STA $2007                     ; 00237 ×423564

jt_B0_823A:                    ; from 00145
  823A  68        PLA                           ; 0023A ×423612
  823B  8D 07 20  STA $2007                     ; 0023B ×423612

jt_B0_823E:                    ; from 00145
  823E  68        PLA                           ; 0023E ×423656
  823F  8D 07 20  STA $2007                     ; 0023F ×423656

jt_B0_8242:                    ; from 00145
  8242  68        PLA                           ; 00242 ×423685
  8243  8D 07 20  STA $2007                     ; 00243 ×423685

jt_B0_8246:                    ; from 00145
  8246  68        PLA                           ; 00246 ×438463
  8247  8D 07 20  STA $2007                     ; 00247 ×438463
  824A  68        PLA                           ; 0024A ×438463
  824B  8D 07 20  STA $2007                     ; 0024B ×438463
  824E  68        PLA                           ; 0024E ×438463
  824F  8D 07 20  STA $2007                     ; 0024F ×438463

jt_B0_8252:                    ; from 00145
  8252  68        PLA                           ; 00252 ×477619
  8253  8D 07 20  STA $2007                     ; 00253 ×477619

jt_B0_8256:                    ; from 00145
  8256  68        PLA                           ; 00256 ×510793
  8257  8D 07 20  STA $2007                     ; 00257 ×510793

jt_B0_825A:                    ; from 00145
  825A  68        PLA                           ; 0025A ×513287
  825B  8D 07 20  STA $2007                     ; 0025B ×513287

jt_B0_825E:                    ; from 00145
  825E  68        PLA                           ; 0025E ×517172
  825F  8D 07 20  STA $2007                     ; 0025F ×517172

jt_B0_8262:                    ; from 00145
  8262  68        PLA                           ; 00262 ×550809
  8263  8D 07 20  STA $2007                     ; 00263 ×550809

jt_B0_8266:                    ; from 00145
  8266  68        PLA                           ; 00266 ×550830
  8267  8D 07 20  STA $2007                     ; 00267 ×550830

jt_B0_826A:                    ; from 00145
  826A  68        PLA                           ; 0026A ×563840
  826B  8D 07 20  STA $2007                     ; 0026B ×563840

jt_B0_826E:                    ; from 00145
  826E  68        PLA                           ; 0026E ×563947
  826F  8D 07 20  STA $2007                     ; 0026F ×563947

jt_B0_8272:                    ; from 00145
  8272  68        PLA                           ; 00272 ×597634
  8273  8D 07 20  STA $2007                     ; 00273 ×597634

jt_B0_8276:                    ; from 00145
  8276  68        PLA                           ; 00276 ×601468
  8277  8D 07 20  STA $2007                     ; 00277 ×601468

jt_B0_827A:                    ; from 00145
  827A  68        PLA                           ; 0027A ×603852
  827B  8D 07 20  STA $2007                     ; 0027B ×603852

jt_B0_827E:                    ; from 00145
  827E  68        PLA                           ; 0027E ×636991
  827F  8D 07 20  STA $2007                     ; 0027F ×636991

jt_B0_8282:                    ; from 00145
  8282  68        PLA                           ; 00282 ×676147
  8283  8D 07 20  STA $2007                     ; 00283 ×676147

jt_B0_8286:                    ; from 00145
  8286  68        PLA                           ; 00286 ×676188
  8287  8D 07 20  STA $2007                     ; 00287 ×676188

jt_B0_828A:                    ; from 00145
  828A  68        PLA                           ; 0028A ×676217
  828B  8D 07 20  STA $2007                     ; 0028B ×676217

jt_B0_828E:                    ; from 00145
  828E  68        PLA                           ; 0028E ×690998
  828F  8D 07 20  STA $2007                     ; 0028F ×690998

jt_B0_8292:                    ; from 00145
  8292  68        PLA                           ; 00292 ×691046
  8293  8D 07 20  STA $2007                     ; 00293 ×691046

jt_B0_8296:                    ; from 00145
  8296  68        PLA                           ; 00296 ×691176
  8297  8D 07 20  STA $2007                     ; 00297 ×691176

jt_B0_829A:                    ; from 00145
  829A  68        PLA                           ; 0029A ×694097
  829B  8D 07 20  STA $2007                     ; 0029B ×694097
  829E  68        PLA                           ; 0029E ×694097
  829F  8D 07 20  STA $2007                     ; 0029F ×694097

jt_B0_82A2:                    ; from 00145
  82A2  68        PLA                           ; 002A2 ×738461
  82A3  8D 07 20  STA $2007                     ; 002A3 ×738461

jt_B0_82A6:                    ; from 00145
  82A6  4C 48 81  JMP loc_B0_8148               ; 002A6 ×743510

loc_B0_82A9:                    ; from 07ff7
  82A9  A9 00     LDA #$00                      ; 002A9 ×46
  82AB  85 FF     STA $FF                       ; 002AB ×46
  82AD  78        SEI                           ; 002AD ×46
  82AE  D8        CLD                           ; 002AE ×46
  82AF  A2 FF     LDX #$FF                      ; 002AF ×46
  82B1  9A        TXS                           ; 002B1 ×46
  82B2  A9 00     LDA #$00                      ; 002B2 ×46
  82B4  8D 00 20  STA $2000                     ; 002B4 ×46
  82B7  8D 01 20  STA $2001                     ; 002B7 ×46

loc_B0_82BA:                    ; from 002bd
  82BA  AD 02 20  LDA $2002                     ; 002BA ×392012
  82BD  10 FB     BPL loc_B0_82BA               ; 002BD ×392012

loc_B0_82BF:                    ; from 002c2
  82BF  AD 02 20  LDA $2002                     ; 002BF ×195684
  82C2  10 FB     BPL loc_B0_82BF               ; 002C2 ×195684
  82C4  A9 00     LDA #$00                      ; 002C4 ×46
  82C6  A2 17     LDX #$17                      ; 002C6 ×46

loc_B0_82C8:                    ; from 002cc
  82C8  9D 00 40  STA $4000,X                   ; 002C8 ×1104
  82CB  CA        DEX                           ; 002CB ×1104
  82CC  10 FA     BPL loc_B0_82C8               ; 002CC ×1104
  82CE  A2 C0     LDX #$C0                      ; 002CE ×46
  82D0  8E 10 40  STX $4010                     ; 002D0 ×46
  82D3  A2 80     LDX #$80                      ; 002D3 ×46
  82D5  8E 17 40  STX $4017                     ; 002D5 ×46
  82D8  A2 0F     LDX #$0F                      ; 002D8 ×46
  82DA  8E 15 40  STX $4015                     ; 002DA ×46
  82DD  A9 00     LDA #$00                      ; 002DD ×46
  82DF  AA        TAX                           ; 002DF ×46

loc_B0_82E0:                    ; from 002fc
  82E0  E0 FD     CPX #$FD                      ; 002E0 ×11776
  82E2  B0 02     BCS loc_B0_82E6               ; 002E2 ×11776
  82E4  95 00     STA $00,X                     ; 002E4 ×11638

loc_B0_82E6:                    ; from 002e2
  82E6  9D 00 01  STA $0100,X                   ; 002E6 ×11776
  82E9  9D 00 02  STA $0200,X                   ; 002E9 ×11776
  82EC  9D 00 03  STA $0300,X                   ; 002EC ×11776
  82EF  9D 00 04  STA $0400,X                   ; 002EF ×11776
  82F2  9D 00 05  STA $0500,X                   ; 002F2 ×11776
  82F5  9D 00 06  STA $0600,X                   ; 002F5 ×11776
  82F8  9D 00 07  STA $0700,X                   ; 002F8 ×11776
  82FB  E8        INX                           ; 002FB ×11776
  82FC  D0 E2     BNE loc_B0_82E0               ; 002FC ×11776
  82FE  A9 80     LDA #$80                      ; 002FE ×46
  8300  85 14     STA $14                       ; 00300 ×46
  8302  A9 28     LDA #$28                      ; 00302 ×46
  8304  C5 FD     CMP $FD                       ; 00304 ×46
  8306  D0 02     BNE loc_B0_830A               ; 00306 ×46
  8308  85 FF     STA $FF                       ; 00308 inferred, not run

loc_B0_830A:                    ; from 00306
  830A  A9 03     LDA #$03                      ; 0030A ×46
  830C  85 0E     STA $0E                       ; 0030C ×46
  830E  85 0F     STA $0F                       ; 0030E ×46
  8310  4C B4 E4  JMP loc_B0_E4B4               ; 00310 ×46

loc_B0_8313:                    ; from 00009
  8313  4C FB E4  JMP loc_B0_E4FB               ; 00313 ×46

loc_B0_8316:                    ; from 065db
  8316  4C 46 E6  JMP loc_B0_E646               ; 00316 ×46

loc_B0_8319:                    ; from 00018
  8319  4C E7 D7  JMP loc_B0_D7E7               ; 00319 ×46
  831C  4C F8 F5  JMP $F5F8                     ; 0031C inferred, not run

loc_B0_831F:                    ; from 065e4
  831F  A9 00     LDA #$00                      ; 0031F ×46
  8321  85 0D     STA $0D                       ; 00321 ×46
  8323  4C 0C D5  JMP loc_B0_D50C               ; 00323 ×46

loc_B0_8326:                    ; from 00006
  8326  A5 F4     LDA $F4                       ; 00326 ×46
  8328  D0 F2     BNE $831C                     ; 00328 ×46
  832A  A5 11     LDA $11                       ; 0032A ×46
  832C  10 02     BPL loc_B0_8330               ; 0032C ×46
  832E  85 0E     STA $0E                       ; 0032E inferred, not run

loc_B0_8330:                    ; from 0032c
  8330  A5 12     LDA $12                       ; 00330 ×46
  8332  10 02     BPL loc_B0_8336               ; 00332 ×46
  8334  85 0F     STA $0F                       ; 00334 ×46

loc_B0_8336:                    ; from 0565f
  8336  20 6B 87  JSR sub_B0_876B               ; 00336 ×49

loc_B0_8339:                    ; from 007a0
  8339  A2 00     LDX #$00                      ; 00339 ×51
  833B  8A        TXA                           ; 0033B ×51

loc_B0_833C:                    ; from 00340
  833C  9D 00 01  STA $0100,X                   ; 0033C ×13056
  833F  E8        INX                           ; 0033F ×13056
  8340  D0 FA     BNE loc_B0_833C               ; 00340 ×13056
  8342  A2 06     LDX #$06                      ; 00342 ×51
  8344  A0 16     LDY #$16                      ; 00344 ×51
  8346  20 CB FF  JSR sub_B0_FFCB               ; 00346 ×51
  8349  A2 06     LDX #$06                      ; 00349 ×47
  834B  A0 05     LDY #$05                      ; 0034B ×47
  834D  20 CB FF  JSR sub_B0_FFCB               ; 0034D ×47
  8350  A5 F4     LDA $F4                       ; 00350 ×47
  8352  D0 07     BNE $835B                     ; 00352 ×47
  8354  A2 2A     LDX #$2A                      ; 00354 ×47
  8356  A0 03     LDY #$03                      ; 00356 ×47
  8358  20 CB FF  JSR sub_B0_FFCB               ; 00358 ×47
  835B  20 33 80  JSR sub_B0_8033               ; 0035B ×47
  835E  A2 30     LDX #$30                      ; 0035E ×47
  8360  A0 03     LDY #$03                      ; 00360 ×47
  8362  20 CB FF  JSR sub_B0_FFCB               ; 00362 ×47
  8365  20 7E 83  JSR sub_B0_837E               ; 00365 ×47
  8368  A2 15     LDX #$15                      ; 00368 ×47
  836A  A0 07     LDY #$07                      ; 0036A ×47
  836C  20 CB FF  JSR sub_B0_FFCB               ; 0036C ×47
  836F  A2 A4     LDX #$A4                      ; 0036F ×47
  8371  A0 83     LDY #$83                      ; 00371 ×47
  8373  4C EE 86  JMP loc_B0_86EE               ; 00373 ×47
  8376  .byte 20 85 83 A9 02 85 2D 60                           ; 00376

sub_B0_837E:                    ; from 00365 0056a
  837E  A4 10     LDY $10                       ; 0037E ×47
  8380  B9 94 83  LDA $8394,Y                   ; 00380 ×47

sub_B0_8383:                    ; from 06520 0674f
  8383  85 32     STA $32                       ; 00383 ×96
  8385  A0 03     LDY #$03                      ; 00385 ×96
  8387  A2 03     LDX #$03                      ; 00387 ×96
  8389  20 CB FF  JSR sub_B0_FFCB               ; 00389 ×96

sub_B0_838C:                    ; from 06523
  838C  20 8F 83  JSR sub_B0_838F               ; 0038C ×142

sub_B0_838F:                    ; from 0038c
  838F  A9 00     LDA #$00                      ; 0038F ×284
  8391  4C 84 FF  JMP sub_B0_FF84               ; 00391 ×284
  8394  .byte 03                                                ; 00394
  8395  .byte 03 04 01 0E 0C 0F 08 09 11 13 0D 0D 0B 0B         ; 00395 data, read by 00380
  83A3  .byte 14                                                ; 003A3

jt_B0_83A4:                    ; from 07e90
  83A4  20 08 81  JSR sub_B0_8108               ; 003A4 ×183229
  83A7  20 B5 85  JSR sub_B0_85B5               ; 003A7 ×183229
  83AA  A9 10     LDA #$10                      ; 003AA ×183224
  83AC  85 09     STA $09                       ; 003AC ×183224
  83AE  09 80     ORA #$80                      ; 003AE ×183224
  83B0  8D 00 20  STA $2000                     ; 003B0 ×183224
  83B3  A2 4B     LDX #$4B                      ; 003B3 ×183224
  83B5  A0 03     LDY #$03                      ; 003B5 ×183224
  83B7  20 CB FF  JSR sub_B0_FFCB               ; 003B7 ×183224
  83BA  A5 2B     LDA $2B                       ; 003BA ×183224
  83BC  05 2C     ORA $2C                       ; 003BC ×183224
  83BE  29 10     AND #$10                      ; 003BE ×183224
  83C0  F0 14     BEQ loc_B0_83D6               ; 003C0 ×183224
  83C2  A0 0F     LDY #$0F                      ; 003C2 ×390
  83C4  45 F6     EOR $F6                       ; 003C4 ×390
  83C6  85 F6     STA $F6                       ; 003C6 ×390
  83C8  F0 09     BEQ loc_B0_83D3               ; 003C8 ×390
  83CA  A0 00     LDY #$00                      ; 003CA ×211
  83CC  84 F7     STY $F7                       ; 003CC ×211
  83CE  8C 15 40  STY $4015                     ; 003CE ×211
  83D1  F0 58     BEQ loc_B0_842B               ; 003D1 ×211

loc_B0_83D3:                    ; from 003c8
  83D3  8C 15 40  STY $4015                     ; 003D3 ×179

loc_B0_83D6:                    ; from 003c0
  83D6  A5 F6     LDA $F6                       ; 003D6 ×183013
  83D8  F0 29     BEQ loc_B0_8403               ; 003D8 ×183013
  83DA  E6 F8     INC $F8                       ; 003DA ×124441
  83DC  A5 F8     LDA $F8                       ; 003DC ×124441
  83DE  29 07     AND #$07                      ; 003DE ×124441
  83E0  D0 0E     BNE loc_B0_83F0               ; 003E0 ×124441
  83E2  A5 F7     LDA $F7                       ; 003E2 ×15545
  83E4  E6 F7     INC $F7                       ; 003E4 ×15545
  83E6  29 0F     AND #$0F                      ; 003E6 ×15545
  83E8  A8        TAY                           ; 003E8 ×15545
  83E9  B9 F3 83  LDA $83F3,Y                   ; 003E9 ×15545
  83EC  A8        TAY                           ; 003EC ×15545
  83ED  4C B6 84  JMP loc_B0_84B6               ; 003ED ×15545

loc_B0_83F0:                    ; from 003e0
  83F0  4C 13 87  JMP loc_B0_8713               ; 003F0 ×108896
  83F3  .byte 0C 20 0C 20 0C 20 20 20 30 20 30 20 30 20 20 20   ; 003F3 data, read by 003e9

loc_B0_8403:                    ; from 003d8
  8403  A5 EB     LDA $EB                       ; 00403 ×58572
  8405  C9 7E     CMP #$7E                      ; 00405 ×58572
  8407  90 22     BCC loc_B0_842B               ; 00407 ×58572
  8409  C9 82     CMP #$82                      ; 00409 inferred, not run
  840B  B0 1C     BCS $8429                     ; 0040B inferred, not run
  840D  20 3A 85  JSR sub_B0_853A               ; 0040D inferred, not run
  8410  A0 0F     LDY #$0F                      ; 00410 inferred, not run
  8412  20 80 83  JSR $8380                     ; 00412 inferred, not run
  8415  A5 40     LDA $40                       ; 00415 inferred, not run
  8417  10 07     BPL $8420                     ; 00417 inferred, not run
  8419  A2 1B     LDX #$1B                      ; 00419 inferred, not run
  841B  A0 03     LDY #$03                      ; 0041B inferred, not run
  841D  20 CB FF  JSR sub_B0_FFCB               ; 0041D inferred, not run
  8420  AD 01 03  LDA $0301                     ; 00420 inferred, not run
  8423  D0 F0     BNE $8415                     ; 00423 inferred, not run
  8425  A9 7E     LDA #$7E                      ; 00425 inferred, not run
  8427  85 EB     STA $EB                       ; 00427 inferred, not run
  8429  C6 EB     DEC $EB                       ; 00429 inferred, not run

loc_B0_842B:                    ; from 00407 003d1
  842B  20 A3 87  JSR sub_B0_87A3               ; 0042B ×58783
  842E  20 51 FE  JSR sub_B0_FE51               ; 0042E ×58783
  8431  A9 00     LDA #$00                      ; 00431 ×58783
  8433  85 B6     STA $B6                       ; 00433 ×58783
  8435  A5 10     LDA $10                       ; 00435 ×58783
  8437  C9 08     CMP #$08                      ; 00437 ×58783
  8439  F0 19     BEQ loc_B0_8454               ; 00439 ×58783
  843B  A5 E3     LDA $E3                       ; 0043B ×55738
  843D  D0 15     BNE loc_B0_8454               ; 0043D ×55738
  843F  A5 10     LDA $10                       ; 0043F ×55738
  8441  C9 06     CMP #$06                      ; 00441 ×55738
  8443  D0 0C     BNE loc_B0_8451               ; 00443 ×55738
  8445  A5 88     LDA $88                       ; 00445 ×1658
  8447  C9 0E     CMP #$0E                      ; 00447 ×1658
  8449  B0 09     BCS loc_B0_8454               ; 00449 ×1658
  844B  A5 D5     LDA $D5                       ; 0044B ×1658
  844D  C9 05     CMP #$05                      ; 0044D ×1658
  844F  B0 03     BCS loc_B0_8454               ; 0044F ×1658

loc_B0_8451:                    ; from 00443
  8451  20 57 87  JSR sub_B0_8757               ; 00451 ×55738

loc_B0_8454:                    ; from 00439
  8454  A2 45     LDX #$45                      ; 00454 ×58783
  8456  A0 03     LDY #$03                      ; 00456 ×58783
  8458  20 CB FF  JSR sub_B0_FFCB               ; 00458 ×58783
  845B  20 C2 87  JSR sub_B0_87C2               ; 0045B ×58783
  845E  A5 10     LDA $10                       ; 0045E ×58778
  8460  C9 08     CMP #$08                      ; 00460 ×58778
  8462  D0 03     BNE loc_B0_8467               ; 00462 ×58778
  8464  20 57 87  JSR sub_B0_8757               ; 00464 ×3045

loc_B0_8467:                    ; from 00462
  8467  20 3A 85  JSR sub_B0_853A               ; 00467 ×58778
  846A  A0 02     LDY #$02                      ; 0046A ×58778
  846C  A2 03     LDX #$03                      ; 0046C ×58778
  846E  20 CB FF  JSR sub_B0_FFCB               ; 0046E ×58778
  8471  A2 03     LDX #$03                      ; 00471 ×58778
  8473  A0 06     LDY #$06                      ; 00473 ×58778
  8475  20 CB FF  JSR sub_B0_FFCB               ; 00475 ×58778
  8478  A5 95     LDA $95                       ; 00478 ×58778
  847A  C9 80     CMP #$80                      ; 0047A ×58778
  847C  D0 27     BNE loc_B0_84A5               ; 0047C ×58778
  847E  45 B6     EOR $B6                       ; 0047E ×58261
  8480  10 23     BPL loc_B0_84A5               ; 00480 ×58261
  8482  A5 D0     LDA $D0                       ; 00482 ×57428
  8484  F0 0A     BEQ loc_B0_8490               ; 00484 ×57428
  8486  A2 48     LDX #$48                      ; 00486 ×281
  8488  A0 03     LDY #$03                      ; 00488 ×281
  848A  20 CB FF  JSR sub_B0_FFCB               ; 0048A ×281
  848D  4C A5 84  JMP loc_B0_84A5               ; 0048D ×281

loc_B0_8490:                    ; from 00484
  8490  A5 10     LDA $10                       ; 00490 ×57147
  8492  C9 01     CMP #$01                      ; 00492 ×57147
  8494  D0 0F     BNE loc_B0_84A5               ; 00494 ×57147
  8496  25 0B     AND $0B                       ; 00496 ×25208
  8498  05 C8     ORA $C8                       ; 00498 ×25208
  849A  D0 09     BNE loc_B0_84A5               ; 0049A ×25208
  849C  A0 01     LDY #$01                      ; 0049C ×11924
  849E  A2 06     LDX #$06                      ; 0049E ×11924
  84A0  20 CB FF  JSR sub_B0_FFCB               ; 004A0 ×11924
  84A3  E6 B5     INC $B5                       ; 004A3 ×11924

loc_B0_84A5:                    ; from 00494 0049a 00480 0047c 0048d
  84A5  A5 95     LDA $95                       ; 004A5 ×58778
  84A7  C9 80     CMP #$80                      ; 004A7 ×58778
  84A9  D0 03     BNE loc_B0_84AE               ; 004A9 ×58778
  84AB  20 C7 84  JSR sub_B0_84C7               ; 004AB ×46056

loc_B0_84AE:                    ; from 004a9
  84AE  A4 DC     LDY $DC                       ; 004AE ×58778
  84B0  F0 4E     BEQ loc_B0_8500               ; 004B0 ×58778
  84B2  A9 00     LDA #$00                      ; 004B2 ×403
  84B4  85 DC     STA $DC                       ; 004B4 ×403

loc_B0_84B6:                    ; from 003ed
  84B6  B9 02 85  LDA $8502,Y                   ; 004B6 ×15948
  84B9  D0 2D     BNE loc_B0_84E8               ; 004B9 ×15948
  84BB  BE 03 85  LDX $8503,Y                   ; 004BB ×275
  84BE  B9 04 85  LDA $8504,Y                   ; 004BE ×275
  84C1  20 E1 84  JSR sub_B0_84E1               ; 004C1 ×275
  84C4  4C 00 85  JMP loc_B0_8500               ; 004C4 ×275

sub_B0_84C7:                    ; from 004ab
  84C7  A9 03     LDA #$03                      ; 004C7 ×46056
  84C9  25 0B     AND $0B                       ; 004C9 ×46056
  84CB  D0 13     BNE loc_B0_84E0               ; 004CB ×46056
  84CD  A5 C9     LDA $C9                       ; 004CD ×8496
  84CF  C9 00     CMP #$00                      ; 004CF ×8496
  84D1  F0 0D     BEQ loc_B0_84E0               ; 004D1 ×8496
  84D3  38        SEC                           ; 004D3 ×180
  84D4  E9 10     SBC #$10                      ; 004D4 ×180
  84D6  85 C9     STA $C9                       ; 004D6 ×180
  84D8  A9 00     LDA #$00                      ; 004D8 ×180
  84DA  85 CB     STA $CB                       ; 004DA ×180
  84DC  A9 84     LDA #$84                      ; 004DC ×180
  84DE  85 95     STA $95                       ; 004DE ×180

loc_B0_84E0:                    ; from 004cb 004d1
  84E0  60        RTS                           ; 004E0 ×46056

sub_B0_84E1:                    ; from 0114a 004c1 0669a 037f9 05f18 06608 (+1)
  84E1  85 39     STA $39                       ; 004E1 ×1324
  84E3  A0 03     LDY #$03                      ; 004E3 ×1324
  84E5  4C CB FF  JMP sub_B0_FFCB               ; 004E5 ×1324

loc_B0_84E8:                    ; from 004b9
  84E8  85 40     STA $40                       ; 004E8 ×15673
  84EA  B9 03 85  LDA $8503,Y                   ; 004EA ×15673
  84ED  85 3F     STA $3F                       ; 004ED ×15673
  84EF  B9 04 85  LDA $8504,Y                   ; 004EF ×15673
  84F2  85 42     STA $42                       ; 004F2 ×15673
  84F4  B9 05 85  LDA $8505,Y                   ; 004F4 ×15673
  84F7  85 4F     STA $4F                       ; 004F7 ×15673
  84F9  A0 03     LDY #$03                      ; 004F9 ×15673
  84FB  A2 09     LDX #$09                      ; 004FB ×15673
  84FD  20 CB FF  JSR sub_B0_FFCB               ; 004FD ×15673

loc_B0_8500:                    ; from 004b0 004c4
  8500  20 05 87  JSR sub_B0_8705               ; 00500 ×74304
  8503  4C 16 87  JMP loc_B0_8716               ; 00503 ×74304
  8506  .byte 00 15 04                                          ; 00506 data, read by 004b6 004bb 004be
  8509  .byte 00                                                ; 00509
  850A  .byte 81 01 60 1C 81 01 70 28 84 01 00 1C 81 01 C0 15   ; 0050A data, read by 004b6 004ea 004ef 004f4
  851A  .byte 82 01 00 08 81 01 30 20                           ; 0051A
  8522  .byte 82 01 00 10                                       ; 00522 data, read by 004b6 004ea 004ef 004f4
  8526  .byte 00 15 60 00 00 15 64 00 83 01 00 4C               ; 00526
  8532  .byte 81 01 00 38                                       ; 00532 data, read by 004b6 004ea 004ef 004f4
  8536  .byte 81 01 00 20                                       ; 00536

sub_B0_853A:                    ; from 00467
  853A  A4 10     LDY $10                       ; 0053A ×58778
  853C  C0 06     CPY #$06                      ; 0053C ×58778
  853E  F0 04     BEQ loc_B0_8544               ; 0053E ×58778
  8540  C0 03     CPY #$03                      ; 00540 ×57120
  8542  D0 21     BNE loc_B0_8565               ; 00542 ×57120

loc_B0_8544:                    ; from 0053e
  8544  A9 40     LDA #$40                      ; 00544 ×7268
  8546  2C 02 20  BIT $2002                     ; 00546 ×7268
  8549  D0 12     BNE loc_B0_855D               ; 00549 ×7268

loc_B0_854B:                    ; from 0054e
  854B  2C 02 20  BIT $2002                     ; 0054B ×4706043
  854E  F0 FB     BEQ loc_B0_854B               ; 0054E ×4706043
  8550  A5 10     LDA $10                       ; 00550 ×7263
  8552  C0 06     CPY #$06                      ; 00552 ×7263
  8554  F0 07     BEQ loc_B0_855D               ; 00554 ×7263
  8556  A0 01     LDY #$01                      ; 00556 ×5610
  8558  A2 22     LDX #$22                      ; 00558 ×5610
  855A  20 EB FF  JSR sub_B0_FFEB               ; 0055A ×5610

loc_B0_855D:                    ; from 00554 00549
  855D  AD 02 20  LDA $2002                     ; 0055D ×7268
  8560  A5 87     LDA $87                       ; 00560 ×7268
  8562  8D 05 20  STA $2005                     ; 00562 ×7268

loc_B0_8565:                    ; from 00542
  8565  60        RTS                           ; 00565 ×58778
  8566  A2 39     LDX #$39                      ; 00566 inferred, not run
  8568  D0 05     BNE $856F                     ; 00568 inferred, not run
  856A  20 7E 83  JSR sub_B0_837E               ; 0056A ×0
  856D  A2 3C     LDX #$3C                      ; 0056D ×0
  856F  A0 03     LDY #$03                      ; 0056F ×0
  8571  20 CB FF  JSR sub_B0_FFCB               ; 00571 ×0
  8574  20 33 80  JSR sub_B0_8033               ; 00574 ×0
  8577  4C 68 83  JMP $8368                     ; 00577 ×0
  857A  A2 09     LDX #$09                      ; 0057A inferred, not run
  857C  A0 07     LDY #$07                      ; 0057C inferred, not run
  857E  20 CB FF  JSR sub_B0_FFCB               ; 0057E inferred, not run
  8581  20 7E 83  JSR sub_B0_837E               ; 00581 inferred, not run
  8584  A2 3F     LDX #$3F                      ; 00584 inferred, not run
  8586  D0 E7     BNE $856F                     ; 00586 inferred, not run
  8588  20 9A 80  JSR $809A                     ; 00588 inferred, not run
  858B  F0 40     BEQ loc_B0_85CD               ; 0058B inferred, not run

loc_B0_858D:                    ; from 005b7
  858D  C9 80     CMP #$80                      ; 0058D ×22338
  858F  D0 1A     BNE loc_B0_85AB               ; 0058F ×22338
  8591  A5 10     LDA $10                       ; 00591 ×22085
  8593  C9 06     CMP #$06                      ; 00593 ×22085
  8595  F0 F1     BEQ $8588                     ; 00595 ×22085
  8597  C9 08     CMP #$08                      ; 00597 ×22085
  8599  D0 0B     BNE loc_B0_85A6               ; 00599 ×22085
  859B  A9 03     LDA #$03                      ; 0059B ×15318
  859D  20 78 FF  JSR sub_B0_FF78               ; 0059D ×15318
  85A0  EA        NOP                           ; 005A0 ×15318
  85A1  EA        NOP                           ; 005A1 ×15318
  85A2  EA        NOP                           ; 005A2 ×15318
  85A3  4C B9 85  JMP loc_B0_85B9               ; 005A3 ×15318

loc_B0_85A6:                    ; from 00599
  85A6  20 18 FF  JSR sub_B0_FF18               ; 005A6 ×6767
  85A9  F0 0E     BEQ loc_B0_85B9               ; 005A9 ×6767

loc_B0_85AB:                    ; from 0058f
  85AB  A5 89     LDA $89                       ; 005AB ×253
  85AD  20 F0 06  JSR $06F0                     ; 005AD ×253
  85B0  20 65 FF  JSR sub_B0_FF65               ; 005B0 ×253
  85B3  F0 18     BEQ loc_B0_85CD               ; 005B3 ×253

sub_B0_85B5:                    ; from 003a7 07ea6
  85B5  A5 CC     LDA $CC                       ; 005B5 ×289630
  85B7  D0 D4     BNE loc_B0_858D               ; 005B7 ×289630

loc_B0_85B9:                    ; from 005a3 005a9
  85B9  AD 96 07  LDA $0796                     ; 005B9 ×289377
  85BC  18        CLC                           ; 005BC ×289377

loc_B0_85BD:                    ; from 005c7
  85BD  69 10     ADC #$10                      ; 005BD ×2425095
  85BF  B0 09     BCS loc_B0_85CA               ; 005BF ×2425095
  85C1  EA        NOP                           ; 005C1 ×2135718
  85C2  4C C5 85  JMP loc_B0_85C5               ; 005C2 ×2135718

loc_B0_85C5:                    ; from 005c2
  85C5  EA        NOP                           ; 005C5 ×2135718
  85C6  EA        NOP                           ; 005C6 ×2135718
  85C7  4C BD 85  JMP loc_B0_85BD               ; 005C7 ×2135718

loc_B0_85CA:                    ; from 005bf
  85CA  20 82 07  JSR $0782                     ; 005CA ×289377

loc_B0_85CD:                    ; from 005b3
  85CD  A5 96     LDA $96                       ; 005CD ×289630
  85CF  8D 06 20  STA $2006                     ; 005CF ×289630
  85D2  A9 60     LDA #$60                      ; 005D2 ×289630
  85D4  8D 06 20  STA $2006                     ; 005D4 ×289630
  85D7  8E 05 20  STX $2005                     ; 005D7 ×289630
  85DA  8E 05 20  STX $2005                     ; 005DA ×289630
  85DD  A9 08     LDA #$08                      ; 005DD ×289630
  85DF  8D 01 20  STA $2001                     ; 005DF ×289630
  85E2  A2 0F     LDX #$0F                      ; 005E2 ×289630

loc_B0_85E4:                    ; from 005e5
  85E4  CA        DEX                           ; 005E4 ×4344450
  85E5  D0 FD     BNE loc_B0_85E4               ; 005E5 ×4344450
  85E7  A5 84     LDA $84                       ; 005E7 ×289630
  85E9  2A        ROL A                         ; 005E9 ×289630
  85EA  2A        ROL A                         ; 005EA ×289630
  85EB  A8        TAY                           ; 005EB ×289630
  85EC  2A        ROL A                         ; 005EC ×289630
  85ED  AA        TAX                           ; 005ED ×289630
  85EE  2A        ROL A                         ; 005EE ×289630
  85EF  29 30     AND #$30                      ; 005EF ×289630
  85F1  85 15     STA $15                       ; 005F1 ×289630
  85F3  8A        TXA                           ; 005F3 ×289630
  85F4  29 03     AND #$03                      ; 005F4 ×289630
  85F6  05 15     ORA $15                       ; 005F6 ×289630
  85F8  85 85     STA $85                       ; 005F8 ×289630
  85FA  98        TYA                           ; 005FA ×289630
  85FB  29 E0     AND #$E0                      ; 005FB ×289630
  85FD  85 86     STA $86                       ; 005FD ×289630
  85FF  A9 18     LDA #$18                      ; 005FF ×289630
  8601  8D 01 20  STA $2001                     ; 00601 ×289630
  8604  A2 4E     LDX #$4E                      ; 00604 ×289630
  8606  A5 10     LDA $10                       ; 00606 ×289630
  8608  C9 06     CMP #$06                      ; 00608 ×289630
  860A  F0 06     BEQ loc_B0_8612               ; 0060A ×289630
  860C  C9 03     CMP #$03                      ; 0060C ×286013
  860E  D0 09     BNE loc_B0_8619               ; 0060E ×286013
  8610  A2 A6     LDX #$A6                      ; 00610 ×6573

loc_B0_8612:                    ; from 0060a
  8612  A0 02     LDY #$02                      ; 00612 ×10190
  8614  20 EB FF  JSR sub_B0_FFEB               ; 00614 ×10190
  8617  F0 37     BEQ loc_B0_8650               ; 00617 ×10190

loc_B0_8619:                    ; from 0060e
  8619  A5 F6     LDA $F6                       ; 00619 ×279440
  861B  D0 05     BNE loc_B0_8622               ; 0061B ×279440
  861D  A9 10     LDA #$10                      ; 0061D ×51759
  861F  20 84 FF  JSR sub_B0_FF84               ; 0061F ×51759

loc_B0_8622:                    ; from 0061b
  8622  A5 84     LDA $84                       ; 00622 ×279440
  8624  29 04     AND #$04                      ; 00624 ×279440
  8626  F0 14     BEQ loc_B0_863C               ; 00626 ×279440
  8628  A6 85     LDX $85                       ; 00628 ×93819
  862A  A4 86     LDY $86                       ; 0062A ×93819
  862C  A9 40     LDA #$40                      ; 0062C ×93819

loc_B0_862E:                    ; from 00631
  862E  2C 02 20  BIT $2002                     ; 0062E ×29558432
  8631  F0 FB     BEQ loc_B0_862E               ; 00631 ×29558432
  8633  8E 06 20  STX $2006                     ; 00633 ×93818
  8636  8C 06 20  STY $2006                     ; 00636 ×93818
  8639  4C 43 86  JMP loc_B0_8643               ; 00639 ×93818

loc_B0_863C:                    ; from 00626
  863C  A9 40     LDA #$40                      ; 0063C ×185621

loc_B0_863E:                    ; from 00641
  863E  2C 02 20  BIT $2002                     ; 0063E ×63544238
  8641  F0 FB     BEQ loc_B0_863E               ; 00641 ×63544235

loc_B0_8643:                    ; from 00639
  8643  A0 01     LDY #$01                      ; 00643 ×279435
  8645  A2 54     LDX #$54                      ; 00645 ×279435
  8647  20 EB FF  JSR sub_B0_FFEB               ; 00647 ×279435
  864A  A5 84     LDA $84                       ; 0064A ×279435
  864C  29 04     AND #$04                      ; 0064C ×279435
  864E  D0 0A     BNE loc_B0_865A               ; 0064E ×279435

loc_B0_8650:                    ; from 00617
  8650  A5 85     LDA $85                       ; 00650 ×195807
  8652  8D 06 20  STA $2006                     ; 00652 ×195807
  8655  A5 86     LDA $86                       ; 00655 ×195807
  8657  8D 06 20  STA $2006                     ; 00657 ×195807

loc_B0_865A:                    ; from 0064e
  865A  A2 0C     LDX #$0C                      ; 0065A ×289625
  865C  A5 87     LDA $87                       ; 0065C ×289625
  865E  18        CLC                           ; 0065E ×289625
  865F  65 D3     ADC $D3                       ; 0065F ×289625
  8661  A4 10     LDY $10                       ; 00661 ×289625
  8663  C0 06     CPY #$06                      ; 00663 ×289625
  8665  F0 04     BEQ loc_B0_866B               ; 00665 ×289625
  8667  C0 03     CPY #$03                      ; 00667 ×286008
  8669  D0 09     BNE loc_B0_8674               ; 00669 ×286008

loc_B0_866B:                    ; from 00665
  866B  4A        LSR A                         ; 0066B ×10190
  866C  85 CC     STA $CC                       ; 0066C ×10190
  866E  4A        LSR A                         ; 0066E ×10190
  866F  18        CLC                           ; 0066F ×10190
  8670  65 CC     ADC $CC                       ; 00670 ×10190
  8672  A2 07     LDX #$07                      ; 00672 ×10190

loc_B0_8674:                    ; from 00669
  8674  8D 05 20  STA $2005                     ; 00674 ×289625
  8677  A0 01     LDY #$01                      ; 00677 ×289625
  8679  20 EB FF  JSR sub_B0_FFEB               ; 00679 ×289625
  867C  8E B3 FF  STX $FFB3                     ; 0067C ×289625
  867F  A5 09     LDA $09                       ; 0067F ×289625
  8681  10 2C     BPL loc_B0_86AF               ; 00681 ×289625
  8683  20 78 8D  JSR sub_B0_8D78               ; 00683 ×183224

loc_B0_8686:                    ; from 006b6
  8686  A4 10     LDY $10                       ; 00686 ×289625
  8688  B9 B8 86  LDA $86B8,Y                   ; 00688 ×289625
  868B  85 CC     STA $CC                       ; 0068B ×289625
  868D  98        TYA                           ; 0068D ×289625
  868E  C9 03     CMP #$03                      ; 0068E ×289625
  8690  D0 35     BNE loc_B0_86C7               ; 00690 ×289625
  8692  A2 28     LDX #$28                      ; 00692 ×6573

loc_B0_8694:                    ; from 006d1
  8694  A0 03     LDY #$03                      ; 00694 ×10190
  8696  20 EB FF  JSR sub_B0_FFEB               ; 00696 ×10190
  8699  AD 02 20  LDA $2002                     ; 00699 ×10190
  869C  A5 87     LDA $87                       ; 0069C ×10190
  869E  A4 09     LDY $09                       ; 0069E ×10190
  86A0  10 05     BPL loc_B0_86A7               ; 006A0 ×10190
  86A2  A4 F6     LDY $F6                       ; 006A2 ×8617
  86A4  D0 01     BNE loc_B0_86A7               ; 006A4 ×8617
  86A6  4A        LSR A                         ; 006A6 ×7270

loc_B0_86A7:                    ; from 006a0 006a4
  86A7  8D 05 20  STA $2005                     ; 006A7 ×10190
  86AA  A9 00     LDA #$00                      ; 006AA ×10190
  86AC  4C 84 FF  JMP sub_B0_FF84               ; 006AC ×10190

loc_B0_86AF:                    ; from 00681
  86AF  A0 01     LDY #$01                      ; 006AF ×106401
  86B1  A2 30     LDX #$30                      ; 006B1 ×106401
  86B3  20 EB FF  JSR sub_B0_FFEB               ; 006B3 ×106401
  86B6  4C 86 86  JMP loc_B0_8686               ; 006B6 ×106401
  86B9  .byte 00 00 00 00 80 00 00 80 00 00 00 00 00            ; 006B9 data, read by 00688
  86C6  .byte 00                                                ; 006C6

loc_B0_86C7:                    ; from 00690
  86C7  C9 06     CMP #$06                      ; 006C7 ×283052
  86C9  D0 22     BNE loc_B0_86ED               ; 006C9 ×283052
  86CB  A2 DC     LDX #$DC                      ; 006CB ×3617
  86CD  A5 EE     LDA $EE                       ; 006CD ×3617
  86CF  C9 02     CMP #$02                      ; 006CF ×3617
  86D1  90 C1     BCC loc_B0_8694               ; 006D1 ×3617
  86D3  A5 87     LDA $87                       ; 006D3 inferred, not run
  86D5  4A        LSR A                         ; 006D5 inferred, not run
  86D6  85 17     STA $17                       ; 006D6 inferred, not run
  86D8  20 DA FE  JSR $FEDA                     ; 006D8 inferred, not run
  86DB  4C 99 86  JMP $8699                     ; 006DB inferred, not run
  86DE  .byte A2 28 A0 03 20 EB FF AD 02 20 A5 87 8D 05 20      ; 006DE

loc_B0_86ED:                    ; from 006c9
  86ED  60        RTS                           ; 006ED ×279435

loc_B0_86EE:                    ; from 065c1 066c0 05544 05600 00373 064bf (+5)
  86EE  86 23     STX $23                       ; 006EE ×562
  86F0  84 24     STY $24                       ; 006F0 ×562
  86F2  A5 0A     LDA $0A                       ; 006F2 ×562
  86F4  09 18     ORA #$18                      ; 006F4 ×562
  86F6  85 0A     STA $0A                       ; 006F6 ×562
  86F8  A9 00     LDA #$00                      ; 006F8 ×562
  86FA  85 0B     STA $0B                       ; 006FA ×562
  86FC  85 0C     STA $0C                       ; 006FC ×562
  86FE  AD 02 20  LDA $2002                     ; 006FE ×562
  8701  A9 90     LDA #$90                      ; 00701 ×562
  8703  D0 15     BNE loc_B0_871A               ; 00703 ×562

sub_B0_8705:                    ; from 00710 00500
  8705  E6 0B     INC $0B                       ; 00705 ×206049
  8707  A5 0B     LDA $0B                       ; 00707 ×206049
  8709  29 01     AND #$01                      ; 00709 ×206049
  870B  D0 02     BNE loc_B0_870F               ; 0070B ×206049
  870D  E6 0C     INC $0C                       ; 0070D ×102969

loc_B0_870F:                    ; from 0070b
  870F  60        RTS                           ; 0070F ×206049

loc_B0_8710:                    ; from 064ee 0658c 0671c 066b9 06532
  8710  20 05 87  JSR sub_B0_8705               ; 00710 ×131745

loc_B0_8713:                    ; from 003f0
  8713  AD 02 20  LDA $2002                     ; 00713 ×240595

loc_B0_8716:                    ; from 00503
  8716  A5 09     LDA $09                       ; 00716 ×314899
  8718  09 80     ORA #$80                      ; 00718 ×314899

loc_B0_871A:                    ; from 00703
  871A  85 09     STA $09                       ; 0071A ×315461
  871C  8D 00 20  STA $2000                     ; 0071C ×315461

loc_B0_871F:                    ; from 00725
  871F  20 28 87  JSR sub_B0_8728               ; 0071F ×22485281
  8722  20 43 87  JSR sub_B0_8743               ; 00722 ×22222601
  8725  4C 1F 87  JMP loc_B0_871F               ; 00725 ×22173126

sub_B0_8728:                    ; from 0071f
  8728  A2 03     LDX #$03                      ; 00728 ×22479627

loc_B0_872A:                    ; from 00740
  872A  B5 25     LDA $25,X                     ; 0072A ×89489375
  872C  65 0B     ADC $0B                       ; 0072C ×89472678
  872E  ED FD 03  SBC $03FD                     ; 0072E ×89461219
  8731  4D 57 04  EOR $0457                     ; 00731 ×89448189
  8734  55 26     EOR $26,X                     ; 00734 ×89434832
  8736  F5 24     SBC $24,X                     ; 00736 ×89419387
  8738  7D 1B 04  ADC $041B,X                   ; 00738 ×89406142
  873B  65 0B     ADC $0B                       ; 0073B ×89356442
  873D  95 25     STA $25,X                     ; 0073D ×89316151
  873F  CA        DEX                           ; 0073F ×89255835
  8740  10 E8     BPL loc_B0_872A               ; 00740 ×89250224
  8742  60        RTS                           ; 00742 ×22230284

sub_B0_8743:                    ; from 00722
  8743  A5 25     LDA $25                       ; 00743 ×22216239
  8745  45 28     EOR $28                       ; 00745 ×22210387
  8747  65 27     ADC $27                       ; 00747 ×22203832
  8749  85 26     STA $26                       ; 00749 ×22197073
  874B  A5 27     LDA $27                       ; 0074B ×22195012
  874D  2A        ROL A                         ; 0074D ×22192448
  874E  E5 28     SBC $28                       ; 0074E ×22189427
  8750  85 27     STA $27                       ; 00750 ×22186714
  8752  45 26     EOR $26                       ; 00752 ×22183536
  8754  85 25     STA $25                       ; 00754 ×22181044
  8756  60        RTS                           ; 00756 ×22178321

sub_B0_8757:                    ; from 00451 00464 00058 00044
  8757  A2 03     LDX #$03                      ; 00757 ×61852
  8759  A0 05     LDY #$05                      ; 00759 ×61852
  875B  4C CB FF  JMP sub_B0_FFCB               ; 0075B ×61852

sub_B0_875E:                    ; from 0358f
  875E  86 15     STX $15                       ; 0075E ×235
  8760  85 16     STA $16                       ; 00760 ×235
  8762  A2 09     LDX #$09                      ; 00762 ×235
  8764  A0 05     LDY #$05                      ; 00764 ×235
  8766  4C CB FF  JMP sub_B0_FFCB               ; 00766 ×235
  8769  .byte E6 10                                             ; 00769

sub_B0_876B:                    ; from 00336 023da
  876B  78        SEI                           ; 0076B ×51
  876C  AD 02 20  LDA $2002                     ; 0076C ×51
  876F  A9 00     LDA #$00                      ; 0076F ×51
  8771  8D 15 40  STA $4015                     ; 00771 ×51
  8774  85 09     STA $09                       ; 00774 ×51
  8776  8D 00 20  STA $2000                     ; 00776 ×51
  8779  8D 01 20  STA $2001                     ; 00779 ×51
  877C  A2 15     LDX #$15                      ; 0077C ×51

loc_B0_877E:                    ; from 00783
  877E  95 00     STA $00,X                     ; 0077E ×11781
  8780  E8        INX                           ; 00780 ×11781
  8781  E0 FC     CPX #$FC                      ; 00781 ×11781
  8783  D0 F9     BNE loc_B0_877E               ; 00783 ×11781
  8785  A2 00     LDX #$00                      ; 00785 ×51

loc_B0_8787:                    ; from 0079e
  8787  9D 00 01  STA $0100,X                   ; 00787 ×13056
  878A  9D 00 02  STA $0200,X                   ; 0078A ×13056
  878D  9D 00 03  STA $0300,X                   ; 0078D ×13056
  8790  9D 00 04  STA $0400,X                   ; 00790 ×13056
  8793  E0 F4     CPX #$F4                      ; 00793 ×13056
  8795  B0 03     BCS loc_B0_879A               ; 00795 ×13056
  8797  9D 00 05  STA $0500,X                   ; 00797 ×12444

loc_B0_879A:                    ; from 00795
  879A  9D 00 06  STA $0600,X                   ; 0079A ×13056
  879D  E8        INX                           ; 0079D ×13056
  879E  D0 E7     BNE loc_B0_8787               ; 0079E ×13056
  87A0  4C 39 83  JMP loc_B0_8339               ; 007A0 ×51

sub_B0_87A3:                    ; from 0042b
  87A3  A2 12     LDX #$12                      ; 007A3 ×58783
  87A5  A0 02     LDY #$02                      ; 007A5 ×58783
  87A7  4C CB FF  JMP sub_B0_FFCB               ; 007A7 ×58783
  87AA  A9 00     LDA #$00                      ; 007AA inferred, not run
  87AC  8D 01 20  STA $2001                     ; 007AC inferred, not run
  87AF  20 F2 91  JSR sub_B0_91F2               ; 007AF inferred, not run
  87B2  E6 0D     INC $0D                       ; 007B2 inferred, not run
  87B4  20 2A E6  JSR sub_B0_E62A               ; 007B4 inferred, not run
  87B7  A9 12     LDA #$12                      ; 007B7 inferred, not run
  87B9  20 83 83  JSR sub_B0_8383               ; 007B9 inferred, not run
  87BC  20 8C 83  JSR sub_B0_838C               ; 007BC inferred, not run
  87BF  4C 24 DA  JMP $DA24                     ; 007BF inferred, not run

sub_B0_87C2:                    ; from 0045b
  87C2  A2 00     LDX #$00                      ; 007C2 ×58783

loc_B0_87C4:                    ; from 008e8
  87C4  86 82     STX $82                       ; 007C4 ×881675
  87C6  BD C1 03  LDA $03C1,X                   ; 007C6 ×881675
  87C9  D0 08     BNE loc_B0_87D3               ; 007C9 ×881675

loc_B0_87CB:                    ; from 007fb
  87CB  A9 80     LDA #$80                      ; 007CB ×700030
  87CD  9D A2 04  STA $04A2,X                   ; 007CD ×700030
  87D0  4C E3 88  JMP loc_B0_88E3               ; 007D0 ×700030

loc_B0_87D3:                    ; from 007c9
  87D3  0A        ASL A                         ; 007D3 ×182172
  87D4  A8        TAY                           ; 007D4 ×182172
  87D5  B9 8A 9B  LDA $9B8A,Y                   ; 007D5 ×182172
  87D8  85 19     STA $19                       ; 007D8 ×182172
  87DA  B9 8B 9B  LDA $9B8B,Y                   ; 007DA ×182172
  87DD  85 1A     STA $1A                       ; 007DD ×182172
  87DF  BD 39 04  LDA $0439,X                   ; 007DF ×182172
  87E2  85 AD     STA $AD                       ; 007E2 ×182172
  87E4  BD 2A 04  LDA $042A,X                   ; 007E4 ×182172
  87E7  85 AE     STA $AE                       ; 007E7 ×182172
  87E9  BD A2 04  LDA $04A2,X                   ; 007E9 ×182172
  87EC  85 81     STA $81                       ; 007EC ×182172
  87EE  29 F7     AND #$F7                      ; 007EE ×182172
  87F0  9D A2 04  STA $04A2,X                   ; 007F0 ×182172
  87F3  20 EC 88  JSR sub_B0_88EC               ; 007F3 ×182172
  87F6  A6 82     LDX $82                       ; 007F6 ×182167
  87F8  BD C1 03  LDA $03C1,X                   ; 007F8 ×182167
  87FB  F0 CE     BEQ loc_B0_87CB               ; 007FB ×182167
  87FD  1E A2 04  ASL $04A2,X                   ; 007FD ×181640
  8800  A5 10     LDA $10                       ; 00800 ×181640
  8802  C9 05     CMP #$05                      ; 00802 ×181640
  8804  F0 03     BEQ loc_B0_8809               ; 00804 ×181640
  8806  4C 4E 88  JMP loc_B0_884E               ; 00806 ×172870

loc_B0_8809:                    ; from 00804
  8809  BD C1 03  LDA $03C1,X                   ; 00809 ×8770
  880C  C9 60     CMP #$60                      ; 0080C ×8770
  880E  F0 3E     BEQ loc_B0_884E               ; 0080E ×8770
  8810  C9 61     CMP #$61                      ; 00810 ×8770
  8812  F0 3A     BEQ loc_B0_884E               ; 00812 ×8770
  8814  A2 18     LDX #$18                      ; 00814 ×8770
  8816  A0 02     LDY #$02                      ; 00816 ×8770
  8818  20 CB FF  JSR sub_B0_FFCB               ; 00818 ×8770
  881B  A4 15     LDY $15                       ; 0081B ×8770
  881D  C0 38     CPY #$38                      ; 0081D ×8770
  881F  B0 6C     BCS loc_B0_888D               ; 0081F ×8770
  8821  BD A2 04  LDA $04A2,X                   ; 00821 ×1361
  8824  09 40     ORA #$40                      ; 00824 ×1361
  8826  E0 02     CPX #$02                      ; 00826 ×1361
  8828  90 0F     BCC $8839                     ; 00828 ×1361
  882A  BC C1 03  LDY $03C1,X                   ; 0082A ×1361
  882D  C0 62     CPY #$62                      ; 0082D ×1361
  882F  F0 08     BEQ $8839                     ; 0082F ×1361
  8831  C0 5C     CPY #$5C                      ; 00831 ×1361
  8833  90 10     BCC loc_B0_8845               ; 00833 ×1361
  8835  C0 5F     CPY #$5F                      ; 00835 ×169
  8837  B0 0C     BCS loc_B0_8845               ; 00837 ×169
  8839  BC 47 05  LDY $0547,X                   ; 00839 ×113
  883C  D0 07     BNE loc_B0_8845               ; 0083C ×113
  883E  BC 74 05  LDY $0574,X                   ; 0083E ×61
  8841  D0 02     BNE loc_B0_8845               ; 00841 ×61
  8843  49 80     EOR #$80                      ; 00843 ×61

loc_B0_8845:                    ; from 00833 00837 0083c
  8845  9D A2 04  STA $04A2,X                   ; 00845 ×1361
  8848  4C 8D 88  JMP loc_B0_888D               ; 00848 ×1361
  884B  .byte 4C E0 88                                          ; 0084B

loc_B0_884E:                    ; from 00806
  884E  C9 08     CMP #$08                      ; 0084E ×172870
  8850  D0 2B     BNE loc_B0_887D               ; 00850 ×172870
  8852  BD C1 03  LDA $03C1,X                   ; 00852 ×12165
  8855  29 FE     AND #$FE                      ; 00855 ×12165
  8857  C9 4C     CMP #$4C                      ; 00857 ×12165
  8859  D0 22     BNE loc_B0_887D               ; 00859 ×12165
  885B  BD 56 05  LDA $0556,X                   ; 0085B ×5178
  885E  C9 80     CMP #$80                      ; 0085E ×5178
  8860  D0 1B     BNE loc_B0_887D               ; 00860 ×5178
  8862  BD FD 03  LDA $03FD,X                   ; 00862 inferred, not run
  8865  E9 06     SBC #$06                      ; 00865 inferred, not run
  8867  85 15     STA $15                       ; 00867 inferred, not run
  8869  BD EE 03  LDA $03EE,X                   ; 00869 inferred, not run
  886C  E9 00     SBC #$00                      ; 0086C inferred, not run
  886E  85 16     STA $16                       ; 0086E inferred, not run
  8870  A5 15     LDA $15                       ; 00870 inferred, not run
  8872  38        SEC                           ; 00872 inferred, not run
  8873  E5 87     SBC $87                       ; 00873 inferred, not run
  8875  9D 84 04  STA $0484,X                   ; 00875 inferred, not run
  8878  A5 16     LDA $16                       ; 00878 inferred, not run
  887A  4C 89 88  JMP $8889                     ; 0087A inferred, not run

loc_B0_887D:                    ; from 00850 00859 00860
  887D  BD FD 03  LDA $03FD,X                   ; 0087D ×172870
  8880  38        SEC                           ; 00880 ×172870
  8881  E5 87     SBC $87                       ; 00881 ×172870
  8883  9D 84 04  STA $0484,X                   ; 00883 ×172870
  8886  BD EE 03  LDA $03EE,X                   ; 00886 ×172870
  8889  E5 88     SBC $88                       ; 00889 ×172870
  888B  D0 52     BNE loc_B0_88DF               ; 0088B ×172870

loc_B0_888D:                    ; from 0081f 00848
  888D  BD 1B 04  LDA $041B,X                   ; 0088D ×152320
  8890  38        SEC                           ; 00890 ×152320
  8891  FD 39 04  SBC $0439,X                   ; 00891 ×152320
  8894  85 15     STA $15                       ; 00894 ×152320
  8896  BD 0C 04  LDA $040C,X                   ; 00896 ×152320
  8899  FD 2A 04  SBC $042A,X                   ; 00899 ×152320
  889C  85 16     STA $16                       ; 0089C ×152320
  889E  A5 F5     LDA $F5                       ; 0089E ×152320
  88A0  F0 0B     BEQ loc_B0_88AD               ; 008A0 ×152320
  88A2  49 FF     EOR #$FF                      ; 008A2 inferred, not run
  88A4  38        SEC                           ; 008A4 inferred, not run
  88A5  65 15     ADC $15                       ; 008A5 inferred, not run
  88A7  85 15     STA $15                       ; 008A7 inferred, not run
  88A9  90 02     BCC loc_B0_88AD               ; 008A9 inferred, not run
  88AB  E6 16     INC $16                       ; 008AB inferred, not run

loc_B0_88AD:                    ; from 008a0
  88AD  A5 15     LDA $15                       ; 008AD ×152320
  88AF  18        CLC                           ; 008AF ×152320
  88B0  7D 75 04  ADC $0475,X                   ; 008B0 ×152320
  88B3  90 02     BCC loc_B0_88B7               ; 008B3 ×152320
  88B5  E6 16     INC $16                       ; 008B5 ×355

loc_B0_88B7:                    ; from 008b3
  88B7  38        SEC                           ; 008B7 ×152320
  88B8  E5 89     SBC $89                       ; 008B8 ×152320
  88BA  9D 93 04  STA $0493,X                   ; 008BA ×152320
  88BD  A5 16     LDA $16                       ; 008BD ×152320
  88BF  E5 8A     SBC $8A                       ; 008BF ×152320
  88C1  D0 03     BNE loc_B0_88C6               ; 008C1 ×152320
  88C3  18        CLC                           ; 008C3 ×145709
  88C4  90 1A     BCC loc_B0_88E0               ; 008C4 ×145709

loc_B0_88C6:                    ; from 008c1
  88C6  C9 01     CMP #$01                      ; 008C6 ×6611
  88C8  D0 15     BNE loc_B0_88DF               ; 008C8 ×6611
  88CA  BD 93 04  LDA $0493,X                   ; 008CA ×3816
  88CD  FD 75 04  SBC $0475,X                   ; 008CD ×3816
  88D0  B0 0E     BCS loc_B0_88E0               ; 008D0 ×3816
  88D2  49 FF     EOR #$FF                      ; 008D2 ×440
  88D4  9D 75 04  STA $0475,X                   ; 008D4 ×440
  88D7  A9 FF     LDA #$FF                      ; 008D7 ×440
  88D9  9D 93 04  STA $0493,X                   ; 008D9 ×440
  88DC  18        CLC                           ; 008DC ×440
  88DD  90 01     BCC loc_B0_88E0               ; 008DD ×440

loc_B0_88DF:                    ; from 0088b 008c8
  88DF  38        SEC                           ; 008DF ×32115

loc_B0_88E0:                    ; from 008c4 008d0 008dd
  88E0  7E A2 04  ROR $04A2,X                   ; 008E0 ×181640

loc_B0_88E3:                    ; from 007d0
  88E3  E8        INX                           ; 008E3 ×881670
  88E4  E0 0F     CPX #$0F                      ; 008E4 ×881670
  88E6  F0 03     BEQ loc_B0_88EB               ; 008E6 ×881670
  88E8  4C C4 87  JMP loc_B0_87C4               ; 008E8 ×822892

loc_B0_88EB:                    ; from 008e6
  88EB  60        RTS                           ; 008EB ×58778

sub_B0_88EC:                    ; from 007f3
  88EC  6C 19 00  JMP ($0019)                   ; 008EC ×182172

sub_B0_88EF:                    ; from 03242
  88EF  29 1F     AND #$1F                      ; 008EF ×1568
  88F1  A8        TAY                           ; 008F1 ×1568
  88F2  88        DEY                           ; 008F2 ×1568

sub_B0_88F3:                    ; from 0483f
  88F3  84 15     STY $15                       ; 008F3 ×1625
  88F5  B9 47 05  LDA $0547,Y                   ; 008F5 ×1625
  88F8  F0 43     BEQ loc_B0_893D               ; 008F8 ×1625
  88FA  C0 02     CPY #$02                      ; 008FA ×253
  88FC  B0 2F     BCS loc_B0_892D               ; 008FC ×253
  88FE  A5 10     LDA $10                       ; 008FE ×253
  8900  49 0B     EOR #$0B                      ; 00900 ×253
  8902  D0 08     BNE loc_B0_890C               ; 00902 ×253
  8904  9D A1 05  STA $05A1,X                   ; 00904 ×1
  8907  A9 D4     LDA #$D4                      ; 00907 ×1
  8909  20 EE 8E  JSR sub_B0_8EEE               ; 00909 ×1

loc_B0_890C:                    ; from 00902
  890C  A5 D1     LDA $D1                       ; 0090C ×253
  890E  D0 1D     BNE loc_B0_892D               ; 0090E ×253
  8910  B9 BF 03  LDA $03BF,Y                   ; 00910 ×253
  8913  F0 18     BEQ loc_B0_892D               ; 00913 ×253
  8915  C9 C0     CMP #$C0                      ; 00915 ×252
  8917  D0 07     BNE loc_B0_8920               ; 00917 ×252
  8919  20 52 8E  JSR sub_B0_8E52               ; 00919 inferred, not run
  891C  A9 4F     LDA #$4F                      ; 0091C inferred, not run
  891E  D0 3D     BNE loc_B0_895D               ; 0091E inferred, not run

loc_B0_8920:                    ; from 00917
  8920  C9 D0     CMP #$D0                      ; 00920 ×252
  8922  D0 19     BNE loc_B0_893D               ; 00922 ×252
  8924  A9 08     LDA #$08                      ; 00924 ×252
  8926  20 20 B9  JSR sub_B0_B920               ; 00926 ×252
  8929  A9 2A     LDA #$2A                      ; 00929 ×252
  892B  D0 30     BNE loc_B0_895D               ; 0092B ×252

loc_B0_892D:                    ; from 00913
  892D  A9 80     LDA #$80                      ; 0092D ×1
  892F  9D 65 05  STA $0565,X                   ; 0092F ×1
  8932  A9 00     LDA #$00                      ; 00932 ×1
  8934  9D 29 05  STA $0529,X                   ; 00934 ×1
  8937  99 38 05  STA $0538,Y                   ; 00937 ×1
  893A  4C 0E 8A  JMP loc_B0_8A0E               ; 0093A ×1

loc_B0_893D:                    ; from 008f8
  893D  20 6D B1  JSR sub_B0_B16D               ; 0093D ×1372
  8940  BD A2 04  LDA $04A2,X                   ; 00940 ×1372
  8943  29 03     AND #$03                      ; 00943 ×1372
  8945  19 A2 04  ORA $04A2,Y                   ; 00945 ×1372
  8948  09 08     ORA #$08                      ; 00948 ×1372
  894A  9D A2 04  STA $04A2,X                   ; 0094A ×1372
  894D  B9 B5 03  LDA $03B5,Y                   ; 0094D ×1372
  8950  A8        TAY                           ; 00950 ×1372
  8951  A5 10     LDA $10                       ; 00951 ×1372
  8953  C9 04     CMP #$04                      ; 00953 ×1372
  8955  B9 29 89  LDA $8929,Y                   ; 00955 ×1372
  8958  90 03     BCC loc_B0_895D               ; 00958 ×1372
  895A  B9 33 89  LDA $8933,Y                   ; 0095A ×1372

loc_B0_895D:                    ; from 0092b
  895D  9D D0 03  STA $03D0,X                   ; 0095D ×1624
  8960  60        RTS                           ; 00960 ×1624
  8961  .byte 09 0A                                             ; 00961 data, read by 00955
  8963  .byte 2B 2C 2D                                          ; 00963
  8966  .byte 0B                                                ; 00966 data, read by 00955
  8967  .byte 3E 09 0A 4F                                       ; 00967
  896B  .byte 09 0A                                             ; 0096B data, read by 0095a
  896D  .byte 8C                                                ; 0096D
  896E  .byte 8C 8C 0B                                          ; 0096E data, read by 00955 0095a
  8971  .byte 8C 09                                             ; 00971
  8973  .byte 0A 4F                                             ; 00973 data, read by 00955
  8975  .byte 4C EF 88                                          ; 00975
  8978  .byte A9 80                                             ; 00978 data, read by 0095a
  897A  .byte 9D 56 05                                          ; 0097A
  897D  .byte 20 66                                             ; 0097D data, read by 0095a
  897F  .byte CF 20 AD E4 A5 0C 29 03 A8 4C 4C 8A BD 29 05 C9   ; 0097F
  898F  .byte 40 B0 E3 A5 B2 1D 47 05 1D 74 05 D0 0A BD FD 03   ; 0098F
  899F  .byte 38 E5 87 C9 C0 B0 D2 BD 47 05 F0 72 BD 74 05 D0   ; 0099F
  89AF  .byte 1A A9 1E 85 B2 BD 39 04 C9 60 B0 0F BD 2A 04 D0   ; 009AF
  89BF  .byte 0A A9 D0 9D 74 05 A9 70 9D 47 05 A9 00 9D 83 05   ; 009BF
  89CF  .byte BD B1 04 29 40 D0 32 A9 FC 20 6A D0 20 4C 8F BD   ; 009CF
  89DF  .byte 75 04 C9 24 A9 00 90 02 A9 02 9D C0 04 A9 40 20   ; 009DF
  89EF  .byte E4 8E 20 AD E4 20 59 9E BC 47 05 A9 0C C0 26 B0   ; 009EF
  89FF  .byte 4F A9 FF 20 DA E2 4C 4C 8A 20 26 E2 20 57 8A      ; 009FF

loc_B0_8A0E:                    ; from 0093a
  8A0E  BD 47 05  LDA $0547,X                   ; 00A0E ×1
  8A11  D0 06     BNE $8A19                     ; 00A11 ×1
  8A13  9D 83 05  STA $0583,X                   ; 00A13 ×1
  8A16  9D C0 04  STA $04C0,X                   ; 00A16 ×1
  8A19  A9 0A     LDA #$0A                      ; 00A19 ×1
  8A1B  D0 32     BNE loc_B0_8A4F               ; 00A1B ×1
  8A1D  BD 74 05  LDA $0574,X                   ; 00A1D inferred, not run
  8A20  F0 06     BEQ $8A28                     ; 00A20 inferred, not run
  8A22  20 8C E1  JSR sub_B0_E18C               ; 00A22 inferred, not run
  8A25  4C 19 8A  JMP $8A19                     ; 00A25 inferred, not run
  8A28  20 F7 96  JSR $96F7                     ; 00A28 inferred, not run
  8A2B  BD 38 05  LDA $0538,X                   ; 00A2B inferred, not run
  8A2E  F0 03     BEQ $8A33                     ; 00A2E inferred, not run
  8A30  20 12 9E  JSR sub_B0_9E12               ; 00A30 inferred, not run
  8A33  BD FC 04  LDA $04FC,X                   ; 00A33 inferred, not run
  8A36  D0 1A     BNE loc_B0_8A52               ; 00A36 inferred, not run
  8A38  BD C0 04  LDA $04C0,X                   ; 00A38 inferred, not run
  8A3B  F0 09     BEQ $8A46                     ; 00A3B inferred, not run
  8A3D  BD 83 05  LDA $0583,X                   ; 00A3D inferred, not run
  8A40  F0 04     BEQ $8A46                     ; 00A40 inferred, not run
  8A42  A9 09     LDA #$09                      ; 00A42 inferred, not run
  8A44  D0 09     BNE loc_B0_8A4F               ; 00A44 inferred, not run
  8A46  BD DF 03  LDA $03DF,X                   ; 00A46 inferred, not run
  8A49  20 E2 E2  JSR $E2E2                     ; 00A49 inferred, not run
  8A4C  B9 53 8A  LDA $8A53,Y                   ; 00A4C inferred, not run

loc_B0_8A4F:                    ; from 00a1b
  8A4F  9D D0 03  STA $03D0,X                   ; 00A4F ×1

loc_B0_8A52:                    ; from 00a63 00a82
  8A52  60        RTS                           ; 00A52 ×7361
  8A53  .byte 09 09 0A 0A A9 02                                 ; 00A53

sub_B0_8A59:                    ; from 0489f 0330b
  8A59  85 DE     STA $DE                       ; 00A59 ×7367
  8A5B  A0 01     LDY #$01                      ; 00A5B ×7367
  8A5D  18        CLC                           ; 00A5D ×7367
  8A5E  A9 03     LDA #$03                      ; 00A5E ×7367
  8A60  20 FB 8A  JSR sub_B0_8AFB               ; 00A60 ×7367
  8A63  30 ED     BMI loc_B0_8A52               ; 00A63 ×7367
  8A65  A5 10     LDA $10                       ; 00A65 ×160
  8A67  49 0B     EOR #$0B                      ; 00A67 ×160
  8A69  D0 05     BNE loc_B0_8A70               ; 00A69 ×160
  8A6B  99 FC 04  STA $04FC,Y                   ; 00A6B ×2
  8A6E  F0 03     BEQ loc_B0_8A73               ; 00A6E ×2

loc_B0_8A70:                    ; from 00a69
  8A70  B9 FC 04  LDA $04FC,Y                   ; 00A70 ×158

loc_B0_8A73:                    ; from 00a6e
  8A73  19 47 05  ORA $0547,Y                   ; 00A73 ×160
  8A76  19 38 05  ORA $0538,Y                   ; 00A76 ×160
  8A79  19 29 05  ORA $0529,Y                   ; 00A79 ×160
  8A7C  1D 75 04  ORA $0475,X                   ; 00A7C ×160
  8A7F  1D 74 05  ORA $0574,X                   ; 00A7F ×160
  8A82  D0 CE     BNE loc_B0_8A52               ; 00A82 ×160
  8A84  8A        TXA                           ; 00A84 ×7
  8A85  18        CLC                           ; 00A85 ×7
  8A86  69 41     ADC #$41                      ; 00A86 ×7
  8A88  99 38 05  STA $0538,Y                   ; 00A88 ×7
  8A8B  98        TYA                           ; 00A8B ×7
  8A8C  69 41     ADC #$41                      ; 00A8C ×7
  8A8E  9D 29 05  STA $0529,X                   ; 00A8E ×7
  8A91  4C 99 9E  JMP sub_B0_9E99               ; 00A91 ×7

sub_B0_8A94:                    ; from 00c1d 07b7f 00b89
  8A94  A4 DE     LDY $DE                       ; 00A94 ×13216
  8A96  B9 D9 8A  LDA $8AD9,Y                   ; 00A96 ×13216
  8A99  7D 39 04  ADC $0439,X                   ; 00A99 ×13216
  8A9C  85 DF     STA $DF                       ; 00A9C ×13216
  8A9E  BD 2A 04  LDA $042A,X                   ; 00A9E ×13216
  8AA1  69 00     ADC #$00                      ; 00AA1 ×13216
  8AA3  85 E0     STA $E0                       ; 00AA3 ×13216
  8AA5  B9 E8 8A  LDA $8AE8,Y                   ; 00AA5 ×13216
  8AA8  85 E1     STA $E1                       ; 00AA8 ×13216
  8AAA  A4 21     LDY $21                       ; 00AAA ×13216
  8AAC  B9 B1 04  LDA $04B1,Y                   ; 00AAC ×13216
  8AAF  29 40     AND #$40                      ; 00AAF ×13216
  8AB1  C9 40     CMP #$40                      ; 00AB1 ×13216
  8AB3  A9 1C     LDA #$1C                      ; 00AB3 ×13216
  8AB5  90 02     BCC loc_B0_8AB9               ; 00AB5 ×13216
  8AB7  A9 0E     LDA #$0E                      ; 00AB7 ×175

loc_B0_8AB9:                    ; from 00ab5
  8AB9  85 E2     STA $E2                       ; 00AB9 ×13216
  8ABB  A5 DF     LDA $DF                       ; 00ABB ×13216
  8ABD  38        SEC                           ; 00ABD ×13216
  8ABE  F9 39 04  SBC $0439,Y                   ; 00ABE ×13216
  8AC1  85 DF     STA $DF                       ; 00AC1 ×13216
  8AC3  A5 E0     LDA $E0                       ; 00AC3 ×13216
  8AC5  F9 2A 04  SBC $042A,Y                   ; 00AC5 ×13216
  8AC8  D0 05     BNE loc_B0_8ACF               ; 00AC8 ×13216
  8ACA  A5 E2     LDA $E2                       ; 00ACA ×11528
  8ACC  C5 DF     CMP $DF                       ; 00ACC ×11528
  8ACE  60        RTS                           ; 00ACE ×11528

loc_B0_8ACF:                    ; from 00ac8
  8ACF  C9 FF     CMP #$FF                      ; 00ACF ×1688
  8AD1  D0 05     BNE $8AD8                     ; 00AD1 ×1688
  8AD3  A5 DF     LDA $DF                       ; 00AD3 ×1688
  8AD5  18        CLC                           ; 00AD5 ×1688
  8AD6  65 E1     ADC $E1                       ; 00AD6 ×1688
  8AD8  60        RTS                           ; 00AD8 ×1688
  8AD9  .byte 10 00 00                                          ; 00AD9 data, read by 00a96
  8ADC  .byte 14                                                ; 00ADC
  8ADD  .byte 00                                                ; 00ADD data, read by 00a96
  8ADE  .byte 00 00 00                                          ; 00ADE
  8AE1  .byte 10                                                ; 00AE1 data, read by 00a96
  8AE2  .byte 07 00 00 00 00                                    ; 00AE2
  8AE7  .byte 00 14 10 20                                       ; 00AE7 data, read by 00a96 00aa5
  8AEB  .byte 18                                                ; 00AEB
  8AEC  .byte 04                                                ; 00AEC data, read by 00aa5
  8AED  .byte 00 00 00                                          ; 00AED
  8AF0  .byte 10                                                ; 00AF0 data, read by 00aa5
  8AF1  .byte 0C 0C 24 1A 18                                    ; 00AF1
  8AF6  .byte 30                                                ; 00AF6 data, read by 00aa5

sub_B0_8AF7:                    ; from 05c4d 025be 02512 02550 05dff 05db3 (+2)
  8AF7  A0 0E     LDY #$0E                      ; 00AF7 ×5981
  8AF9  E0 02     CPX #$02                      ; 00AF9 ×5981

sub_B0_8AFB:                    ; from 00a60 07742 017f4
  8AFB  85 1F     STA $1F                       ; 00AFB ×16358
  8AFD  A9 FF     LDA #$FF                      ; 00AFD ×16358
  8AFF  90 04     BCC loc_B0_8B05               ; 00AFF ×16358
  8B01  A0 00     LDY #$00                      ; 00B01 ×225
  8B03  A9 01     LDA #$01                      ; 00B03 ×225

loc_B0_8B05:                    ; from 00aff
  8B05  85 8E     STA $8E                       ; 00B05 ×16358

loc_B0_8B07:                    ; from 00b34
  8B07  84 21     STY $21                       ; 00B07 ×106303
  8B09  B9 C1 03  LDA $03C1,Y                   ; 00B09 ×106303
  8B0C  F0 1E     BEQ loc_B0_8B2C               ; 00B0C ×106303
  8B0E  B9 29 05  LDA $0529,Y                   ; 00B0E ×27136
  8B11  29 40     AND #$40                      ; 00B11 ×27136
  8B13  19 74 05  ORA $0574,Y                   ; 00B13 ×27136
  8B16  D0 14     BNE loc_B0_8B2C               ; 00B16 ×27136
  8B18  C4 82     CPY $82                       ; 00B18 ×26491
  8B1A  F0 10     BEQ loc_B0_8B2C               ; 00B1A ×26491
  8B1C  B9 C1 03  LDA $03C1,Y                   ; 00B1C ×21308
  8B1F  A8        TAY                           ; 00B1F ×21308
  8B20  B9 87 9D  LDA $9D87,Y                   ; 00B20 ×21308
  8B23  25 1F     AND $1F                       ; 00B23 ×21308
  8B25  F0 05     BEQ loc_B0_8B2C               ; 00B25 ×21308
  8B27  A4 21     LDY $21                       ; 00B27 ×14315
  8B29  4C 4B 8B  JMP loc_B0_8B4B               ; 00B29 ×14315

loc_B0_8B2C:                    ; from 00b0c 00cca 00b25 00b1a 00c13 00b16
  8B2C  A5 21     LDA $21                       ; 00B2C ×105488
  8B2E  18        CLC                           ; 00B2E ×105488
  8B2F  65 8E     ADC $8E                       ; 00B2F ×105488
  8B31  A8        TAY                           ; 00B31 ×105488
  8B32  C0 0F     CPY #$0F                      ; 00B32 ×105488
  8B34  90 D1     BCC loc_B0_8B07               ; 00B34 ×105488
  8B36  A9 80     LDA #$80                      ; 00B36 ×15543
  8B38  60        RTS                           ; 00B38 ×15543
  8B39  98        TYA                           ; 00B39 ×0
  8B3A  48        PHA                           ; 00B3A ×0
  8B3B  A2 0F     LDX #$0F                      ; 00B3B ×0
  8B3D  A9 85     LDA #$85                      ; 00B3D ×0
  8B3F  20 4A 91  JSR sub_B0_914A               ; 00B3F ×0
  8B42  68        PLA                           ; 00B42 ×0
  8B43  A8        TAY                           ; 00B43 ×0
  8B44  60        RTS                           ; 00B44 ×0
  8B45  4C A6 8C  JMP $8CA6                     ; 00B45 inferred, not run

loc_B0_8B48:                    ; from 00b55
  8B48  4C CD 8C  JMP loc_B0_8CCD               ; 00B48 ×434

loc_B0_8B4B:                    ; from 00b29
  8B4B  85 20     STA $20                       ; 00B4B ×14315
  8B4D  29 08     AND #$08                      ; 00B4D ×14315
  8B4F  D0 F4     BNE $8B45                     ; 00B4F ×14315
  8B51  A5 20     LDA $20                       ; 00B51 ×14315
  8B53  29 04     AND #$04                      ; 00B53 ×14315
  8B55  D0 F1     BNE loc_B0_8B48               ; 00B55 ×14315
  8B57  A5 20     LDA $20                       ; 00B57 ×13881
  8B59  29 40     AND #$40                      ; 00B59 ×13881
  8B5B  F0 7F     BEQ loc_B0_8BDC               ; 00B5B ×13881
  8B5D  BD FC 04  LDA $04FC,X                   ; 00B5D ×0
  8B60  C9 24     CMP #$24                      ; 00B60 ×0
  8B62  F0 78     BEQ loc_B0_8BDC               ; 00B62 ×0
  8B64  A5 DE     LDA $DE                       ; 00B64 ×0
  8B66  C9 08     CMP #$08                      ; 00B66 ×0
  8B68  90 18     BCC $8B82                     ; 00B68 ×0
  8B6A  A9 0A     LDA #$0A                      ; 00B6A ×0
  8B6C  85 DE     STA $DE                       ; 00B6C ×0
  8B6E  B9 C1 03  LDA $03C1,Y                   ; 00B6E ×0
  8B71  C9 3F     CMP #$3F                      ; 00B71 ×0
  8B73  F0 04     BEQ $8B79                     ; 00B73 ×0
  8B75  C9 3C     CMP #$3C                      ; 00B75 ×0
  8B77  D0 02     BNE $8B7B                     ; 00B77 ×0
  8B79  E6 DE     INC $DE                       ; 00B79 ×0
  8B7B  A9 03     LDA #$03                      ; 00B7B ×0
  8B7D  85 20     STA $20                       ; 00B7D ×0
  8B7F  4C 1D 8C  JMP $8C1D                     ; 00B7F ×0
  8B82  A9 10     LDA #$10                      ; 00B82 ×0
  8B84  20 39 8D  JSR sub_B0_8D39               ; 00B84 ×0
  8B87  D0 A3     BNE loc_B0_8B2C               ; 00B87 ×0
  8B89  20 94 8A  JSR sub_B0_8A94               ; 00B89 ×0
  8B8C  90 9E     BCC loc_B0_8B2C               ; 00B8C ×0
  8B8E  A9 3A     LDA #$3A                      ; 00B8E ×0
  8B90  20 01 8D  JSR sub_B0_8D01               ; 00B90 ×0
  8B93  D0 97     BNE loc_B0_8B2C               ; 00B93 ×0
  8B95  A5 1B     LDA $1B                       ; 00B95 ×0
  8B97  5D 56 05  EOR $0556,X                   ; 00B97 ×0
  8B9A  10 90     BPL loc_B0_8B2C               ; 00B9A ×0
  8B9C  A5 20     LDA $20                       ; 00B9C ×0
  8B9E  29 03     AND #$03                      ; 00B9E ×0
  8BA0  D0 16     BNE $8BB8                     ; 00BA0 ×0
  8BA2  A9 04     LDA #$04                      ; 00BA2 ×0
  8BA4  99 C1 03  STA $03C1,Y                   ; 00BA4 ×0
  8BA7  99 ED 04  STA $04ED,Y                   ; 00BA7 ×0
  8BAA  A9 00     LDA #$00                      ; 00BAA ×0
  8BAC  99 DE 04  STA $04DE,Y                   ; 00BAC ×0
  8BAF  99 75 04  STA $0475,Y                   ; 00BAF ×0
  8BB2  99 0B 05  STA $050B,Y                   ; 00BB2 ×0
  8BB5  4C 39 8B  JMP $8B39                     ; 00BB5 ×0
  8BB8  B9 B1 04  LDA $04B1,Y                   ; 00BB8 ×0
  8BBB  1D 38 05  ORA $0538,X                   ; 00BBB ×0
  8BBE  29 40     AND #$40                      ; 00BBE ×0
  8BC0  D0 14     BNE $8BD6                     ; 00BC0 ×0
  8BC2  A5 10     LDA $10                       ; 00BC2 ×0
  8BC4  C9 02     CMP #$02                      ; 00BC4 ×0
  8BC6  F0 0E     BEQ $8BD6                     ; 00BC6 ×0
  8BC8  BD FC 04  LDA $04FC,X                   ; 00BC8 ×0
  8BCB  C9 1A     CMP #$1A                      ; 00BCB ×0
  8BCD  D0 0D     BNE loc_B0_8BDC               ; 00BCD ×0
  8BCF  A5 22     LDA $22                       ; 00BCF ×0
  8BD1  18        CLC                           ; 00BD1 ×0
  8BD2  69 10     ADC #$10                      ; 00BD2 ×0
  8BD4  85 22     STA $22                       ; 00BD4 ×0
  8BD6  A9 00     LDA #$00                      ; 00BD6 ×0
  8BD8  60        RTS                           ; 00BD8 ×0
  8BD9  4C 22 8C  JMP $8C22                     ; 00BD9 inferred, not run

loc_B0_8BDC:                    ; from 00b5b
  8BDC  B9 C1 03  LDA $03C1,Y                   ; 00BDC ×13881
  8BDF  C9 15     CMP #$15                      ; 00BDF ×13881
  8BE1  F0 F6     BEQ $8BD9                     ; 00BE1 ×13881
  8BE3  BD C1 03  LDA $03C1,X                   ; 00BE3 ×13881
  8BE6  C9 15     CMP #$15                      ; 00BE6 ×13881
  8BE8  F0 04     BEQ $8BEE                     ; 00BE8 ×13881
  8BEA  C9 10     CMP #$10                      ; 00BEA ×13881
  8BEC  D0 28     BNE loc_B0_8C16               ; 00BEC ×13881
  8BEE  BD 84 04  LDA $0484,X                   ; 00BEE inferred, not run
  8BF1  F9 84 04  SBC $0484,Y                   ; 00BF1 inferred, not run
  8BF4  69 18     ADC #$18                      ; 00BF4 inferred, not run
  8BF6  C9 30     CMP #$30                      ; 00BF6 inferred, not run
  8BF8  B0 19     BCS loc_B0_8C13               ; 00BF8 inferred, not run
  8BFA  B9 93 04  LDA $0493,Y                   ; 00BFA inferred, not run
  8BFD  F9 75 04  SBC $0475,Y                   ; 00BFD inferred, not run
  8C00  85 15     STA $15                       ; 00C00 inferred, not run
  8C02  BD 93 04  LDA $0493,X                   ; 00C02 inferred, not run
  8C05  FD 75 04  SBC $0475,X                   ; 00C05 inferred, not run
  8C08  E5 15     SBC $15                       ; 00C08 inferred, not run
  8C0A  69 20     ADC #$20                      ; 00C0A inferred, not run
  8C0C  C9 40     CMP #$40                      ; 00C0C inferred, not run
  8C0E  B0 03     BCS loc_B0_8C13               ; 00C0E inferred, not run
  8C10  A9 00     LDA #$00                      ; 00C10 inferred, not run
  8C12  60        RTS                           ; 00C12 inferred, not run

loc_B0_8C13:                    ; from 00c20 00c1b
  8C13  4C 2C 8B  JMP loc_B0_8B2C               ; 00C13 ×4702

loc_B0_8C16:                    ; from 00bec
  8C16  A9 08     LDA #$08                      ; 00C16 ×13881
  8C18  20 39 8D  JSR sub_B0_8D39               ; 00C18 ×13881
  8C1B  D0 F6     BNE loc_B0_8C13               ; 00C1B ×13881
  8C1D  20 94 8A  JSR sub_B0_8A94               ; 00C1D ×13101
  8C20  90 F1     BCC loc_B0_8C13               ; 00C20 ×13101
  8C22  BD 65 05  LDA $0565,X                   ; 00C22 ×9179
  8C25  C9 FF     CMP #$FF                      ; 00C25 ×9179
  8C27  A9 18     LDA #$18                      ; 00C27 ×9179
  8C29  B0 2C     BCS $8C57                     ; 00C29 ×9179
  8C2B  84 1C     STY $1C                       ; 00C2B ×9179
  8C2D  BC C1 03  LDY $03C1,X                   ; 00C2D ×9179
  8C30  B9 8A 9C  LDA $9C8A,Y                   ; 00C30 ×9179
  8C33  85 1B     STA $1B                       ; 00C33 ×9179
  8C35  A4 1C     LDY $1C                       ; 00C35 ×9179
  8C37  B9 C1 03  LDA $03C1,Y                   ; 00C37 ×9179
  8C3A  C0 02     CPY #$02                      ; 00C3A ×9179
  8C3C  B0 10     BCS loc_B0_8C4E               ; 00C3C ×9179
  8C3E  E0 02     CPX #$02                      ; 00C3E ×7104
  8C40  90 0C     BCC loc_B0_8C4E               ; 00C40 ×7104
  8C42  B9 FC 04  LDA $04FC,Y                   ; 00C42 ×7104
  8C45  C9 01     CMP #$01                      ; 00C45 ×7104
  8C47  A9 0C     LDA #$0C                      ; 00C47 ×7104
  8C49  90 07     BCC loc_B0_8C52               ; 00C49 ×7104
  8C4B  B9 C1 03  LDA $03C1,Y                   ; 00C4B ×4131

loc_B0_8C4E:                    ; from 00c3c
  8C4E  A8        TAY                           ; 00C4E ×6206
  8C4F  B9 8A 9C  LDA $9C8A,Y                   ; 00C4F ×6206

loc_B0_8C52:                    ; from 00c49
  8C52  18        CLC                           ; 00C52 ×9179
  8C53  65 1B     ADC $1B                       ; 00C53 ×9179
  8C55  A4 1C     LDY $1C                       ; 00C55 ×9179
  8C57  20 01 8D  JSR sub_B0_8D01               ; 00C57 ×9179
  8C5A  D0 6E     BNE loc_B0_8CCA               ; 00C5A ×9179
  8C5C  BD FC 04  LDA $04FC,X                   ; 00C5C ×1026
  8C5F  C9 5E     CMP #$5E                      ; 00C5F ×1026
  8C61  F0 40     BEQ loc_B0_8CA3               ; 00C61 ×1026
  8C63  A5 1B     LDA $1B                       ; 00C63 ×868
  8C65  69 08     ADC #$08                      ; 00C65 ×868
  8C67  C9 10     CMP #$10                      ; 00C67 ×868
  8C69  90 07     BCC loc_B0_8C72               ; 00C69 ×868
  8C6B  A5 1B     LDA $1B                       ; 00C6B ×785
  8C6D  5D 56 05  EOR $0556,X                   ; 00C6D ×785
  8C70  10 58     BPL loc_B0_8CCA               ; 00C70 ×785

loc_B0_8C72:                    ; from 00c69
  8C72  A5 1B     LDA $1B                       ; 00C72 ×648
  8C74  69 12     ADC #$12                      ; 00C74 ×648
  8C76  C9 24     CMP #$24                      ; 00C76 ×648
  8C78  B0 1A     BCS loc_B0_8C94               ; 00C78 ×648
  8C7A  A5 20     LDA $20                       ; 00C7A ×200
  8C7C  29 02     AND #$02                      ; 00C7C ×200
  8C7E  F0 14     BEQ loc_B0_8C94               ; 00C7E ×200
  8C80  E0 02     CPX #$02                      ; 00C80 ×110
  8C82  B0 0D     BCS loc_B0_8C91               ; 00C82 ×110
  8C84  B9 38 05  LDA $0538,Y                   ; 00C84 ×28
  8C87  29 40     AND #$40                      ; 00C87 ×28
  8C89  19 29 05  ORA $0529,Y                   ; 00C89 ×28
  8C8C  1D 75 04  ORA $0475,X                   ; 00C8C ×28
  8C8F  D0 03     BNE loc_B0_8C94               ; 00C8F ×28

loc_B0_8C91:                    ; from 00c82
  8C91  A9 0A     LDA #$0A                      ; 00C91 ×106
  8C93  60        RTS                           ; 00C93 ×106

loc_B0_8C94:                    ; from 00c78 00c7e 00c8f
  8C94  A5 20     LDA $20                       ; 00C94 ×542
  8C96  6A        ROR A                         ; 00C96 ×542
  8C97  90 31     BCC loc_B0_8CCA               ; 00C97 ×542
  8C99  B9 C1 03  LDA $03C1,Y                   ; 00C99 ×541
  8C9C  C9 15     CMP #$15                      ; 00C9C ×541
  8C9E  D0 03     BNE loc_B0_8CA3               ; 00C9E ×541
  8CA0  4C FA 8B  JMP $8BFA                     ; 00CA0 inferred, not run

loc_B0_8CA3:                    ; from 00c9e 00c61
  8CA3  A9 00     LDA #$00                      ; 00CA3 ×699
  8CA5  60        RTS                           ; 00CA5 ×699
  8CA6  A9 20     LDA #$20                      ; 00CA6 inferred, not run
  8CA8  20 39 8D  JSR sub_B0_8D39               ; 00CA8 inferred, not run
  8CAB  D0 1D     BNE loc_B0_8CCA               ; 00CAB inferred, not run
  8CAD  A9 40     LDA #$40                      ; 00CAD inferred, not run
  8CAF  20 4D 8D  JSR sub_B0_8D4D               ; 00CAF inferred, not run
  8CB2  D0 16     BNE loc_B0_8CCA               ; 00CB2 inferred, not run
  8CB4  A9 70     LDA #$70                      ; 00CB4 inferred, not run
  8CB6  20 01 8D  JSR sub_B0_8D01               ; 00CB6 inferred, not run
  8CB9  D0 0F     BNE loc_B0_8CCA               ; 00CB9 inferred, not run
  8CBB  BD A2 04  LDA $04A2,X                   ; 00CBB inferred, not run
  8CBE  0A        ASL A                         ; 00CBE inferred, not run
  8CBF  45 1B     EOR $1B                       ; 00CBF inferred, not run
  8CC1  10 07     BPL loc_B0_8CCA               ; 00CC1 inferred, not run
  8CC3  98        TYA                           ; 00CC3 inferred, not run
  8CC4  9D B9 03  STA $03B9,X                   ; 00CC4 inferred, not run
  8CC7  A9 18     LDA #$18                      ; 00CC7 inferred, not run
  8CC9  60        RTS                           ; 00CC9 inferred, not run

loc_B0_8CCA:                    ; from 00c5a 00ce6 00c70 00cd8 00c97 00cdf
  8CCA  4C 2C 8B  JMP loc_B0_8B2C               ; 00CCA ×8798

loc_B0_8CCD:                    ; from 00b48
  8CCD  A9 0C     LDA #$0C                      ; 00CCD ×434
  8CCF  20 39 8D  JSR sub_B0_8D39               ; 00CCF ×434
  8CD2  1D 75 04  ORA $0475,X                   ; 00CD2 ×434
  8CD5  19 29 05  ORA $0529,Y                   ; 00CD5 ×434
  8CD8  D0 F0     BNE loc_B0_8CCA               ; 00CD8 ×434
  8CDA  A9 18     LDA #$18                      ; 00CDA ×290
  8CDC  20 4D 8D  JSR sub_B0_8D4D               ; 00CDC ×290
  8CDF  D0 E9     BNE loc_B0_8CCA               ; 00CDF ×290
  8CE1  A9 18     LDA #$18                      ; 00CE1 ×289
  8CE3  20 01 8D  JSR sub_B0_8D01               ; 00CE3 ×289
  8CE6  D0 E2     BNE loc_B0_8CCA               ; 00CE6 ×289
  8CE8  9D 65 05  STA $0565,X                   ; 00CE8 ×10
  8CEB  B9 C1 03  LDA $03C1,Y                   ; 00CEB ×10
  8CEE  C9 3B     CMP #$3B                      ; 00CEE ×10
  8CF0  D0 03     BNE loc_B0_8CF5               ; 00CF0 ×10
  8CF2  A9 5A     LDA #$5A                      ; 00CF2 inferred, not run
  8CF4  60        RTS                           ; 00CF4 inferred, not run

loc_B0_8CF5:                    ; from 00cf0
  8CF5  A5 1B     LDA $1B                       ; 00CF5 ×10
  8CF7  29 80     AND #$80                      ; 00CF7 ×10
  8CF9  49 80     EOR #$80                      ; 00CF9 ×10
  8CFB  9D 56 05  STA $0556,X                   ; 00CFB ×10
  8CFE  A9 08     LDA #$08                      ; 00CFE ×10
  8D00  60        RTS                           ; 00D00 ×10

sub_B0_8D01:                    ; from 00c57 04553 06ef2 04582 07a3d 07b60 (+11)
  8D01  85 1C     STA $1C                       ; 00D01 ×26094
  8D03  BD FD 03  LDA $03FD,X                   ; 00D03 ×26094
  8D06  38        SEC                           ; 00D06 ×26094
  8D07  F9 FD 03  SBC $03FD,Y                   ; 00D07 ×26094
  8D0A  85 1B     STA $1B                       ; 00D0A ×26094
  8D0C  BD EE 03  LDA $03EE,X                   ; 00D0C ×26094
  8D0F  F9 EE 03  SBC $03EE,Y                   ; 00D0F ×26094

loc_B0_8D12:                    ; from 00d4a 00d34
  8D12  85 8F     STA $8F                       ; 00D12 ×43812
  8D14  D0 07     BNE loc_B0_8D1D               ; 00D14 ×43812
  8D16  A5 1C     LDA $1C                       ; 00D16 ×27451
  8D18  C5 1B     CMP $1B                       ; 00D18 ×27451
  8D1A  4C 25 8D  JMP loc_B0_8D25               ; 00D1A ×27451

loc_B0_8D1D:                    ; from 00d14
  8D1D  C9 FF     CMP #$FF                      ; 00D1D ×16361
  8D1F  D0 09     BNE loc_B0_8D2A               ; 00D1F ×16361

loc_B0_8D21:                    ; from 00d36
  8D21  A5 1B     LDA $1B                       ; 00D21 ×15967
  8D23  65 1C     ADC $1C                       ; 00D23 ×15967

loc_B0_8D25:                    ; from 00d1a
  8D25  90 02     BCC loc_B0_8D29               ; 00D25 ×43418
  8D27  A9 00     LDA #$00                      ; 00D27 ×18128

loc_B0_8D29:                    ; from 00d25 00d2e
  8D29  60        RTS                           ; 00D29 ×43724

loc_B0_8D2A:                    ; from 00d1f
  8D2A  A5 10     LDA $10                       ; 00D2A ×409
  8D2C  C9 05     CMP #$05                      ; 00D2C ×409
  8D2E  D0 F9     BNE loc_B0_8D29               ; 00D2E ×409
  8D30  A5 8F     LDA $8F                       ; 00D30 ×103
  8D32  29 01     AND #$01                      ; 00D32 ×103
  8D34  F0 DC     BEQ loc_B0_8D12               ; 00D34 ×103
  8D36  D0 E9     BNE loc_B0_8D21               ; 00D36 ×15
  8D38  60        RTS                           ; 00D38 inferred, not run

sub_B0_8D39:                    ; from 00c18 0457b 00ccf 06d60 05770 04a39 (+2)
  8D39  85 1C     STA $1C                       ; 00D39 ×17630
  8D3B  BD 1B 04  LDA $041B,X                   ; 00D3B ×17630
  8D3E  38        SEC                           ; 00D3E ×17630
  8D3F  F9 1B 04  SBC $041B,Y                   ; 00D3F ×17630
  8D42  85 1B     STA $1B                       ; 00D42 ×17630
  8D44  BD 0C 04  LDA $040C,X                   ; 00D44 ×17630
  8D47  F9 0C 04  SBC $040C,Y                   ; 00D47 ×17630
  8D4A  4C 12 8D  JMP loc_B0_8D12               ; 00D4A ×17630

sub_B0_8D4D:                    ; from 00cdc 05150 06ef9 04589 018cf 07c61
  8D4D  85 1C     STA $1C                       ; 00D4D ×490
  8D4F  BD 39 04  LDA $0439,X                   ; 00D4F ×490
  8D52  38        SEC                           ; 00D52 ×490
  8D53  F9 39 04  SBC $0439,Y                   ; 00D53 ×490
  8D56  85 1B     STA $1B                       ; 00D56 ×490
  8D58  BD 2A 04  LDA $042A,X                   ; 00D58 ×490
  8D5B  F9 2A 04  SBC $042A,Y                   ; 00D5B ×490
  8D5E  85 8D     STA $8D                       ; 00D5E ×490
  8D60  85 8F     STA $8F                       ; 00D60 ×490
  8D62  D0 07     BNE loc_B0_8D6B               ; 00D62 ×490
  8D64  A5 1C     LDA $1C                       ; 00D64 ×289
  8D66  C5 1B     CMP $1B                       ; 00D66 ×289
  8D68  4C 73 8D  JMP loc_B0_8D73               ; 00D68 ×289

loc_B0_8D6B:                    ; from 00d62
  8D6B  C9 FF     CMP #$FF                      ; 00D6B ×201
  8D6D  D0 08     BNE loc_B0_8D77               ; 00D6D ×201
  8D6F  A5 1B     LDA $1B                       ; 00D6F ×143
  8D71  65 1C     ADC $1C                       ; 00D71 ×143

loc_B0_8D73:                    ; from 00d68
  8D73  90 02     BCC loc_B0_8D77               ; 00D73 ×432
  8D75  A9 00     LDA #$00                      ; 00D75 ×290

loc_B0_8D77:                    ; from 00d73 00d6d
  8D77  60        RTS                           ; 00D77 ×490

sub_B0_8D78:                    ; from 00683 06707 065c7 06662 0655d 0556c (+4)
  8D78  A2 01     LDX #$01                      ; 00D78 ×262940
  8D7A  8E 16 40  STX $4016                     ; 00D7A ×262940
  8D7D  CA        DEX                           ; 00D7D ×262940
  8D7E  8E 16 40  STX $4016                     ; 00D7E ×262940
  8D81  A2 08     LDX #$08                      ; 00D81 ×262940

loc_B0_8D83:                    ; from 00d90
  8D83  AD 16 40  LDA $4016                     ; 00D83 ×2103520
  8D86  6A        ROR A                         ; 00D86 ×2103520
  8D87  26 15     ROL $15                       ; 00D87 ×2103520
  8D89  AD 17 40  LDA $4017                     ; 00D89 ×2103520
  8D8C  6A        ROR A                         ; 00D8C ×2103520
  8D8D  26 16     ROL $16                       ; 00D8D ×2103520
  8D8F  CA        DEX                           ; 00D8F ×2103520
  8D90  D0 F1     BNE loc_B0_8D83               ; 00D90 ×2103520
  8D92  A5 15     LDA $15                       ; 00D92 ×262940
  8D94  AA        TAX                           ; 00D94 ×262940
  8D95  45 29     EOR $29                       ; 00D95 ×262940
  8D97  86 29     STX $29                       ; 00D97 ×262940
  8D99  25 15     AND $15                       ; 00D99 ×262940
  8D9B  85 2B     STA $2B                       ; 00D9B ×262940
  8D9D  A5 16     LDA $16                       ; 00D9D ×262940
  8D9F  AA        TAX                           ; 00D9F ×262940
  8DA0  45 2A     EOR $2A                       ; 00DA0 ×262940
  8DA2  86 2A     STX $2A                       ; 00DA2 ×262940
  8DA4  25 16     AND $16                       ; 00DA4 ×262940
  8DA6  85 2C     STA $2C                       ; 00DA6 ×262940
  8DA8  60        RTS                           ; 00DA8 ×262940
  8DA9  .byte FF 00 10 20                                       ; 00DA9 data, read by 00e2d 00e33 00e23 00e1e
  8DAD  .byte FD 00 0C 00                                       ; 00DAD
  8DB1  .byte 00 80 20 40                                       ; 00DB1 data, read by 00e2d 00e33 00e23 00e1e
  8DB5  A9 01     LDA #$01                      ; 00DB5 inferred, not run
  8DB7  85 EB     STA $EB                       ; 00DB7 inferred, not run
  8DB9  60        RTS                           ; 00DB9 inferred, not run

loc_B0_8DBA:                    ; from 0000c
  8DBA  A5 39     LDA $39                       ; 00DBA ×22126
  8DBC  A2 02     LDX #$02                      ; 00DBC ×22126
  8DBE  4C 7A 8E  JMP sub_B0_8E7A               ; 00DBE ×22126

sub_B0_8DC1:                    ; from 02b20
  8DC1  A4 10     LDY $10                       ; 00DC1 ×46101
  8DC3  C0 02     CPY #$02                      ; 00DC3 ×46101
  8DC5  D0 7B     BNE loc_B0_8E42               ; 00DC5 ×46101
  8DC7  BC 83 05  LDY $0583,X                   ; 00DC7 ×507
  8DCA  F0 03     BEQ sub_B0_8DCF               ; 00DCA ×507
  8DCC  4C 52 8E  JMP sub_B0_8E52               ; 00DCC ×153

sub_B0_8DCF:                    ; from 00dca 02142
  8DCF  B5 29     LDA $29,X                     ; 00DCF ×354
  8DD1  29 0C     AND #$0C                      ; 00DD1 ×354
  8DD3  85 15     STA $15                       ; 00DD3 ×354
  8DD5  BD 1B 04  LDA $041B,X                   ; 00DD5 ×354
  8DD8  38        SEC                           ; 00DD8 ×354
  8DD9  FD 39 04  SBC $0439,X                   ; 00DD9 ×354
  8DDC  38        SEC                           ; 00DDC ×354
  8DDD  E5 89     SBC $89                       ; 00DDD ×354
  8DDF  18        CLC                           ; 00DDF ×354
  8DE0  7D B7 03  ADC $03B7,X                   ; 00DE0 ×354
  8DE3  A8        TAY                           ; 00DE3 ×354
  8DE4  A5 EB     LDA $EB                       ; 00DE4 ×354
  8DE6  F0 0E     BEQ loc_B0_8DF6               ; 00DE6 ×354
  8DE8  C0 FD     CPY #$FD                      ; 00DE8 inferred, not run
  8DEA  A0 00     LDY #$00                      ; 00DEA inferred, not run
  8DEC  90 2B     BCC loc_B0_8E19               ; 00DEC inferred, not run
  8DEE  FE 39 04  INC $0439,X                   ; 00DEE inferred, not run
  8DF1  A5 EB     LDA $EB                       ; 00DF1 inferred, not run
  8DF3  10 C0     BPL $8DB5                     ; 00DF3 inferred, not run
  8DF5  60        RTS                           ; 00DF5 inferred, not run

loc_B0_8DF6:                    ; from 00de6
  8DF6  A5 15     LDA $15                       ; 00DF6 ×354
  8DF8  C0 E0     CPY #$E0                      ; 00DF8 ×354
  8DFA  90 0C     BCC loc_B0_8E08               ; 00DFA ×354
  8DFC  A9 00     LDA #$00                      ; 00DFC ×2
  8DFE  9D CF 04  STA $04CF,X                   ; 00DFE ×2
  8E01  A9 01     LDA #$01                      ; 00E01 ×2
  8E03  9D C0 04  STA $04C0,X                   ; 00E03 ×2
  8E06  D0 4A     BNE sub_B0_8E52               ; 00E06 ×2

loc_B0_8E08:                    ; from 00dfa
  8E08  C0 44     CPY #$44                      ; 00E08 ×352
  8E0A  90 46     BCC sub_B0_8E52               ; 00E0A ×352
  8E0C  A8        TAY                           ; 00E0C ×340
  8E0D  C9 08     CMP #$08                      ; 00E0D ×340
  8E0F  F0 08     BEQ loc_B0_8E19               ; 00E0F ×340
  8E11  C9 04     CMP #$04                      ; 00E11 ×190
  8E13  F0 3D     BEQ sub_B0_8E52               ; 00E13 ×190
  8E15  C9 00     CMP #$00                      ; 00E15 ×106
  8E17  D0 0A     BNE loc_B0_8E23               ; 00E17 ×106

loc_B0_8E19:                    ; from 00e0f
  8E19  BD C0 04  LDA $04C0,X                   ; 00E19 ×256
  8E1C  10 05     BPL loc_B0_8E23               ; 00E1C ×256
  8E1E  B9 AC 8D  LDA $8DAC,Y                   ; 00E1E ×66
  8E21  D0 57     BNE sub_B0_8E7A               ; 00E21 ×66

loc_B0_8E23:                    ; from 00e1c
  8E23  B9 AB 8D  LDA $8DAB,Y                   ; 00E23 ×190
  8E26  18        CLC                           ; 00E26 ×190
  8E27  7D DF 03  ADC $03DF,X                   ; 00E27 ×190
  8E2A  9D DF 03  STA $03DF,X                   ; 00E2A ×190
  8E2D  B9 A9 8D  LDA $8DA9,Y                   ; 00E2D ×190
  8E30  9D C0 04  STA $04C0,X                   ; 00E30 ×190
  8E33  B9 AA 8D  LDA $8DAA,Y                   ; 00E33 ×190
  8E36  9D CF 04  STA $04CF,X                   ; 00E36 ×190
  8E39  A9 00     LDA #$00                      ; 00E39 ×190
  8E3B  20 7A 8E  JSR sub_B0_8E7A               ; 00E3B ×190
  8E3E  FE C0 04  INC $04C0,X                   ; 00E3E ×190
  8E41  60        RTS                           ; 00E41 ×190

loc_B0_8E42:                    ; from 00dc5
  8E42  BC FC 04  LDY $04FC,X                   ; 00E42 ×45594
  8E45  D0 03     BNE loc_B0_8E4A               ; 00E45 ×45594
  8E47  2A        ROL A                         ; 00E47 ×3268
  8E48  B0 08     BCS sub_B0_8E52               ; 00E48 ×3268

loc_B0_8E4A:                    ; from 00e45
  8E4A  A9 B0     LDA #$B0                      ; 00E4A ×45493
  8E4C  85 15     STA $15                       ; 00E4C ×45493
  8E4E  A9 D8     LDA #$D8                      ; 00E4E ×45493
  8E50  D0 08     BNE loc_B0_8E5A               ; 00E50 ×45493

sub_B0_8E52:                    ; from 02fc7 015a5 044a2 06cc5 00dcc 0443f (+7)
  8E52  A9 D8     LDA #$D8                      ; 00E52 ×9733
  8E54  85 15     STA $15                       ; 00E54 ×9733
  8E56  A4 10     LDY $10                       ; 00E56 ×9733
  8E58  A9 F9     LDA #$F9                      ; 00E58 ×9733

loc_B0_8E5A:                    ; from 00e50
  8E5A  A4 10     LDY $10                       ; 00E5A ×55226
  8E5C  C0 06     CPY #$06                      ; 00E5C ×55226
  8E5E  F0 08     BEQ loc_B0_8E68               ; 00E5E ×55226
  8E60  C0 0C     CPY #$0C                      ; 00E60 ×53834
  8E62  F0 04     BEQ loc_B0_8E68               ; 00E62 ×53834
  8E64  C0 03     CPY #$03                      ; 00E64 ×52947
  8E66  D0 14     BNE loc_B0_8E7C               ; 00E66 ×52947

loc_B0_8E68:                    ; from 00e5e 00e62
  8E68  BC 38 05  LDY $0538,X                   ; 00E68 ×7685
  8E6B  30 0F     BMI loc_B0_8E7C               ; 00E6B ×7685
  8E6D  C0 40     CPY #$40                      ; 00E6D ×7685
  8E6F  90 0B     BCC loc_B0_8E7C               ; 00E6F ×7685
  8E71  A9 E8     LDA #$E8                      ; 00E71 ×425
  8E73  BC BB 03  LDY $03BB,X                   ; 00E73 ×425
  8E76  10 02     BPL sub_B0_8E7A               ; 00E76 ×425
  8E78  A9 F9     LDA #$F9                      ; 00E78 inferred, not run

sub_B0_8E7A:                    ; from 00dbe 0623b 021a3 061ae 06da1 039b8 (+15)
  8E7A  85 15     STA $15                       ; 00E7A ×58822

loc_B0_8E7C:                    ; from 00e66 00e6f
  8E7C  BC C1 03  LDY $03C1,X                   ; 00E7C ×113623
  8E7F  B9 09 9D  LDA $9D09,Y                   ; 00E7F ×113623
  8E82  29 0F     AND #$0F                      ; 00E82 ×113623
  8E84  E0 02     CPX #$02                      ; 00E84 ×113623
  8E86  B0 20     BCS loc_B0_8EA8               ; 00E86 ×113623
  8E88  BC 74 05  LDY $0574,X                   ; 00E88 ×56079
  8E8B  30 1B     BMI loc_B0_8EA8               ; 00E8B ×56079
  8E8D  BC 29 05  LDY $0529,X                   ; 00E8D ×55013
  8E90  30 16     BMI loc_B0_8EA8               ; 00E90 ×55013
  8E92  BC D0 05  LDY $05D0,X                   ; 00E92 ×55013
  8E95  F0 11     BEQ loc_B0_8EA8               ; 00E95 ×55013
  8E97  30 05     BMI $8E9E                     ; 00E97 inferred, not run
  8E99  BC C0 04  LDY $04C0,X                   ; 00E99 inferred, not run
  8E9C  10 0A     BPL loc_B0_8EA8               ; 00E9C inferred, not run
  8E9E  A5 15     LDA $15                       ; 00E9E inferred, not run
  8EA0  4A        LSR A                         ; 00EA0 inferred, not run
  8EA1  4A        LSR A                         ; 00EA1 inferred, not run
  8EA2  09 C0     ORA #$C0                      ; 00EA2 inferred, not run
  8EA4  85 15     STA $15                       ; 00EA4 inferred, not run
  8EA6  A9 02     LDA #$02                      ; 00EA6 inferred, not run

loc_B0_8EA8:                    ; from 00e86 00e95 02b07 00e8b
  8EA8  85 1F     STA $1F                       ; 00EA8 ×125241
  8EAA  BD 75 04  LDA $0475,X                   ; 00EAA ×125241
  8EAD  85 AF     STA $AF                       ; 00EAD ×125241
  8EAF  A5 15     LDA $15                       ; 00EAF ×125241
  8EB1  C9 80     CMP #$80                      ; 00EB1 ×125241
  8EB3  B0 15     BCS loc_B0_8ECA               ; 00EB3 ×125241
  8EB5  7D CF 04  ADC $04CF,X                   ; 00EB5 ×23803
  8EB8  9D CF 04  STA $04CF,X                   ; 00EB8 ×23803
  8EBB  90 27     BCC loc_B0_8EE4               ; 00EBB ×23803
  8EBD  BD C0 04  LDA $04C0,X                   ; 00EBD ×556
  8EC0  45 1F     EOR $1F                       ; 00EC0 ×556
  8EC2  F0 15     BEQ $8ED9                     ; 00EC2 ×556
  8EC4  FE C0 04  INC $04C0,X                   ; 00EC4 ×556
  8EC7  4C E1 8E  JMP loc_B0_8EE1               ; 00EC7 ×556

loc_B0_8ECA:                    ; from 00eb3
  8ECA  7D CF 04  ADC $04CF,X                   ; 00ECA ×101438
  8ECD  9D CF 04  STA $04CF,X                   ; 00ECD ×101438
  8ED0  B0 12     BCS loc_B0_8EE4               ; 00ED0 ×101438
  8ED2  A5 1F     LDA $1F                       ; 00ED2 ×43527
  8ED4  7D C0 04  ADC $04C0,X                   ; 00ED4 ×43527
  8ED7  D0 05     BNE loc_B0_8EDE               ; 00ED7 ×43527
  8ED9  9D CF 04  STA $04CF,X                   ; 00ED9 ×7710
  8EDC  F0 06     BEQ loc_B0_8EE4               ; 00EDC ×7710

loc_B0_8EDE:                    ; from 00ed7
  8EDE  DE C0 04  DEC $04C0,X                   ; 00EDE ×35817

loc_B0_8EE1:                    ; from 00ec7
  8EE1  BD CF 04  LDA $04CF,X                   ; 00EE1 ×36373

loc_B0_8EE4:                    ; from 00ed0 00ebb 00edc
  8EE4  18        CLC                           ; 00EE4 ×125241
  8EE5  7D 66 04  ADC $0466,X                   ; 00EE5 ×125241
  8EE8  9D 66 04  STA $0466,X                   ; 00EE8 ×125241
  8EEB  BD C0 04  LDA $04C0,X                   ; 00EEB ×125241

sub_B0_8EEE:                    ; from 0489a 048a5 074c2 05d6a 04497 02a22 (+7)
  8EEE  85 15     STA $15                       ; 00EEE ×137460
  8EF0  7D 39 04  ADC $0439,X                   ; 00EF0 ×137460
  8EF3  9D 39 04  STA $0439,X                   ; 00EF3 ×137460
  8EF6  08        PHP                           ; 00EF6 ×137460
  8EF7  A9 80     LDA #$80                      ; 00EF7 ×137460
  8EF9  C5 15     CMP $15                       ; 00EF9 ×137460
  8EFB  A9 00     LDA #$00                      ; 00EFB ×137460
  8EFD  E9 00     SBC #$00                      ; 00EFD ×137460
  8EFF  28        PLP                           ; 00EFF ×137460
  8F00  7D 2A 04  ADC $042A,X                   ; 00F00 ×137460
  8F03  9D 2A 04  STA $042A,X                   ; 00F03 ×137460
  8F06  10 41     BPL loc_B0_8F49               ; 00F06 ×137460
  8F08  C9 FF     CMP #$FF                      ; 00F08 ×598
  8F0A  D0 0F     BNE $8F1B                     ; 00F0A ×598
  8F0C  BD BF 03  LDA $03BF,X                   ; 00F0C ×598
  8F0F  2A        ROL A                         ; 00F0F ×598
  8F10  A9 D0     LDA #$D0                      ; 00F10 ×598
  8F12  90 02     BCC loc_B0_8F16               ; 00F12 ×598
  8F14  A9 A0     LDA #$A0                      ; 00F14 ×46

loc_B0_8F16:                    ; from 00f12
  8F16  DD 39 04  CMP $0439,X                   ; 00F16 ×598
  8F19  90 2E     BCC loc_B0_8F49               ; 00F19 ×598
  8F1B  BD 74 05  LDA $0574,X                   ; 00F1B ×34
  8F1E  29 80     AND #$80                      ; 00F1E ×34
  8F20  E0 02     CPX #$02                      ; 00F20 ×34
  8F22  B0 05     BCS loc_B0_8F29               ; 00F22 ×34
  8F24  1D B2 05  ORA $05B2,X                   ; 00F24 ×13
  8F27  05 E4     ORA $E4                       ; 00F27 ×13

loc_B0_8F29:                    ; from 00f22
  8F29  05 EB     ORA $EB                       ; 00F29 ×34
  8F2B  D0 17     BNE sub_B0_8F44               ; 00F2B ×34
  8F2D  A9 D0     LDA #$D0                      ; 00F2D ×18
  8F2F  9D 74 05  STA $0574,X                   ; 00F2F ×18
  8F32  A9 00     LDA #$00                      ; 00F32 ×18
  8F34  9D 1A 05  STA $051A,X                   ; 00F34 ×18
  8F37  E0 02     CPX #$02                      ; 00F37 ×18
  8F39  B0 09     BCS sub_B0_8F44               ; 00F39 ×18
  8F3B  E6 D0     INC $D0                       ; 00F3B ×12
  8F3D  86 92     STX $92                       ; 00F3D ×12
  8F3F  20 28 A0  JSR sub_B0_A028               ; 00F3F ×12
  8F42  A6 92     LDX $92                       ; 00F42 ×12

sub_B0_8F44:                    ; from 00f2b 00f39 02152
  8F44  A9 00     LDA #$00                      ; 00F44 ×35
  8F46  9D 47 05  STA $0547,X                   ; 00F46 ×35

loc_B0_8F49:                    ; from 00f06 00f19
  8F49  60        RTS                           ; 00F49 ×137461

loc_B0_8F4A:                    ; from 00021
  8F4A  A6 82     LDX $82                       ; 00F4A ×2013

sub_B0_8F4C:                    ; from 0290f 06226 04541 02fca 0145d 06da4 (+16)
  8F4C  BD 65 05  LDA $0565,X                   ; 00F4C ×98319

sub_B0_8F4F:                    ; from 0546f 028f5 05744
  8F4F  29 F0     AND #$F0                      ; 00F4F ×103070
  8F51  F0 43     BEQ loc_B0_8F96               ; 00F51 ×103070
  8F53  85 15     STA $15                       ; 00F53 ×56872
  8F55  BD 56 05  LDA $0556,X                   ; 00F55 ×56872
  8F58  4A        LSR A                         ; 00F58 ×56872
  8F59  4A        LSR A                         ; 00F59 ×56872
  8F5A  29 0F     AND #$0F                      ; 00F5A ×56872
  8F5C  85 17     STA $17                       ; 00F5C ×56872
  8F5E  F0 06     BEQ loc_B0_8F66               ; 00F5E ×56872
  8F60  05 15     ORA $15                       ; 00F60 ×4654
  8F62  A8        TAY                           ; 00F62 ×4654
  8F63  B9 39 90  LDA $9039,Y                   ; 00F63 ×4654

loc_B0_8F66:                    ; from 00f5e
  8F66  A8        TAY                           ; 00F66 ×56872
  8F67  29 07     AND #$07                      ; 00F67 ×56872
  8F69  85 21     STA $21                       ; 00F69 ×56872
  8F6B  98        TYA                           ; 00F6B ×56872
  8F6C  29 F8     AND #$F8                      ; 00F6C ×56872
  8F6E  85 22     STA $22                       ; 00F6E ×56872
  8F70  A5 17     LDA $17                       ; 00F70 ×56872
  8F72  49 0F     EOR #$0F                      ; 00F72 ×56872
  8F74  05 15     ORA $15                       ; 00F74 ×56872
  8F76  A8        TAY                           ; 00F76 ×56872
  8F77  B9 3A 90  LDA $903A,Y                   ; 00F77 ×56872
  8F7A  A8        TAY                           ; 00F7A ×56872
  8F7B  29 07     AND #$07                      ; 00F7B ×56872
  8F7D  85 1B     STA $1B                       ; 00F7D ×56872
  8F7F  98        TYA                           ; 00F7F ×56872
  8F80  29 F8     AND #$F8                      ; 00F80 ×56872
  8F82  85 1C     STA $1C                       ; 00F82 ×56872
  8F84  BD 56 05  LDA $0556,X                   ; 00F84 ×56872
  8F87  29 C0     AND #$C0                      ; 00F87 ×56872
  8F89  F0 65     BEQ loc_B0_8FF0               ; 00F89 ×56872
  8F8B  C9 C0     CMP #$C0                      ; 00F8B ×22156
  8F8D  F0 08     BEQ loc_B0_8F97               ; 00F8D ×22156
  8F8F  C9 80     CMP #$80                      ; 00F8F ×21206
  8F91  F0 31     BEQ loc_B0_8FC4               ; 00F91 ×21206
  8F93  4C 1D 90  JMP loc_B0_901D               ; 00F93 ×1472

loc_B0_8F96:                    ; from 00f51
  8F96  60        RTS                           ; 00F96 ×46198

loc_B0_8F97:                    ; from 00f8d
  8F97  BD 48 04  LDA $0448,X                   ; 00F97 ×950
  8F9A  18        CLC                           ; 00F9A ×950
  8F9B  65 22     ADC $22                       ; 00F9B ×950
  8F9D  9D 48 04  STA $0448,X                   ; 00F9D ×950
  8FA0  BD FD 03  LDA $03FD,X                   ; 00FA0 ×950
  8FA3  65 21     ADC $21                       ; 00FA3 ×950
  8FA5  9D FD 03  STA $03FD,X                   ; 00FA5 ×950
  8FA8  90 03     BCC loc_B0_8FAD               ; 00FA8 ×950
  8FAA  FE EE 03  INC $03EE,X                   ; 00FAA ×2

loc_B0_8FAD:                    ; from 00fa8
  8FAD  BD 57 04  LDA $0457,X                   ; 00FAD ×950
  8FB0  18        CLC                           ; 00FB0 ×950
  8FB1  65 1C     ADC $1C                       ; 00FB1 ×950
  8FB3  9D 57 04  STA $0457,X                   ; 00FB3 ×950
  8FB6  BD 1B 04  LDA $041B,X                   ; 00FB6 ×950
  8FB9  65 1B     ADC $1B                       ; 00FB9 ×950
  8FBB  9D 1B 04  STA $041B,X                   ; 00FBB ×950
  8FBE  90 03     BCC loc_B0_8FC3               ; 00FBE ×950
  8FC0  FE 0C 04  INC $040C,X                   ; 00FC0 ×1

loc_B0_8FC3:                    ; from 00fbe
  8FC3  60        RTS                           ; 00FC3 ×950

loc_B0_8FC4:                    ; from 00f91
  8FC4  BD 48 04  LDA $0448,X                   ; 00FC4 ×19734
  8FC7  E5 1C     SBC $1C                       ; 00FC7 ×19734
  8FC9  9D 48 04  STA $0448,X                   ; 00FC9 ×19734
  8FCC  BD FD 03  LDA $03FD,X                   ; 00FCC ×19734
  8FCF  E5 1B     SBC $1B                       ; 00FCF ×19734
  8FD1  9D FD 03  STA $03FD,X                   ; 00FD1 ×19734
  8FD4  B0 03     BCS loc_B0_8FD9               ; 00FD4 ×19734
  8FD6  DE EE 03  DEC $03EE,X                   ; 00FD6 ×57

loc_B0_8FD9:                    ; from 00fd4
  8FD9  BD 57 04  LDA $0457,X                   ; 00FD9 ×19734
  8FDC  18        CLC                           ; 00FDC ×19734
  8FDD  65 22     ADC $22                       ; 00FDD ×19734
  8FDF  9D 57 04  STA $0457,X                   ; 00FDF ×19734
  8FE2  BD 1B 04  LDA $041B,X                   ; 00FE2 ×19734
  8FE5  65 21     ADC $21                       ; 00FE5 ×19734
  8FE7  9D 1B 04  STA $041B,X                   ; 00FE7 ×19734
  8FEA  90 03     BCC loc_B0_8FEF               ; 00FEA ×19734
  8FEC  FE 0C 04  INC $040C,X                   ; 00FEC inferred, not run

loc_B0_8FEF:                    ; from 00fea
  8FEF  60        RTS                           ; 00FEF ×19734

loc_B0_8FF0:                    ; from 00f89
  8FF0  BD 48 04  LDA $0448,X                   ; 00FF0 ×34716
  8FF3  18        CLC                           ; 00FF3 ×34716
  8FF4  65 1C     ADC $1C                       ; 00FF4 ×34716
  8FF6  9D 48 04  STA $0448,X                   ; 00FF6 ×34716
  8FF9  BD FD 03  LDA $03FD,X                   ; 00FF9 ×34716
  8FFC  65 1B     ADC $1B                       ; 00FFC ×34716
  8FFE  9D FD 03  STA $03FD,X                   ; 00FFE ×34716
  9001  90 03     BCC loc_B0_9006               ; 01001 ×34716
  9003  FE EE 03  INC $03EE,X                   ; 01003 ×103

loc_B0_9006:                    ; from 01001
  9006  BD 57 04  LDA $0457,X                   ; 01006 ×34716
  9009  38        SEC                           ; 01009 ×34716
  900A  E5 22     SBC $22                       ; 0100A ×34716
  900C  9D 57 04  STA $0457,X                   ; 0100C ×34716
  900F  BD 1B 04  LDA $041B,X                   ; 0100F ×34716
  9012  E5 21     SBC $21                       ; 01012 ×34716
  9014  9D 1B 04  STA $041B,X                   ; 01014 ×34716
  9017  B0 03     BCS loc_B0_901C               ; 01017 ×34716
  9019  DE 0C 04  DEC $040C,X                   ; 01019 inferred, not run

loc_B0_901C:                    ; from 01017
  901C  60        RTS                           ; 0101C ×34716

loc_B0_901D:                    ; from 00f93
  901D  BD 48 04  LDA $0448,X                   ; 0101D ×1472
  9020  38        SEC                           ; 01020 ×1472
  9021  E5 22     SBC $22                       ; 01021 ×1472
  9023  9D 48 04  STA $0448,X                   ; 01023 ×1472
  9026  BD FD 03  LDA $03FD,X                   ; 01026 ×1472
  9029  E5 21     SBC $21                       ; 01029 ×1472
  902B  9D FD 03  STA $03FD,X                   ; 0102B ×1472
  902E  B0 04     BCS loc_B0_9034               ; 0102E ×1472
  9030  DE EE 03  DEC $03EE,X                   ; 01030 ×2
  9033  38        SEC                           ; 01033 ×2

loc_B0_9034:                    ; from 0102e
  9034  BD 57 04  LDA $0457,X                   ; 01034 ×1472
  9037  E5 1C     SBC $1C                       ; 01037 ×1472
  9039  9D 57 04  STA $0457,X                   ; 01039 ×1472
  903C  BD 1B 04  LDA $041B,X                   ; 0103C ×1472
  903F  E5 1B     SBC $1B                       ; 0103F ×1472
  9041  9D 1B 04  STA $041B,X                   ; 01041 ×1472
  9044  B0 03     BCS loc_B0_9049               ; 01044 ×1472
  9046  DE 0C 04  DEC $040C,X                   ; 01046 ×2

loc_B0_9049:                    ; from 01044
  9049  60        RTS                           ; 01049 ×1472
  904A  .byte 00 08 10 18 20 20 28 30 30 38 38 38 40 40 40 40   ; 0104A data, read by 00f63 00f77
  905A  .byte 08 18 28 30 40 48 50 60 68 70 78 78 80 80 80 88   ; 0105A data, read by 00f63 00f77
  906A  .byte 10 28 38 48 60 70 80 90 98 A8 B0 B8 C0 C8 C8 C8   ; 0106A data, read by 00f63 00f77
  907A  .byte 18 30 50 68 80 90 A8 C0 D0 E0 F0 F8 01 09 09 01   ; 0107A data, read by 00f77 00f63
  908A  .byte 20 40 60 80 A0 B8 D8 F0 09 19 29 39 41 49 51 51   ; 0108A data, read by 00f77 00f63
  909A  .byte 28 50 70 98 C0 E0 01 21 39 51 69 79 81 91 99 81   ; 0109A data, read by 00f77 00f63
  90AA  .byte 28 58 88 B0 E0 09 29 51 71 89 A1 B9 C9 D1 D9 D9   ; 010AA data, read by 00f77 00f63
  90BA  .byte 30 68 98 D0 01 31 59 81 A1 C1 E1 F9 02 02 02 02   ; 010BA data, read by 00f77 00f63
  90CA  .byte 38 78 B0 E8 21 51                                 ; 010CA
  90D0  .byte 81                                                ; 010D0 data, read by 00f63 00f77
  90D1  .byte B1                                                ; 010D1
  90D2  .byte D9                                                ; 010D2 data, read by 00f77 00f63
  90D3  .byte F9 1A 3A 4A 5A 62                                 ; 010D3
  90D9  .byte 62 40                                             ; 010D9 data, read by 00f77 00f63
  90DB  .byte 80                                                ; 010DB
  90DC  .byte C0                                                ; 010DC data, read by 00f63
  90DD  .byte 01                                                ; 010DD
  90DE  .byte 41                                                ; 010DE data, read by 00f63
  90DF  .byte 79                                                ; 010DF
  90E0  .byte B1                                                ; 010E0 data, read by 00f63 00f77
  90E1  .byte E1                                                ; 010E1
  90E2  .byte 12                                                ; 010E2 data, read by 00f77 00f63
  90E3  .byte 3A                                                ; 010E3
  90E4  .byte 5A                                                ; 010E4 data, read by 00f77
  90E5  .byte 72                                                ; 010E5
  90E6  .byte 8A                                                ; 010E6 data, read by 00f77
  90E7  .byte 9A                                                ; 010E7
  90E8  .byte AA AA                                             ; 010E8 data, read by 00f77 00f63
  90EA  .byte 48 90 D8 21 61 A1 D9 12 42 72 92 B2 CA E2 EA      ; 010EA
  90F9  .byte EA                                                ; 010F9 data, read by 00f77
  90FA  .byte 50 A0 E8 39 81 C1                                 ; 010FA
  9100  .byte 0A                                                ; 01100 data, read by 00f63
  9101  .byte 42                                                ; 01101
  9102  .byte 7A                                                ; 01102 data, read by 00f77
  9103  .byte AA D2 F2 13 23 33                                 ; 01103
  9109  .byte 03                                                ; 01109 data, read by 00f77
  910A  .byte 50 A8 01 51 A1 E9 32 72 AA E2 0B 33 53 63 73      ; 0110A
  9119  .byte 7B                                                ; 01119 data, read by 00f77
  911A  .byte 58 B8 11 69 C1 12 5A A2 E2 1B 4B 73 93 AB B3      ; 0111A
  9129  .byte BB                                                ; 01129 data, read by 00f77
  912A  .byte 60 C8 29 89 E1 3A 8A D2 1B 53 83 B3 D3 EB FB      ; 0112A
  9139  .byte 04                                                ; 01139 data, read by 00f77

jt_B0_913A:                    ; from 008ec
  913A  DE DE 04  DEC $04DE,X                   ; 0113A ×577
  913D  D0 4F     BNE loc_B0_918E               ; 0113D ×577
  913F  4C 80 D0  JMP sub_B0_D080               ; 0113F ×144
  9142  .byte A9 F8 85 F5 A9 62                                 ; 01142

sub_B0_9148:                    ; from 066ad 04879 066da 029fa 026f2 035d8 (+1)
  9148  A2 15     LDX #$15                      ; 01148 ×256

sub_B0_914A:                    ; from 037ff 04501 0360a 07a2e 07a83 00b3f (+1)
  914A  20 E1 84  JSR sub_B0_84E1               ; 0114A ×562
  914D  A6 82     LDX $82                       ; 0114D ×562
  914F  60        RTS                           ; 0114F ×562
  9150  .byte A9 01 85 D1 FE DE 04 BD DE 04 C9 FF F0 E1 C9 E0   ; 01150
  9160  .byte F0 7D C9 30 F0 04 C9 64 D0 07 20 42 91 A9 08 85   ; 01160
  9170  .byte DC 20 8F 91 BD DE 04 C9 50 90 13 A9 12 9D D0 03   ; 01170
  9180  .byte 20 52 8E 20 AD E4 BD 75 04 F0 03 DE FD 03         ; 01180

loc_B0_918E:                    ; from 0113d
  918E  60        RTS                           ; 0118E ×433
  918F  A2 01     LDX #$01                      ; 0118F inferred, not run
  9191  A4 82     LDY $82                       ; 01191 inferred, not run
  9193  A5 10     LDA $10                       ; 01193 inferred, not run
  9195  C9 05     CMP #$05                      ; 01195 inferred, not run
  9197  A9 2C     LDA #$2C                      ; 01197 inferred, not run
  9199  B0 0B     BCS $91A6                     ; 01199 inferred, not run
  919B  B9 DE 04  LDA $04DE,Y                   ; 0119B inferred, not run
  919E  C9 E0     CMP #$E0                      ; 0119E inferred, not run
  91A0  A9 2C     LDA #$2C                      ; 011A0 inferred, not run
  91A2  90 02     BCC $91A6                     ; 011A2 inferred, not run
  91A4  A9 2E     LDA #$2E                      ; 011A4 inferred, not run
  91A6  9D FC 04  STA $04FC,X                   ; 011A6 inferred, not run
  91A9  84 81     STY $81                       ; 011A9 inferred, not run
  91AB  86 82     STX $82                       ; 011AB inferred, not run
  91AD  20 FE 93  JSR sub_B0_93FE               ; 011AD inferred, not run
  91B0  A6 82     LDX $82                       ; 011B0 inferred, not run
  91B2  A4 81     LDY $81                       ; 011B2 inferred, not run
  91B4  84 82     STY $82                       ; 011B4 inferred, not run
  91B6  BD 38 05  LDA $0538,X                   ; 011B6 inferred, not run
  91B9  F0 16     BEQ $91D1                     ; 011B9 inferred, not run
  91BB  29 1F     AND #$1F                      ; 011BB inferred, not run
  91BD  A8        TAY                           ; 011BD inferred, not run
  91BE  88        DEY                           ; 011BE inferred, not run
  91BF  A9 40     LDA #$40                      ; 011BF inferred, not run
  91C1  99 65 05  STA $0565,Y                   ; 011C1 inferred, not run
  91C4  A9 02     LDA #$02                      ; 011C4 inferred, not run
  91C6  99 C0 04  STA $04C0,Y                   ; 011C6 inferred, not run
  91C9  A9 00     LDA #$00                      ; 011C9 inferred, not run
  91CB  99 29 05  STA $0529,Y                   ; 011CB inferred, not run
  91CE  9D 38 05  STA $0538,X                   ; 011CE inferred, not run
  91D1  BD 0B 05  LDA $050B,X                   ; 011D1 inferred, not run
  91D4  29 07     AND #$07                      ; 011D4 inferred, not run
  91D6  9D 0B 05  STA $050B,X                   ; 011D6 inferred, not run
  91D9  CA        DEX                           ; 011D9 inferred, not run
  91DA  10 B5     BPL $9191                     ; 011DA inferred, not run
  91DC  A6 82     LDX $82                       ; 011DC inferred, not run
  91DE  60        RTS                           ; 011DE inferred, not run
  91DF  .byte A0 0E 20 80 83 A2 5D A0 06 20 CB FF 4C 10 87 A2   ; 011DF
  91EF  .byte 60 D0 F4                                          ; 011EF

sub_B0_91F2:                    ; from 055f2 06726
  91F2  A9 10     LDA #$10                      ; 011F2 ×52
  91F4  8D 00 20  STA $2000                     ; 011F4 ×52
  91F7  20 D7 DA  JSR sub_B0_DAD7               ; 011F7 ×52
  91FA  A0 00     LDY #$00                      ; 011FA ×52
  91FC  8C 01 20  STY $2001                     ; 011FC ×52
  91FF  60        RTS                           ; 011FF ×52
  9200  .byte BD D0 03 D0 11 A5 EB 30 34 BD 1A 05 29 F0 9D 56   ; 01200
  9210  .byte 05 A9 80 9D 65 05 20 66 CF A9 FF 20 6A D0 BD 83   ; 01210
  9220  .byte 05 9D D0 03 9D 47 05 BD 75 04 F0 03 20 4C 8F 20   ; 01220
  9230  .byte 52 8E 20 AD E4 20 24 B0 D0 03 20 57 B0 60 BD A1   ; 01230
  9240  .byte 05 20 E6 92 DE 83 05 D0 03 4C 80 D0 A9 C7 9D D0   ; 01240
  9250  .byte 03 60 BD 39 04 C9 50 F0 03 FE 39 04 BD DE 04 F0   ; 01250
  9260  .byte 03 DE DE 04 A5 E9 F0 5D 29 07 D0 59 BC 83 05 10   ; 01260
  9270  .byte 02 A9 08 45 E9 29 08 F0 4C A5 D1 C9 02 F0 46 A9   ; 01270
  9280  .byte 18 85 BF 85 C0 A9 07 9D DE 04 20 58 FE A4 82 20   ; 01280
  9290  .byte 6D B1 B9 83 05 29 40 9D A2 04 C9 40 A9 18 90 02   ; 01290
  92A0  .byte A9 68 9D 56 05 A9 10 9D C1 03 A9 F0 9D 65 05 A5   ; 012A0
  92B0  .byte E9 C9 09 B0 07 9D 1A 05 A9 4E D0 02 A9 50 A2 0F   ; 012B0
  92C0  .byte 20 E1 84 A6 82 20 D6 92 A9 10 9D D0 03 BD 83 05   ; 012C0
  92D0  .byte 29 40 9D A2 04 60 BD 83 05 18 7D DE 04 30 07 38   ; 012D0
  92E0  .byte FD DE 04 FD DE 04 20 FC 92 BD DE 04 18 69 18 65   ; 012E0
  92F0  .byte 89 9D 1B 04 A5 8A 69 01 9D 0C 04 60               ; 012F0
  92FC  18        CLC                           ; 012FC inferred, not run

sub_B0_92FD:                    ; from 01e32
  92FD  65 87     ADC $87                       ; 012FD ×354
  92FF  9D FD 03  STA $03FD,X                   ; 012FF ×354
  9302  A5 88     LDA $88                       ; 01302 ×354
  9304  69 00     ADC #$00                      ; 01304 ×354
  9306  9D EE 03  STA $03EE,X                   ; 01306 ×354
  9309  60        RTS                           ; 01309 ×354
  930A  .byte A5 0B D0 04 A9 40 85 E9 A5 E9 F0 02 C6 E9 BD 74   ; 0130A
  931A  .byte 05 F0 1A DE 74 05 F0 12 A5 0B 29 03 D0 06 A5 87   ; 0131A
  932A  .byte 49 04 85 87 A9 5A 85 B1 D0 28 4C EE 91 BD 47 05   ; 0132A
  933A  .byte F0 10 DE 47 05 29 01 D0 19 A5 87 49 02 85 87 4C   ; 0133A
  934A  .byte 5C 93 BD ED 04 C9 20 F0 03 FE ED 04 A5 0B 29 7F   ; 0134A
  935A  .byte F0 09 20 D6 92 A9 11 9D D0 03 60 BD 29 05 FE 29   ; 0135A
  936A  .byte 05 29 07 29 03 0A 0A A8 A2 00 B9 86 93 95 BB C8   ; 0136A
  937A  .byte E8 E0 04 D0 F5 A9 44 A2 0F 4C E1 84 02 23 00 00   ; 0137A
  938A  .byte 00 00 04 60 FE 23 FC 60 00 00 00 00 20 4C 8F BD   ; 0138A
  939A  .byte DE 04 18 69 03 9D DE 04 C9 57 B0 22 4A 4A 4A 4A   ; 0139A
  93AA  .byte 85 15 18 69 13 9D D0 03 BD 1A 05 F0 10 BD A2 04   ; 013AA
  93BA  .byte 09 01 9D A2 04 A9 7D 38 E5 15 9D D0 03            ; 013BA

loc_B0_93C7:                    ; from 01403
  93C7  60        RTS                           ; 013C7 ×2621
  93C8  .byte A9 6E 20 DD DA 20 FD DA BD 1A 05 F0 26 A6 82 A9   ; 013C8
  93D8  .byte 05 9D C1 03 BD 1B 04 9D 83 05 20 AD E4 BD 1B 04   ; 013D8
  93E8  .byte 38 FD 1B 04 18 20 EE 8E A9 02 9D C0 04 A9 90 9D   ; 013E8
  93F8  .byte 83 05 60 4C 80 D0                                 ; 013F8

sub_B0_93FE:                    ; from 0227f 029dc 06ea9
  93FE  BD B1 04  LDA $04B1,X                   ; 013FE ×2621
  9401  29 20     AND #$20                      ; 01401 ×2621
  9403  F0 C2     BEQ loc_B0_93C7               ; 01403 ×2621
  9405  A9 DF     LDA #$DF                      ; 01405 ×0
  9407  20 A8 9E  JSR sub_B0_9EA8               ; 01407 ×0

sub_B0_940A:                    ; from 0147a
  940A  A5 10     LDA $10                       ; 0140A ×3
  940C  C9 02     CMP #$02                      ; 0140C ×3
  940E  D0 03     BNE loc_B0_9413               ; 0140E ×3
  9410  4C CE 95  JMP $95CE                     ; 01410 inferred, not run

loc_B0_9413:                    ; from 0140e
  9413  20 2B 94  JSR sub_B0_942B               ; 01413 ×3
  9416  FE C1 03  INC $03C1,X                   ; 01416 ×3
  9419  A9 00     LDA #$00                      ; 01419 ×3
  941B  9D 83 05  STA $0583,X                   ; 0141B ×3
  941E  5E 65 05  LSR $0565,X                   ; 0141E ×3
  9421  A9 10     LDA #$10                      ; 01421 ×3
  9423  20 EE 8E  JSR sub_B0_8EEE               ; 01423 ×3
  9426  8A        TXA                           ; 01426 ×3
  9427  A8        TAY                           ; 01427 ×3
  9428  A6 82     LDX $82                       ; 01428 ×3
  942A  60        RTS                           ; 0142A ×3

sub_B0_942B:                    ; from 01472 01413
  942B  20 58 FE  JSR sub_B0_FE58               ; 0142B ×6
  942E  A9 1B     LDA #$1B                      ; 0142E ×6
  9430  9D C1 03  STA $03C1,X                   ; 01430 ×6
  9433  A4 82     LDY $82                       ; 01433 ×6
  9435  B9 A2 04  LDA $04A2,Y                   ; 01435 ×6
  9438  9D A2 04  STA $04A2,X                   ; 01438 ×6
  943B  B9 56 05  LDA $0556,Y                   ; 0143B ×6
  943E  9D 56 05  STA $0556,X                   ; 0143E ×6
  9441  A9 80     LDA #$80                      ; 01441 ×6
  9443  9D 65 05  STA $0565,X                   ; 01443 ×6
  9446  A9 04     LDA #$04                      ; 01446 ×6
  9448  9D C0 04  STA $04C0,X                   ; 01448 ×6
  944B  4C 6D B1  JMP sub_B0_B16D               ; 0144B ×6

jt_B0_944E:                    ; from 008ec 02e61
  944E  BD A1 05  LDA $05A1,X                   ; 0144E ×4060
  9451  9D 75 04  STA $0475,X                   ; 01451 ×4060
  9454  BD 74 05  LDA $0574,X                   ; 01454 ×4060
  9457  D0 04     BNE loc_B0_945D               ; 01457 ×4060
  9459  A9 1E     LDA #$1E                      ; 01459 ×3865
  945B  85 B2     STA $B2                       ; 0145B ×3865

loc_B0_945D:                    ; from 01457
  945D  20 4C 8F  JSR sub_B0_8F4C               ; 0145D ×4060
  9460  BD 47 05  LDA $0547,X                   ; 01460 ×4060
  9463  F0 51     BEQ loc_B0_94B6               ; 01463 ×4060
  9465  BD FC 04  LDA $04FC,X                   ; 01465 ×1357
  9468  D0 1B     BNE loc_B0_9485               ; 01468 ×1357
  946A  BD 74 05  LDA $0574,X                   ; 0146A ×1168
  946D  F0 16     BEQ loc_B0_9485               ; 0146D ×1168
  946F  9D FC 04  STA $04FC,X                   ; 0146F ×3
  9472  20 2B 94  JSR sub_B0_942B               ; 01472 ×3
  9475  A9 30     LDA #$30                      ; 01475 ×3
  9477  20 EE 8E  JSR sub_B0_8EEE               ; 01477 ×3
  947A  20 0A 94  JSR sub_B0_940A               ; 0147A ×3
  947D  B9 56 05  LDA $0556,Y                   ; 0147D ×3
  9480  49 80     EOR #$80                      ; 01480 ×3
  9482  99 56 05  STA $0556,Y                   ; 01482 ×3

loc_B0_9485:                    ; from 0146d 01468
  9485  20 A7 E1  JSR sub_B0_E1A7               ; 01485 ×1357
  9488  BD B1 04  LDA $04B1,X                   ; 01488 ×1357
  948B  29 40     AND #$40                      ; 0148B ×1357
  948D  D0 05     BNE loc_B0_9494               ; 0148D ×1357
  948F  4C AE 95  JMP loc_B0_95AE               ; 0148F ×811
  9492  .byte E8                                                ; 01492
  9493  .byte F0                                                ; 01493 data, read by 0149f 014a4

loc_B0_9494:                    ; from 0148d
  9494  BD 65 05  LDA $0565,X                   ; 01494 ×546
  9497  4A        LSR A                         ; 01497 ×546
  9498  4A        LSR A                         ; 01498 ×546
  9499  4A        LSR A                         ; 01499 ×546
  949A  49 FF     EOR #$FF                      ; 0149A ×546
  949C  BC C1 03  LDY $03C1,X                   ; 0149C ×546
  949F  D9 81 94  CMP $9481,Y                   ; 0149F ×546
  94A2  B0 03     BCS loc_B0_94A7               ; 014A2 ×546
  94A4  B9 81 94  LDA $9481,Y                   ; 014A4 ×273

loc_B0_94A7:                    ; from 014a2
  94A7  9D DF 03  STA $03DF,X                   ; 014A7 ×546
  94AA  20 BA 95  JSR sub_B0_95BA               ; 014AA ×546
  94AD  18        CLC                           ; 014AD ×546
  94AE  69 02     ADC #$02                      ; 014AE ×546
  94B0  9D ED 04  STA $04ED,X                   ; 014B0 ×546
  94B3  4C AE 95  JMP loc_B0_95AE               ; 014B3 ×546

loc_B0_94B6:                    ; from 01463
  94B6  BD 74 05  LDA $0574,X                   ; 014B6 ×2703
  94B9  F0 06     BEQ loc_B0_94C1               ; 014B9 ×2703
  94BB  20 8C E1  JSR sub_B0_E18C               ; 014BB ×3
  94BE  4C AE 95  JMP loc_B0_95AE               ; 014BE ×3

loc_B0_94C1:                    ; from 014b9
  94C1  A9 FC     LDA #$FC                      ; 014C1 ×2700
  94C3  20 6A D0  JSR sub_B0_D06A               ; 014C3 ×2700
  94C6  BC FC 04  LDY $04FC,X                   ; 014C6 ×2700
  94C9  F0 23     BEQ loc_B0_94EE               ; 014C9 ×2700
  94CB  A9 00     LDA #$00                      ; 014CB ×1072
  94CD  20 F6 DA  JSR sub_B0_DAF6               ; 014CD ×1072
  94D0  BD D0 03  LDA $03D0,X                   ; 014D0 ×1072
  94D3  38        SEC                           ; 014D3 ×1072
  94D4  E9 18     SBC #$18                      ; 014D4 ×1072
  94D6  20 BA 95  JSR sub_B0_95BA               ; 014D6 ×1072
  94D9  BD FC 04  LDA $04FC,X                   ; 014D9 ×1072
  94DC  49 3C     EOR #$3C                      ; 014DC ×1072
  94DE  F0 07     BEQ loc_B0_94E7               ; 014DE ×1072
  94E0  88        DEY                           ; 014E0 ×298
  94E1  98        TYA                           ; 014E1 ×298
  94E2  49 FF     EOR #$FF                      ; 014E2 ×298
  94E4  C9 80     CMP #$80                      ; 014E4 ×298
  94E6  6A        ROR A                         ; 014E6 ×298

loc_B0_94E7:                    ; from 014de
  94E7  18        CLC                           ; 014E7 ×1072
  94E8  7D FD 03  ADC $03FD,X                   ; 014E8 ×1072
  94EB  4C 9D 95  JMP loc_B0_959D               ; 014EB ×1072

loc_B0_94EE:                    ; from 014c9
  94EE  20 17 E3  JSR sub_B0_E317               ; 014EE ×1628
  94F1  BD 0B 05  LDA $050B,X                   ; 014F1 ×1628
  94F4  F0 09     BEQ loc_B0_94FF               ; 014F4 ×1628
  94F6  DE 0B 05  DEC $050B,X                   ; 014F6 ×448

loc_B0_94F9:                    ; from 01501
  94F9  BD DF 03  LDA $03DF,X                   ; 014F9 ×566
  94FC  4C 8F 95  JMP loc_B0_958F               ; 014FC ×566

loc_B0_94FF:                    ; from 014f4
  94FF  A5 1A     LDA $1A                       ; 014FF ×1180
  9501  D0 F6     BNE loc_B0_94F9               ; 01501 ×1180
  9503  A5 19     LDA $19                       ; 01503 ×1062
  9505  05 17     ORA $17                       ; 01505 ×1062
  9507  D0 4F     BNE loc_B0_9558               ; 01507 ×1062
  9509  A5 16     LDA $16                       ; 01509 ×127
  950B  69 60     ADC #$60                      ; 0150B ×127
  950D  A8        TAY                           ; 0150D ×127
  950E  A5 15     LDA $15                       ; 0150E ×127
  9510  69 00     ADC #$00                      ; 01510 ×127
  9512  D0 44     BNE loc_B0_9558               ; 01512 ×127
  9514  C0 80     CPY #$80                      ; 01514 ×127
  9516  B0 31     BCS loc_B0_9549               ; 01516 ×127
  9518  C0 40     CPY #$40                      ; 01518 ×73
  951A  90 2D     BCC loc_B0_9549               ; 0151A ×73
  951C  98        TYA                           ; 0151C ×73
  951D  E9 50     SBC #$50                      ; 0151D ×73
  951F  C9 20     CMP #$20                      ; 0151F ×73
  9521  B0 0C     BCS loc_B0_952F               ; 01521 ×73
  9523  A5 15     LDA $15                       ; 01523 ×19
  9525  49 80     EOR #$80                      ; 01525 ×19
  9527  29 80     AND #$80                      ; 01527 ×19
  9529  9D 56 05  STA $0556,X                   ; 01529 ×19
  952C  4C 58 95  JMP loc_B0_9558               ; 0152C ×19

loc_B0_952F:                    ; from 01521
  952F  BC 92 05  LDY $0592,X                   ; 0152F ×54
  9532  B9 1A 05  LDA $051A,Y                   ; 01532 ×54
  9535  29 0F     AND #$0F                      ; 01535 ×54
  9537  C9 04     CMP #$04                      ; 01537 ×54
  9539  A9 3A     LDA #$3A                      ; 01539 ×54
  953B  90 02     BCC loc_B0_953F               ; 0153B ×54
  953D  A9 3C     LDA #$3C                      ; 0153D ×47

loc_B0_953F:                    ; from 0153b
  953F  20 DD DA  JSR sub_B0_DADD               ; 0153F ×54
  9542  A9 00     LDA #$00                      ; 01542 ×54
  9544  9D DF 03  STA $03DF,X                   ; 01544 ×54
  9547  F0 57     BEQ loc_B0_95A0               ; 01547 ×54

loc_B0_9549:                    ; from 01516
  9549  C0 C0     CPY #$C0                      ; 01549 ×54
  954B  B0 0B     BCS loc_B0_9558               ; 0154B ×54
  954D  A5 25     LDA $25                       ; 0154D ×44
  954F  29 0F     AND #$0F                      ; 0154F ×44
  9551  D0 05     BNE loc_B0_9558               ; 01551 ×44
  9553  A9 40     LDA #$40                      ; 01553 ×2
  9555  9D 0B 05  STA $050B,X                   ; 01555 ×2

loc_B0_9558:                    ; from 01507 01551 0152c 0154b
  9558  A9 40     LDA #$40                      ; 01558 ×1008
  955A  9D 65 05  STA $0565,X                   ; 0155A ×1008
  955D  BD C1 03  LDA $03C1,X                   ; 0155D ×1008
  9560  C9 12     CMP #$12                      ; 01560 ×1008
  9562  A9 10     LDA #$10                      ; 01562 ×1008
  9564  B0 02     BCS loc_B0_9568               ; 01564 ×1008
  9566  A9 18     LDA #$18                      ; 01566 inferred, not run

loc_B0_9568:                    ; from 01564
  9568  DD DF 03  CMP $03DF,X                   ; 01568 ×1008
  956B  F0 06     BEQ loc_B0_9573               ; 0156B ×1008
  956D  18        CLC                           ; 0156D ×997
  956E  7D DF 03  ADC $03DF,X                   ; 0156E ×997
  9571  D0 08     BNE loc_B0_957B               ; 01571 ×997

loc_B0_9573:                    ; from 0156b
  9573  A9 FE     LDA #$FE                      ; 01573 ×22
  9575  5D DE 04  EOR $04DE,X                   ; 01575 ×22
  9578  9D DE 04  STA $04DE,X                   ; 01578 ×22

loc_B0_957B:                    ; from 01571
  957B  BD DE 04  LDA $04DE,X                   ; 0157B ×1008
  957E  18        CLC                           ; 0157E ×1008
  957F  69 01     ADC #$01                      ; 0157F ×1008
  9581  BC 47 05  LDY $0547,X                   ; 01581 ×1008
  9584  F0 02     BEQ loc_B0_9588               ; 01584 ×1008
  9586  0A        ASL A                         ; 01586 inferred, not run
  9587  0A        ASL A                         ; 01587 inferred, not run

loc_B0_9588:                    ; from 01584
  9588  18        CLC                           ; 01588 ×1008
  9589  7D DF 03  ADC $03DF,X                   ; 01589 ×1008
  958C  9D DF 03  STA $03DF,X                   ; 0158C ×1008

loc_B0_958F:                    ; from 014fc
  958F  18        CLC                           ; 0158F ×1574
  9590  7D FD 03  ADC $03FD,X                   ; 01590 ×1574
  9593  9D 83 05  STA $0583,X                   ; 01593 ×1574
  9596  BD FD 03  LDA $03FD,X                   ; 01596 ×1574
  9599  38        SEC                           ; 01599 ×1574
  959A  FD DF 03  SBC $03DF,X                   ; 0159A ×1574

loc_B0_959D:                    ; from 014eb
  959D  9D ED 04  STA $04ED,X                   ; 0159D ×2646

loc_B0_95A0:                    ; from 01547
  95A0  BD 47 05  LDA $0547,X                   ; 015A0 ×2700
  95A3  D0 09     BNE loc_B0_95AE               ; 015A3 ×2700
  95A5  20 52 8E  JSR sub_B0_8E52               ; 015A5 ×2700
  95A8  20 AD E4  JSR sub_B0_E4AD               ; 015A8 ×2700
  95AB  20 71 E2  JSR sub_B0_E271               ; 015AB ×2700

loc_B0_95AE:                    ; from 0148f 014b3 014be
  95AE  BD 75 04  LDA $0475,X                   ; 015AE ×4060
  95B1  9D A1 05  STA $05A1,X                   ; 015B1 ×4060
  95B4  A9 19     LDA #$19                      ; 015B4 ×4060
  95B6  9D D0 03  STA $03D0,X                   ; 015B6 ×4060
  95B9  60        RTS                           ; 015B9 ×4060

sub_B0_95BA:                    ; from 014d6 014aa
  95BA  A8        TAY                           ; 015BA ×1618
  95BB  BD 56 05  LDA $0556,X                   ; 015BB ×1618
  95BE  10 05     BPL loc_B0_95C5               ; 015BE ×1618
  95C0  88        DEY                           ; 015C0 ×546
  95C1  98        TYA                           ; 015C1 ×546
  95C2  49 FF     EOR #$FF                      ; 015C2 ×546
  95C4  A8        TAY                           ; 015C4 ×546

loc_B0_95C5:                    ; from 015be
  95C5  98        TYA                           ; 015C5 ×1618
  95C6  18        CLC                           ; 015C6 ×1618
  95C7  7D FD 03  ADC $03FD,X                   ; 015C7 ×1618
  95CA  9D 83 05  STA $0583,X                   ; 015CA ×1618
  95CD  60        RTS                           ; 015CD ×1618
  95CE  A4 82     LDY $82                       ; 015CE inferred, not run
  95D0  20 58 FE  JSR sub_B0_FE58               ; 015D0 inferred, not run
  95D3  20 67 B1  JSR sub_B0_B167               ; 015D3 inferred, not run
  95D6  A9 70     LDA #$70                      ; 015D6 inferred, not run
  95D8  9D 65 05  STA $0565,X                   ; 015D8 inferred, not run
  95DB  A9 2F     LDA #$2F                      ; 015DB inferred, not run
  95DD  9D C1 03  STA $03C1,X                   ; 015DD inferred, not run
  95E0  A9 01     LDA #$01                      ; 015E0 inferred, not run
  95E2  9D C0 04  STA $04C0,X                   ; 015E2 inferred, not run
  95E5  A6 82     LDX $82                       ; 015E5 inferred, not run
  95E7  60        RTS                           ; 015E7 inferred, not run
  95E8  4C 80 D0  JMP sub_B0_D080               ; 015E8 ×0
  95EB  A9 22     LDA #$22                      ; 015EB ×0
  95ED  9D D0 03  STA $03D0,X                   ; 015ED ×0
  95F0  BD A2 04  LDA $04A2,X                   ; 015F0 ×0
  95F3  30 F3     BMI $95E8                     ; 015F3 ×0
  95F5  BD 65 05  LDA $0565,X                   ; 015F5 ×0
  95F8  C9 FF     CMP #$FF                      ; 015F8 ×0
  95FA  D0 28     BNE $9624                     ; 015FA ×0
  95FC  FE D0 03  INC $03D0,X                   ; 015FC ×0
  95FF  BC 92 05  LDY $0592,X                   ; 015FF ×0
  9602  20 6D B1  JSR sub_B0_B16D               ; 01602 ×0
  9605  B9 56 05  LDA $0556,Y                   ; 01605 ×0
  9608  4A        LSR A                         ; 01608 ×0
  9609  29 40     AND #$40                      ; 01609 ×0
  960B  49 40     EOR #$40                      ; 0160B ×0
  960D  9D A2 04  STA $04A2,X                   ; 0160D ×0
  9610  8A        TXA                           ; 01610 ×0
  9611  29 07     AND #$07                      ; 01611 ×0
  9613  0A        ASL A                         ; 01613 ×0
  9614  0A        ASL A                         ; 01614 ×0
  9615  20 EE 8E  JSR sub_B0_8EEE               ; 01615 ×0
  9618  B9 65 05  LDA $0565,Y                   ; 01618 ×0
  961B  C9 FF     CMP #$FF                      ; 0161B ×0
  961D  F0 23     BEQ $9642                     ; 0161D ×0
  961F  A9 00     LDA #$00                      ; 0161F inferred, not run
  9621  9D 65 05  STA $0565,X                   ; 01621 inferred, not run
  9624  A9 FC     LDA #$FC                      ; 01624 ×0
  9626  20 6A D0  JSR sub_B0_D06A               ; 01626 ×0
  9629  20 4C 8F  JSR sub_B0_8F4C               ; 01629 ×0
  962C  A9 E8     LDA #$E8                      ; 0162C ×0
  962E  20 7A 8E  JSR sub_B0_8E7A               ; 0162E ×0
  9631  20 AD E4  JSR sub_B0_E4AD               ; 01631 ×0
  9634  A9 03     LDA #$03                      ; 01634 ×0

sub_B0_9636:                    ; from 0224b
  9636  25 0B     AND $0B                       ; 01636 ×0
  9638  D0 08     BNE $9642                     ; 01638 ×0
  963A  BD A2 04  LDA $04A2,X                   ; 0163A ×0
  963D  49 40     EOR #$40                      ; 0163D ×0
  963F  9D A2 04  STA $04A2,X                   ; 0163F ×0
  9642  60        RTS                           ; 01642 ×0
  9643  .byte BD 65 05 C9 60 90 05 BD A2 04 30 99 BD 47 05 D0   ; 01643
  9653  .byte 57 BD 65 05 D0 2F BD DE 04 F0 0E A9 1E 85 B2 20   ; 01653
  9663  .byte 76 B9 DE DE 04 D0 1A F0 1C 20 E9 96 A9 02 18 20   ; 01663
  9673  .byte EE 8E BD 93 04 F0 0A DD 83 05 B0 05 A9 50 9D DE   ; 01673
  9683  .byte 04 A9 60 D0 1A A9 1E 85 B2 FE 65 05 20 4C 8F A9   ; 01683
  9693  .byte 06 20 4E 99 A9 07 20 4E 99 20 76 B9 BD 65 05 20   ; 01693
  96A3  .byte DA E2 B9 4A 99 4C 32 99 20 CE 95                  ; 016A3

jt_B0_96AE:                    ; from 008ec
  96AE  BD 47 05  LDA $0547,X                   ; 016AE ×255
  96B1  F0 0B     BEQ loc_B0_96BE               ; 016B1 ×255
  96B3  A9 03     LDA #$03                      ; 016B3 ×0
  96B5  9D A1 05  STA $05A1,X                   ; 016B5 ×0
  96B8  A9 14     LDA #$14                      ; 016B8 ×0
  96BA  9D C1 03  STA $03C1,X                   ; 016BA ×0
  96BD  60        RTS                           ; 016BD ×0

loc_B0_96BE:                    ; from 016b1
  96BE  BD 65 05  LDA $0565,X                   ; 016BE ×255
  96C1  D0 34     BNE $96F7                     ; 016C1 ×255
  96C3  20 E9 96  JSR sub_B0_96E9               ; 016C3 ×255
  96C6  DE 83 05  DEC $0583,X                   ; 016C6 ×255
  96C9  D0 04     BNE loc_B0_96CF               ; 016C9 ×255
  96CB  FE 65 05  INC $0565,X                   ; 016CB ×0
  96CE  60        RTS                           ; 016CE ×0

loc_B0_96CF:                    ; from 016c9
  96CF  BD 93 04  LDA $0493,X                   ; 016CF ×255
  96D2  E9 80     SBC #$80                      ; 016D2 ×255
  96D4  C9 20     CMP #$20                      ; 016D4 ×255
  96D6  A9 20     LDA #$20                      ; 016D6 ×255
  96D8  90 0B     BCC loc_B0_96E5               ; 016D8 ×255
  96DA  69 00     ADC #$00                      ; 016DA ×223
  96DC  BC C1 03  LDY $03C1,X                   ; 016DC ×223
  96DF  C0 16     CPY #$16                      ; 016DF ×223
  96E1  D0 02     BNE loc_B0_96E5               ; 016E1 ×223
  96E3  A9 29     LDA #$29                      ; 016E3 inferred, not run

loc_B0_96E5:                    ; from 016e1 016d8
  96E5  9D D0 03  STA $03D0,X                   ; 016E5 ×255
  96E8  60        RTS                           ; 016E8 ×255

sub_B0_96E9:                    ; from 016c3
  96E9  BD FD 03  LDA $03FD,X                   ; 016E9 ×255
  96EC  29 80     AND #$80                      ; 016EC ×255
  96EE  9D 56 05  STA $0556,X                   ; 016EE ×255
  96F1  4C 81 CF  JMP loc_B0_CF81               ; 016F1 ×255
  96F4  4C D8 97  JMP $97D8                     ; 016F4 ×0
  96F7  A5 10     LDA $10                       ; 016F7 ×0
  96F9  C9 05     CMP #$05                      ; 016F9 ×0
  96FB  F0 04     BEQ $9701                     ; 016FB ×0
  96FD  A9 1E     LDA #$1E                      ; 016FD ×0
  96FF  85 B2     STA $B2                       ; 016FF ×0
  9701  BD 83 05  LDA $0583,X                   ; 01701 ×0
  9704  D0 EE     BNE $96F4                     ; 01704 ×0
  9706  BD A2 04  LDA $04A2,X                   ; 01706 ×0
  9709  30 03     BMI $970E                     ; 01709 ×0
  970B  20 4C 8F  JSR sub_B0_8F4C               ; 0170B ×0
  970E  A9 80     LDA #$80                      ; 0170E ×0
  9710  20 DA E2  JSR sub_B0_E2DA               ; 01710 ×0
  9713  20 2F 99  JSR sub_B0_992F               ; 01713 ×0
  9716  BC C1 03  LDY $03C1,X                   ; 01716 ×0
  9719  A9 FE     LDA #$FE                      ; 01719 ×0
  971B  C0 17     CPY #$17                      ; 0171B ×0
  971D  F0 0A     BEQ $9729                     ; 0171D ×0
  971F  C0 5D     CPY #$5D                      ; 0171F ×0
  9721  F0 06     BEQ $9729                     ; 01721 ×0
  9723  C0 5E     CPY #$5E                      ; 01723 ×0
  9725  F0 02     BEQ $9729                     ; 01725 ×0
  9727  A9 FC     LDA #$FC                      ; 01727 ×0
  9729  20 6A D0  JSR sub_B0_D06A               ; 01729 ×0
  972C  D0 05     BNE $9733                     ; 0172C ×0
  972E  A9 01     LDA #$01                      ; 0172E ×0
  9730  9D 65 05  STA $0565,X                   ; 01730 ×0
  9733  BD C1 03  LDA $03C1,X                   ; 01733 ×0
  9736  C9 5D     CMP #$5D                      ; 01736 ×0
  9738  F0 1A     BEQ $9754                     ; 01738 ×0
  973A  C9 5E     CMP #$5E                      ; 0173A ×0
  973C  F0 16     BEQ $9754                     ; 0173C ×0
  973E  BD C0 04  LDA $04C0,X                   ; 0173E ×0
  9741  30 11     BMI $9754                     ; 01741 ×0
  9743  C9 03     CMP #$03                      ; 01743 ×0
  9745  90 0D     BCC $9754                     ; 01745 ×0
  9747  BD C1 03  LDA $03C1,X                   ; 01747 ×0
  974A  C9 17     CMP #$17                      ; 0174A ×0
  974C  D0 06     BNE $9754                     ; 0174C ×0
  974E  A5 81     LDA $81                       ; 0174E inferred, not run
  9750  29 08     AND #$08                      ; 01750 inferred, not run
  9752  D0 23     BNE $9777                     ; 01752 inferred, not run
  9754  BD 75 04  LDA $0475,X                   ; 01754 ×0
  9757  C9 70     CMP #$70                      ; 01757 ×0
  9759  B0 1C     BCS $9777                     ; 01759 ×0
  975B  BD A2 04  LDA $04A2,X                   ; 0175B ×0
  975E  30 07     BMI $9767                     ; 0175E ×0
  9760  BD 93 04  LDA $0493,X                   ; 01760 ×0
  9763  C9 30     CMP #$30                      ; 01763 ×0
  9765  90 10     BCC $9777                     ; 01765 ×0
  9767  A9 10     LDA #$10                      ; 01767 ×0
  9769  A4 10     LDY $10                       ; 01769 ×0
  976B  C0 05     CPY #$05                      ; 0176B ×0
  976D  D0 02     BNE $9771                     ; 0176D ×0
  976F  A9 30     LDA #$30                      ; 0176F inferred, not run
  9771  20 7A 8E  JSR sub_B0_8E7A               ; 01771 ×0
  9774  4C AD E4  JMP sub_B0_E4AD               ; 01774 ×0
  9777  A9 00     LDA #$00                      ; 01777 ×0
  9779  9D C0 04  STA $04C0,X                   ; 01779 ×0
  977C  9D CF 04  STA $04CF,X                   ; 0177C ×0
  977F  BD C1 03  LDA $03C1,X                   ; 0177F ×0
  9782  C9 17     CMP #$17                      ; 01782 ×0
  9784  F0 10     BEQ $9796                     ; 01784 ×0
  9786  C9 5D     CMP #$5D                      ; 01786 ×0
  9788  F0 0C     BEQ $9796                     ; 01788 ×0
  978A  C9 5E     CMP #$5E                      ; 0178A ×0
  978C  F0 08     BEQ $9796                     ; 0178C ×0
  978E  8A        TXA                           ; 0178E ×0
  978F  65 25     ADC $25                       ; 0178F ×0
  9791  29 1F     AND #$1F                      ; 01791 ×0
  9793  F0 01     BEQ $9796                     ; 01793 ×0
  9795  60        RTS                           ; 01795 ×0
  9796  20 E9 E2  JSR sub_B0_E2E9               ; 01796 ×0
  9799  BC 92 05  LDY $0592,X                   ; 01799 ×0
  979C  B9 74 05  LDA $0574,Y                   ; 0179C ×0
  979F  30 F4     BMI $9795                     ; 0179F ×0
  97A1  B9 FC 04  LDA $04FC,Y                   ; 017A1 ×0
  97A4  C9 2C     CMP #$2C                      ; 017A4 ×0
  97A6  F0 ED     BEQ $9795                     ; 017A6 ×0
  97A8  A5 10     LDA $10                       ; 017A8 ×0
  97AA  C9 01     CMP #$01                      ; 017AA ×0
  97AC  D0 0C     BNE $97BA                     ; 017AC ×0
  97AE  BD 38 05  LDA $0538,X                   ; 017AE inferred, not run
  97B1  D0 07     BNE $97BA                     ; 017B1 inferred, not run
  97B3  B9 B1 04  LDA $04B1,Y                   ; 017B3 inferred, not run
  97B6  29 40     AND #$40                      ; 017B6 inferred, not run
  97B8  D0 DB     BNE $9795                     ; 017B8 inferred, not run
  97BA  BD A2 04  LDA $04A2,X                   ; 017BA ×0
  97BD  30 05     BMI $97C4                     ; 017BD ×0
  97BF  B9 74 05  LDA $0574,Y                   ; 017BF ×0
  97C2  D0 D1     BNE $9795                     ; 017C2 ×0
  97C4  FE 83 05  INC $0583,X                   ; 017C4 ×0
  97C7  20 3B E3  JSR sub_B0_E33B               ; 017C7 ×0
  97CA  BD A2 04  LDA $04A2,X                   ; 017CA ×0
  97CD  0A        ASL A                         ; 017CD ×0
  97CE  29 80     AND #$80                      ; 017CE ×0
  97D0  9D 56 05  STA $0556,X                   ; 017D0 ×0
  97D3  A9 01     LDA #$01                      ; 017D3 ×0
  97D5  9D C0 04  STA $04C0,X                   ; 017D5 ×0
  97D8  20 4C 8F  JSR sub_B0_8F4C               ; 017D8 ×0
  97DB  BD FC 04  LDA $04FC,X                   ; 017DB ×0
  97DE  D0 5A     BNE $983A                     ; 017DE ×0
  97E0  BD C1 03  LDA $03C1,X                   ; 017E0 ×0
  97E3  C9 5D     CMP #$5D                      ; 017E3 ×0
  97E5  F0 53     BEQ $983A                     ; 017E5 ×0
  97E7  C9 5E     CMP #$5E                      ; 017E7 ×0
  97E9  F0 4F     BEQ $983A                     ; 017E9 ×0
  97EB  A9 02     LDA #$02                      ; 017EB ×0
  97ED  85 DE     STA $DE                       ; 017ED ×0
  97EF  A0 01     LDY #$01                      ; 017EF ×0
  97F1  A9 03     LDA #$03                      ; 017F1 ×0
  97F3  18        CLC                           ; 017F3 ×0
  97F4  20 FB 8A  JSR sub_B0_8AFB               ; 017F4 ×0
  97F7  30 41     BMI $983A                     ; 017F7 ×0
  97F9  B9 47 05  LDA $0547,Y                   ; 017F9 ×0
  97FC  F0 2E     BEQ $982C                     ; 017FC ×0
  97FE  B9 38 05  LDA $0538,Y                   ; 017FE ×0
  9801  19 29 05  ORA $0529,Y                   ; 01801 ×0
  9804  1D 38 05  ORA $0538,X                   ; 01804 ×0
  9807  D0 31     BNE $983A                     ; 01807 ×0
  9809  B9 B1 04  LDA $04B1,Y                   ; 01809 ×0
  980C  29 40     AND #$40                      ; 0180C ×0
  980E  F0 2A     BEQ $983A                     ; 0180E ×0
  9810  BD A2 04  LDA $04A2,X                   ; 01810 inferred, not run
  9813  29 10     AND #$10                      ; 01813 inferred, not run
  9815  D0 23     BNE $983A                     ; 01815 inferred, not run
  9817  BD C1 03  LDA $03C1,X                   ; 01817 inferred, not run
  981A  49 17     EOR #$17                      ; 0181A inferred, not run
  981C  D0 1C     BNE $983A                     ; 0181C inferred, not run
  981E  A9 34     LDA #$34                      ; 0181E inferred, not run
  9820  D0 15     BNE $9837                     ; 01820 inferred, not run
  9822  BD A2 04  LDA $04A2,X                   ; 01822 inferred, not run
  9825  09 10     ORA #$10                      ; 01825 inferred, not run
  9827  9D A2 04  STA $04A2,X                   ; 01827 inferred, not run
  982A  D0 0E     BNE $983A                     ; 0182A inferred, not run
  982C  BC C1 03  LDY $03C1,X                   ; 0182C ×0
  982F  A9 32     LDA #$32                      ; 0182F ×0
  9831  C0 17     CPY #$17                      ; 01831 ×0
  9833  F0 02     BEQ $9837                     ; 01833 ×0
  9835  A9 30     LDA #$30                      ; 01835 ×0
  9837  20 DD DA  JSR sub_B0_DADD               ; 01837 ×0
  983A  BC 92 05  LDY $0592,X                   ; 0183A ×0
  983D  BD 83 05  LDA $0583,X                   ; 0183D ×0
  9840  C9 01     CMP #$01                      ; 01840 ×0
  9842  D0 2F     BNE $9873                     ; 01842 ×0
  9844  BD 38 05  LDA $0538,X                   ; 01844 ×0
  9847  F0 66     BEQ $98AF                     ; 01847 ×0
  9849  BD 38 05  LDA $0538,X                   ; 01849 inferred, not run
  984C  29 1F     AND #$1F                      ; 0184C inferred, not run
  984E  A8        TAY                           ; 0184E inferred, not run
  984F  88        DEY                           ; 0184F inferred, not run
  9850  84 21     STY $21                       ; 01850 inferred, not run
  9852  A5 81     LDA $81                       ; 01852 inferred, not run
  9854  29 08     AND #$08                      ; 01854 inferred, not run
  9856  F0 1E     BEQ $9876                     ; 01856 inferred, not run
  9858  A9 40     LDA #$40                      ; 01858 inferred, not run
  985A  19 B1 04  ORA $04B1,Y                   ; 0185A inferred, not run
  985D  99 B1 04  STA $04B1,Y                   ; 0185D inferred, not run
  9860  A9 D4     LDA #$D4                      ; 01860 inferred, not run
  9862  99 47 05  STA $0547,Y                   ; 01862 inferred, not run
  9865  20 C3 DE  JSR sub_B0_DEC3               ; 01865 inferred, not run
  9868  A9 00     LDA #$00                      ; 01868 inferred, not run
  986A  99 C0 04  STA $04C0,Y                   ; 0186A inferred, not run
  986D  9D C0 04  STA $04C0,X                   ; 0186D inferred, not run
  9870  4C 06 99  JMP $9906                     ; 01870 inferred, not run
  9873  4C F3 98  JMP $98F3                     ; 01873 ×0
  9876  BD 75 04  LDA $0475,X                   ; 01876 inferred, not run
  9879  D0 30     BNE $98AB                     ; 01879 inferred, not run
  987B  A9 37     LDA #$37                      ; 0187B inferred, not run
  987D  85 8C     STA $8C                       ; 0187D inferred, not run
  987F  20 61 DC  JSR $DC61                     ; 0187F inferred, not run
  9882  A9 0C     LDA #$0C                      ; 01882 inferred, not run
  9884  85 DC     STA $DC                       ; 01884 inferred, not run
  9886  BD 84 04  LDA $0484,X                   ; 01886 inferred, not run
  9889  29 80     AND #$80                      ; 01889 inferred, not run
  988B  9D 56 05  STA $0556,X                   ; 0188B inferred, not run
  988E  49 80     EOR #$80                      ; 0188E inferred, not run
  9890  85 15     STA $15                       ; 01890 inferred, not run
  9892  20 C0 E3  JSR $E3C0                     ; 01892 inferred, not run
  9895  A5 81     LDA $81                       ; 01895 inferred, not run
  9897  29 08     AND #$08                      ; 01897 inferred, not run
  9899  F0 09     BEQ $98A4                     ; 01899 inferred, not run
  989B  A4 21     LDY $21                       ; 0189B inferred, not run
  989D  A9 00     LDA #$00                      ; 0189D inferred, not run
  989F  99 C0 04  STA $04C0,Y                   ; 0189F inferred, not run
  98A2  F0 62     BEQ $9906                     ; 018A2 inferred, not run
  98A4  A9 FF     LDA #$FF                      ; 018A4 inferred, not run
  98A6  9D C0 04  STA $04C0,X                   ; 018A6 inferred, not run
  98A9  D0 5B     BNE $9906                     ; 018A9 inferred, not run
  98AB  A9 80     LDA #$80                      ; 018AB inferred, not run
  98AD  D0 37     BNE $98E6                     ; 018AD inferred, not run
  98AF  B9 74 05  LDA $0574,Y                   ; 018AF ×0
  98B2  F0 06     BEQ $98BA                     ; 018B2 ×0
  98B4  A9 00     LDA #$00                      ; 018B4 inferred, not run
  98B6  9D 83 05  STA $0583,X                   ; 018B6 inferred, not run
  98B9  60        RTS                           ; 018B9 inferred, not run
  98BA  BD C1 03  LDA $03C1,X                   ; 018BA ×0
  98BD  C9 5D     CMP #$5D                      ; 018BD ×0
  98BF  D0 04     BNE $98C5                     ; 018BF ×0
  98C1  A9 70     LDA #$70                      ; 018C1 inferred, not run
  98C3  D0 0A     BNE $98CF                     ; 018C3 inferred, not run
  98C5  C9 5E     CMP #$5E                      ; 018C5 ×0
  98C7  D0 04     BNE $98CD                     ; 018C7 ×0
  98C9  A9 60     LDA #$60                      ; 018C9 inferred, not run
  98CB  D0 02     BNE $98CF                     ; 018CB inferred, not run
  98CD  A9 50     LDA #$50                      ; 018CD ×0
  98CF  20 4D 8D  JSR sub_B0_8D4D               ; 018CF ×0
  98D2  D0 10     BNE $98E4                     ; 018D2 ×0
  98D4  9D CF 04  STA $04CF,X                   ; 018D4 ×0
  98D7  A9 FC     LDA #$FC                      ; 018D7 ×0
  98D9  9D C0 04  STA $04C0,X                   ; 018D9 ×0
  98DC  FE 83 05  INC $0583,X                   ; 018DC ×0
  98DF  A9 40     LDA #$40                      ; 018DF ×0
  98E1  9D 65 05  STA $0565,X                   ; 018E1 ×0
  98E4  A9 E0     LDA #$E0                      ; 018E4 ×0
  98E6  20 7A 8E  JSR sub_B0_8E7A               ; 018E6 ×0
  98E9  20 AD E4  JSR sub_B0_E4AD               ; 018E9 ×0
  98EC  BD FC 04  LDA $04FC,X                   ; 018EC ×0
  98EF  D0 32     BNE $9923                     ; 018EF ×0
  98F1  F0 35     BEQ $9928                     ; 018F1 ×0
  98F3  BC 92 05  LDY $0592,X                   ; 018F3 ×0
  98F6  20 32 E3  JSR sub_B0_E332               ; 018F6 ×0
  98F9  BD 56 05  LDA $0556,X                   ; 018F9 ×0
  98FC  69 40     ADC #$40                      ; 018FC ×0
  98FE  4A        LSR A                         ; 018FE ×0
  98FF  5D A2 04  EOR $04A2,X                   ; 018FF ×0
  9902  29 40     AND #$40                      ; 01902 ×0
  9904  F0 08     BEQ $990E                     ; 01904 ×0
  9906  A9 00     LDA #$00                      ; 01906 ×0
  9908  9D 83 05  STA $0583,X                   ; 01908 ×0
  990B  9D FC 04  STA $04FC,X                   ; 0190B ×0
  990E  BD C0 04  LDA $04C0,X                   ; 0190E ×0
  9911  F0 05     BEQ $9918                     ; 01911 ×0
  9913  A9 20     LDA #$20                      ; 01913 ×0
  9915  20 7A 8E  JSR sub_B0_8E7A               ; 01915 ×0
  9918  20 AD E4  JSR sub_B0_E4AD               ; 01918 ×0
  991B  20 36 99  JSR sub_B0_9936               ; 0191B ×0
  991E  BD FC 04  LDA $04FC,X                   ; 0191E ×0
  9921  F0 09     BEQ $992C                     ; 01921 ×0
  9923  A9 03     LDA #$03                      ; 01923 ×0
  9925  4C F6 DA  JMP sub_B0_DAF6               ; 01925 ×0
  9928  A9 1C     LDA #$1C                      ; 01928 ×0
  992A  D0 06     BNE $9932                     ; 0192A ×0
  992C  20 D5 E2  JSR sub_B0_E2D5               ; 0192C ×0

sub_B0_992F:                    ; from 01713
  992F  B9 42 99  LDA $9942,Y                   ; 0192F ×0
  9932  9D D0 03  STA $03D0,X                   ; 01932 ×0
  9935  60        RTS                           ; 01935 ×0

sub_B0_9936:                    ; from 0191b
  9936  A9 04     LDA #$04                      ; 01936 ×0
  9938  18        CLC                           ; 01938 ×0
  9939  7D 65 05  ADC $0565,X                   ; 01939 ×0
  993C  30 03     BMI $9941                     ; 0193C ×0
  993E  9D 65 05  STA $0565,X                   ; 0193E ×0
  9941  60        RTS                           ; 01941 ×0
  9942  .byte 1C 1D 1E 1D 24 24 25 25 26 27 28 27 20 66 FE D0   ; 01942
  9952  .byte EE 84 15 B9 C1 03 38 E9 06 A8 B9 74 05 D0 6E 84   ; 01952
  9962  .byte 21 A4 15 BD 93 04 D9 93 04 B0 62 BD 56 05 F0 10   ; 01962
  9972  .byte BD FD 03 F9 92 05 90 55 C9 10 A9 0E 90 10 B0 4D   ; 01972
  9982  .byte BD FD 03 F9 92 05 B0 45 C9 F0 A9 F1 90 3F 79 92   ; 01982
  9992  .byte 05 9D FD 03 B9 92 05 FD FD 03 69 10 C9 20 B0 2D   ; 01992
  99A2  .byte A9 10 9D 65 05 BD A1 05 69 08 9D A1 05 90 1E BD   ; 019A2
  99B2  .byte 39 04 E9 28 99 39 04 BD 2A 04 E9 00 99 2A 04 A9   ; 019B2
  99C2  .byte 20 85 DC A9 82 20 01 E0 A9 40 9D 65 05 60 4C 80   ; 019C2
  99D2  .byte D0 A9 1E 85 B2 BD 47 05 1D 74 05 D0 0A A2 0C A9   ; 019D2
  99E2  .byte 72 20 4A 91 4C 85 9A BD A1 05 F0 07 DE A1 05 DE   ; 019E2
  99F2  .byte 74 05 60 BD FC 04 C9 28 90 44 BD A2 04 30 3F A9   ; 019F2
  9A02  .byte 01 20 3B F7 30 38 98 9D 29 05 BD 93 04 9D 83 05   ; 01A02
  9A12  .byte A9 00 9D 74 05 9D 47 05 A9 FF 9D 2A 04 A9 FA 9D   ; 01A12
  9A22  .byte 39 04 A9 FD 9D 0B 05 A9 1D 9D C1 03 A9 3D 9D D0   ; 01A22
  9A32  .byte 03 A9 75 A2 0F 20 4A 91 20 72 9B 4C 9C 9A 20 68   ; 01A32
  9A42  .byte 9B FE FC 04 F0 88 BD 74 05 D0 33 FE 74 05 FE 74   ; 01A42
  9A52  .byte 05 A9 02 9D C0 04 BD ED 04 29 80 9D 92 05 DE 92   ; 01A52
  9A62  .byte 05 A9 3B 9D 0B 05 A4 82 BD D0 03 C9 39 90 05 A9   ; 01A62
  9A72  .byte 00 20 66 FE 20 A2 8B 98 AA A4 82 4C 6D B1 A9 F8   ; 01A72
  9A82  .byte 20 7A 8E BD 0B 05 D0 12 BD EE 03 9D ED 04 DE 0B   ; 01A82
  9A92  .byte 05 20 E9 E2 9D 29 05 20 72 9B BD ED 04 DD 92 05   ; 01A92
  9AA2  .byte F0 0C A9 FE B0 02 A9 01 7D ED 04 9D ED 04 20 FC   ; 01AA2
  9AB2  .byte 92 BD 0B 05 C9 3B F0 49 18 7D 83 05 C9 0C B0 0E   ; 01AB2
  9AC2  .byte C9 04 90 51 BD C1 03 C9 1D D0 08 A9 0C 18 9D 83   ; 01AC2
  9AD2  .byte 05 B0 5F BC 29 05 20 72 9B DD ED 04 D0 54 BD C1   ; 01AD2
  9AE2  .byte 03 C9 1D D0 1E A2 0F A9 79 20 4A 91 BC 29 05 B9   ; 01AE2
  9AF2  .byte 1A 05 18 69 08 C9 30 B0 03 99 1A 05 E6 D0 4C 80   ; 01AF2
  9B02  .byte D0 F0 5F A5 15 C9 07 B0 07 DE 83 05 F0 07 D0 22   ; 01B02
  9B12  .byte BD 0B 05 30 03 4C 80 D0 A2 0F A9 77 20 4A 91 BC   ; 01B12
  9B22  .byte 29 05 B9 1A 05 38 E9 08 99 1A 05 E6 D0 A9 02 9D   ; 01B22
  9B32  .byte 0B 05 BD 83 05 18 65 89 9D 1B 04 A5 8A 69 00 9D   ; 01B32
  9B42  .byte 0C 04 BD D0 03 C9 3B B0 1D BD 0B 05 C9 80 A9 40   ; 01B42
  9B52  .byte B0 02 A9 80 20 DA E2 B9 46 99 BC 0B 05 30 03 18   ; 01B52
  9B62  .byte 69 15 9D D0 03 60 A5 0B 29 03 9D A2 04 60 12 C2   ; 01B62
  9B72  .byte B9 1A 05 29 38 85 15 18 79 70 9B BC C1 03 C0 15   ; 01B72
  9B82  .byte F0 02 69 08 9D 92 05 60 EB 88                     ; 01B82
  9B8C  .byte D8 9F                                             ; 01B8C data, read by 007d5 007da
  9B8E  .byte D8 9F 2D AE                                       ; 01B8E
  9B92  .byte D7 AD                                             ; 01B92 data, read by 007d5 007da
  9B94  .byte 4B AF                                             ; 01B94
  9B96  .byte 10 B1 10 B1 D1 B5                                 ; 01B96 data, read by 007d5 007da
  9B9C  .byte D0 CF DF B4                                       ; 01B9C
  9BA0  .byte 06 E2 3A 91                                       ; 01BA0 data, read by 007d5 007da
  9BA4  .byte 50 91 52 92 0A 93 96 93 4E 94                     ; 01BA4
  9BAE  .byte 4E 94 AE 96                                       ; 01BAE data, read by 007d5 007da
  9BB2  .byte EB 95 D3 99 43 96 8B 89                           ; 01BB2
  9BBA  .byte E6 B2 5B B3                                       ; 01BBA data, read by 007d5 007da
  9BBE  .byte 65 B4                                             ; 01BBE
  9BC0  .byte 4B AF B6 AF                                       ; 01BC0 data, read by 007d5 007da
  9BC4  .byte 9C 9A 3A B6 A4 E2                                 ; 01BC4
  9BCA  .byte F9 B5                                             ; 01BCA data, read by 007d5 007da
  9BCC  .byte 9D B6                                             ; 01BCC
  9BCE  .byte E3 AD                                             ; 01BCE data, read by 007d5 007da
  9BD0  .byte D4 B6 D4 B6 D4 B6                                 ; 01BD0
  9BD6  .byte BC B6                                             ; 01BD6 data, read by 007d5 007da
  9BD8  .byte 61 B7 2D B9 9D B6 D0 B6 88 B9                     ; 01BD8
  9BE2  .byte AE B9                                             ; 01BE2 data, read by 007d5 007da
  9BE4  .byte C1 B9 24 BB 12 BC                                 ; 01BE4
  9BEA  .byte 93 BC                                             ; 01BEA data, read by 007d5 007da
  9BEC  .byte AE BD 0B F6 51 F6                                 ; 01BEC
  9BF2  .byte 4F E9                                             ; 01BF2 data, read by 007d5 007da
  9BF4  .byte 72 E8 DD E7 FD EA 94 F7                           ; 01BF4
  9BFC  .byte 31 FA E1 FA                                       ; 01BFC data, read by 007d5 007da
  9C00  .byte 17 FC 5A FC 2C FD C2 E8 36 FC 8F FD B2 FD         ; 01C00
  9C0E  .byte 03 FE                                             ; 01C0E data, read by 007d5 007da
  9C10  .byte 1D FC 9E FD 8F FD 16 EC                           ; 01C10
  9C18  .byte 95 EC                                             ; 01C18 data, read by 007d5 007da
  9C1A  .byte BD ED FE ED                                       ; 01C1A
  9C1E  .byte 2B EE                                             ; 01C1E data, read by 007d5 007da
  9C20  .byte 58 B4                                             ; 01C20
  9C22  .byte C7 EE CB EE D2 EE DE EE 45 EF                     ; 01C22 data, read by 007d5 007da
  9C2C  .byte 7B EF 42 F0 7C F0 E9 F0 E9 F0 54 F3 42 F4 CB F4   ; 01C2C
  9C3C  .byte 06 F4 E3 F4 F7 B3                                 ; 01C3C
  9C42  .byte 0E BF                                             ; 01C42 data, read by 007d5 007da
  9C44  .byte A2 D0 A2 D0                                       ; 01C44
  9C48  .byte 1E D1                                             ; 01C48 data, read by 007d5 007da
  9C4A  .byte A6 D1 50 F3 DA D1 3E 92 9A AE 00 92 57 C2 44 C0   ; 01C4A
  9C5A  .byte C7 C0 B6 C1 1A C2 1D C3                           ; 01C5A
  9C62  .byte 19 C4 C4 C4                                       ; 01C62 data, read by 007d5 007da
  9C66  .byte 56 C6 1A C7 CF C7 CF C7 E8 C5 3F D3               ; 01C66
  9C72  .byte 8D C8                                             ; 01C72 data, read by 007d5 007da
  9C74  .byte D4 C8 72 C9                                       ; 01C74
  9C78  .byte F9 C9                                             ; 01C78 data, read by 007d5 007da
  9C7A  .byte A4 CA E4 CB                                       ; 01C7A
  9C7E  .byte BD D6                                             ; 01C7E data, read by 007d5 007da
  9C80  .byte 74 CB B6 CD 74 CE                                 ; 01C80
  9C86  .byte 9C D3                                             ; 01C86 data, read by 007d5 007da
  9C88  .byte 20 D3 11                                          ; 01C88
  9C8B  .byte 11                                                ; 01C8B data, read by 00c30 00c4f
  9C8C  .byte 11 11 11 11 11 11 11 11 11                        ; 01C8C
  9C95  .byte 11                                                ; 01C95 data, read by 00c4f 00c30
  9C96  .byte 11 11 11 11 11 11                                 ; 01C96
  9C9C  .byte 11 11                                             ; 01C9C data, read by 00c4f 00c30
  9C9E  .byte 11 11 11 11                                       ; 01C9E
  9CA2  .byte 08                                                ; 01CA2 data, read by 00c30
  9CA3  .byte 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11 11   ; 01CA3
  9CB3  .byte 11 11 11 11 11 11 11 11 11 11 16 11 11 11 03 06   ; 01CB3
  9CC3  .byte 11 11 11 08 06 11 08 04 00 00 00 00 04 0C         ; 01CC3
  9CD1  .byte 11                                                ; 01CD1 data, read by 00c4f 00c30
  9CD2  .byte 00 00 00 00 00 00 00 00                           ; 01CD2
  9CDA  .byte 08                                                ; 01CDA data, read by 00c4f
  9CDB  .byte 04 0C 04 0C 0C 0C 04 02 00 0C 00                  ; 01CDB
  9CE6  .byte 0C                                                ; 01CE6 data, read by 00c4f 00c30
  9CE7  .byte 0C 0C 04 08 0C 04 00 11 11 20 00 00 00 00 00 00   ; 01CE7
  9CF7  .byte 0E                                                ; 01CF7 data, read by 00c4f
  9CF8  .byte 11 08 11 0C 10 10                                 ; 01CF8
  9CFE  .byte 04                                                ; 01CFE data, read by 00c30
  9CFF  .byte 04 04 11 11 18 18 16 14 12                        ; 01CFF
  9D08  .byte 11 01 04                                          ; 01D08 data, read by 00c30 00c4f 00e7f
  9D0B  .byte 04 05 05 05                                       ; 01D0B
  9D0F  .byte 05                                                ; 01D0F data, read by 00e7f
  9D10  .byte 05 05 05 05                                       ; 01D10
  9D14  .byte 07                                                ; 01D14 data, read by 00e7f
  9D15  .byte 05 05 05 05 05 05                                 ; 01D15
  9D1B  .byte 05                                                ; 01D1B data, read by 00e7f
  9D1C  .byte 04 05 05 04 08 05 05 0F                           ; 01D1C
  9D24  .byte 04 04                                             ; 01D24 data, read by 00e7f
  9D26  .byte 04 04 04 04 08 00 00 00 00                        ; 01D26
  9D2F  .byte 05                                                ; 01D2F data, read by 00e7f
  9D30  .byte 00 0F 04 00 02                                    ; 01D30
  9D35  .byte 04                                                ; 01D35 data, read by 00e7f
  9D36  .byte 0F 04 03 04 04 04 04 03 03 04 04 04               ; 01D36
  9D42  .byte 04                                                ; 01D42 data, read by 00e7f
  9D43  .byte 05 04 04 03 04 04 04 04 04 04 04 04 07            ; 01D43
  9D50  .byte 04                                                ; 01D50 data, read by 00e7f
  9D51  .byte 04 04 04 04 04 04 04 04                           ; 01D51
  9D59  .byte 04                                                ; 01D59 data, read by 00e7f
  9D5A  .byte 04 04 04 04 04 04 08 04 00 04 00                  ; 01D5A
  9D65  .byte 04                                                ; 01D65 data, read by 00e7f
  9D66  .byte 04 04 04 04 04 02 04 05 0F 01 04 04 04 06 04      ; 01D66
  9D75  .byte 02 04                                             ; 01D75 data, read by 00e7f
  9D77  .byte 04 04 04 04 04 03 04 04 04 04 04 06 04 06 04 04   ; 01D77
  9D87  .byte 0C 53                                             ; 01D87 data, read by 00e7f 00b20
  9D89  .byte 53 00                                             ; 01D89
  9D8B  .byte 00                                                ; 01D8B data, read by 00b20
  9D8C  .byte 44                                                ; 01D8C
  9D8D  .byte 00                                                ; 01D8D data, read by 00b20
  9D8E  .byte 00 00 00 08                                       ; 01D8E
  9D92  .byte 53 00                                             ; 01D92 data, read by 00b20
  9D94  .byte 00 00 00 00 51                                    ; 01D94
  9D99  .byte 51 51                                             ; 01D99 data, read by 00b20
  9D9B  .byte 51 51 51 51                                       ; 01D9B
  9D9F  .byte 00 00                                             ; 01D9F data, read by 00b20
  9DA1  .byte 00                                                ; 01DA1
  9DA2  .byte 44 64                                             ; 01DA2 data, read by 00b20
  9DA4  .byte 00 00 00                                          ; 01DA4
  9DA7  .byte 00                                                ; 01DA7 data, read by 00b20
  9DA8  .byte 00                                                ; 01DA8
  9DA9  .byte 00                                                ; 01DA9 data, read by 00b20
  9DAA  .byte 00 00 00 00 00 00 00 00 00                        ; 01DAA
  9DB3  .byte 00                                                ; 01DB3 data, read by 00b20
  9DB4  .byte 51 00 00                                          ; 01DB4
  9DB7  .byte 00                                                ; 01DB7 data, read by 00b20
  9DB8  .byte 51 00 11                                          ; 01DB8
  9DBB  .byte 00                                                ; 01DBB data, read by 00b20
  9DBC  .byte 00 00 00 53                                       ; 01DBC
  9DC0  .byte 00 00                                             ; 01DC0 data, read by 00b20
  9DC2  .byte 04 40 00 00 40 00 00                              ; 01DC2
  9DC9  .byte 00                                                ; 01DC9 data, read by 00b20
  9DCA  .byte 00 00 40 51                                       ; 01DCA
  9DCE  .byte 51                                                ; 01DCE data, read by 00b20
  9DCF  .byte 00 00                                             ; 01DCF
  9DD1  .byte 00                                                ; 01DD1 data, read by 00b20
  9DD2  .byte 00                                                ; 01DD2
  9DD3  .byte 00 00 00 00 51                                    ; 01DD3 data, read by 00b20
  9DD8  .byte 40 40 40 40 40 00 40 00 00 11 00                  ; 01DD8
  9DE3  .byte 51                                                ; 01DE3 data, read by 00b20
  9DE4  .byte 00 00                                             ; 01DE4
  9DE6  .byte 00                                                ; 01DE6 data, read by 00b20
  9DE7  .byte 00 00 51 00 44 00 51 00 00 00 00 00 00            ; 01DE7
  9DF4  .byte 51                                                ; 01DF4 data, read by 00b20
  9DF5  .byte 51 51 51 51 51 00                                 ; 01DF5
  9DFB  .byte 00                                                ; 01DFB data, read by 00b20
  9DFC  .byte 00 00 00 00 53 00 53 53 51                        ; 01DFC
  9E05  .byte 51 1E                                             ; 01E05 data, read by 00b20 01e1f
  9E07  .byte 00 1E 00 00 1E 00 00 00 00 00 1E                  ; 01E07

sub_B0_9E12:                    ; from 0291f 02132 0237e
  9E12  BD FD 03  LDA $03FD,X                   ; 01E12 ×56321
  9E15  38        SEC                           ; 01E15 ×56321
  9E16  E5 87     SBC $87                       ; 01E16 ×56321
  9E18  A8        TAY                           ; 01E18 ×56321
  9E19  C0 1A     CPY #$1A                      ; 01E19 ×56321
  9E1B  B0 09     BCS loc_B0_9E26               ; 01E1B ×56321
  9E1D  A6 10     LDX $10                       ; 01E1D ×90
  9E1F  BD 05 9E  LDA $9E05,X                   ; 01E1F ×90
  9E22  85 B2     STA $B2                       ; 01E22 ×90
  9E24  A6 82     LDX $82                       ; 01E24 ×90

loc_B0_9E26:                    ; from 01e1b
  9E26  A9 16     LDA #$16                      ; 01E26 ×56321
  9E28  C0 16     CPY #$16                      ; 01E28 ×56321
  9E2A  90 06     BCC loc_B0_9E32               ; 01E2A ×56321
  9E2C  C0 EF     CPY #$EF                      ; 01E2C ×56317
  9E2E  90 1D     BCC loc_B0_9E4D               ; 01E2E ×56317
  9E30  A9 ED     LDA #$ED                      ; 01E30 ×350

loc_B0_9E32:                    ; from 01e2a
  9E32  20 FD 92  JSR sub_B0_92FD               ; 01E32 ×354
  9E35  20 BF 9E  JSR sub_B0_9EBF               ; 01E35 ×354
  9E38  A9 01     LDA #$01                      ; 01E38 ×354
  9E3A  E0 02     CPX #$02                      ; 01E3A ×354
  9E3C  B0 0C     BCS $9E4A                     ; 01E3C ×354
  9E3E  A9 00     LDA #$00                      ; 01E3E ×354
  9E40  9D BD 05  STA $05BD,X                   ; 01E40 ×354
  9E43  BD 56 05  LDA $0556,X                   ; 01E43 ×354
  9E46  29 78     AND #$78                      ; 01E46 ×354
  9E48  D0 03     BNE loc_B0_9E4D               ; 01E48 ×354
  9E4A  9D 65 05  STA $0565,X                   ; 01E4A ×275

loc_B0_9E4D:                    ; from 01e2e 01e48
  9E4D  60        RTS                           ; 01E4D ×56321
  9E4E  .byte A9 FE 18 20 EE 8E A9 FE 20 6A D0                  ; 01E4E

sub_B0_9E59:                    ; from 02367 06203 044a8 06cd8 03eaf
  9E59  BD 47 05  LDA $0547,X                   ; 01E59 ×16195
  9E5C  F0 50     BEQ loc_B0_9EAE               ; 01E5C ×16195
  9E5E  C9 31     CMP #$31                      ; 01E5E ×16192
  9E60  90 12     BCC loc_B0_9E74               ; 01E60 ×16192
  9E62  BD 38 05  LDA $0538,X                   ; 01E62 ×7278
  9E65  10 0D     BPL loc_B0_9E74               ; 01E65 ×7278
  9E67  20 47 DE  JSR sub_B0_DE47               ; 01E67 ×1
  9E6A  A9 04     LDA #$04                      ; 01E6A ×1
  9E6C  99 C0 04  STA $04C0,Y                   ; 01E6C ×1
  9E6F  A9 A0     LDA #$A0                      ; 01E6F ×1
  9E71  99 65 05  STA $0565,Y                   ; 01E71 ×1

loc_B0_9E74:                    ; from 01e60 01e65
  9E74  DE 47 05  DEC $0547,X                   ; 01E74 ×16192
  9E77  D0 35     BNE loc_B0_9EAE               ; 01E77 ×16192
  9E79  E0 02     CPX #$02                      ; 01E79 ×176
  9E7B  90 06     BCC loc_B0_9E83               ; 01E7B ×176
  9E7D  20 E9 E2  JSR sub_B0_E2E9               ; 01E7D ×44
  9E80  4C 8B 9E  JMP loc_B0_9E8B               ; 01E80 ×44

loc_B0_9E83:                    ; from 01e7b
  9E83  A9 00     LDA #$00                      ; 01E83 ×132
  9E85  9D BF 05  STA $05BF,X                   ; 01E85 ×132
  9E88  9D C1 05  STA $05C1,X                   ; 01E88 ×132

loc_B0_9E8B:                    ; from 01e80
  9E8B  BD A2 04  LDA $04A2,X                   ; 01E8B ×176
  9E8E  0A        ASL A                         ; 01E8E ×176
  9E8F  29 80     AND #$80                      ; 01E8F ×176
  9E91  9D 56 05  STA $0556,X                   ; 01E91 ×176
  9E94  BD 74 05  LDA $0574,X                   ; 01E94 ×176
  9E97  D0 0D     BNE loc_B0_9EA6               ; 01E97 ×176

sub_B0_9E99:                    ; from 04db3 00a91 05171
  9E99  A9 00     LDA #$00                      ; 01E99 ×3635
  9E9B  9D 47 05  STA $0547,X                   ; 01E9B ×3635
  9E9E  BD 1A 05  LDA $051A,X                   ; 01E9E ×3635
  9EA1  09 07     ORA #$07                      ; 01EA1 ×3635

sub_B0_9EA3:                    ; from 02437
  9EA3  9D 1A 05  STA $051A,X                   ; 01EA3 ×3650

loc_B0_9EA6:                    ; from 01e97
  9EA6  A9 BF     LDA #$BF                      ; 01EA6 ×3679

sub_B0_9EA8:                    ; from 01407
  9EA8  3D B1 04  AND $04B1,X                   ; 01EA8 ×3679
  9EAB  9D B1 04  STA $04B1,X                   ; 01EAB ×3679

loc_B0_9EAE:                    ; from 01e77 01e5c
  9EAE  60        RTS                           ; 01EAE ×19698
  9EAF  .byte FF 00 80                                          ; 01EAF data, read by 026ff 02798 027bf
  9EB2  .byte 40                                                ; 01EB2
  9EB3  .byte C0 E4 9C                                          ; 01EB3 data, read by 02798 027bf 026ff
  9EB6  .byte C0                                                ; 01EB6
  9EB7  .byte 40 1C 64                                          ; 01EB7 data, read by 02798 027bf 026ff
  9EBA  .byte 40 00 00 80 00                                    ; 01EBA

sub_B0_9EBF:                    ; from 01e35 02730 02049
  9EBF  BD A2 04  LDA $04A2,X                   ; 01EBF ×361
  9EC2  29 EF     AND #$EF                      ; 01EC2 ×361
  9EC4  9D A2 04  STA $04A2,X                   ; 01EC4 ×361
  9EC7  A9 80     LDA #$80                      ; 01EC7 ×361
  9EC9  DD 65 05  CMP $0565,X                   ; 01EC9 ×361
  9ECC  B0 03     BCS loc_B0_9ED1               ; 01ECC ×361
  9ECE  9D 65 05  STA $0565,X                   ; 01ECE ×51

loc_B0_9ED1:                    ; from 01ecc
  9ED1  60        RTS                           ; 01ED1 ×361

loc_B0_9ED2:                    ; from 01f99
  9ED2  A9 FD     LDA #$FD                      ; 01ED2 ×1510
  9ED4  9D C0 04  STA $04C0,X                   ; 01ED4 ×1510
  9ED7  A9 80     LDA #$80                      ; 01ED7 ×1510
  9ED9  9D CF 04  STA $04CF,X                   ; 01ED9 ×1510
  9EDC  A9 00     LDA #$00                      ; 01EDC ×1510
  9EDE  20 7A 8E  JSR sub_B0_8E7A               ; 01EDE ×1510
  9EE1  20 AD E4  JSR sub_B0_E4AD               ; 01EE1 ×1510
  9EE4  A9 24     LDA #$24                      ; 01EE4 ×1510
  9EE6  9D B5 03  STA $03B5,X                   ; 01EE6 ×1510
  9EE9  A5 C8     LDA $C8                       ; 01EE9 ×1510
  9EEB  18        CLC                           ; 01EEB ×1510
  9EEC  69 6E     ADC #$6E                      ; 01EEC ×1510
  9EEE  7D 83 05  ADC $0583,X                   ; 01EEE ×1510
  9EF1  0A        ASL A                         ; 01EF1 ×1510
  9EF2  5D 56 05  EOR $0556,X                   ; 01EF2 ×1510
  9EF5  10 10     BPL loc_B0_9F07               ; 01EF5 ×1510
  9EF7  BD 65 05  LDA $0565,X                   ; 01EF7 ×710
  9EFA  D0 08     BNE loc_B0_9F04               ; 01EFA ×710
  9EFC  BD 56 05  LDA $0556,X                   ; 01EFC ×20
  9EFF  49 80     EOR #$80                      ; 01EFF ×20
  9F01  9D 56 05  STA $0556,X                   ; 01F01 ×20

loc_B0_9F04:                    ; from 01efa
  9F04  4C 9B A8  JMP loc_B0_A89B               ; 01F04 ×710

loc_B0_9F07:                    ; from 01ef5
  9F07  A0 80     LDY #$80                      ; 01F07 ×800
  9F09  A9 0C     LDA #$0C                      ; 01F09 ×800
  9F0B  4C 66 A8  JMP loc_B0_A866               ; 01F0B ×800
  9F0E  .byte 0F                                                ; 01F0E
  9F0F  .byte 0F 03 0F 03 03 0F 03 03 03                        ; 01F0F data, read by 0278d
  9F18  .byte 03                                                ; 01F18
  9F19  .byte 03 0F 03                                          ; 01F19 data, read by 0278d
  9F1C  .byte 80                                                ; 01F1C
  9F1D  .byte 80 C0 80 80 80 80 80 90 80                        ; 01F1D data, read by 02800
  9F26  .byte 80                                                ; 01F26
  9F27  .byte 80 80 80                                          ; 01F27 data, read by 02800
  9F2A  4C AA 87  JMP $87AA                     ; 01F2A inferred, not run
  9F2D  DE B2 05  DEC $05B2,X                   ; 01F2D inferred, not run
  9F30  F0 F8     BEQ $9F2A                     ; 01F30 inferred, not run
  9F32  BD B2 05  LDA $05B2,X                   ; 01F32 inferred, not run
  9F35  C9 7F     CMP #$7F                      ; 01F35 inferred, not run
  9F37  D0 0A     BNE $9F43                     ; 01F37 inferred, not run
  9F39  9D CF 04  STA $04CF,X                   ; 01F39 inferred, not run
  9F3C  A9 05     LDA #$05                      ; 01F3C inferred, not run
  9F3E  9D C0 04  STA $04C0,X                   ; 01F3E inferred, not run
  9F41  A9 70     LDA #$70                      ; 01F41 inferred, not run
  9F43  C9 57     CMP #$57                      ; 01F43 inferred, not run
  9F45  B0 0A     BCS $9F51                     ; 01F45 inferred, not run
  9F47  BD A2 04  LDA $04A2,X                   ; 01F47 inferred, not run
  9F4A  09 20     ORA #$20                      ; 01F4A inferred, not run
  9F4C  9D A2 04  STA $04A2,X                   ; 01F4C inferred, not run
  9F4F  A9 70     LDA #$70                      ; 01F4F inferred, not run
  9F51  C9 DF     CMP #$DF                      ; 01F51 inferred, not run
  9F53  A9 00     LDA #$00                      ; 01F53 inferred, not run
  9F55  B0 0C     BCS $9F63                     ; 01F55 inferred, not run
  9F57  A5 87     LDA $87                       ; 01F57 inferred, not run
  9F59  C9 7E     CMP #$7E                      ; 01F59 inferred, not run
  9F5B  90 04     BCC $9F61                     ; 01F5B inferred, not run
  9F5D  A9 1E     LDA #$1E                      ; 01F5D inferred, not run
  9F5F  85 B2     STA $B2                       ; 01F5F inferred, not run
  9F61  A9 01     LDA #$01                      ; 01F61 inferred, not run
  9F63  85 15     STA $15                       ; 01F63 inferred, not run
  9F65  B5 29     LDA $29,X                     ; 01F65 inferred, not run
  9F67  29 30     AND #$30                      ; 01F67 inferred, not run
  9F69  05 15     ORA $15                       ; 01F69 inferred, not run
  9F6B  95 29     STA $29,X                     ; 01F6B inferred, not run
  9F6D  B5 2B     LDA $2B,X                     ; 01F6D inferred, not run
  9F6F  29 30     AND #$30                      ; 01F6F inferred, not run
  9F71  95 2B     STA $2B,X                     ; 01F71 inferred, not run
  9F73  4C 33 A7  JMP loc_B0_A733               ; 01F73 inferred, not run
  9F76  .byte A9 01 4C F6 DA                                    ; 01F76
  9F7B  20 8E 9F  JSR sub_B0_9F8E               ; 01F7B ×0
  9F7E  A5 10     LDA $10                       ; 01F7E inferred, not run
  9F80  C9 02     CMP #$02                      ; 01F80 inferred, not run
  9F82  D0 05     BNE $9F89                     ; 01F82 inferred, not run
  9F84  A9 35     LDA #$35                      ; 01F84 inferred, not run
  9F86  4C 88 AD  JMP loc_B0_AD88               ; 01F86 inferred, not run
  9F89  A9 2F     LDA #$2F                      ; 01F89 inferred, not run
  9F8B  4C 88 AD  JMP loc_B0_AD88               ; 01F8B inferred, not run

sub_B0_9F8E:                    ; from 06183 01f7b
  9F8E  A9 FE     LDA #$FE                      ; 01F8E ×183
  9F90  20 6A D0  JSR sub_B0_D06A               ; 01F90 ×183
  9F93  20 4C 8F  JSR sub_B0_8F4C               ; 01F93 ×183
  9F96  4C 6B B0  JMP sub_B0_B06B               ; 01F96 ×183

loc_B0_9F99:                    ; from 020bc
  9F99  4C D2 9E  JMP loc_B0_9ED2               ; 01F99 ×1510
  9F9C  .byte 4C 19 A1                                          ; 01F9C
  9F9F  4C 2D 9F  JMP $9F2D                     ; 01F9F inferred, not run
  9FA2  A5 10     LDA $10                       ; 01FA2 inferred, not run
  9FA4  C9 01     CMP #$01                      ; 01FA4 inferred, not run
  9FA6  F0 F7     BEQ $9F9F                     ; 01FA6 inferred, not run
  9FA8  A9 77     LDA #$77                      ; 01FA8 inferred, not run
  9FAA  9D 74 05  STA $0574,X                   ; 01FAA inferred, not run
  9FAD  8A        TXA                           ; 01FAD inferred, not run
  9FAE  49 01     EOR #$01                      ; 01FAE inferred, not run
  9FB0  A8        TAY                           ; 01FB0 inferred, not run
  9FB1  B9 C1 03  LDA $03C1,Y                   ; 01FB1 inferred, not run
  9FB4  F0 08     BEQ $9FBE                     ; 01FB4 inferred, not run
  9FB6  B9 B2 05  LDA $05B2,Y                   ; 01FB6 inferred, not run
  9FB9  D0 03     BNE $9FBE                     ; 01FB9 inferred, not run
  9FBB  4C 6D B1  JMP sub_B0_B16D               ; 01FBB inferred, not run
  9FBE  A5 F0     LDA $F0                       ; 01FBE inferred, not run
  9FC0  C9 03     CMP #$03                      ; 01FC0 inferred, not run
  9FC2  F0 0B     BEQ $9FCF                     ; 01FC2 inferred, not run
  9FC4  DE B2 05  DEC $05B2,X                   ; 01FC4 inferred, not run
  9FC7  D0 05     BNE $9FCE                     ; 01FC7 inferred, not run
  9FC9  E6 F0     INC $F0                       ; 01FC9 inferred, not run
  9FCB  4C 7A 85  JMP $857A                     ; 01FCB inferred, not run
  9FCE  60        RTS                           ; 01FCE inferred, not run
  9FCF  A5 EB     LDA $EB                       ; 01FCF inferred, not run
  9FD1  D0 FB     BNE $9FCE                     ; 01FD1 inferred, not run
  9FD3  A9 82     LDA #$82                      ; 01FD3 inferred, not run
  9FD5  85 EB     STA $EB                       ; 01FD5 inferred, not run
  9FD7  60        RTS                           ; 01FD7 inferred, not run

jt_B0_9FD8:                    ; from 008ec
  9FD8  BD B2 05  LDA $05B2,X                   ; 01FD8 ×58783
  9FDB  D0 C5     BNE $9FA2                     ; 01FDB ×58783
  9FDD  B5 EC     LDA $EC,X                     ; 01FDD ×58783
  9FDF  F0 02     BEQ loc_B0_9FE3               ; 01FDF ×58783
  9FE1  D6 EC     DEC $EC,X                     ; 01FE1 ×424

loc_B0_9FE3:                    ; from 01fdf
  9FE3  A4 10     LDY $10                       ; 01FE3 ×58783
  9FE5  B9 1B A0  LDA $A01B,Y                   ; 01FE5 ×58783
  9FE8  D0 03     BNE loc_B0_9FED               ; 01FE8 ×58783
  9FEA  4C 92 A0  JMP loc_B0_A092               ; 01FEA ×35653

loc_B0_9FED:                    ; from 01fe8
  9FED  BD 1B 04  LDA $041B,X                   ; 01FED ×23130
  9FF0  38        SEC                           ; 01FF0 ×23130
  9FF1  FD 39 04  SBC $0439,X                   ; 01FF1 ×23130
  9FF4  85 15     STA $15                       ; 01FF4 ×23130
  9FF6  BD 0C 04  LDA $040C,X                   ; 01FF6 ×23130
  9FF9  FD 2A 04  SBC $042A,X                   ; 01FF9 ×23130
  9FFC  85 16     STA $16                       ; 01FFC ×23130
  9FFE  A5 15     LDA $15                       ; 01FFE ×23130
  A000  38        SEC                           ; 02000 ×23130
  A001  E5 89     SBC $89                       ; 02001 ×23130
  A003  A5 16     LDA $16                       ; 02003 ×23130
  A005  E5 8A     SBC $8A                       ; 02005 ×23130
  A007  F0 04     BEQ loc_B0_A00D               ; 02007 ×23130
  A009  30 2F     BMI $A03A                     ; 02009 ×0
  A00B  10 5A     BPL $A067                     ; 0200B ×0

loc_B0_A00D:                    ; from 02007
  A00D  BD B1 04  LDA $04B1,X                   ; 0200D ×23130
  A010  29 10     AND #$10                      ; 02010 ×23130
  A012  F0 19     BEQ loc_B0_A02D               ; 02012 ×23130
  A014  20 1E EE  JSR sub_B0_EE1E               ; 02014 ×0
  A017  C9 F8     CMP #$F8                      ; 02017 ×0
  A019  4C 36 A0  JMP $A036                     ; 02019 ×0
  A01C  .byte 00 00 00 FC 04 00 04 FC 04 00 FC 00               ; 0201C data, read by 01fe5

sub_B0_A028:                    ; from 00f3f 038d1
  A028  A9 89     LDA #$89                      ; 02028 ×15
  A02A  4C F6 B7  JMP sub_B0_B7F6               ; 0202A ×15

loc_B0_A02D:                    ; from 02012
  A02D  20 1E EE  JSR sub_B0_EE1E               ; 0202D ×23130
  A030  C9 0C     CMP #$0C                      ; 02030 ×23130
  A032  90 06     BCC $A03A                     ; 02032 ×23130
  A034  C9 E8     CMP #$E8                      ; 02034 ×23130
  A036  90 5A     BCC loc_B0_A092               ; 02036 ×23130
  A038  B0 2D     BCS $A067                     ; 02038 ×0
  A03A  B9 1B A0  LDA $A01B,Y                   ; 0203A ×0
  A03D  10 1C     BPL $A05B                     ; 0203D ×0
  A03F  35 29     AND $29,X                     ; 0203F ×0
  A041  95 29     STA $29,X                     ; 02041 ×0
  A043  B5 2B     LDA $2B,X                     ; 02043 ×0
  A045  29 C0     AND #$C0                      ; 02045 ×0
  A047  95 2B     STA $2B,X                     ; 02047 ×0
  A049  20 BF 9E  JSR sub_B0_9EBF               ; 02049 ×0
  A04C  A9 FE     LDA #$FE                      ; 0204C ×0
  A04E  9D C0 04  STA $04C0,X                   ; 0204E ×0
  A051  A9 00     LDA #$00                      ; 02051 ×0
  A053  9D B1 03  STA $03B1,X                   ; 02053 ×0
  A056  9D 65 05  STA $0565,X                   ; 02056 ×0
  A059  F0 37     BEQ loc_B0_A092               ; 02059 ×0
  A05B  A9 04     LDA #$04                      ; 0205B inferred, not run
  A05D  DD CE 05  CMP $05CE,X                   ; 0205D inferred, not run
  A060  90 30     BCC loc_B0_A092               ; 02060 inferred, not run
  A062  9D CE 05  STA $05CE,X                   ; 02062 inferred, not run
  A065  B0 2B     BCS loc_B0_A092               ; 02065 inferred, not run
  A067  BD D0 05  LDA $05D0,X                   ; 02067 ×0
  A06A  F0 0C     BEQ $A078                     ; 0206A ×0
  A06C  BD 74 05  LDA $0574,X                   ; 0206C ×0
  A06F  30 07     BMI $A078                     ; 0206F ×0
  A071  A9 01     LDA #$01                      ; 02071 inferred, not run
  A073  9D C0 04  STA $04C0,X                   ; 02073 inferred, not run
  A076  D0 1A     BNE loc_B0_A092               ; 02076 inferred, not run
  A078  BD 74 05  LDA $0574,X                   ; 02078 ×0
  A07B  05 EB     ORA $EB                       ; 0207B ×0
  A07D  D0 13     BNE loc_B0_A092               ; 0207D ×0
  A07F  20 1B 8F  JSR $8F1B                     ; 0207F inferred, not run
  A082  A9 20     LDA #$20                      ; 02082 inferred, not run
  A084  9D 47 05  STA $0547,X                   ; 02084 inferred, not run
  A087  DD CE 05  CMP $05CE,X                   ; 02087 inferred, not run
  A08A  90 03     BCC $A08F                     ; 0208A inferred, not run
  A08C  9D CE 05  STA $05CE,X                   ; 0208C inferred, not run
  A08F  20 28 A0  JSR sub_B0_A028               ; 0208F inferred, not run

loc_B0_A092:                    ; from 01fea 02036
  A092  BD 29 05  LDA $0529,X                   ; 02092 ×58783
  A095  F0 03     BEQ loc_B0_A09A               ; 02095 ×58783
  A097  4C 7B 9F  JMP $9F7B                     ; 02097 ×0

loc_B0_A09A:                    ; from 02095
  A09A  A9 FE     LDA #$FE                      ; 0209A ×58783
  A09C  BC D0 05  LDY $05D0,X                   ; 0209C ×58783
  A09F  30 14     BMI loc_B0_A0B5               ; 0209F ×58783
  A0A1  A9 FC     LDA #$FC                      ; 020A1 ×58783
  A0A3  A4 10     LDY $10                       ; 020A3 ×58783
  A0A5  C0 04     CPY #$04                      ; 020A5 ×58783
  A0A7  D0 0C     BNE loc_B0_A0B5               ; 020A7 ×58783
  A0A9  BC BF 05  LDY $05BF,X                   ; 020A9 ×3054
  A0AC  D0 05     BNE $A0B3                     ; 020AC ×3054
  A0AE  BC 47 05  LDY $0547,X                   ; 020AE ×3054
  A0B1  D0 02     BNE loc_B0_A0B5               ; 020B1 ×3054
  A0B3  A9 FF     LDA #$FF                      ; 020B3 ×3054

loc_B0_A0B5:                    ; from 020a7
  A0B5  20 6A D0  JSR sub_B0_D06A               ; 020B5 ×58783
  A0B8  A5 C8     LDA $C8                       ; 020B8 ×58783
  A0BA  F0 03     BEQ loc_B0_A0BF               ; 020BA ×58783
  A0BC  4C 99 9F  JMP loc_B0_9F99               ; 020BC ×1510

loc_B0_A0BF:                    ; from 020ba
  A0BF  A5 10     LDA $10                       ; 020BF ×57273
  A0C1  C9 03     CMP #$03                      ; 020C1 ×57273
  A0C3  D0 54     BNE loc_B0_A119               ; 020C3 ×57273
  A0C5  B5 E9     LDA $E9,X                     ; 020C5 ×5613
  A0C7  D0 50     BNE loc_B0_A119               ; 020C7 ×5613
  A0C9  BD A2 04  LDA $04A2,X                   ; 020C9 ×4560
  A0CC  10 4B     BPL loc_B0_A119               ; 020CC ×4560
  A0CE  A5 EB     LDA $EB                       ; 020CE ×12
  A0D0  D0 47     BNE loc_B0_A119               ; 020D0 ×12
  A0D2  BD 2A 04  LDA $042A,X                   ; 020D2 ×12
  A0D5  30 09     BMI loc_B0_A0E0               ; 020D5 ×12
  A0D7  C9 01     CMP #$01                      ; 020D7 inferred, not run
  A0D9  F0 3E     BEQ loc_B0_A119               ; 020D9 inferred, not run
  A0DB  BD 39 04  LDA $0439,X                   ; 020DB inferred, not run
  A0DE  30 39     BMI loc_B0_A119               ; 020DE inferred, not run

loc_B0_A0E0:                    ; from 020d5
  A0E0  F6 E9     INC $E9,X                     ; 020E0 ×12
  A0E2  A9 02     LDA #$02                      ; 020E2 ×12
  A0E4  85 15     STA $15                       ; 020E4 ×12

loc_B0_A0E6:                    ; from 02115
  A0E6  20 58 FE  JSR sub_B0_FE58               ; 020E6 ×36
  A0E9  A4 82     LDY $82                       ; 020E9 ×36
  A0EB  20 6D B1  JSR sub_B0_B16D               ; 020EB ×36
  A0EE  A9 2C     LDA #$2C                      ; 020EE ×36
  A0F0  9D C1 03  STA $03C1,X                   ; 020F0 ×36
  A0F3  A9 59     LDA #$59                      ; 020F3 ×36
  A0F5  9D D0 03  STA $03D0,X                   ; 020F5 ×36
  A0F8  A9 30     LDA #$30                      ; 020F8 ×36
  A0FA  05 15     ORA $15                       ; 020FA ×36
  A0FC  9D DE 04  STA $04DE,X                   ; 020FC ×36
  A0FF  A4 15     LDY $15                       ; 020FF ×36
  A101  B9 8E A1  LDA $A18E,Y                   ; 02101 ×36
  A104  9D C0 04  STA $04C0,X                   ; 02104 ×36
  A107  B9 91 A1  LDA $A191,Y                   ; 02107 ×36
  A10A  9D 56 05  STA $0556,X                   ; 0210A ×36
  A10D  B9 94 A1  LDA $A194,Y                   ; 0210D ×36
  A110  9D 65 05  STA $0565,X                   ; 02110 ×36
  A113  C6 15     DEC $15                       ; 02113 ×36
  A115  10 CF     BPL loc_B0_A0E6               ; 02115 ×36
  A117  A6 82     LDX $82                       ; 02117 ×12

loc_B0_A119:                    ; from 020c3 020cc 020c7
  A119  BD 83 05  LDA $0583,X                   ; 02119 ×57273
  A11C  F0 03     BEQ loc_B0_A121               ; 0211C ×57273
  A11E  DE 83 05  DEC $0583,X                   ; 0211E ×286

loc_B0_A121:                    ; from 0211c
  A121  BD 47 05  LDA $0547,X                   ; 02121 ×57273
  A124  D0 03     BNE loc_B0_A129               ; 02124 ×57273
  A126  4C 6D A3  JMP loc_B0_A36D               ; 02126 ×48804

loc_B0_A129:                    ; from 02124
  A129  20 A1 A8  JSR sub_B0_A8A1               ; 02129 ×8469
  A12C  A5 10     LDA $10                       ; 0212C ×8469
  A12E  C9 05     CMP #$05                      ; 0212E ×8469
  A130  F0 03     BEQ $A135                     ; 02130 ×8469
  A132  20 12 9E  JSR sub_B0_9E12               ; 02132 ×8469
  A135  A5 10     LDA $10                       ; 02135 ×8469
  A137  C9 02     CMP #$02                      ; 02137 ×8469
  A139  D0 0D     BNE loc_B0_A148               ; 02139 ×8469
  A13B  BD 74 05  LDA $0574,X                   ; 0213B ×0
  A13E  D0 08     BNE loc_B0_A148               ; 0213E ×0
  A140  A9 00     LDA #$00                      ; 02140 ×0
  A142  20 CF 8D  JSR sub_B0_8DCF               ; 02142 ×0
  A145  4C A6 A1  JMP $A1A6                     ; 02145 ×0

loc_B0_A148:                    ; from 02139
  A148  BD BF 03  LDA $03BF,X                   ; 02148 ×8469
  A14B  10 4D     BPL loc_B0_A19A               ; 0214B ×8469
  A14D  BD A2 04  LDA $04A2,X                   ; 0214D ×254
  A150  10 06     BPL loc_B0_A158               ; 02150 ×254
  A152  20 44 8F  JSR sub_B0_8F44               ; 02152 ×1
  A155  4C 5D A1  JMP loc_B0_A15D               ; 02155 ×1

loc_B0_A158:                    ; from 02150
  A158  A9 E0     LDA #$E0                      ; 02158 ×253
  A15A  20 7A 8E  JSR sub_B0_8E7A               ; 0215A ×253

loc_B0_A15D:                    ; from 02155
  A15D  A9 00     LDA #$00                      ; 0215D ×254
  A15F  9D 75 04  STA $0475,X                   ; 0215F ×254
  A162  A5 10     LDA $10                       ; 02162 ×254
  A164  C9 0A     CMP #$0A                      ; 02164 ×254
  A166  F0 04     BEQ loc_B0_A16C               ; 02166 ×254
  A168  C9 0C     CMP #$0C                      ; 02168 inferred, not run
  A16A  D0 0B     BNE $A177                     ; 0216A inferred, not run

loc_B0_A16C:                    ; from 02166
  A16C  BD C0 04  LDA $04C0,X                   ; 0216C ×254
  A16F  2A        ROL A                         ; 0216F ×254
  A170  A9 13     LDA #$13                      ; 02170 ×254
  A172  69 00     ADC #$00                      ; 02172 ×254
  A174  4C 88 AD  JMP loc_B0_AD88               ; 02174 ×254
  A177  BD 65 05  LDA $0565,X                   ; 02177 inferred, not run
  A17A  F0 05     BEQ $A181                     ; 0217A inferred, not run
  A17C  A9 3B     LDA #$3B                      ; 0217C inferred, not run
  A17E  4C 88 AD  JMP loc_B0_AD88               ; 0217E inferred, not run
  A181  A9 41     LDA #$41                      ; 02181 inferred, not run
  A183  4C 88 AD  JMP loc_B0_AD88               ; 02183 inferred, not run
  A186  .byte 08 08 08 48 56 55 56 55                           ; 02186
  A18E  .byte 05 05 04 00 80 00 40 40 00                        ; 0218E data, read by 02101 02107 0210d

loc_B0_A197:                    ; from 021ae
  A197  4C 7F A2  JMP loc_B0_A27F               ; 02197 ×2143

loc_B0_A19A:                    ; from 0214b
  A19A  A9 F0     LDA #$F0                      ; 0219A ×8215
  A19C  BC BF 05  LDY $05BF,X                   ; 0219C ×8215
  A19F  D0 02     BNE $A1A3                     ; 0219F ×8215
  A1A1  A9 C8     LDA #$C8                      ; 021A1 ×8215
  A1A3  20 7A 8E  JSR sub_B0_8E7A               ; 021A3 ×8215
  A1A6  20 71 E4  JSR sub_B0_E471               ; 021A6 ×8215
  A1A9  BD 47 05  LDA $0547,X                   ; 021A9 ×8215
  A1AC  C9 40     CMP #$40                      ; 021AC ×8215
  A1AE  B0 E7     BCS loc_B0_A197               ; 021AE ×8215
  A1B0  BC C9 05  LDY $05C9,X                   ; 021B0 ×6072
  A1B3  F0 38     BEQ loc_B0_A1ED               ; 021B3 ×6072
  A1B5  29 08     AND #$08                      ; 021B5 inferred, not run
  A1B7  9D 65 05  STA $0565,X                   ; 021B7 inferred, not run
  A1BA  4A        LSR A                         ; 021BA inferred, not run
  A1BB  69 0E     ADC #$0E                      ; 021BB inferred, not run
  A1BD  A8        TAY                           ; 021BD inferred, not run
  A1BE  84 8D     STY $8D                       ; 021BE inferred, not run
  A1C0  B5 2B     LDA $2B,X                     ; 021C0 inferred, not run
  A1C2  F0 24     BEQ $A1E8                     ; 021C2 inferred, not run
  A1C4  BC C9 05  LDY $05C9,X                   ; 021C4 inferred, not run
  A1C7  B9 A1 05  LDA $05A1,Y                   ; 021C7 inferred, not run
  A1CA  38        SEC                           ; 021CA inferred, not run
  A1CB  E9 01     SBC #$01                      ; 021CB inferred, not run
  A1CD  99 A1 05  STA $05A1,Y                   ; 021CD inferred, not run
  A1D0  D0 16     BNE $A1E8                     ; 021D0 inferred, not run
  A1D2  9D C9 05  STA $05C9,X                   ; 021D2 inferred, not run
  A1D5  99 DE 04  STA $04DE,Y                   ; 021D5 inferred, not run
  A1D8  A9 D0     LDA #$D0                      ; 021D8 inferred, not run
  A1DA  99 A1 05  STA $05A1,Y                   ; 021DA inferred, not run
  A1DD  A9 01     LDA #$01                      ; 021DD inferred, not run
  A1DF  9D 47 05  STA $0547,X                   ; 021DF inferred, not run
  A1E2  20 59 9E  JSR sub_B0_9E59               ; 021E2 inferred, not run
  A1E5  4C AC A5  JMP loc_B0_A5AC               ; 021E5 inferred, not run
  A1E8  A4 8D     LDY $8D                       ; 021E8 inferred, not run
  A1EA  4C 63 A3  JMP loc_B0_A363               ; 021EA inferred, not run

loc_B0_A1ED:                    ; from 021b3
  A1ED  BC C3 05  LDY $05C3,X                   ; 021ED ×6072
  A1F0  D0 0E     BNE loc_B0_A200               ; 021F0 ×6072
  A1F2  A4 10     LDY $10                       ; 021F2 ×3105
  A1F4  C0 02     CPY #$02                      ; 021F4 ×3105
  A1F6  D0 71     BNE loc_B0_A269               ; 021F6 ×3105
  A1F8  C9 20     CMP #$20                      ; 021F8 ×0
  A1FA  A9 03     LDA #$03                      ; 021FA ×0
  A1FC  B0 02     BCS loc_B0_A200               ; 021FC ×0
  A1FE  A9 0F     LDA #$0F                      ; 021FE ×0

loc_B0_A200:                    ; from 021f0
  A200  BC C3 05  LDY $05C3,X                   ; 02200 ×2967
  A203  F0 46     BEQ $A24B                     ; 02203 ×2967
  A205  A5 0B     LDA $0B                       ; 02205 ×2967
  A207  29 03     AND #$03                      ; 02207 ×2967
  A209  D0 08     BNE loc_B0_A213               ; 02209 ×2967
  A20B  A9 04     LDA #$04                      ; 0220B ×743
  A20D  5D FD 03  EOR $03FD,X                   ; 0220D ×743
  A210  9D FD 03  STA $03FD,X                   ; 02210 ×743

loc_B0_A213:                    ; from 02209
  A213  DE C3 05  DEC $05C3,X                   ; 02213 ×2967
  A216  C0 20     CPY #$20                      ; 02216 ×2967
  A218  B0 0C     BCS loc_B0_A226               ; 02218 ×2967
  A21A  A0 35     LDY #$35                      ; 0221A ×1642
  A21C  A5 10     LDA $10                       ; 0221C ×1642
  A21E  C9 02     CMP #$02                      ; 0221E ×1642
  A220  F0 26     BEQ loc_B0_A248               ; 02220 ×1642
  A222  A0 13     LDY #$13                      ; 02222 ×1642
  A224  D0 22     BNE loc_B0_A248               ; 02224 ×1642

loc_B0_A226:                    ; from 02218
  A226  A5 0B     LDA $0B                       ; 02226 ×1325
  A228  29 02     AND #$02                      ; 02228 ×1325
  A22A  F0 18     BEQ loc_B0_A244               ; 0222A ×1325
  A22C  A0 5D     LDY #$5D                      ; 0222C ×645
  A22E  A5 10     LDA $10                       ; 0222E ×645
  A230  C9 07     CMP #$07                      ; 02230 ×645
  A232  F0 14     BEQ loc_B0_A248               ; 02232 ×645
  A234  C9 0A     CMP #$0A                      ; 02234 ×645
  A236  F0 10     BEQ loc_B0_A248               ; 02236 ×645
  A238  C9 09     CMP #$09                      ; 02238 ×645
  A23A  F0 0C     BEQ loc_B0_A248               ; 0223A ×645
  A23C  C9 0B     CMP #$0B                      ; 0223C ×582
  A23E  F0 08     BEQ loc_B0_A248               ; 0223E ×582
  A240  A0 42     LDY #$42                      ; 02240 inferred, not run
  A242  D0 04     BNE loc_B0_A248               ; 02242 inferred, not run

loc_B0_A244:                    ; from 0222a
  A244  A8        TAY                           ; 02244 ×680
  A245  9D D0 03  STA $03D0,X                   ; 02245 ×680

loc_B0_A248:                    ; from 0226d 02224 0223e 0227d 02279 0223a
  A248  4C 63 A3  JMP loc_B0_A363               ; 02248 ×6072
  A24B  20 36 96  JSR sub_B0_9636               ; 0224B ×0
  A24E  A0 35     LDY #$35                      ; 0224E ×0
  A250  D0 F6     BNE loc_B0_A248               ; 02250 ×0
  A252  A5 0B     LDA $0B                       ; 02252 inferred, not run
  A254  29 04     AND #$04                      ; 02254 inferred, not run
  A256  5D FD 03  EOR $03FD,X                   ; 02256 inferred, not run
  A259  9D FD 03  STA $03FD,X                   ; 02259 inferred, not run
  A25C  DE BF 03  DEC $03BF,X                   ; 0225C inferred, not run
  A25F  A5 0B     LDA $0B                       ; 0225F inferred, not run
  A261  29 02     AND #$02                      ; 02261 inferred, not run
  A263  F0 E3     BEQ loc_B0_A248               ; 02263 inferred, not run
  A265  A0 42     LDY #$42                      ; 02265 inferred, not run
  A267  D0 DF     BNE loc_B0_A248               ; 02267 inferred, not run

loc_B0_A269:                    ; from 021f6
  A269  A0 02     LDY #$02                      ; 02269 ×3105
  A26B  C9 18     CMP #$18                      ; 0226B ×3105
  A26D  90 D9     BCC loc_B0_A248               ; 0226D ×3105
  A26F  BD A2 04  LDA $04A2,X                   ; 0226F ×680
  A272  0A        ASL A                         ; 02272 ×680
  A273  5D 56 05  EOR $0556,X                   ; 02273 ×680
  A276  A0 29     LDY #$29                      ; 02276 ×680
  A278  2A        ROL A                         ; 02278 ×680
  A279  B0 CD     BCS loc_B0_A248               ; 02279 ×680
  A27B  A0 16     LDY #$16                      ; 0227B ×490
  A27D  D0 C9     BNE loc_B0_A248               ; 0227D ×490

loc_B0_A27F:                    ; from 02197
  A27F  20 FE 93  JSR sub_B0_93FE               ; 0227F ×2143
  A282  BD 47 05  LDA $0547,X                   ; 02282 ×2143
  A285  C9 50     CMP #$50                      ; 02285 ×2143
  A287  D0 0F     BNE loc_B0_A298               ; 02287 ×2143
  A289  A9 01     LDA #$01                      ; 02289 ×16
  A28B  9D 47 05  STA $0547,X                   ; 0228B ×16
  A28E  BD 74 05  LDA $0574,X                   ; 0228E ×16
  A291  30 05     BMI loc_B0_A298               ; 02291 ×16
  A293  A9 1C     LDA #$1C                      ; 02293 ×10
  A295  9D 74 05  STA $0574,X                   ; 02295 ×10

loc_B0_A298:                    ; from 02287 02291
  A298  BC C7 05  LDY $05C7,X                   ; 02298 ×2143
  A29B  F0 33     BEQ loc_B0_A2D0               ; 0229B ×2143
  A29D  B9 56 05  LDA $0556,Y                   ; 0229D inferred, not run
  A2A0  49 80     EOR #$80                      ; 022A0 inferred, not run
  A2A2  4A        LSR A                         ; 022A2 inferred, not run
  A2A3  9D A2 04  STA $04A2,X                   ; 022A3 inferred, not run
  A2A6  20 6D B1  JSR sub_B0_B16D               ; 022A6 inferred, not run
  A2A9  B9 C1 03  LDA $03C1,Y                   ; 022A9 inferred, not run
  A2AC  C9 5C     CMP #$5C                      ; 022AC inferred, not run
  A2AE  D0 10     BNE $A2C0                     ; 022AE inferred, not run
  A2B0  A9 08     LDA #$08                      ; 022B0 inferred, not run
  A2B2  20 EE 8E  JSR sub_B0_8EEE               ; 022B2 inferred, not run
  A2B5  A9 F0     LDA #$F0                      ; 022B5 inferred, not run
  A2B7  9D 65 05  STA $0565,X                   ; 022B7 inferred, not run
  A2BA  20 4C 8F  JSR sub_B0_8F4C               ; 022BA inferred, not run
  A2BD  20 4C 8F  JSR sub_B0_8F4C               ; 022BD inferred, not run
  A2C0  A9 00     LDA #$00                      ; 022C0 inferred, not run
  A2C2  9D 75 04  STA $0475,X                   ; 022C2 inferred, not run
  A2C5  A0 5B     LDY #$5B                      ; 022C5 inferred, not run
  A2C7  A5 0C     LDA $0C                       ; 022C7 inferred, not run
  A2C9  29 02     AND #$02                      ; 022C9 inferred, not run
  A2CB  D0 61     BNE $A32E                     ; 022CB inferred, not run
  A2CD  C8        INY                           ; 022CD inferred, not run
  A2CE  D0 5E     BNE $A32E                     ; 022CE inferred, not run

loc_B0_A2D0:                    ; from 0229b
  A2D0  C9 90     CMP #$90                      ; 022D0 ×2143
  A2D2  90 1D     BCC loc_B0_A2F1               ; 022D2 ×2143
  A2D4  BD C5 05  LDA $05C5,X                   ; 022D4 ×1125
  A2D7  F0 18     BEQ loc_B0_A2F1               ; 022D7 ×1125
  A2D9  BD 75 04  LDA $0475,X                   ; 022D9 inferred, not run
  A2DC  D0 0A     BNE $A2E8                     ; 022DC inferred, not run
  A2DE  A9 40     LDA #$40                      ; 022DE inferred, not run
  A2E0  9D 65 05  STA $0565,X                   ; 022E0 inferred, not run
  A2E3  A9 02     LDA #$02                      ; 022E3 inferred, not run
  A2E5  9D C0 04  STA $04C0,X                   ; 022E5 inferred, not run
  A2E8  A9 00     LDA #$00                      ; 022E8 inferred, not run
  A2EA  9D 75 04  STA $0475,X                   ; 022EA inferred, not run
  A2ED  A0 5A     LDY #$5A                      ; 022ED inferred, not run
  A2EF  D0 72     BNE loc_B0_A363               ; 022EF inferred, not run

loc_B0_A2F1:                    ; from 022d7 022d2
  A2F1  BD BF 05  LDA $05BF,X                   ; 022F1 ×2143
  A2F4  F0 04     BEQ loc_B0_A2FA               ; 022F4 ×2143
  A2F6  A0 54     LDY #$54                      ; 022F6 inferred, not run
  A2F8  D0 69     BNE loc_B0_A363               ; 022F8 inferred, not run

loc_B0_A2FA:                    ; from 022f4
  A2FA  BD C1 05  LDA $05C1,X                   ; 022FA ×2143
  A2FD  F0 32     BEQ loc_B0_A331               ; 022FD ×2143
  A2FF  A0 00     LDY #$00                      ; 022FF inferred, not run
  A301  BD 47 05  LDA $0547,X                   ; 02301 inferred, not run
  A304  C9 A0     CMP #$A0                      ; 02304 inferred, not run
  A306  B0 1C     BCS $A324                     ; 02306 inferred, not run
  A308  C9 9F     CMP #$9F                      ; 02308 inferred, not run
  A30A  D0 0E     BNE $A31A                     ; 0230A inferred, not run
  A30C  A9 1C     LDA #$1C                      ; 0230C inferred, not run
  A30E  A2 0C     LDX #$0C                      ; 0230E inferred, not run
  A310  20 4A 91  JSR sub_B0_914A               ; 02310 inferred, not run
  A313  A9 00     LDA #$00                      ; 02313 inferred, not run
  A315  9D C0 04  STA $04C0,X                   ; 02315 inferred, not run
  A318  A9 9F     LDA #$9F                      ; 02318 inferred, not run
  A31A  4A        LSR A                         ; 0231A inferred, not run
  A31B  4A        LSR A                         ; 0231B inferred, not run
  A31C  29 03     AND #$03                      ; 0231C inferred, not run
  A31E  A8        TAY                           ; 0231E inferred, not run
  A31F  A9 40     LDA #$40                      ; 0231F inferred, not run
  A321  9D 65 05  STA $0565,X                   ; 02321 inferred, not run
  A324  B9 86 A1  LDA $A186,Y                   ; 02324 inferred, not run
  A327  9D A2 04  STA $04A2,X                   ; 02327 inferred, not run
  A32A  B9 8A A1  LDA $A18A,Y                   ; 0232A inferred, not run
  A32D  A8        TAY                           ; 0232D inferred, not run
  A32E  4C 63 A3  JMP loc_B0_A363               ; 0232E inferred, not run

loc_B0_A331:                    ; from 022fd
  A331  BD 47 05  LDA $0547,X                   ; 02331 ×2143
  A334  C9 C8     CMP #$C8                      ; 02334 ×2143
  A336  B0 0B     BCS loc_B0_A343               ; 02336 ×2143
  A338  BD B5 03  LDA $03B5,X                   ; 02338 ×1920
  A33B  C9 15     CMP #$15                      ; 0233B ×1920
  A33D  F0 09     BEQ loc_B0_A348               ; 0233D ×1920
  A33F  C9 30     CMP #$30                      ; 0233F ×1374
  A341  F0 05     BEQ loc_B0_A348               ; 02341 ×1374

loc_B0_A343:                    ; from 02336
  A343  BD 75 04  LDA $0475,X                   ; 02343 ×807
  A346  D0 13     BNE loc_B0_A35B               ; 02346 ×807

loc_B0_A348:                    ; from 02341 0233d
  A348  20 24 B0  JSR sub_B0_B024               ; 02348 ×1352
  A34B  D0 03     BNE loc_B0_A350               ; 0234B ×1352
  A34D  20 57 B0  JSR sub_B0_B057               ; 0234D ×31

loc_B0_A350:                    ; from 0234b
  A350  A0 15     LDY #$15                      ; 02350 ×1352
  A352  BD 74 05  LDA $0574,X                   ; 02352 ×1352
  A355  D0 0C     BNE loc_B0_A363               ; 02355 ×1352
  A357  A0 30     LDY #$30                      ; 02357 ×790
  A359  D0 08     BNE loc_B0_A363               ; 02359 ×790

loc_B0_A35B:                    ; from 02346
  A35B  A0 13     LDY #$13                      ; 0235B ×791
  A35D  BD C0 04  LDA $04C0,X                   ; 0235D ×791
  A360  10 01     BPL loc_B0_A363               ; 02360 ×791
  A362  C8        INY                           ; 02362 ×415

loc_B0_A363:                    ; from 02248 02359 02355 02360
  A363  98        TYA                           ; 02363 ×8215
  A364  9D B5 03  STA $03B5,X                   ; 02364 ×8215
  A367  4C 59 9E  JMP sub_B0_9E59               ; 02367 ×8215

loc_B0_A36A:                    ; from 02370 0237c
  A36A  4C 44 A4  JMP loc_B0_A444               ; 0236A ×47310

loc_B0_A36D:                    ; from 02126
  A36D  BD 74 05  LDA $0574,X                   ; 0236D ×48804
  A370  F0 F8     BEQ loc_B0_A36A               ; 02370 ×48804
  A372  BD 74 05  LDA $0574,X                   ; 02372 ×3391
  A375  DE 74 05  DEC $0574,X                   ; 02375 ×3391
  A378  C9 80     CMP #$80                      ; 02378 ×3391
  A37A  F0 05     BEQ loc_B0_A381               ; 0237A ×3391
  A37C  90 EC     BCC loc_B0_A36A               ; 0237C ×3371
  A37E  4C 12 9E  JMP sub_B0_9E12               ; 0237E ×1474

loc_B0_A381:                    ; from 0237a
  A381  A9 00     LDA #$00                      ; 02381 ×20
  A383  85 F3     STA $F3                       ; 02383 ×20
  A385  9D C1 05  STA $05C1,X                   ; 02385 ×20
  A388  9D D0 05  STA $05D0,X                   ; 02388 ×20
  A38B  9D 47 05  STA $0547,X                   ; 0238B ×20
  A38E  9D CE 05  STA $05CE,X                   ; 0238E ×20
  A391  9D D0 05  STA $05D0,X                   ; 02391 ×20
  A394  9D C9 05  STA $05C9,X                   ; 02394 ×20
  A397  9D C3 05  STA $05C3,X                   ; 02397 ×20
  A39A  95 E9     STA $E9,X                     ; 0239A ×20
  A39C  9D C5 05  STA $05C5,X                   ; 0239C ×20
  A39F  9D C7 05  STA $05C7,X                   ; 0239F ×20
  A3A2  D6 11     DEC $11,X                     ; 023A2 ×20
  A3A4  10 06     BPL loc_B0_A3AC               ; 023A4 ×20
  A3A6  20 80 D0  JSR sub_B0_D080               ; 023A6 ×3
  A3A9  4C 1F E7  JMP loc_B0_E71F               ; 023A9 ×3

loc_B0_A3AC:                    ; from 023a4
  A3AC  A5 10     LDA $10                       ; 023AC ×17
  A3AE  C9 02     CMP #$02                      ; 023AE ×17
  A3B0  D0 2B     BNE loc_B0_A3DD               ; 023B0 ×17
  A3B2  A9 80     LDA #$80                      ; 023B2 inferred, not run
  A3B4  E0 01     CPX #$01                      ; 023B4 inferred, not run
  A3B6  6A        ROR A                         ; 023B6 inferred, not run
  A3B7  9D FD 03  STA $03FD,X                   ; 023B7 inferred, not run
  A3BA  A9 10     LDA #$10                      ; 023BA inferred, not run
  A3BC  E5 89     SBC $89                       ; 023BC inferred, not run
  A3BE  9D 39 04  STA $0439,X                   ; 023BE inferred, not run
  A3C1  A9 20     LDA #$20                      ; 023C1 inferred, not run
  A3C3  E5 8A     SBC $8A                       ; 023C3 inferred, not run
  A3C5  9D 2A 04  STA $042A,X                   ; 023C5 inferred, not run
  A3C8  A9 38     LDA #$38                      ; 023C8 inferred, not run
  A3CA  9D 83 05  STA $0583,X                   ; 023CA inferred, not run
  A3CD  D0 66     BNE loc_B0_A435               ; 023CD inferred, not run

loc_B0_A3CF:                    ; from 023e1
  A3CF  A9 7B     LDA #$7B                      ; 023CF ×2
  A3D1  20 66 FE  JSR sub_B0_FE66               ; 023D1 ×2
  A3D4  F0 5F     BEQ loc_B0_A435               ; 023D4 ×2
  A3D6  A5 EB     LDA $EB                       ; 023D6 ×2
  A3D8  D0 5B     BNE loc_B0_A435               ; 023D8 ×2
  A3DA  4C 6B 87  JMP sub_B0_876B               ; 023DA ×2

loc_B0_A3DD:                    ; from 023b0
  A3DD  A5 10     LDA $10                       ; 023DD ×17
  A3DF  C9 0A     CMP #$0A                      ; 023DF ×17
  A3E1  F0 EC     BEQ loc_B0_A3CF               ; 023E1 ×17
  A3E3  C9 01     CMP #$01                      ; 023E3 ×15
  A3E5  F0 42     BEQ loc_B0_A429               ; 023E5 ×15
  A3E7  C9 0C     CMP #$0C                      ; 023E7 ×9
  A3E9  F0 08     BEQ $A3F3                     ; 023E9 ×9
  A3EB  C9 06     CMP #$06                      ; 023EB ×9
  A3ED  F0 04     BEQ $A3F3                     ; 023ED ×9
  A3EF  C9 03     CMP #$03                      ; 023EF ×9
  A3F1  D0 12     BNE loc_B0_A405               ; 023F1 ×9
  A3F3  BD 38 05  LDA $0538,X                   ; 023F3 ×9
  A3F6  29 40     AND #$40                      ; 023F6 ×9
  A3F8  F0 0B     BEQ loc_B0_A405               ; 023F8 ×9
  A3FA  4C 66 85  JMP $8566                     ; 023FA inferred, not run
  A3FD  A5 B1     LDA $B1                       ; 023FD inferred, not run
  A3FF  29 0F     AND #$0F                      ; 023FF inferred, not run
  A401  D0 32     BNE loc_B0_A435               ; 02401 inferred, not run
  A403  F0 1A     BEQ $A41F                     ; 02403 inferred, not run

loc_B0_A405:                    ; from 023f8
  A405  C9 0B     CMP #$0B                      ; 02405 ×9
  A407  F0 16     BEQ $A41F                     ; 02407 ×9
  A409  C9 07     CMP #$07                      ; 02409 ×9
  A40B  F0 F0     BEQ $A3FD                     ; 0240B ×9
  A40D  C9 05     CMP #$05                      ; 0240D ×9
  A40F  F0 0E     BEQ $A41F                     ; 0240F ×9
  A411  C9 04     CMP #$04                      ; 02411 ×9
  A413  F0 0A     BEQ $A41F                     ; 02413 ×9
  A415  C9 09     CMP #$09                      ; 02415 ×9
  A417  D0 09     BNE loc_B0_A422               ; 02417 ×9
  A419  A5 8A     LDA $8A                       ; 02419 inferred, not run
  A41B  C9 34     CMP #$34                      ; 0241B inferred, not run
  A41D  F0 16     BEQ loc_B0_A435               ; 0241D inferred, not run
  A41F  4C 6A 85  JMP $856A                     ; 0241F ×0

loc_B0_A422:                    ; from 02417
  A422  C9 08     CMP #$08                      ; 02422 ×9
  A424  D0 03     BNE loc_B0_A429               ; 02424 ×9
  A426  4C 7A 85  JMP $857A                     ; 02426 inferred, not run

loc_B0_A429:                    ; from 02424 023e5
  A429  BD 2A 04  LDA $042A,X                   ; 02429 ×15
  A42C  10 07     BPL loc_B0_A435               ; 0242C ×15
  A42E  A2 15     LDX #$15                      ; 0242E ×9
  A430  A0 05     LDY #$05                      ; 02430 ×9
  A432  20 CB FF  JSR sub_B0_FFCB               ; 02432 ×9

loc_B0_A435:                    ; from 0242c
  A435  A9 2F     LDA #$2F                      ; 02435 ×15
  A437  20 A3 9E  JSR sub_B0_9EA3               ; 02437 ×15
  A43A  A9 00     LDA #$00                      ; 0243A ×15
  A43C  9D C0 04  STA $04C0,X                   ; 0243C ×15
  A43F  9D CF 04  STA $04CF,X                   ; 0243F ×15
  A442  E6 D0     INC $D0                       ; 02442 ×15

loc_B0_A444:                    ; from 0236a
  A444  B5 29     LDA $29,X                     ; 02444 ×47325
  A446  29 40     AND #$40                      ; 02446 ×47325
  A448  F0 2B     BEQ loc_B0_A475               ; 02448 ×47325
  A44A  A5 10     LDA $10                       ; 0244A ×8806
  A44C  C9 0A     CMP #$0A                      ; 0244C ×8806
  A44E  D0 0E     BNE loc_B0_A45E               ; 0244E ×8806
  A450  BD EE 03  LDA $03EE,X                   ; 02450 ×229
  A453  C9 06     CMP #$06                      ; 02453 ×229
  A455  D0 1E     BNE loc_B0_A475               ; 02455 ×229
  A457  BD 38 05  LDA $0538,X                   ; 02457 inferred, not run
  A45A  29 40     AND #$40                      ; 0245A inferred, not run
  A45C  D0 17     BNE loc_B0_A475               ; 0245C inferred, not run

loc_B0_A45E:                    ; from 0244e
  A45E  B5 2B     LDA $2B,X                     ; 0245E ×8577
  A460  29 40     AND #$40                      ; 02460 ×8577
  A462  D0 14     BNE loc_B0_A478               ; 02462 ×8577
  A464  BD FC 04  LDA $04FC,X                   ; 02464 ×1779
  A467  F0 0C     BEQ loc_B0_A475               ; 02467 ×1779
  A469  BD B1 04  LDA $04B1,X                   ; 02469 ×1730
  A46C  10 07     BPL loc_B0_A475               ; 0246C ×1730
  A46E  BD A2 04  LDA $04A2,X                   ; 0246E ×132
  A471  29 04     AND #$04                      ; 02471 ×132
  A473  D0 03     BNE loc_B0_A478               ; 02473 ×132

loc_B0_A475:                    ; from 02448 0246c 02455 02467
  A475  4C F6 A4  JMP loc_B0_A4F6               ; 02475 ×40516

loc_B0_A478:                    ; from 02462 02473
  A478  A9 02     LDA #$02                      ; 02478 ×6809
  A47A  85 DE     STA $DE                       ; 0247A ×6809
  A47C  BD 38 05  LDA $0538,X                   ; 0247C ×6809
  A47F  29 40     AND #$40                      ; 0247F ×6809
  A481  F0 67     BEQ loc_B0_A4EA               ; 02481 ×6809
  A483  BD FC 04  LDA $04FC,X                   ; 02483 ×74
  A486  D0 6E     BNE loc_B0_A4F6               ; 02486 ×74
  A488  A5 10     LDA $10                       ; 02488 ×72
  A48A  C9 03     CMP #$03                      ; 0248A ×72
  A48C  F0 68     BEQ loc_B0_A4F6               ; 0248C ×72
  A48E  C9 06     CMP #$06                      ; 0248E ×72
  A490  F0 64     BEQ loc_B0_A4F6               ; 02490 ×72
  A492  C9 0C     CMP #$0C                      ; 02492 ×72
  A494  F0 60     BEQ loc_B0_A4F6               ; 02494 ×72
  A496  C9 0B     CMP #$0B                      ; 02496 ×2
  A498  D0 05     BNE $A49F                     ; 02498 ×2
  A49A  A9 82     LDA #$82                      ; 0249A ×2
  A49C  4C 90 A6  JMP loc_B0_A690               ; 0249C ×2
  A49F  A5 DB     LDA $DB                       ; 0249F inferred, not run
  A4A1  C9 02     CMP #$02                      ; 024A1 inferred, not run
  A4A3  B0 51     BCS loc_B0_A4F6               ; 024A3 inferred, not run
  A4A5  E6 DB     INC $DB                       ; 024A5 inferred, not run
  A4A7  A9 0C     LDA #$0C                      ; 024A7 inferred, not run
  A4A9  20 27 DD  JSR sub_B0_DD27               ; 024A9 inferred, not run
  A4AC  30 2A     BMI $A4D8                     ; 024AC inferred, not run
  A4AE  A6 1D     LDX $1D                       ; 024AE inferred, not run
  A4B0  A4 82     LDY $82                       ; 024B0 inferred, not run
  A4B2  B9 A2 04  LDA $04A2,Y                   ; 024B2 inferred, not run
  A4B5  29 40     AND #$40                      ; 024B5 inferred, not run
  A4B7  9D A2 04  STA $04A2,X                   ; 024B7 inferred, not run
  A4BA  0A        ASL A                         ; 024BA inferred, not run
  A4BB  29 80     AND #$80                      ; 024BB inferred, not run
  A4BD  9D 56 05  STA $0556,X                   ; 024BD inferred, not run
  A4C0  A9 1E     LDA #$1E                      ; 024C0 inferred, not run
  A4C2  9D C1 03  STA $03C1,X                   ; 024C2 inferred, not run
  A4C5  B9 C0 04  LDA $04C0,Y                   ; 024C5 inferred, not run
  A4C8  9D C0 04  STA $04C0,X                   ; 024C8 inferred, not run
  A4CB  F0 03     BEQ $A4D0                     ; 024CB inferred, not run
  A4CD  B9 CF 04  LDA $04CF,Y                   ; 024CD inferred, not run
  A4D0  9D CF 04  STA $04CF,X                   ; 024D0 inferred, not run
  A4D3  A9 5E     LDA #$5E                      ; 024D3 inferred, not run
  A4D5  20 48 91  JSR sub_B0_9148               ; 024D5 inferred, not run
  A4D8  BD B1 04  LDA $04B1,X                   ; 024D8 inferred, not run
  A4DB  29 20     AND #$20                      ; 024DB inferred, not run
  A4DD  F0 04     BEQ $A4E3                     ; 024DD inferred, not run
  A4DF  A9 3E     LDA #$3E                      ; 024DF inferred, not run
  A4E1  D0 7A     BNE loc_B0_A55D               ; 024E1 inferred, not run
  A4E3  A9 0A     LDA #$0A                      ; 024E3 inferred, not run
  A4E5  9D 0B 05  STA $050B,X                   ; 024E5 inferred, not run
  A4E8  D0 0C     BNE loc_B0_A4F6               ; 024E8 inferred, not run

loc_B0_A4EA:                    ; from 02481
  A4EA  BD FC 04  LDA $04FC,X                   ; 024EA ×6735
  A4ED  F0 0A     BEQ loc_B0_A4F9               ; 024ED ×6735
  A4EF  BD A2 04  LDA $04A2,X                   ; 024EF ×6330
  A4F2  29 04     AND #$04                      ; 024F2 ×6330
  A4F4  D0 03     BNE loc_B0_A4F9               ; 024F4 ×6330

loc_B0_A4F6:                    ; from 02475 02494 02486
  A4F6  4C AF A6  JMP loc_B0_A6AF               ; 024F6 ×44423

loc_B0_A4F9:                    ; from 024f4 024ed
  A4F9  BD A2 04  LDA $04A2,X                   ; 024F9 ×2900
  A4FC  29 10     AND #$10                      ; 024FC ×2900
  A4FE  F0 03     BEQ loc_B0_A503               ; 024FE ×2900
  A500  4C 80 A6  JMP $A680                     ; 02500 ×0

loc_B0_A503:                    ; from 024fe
  A503  A5 10     LDA $10                       ; 02503 ×2900
  A505  C9 02     CMP #$02                      ; 02505 ×2900
  A507  F0 18     BEQ loc_B0_A521               ; 02507 ×2900
  A509  BD B1 04  LDA $04B1,X                   ; 02509 ×2861
  A50C  29 20     AND #$20                      ; 0250C ×2861
  A50E  F0 11     BEQ loc_B0_A521               ; 0250E ×2861
  A510  A9 08     LDA #$08                      ; 02510 ×100
  A512  20 F7 8A  JSR sub_B0_8AF7               ; 02512 ×100
  A515  10 46     BPL loc_B0_A55D               ; 02515 ×100
  A517  A9 1A     LDA #$1A                      ; 02517 ×100
  A519  D0 42     BNE loc_B0_A55D               ; 02519 ×100

loc_B0_A51B:                    ; from 02534
  A51B  4C BC A5  JMP loc_B0_A5BC               ; 0251B ×2751

loc_B0_A51E:                    ; from 02524
  A51E  4C AC A5  JMP loc_B0_A5AC               ; 0251E ×10

loc_B0_A521:                    ; from 0250e 02507
  A521  BD 38 05  LDA $0538,X                   ; 02521 ×2800
  A524  30 F8     BMI loc_B0_A51E               ; 02524 ×2800
  A526  29 40     AND #$40                      ; 02526 ×2790
  A528  F0 06     BEQ loc_B0_A530               ; 02528 ×2790
  A52A  A5 10     LDA $10                       ; 0252A inferred, not run
  A52C  C9 0B     CMP #$0B                      ; 0252C inferred, not run
  A52E  F0 1E     BEQ loc_B0_A54E               ; 0252E inferred, not run

loc_B0_A530:                    ; from 02528
  A530  A5 10     LDA $10                       ; 02530 ×2790
  A532  C9 02     CMP #$02                      ; 02532 ×2790
  A534  D0 E5     BNE loc_B0_A51B               ; 02534 ×2790
  A536  BD B5 03  LDA $03B5,X                   ; 02536 ×39
  A539  C9 34     CMP #$34                      ; 02539 ×39
  A53B  F0 04     BEQ loc_B0_A541               ; 0253B ×39
  A53D  C9 2C     CMP #$2C                      ; 0253D ×38
  A53F  D0 0D     BNE loc_B0_A54E               ; 0253F ×38

loc_B0_A541:                    ; from 0253b
  A541  BD B7 03  LDA $03B7,X                   ; 02541 ×1
  A544  C9 01     CMP #$01                      ; 02544 ×1
  A546  A9 1E     LDA #$1E                      ; 02546 ×1
  A548  B0 13     BCS loc_B0_A55D               ; 02548 ×1
  A54A  A9 24     LDA #$24                      ; 0254A ×1
  A54C  D0 0F     BNE loc_B0_A55D               ; 0254C ×1

loc_B0_A54E:                    ; from 0253f
  A54E  A9 0B     LDA #$0B                      ; 0254E ×38
  A550  20 F7 8A  JSR sub_B0_8AF7               ; 02550 ×38
  A553  30 3D     BMI loc_B0_A592               ; 02553 ×38
  A555  C9 18     CMP #$18                      ; 02555 ×0
  A557  D0 07     BNE $A560                     ; 02557 ×0
  A559  A9 20     LDA #$20                      ; 02559 inferred, not run
  A55B  D0 00     BNE loc_B0_A55D               ; 0255B inferred, not run

loc_B0_A55D:                    ; from 02519 025a6 025c3 025b7 0254c
  A55D  4C 90 A6  JMP loc_B0_A690               ; 0255D ×169
  A560  B9 C1 03  LDA $03C1,Y                   ; 02560 ×0
  A563  C9 31     CMP #$31                      ; 02563 ×0
  A565  D0 1A     BNE $A581                     ; 02565 ×0
  A567  B9 1A 05  LDA $051A,Y                   ; 02567 inferred, not run
  A56A  C9 10     CMP #$10                      ; 0256A inferred, not run
  A56C  A9 22     LDA #$22                      ; 0256C inferred, not run
  A56E  90 ED     BCC loc_B0_A55D               ; 0256E inferred, not run
  A570  B9 1A 05  LDA $051A,Y                   ; 02570 inferred, not run
  A573  C9 20     CMP #$20                      ; 02573 inferred, not run
  A575  A9 4E     LDA #$4E                      ; 02575 inferred, not run
  A577  90 E4     BCC loc_B0_A55D               ; 02577 inferred, not run
  A579  A5 25     LDA $25                       ; 02579 inferred, not run
  A57B  29 02     AND #$02                      ; 0257B inferred, not run
  A57D  09 50     ORA #$50                      ; 0257D inferred, not run
  A57F  D0 DC     BNE loc_B0_A55D               ; 0257F inferred, not run
  A581  C9 16     CMP #$16                      ; 02581 ×0
  A583  D0 04     BNE $A589                     ; 02583 ×0
  A585  A9 52     LDA #$52                      ; 02585 inferred, not run
  A587  D0 D4     BNE loc_B0_A55D               ; 02587 inferred, not run
  A589  B9 1A 05  LDA $051A,Y                   ; 02589 ×0
  A58C  C9 10     CMP #$10                      ; 0258C ×0
  A58E  A9 22     LDA #$22                      ; 0258E ×0
  A590  90 CB     BCC loc_B0_A55D               ; 02590 ×0

loc_B0_A592:                    ; from 02553
  A592  BD B1 04  LDA $04B1,X                   ; 02592 ×38
  A595  29 20     AND #$20                      ; 02595 ×38
  A597  C9 20     CMP #$20                      ; 02597 ×38
  A599  A9 48     LDA #$48                      ; 02599 ×38
  A59B  B0 C0     BCS loc_B0_A55D               ; 0259B ×38
  A59D  B9 C1 03  LDA $03C1,Y                   ; 0259D ×38
  A5A0  C9 2D     CMP #$2D                      ; 025A0 ×38
  A5A2  F0 04     BEQ $A5A8                     ; 025A2 ×38
  A5A4  A9 1C     LDA #$1C                      ; 025A4 ×38
  A5A6  D0 B5     BNE loc_B0_A55D               ; 025A6 ×38
  A5A8  A9 46     LDA #$46                      ; 025A8 inferred, not run
  A5AA  D0 B1     BNE loc_B0_A55D               ; 025AA inferred, not run

loc_B0_A5AC:                    ; from 0251e
  A5AC  A5 D1     LDA $D1                       ; 025AC ×10
  A5AE  F0 05     BEQ loc_B0_A5B5               ; 025AE ×10
  A5B0  A9 70     LDA #$70                      ; 025B0 inferred, not run
  A5B2  4C 90 A6  JMP loc_B0_A690               ; 025B2 inferred, not run

loc_B0_A5B5:                    ; from 025ae
  A5B5  A9 0C     LDA #$0C                      ; 025B5 ×10
  A5B7  D0 A4     BNE loc_B0_A55D               ; 025B7 ×10

loc_B0_A5B9:                    ; from 025c1
  A5B9  4C 79 A6  JMP loc_B0_A679               ; 025B9 ×2490

loc_B0_A5BC:                    ; from 0251b
  A5BC  A9 3F     LDA #$3F                      ; 025BC ×2751
  A5BE  20 F7 8A  JSR sub_B0_8AF7               ; 025BE ×2751
  A5C1  30 F6     BMI loc_B0_A5B9               ; 025C1 ×2751
  A5C3  D0 98     BNE loc_B0_A55D               ; 025C3 ×261
  A5C5  B9 C1 03  LDA $03C1,Y                   ; 025C5 ×241
  A5C8  C9 50     CMP #$50                      ; 025C8 ×241
  A5CA  D0 07     BNE loc_B0_A5D3               ; 025CA ×241
  A5CC  A9 C0     LDA #$C0                      ; 025CC ×3
  A5CE  99 DE 04  STA $04DE,Y                   ; 025CE ×3
  A5D1  D0 6A     BNE loc_B0_A63D               ; 025D1 ×3

loc_B0_A5D3:                    ; from 025ca
  A5D3  B9 C1 03  LDA $03C1,Y                   ; 025D3 ×238
  A5D6  C9 6D     CMP #$6D                      ; 025D6 ×238
  A5D8  D0 16     BNE loc_B0_A5F0               ; 025D8 ×238
  A5DA  B9 1A 05  LDA $051A,Y                   ; 025DA ×26
  A5DD  C9 04     CMP #$04                      ; 025DD ×26
  A5DF  90 0F     BCC loc_B0_A5F0               ; 025DF ×26
  A5E1  A9 40     LDA #$40                      ; 025E1 ×20
  A5E3  99 47 05  STA $0547,Y                   ; 025E3 ×20
  A5E6  A9 10     LDA #$10                      ; 025E6 ×20
  A5E8  99 DF 03  STA $03DF,Y                   ; 025E8 ×20
  A5EB  A9 7A     LDA #$7A                      ; 025EB ×20
  A5ED  4C 90 A6  JMP loc_B0_A690               ; 025ED ×20

loc_B0_A5F0:                    ; from 025d8 025df
  A5F0  C9 6E     CMP #$6E                      ; 025F0 ×218
  A5F2  90 09     BCC loc_B0_A5FD               ; 025F2 ×218
  A5F4  C9 72     CMP #$72                      ; 025F4 ×6
  A5F6  B0 05     BCS loc_B0_A5FD               ; 025F6 ×6
  A5F8  A9 78     LDA #$78                      ; 025F8 inferred, not run
  A5FA  4C 90 A6  JMP loc_B0_A690               ; 025FA inferred, not run

loc_B0_A5FD:                    ; from 025f2 025f6
  A5FD  B9 B1 04  LDA $04B1,Y                   ; 025FD ×218
  A600  29 40     AND #$40                      ; 02600 ×218
  A602  F0 14     BEQ loc_B0_A618               ; 02602 ×218
  A604  B9 C1 03  LDA $03C1,Y                   ; 02604 ×12
  A607  49 33     EOR #$33                      ; 02607 ×12
  A609  F0 65     BEQ loc_B0_A670               ; 02609 ×12
  A60B  B9 1A 05  LDA $051A,Y                   ; 0260B ×12
  A60E  C9 08     CMP #$08                      ; 0260E ×12
  A610  A9 12     LDA #$12                      ; 02610 ×12
  A612  B0 7C     BCS loc_B0_A690               ; 02612 ×12
  A614  A9 14     LDA #$14                      ; 02614 ×6
  A616  D0 78     BNE loc_B0_A690               ; 02616 ×6

loc_B0_A618:                    ; from 02602
  A618  B9 C1 03  LDA $03C1,Y                   ; 02618 ×206
  A61B  C9 33     CMP #$33                      ; 0261B ×206
  A61D  F0 40     BEQ loc_B0_A65F               ; 0261D ×206
  A61F  29 FC     AND #$FC                      ; 0261F ×206
  A621  C9 7C     CMP #$7C                      ; 02621 ×206
  A623  F0 18     BEQ loc_B0_A63D               ; 02623 ×206
  A625  B9 38 05  LDA $0538,Y                   ; 02625 ×200
  A628  29 40     AND #$40                      ; 02628 ×200
  A62A  D0 3A     BNE loc_B0_A666               ; 0262A ×200
  A62C  B9 1A 05  LDA $051A,Y                   ; 0262C ×200
  A62F  C9 04     CMP #$04                      ; 0262F ×200
  A631  B0 1B     BCS loc_B0_A64E               ; 02631 ×200
  A633  A5 10     LDA $10                       ; 02633 ×25
  A635  C9 06     CMP #$06                      ; 02635 ×25
  A637  D0 11     BNE loc_B0_A64A               ; 02637 ×25
  A639  C0 02     CPY #$02                      ; 02639 ×7
  A63B  90 0D     BCC loc_B0_A64A               ; 0263B ×7

loc_B0_A63D:                    ; from 02623 025d1
  A63D  A9 00     LDA #$00                      ; 0263D ×16
  A63F  99 65 05  STA $0565,Y                   ; 0263F ×16
  A642  A5 25     LDA $25                       ; 02642 ×16
  A644  29 06     AND #$06                      ; 02644 ×16
  A646  69 71     ADC #$71                      ; 02646 ×16
  A648  D0 46     BNE loc_B0_A690               ; 02648 ×16

loc_B0_A64A:                    ; from 02637
  A64A  A9 0E     LDA #$0E                      ; 0264A ×18
  A64C  D0 42     BNE loc_B0_A690               ; 0264C ×18

loc_B0_A64E:                    ; from 02631
  A64E  29 0F     AND #$0F                      ; 0264E ×175
  A650  C9 04     CMP #$04                      ; 02650 ×175
  A652  B0 1C     BCS loc_B0_A670               ; 02652 ×175
  A654  B9 C1 03  LDA $03C1,Y                   ; 02654 ×11
  A657  C9 47     CMP #$47                      ; 02657 ×11
  A659  F0 04     BEQ loc_B0_A65F               ; 02659 ×11
  A65B  C9 17     CMP #$17                      ; 0265B ×5
  A65D  D0 07     BNE loc_B0_A666               ; 0265D ×5

loc_B0_A65F:                    ; from 02659
  A65F  5E 65 05  LSR $0565,X                   ; 0265F ×6
  A662  A9 36     LDA #$36                      ; 02662 ×6
  A664  D0 2A     BNE loc_B0_A690               ; 02664 ×6

loc_B0_A666:                    ; from 0265d
  A666  A9 06     LDA #$06                      ; 02666 ×5
  A668  D0 26     BNE loc_B0_A690               ; 02668 ×5

loc_B0_A66A:                    ; from 0267e
  A66A  A5 10     LDA $10                       ; 0266A ×2490
  A66C  C9 04     CMP #$04                      ; 0266C ×2490
  A66E  D0 00     BNE loc_B0_A670               ; 0266E ×2490

loc_B0_A670:                    ; from 02652
  A670  B5 25     LDA $25,X                     ; 02670 ×2654
  A672  29 02     AND #$02                      ; 02672 ×2654
  A674  18        CLC                           ; 02674 ×2654
  A675  69 02     ADC #$02                      ; 02675 ×2654
  A677  D0 17     BNE loc_B0_A690               ; 02677 ×2654

loc_B0_A679:                    ; from 025b9
  A679  BD A2 04  LDA $04A2,X                   ; 02679 ×2490
  A67C  29 10     AND #$10                      ; 0267C ×2490
  A67E  F0 EA     BEQ loc_B0_A66A               ; 0267E ×2490
  A680  A9 03     LDA #$03                      ; 02680 ×0
  A682  20 F7 8A  JSR sub_B0_8AF7               ; 02682 ×0
  A685  D0 07     BNE $A68E                     ; 02685 ×0
  A687  B9 B1 04  LDA $04B1,Y                   ; 02687 inferred, not run
  A68A  29 40     AND #$40                      ; 0268A inferred, not run
  A68C  D0 86     BNE $A614                     ; 0268C inferred, not run
  A68E  A9 16     LDA #$16                      ; 0268E ×0

loc_B0_A690:                    ; from 02677 0255d 025ed 0264c 02648 02664 (+4)
  A690  20 DD DA  JSR sub_B0_DADD               ; 02690 ×2902
  A693  B5 29     LDA $29,X                     ; 02693 ×2902
  A695  29 03     AND #$03                      ; 02695 ×2902
  A697  F0 16     BEQ loc_B0_A6AF               ; 02697 ×2902
  A699  29 02     AND #$02                      ; 02699 ×2115
  A69B  F0 02     BEQ loc_B0_A69F               ; 0269B ×2115
  A69D  A9 80     LDA #$80                      ; 0269D ×693

loc_B0_A69F:                    ; from 0269b
  A69F  9D 56 05  STA $0556,X                   ; 0269F ×2115
  A6A2  4A        LSR A                         ; 026A2 ×2115
  A6A3  85 15     STA $15                       ; 026A3 ×2115
  A6A5  BD A2 04  LDA $04A2,X                   ; 026A5 ×2115
  A6A8  29 BF     AND #$BF                      ; 026A8 ×2115
  A6AA  05 15     ORA $15                       ; 026AA ×2115
  A6AC  9D A2 04  STA $04A2,X                   ; 026AC ×2115

loc_B0_A6AF:                    ; from 024f6 02697
  A6AF  BD FC 04  LDA $04FC,X                   ; 026AF ×47325
  A6B2  F0 08     BEQ loc_B0_A6BC               ; 026B2 ×47325
  A6B4  A9 01     LDA #$01                      ; 026B4 ×43110
  A6B6  20 F6 DA  JSR sub_B0_DAF6               ; 026B6 ×43110
  A6B9  4C 9B A8  JMP loc_B0_A89B               ; 026B9 ×43110

loc_B0_A6BC:                    ; from 026b2
  A6BC  A5 10     LDA $10                       ; 026BC ×4215
  A6BE  C9 0A     CMP #$0A                      ; 026BE ×4215
  A6C0  D0 55     BNE loc_B0_A717               ; 026C0 ×4215
  A6C2  BD 38 05  LDA $0538,X                   ; 026C2 ×1167
  A6C5  29 40     AND #$40                      ; 026C5 ×1167
  A6C7  D0 0B     BNE loc_B0_A6D4               ; 026C7 ×1167
  A6C9  BD EE 03  LDA $03EE,X                   ; 026C9 ×408
  A6CC  C9 06     CMP #$06                      ; 026CC ×408
  A6CE  B0 47     BCS loc_B0_A717               ; 026CE ×408
  A6D0  A9 60     LDA #$60                      ; 026D0 ×408
  A6D2  D0 35     BNE loc_B0_A709               ; 026D2 ×408

loc_B0_A6D4:                    ; from 026c7
  A6D4  BD 92 05  LDA $0592,X                   ; 026D4 ×759
  A6D7  D0 1C     BNE loc_B0_A6F5               ; 026D7 ×759
  A6D9  FE 66 04  INC $0466,X                   ; 026D9 ×544
  A6DC  BD 66 04  LDA $0466,X                   ; 026DC ×544
  A6DF  E9 20     SBC #$20                      ; 026DF ×544
  A6E1  90 2C     BCC loc_B0_A70F               ; 026E1 ×544
  A6E3  D0 04     BNE loc_B0_A6E9               ; 026E3 ×420
  A6E5  20 12 A7  JSR sub_B0_A712               ; 026E5 ×4
  A6E8  8A        TXA                           ; 026E8 ×4

loc_B0_A6E9:                    ; from 026e3
  A6E9  29 80     AND #$80                      ; 026E9 ×420
  A6EB  F0 1C     BEQ loc_B0_A709               ; 026EB ×420
  A6ED  FE 92 05  INC $0592,X                   ; 026ED ×3
  A6F0  A9 6E     LDA #$6E                      ; 026F0 ×3
  A6F2  20 48 91  JSR sub_B0_9148               ; 026F2 ×3

loc_B0_A6F5:                    ; from 026d7
  A6F5  A9 80     LDA #$80                      ; 026F5 ×218
  A6F7  9D 65 05  STA $0565,X                   ; 026F7 ×218
  A6FA  B5 29     LDA $29,X                     ; 026FA ×218
  A6FC  29 0F     AND #$0F                      ; 026FC ×218
  A6FE  A8        TAY                           ; 026FE ×218
  A6FF  B9 AF 9E  LDA $9EAF,Y                   ; 026FF ×218
  A702  DD 56 05  CMP $0556,X                   ; 02702 ×218
  A705  D0 05     BNE loc_B0_A70C               ; 02705 ×218
  A707  A9 F0     LDA #$F0                      ; 02707 ×77

loc_B0_A709:                    ; from 026eb 026d2
  A709  9D 65 05  STA $0565,X                   ; 02709 ×902

loc_B0_A70C:                    ; from 02705
  A70C  20 4C 8F  JSR sub_B0_8F4C               ; 0270C ×1043

loc_B0_A70F:                    ; from 026e1
  A70F  4C 23 AB  JMP loc_B0_AB23               ; 0270F ×1167

sub_B0_A712:                    ; from 026e5
  A712  A9 6C     LDA #$6C                      ; 02712 ×4
  A714  4C F6 B7  JMP sub_B0_B7F6               ; 02714 ×4

loc_B0_A717:                    ; from 026c0
  A717  BD A2 04  LDA $04A2,X                   ; 02717 ×3048
  A71A  29 10     AND #$10                      ; 0271A ×3048
  A71C  F0 15     BEQ loc_B0_A733               ; 0271C ×3048
  A71E  B5 2B     LDA $2B,X                     ; 0271E ×7
  A720  29 8F     AND #$8F                      ; 02720 ×7
  A722  D0 0C     BNE loc_B0_A730               ; 02722 ×7
  A724  B5 29     LDA $29,X                     ; 02724 ×4
  A726  29 0F     AND #$0F                      ; 02726 ×4
  A728  C9 04     CMP #$04                      ; 02728 ×4
  A72A  B0 04     BCS loc_B0_A730               ; 0272A ×4
  A72C  29 03     AND #$03                      ; 0272C ×0
  A72E  D0 03     BNE loc_B0_A733               ; 0272E ×0

loc_B0_A730:                    ; from 0272a 02722
  A730  20 BF 9E  JSR sub_B0_9EBF               ; 02730 ×7

loc_B0_A733:                    ; from 0271c
  A733  BD B1 03  LDA $03B1,X                   ; 02733 ×3048
  A736  38        SEC                           ; 02736 ×3048
  A737  E9 04     SBC #$04                      ; 02737 ×3048
  A739  90 34     BCC loc_B0_A76F               ; 02739 ×3048
  A73B  9D B1 03  STA $03B1,X                   ; 0273B ×767
  A73E  B5 2B     LDA $2B,X                     ; 0273E ×767
  A740  29 03     AND #$03                      ; 02740 ×767
  A742  F0 36     BEQ loc_B0_A77A               ; 02742 ×767
  A744  5D B1 03  EOR $03B1,X                   ; 02744 ×25
  A747  29 03     AND #$03                      ; 02747 ×25
  A749  D0 2F     BNE loc_B0_A77A               ; 02749 ×25
  A74B  BD 38 05  LDA $0538,X                   ; 0274B ×7
  A74E  C9 80     CMP #$80                      ; 0274E ×7
  A750  B0 10     BCS loc_B0_A762               ; 02750 ×7
  A752  29 40     AND #$40                      ; 02752 ×7
  A754  F0 0C     BEQ loc_B0_A762               ; 02754 ×7
  A756  A5 10     LDA $10                       ; 02756 ×0
  A758  C9 03     CMP #$03                      ; 02758 ×0
  A75A  F0 0B     BEQ $A767                     ; 0275A ×0
  A75C  C9 06     CMP #$06                      ; 0275C ×0
  A75E  F0 07     BEQ $A767                     ; 0275E ×0
  A760  A9 00     LDA #$00                      ; 02760 ×0

loc_B0_A762:                    ; from 02754
  A762  1D 75 04  ORA $0475,X                   ; 02762 ×7
  A765  D0 13     BNE loc_B0_A77A               ; 02765 ×7
  A767  BD A2 04  LDA $04A2,X                   ; 02767 ×7
  A76A  09 10     ORA #$10                      ; 0276A ×7
  A76C  9D A2 04  STA $04A2,X                   ; 0276C ×7

loc_B0_A76F:                    ; from 02739
  A76F  B5 2B     LDA $2B,X                     ; 0276F ×2288
  A771  29 03     AND #$03                      ; 02771 ×2288
  A773  F0 05     BEQ loc_B0_A77A               ; 02773 ×2288
  A775  09 38     ORA #$38                      ; 02775 ×63
  A777  9D B1 03  STA $03B1,X                   ; 02777 ×63

loc_B0_A77A:                    ; from 02773 02742 02749
  A77A  BD B0 05  LDA $05B0,X                   ; 0277A ×3048
  A77D  30 15     BMI $A794                     ; 0277D ×3048
  A77F  A4 10     LDY $10                       ; 0277F ×3048
  A781  C0 06     CPY #$06                      ; 02781 ×3048
  A783  D0 08     BNE loc_B0_A78D               ; 02783 ×3048
  A785  BD 38 05  LDA $0538,X                   ; 02785 ×38
  A788  0A        ASL A                         ; 02788 ×38
  A789  10 02     BPL loc_B0_A78D               ; 02789 ×38
  A78B  A0 02     LDY #$02                      ; 0278B inferred, not run

loc_B0_A78D:                    ; from 02783 02789
  A78D  B9 0E 9F  LDA $9F0E,Y                   ; 0278D ×3048
  A790  35 29     AND $29,X                     ; 02790 ×3048
  A792  D0 03     BNE loc_B0_A797               ; 02792 ×3048
  A794  4C 9B A8  JMP loc_B0_A89B               ; 02794 ×280

loc_B0_A797:                    ; from 02792
  A797  A8        TAY                           ; 02797 ×2768
  A798  B9 AF 9E  LDA $9EAF,Y                   ; 02798 ×2768
  A79B  38        SEC                           ; 0279B ×2768
  A79C  FD 56 05  SBC $0556,X                   ; 0279C ×2768
  A79F  F0 32     BEQ loc_B0_A7D3               ; 0279F ×2768
  A7A1  C9 41     CMP #$41                      ; 027A1 ×432
  A7A3  90 13     BCC loc_B0_A7B8               ; 027A3 ×432
  A7A5  C9 C0     CMP #$C0                      ; 027A5 ×282
  A7A7  B0 0F     BCS loc_B0_A7B8               ; 027A7 ×282
  A7A9  A9 F8     LDA #$F8                      ; 027A9 ×150
  A7AB  20 6A D0  JSR sub_B0_D06A               ; 027AB ×150
  A7AE  BD 65 05  LDA $0565,X                   ; 027AE ×150
  A7B1  C9 20     CMP #$20                      ; 027B1 ×150
  A7B3  90 0A     BCC loc_B0_A7BF               ; 027B3 ×150
  A7B5  4C 9B A8  JMP loc_B0_A89B               ; 027B5 ×37

loc_B0_A7B8:                    ; from 027a3 027a7
  A7B8  85 15     STA $15                       ; 027B8 ×282
  A7BA  BD 65 05  LDA $0565,X                   ; 027BA ×282
  A7BD  D0 06     BNE loc_B0_A7C5               ; 027BD ×282

loc_B0_A7BF:                    ; from 027b3
  A7BF  B9 AF 9E  LDA $9EAF,Y                   ; 027BF ×177
  A7C2  4C D0 A7  JMP loc_B0_A7D0               ; 027C2 ×177

loc_B0_A7C5:                    ; from 027bd
  A7C5  26 15     ROL $15                       ; 027C5 ×218
  A7C7  A9 08     LDA #$08                      ; 027C7 ×218
  A7C9  90 02     BCC loc_B0_A7CD               ; 027C9 ×218
  A7CB  E9 10     SBC #$10                      ; 027CB ×113

loc_B0_A7CD:                    ; from 027c9
  A7CD  7D 56 05  ADC $0556,X                   ; 027CD ×218

loc_B0_A7D0:                    ; from 027c2
  A7D0  9D 56 05  STA $0556,X                   ; 027D0 ×395

loc_B0_A7D3:                    ; from 0279f
  A7D3  BD D0 05  LDA $05D0,X                   ; 027D3 ×2731
  A7D6  F0 03     BEQ loc_B0_A7DB               ; 027D6 ×2731
  A7D8  20 BF 9E  JSR sub_B0_9EBF               ; 027D8 inferred, not run

loc_B0_A7DB:                    ; from 027d6
  A7DB  BD A2 04  LDA $04A2,X                   ; 027DB ×2731
  A7DE  29 10     AND #$10                      ; 027DE ×2731
  A7E0  F0 0E     BEQ loc_B0_A7F0               ; 027E0 ×2731
  A7E2  18        CLC                           ; 027E2 ×7
  A7E3  BD DF 03  LDA $03DF,X                   ; 027E3 ×7
  A7E6  69 04     ADC #$04                      ; 027E6 ×7
  A7E8  9D DF 03  STA $03DF,X                   ; 027E8 ×7
  A7EB  A9 C0     LDA #$C0                      ; 027EB ×7
  A7ED  4C 73 A8  JMP loc_B0_A873               ; 027ED ×7

loc_B0_A7F0:                    ; from 027e0
  A7F0  A0 40     LDY #$40                      ; 027F0 ×2724
  A7F2  BD 56 05  LDA $0556,X                   ; 027F2 ×2724
  A7F5  29 7F     AND #$7F                      ; 027F5 ×2724
  A7F7  38        SEC                           ; 027F7 ×2724
  A7F8  E9 21     SBC #$21                      ; 027F8 ×2724
  A7FA  C9 3D     CMP #$3D                      ; 027FA ×2724
  A7FC  90 06     BCC loc_B0_A804               ; 027FC ×2724
  A7FE  A4 10     LDY $10                       ; 027FE ×2554
  A800  B9 1C 9F  LDA $9F1C,Y                   ; 02800 ×2554
  A803  A8        TAY                           ; 02803 ×2554

loc_B0_A804:                    ; from 027fc
  A804  BD 38 05  LDA $0538,X                   ; 02804 ×2724
  A807  C9 40     CMP #$40                      ; 02807 ×2724
  A809  90 36     BCC loc_B0_A841               ; 02809 ×2724
  A80B  29 40     AND #$40                      ; 0280B ×406
  A80D  F0 2A     BEQ loc_B0_A839               ; 0280D ×406
  A80F  A5 10     LDA $10                       ; 0280F ×378
  A811  C9 03     CMP #$03                      ; 02811 ×378
  A813  F0 2C     BEQ loc_B0_A841               ; 02813 ×378
  A815  C9 06     CMP #$06                      ; 02815 ×378
  A817  D0 05     BNE loc_B0_A81E               ; 02817 ×378
  A819  A9 80     LDA #$80                      ; 02819 inferred, not run
  A81B  4C 73 A8  JMP loc_B0_A873               ; 0281B inferred, not run

loc_B0_A81E:                    ; from 02817
  A81E  C0 40     CPY #$40                      ; 0281E ×378
  A820  F0 1F     BEQ loc_B0_A841               ; 02820 ×378
  A822  BD 75 04  LDA $0475,X                   ; 02822 ×378
  A825  F0 0E     BEQ loc_B0_A835               ; 02825 ×378
  A827  C9 28     CMP #$28                      ; 02827 ×353
  A829  B0 16     BCS loc_B0_A841               ; 02829 ×353
  A82B  A5 81     LDA $81                       ; 0282B ×225
  A82D  29 08     AND #$08                      ; 0282D ×225
  A82F  D0 10     BNE loc_B0_A841               ; 0282F ×225
  A831  A0 A0     LDY #$A0                      ; 02831 ×225
  A833  D0 0C     BNE loc_B0_A841               ; 02833 ×225

loc_B0_A835:                    ; from 02825
  A835  A0 40     LDY #$40                      ; 02835 ×25
  A837  D0 08     BNE loc_B0_A841               ; 02837 ×25

loc_B0_A839:                    ; from 0280d
  A839  98        TYA                           ; 02839 ×28
  A83A  4A        LSR A                         ; 0283A ×28
  A83B  85 15     STA $15                       ; 0283B ×28
  A83D  4A        LSR A                         ; 0283D ×28
  A83E  65 15     ADC $15                       ; 0283E ×28
  A840  A8        TAY                           ; 02840 ×28

loc_B0_A841:                    ; from 02809 02833 02829 02837
  A841  BD 38 05  LDA $0538,X                   ; 02841 ×2724
  A844  29 40     AND #$40                      ; 02844 ×2724
  A846  D0 07     BNE loc_B0_A84F               ; 02846 ×2724
  A848  BD D0 03  LDA $03D0,X                   ; 02848 ×2346
  A84B  C9 4B     CMP #$4B                      ; 0284B ×2346
  A84D  F0 27     BEQ loc_B0_A876               ; 0284D ×2346

loc_B0_A84F:                    ; from 02846
  A84F  BD D0 05  LDA $05D0,X                   ; 0284F ×2666
  A852  F0 06     BEQ loc_B0_A85A               ; 02852 ×2666
  A854  A0 60     LDY #$60                      ; 02854 inferred, not run
  A856  A9 06     LDA #$06                      ; 02856 inferred, not run
  A858  D0 0C     BNE loc_B0_A866               ; 02858 inferred, not run

loc_B0_A85A:                    ; from 02852
  A85A  A5 10     LDA $10                       ; 0285A ×2666
  A85C  C9 04     CMP #$04                      ; 0285C ×2666
  A85E  D0 04     BNE loc_B0_A864               ; 0285E ×2666
  A860  A9 08     LDA #$08                      ; 02860 ×100
  A862  D0 02     BNE loc_B0_A866               ; 02862 ×100

loc_B0_A864:                    ; from 0285e
  A864  A9 0A     LDA #$0A                      ; 02864 ×2566

loc_B0_A866:                    ; from 01f0b 02862
  A866  18        CLC                           ; 02866 ×3466
  A867  7D 65 05  ADC $0565,X                   ; 02867 ×3466
  A86A  9D 65 05  STA $0565,X                   ; 0286A ×3466
  A86D  98        TYA                           ; 0286D ×3466
  A86E  DD 65 05  CMP $0565,X                   ; 0286E ×3466
  A871  B0 03     BCS loc_B0_A876               ; 02871 ×3466

loc_B0_A873:                    ; from 027ed
  A873  9D 65 05  STA $0565,X                   ; 02873 ×693

loc_B0_A876:                    ; from 02871 0284d
  A876  BD 65 05  LDA $0565,X                   ; 02876 ×3531
  A879  C9 80     CMP #$80                      ; 02879 ×3531
  A87B  90 1E     BCC loc_B0_A89B               ; 0287B ×3531
  A87D  A5 10     LDA $10                       ; 0287D ×692
  A87F  C9 09     CMP #$09                      ; 0287F ×692
  A881  D0 18     BNE loc_B0_A89B               ; 02881 ×692
  A883  A5 F3     LDA $F3                       ; 02883 ×0
  A885  F0 14     BEQ loc_B0_A89B               ; 02885 ×0
  A887  BD 75 04  LDA $0475,X                   ; 02887 inferred, not run
  A88A  D0 07     BNE $A893                     ; 0288A inferred, not run
  A88C  BD A2 04  LDA $04A2,X                   ; 0288C inferred, not run
  A88F  09 10     ORA #$10                      ; 0288F inferred, not run
  A891  D0 05     BNE $A898                     ; 02891 inferred, not run
  A893  BD A2 04  LDA $04A2,X                   ; 02893 inferred, not run
  A896  29 EF     AND #$EF                      ; 02896 inferred, not run
  A898  9D A2 04  STA $04A2,X                   ; 02898 inferred, not run

loc_B0_A89B:                    ; from 026b9 0287b 01f04 02881 02794 027b5
  A89B  20 A1 A8  JSR sub_B0_A8A1               ; 0289B ×47668
  A89E  4C 15 A9  JMP loc_B0_A915               ; 0289E ×47668

sub_B0_A8A1:                    ; from 0289b 02129
  A8A1  A5 10     LDA $10                       ; 028A1 ×56137
  A8A3  C9 04     CMP #$04                      ; 028A3 ×56137
  A8A5  D0 68     BNE loc_B0_A90F               ; 028A5 ×56137
  A8A7  BD FC 04  LDA $04FC,X                   ; 028A7 ×3054
  A8AA  F0 0C     BEQ loc_B0_A8B8               ; 028AA ×3054
  A8AC  BD BD 05  LDA $05BD,X                   ; 028AC ×2910
  A8AF  F0 07     BEQ loc_B0_A8B8               ; 028AF ×2910
  A8B1  A9 00     LDA #$00                      ; 028B1 ×920
  A8B3  9D BD 05  STA $05BD,X                   ; 028B3 ×920
  A8B6  F0 56     BEQ loc_B0_A90E               ; 028B6 ×920

loc_B0_A8B8:                    ; from 028af 028aa
  A8B8  BD BD 05  LDA $05BD,X                   ; 028B8 ×2134
  A8BB  F0 08     BEQ loc_B0_A8C5               ; 028BB ×2134
  A8BD  10 06     BPL loc_B0_A8C5               ; 028BD ×80
  A8BF  A9 00     LDA #$00                      ; 028BF ×0
  A8C1  38        SEC                           ; 028C1 ×0
  A8C2  FD BD 05  SBC $05BD,X                   ; 028C2 ×0

loc_B0_A8C5:                    ; from 028bb 028bd
  A8C5  85 15     STA $15                       ; 028C5 ×2134
  A8C7  BD 56 05  LDA $0556,X                   ; 028C7 ×2134
  A8CA  48        PHA                           ; 028CA ×2134
  A8CB  5D BD 05  EOR $05BD,X                   ; 028CB ×2134
  A8CE  10 19     BPL loc_B0_A8E9               ; 028CE ×2134
  A8D0  BD 65 05  LDA $0565,X                   ; 028D0 ×523
  A8D3  38        SEC                           ; 028D3 ×523
  A8D4  E5 15     SBC $15                       ; 028D4 ×523
  A8D6  B0 1B     BCS loc_B0_A8F3               ; 028D6 ×523
  A8D8  BD 56 05  LDA $0556,X                   ; 028D8 ×0
  A8DB  49 80     EOR #$80                      ; 028DB ×0
  A8DD  9D 56 05  STA $0556,X                   ; 028DD ×0
  A8E0  A5 15     LDA $15                       ; 028E0 ×0
  A8E2  69 0F     ADC #$0F                      ; 028E2 ×0
  A8E4  FD 65 05  SBC $0565,X                   ; 028E4 ×0
  A8E7  B0 0A     BCS loc_B0_A8F3               ; 028E7 ×0

loc_B0_A8E9:                    ; from 028ce
  A8E9  A5 15     LDA $15                       ; 028E9 ×1611
  A8EB  DD 65 05  CMP $0565,X                   ; 028EB ×1611
  A8EE  B0 03     BCS loc_B0_A8F3               ; 028EE ×1611
  A8F0  BD 65 05  LDA $0565,X                   ; 028F0 ×1611

loc_B0_A8F3:                    ; from 028d6
  A8F3  85 8D     STA $8D                       ; 028F3 ×2134
  A8F5  20 4F 8F  JSR sub_B0_8F4F               ; 028F5 ×2134
  A8F8  68        PLA                           ; 028F8 ×2134
  A8F9  9D 56 05  STA $0556,X                   ; 028F9 ×2134
  A8FC  BD BD 05  LDA $05BD,X                   ; 028FC ×2134
  A8FF  F0 0D     BEQ loc_B0_A90E               ; 028FF ×2134
  A901  2A        ROL A                         ; 02901 ×80
  A902  A9 00     LDA #$00                      ; 02902 ×80
  A904  B0 02     BCS $A908                     ; 02904 ×80
  A906  A9 FF     LDA #$FF                      ; 02906 ×80
  A908  7D BD 05  ADC $05BD,X                   ; 02908 ×80
  A90B  9D BD 05  STA $05BD,X                   ; 0290B ×80

loc_B0_A90E:                    ; from 028ff 028b6
  A90E  60        RTS                           ; 0290E ×3054

loc_B0_A90F:                    ; from 028a5
  A90F  4C 4C 8F  JMP sub_B0_8F4C               ; 0290F ×53083

loc_B0_A912:                    ; from 0292a 02926 02940
  A912  4C CB A9  JMP loc_B0_A9CB               ; 02912 ×44735

loc_B0_A915:                    ; from 0289e
  A915  A5 EB     LDA $EB                       ; 02915 ×47668
  A917  D0 09     BNE loc_B0_A922               ; 02917 ×47668
  A919  A5 10     LDA $10                       ; 02919 ×47668
  A91B  C9 05     CMP #$05                      ; 0291B ×47668
  A91D  F0 03     BEQ loc_B0_A922               ; 0291D ×47668
  A91F  20 12 9E  JSR sub_B0_9E12               ; 0291F ×46378

loc_B0_A922:                    ; from 0291d
  A922  A5 10     LDA $10                       ; 02922 ×47668
  A924  C9 02     CMP #$02                      ; 02924 ×47668
  A926  F0 EA     BEQ loc_B0_A912               ; 02926 ×47668
  A928  B5 2B     LDA $2B,X                     ; 02928 ×47161
  A92A  10 E6     BPL loc_B0_A912               ; 0292A ×47161
  A92C  BD D0 05  LDA $05D0,X                   ; 0292C ×2965
  A92F  10 0D     BPL loc_B0_A93E               ; 0292F ×2965
  A931  BD C0 04  LDA $04C0,X                   ; 02931 inferred, not run
  A934  C9 01     CMP #$01                      ; 02934 inferred, not run
  A936  F0 DA     BEQ loc_B0_A912               ; 02936 inferred, not run
  A938  A0 01     LDY #$01                      ; 02938 inferred, not run
  A93A  A9 F0     LDA #$F0                      ; 0293A inferred, not run
  A93C  D0 79     BNE loc_B0_A9B7               ; 0293C inferred, not run

loc_B0_A93E:                    ; from 0292f
  A93E  B5 EC     LDA $EC,X                     ; 0293E ×2965
  A940  D0 D0     BNE loc_B0_A912               ; 02940 ×2965
  A942  BD 38 05  LDA $0538,X                   ; 02942 ×2933
  A945  29 40     AND #$40                      ; 02945 ×2933
  A947  F0 4B     BEQ loc_B0_A994               ; 02947 ×2933
  A949  A0 03     LDY #$03                      ; 02949 ×2
  A94B  A5 10     LDA $10                       ; 0294B ×2
  A94D  C9 03     CMP #$03                      ; 0294D ×2
  A94F  F0 25     BEQ $A976                     ; 0294F ×2
  A951  C9 06     CMP #$06                      ; 02951 ×2
  A953  F0 21     BEQ $A976                     ; 02953 ×2
  A955  C9 0C     CMP #$0C                      ; 02955 ×2
  A957  F0 1D     BEQ $A976                     ; 02957 ×2
  A959  A5 81     LDA $81                       ; 02959 ×2
  A95B  29 08     AND #$08                      ; 0295B ×2
  A95D  D0 6C     BNE loc_B0_A9CB               ; 0295D ×2
  A95F  BD 75 04  LDA $0475,X                   ; 0295F inferred, not run
  A962  C9 70     CMP #$70                      ; 02962 inferred, not run
  A964  B0 65     BCS loc_B0_A9CB               ; 02964 inferred, not run
  A966  BD 93 04  LDA $0493,X                   ; 02966 inferred, not run
  A969  FD 75 04  SBC $0475,X                   ; 02969 inferred, not run
  A96C  90 5D     BCC loc_B0_A9CB               ; 0296C inferred, not run
  A96E  C9 30     CMP #$30                      ; 0296E inferred, not run
  A970  90 59     BCC loc_B0_A9CB               ; 02970 inferred, not run
  A972  A9 00     LDA #$00                      ; 02972 inferred, not run
  A974  F0 41     BEQ loc_B0_A9B7               ; 02974 inferred, not run
  A976  BD 75 04  LDA $0475,X                   ; 02976 ×0
  A979  C9 12     CMP #$12                      ; 02979 ×0
  A97B  B0 4E     BCS loc_B0_A9CB               ; 0297B ×0
  A97D  A5 81     LDA $81                       ; 0297D ×0
  A97F  29 08     AND #$08                      ; 0297F ×0
  A981  D0 48     BNE loc_B0_A9CB               ; 02981 ×0
  A983  A9 02     LDA #$02                      ; 02983 ×0
  A985  9D C0 04  STA $04C0,X                   ; 02985 ×0
  A988  A9 80     LDA #$80                      ; 02988 ×0
  A98A  9D CF 04  STA $04CF,X                   ; 0298A ×0
  A98D  A9 00     LDA #$00                      ; 0298D ×0
  A98F  9D BB 03  STA $03BB,X                   ; 0298F ×0
  A992  F0 2F     BEQ $A9C3                     ; 02992 ×0

loc_B0_A994:                    ; from 02947
  A994  A0 04     LDY #$04                      ; 02994 ×2931
  A996  BD 75 04  LDA $0475,X                   ; 02996 ×2931
  A999  1D FC 04  ORA $04FC,X                   ; 02999 ×2931
  A99C  D0 2D     BNE loc_B0_A9CB               ; 0299C ×2931
  A99E  BD 38 05  LDA $0538,X                   ; 0299E ×95
  A9A1  10 01     BPL loc_B0_A9A4               ; 029A1 ×95
  A9A3  88        DEY                           ; 029A3 ×0

loc_B0_A9A4:                    ; from 029a1
  A9A4  A5 10     LDA $10                       ; 029A4 ×95
  A9A6  C9 0B     CMP #$0B                      ; 029A6 ×95
  A9A8  F0 06     BEQ loc_B0_A9B0               ; 029A8 ×95
  A9AA  49 03     EOR #$03                      ; 029AA ×72
  A9AC  F0 04     BEQ loc_B0_A9B2               ; 029AC ×72
  A9AE  D0 05     BNE loc_B0_A9B5               ; 029AE ×66

loc_B0_A9B0:                    ; from 029a8
  A9B0  A9 98     LDA #$98                      ; 029B0 ×23

loc_B0_A9B2:                    ; from 029ac
  A9B2  C8        INY                           ; 029B2 ×29
  A9B3  D0 02     BNE loc_B0_A9B7               ; 029B3 ×29

loc_B0_A9B5:                    ; from 029ae
  A9B5  A9 E0     LDA #$E0                      ; 029B5 ×66

loc_B0_A9B7:                    ; from 029b3
  A9B7  9D CF 04  STA $04CF,X                   ; 029B7 ×95
  A9BA  98        TYA                           ; 029BA ×95
  A9BB  9D C0 04  STA $04C0,X                   ; 029BB ×95
  A9BE  A9 80     LDA #$80                      ; 029BE ×95
  A9C0  9D BB 03  STA $03BB,X                   ; 029C0 ×95
  A9C3  A9 30     LDA #$30                      ; 029C3 ×95
  A9C5  9D BD 03  STA $03BD,X                   ; 029C5 ×95
  A9C8  FE 75 04  INC $0475,X                   ; 029C8 ×95

loc_B0_A9CB:                    ; from 02912 0299c 0295d
  A9CB  A5 C8     LDA $C8                       ; 029CB ×47668
  A9CD  D0 6E     BNE loc_B0_AA3D               ; 029CD ×47668
  A9CF  BD 38 05  LDA $0538,X                   ; 029CF ×46158
  A9D2  29 40     AND #$40                      ; 029D2 ×46158
  A9D4  F0 36     BEQ loc_B0_AA0C               ; 029D4 ×46158
  A9D6  A5 10     LDA $10                       ; 029D6 ×482
  A9D8  C9 0C     CMP #$0C                      ; 029D8 ×482
  A9DA  D0 33     BNE loc_B0_AA0F               ; 029DA ×482
  A9DC  20 FE 93  JSR sub_B0_93FE               ; 029DC ×425
  A9DF  BD 75 04  LDA $0475,X                   ; 029DF ×425
  A9E2  D0 28     BNE loc_B0_AA0C               ; 029E2 ×425
  A9E4  9D BB 03  STA $03BB,X                   ; 029E4 ×9
  A9E7  A9 01     LDA #$01                      ; 029E7 ×9
  A9E9  9D C0 04  STA $04C0,X                   ; 029E9 ×9
  A9EC  A5 25     LDA $25                       ; 029EC ×9
  A9EE  9D CF 04  STA $04CF,X                   ; 029EE ×9
  A9F1  BD 39 04  LDA $0439,X                   ; 029F1 ×9
  A9F4  29 08     AND #$08                      ; 029F4 ×9
  A9F6  D0 14     BNE loc_B0_AA0C               ; 029F6 ×9
  A9F8  A9 9F     LDA #$9F                      ; 029F8 ×9
  A9FA  20 48 91  JSR sub_B0_9148               ; 029FA ×9
  A9FD  20 58 FE  JSR sub_B0_FE58               ; 029FD ×9
  AA00  A5 82     LDA $82                       ; 02A00 ×9
  AA02  9D 92 05  STA $0592,X                   ; 02A02 ×9
  AA05  A9 6C     LDA #$6C                      ; 02A05 ×9
  AA07  9D C1 03  STA $03C1,X                   ; 02A07 ×9
  AA0A  A6 82     LDX $82                       ; 02A0A ×9

loc_B0_AA0C:                    ; from 029d4 029e2
  AA0C  4C 0A AB  JMP loc_B0_AB0A               ; 02A0C ×46101

loc_B0_AA0F:                    ; from 029da
  AA0F  C9 03     CMP #$03                      ; 02A0F ×57
  AA11  F0 6E     BEQ $AA81                     ; 02A11 ×57
  AA13  C9 06     CMP #$06                      ; 02A13 ×57
  AA15  F0 6A     BEQ $AA81                     ; 02A15 ×57
  AA17  C9 0B     CMP #$0B                      ; 02A17 ×57
  AA19  D0 25     BNE $AA40                     ; 02A19 ×57
  AA1B  BD 92 05  LDA $0592,X                   ; 02A1B ×57
  AA1E  9D C0 04  STA $04C0,X                   ; 02A1E ×57
  AA21  18        CLC                           ; 02A21 ×57
  AA22  20 EE 8E  JSR sub_B0_8EEE               ; 02A22 ×57
  AA25  20 71 E4  JSR sub_B0_E471               ; 02A25 ×57
  AA28  BD 92 05  LDA $0592,X                   ; 02A28 ×57
  AA2B  F0 10     BEQ loc_B0_AA3D               ; 02A2B ×57
  AA2D  BD D0 05  LDA $05D0,X                   ; 02A2D ×55
  AA30  D0 06     BNE $AA38                     ; 02A30 ×55
  AA32  A5 D9     LDA $D9                       ; 02A32 ×55
  AA34  C9 0A     CMP #$0A                      ; 02A34 ×55
  AA36  D0 05     BNE loc_B0_AA3D               ; 02A36 ×55
  AA38  A9 00     LDA #$00                      ; 02A38 inferred, not run
  AA3A  9D 38 05  STA $0538,X                   ; 02A3A inferred, not run

loc_B0_AA3D:                    ; from 029cd 02a36 02a2b
  AA3D  4C 2C AB  JMP loc_B0_AB2C               ; 02A3D ×1567
  AA40  A5 81     LDA $81                       ; 02A40 inferred, not run
  AA42  29 08     AND #$08                      ; 02A42 inferred, not run
  AA44  D0 38     BNE $AA7E                     ; 02A44 inferred, not run
  AA46  A0 E0     LDY #$E0                      ; 02A46 inferred, not run
  AA48  BD 75 04  LDA $0475,X                   ; 02A48 inferred, not run
  AA4B  C9 08     CMP #$08                      ; 02A4B inferred, not run
  AA4D  B0 10     BCS $AA5F                     ; 02A4D inferred, not run
  AA4F  A9 00     LDA #$00                      ; 02A4F inferred, not run
  AA51  9D C0 04  STA $04C0,X                   ; 02A51 inferred, not run
  AA54  A9 C0     LDA #$C0                      ; 02A54 inferred, not run
  AA56  9D CF 04  STA $04CF,X                   ; 02A56 inferred, not run
  AA59  20 E1 8E  JSR loc_B0_8EE1               ; 02A59 inferred, not run
  AA5C  4C 23 AB  JMP loc_B0_AB23               ; 02A5C inferred, not run
  AA5F  C9 40     CMP #$40                      ; 02A5F inferred, not run
  AA61  B0 0E     BCS $AA71                     ; 02A61 inferred, not run
  AA63  BD 65 05  LDA $0565,X                   ; 02A63 inferred, not run
  AA66  10 09     BPL $AA71                     ; 02A66 inferred, not run
  AA68  BD C0 04  LDA $04C0,X                   ; 02A68 inferred, not run
  AA6B  F0 0B     BEQ $AA78                     ; 02A6B inferred, not run
  AA6D  10 02     BPL $AA71                     ; 02A6D inferred, not run
  AA6F  A0 18     LDY #$18                      ; 02A6F inferred, not run
  AA71  A9 03     LDA #$03                      ; 02A71 inferred, not run
  AA73  84 15     STY $15                       ; 02A73 inferred, not run
  AA75  20 A8 8E  JSR loc_B0_8EA8               ; 02A75 inferred, not run
  AA78  4C 23 AB  JMP loc_B0_AB23               ; 02A78 inferred, not run
  AA7B  .byte 4C 2C AB                                          ; 02A7B
  AA7E  4C 0A AB  JMP loc_B0_AB0A               ; 02A7E inferred, not run
  AA81  A5 10     LDA $10                       ; 02A81 inferred, not run
  AA83  C9 06     CMP #$06                      ; 02A83 inferred, not run
  AA85  D0 42     BNE $AAC9                     ; 02A85 inferred, not run
  AA87  A9 00     LDA #$00                      ; 02A87 inferred, not run
  AA89  9D 65 05  STA $0565,X                   ; 02A89 inferred, not run
  AA8C  A9 CC     LDA #$CC                      ; 02A8C inferred, not run
  AA8E  38        SEC                           ; 02A8E inferred, not run
  AA8F  FD 1B 04  SBC $041B,X                   ; 02A8F inferred, not run
  AA92  F0 09     BEQ $AA9D                     ; 02A92 inferred, not run
  AA94  18        CLC                           ; 02A94 inferred, not run
  AA95  20 EE 8E  JSR sub_B0_8EEE               ; 02A95 inferred, not run
  AA98  A9 CC     LDA #$CC                      ; 02A98 inferred, not run
  AA9A  9D 1B 04  STA $041B,X                   ; 02A9A inferred, not run
  AA9D  BD 1B 04  LDA $041B,X                   ; 02A9D inferred, not run
  AAA0  FD 39 04  SBC $0439,X                   ; 02AA0 inferred, not run
  AAA3  38        SEC                           ; 02AA3 inferred, not run
  AAA4  E5 89     SBC $89                       ; 02AA4 inferred, not run
  AAA6  A8        TAY                           ; 02AA6 inferred, not run
  AAA7  B5 29     LDA $29,X                     ; 02AA7 inferred, not run
  AAA9  29 0C     AND #$0C                      ; 02AA9 inferred, not run
  AAAB  C9 08     CMP #$08                      ; 02AAB inferred, not run
  AAAD  B0 0E     BCS $AABD                     ; 02AAD inferred, not run
  AAAF  B5 29     LDA $29,X                     ; 02AAF inferred, not run
  AAB1  29 04     AND #$04                      ; 02AB1 inferred, not run
  AAB3  F0 11     BEQ $AAC6                     ; 02AB3 inferred, not run
  AAB5  C0 E0     CPY #$E0                      ; 02AB5 inferred, not run
  AAB7  B0 0D     BCS $AAC6                     ; 02AB7 inferred, not run
  AAB9  A9 FE     LDA #$FE                      ; 02AB9 inferred, not run
  AABB  D0 06     BNE $AAC3                     ; 02ABB inferred, not run
  AABD  C0 34     CPY #$34                      ; 02ABD inferred, not run
  AABF  90 05     BCC $AAC6                     ; 02ABF inferred, not run
  AAC1  A9 01     LDA #$01                      ; 02AC1 inferred, not run
  AAC3  20 EE 8E  JSR sub_B0_8EEE               ; 02AC3 inferred, not run
  AAC6  4C 23 AB  JMP loc_B0_AB23               ; 02AC6 inferred, not run
  AAC9  BD 75 04  LDA $0475,X                   ; 02AC9 inferred, not run
  AACC  F0 09     BEQ $AAD7                     ; 02ACC inferred, not run
  AACE  A5 81     LDA $81                       ; 02ACE inferred, not run
  AAD0  29 08     AND #$08                      ; 02AD0 inferred, not run
  AAD2  1D BD 03  ORA $03BD,X                   ; 02AD2 inferred, not run
  AAD5  D0 33     BNE loc_B0_AB0A               ; 02AD5 inferred, not run
  AAD7  9D BD 03  STA $03BD,X                   ; 02AD7 inferred, not run
  AADA  9D BB 03  STA $03BB,X                   ; 02ADA inferred, not run
  AADD  B5 E7     LDA $E7,X                     ; 02ADD inferred, not run
  AADF  F0 0A     BEQ $AAEB                     ; 02ADF inferred, not run
  AAE1  38        SEC                           ; 02AE1 inferred, not run
  AAE2  20 F6 AA  JSR $AAF6                     ; 02AE2 inferred, not run
  AAE5  A9 00     LDA #$00                      ; 02AE5 inferred, not run
  AAE7  95 E7     STA $E7,X                     ; 02AE7 inferred, not run
  AAE9  F0 38     BEQ loc_B0_AB23               ; 02AE9 inferred, not run
  AAEB  20 F1 AA  JSR $AAF1                     ; 02AEB inferred, not run
  AAEE  4C 23 AB  JMP loc_B0_AB23               ; 02AEE inferred, not run
  AAF1  BD 75 04  LDA $0475,X                   ; 02AF1 inferred, not run
  AAF4  C9 08     CMP #$08                      ; 02AF4 inferred, not run
  AAF6  A0 E4     LDY #$E4                      ; 02AF6 inferred, not run

loc_B0_AAF8:                    ; from 03985
  AAF8  B0 09     BCS loc_B0_AB03               ; 02AF8 ×11618
  AAFA  E0 02     CPX #$02                      ; 02AFA ×5816
  AAFC  B0 01     BCS loc_B0_AAFF               ; 02AFC ×5816
  AAFE  88        DEY                           ; 02AFE inferred, not run

loc_B0_AAFF:                    ; from 02afc
  AAFF  98        TYA                           ; 02AFF ×5816
  AB00  49 FF     EOR #$FF                      ; 02B00 ×5816
  AB02  A8        TAY                           ; 02B02 ×5816

loc_B0_AB03:                    ; from 02af8
  AB03  A9 01     LDA #$01                      ; 02B03 ×11618
  AB05  84 15     STY $15                       ; 02B05 ×11618
  AB07  4C A8 8E  JMP loc_B0_8EA8               ; 02B07 ×11618

loc_B0_AB0A:                    ; from 02a0c
  AB0A  BD FC 04  LDA $04FC,X                   ; 02B0A ×46101
  AB0D  F0 05     BEQ loc_B0_AB14               ; 02B0D ×46101
  AB0F  BD D0 05  LDA $05D0,X                   ; 02B0F ×42805
  AB12  30 0F     BMI loc_B0_AB23               ; 02B12 ×42805

loc_B0_AB14:                    ; from 02b0d
  AB14  BD BB 03  LDA $03BB,X                   ; 02B14 ×46101
  AB17  C9 C0     CMP #$C0                      ; 02B17 ×46101
  AB19  F0 05     BEQ $AB20                     ; 02B19 ×46101
  AB1B  35 29     AND $29,X                     ; 02B1B ×46101
  AB1D  9D BB 03  STA $03BB,X                   ; 02B1D ×46101
  AB20  20 C1 8D  JSR sub_B0_8DC1               ; 02B20 ×46101

loc_B0_AB23:                    ; from 0270f
  AB23  20 71 E4  JSR sub_B0_E471               ; 02B23 ×47268
  AB26  A5 10     LDA $10                       ; 02B26 ×47268
  AB28  C9 02     CMP #$02                      ; 02B28 ×47268
  AB2A  F0 03     BEQ loc_B0_AB2F               ; 02B2A ×47268

loc_B0_AB2C:                    ; from 02a3d
  AB2C  20 66 CF  JSR sub_B0_CF66               ; 02B2C ×48328

loc_B0_AB2F:                    ; from 02b2a
  AB2F  BD FC 04  LDA $04FC,X                   ; 02B2F ×48835
  AB32  05 C8     ORA $C8                       ; 02B32 ×48835
  AB34  D0 6C     BNE loc_B0_ABA2               ; 02B34 ×48835
  AB36  A5 10     LDA $10                       ; 02B36 ×4486
  AB38  C9 0B     CMP #$0B                      ; 02B38 ×4486
  AB3A  D0 12     BNE loc_B0_AB4E               ; 02B3A ×4486
  AB3C  BD 38 05  LDA $0538,X                   ; 02B3C ×414
  AB3F  29 40     AND #$40                      ; 02B3F ×414
  AB41  F0 0B     BEQ loc_B0_AB4E               ; 02B41 ×414
  AB43  BD DF 03  LDA $03DF,X                   ; 02B43 ×23
  AB46  69 10     ADC #$10                      ; 02B46 ×23
  AB48  9D DF 03  STA $03DF,X                   ; 02B48 ×23
  AB4B  4C 97 AB  JMP loc_B0_AB97               ; 02B4B ×23

loc_B0_AB4E:                    ; from 02b3a 02b41
  AB4E  C9 02     CMP #$02                      ; 02B4E ×4463
  AB50  D0 51     BNE loc_B0_ABA3               ; 02B50 ×4463
  AB52  B5 29     LDA $29,X                     ; 02B52 ×28
  AB54  29 03     AND #$03                      ; 02B54 ×28
  AB56  F0 09     BEQ loc_B0_AB61               ; 02B56 ×28
  AB58  29 02     AND #$02                      ; 02B58 ×26
  AB5A  F0 02     BEQ loc_B0_AB5E               ; 02B5A ×26
  AB5C  A9 40     LDA #$40                      ; 02B5C ×24

loc_B0_AB5E:                    ; from 02b5a
  AB5E  9D A2 04  STA $04A2,X                   ; 02B5E ×26

loc_B0_AB61:                    ; from 02b56
  AB61  BD B7 03  LDA $03B7,X                   ; 02B61 ×28
  AB64  BD A2 04  LDA $04A2,X                   ; 02B64 ×28
  AB67  0A        ASL A                         ; 02B67 ×28
  AB68  5D FD 03  EOR $03FD,X                   ; 02B68 ×28
  AB6B  10 2A     BPL loc_B0_AB97               ; 02B6B ×28
  AB6D  BD FD 03  LDA $03FD,X                   ; 02B6D ×26
  AB70  38        SEC                           ; 02B70 ×26
  AB71  E9 2E     SBC #$2E                      ; 02B71 ×26
  AB73  C9 A3     CMP #$A3                      ; 02B73 ×26
  AB75  90 20     BCC loc_B0_AB97               ; 02B75 ×26
  AB77  BD B7 03  LDA $03B7,X                   ; 02B77 ×6
  AB7A  D0 17     BNE $AB93                     ; 02B7A ×6
  AB7C  A5 0B     LDA $0B                       ; 02B7C ×6
  AB7E  29 10     AND #$10                      ; 02B7E ×6
  AB80  F0 11     BEQ $AB93                     ; 02B80 ×6
  AB82  A5 0B     LDA $0B                       ; 02B82 ×6
  AB84  29 0F     AND #$0F                      ; 02B84 ×6
  AB86  D0 07     BNE loc_B0_AB8F               ; 02B86 ×6
  AB88  A9 66     LDA #$66                      ; 02B88 ×0
  AB8A  A2 0C     LDX #$0C                      ; 02B8A ×0
  AB8C  20 4A 91  JSR sub_B0_914A               ; 02B8C ×0

loc_B0_AB8F:                    ; from 02b86
  AB8F  A9 34     LDA #$34                      ; 02B8F ×6
  AB91  D0 0C     BNE loc_B0_AB9F               ; 02B91 ×6
  AB93  A9 2C     LDA #$2C                      ; 02B93 ×0
  AB95  D0 08     BNE loc_B0_AB9F               ; 02B95 ×0

loc_B0_AB97:                    ; from 02b4b 02b75 02b6b
  AB97  BD DF 03  LDA $03DF,X                   ; 02B97 ×45
  AB9A  2A        ROL A                         ; 02B9A ×45
  AB9B  A9 24     LDA #$24                      ; 02B9B ×45
  AB9D  69 00     ADC #$00                      ; 02B9D ×45

loc_B0_AB9F:                    ; from 02b91
  AB9F  4C 88 AD  JMP loc_B0_AD88               ; 02B9F ×51

loc_B0_ABA2:                    ; from 02b34
  ABA2  60        RTS                           ; 02BA2 ×44349

loc_B0_ABA3:                    ; from 02b50
  ABA3  BD D0 05  LDA $05D0,X                   ; 02BA3 ×4435
  ABA6  10 24     BPL loc_B0_ABCC               ; 02BA6 ×4435
  ABA8  BD 65 05  LDA $0565,X                   ; 02BA8 inferred, not run
  ABAB  C9 20     CMP #$20                      ; 02BAB inferred, not run
  ABAD  A9 0F     LDA #$0F                      ; 02BAD inferred, not run
  ABAF  B0 0A     BCS $ABBB                     ; 02BAF inferred, not run
  ABB1  BD 75 04  LDA $0475,X                   ; 02BB1 inferred, not run
  ABB4  D0 03     BNE $ABB9                     ; 02BB4 inferred, not run
  ABB6  4C 98 AD  JMP loc_B0_AD98               ; 02BB6 inferred, not run
  ABB9  A9 1F     LDA #$1F                      ; 02BB9 inferred, not run
  ABBB  25 0B     AND $0B                       ; 02BBB inferred, not run
  ABBD  D0 03     BNE $ABC2                     ; 02BBD inferred, not run
  ABBF  FE DF 03  INC $03DF,X                   ; 02BBF inferred, not run
  ABC2  BD DF 03  LDA $03DF,X                   ; 02BC2 inferred, not run
  ABC5  29 01     AND #$01                      ; 02BC5 inferred, not run
  ABC7  09 62     ORA #$62                      ; 02BC7 inferred, not run
  ABC9  4C 88 AD  JMP loc_B0_AD88               ; 02BC9 inferred, not run

loc_B0_ABCC:                    ; from 02ba6
  ABCC  A5 10     LDA $10                       ; 02BCC ×4435
  ABCE  C9 08     CMP #$08                      ; 02BCE ×4435
  ABD0  D0 1A     BNE loc_B0_ABEC               ; 02BD0 ×4435
  ABD2  BD B0 05  LDA $05B0,X                   ; 02BD2 ×46
  ABD5  F0 15     BEQ loc_B0_ABEC               ; 02BD5 ×46
  ABD7  30 13     BMI loc_B0_ABEC               ; 02BD7 inferred, not run
  ABD9  DE B0 05  DEC $05B0,X                   ; 02BD9 inferred, not run
  ABDC  A9 3A     LDA #$3A                      ; 02BDC inferred, not run
  ABDE  A5 0C     LDA $0C                       ; 02BDE inferred, not run
  ABE0  4A        LSR A                         ; 02BE0 inferred, not run
  ABE1  4A        LSR A                         ; 02BE1 inferred, not run
  ABE2  29 01     AND #$01                      ; 02BE2 inferred, not run
  ABE4  09 58     ORA #$58                      ; 02BE4 inferred, not run
  ABE6  4C 88 AD  JMP loc_B0_AD88               ; 02BE6 inferred, not run

loc_B0_ABE9:                    ; from 02bf1
  ABE9  4C 85 AC  JMP loc_B0_AC85               ; 02BE9 ×3251

loc_B0_ABEC:                    ; from 02bd0 02bd5
  ABEC  BD 38 05  LDA $0538,X                   ; 02BEC ×4435
  ABEF  29 40     AND #$40                      ; 02BEF ×4435
  ABF1  F0 F6     BEQ loc_B0_ABE9               ; 02BF1 ×4435
  ABF3  A4 10     LDY $10                       ; 02BF3 ×1184
  ABF5  C0 03     CPY #$03                      ; 02BF5 ×1184
  ABF7  F0 33     BEQ $AC2C                     ; 02BF7 ×1184
  ABF9  C0 06     CPY #$06                      ; 02BF9 ×1184
  ABFB  F0 2F     BEQ $AC2C                     ; 02BFB ×1184
  ABFD  C0 0C     CPY #$0C                      ; 02BFD ×1184
  ABFF  D0 4C     BNE loc_B0_AC4D               ; 02BFF ×1184
  AC01  BD A2 04  LDA $04A2,X                   ; 02C01 ×425
  AC04  29 BF     AND #$BF                      ; 02C04 ×425
  AC06  9D A2 04  STA $04A2,X                   ; 02C06 ×425
  AC09  8A        TXA                           ; 02C09 ×425
  AC0A  45 0B     EOR $0B                       ; 02C0A ×425
  AC0C  6A        ROR A                         ; 02C0C ×425
  AC0D  90 01     BCC loc_B0_AC10               ; 02C0D ×425
  AC0F  60        RTS                           ; 02C0F ×213

loc_B0_AC10:                    ; from 02c0d
  AC10  B5 2B     LDA $2B,X                     ; 02C10 ×212
  AC12  F0 0B     BEQ loc_B0_AC1F               ; 02C12 ×212
  AC14  FE 92 05  INC $0592,X                   ; 02C14 ×49
  AC17  BD 92 05  LDA $0592,X                   ; 02C17 ×49
  AC1A  29 03     AND #$03                      ; 02C1A ×49
  AC1C  9D 92 05  STA $0592,X                   ; 02C1C ×49

loc_B0_AC1F:                    ; from 02c12
  AC1F  BC 92 05  LDY $0592,X                   ; 02C1F ×212
  AC22  B9 28 AC  LDA $AC28,Y                   ; 02C22 ×212
  AC25  4C 88 AD  JMP loc_B0_AD88               ; 02C25 ×212
  AC28  .byte 45 46 4A 4B                                       ; 02C28 data, read by 02c22
  AC2C  BD A2 04  LDA $04A2,X                   ; 02C2C inferred, not run
  AC2F  29 BF     AND #$BF                      ; 02C2F inferred, not run
  AC31  9D A2 04  STA $04A2,X                   ; 02C31 inferred, not run
  AC34  BD BD 03  LDA $03BD,X                   ; 02C34 inferred, not run
  AC37  C9 01     CMP #$01                      ; 02C37 inferred, not run
  AC39  A9 3A     LDA #$3A                      ; 02C39 inferred, not run
  AC3B  90 45     BCC loc_B0_AC82               ; 02C3B inferred, not run
  AC3D  C0 06     CPY #$06                      ; 02C3D inferred, not run
  AC3F  F0 41     BEQ loc_B0_AC82               ; 02C3F inferred, not run
  AC41  A9 3C     LDA #$3C                      ; 02C41 inferred, not run
  AC43  BC C0 04  LDY $04C0,X                   ; 02C43 inferred, not run
  AC46  88        DEY                           ; 02C46 inferred, not run
  AC47  10 39     BPL loc_B0_AC82               ; 02C47 inferred, not run
  AC49  A9 3B     LDA #$3B                      ; 02C49 inferred, not run
  AC4B  D0 35     BNE loc_B0_AC82               ; 02C4B inferred, not run

loc_B0_AC4D:                    ; from 02bff
  AC4D  BC 75 04  LDY $0475,X                   ; 02C4D ×759
  AC50  BD 0B 05  LDA $050B,X                   ; 02C50 ×759
  AC53  F0 07     BEQ loc_B0_AC5C               ; 02C53 ×759
  AC55  DE 0B 05  DEC $050B,X                   ; 02C55 inferred, not run
  AC58  A9 3E     LDA #$3E                      ; 02C58 inferred, not run
  AC5A  D0 26     BNE loc_B0_AC82               ; 02C5A inferred, not run

loc_B0_AC5C:                    ; from 02c53
  AC5C  C0 30     CPY #$30                      ; 02C5C ×759
  AC5E  B0 0E     BCS loc_B0_AC6E               ; 02C5E ×759
  AC60  BD 65 05  LDA $0565,X                   ; 02C60 ×759
  AC63  10 09     BPL loc_B0_AC6E               ; 02C63 ×759
  AC65  A9 3D     LDA #$3D                      ; 02C65 ×218
  AC67  BC C0 04  LDY $04C0,X                   ; 02C67 ×218
  AC6A  F0 16     BEQ loc_B0_AC82               ; 02C6A ×218
  AC6C  30 14     BMI loc_B0_AC82               ; 02C6C inferred, not run

loc_B0_AC6E:                    ; from 02c63
  AC6E  C0 10     CPY #$10                      ; 02C6E ×541
  AC70  90 09     BCC loc_B0_AC7B               ; 02C70 ×541
  AC72  BD C0 04  LDA $04C0,X                   ; 02C72 inferred, not run
  AC75  C9 80     CMP #$80                      ; 02C75 inferred, not run
  AC77  A9 38     LDA #$38                      ; 02C77 inferred, not run
  AC79  B0 07     BCS loc_B0_AC82               ; 02C79 inferred, not run

loc_B0_AC7B:                    ; from 02c70
  AC7B  A5 0C     LDA $0C                       ; 02C7B ×541
  AC7D  29 02     AND #$02                      ; 02C7D ×541
  AC7F  4A        LSR A                         ; 02C7F ×541
  AC80  69 38     ADC #$38                      ; 02C80 ×541

loc_B0_AC82:                    ; from 02c9d 02c99 02c6a 02cdd 02cbc
  AC82  4C 88 AD  JMP loc_B0_AD88               ; 02C82 ×1533

loc_B0_AC85:                    ; from 02be9
  AC85  BD 75 04  LDA $0475,X                   ; 02C85 ×3251
  AC88  F0 19     BEQ loc_B0_ACA3               ; 02C88 ×3251
  AC8A  BC 38 05  LDY $0538,X                   ; 02C8A ×766
  AC8D  30 10     BMI $AC9F                     ; 02C8D ×766
  AC8F  BD C0 04  LDA $04C0,X                   ; 02C8F ×766
  AC92  18        CLC                           ; 02C92 ×766
  AC93  69 02     ADC #$02                      ; 02C93 ×766
  AC95  C9 05     CMP #$05                      ; 02C95 ×766
  AC97  A9 2D     LDA #$2D                      ; 02C97 ×766
  AC99  90 E7     BCC loc_B0_AC82               ; 02C99 ×766
  AC9B  A9 05     LDA #$05                      ; 02C9B ×480
  AC9D  D0 E3     BNE loc_B0_AC82               ; 02C9D ×480
  AC9F  A9 2E     LDA #$2E                      ; 02C9F ×0
  ACA1  D0 DF     BNE loc_B0_AC82               ; 02CA1 ×0

loc_B0_ACA3:                    ; from 02c88
  ACA3  A5 10     LDA $10                       ; 02CA3 ×2485
  ACA5  C9 04     CMP #$04                      ; 02CA5 ×2485
  ACA7  D0 63     BNE loc_B0_AD0C               ; 02CA7 ×2485
  ACA9  A5 D9     LDA $D9                       ; 02CA9 ×58
  ACAB  F0 36     BEQ loc_B0_ACE3               ; 02CAB ×58
  ACAD  C9 01     CMP #$01                      ; 02CAD ×58
  ACAF  D0 32     BNE loc_B0_ACE3               ; 02CAF ×58
  ACB1  B5 29     LDA $29,X                     ; 02CB1 ×16
  ACB3  29 04     AND #$04                      ; 02CB3 ×16
  ACB5  F0 0B     BEQ loc_B0_ACC2               ; 02CB5 ×16
  ACB7  A9 4B     LDA #$4B                      ; 02CB7 ×4
  ACB9  BC 38 05  LDY $0538,X                   ; 02CB9 ×4
  ACBC  10 C4     BPL loc_B0_AC82               ; 02CBC ×4
  ACBE  A9 0E     LDA #$0E                      ; 02CBE ×0
  ACC0  D0 C0     BNE loc_B0_AC82               ; 02CC0 ×0

loc_B0_ACC2:                    ; from 02cb5
  ACC2  A5 8D     LDA $8D                       ; 02CC2 ×12
  ACC4  C9 08     CMP #$08                      ; 02CC4 ×12
  ACC6  90 67     BCC $AD2F                     ; 02CC6 ×12
  ACC8  B5 29     LDA $29,X                     ; 02CC8 ×12
  ACCA  29 03     AND #$03                      ; 02CCA ×12
  ACCC  C9 01     CMP #$01                      ; 02CCC ×12
  ACCE  A9 08     LDA #$08                      ; 02CCE ×12
  ACD0  B0 63     BCS loc_B0_AD35               ; 02CD0 ×12
  ACD2  BD 38 05  LDA $0538,X                   ; 02CD2 ×4
  ACD5  30 1B     BMI $ACF2                     ; 02CD5 ×4
  ACD7  A5 8D     LDA $8D                       ; 02CD7 ×4
  ACD9  C9 40     CMP #$40                      ; 02CD9 ×4
  ACDB  A9 45     LDA #$45                      ; 02CDB ×4
  ACDD  90 A3     BCC loc_B0_AC82               ; 02CDD ×4
  ACDF  A9 51     LDA #$51                      ; 02CDF ×0
  ACE1  D0 9F     BNE loc_B0_AC82               ; 02CE1 ×0

loc_B0_ACE3:                    ; from 02caf
  ACE3  B5 29     LDA $29,X                     ; 02CE3 ×42
  ACE5  29 03     AND #$03                      ; 02CE5 ×42
  ACE7  C9 01     CMP #$01                      ; 02CE7 ×42
  ACE9  A9 08     LDA #$08                      ; 02CE9 ×42
  ACEB  B0 48     BCS loc_B0_AD35               ; 02CEB ×42
  ACED  BD 38 05  LDA $0538,X                   ; 02CED ×2
  ACF0  10 05     BPL loc_B0_ACF7               ; 02CF0 ×2
  ACF2  A9 12     LDA #$12                      ; 02CF2 inferred, not run
  ACF4  4C 88 AD  JMP loc_B0_AD88               ; 02CF4 inferred, not run

loc_B0_ACF7:                    ; from 02cf0
  ACF7  A5 D9     LDA $D9                       ; 02CF7 ×2
  ACF9  6A        ROR A                         ; 02CF9 ×2
  ACFA  6A        ROR A                         ; 02CFA ×2
  ACFB  6A        ROR A                         ; 02CFB ×2
  ACFC  5D A2 04  EOR $04A2,X                   ; 02CFC ×2
  ACFF  29 40     AND #$40                      ; 02CFF ×2
  AD01  C9 01     CMP #$01                      ; 02D01 ×2
  AD03  A9 4F     LDA #$4F                      ; 02D03 ×2
  AD05  B0 02     BCS $AD09                     ; 02D05 ×2
  AD07  A9 50     LDA #$50                      ; 02D07 ×2
  AD09  4C 88 AD  JMP loc_B0_AD88               ; 02D09 ×2

loc_B0_AD0C:                    ; from 02ca7
  AD0C  A5 10     LDA $10                       ; 02D0C ×2427
  AD0E  C9 05     CMP #$05                      ; 02D0E ×2427
  AD10  D0 0D     BNE loc_B0_AD1F               ; 02D10 ×2427
  AD12  B5 29     LDA $29,X                     ; 02D12 ×20
  AD14  29 04     AND #$04                      ; 02D14 ×20
  AD16  F0 07     BEQ loc_B0_AD1F               ; 02D16 ×20
  AD18  9D 65 05  STA $0565,X                   ; 02D18 ×8

loc_B0_AD1B:                    ; from 02d28
  AD1B  A9 4B     LDA #$4B                      ; 02D1B ×152
  AD1D  D0 69     BNE loc_B0_AD88               ; 02D1D ×152

loc_B0_AD1F:                    ; from 02d10 02d16
  AD1F  A4 10     LDY $10                       ; 02D1F ×2419
  AD21  B9 C5 AD  LDA $ADC5,Y                   ; 02D21 ×2419
  AD24  29 04     AND #$04                      ; 02D24 ×2419
  AD26  35 29     AND $29,X                     ; 02D26 ×2419
  AD28  D0 F1     BNE loc_B0_AD1B               ; 02D28 ×2419
  AD2A  BD 65 05  LDA $0565,X                   ; 02D2A ×2275
  AD2D  C9 20     CMP #$20                      ; 02D2D ×2275
  AD2F  90 67     BCC loc_B0_AD98               ; 02D2F ×2275
  AD31  4A        LSR A                         ; 02D31 ×803
  AD32  4A        LSR A                         ; 02D32 ×803
  AD33  4A        LSR A                         ; 02D33 ×803
  AD34  4A        LSR A                         ; 02D34 ×803

loc_B0_AD35:                    ; from 02ceb 02cd0
  AD35  18        CLC                           ; 02D35 ×851
  AD36  7D DF 03  ADC $03DF,X                   ; 02D36 ×851
  AD39  9D DF 03  STA $03DF,X                   ; 02D39 ×851
  AD3C  2A        ROL A                         ; 02D3C ×851
  AD3D  2A        ROL A                         ; 02D3D ×851
  AD3E  2A        ROL A                         ; 02D3E ×851
  AD3F  2A        ROL A                         ; 02D3F ×851
  AD40  29 07     AND #$07                      ; 02D40 ×851
  AD42  A8        TAY                           ; 02D42 ×851
  AD43  BD 38 05  LDA $0538,X                   ; 02D43 ×851
  AD46  30 44     BMI loc_B0_AD8C               ; 02D46 ×851
  AD48  BD 56 05  LDA $0556,X                   ; 02D48 ×841
  AD4B  29 7F     AND #$7F                      ; 02D4B ×841
  AD4D  C9 40     CMP #$40                      ; 02D4D ×841
  AD4F  D0 0F     BNE loc_B0_AD60               ; 02D4F ×841
  AD51  A5 0C     LDA $0C                       ; 02D51 ×34
  AD53  65 0B     ADC $0B                       ; 02D53 ×34
  AD55  4A        LSR A                         ; 02D55 ×34
  AD56  4A        LSR A                         ; 02D56 ×34
  AD57  4A        LSR A                         ; 02D57 ×34
  AD58  29 03     AND #$03                      ; 02D58 ×34
  AD5A  A8        TAY                           ; 02D5A ×34
  AD5B  B9 A4 CF  LDA $CFA4,Y                   ; 02D5B ×34
  AD5E  D0 28     BNE loc_B0_AD88               ; 02D5E ×34

loc_B0_AD60:                    ; from 02d4f
  AD60  A6 10     LDX $10                       ; 02D60 ×807
  AD62  BD C5 AD  LDA $ADC5,X                   ; 02D62 ×807
  AD65  29 80     AND #$80                      ; 02D65 ×807
  AD67  A6 82     LDX $82                       ; 02D67 ×807
  AD69  0D 75 04  ORA $0475                     ; 02D69 ×807
  AD6C  0D 76 04  ORA $0476                     ; 02D6C ×807
  AD6F  D0 14     BNE loc_B0_AD85               ; 02D6F ×807
  AD71  AD 65 05  LDA $0565                     ; 02D71 ×149
  AD74  6D 66 05  ADC $0566                     ; 02D74 ×149
  AD77  90 0C     BCC loc_B0_AD85               ; 02D77 ×149
  AD79  BD A2 04  LDA $04A2,X                   ; 02D79 inferred, not run
  AD7C  29 10     AND #$10                      ; 02D7C inferred, not run
  AD7E  F0 05     BEQ loc_B0_AD85               ; 02D7E inferred, not run
  AD80  B9 98 CF  LDA $CF98,Y                   ; 02D80 inferred, not run
  AD83  D0 03     BNE loc_B0_AD88               ; 02D83 inferred, not run

loc_B0_AD85:                    ; from 02d6f 02d77
  AD85  B9 90 CF  LDA $CF90,Y                   ; 02D85 ×807

loc_B0_AD88:                    ; from 02c82 02174 02c25 02d1d 02b9f 02d9d (+3)
  AD88  9D B5 03  STA $03B5,X                   ; 02D88 ×3089
  AD8B  60        RTS                           ; 02D8B ×3089

loc_B0_AD8C:                    ; from 02d46
  AD8C  A5 0C     LDA $0C                       ; 02D8C ×10
  AD8E  4A        LSR A                         ; 02D8E ×10
  AD8F  4A        LSR A                         ; 02D8F ×10
  AD90  29 03     AND #$03                      ; 02D90 ×10
  AD92  A8        TAY                           ; 02D92 ×10
  AD93  B9 A0 CF  LDA $CFA0,Y                   ; 02D93 ×10
  AD96  D0 F0     BNE loc_B0_AD88               ; 02D96 ×10

loc_B0_AD98:                    ; from 02d2f
  AD98  A9 11     LDA #$11                      ; 02D98 ×1472
  AD9A  BC 38 05  LDY $0538,X                   ; 02D9A ×1472
  AD9D  30 E9     BMI loc_B0_AD88               ; 02D9D ×1472
  AD9F  A9 C0     LDA #$C0                      ; 02D9F ×1438
  ADA1  9D DF 03  STA $03DF,X                   ; 02DA1 ×1438
  ADA4  A9 01     LDA #$01                      ; 02DA4 ×1438
  ADA6  9D B5 03  STA $03B5,X                   ; 02DA6 ×1438
  ADA9  BD B3 03  LDA $03B3,X                   ; 02DA9 ×1438
  ADAC  D0 10     BNE loc_B0_ADBE               ; 02DAC ×1438
  ADAE  B5 25     LDA $25,X                     ; 02DAE ×1248
  ADB0  29 3F     AND #$3F                      ; 02DB0 ×1248
  ADB2  D0 10     BNE loc_B0_ADC4               ; 02DB2 ×1248
  ADB4  B5 26     LDA $26,X                     ; 02DB4 ×21
  ADB6  29 0F     AND #$0F                      ; 02DB6 ×21
  ADB8  18        CLC                           ; 02DB8 ×21
  ADB9  69 04     ADC #$04                      ; 02DB9 ×21
  ADBB  9D B3 03  STA $03B3,X                   ; 02DBB ×21

loc_B0_ADBE:                    ; from 02dac
  ADBE  DE B3 03  DEC $03B3,X                   ; 02DBE ×211
  ADC1  FE B5 03  INC $03B5,X                   ; 02DC1 ×211

loc_B0_ADC4:                    ; from 02db2
  ADC4  60        RTS                           ; 02DC4 ×1438
  ADC5  .byte 80                                                ; 02DC5
  ADC6  .byte 80                                                ; 02DC6 data, read by 02d21 02d62
  ADC7  .byte 80                                                ; 02DC7
  ADC8  .byte 80 04 84 80 04 84 04 84 04 00 04                  ; 02DC8 data, read by 02d21 02d62
  ADD3  .byte 00                                                ; 02DD3

loc_B0_ADD4:                    ; from 02dde 02dfa
  ADD4  4C 80 D0  JMP sub_B0_D080               ; 02DD4 ×18

jt_B0_ADD7:                    ; from 008ec
  ADD7  BD ED 04  LDA $04ED,X                   ; 02DD7 ×1895

loc_B0_ADDA:                    ; from 02e0b
  ADDA  18        CLC                           ; 02DDA ×3815
  ADDB  7D DE 04  ADC $04DE,X                   ; 02DDB ×3815
  ADDE  B0 F4     BCS loc_B0_ADD4               ; 02DDE ×3815
  ADE0  4C 6C AE  JMP loc_B0_AE6C               ; 02DE0 ×3804

jt_B0_ADE3:                    ; from 008ec
  ADE3  BD 83 05  LDA $0583,X                   ; 02DE3 ×4510
  ADE6  C9 55     CMP #$55                      ; 02DE6 ×4510
  ADE8  D0 27     BNE loc_B0_AE11               ; 02DE8 ×4510
  ADEA  9D 0B 05  STA $050B,X                   ; 02DEA ×3773
  ADED  BD 1A 05  LDA $051A,X                   ; 02DED ×3773
  ADF0  F0 05     BEQ loc_B0_ADF7               ; 02DF0 ×3773
  ADF2  DE 1A 05  DEC $051A,X                   ; 02DF2 ×1890
  ADF5  D0 05     BNE loc_B0_ADFC               ; 02DF5 ×1890

loc_B0_ADF7:                    ; from 02df0
  ADF7  DE FC 04  DEC $04FC,X                   ; 02DF7 ×1892
  ADFA  F0 D8     BEQ loc_B0_ADD4               ; 02DFA ×1892

loc_B0_ADFC:                    ; from 02df5
  ADFC  20 E3 EE  JSR sub_B0_EEE3               ; 02DFC ×3766
  ADFF  BD A1 05  LDA $05A1,X                   ; 02DFF ×3766
  AE02  FE A1 05  INC $05A1,X                   ; 02E02 ×3766
  AE05  29 20     AND #$20                      ; 02E05 ×3766
  AE07  C9 0A     CMP #$0A                      ; 02E07 ×3766
  AE09  A9 01     LDA #$01                      ; 02E09 ×3766
  AE0B  90 CD     BCC loc_B0_ADDA               ; 02E0B ×3766
  AE0D  A9 FF     LDA #$FF                      ; 02E0D ×1846
  AE0F  B0 1F     BCS loc_B0_AE30               ; 02E0F ×1846

loc_B0_AE11:                    ; from 02de8
  AE11  A5 10     LDA $10                       ; 02E11 ×737
  AE13  C9 09     CMP #$09                      ; 02E13 ×737
  AE15  F0 04     BEQ $AE1B                     ; 02E15 ×737
  AE17  A9 1E     LDA #$1E                      ; 02E17 ×737
  AE19  85 B2     STA $B2                       ; 02E19 ×737
  AE1B  BD ED 04  LDA $04ED,X                   ; 02E1B ×737
  AE1E  D0 0D     BNE loc_B0_AE2D               ; 02E1E ×737
  AE20  A9 14     LDA #$14                      ; 02E20 ×6
  AE22  20 F6 B7  JSR sub_B0_B7F6               ; 02E22 ×6
  AE25  DE DE 04  DEC $04DE,X                   ; 02E25 ×6
  AE28  A9 FE     LDA #$FE                      ; 02E28 ×6
  AE2A  9D ED 04  STA $04ED,X                   ; 02E2A ×6

loc_B0_AE2D:                    ; from 02e1e
  AE2D  BD ED 04  LDA $04ED,X                   ; 02E2D ×737

loc_B0_AE30:                    ; from 02e0f
  AE30  18        CLC                           ; 02E30 ×2583
  AE31  7D DE 04  ADC $04DE,X                   ; 02E31 ×2583
  AE34  B0 36     BCS loc_B0_AE6C               ; 02E34 ×2583
  AE36  BD C1 03  LDA $03C1,X                   ; 02E36 ×5
  AE39  49 22     EOR #$22                      ; 02E39 ×5
  AE3B  D0 97     BNE loc_B0_ADD4               ; 02E3B ×5
  AE3D  9D ED 04  STA $04ED,X                   ; 02E3D ×5
  AE40  9D DE 04  STA $04DE,X                   ; 02E40 ×5
  AE43  A9 12     LDA #$12                      ; 02E43 ×5
  AE45  9D C1 03  STA $03C1,X                   ; 02E45 ×5
  AE48  A9 E8     LDA #$E8                      ; 02E48 ×5
  AE4A  20 EE 8E  JSR sub_B0_8EEE               ; 02E4A ×5
  AE4D  A5 10     LDA $10                       ; 02E4D ×5
  AE4F  C9 09     CMP #$09                      ; 02E4F ×5
  AE51  F0 11     BEQ $AE64                     ; 02E51 ×5
  AE53  A9 40     LDA #$40                      ; 02E53 ×5
  AE55  9D 0B 05  STA $050B,X                   ; 02E55 ×5
  AE58  A5 10     LDA $10                       ; 02E58 ×5
  AE5A  C9 0C     CMP #$0C                      ; 02E5A ×5
  AE5C  D0 03     BNE loc_B0_AE61               ; 02E5C ×5
  AE5E  DE C1 03  DEC $03C1,X                   ; 02E5E inferred, not run

loc_B0_AE61:                    ; from 02e5c
  AE61  4C 4E 94  JMP jt_B0_944E                ; 02E61 ×5
  AE64  A9 46     LDA #$46                      ; 02E64 inferred, not run
  AE66  9D C1 03  STA $03C1,X                   ; 02E66 inferred, not run
  AE69  4C 16 EC  JMP $EC16                     ; 02E69 inferred, not run

loc_B0_AE6C:                    ; from 02de0 02e34
  AE6C  9D DE 04  STA $04DE,X                   ; 02E6C ×6382
  AE6F  DE 0B 05  DEC $050B,X                   ; 02E6F ×6382
  AE72  D0 03     BNE loc_B0_AE77               ; 02E72 ×6382
  AE74  4C 80 D0  JMP sub_B0_D080               ; 02E74 ×34

loc_B0_AE77:                    ; from 02e72
  AE77  60        RTS                           ; 02E77 ×6348
  AE78  .byte 20 4C 8F 20 6B B0 98 9D 92 05 A9 7A 9D D0 03 60   ; 02E78
  AE88  .byte BD 83 05 4A 4A 4A 4A 85 15 A9 7D 38 E5 15 9D D0   ; 02E88
  AE98  .byte 03 60 BD 29 05 D0 D9 BD 65 05 10 D0 20 4C 8F A9   ; 02E98
  AEA8  .byte E8 20 7A 8E 20 AD E4 DE 83 05 D0 D4 BD A2 04 30   ; 02EA8
  AEB8  .byte BB BD 84 04 E9 18 C9 D0 B0 B2 20 58 FE A4 82 20   ; 02EB8
  AEC8  .byte 6D B1 A9 63 9D C1 03 9D 83 05 BD FD 03 38 E5 87   ; 02EC8
  AED8  .byte 9D A1 05 BD 1B 04 38 E5 89 38 E9 18 9D DE 04 20   ; 02ED8
  AEE8  .byte D6 92 A9 0F 20 66 FE 84 1E B9 1A 05 38 E9 10 99   ; 02EE8
  AEF8  .byte 1A 05 90 0F A9 60 99 47 05 20 60 F5 A9 F0 9D 1A   ; 02EF8
  AF08  .byte 05 D0 15 A9 A0 99 74 05 A9 02 85 D1 20 60 F5 A9   ; 02F08
  AF18  .byte 46 20 F6 B7 A9 48 D0 09 A9 4C A2 0C 20 E1 84 A9   ; 02F18
  AF28  .byte 4A 20 48 91 A6 82 20 94 FA A9 40 9D 0B 05 BC 92   ; 02F28
  AF38  .byte 05 A5 D1 6A A9 05 B0 02 A9 08 4C 57 BC 4C 80 D0   ; 02F38

loc_B0_AF48:                    ; from 02f5e
  AF48  4C 80 D0  JMP sub_B0_D080               ; 02F48 ×3

jt_B0_AF4B:                    ; from 008ec
  AF4B  BD 29 05  LDA $0529,X                   ; 02F4B ×496
  AF4E  D0 10     BNE loc_B0_AF60               ; 02F4E ×496
  AF50  A5 D1     LDA $D1                       ; 02F50 ×420
  AF52  F0 07     BEQ loc_B0_AF5B               ; 02F52 ×420
  AF54  DE 83 05  DEC $0583,X                   ; 02F54 inferred, not run
  AF57  F0 EF     BEQ loc_B0_AF48               ; 02F57 inferred, not run
  AF59  D0 05     BNE loc_B0_AF60               ; 02F59 inferred, not run

loc_B0_AF5B:                    ; from 02f52
  AF5B  BD A2 04  LDA $04A2,X                   ; 02F5B ×420
  AF5E  30 E8     BMI loc_B0_AF48               ; 02F5E ×420

loc_B0_AF60:                    ; from 02f4e
  AF60  BD 65 05  LDA $0565,X                   ; 02F60 ×493
  AF63  1D 29 05  ORA $0529,X                   ; 02F63 ×493
  AF66  1D 75 04  ORA $0475,X                   ; 02F66 ×493
  AF69  F0 34     BEQ loc_B0_AF9F               ; 02F69 ×493
  AF6B  A9 FE     LDA #$FE                      ; 02F6B ×307
  AF6D  20 6A D0  JSR sub_B0_D06A               ; 02F6D ×307

sub_B0_AF70:                    ; from 07821
  AF70  20 4C 8F  JSR sub_B0_8F4C               ; 02F70 ×307
  AF73  20 6B B0  JSR sub_B0_B06B               ; 02F73 ×307
  AF76  BD 29 05  LDA $0529,X                   ; 02F76 ×307
  AF79  F0 11     BEQ loc_B0_AF8C               ; 02F79 ×307
  AF7B  A5 D1     LDA $D1                       ; 02F7B ×76
  AF7D  C9 01     CMP #$01                      ; 02F7D ×76
  AF7F  D0 0E     BNE loc_B0_AF8F               ; 02F7F ×76
  AF81  A9 3C     LDA #$3C                      ; 02F81 inferred, not run
  AF83  9D 83 05  STA $0583,X                   ; 02F83 inferred, not run
  AF86  A9 64     LDA #$64                      ; 02F86 inferred, not run
  AF88  9D C1 03  STA $03C1,X                   ; 02F88 inferred, not run
  AF8B  60        RTS                           ; 02F8B inferred, not run

loc_B0_AF8C:                    ; from 02f79
  AF8C  20 AD E4  JSR sub_B0_E4AD               ; 02F8C ×231

loc_B0_AF8F:                    ; from 02f7f
  AF8F  A5 10     LDA $10                       ; 02F8F ×307
  AF91  C9 04     CMP #$04                      ; 02F91 ×307
  AF93  F0 20     BEQ $AFB5                     ; 02F93 ×307
  AF95  20 24 B0  JSR sub_B0_B024               ; 02F95 ×307
  AF98  D0 05     BNE loc_B0_AF9F               ; 02F98 ×307
  AF9A  A9 E7     LDA #$E7                      ; 02F9A ×3
  AF9C  20 6A D0  JSR sub_B0_D06A               ; 02F9C ×3

loc_B0_AF9F:                    ; from 02f98 02f69
  AF9F  A5 D1     LDA $D1                       ; 02F9F ×493
  AFA1  C9 01     CMP #$01                      ; 02FA1 ×493
  AFA3  A9 7A     LDA #$7A                      ; 02FA3 ×493
  AFA5  B0 0B     BCS $AFB2                     ; 02FA5 ×493
  AFA7  A9 01     LDA #$01                      ; 02FA7 ×493
  AFA9  BC C1 03  LDY $03C1,X                   ; 02FA9 ×493
  AFAC  C0 1B     CPY #$1B                      ; 02FAC ×493
  AFAE  D0 02     BNE $AFB2                     ; 02FAE ×493
  AFB0  A9 1B     LDA #$1B                      ; 02FB0 ×493
  AFB2  9D D0 03  STA $03D0,X                   ; 02FB2 ×493
  AFB5  60        RTS                           ; 02FB5 ×493

jt_B0_AFB6:                    ; from 008ec
  AFB6  BD A2 04  LDA $04A2,X                   ; 02FB6 ×6686
  AFB9  30 8D     BMI loc_B0_AF48               ; 02FB9 ×6686
  AFBB  BD 83 05  LDA $0583,X                   ; 02FBB ×6686
  AFBE  C9 06     CMP #$06                      ; 02FBE ×6686
  AFC0  B0 3F     BCS loc_B0_B001               ; 02FC0 ×6686
  AFC2  A9 FF     LDA #$FF                      ; 02FC2 ×4927
  AFC4  20 6A D0  JSR sub_B0_D06A               ; 02FC4 ×4927
  AFC7  20 52 8E  JSR sub_B0_8E52               ; 02FC7 ×4927
  AFCA  20 4C 8F  JSR sub_B0_8F4C               ; 02FCA ×4927
  AFCD  A9 00     LDA #$00                      ; 02FCD ×4927
  AFCF  9D 75 04  STA $0475,X                   ; 02FCF ×4927
  AFD2  A5 10     LDA $10                       ; 02FD2 ×4927
  AFD4  C9 07     CMP #$07                      ; 02FD4 ×4927
  AFD6  F0 15     BEQ $AFED                     ; 02FD6 ×4927
  AFD8  20 AD E4  JSR sub_B0_E4AD               ; 02FD8 ×4927
  AFDB  20 24 B0  JSR sub_B0_B024               ; 02FDB ×4927
  AFDE  D0 05     BNE loc_B0_AFE5               ; 02FDE ×4927
  AFE0  A9 E7     LDA #$E7                      ; 02FE0 ×3
  AFE2  20 6A D0  JSR sub_B0_D06A               ; 02FE2 ×3

loc_B0_AFE5:                    ; from 02fde
  AFE5  BD 65 05  LDA $0565,X                   ; 02FE5 ×4927
  AFE8  1D 75 04  ORA $0475,X                   ; 02FE8 ×4927
  AFEB  F0 14     BEQ loc_B0_B001               ; 02FEB ×4927
  AFED  A5 0C     LDA $0C                       ; 02FED ×165
  AFEF  29 01     AND #$01                      ; 02FEF ×165
  AFF1  18        CLC                           ; 02FF1 ×165
  AFF2  7D DF 03  ADC $03DF,X                   ; 02FF2 ×165
  AFF5  C9 06     CMP #$06                      ; 02FF5 ×165
  AFF7  D0 02     BNE loc_B0_AFFB               ; 02FF7 ×165
  AFF9  A9 00     LDA #$00                      ; 02FF9 ×12

loc_B0_AFFB:                    ; from 02ff7
  AFFB  9D DF 03  STA $03DF,X                   ; 02FFB ×165
  AFFE  BD DF 03  LDA $03DF,X                   ; 02FFE ×165

loc_B0_B001:                    ; from 02feb 02fc0
  B001  A8        TAY                           ; 03001 ×6686
  B002  B9 14 B0  LDA $B014,Y                   ; 03002 ×6686
  B005  9D D0 03  STA $03D0,X                   ; 03005 ×6686
  B008  BD A2 04  LDA $04A2,X                   ; 03008 ×6686
  B00B  29 08     AND #$08                      ; 0300B ×6686
  B00D  19 1C B0  ORA $B01C,Y                   ; 0300D ×6686
  B010  9D A2 04  STA $04A2,X                   ; 03010 ×6686
  B013  60        RTS                           ; 03013 ×6686
  B014  .byte 32 33 32 31 30 31                                 ; 03014 data, read by 03002
  B01A  .byte AD                                                ; 0301A
  B01B  .byte AD 00 00 40 40 00 00                              ; 0301B data, read by 03002 0300d
  B022  .byte 00                                                ; 03022
  B023  .byte 40                                                ; 03023 data, read by 0300d

sub_B0_B024:                    ; from 061d5 02fdb 02348 02f95
  B024  BD 75 04  LDA $0475,X                   ; 03024 ×12981
  B027  D0 2B     BNE loc_B0_B054               ; 03027 ×12981
  B029  A5 AF     LDA $AF                       ; 03029 ×10147
  B02B  F0 27     BEQ loc_B0_B054               ; 0302B ×10147
  B02D  BD C0 04  LDA $04C0,X                   ; 0302D ×83
  B030  C9 80     CMP #$80                      ; 03030 ×83
  B032  6A        ROR A                         ; 03032 ×83
  B033  49 FF     EOR #$FF                      ; 03033 ×83
  B035  9D C0 04  STA $04C0,X                   ; 03035 ×83
  B038  BD CF 04  LDA $04CF,X                   ; 03038 ×83
  B03B  6A        ROR A                         ; 0303B ×83
  B03C  49 FF     EOR #$FF                      ; 0303C ×83
  B03E  9D CF 04  STA $04CF,X                   ; 0303E ×83
  B041  E0 02     CPX #$02                      ; 03041 ×83
  B043  B0 0C     BCS loc_B0_B051               ; 03043 ×83
  B045  BD C0 04  LDA $04C0,X                   ; 03045 ×31
  B048  C9 80     CMP #$80                      ; 03048 ×31
  B04A  6A        ROR A                         ; 0304A ×31
  B04B  9D C0 04  STA $04C0,X                   ; 0304B ×31
  B04E  7E CF 04  ROR $04CF,X                   ; 0304E ×31

loc_B0_B051:                    ; from 03043
  B051  A9 00     LDA #$00                      ; 03051 ×83
  B053  60        RTS                           ; 03053 ×83

loc_B0_B054:                    ; from 0302b 03027
  B054  A9 01     LDA #$01                      ; 03054 ×12898

loc_B0_B056:                    ; from 03073
  B056  60        RTS                           ; 03056 ×13129

sub_B0_B057:                    ; from 061da 0234d
  B057  A9 06     LDA #$06                      ; 03057 ×77
  B059  A4 81     LDY $81                       ; 03059 ×77
  B05B  10 02     BPL loc_B0_B05F               ; 0305B ×77
  B05D  A9 08     LDA #$08                      ; 0305D ×18

loc_B0_B05F:                    ; from 0305b
  B05F  A0 03     LDY #$03                      ; 0305F ×77
  B061  A2 15     LDX #$15                      ; 03061 ×77
  B063  85 39     STA $39                       ; 03063 ×77
  B065  20 CB FF  JSR sub_B0_FFCB               ; 03065 ×77
  B068  A6 82     LDX $82                       ; 03068 ×77
  B06A  60        RTS                           ; 0306A ×77

sub_B0_B06B:                    ; from 02f73 01f96
  B06B  A9 B0     LDA #$B0                      ; 0306B ×490
  B06D  20 7A 8E  JSR sub_B0_8E7A               ; 0306D ×490
  B070  BD 29 05  LDA $0529,X                   ; 03070 ×490
  B073  F0 E1     BEQ loc_B0_B056               ; 03073 ×490
  B075  29 1F     AND #$1F                      ; 03075 ×259
  B077  A8        TAY                           ; 03077 ×259
  B078  88        DEY                           ; 03078 ×259
  B079  A5 10     LDA $10                       ; 03079 ×259
  B07B  C9 05     CMP #$05                      ; 0307B ×259
  B07D  D0 4B     BNE loc_B0_B0CA               ; 0307D ×259
  B07F  E0 02     CPX #$02                      ; 0307F ×0
  B081  B0 47     BCS loc_B0_B0CA               ; 03081 ×0
  B083  C0 02     CPY #$02                      ; 03083 ×0
  B085  90 43     BCC loc_B0_B0CA               ; 03085 ×0
  B087  20 6D B1  JSR sub_B0_B16D               ; 03087 ×0
  B08A  84 1F     STY $1F                       ; 0308A ×0
  B08C  A9 08     LDA #$08                      ; 0308C ×0
  B08E  1D A2 04  ORA $04A2,X                   ; 0308E ×0
  B091  9D A2 04  STA $04A2,X                   ; 03091 ×0
  B094  68        PLA                           ; 03094 ×0
  B095  68        PLA                           ; 03095 ×0
  B096  BD DF 03  LDA $03DF,X                   ; 03096 ×0
  B099  C9 5F     CMP #$5F                      ; 03099 ×0
  B09B  F0 06     BEQ $B0A3                     ; 0309B ×0
  B09D  C9 60     CMP #$60                      ; 0309D ×0
  B09F  F0 02     BEQ $B0A3                     ; 0309F ×0
  B0A1  A9 5E     LDA #$5E                      ; 030A1 ×0
  B0A3  9D B5 03  STA $03B5,X                   ; 030A3 ×0
  B0A6  A4 1F     LDY $1F                       ; 030A6 ×0
  B0A8  B5 29     LDA $29,X                     ; 030A8 ×0
  B0AA  29 04     AND #$04                      ; 030AA ×0
  B0AC  9D DF 03  STA $03DF,X                   ; 030AC ×0
  B0AF  F0 18     BEQ $B0C9                     ; 030AF ×0
  B0B1  99 DF 03  STA $03DF,Y                   ; 030B1 ×0
  B0B4  A9 02     LDA #$02                      ; 030B4 ×0
  B0B6  9D C0 04  STA $04C0,X                   ; 030B6 ×0
  B0B9  A9 00     LDA #$00                      ; 030B9 ×0
  B0BB  9D 29 05  STA $0529,X                   ; 030BB ×0
  B0BE  BD B1 04  LDA $04B1,X                   ; 030BE ×0
  B0C1  09 20     ORA #$20                      ; 030C1 ×0
  B0C3  9D B1 04  STA $04B1,X                   ; 030C3 ×0
  B0C6  4C 17 A5  JMP $A517                     ; 030C6 ×0
  B0C9  60        RTS                           ; 030C9 inferred, not run

loc_B0_B0CA:                    ; from 0307d
  B0CA  BD C0 04  LDA $04C0,X                   ; 030CA ×259
  B0CD  30 03     BMI loc_B0_B0D2               ; 030CD ×259
  B0CF  4C 85 B1  JMP loc_B0_B185               ; 030CF ×130

loc_B0_B0D2:                    ; from 030cd
  B0D2  20 79 B1  JSR sub_B0_B179               ; 030D2 ×129
  B0D5  B9 C1 03  LDA $03C1,Y                   ; 030D5 ×129
  B0D8  49 17     EOR #$17                      ; 030D8 ×129
  B0DA  F0 22     BEQ loc_B0_B0FE               ; 030DA ×129
  B0DC  A5 10     LDA $10                       ; 030DC ×129
  B0DE  C9 02     CMP #$02                      ; 030DE ×129
  B0E0  F0 1C     BEQ loc_B0_B0FE               ; 030E0 ×129
  B0E2  B9 29 05  LDA $0529,Y                   ; 030E2 ×129
  B0E5  C9 01     CMP #$01                      ; 030E5 ×129
  B0E7  A9 0A     LDA #$0A                      ; 030E7 ×129
  B0E9  B0 13     BCS loc_B0_B0FE               ; 030E9 ×129
  B0EB  B9 D0 03  LDA $03D0,Y                   ; 030EB ×129
  B0EE  C9 11     CMP #$11                      ; 030EE ×129
  B0F0  D0 04     BNE loc_B0_B0F6               ; 030F0 ×129
  B0F2  A9 22     LDA #$22                      ; 030F2 ×8
  B0F4  D0 08     BNE loc_B0_B0FE               ; 030F4 ×8

loc_B0_B0F6:                    ; from 030f0
  B0F6  C9 10     CMP #$10                      ; 030F6 ×121
  B0F8  A9 21     LDA #$21                      ; 030F8 ×121
  B0FA  B0 02     BCS loc_B0_B0FE               ; 030FA ×121
  B0FC  A9 1C     LDA #$1C                      ; 030FC ×115

loc_B0_B0FE:                    ; from 030f4 030fa
  B0FE  79 39 04  ADC $0439,Y                   ; 030FE ×129
  B101  9D 39 04  STA $0439,X                   ; 03101 ×129
  B104  B9 2A 04  LDA $042A,Y                   ; 03104 ×129
  B107  69 00     ADC #$00                      ; 03107 ×129
  B109  9D 2A 04  STA $042A,X                   ; 03109 ×129
  B10C  60        RTS                           ; 0310C ×129

loc_B0_B10D:                    ; from 03147 03120
  B10D  4C 80 D0  JMP sub_B0_D080               ; 0310D ×27

jt_B0_B110:                    ; from 008ec
  B110  A5 10     LDA $10                       ; 03110 ×2901
  B112  C9 02     CMP #$02                      ; 03112 ×2901
  B114  F0 0D     BEQ loc_B0_B123               ; 03114 ×2901
  B116  A9 70     LDA #$70                      ; 03116 ×2391
  B118  9D 47 05  STA $0547,X                   ; 03118 ×2391
  B11B  BD A2 04  LDA $04A2,X                   ; 0311B ×2391
  B11E  10 03     BPL loc_B0_B123               ; 0311E ×2391
  B120  4C 0D B1  JMP loc_B0_B10D               ; 03120 ×11

loc_B0_B123:                    ; from 0311e 03114
  B123  A5 C8     LDA $C8                       ; 03123 ×2890
  B125  D0 14     BNE loc_B0_B13B               ; 03125 ×2890
  B127  A5 10     LDA $10                       ; 03127 ×1370
  B129  4A        LSR A                         ; 03129 ×1370
  B12A  C9 01     CMP #$01                      ; 0312A ×1370
  B12C  F0 0D     BEQ loc_B0_B13B               ; 0312C ×1370

loc_B0_B12E:                    ; from 0314d
  B12E  A9 27     LDA #$27                      ; 0312E ×857
  B130  9D ED 04  STA $04ED,X                   ; 03130 ×857
  B133  DE FD 03  DEC $03FD,X                   ; 03133 ×857
  B136  A9 10     LDA #$10                      ; 03136 ×857
  B138  4C 7A 8E  JMP sub_B0_8E7A               ; 03138 ×857

loc_B0_B13B:                    ; from 03125 0312c
  B13B  BD C1 03  LDA $03C1,X                   ; 0313B ×2249
  B13E  38        SEC                           ; 0313E ×2249
  B13F  E9 06     SBC #$06                      ; 0313F ×2249
  B141  A8        TAY                           ; 03141 ×2249
  B142  84 22     STY $22                       ; 03142 ×2249
  B144  B9 C1 03  LDA $03C1,Y                   ; 03144 ×2249
  B147  F0 C4     BEQ loc_B0_B10D               ; 03147 ×2249
  B149  A5 10     LDA $10                       ; 03149 ×2233
  B14B  C9 03     CMP #$03                      ; 0314B ×2233
  B14D  F0 DF     BEQ loc_B0_B12E               ; 0314D ×2233
  B14F  B9 74 05  LDA $0574,Y                   ; 0314F ×2017
  B152  10 09     BPL loc_B0_B15D               ; 03152 ×2017
  B154  A9 01     LDA #$01                      ; 03154 inferred, not run
  B156  18        CLC                           ; 03156 inferred, not run
  B157  20 EE 8E  JSR sub_B0_8EEE               ; 03157 inferred, not run
  B15A  4C 60 B1  JMP $B160                     ; 0315A inferred, not run

loc_B0_B15D:                    ; from 03152
  B15D  20 6D B1  JSR sub_B0_B16D               ; 0315D ×2017
  B160  A2 18     LDX #$18                      ; 03160 ×2017
  B162  A0 01     LDY #$01                      ; 03162 ×2017
  B164  4C CB FF  JMP sub_B0_FFCB               ; 03164 ×2017

sub_B0_B167:                    ; from 05d30
  B167  B9 56 05  LDA $0556,Y                   ; 03167 ×202
  B16A  9D 56 05  STA $0556,X                   ; 0316A ×202

sub_B0_B16D:                    ; from 0315d 0093d 05ee8 03c63 020eb 04424 (+3)
  B16D  B9 2A 04  LDA $042A,Y                   ; 0316D ×3811
  B170  9D 2A 04  STA $042A,X                   ; 03170 ×3811
  B173  B9 39 04  LDA $0439,Y                   ; 03173 ×3811
  B176  9D 39 04  STA $0439,X                   ; 03176 ×3811

sub_B0_B179:                    ; from 030d2
  B179  B9 EE 03  LDA $03EE,Y                   ; 03179 ×3940
  B17C  9D EE 03  STA $03EE,X                   ; 0317C ×3940
  B17F  B9 FD 03  LDA $03FD,Y                   ; 0317F ×3940
  B182  9D FD 03  STA $03FD,X                   ; 03182 ×3940

loc_B0_B185:                    ; from 030cf
  B185  B9 0C 04  LDA $040C,Y                   ; 03185 ×4070
  B188  9D 0C 04  STA $040C,X                   ; 03188 ×4070
  B18B  B9 1B 04  LDA $041B,Y                   ; 0318B ×4070
  B18E  9D 1B 04  STA $041B,X                   ; 0318E ×4070
  B191  60        RTS                           ; 03191 ×4070
  B192  .byte 67 66                                             ; 03192 data, read by 031e4
  B194  .byte 64 65                                             ; 03194
  B196  .byte 74 76                                             ; 03196 data, read by 0321a
  B198  .byte 78 7A                                             ; 03198
  B19A  .byte 00 00                                             ; 0319A data, read by 031ef 03215
  B19C  .byte 40 40                                             ; 0319C
  B19E  .byte 00 01                                             ; 0319E data, read by 031cc 031d7
  B1A0  .byte 00 01                                             ; 031A0

loc_B0_B1A2:                    ; from 0322d
  B1A2  B9 74 05  LDA $0574,Y                   ; 031A2 ×1143
  B1A5  D0 6C     BNE loc_B0_B213               ; 031A5 ×1143
  B1A7  B9 56 05  LDA $0556,Y                   ; 031A7 ×759
  B1AA  2A        ROL A                         ; 031AA ×759
  B1AB  2A        ROL A                         ; 031AB ×759
  B1AC  2A        ROL A                         ; 031AC ×759
  B1AD  29 03     AND #$03                      ; 031AD ×759
  B1AF  85 15     STA $15                       ; 031AF ×759
  B1B1  5D 92 05  EOR $0592,X                   ; 031B1 ×759
  B1B4  F0 12     BEQ loc_B0_B1C8               ; 031B4 ×759
  B1B6  FE A1 05  INC $05A1,X                   ; 031B6 ×3
  B1B9  BD A1 05  LDA $05A1,X                   ; 031B9 ×3
  B1BC  49 03     EOR #$03                      ; 031BC ×3
  B1BE  D0 08     BNE loc_B0_B1C8               ; 031BE ×3
  B1C0  9D A1 05  STA $05A1,X                   ; 031C0 ×1
  B1C3  A5 15     LDA $15                       ; 031C3 ×1
  B1C5  9D 92 05  STA $0592,X                   ; 031C5 ×1

loc_B0_B1C8:                    ; from 031b4 031be
  B1C8  BD 92 05  LDA $0592,X                   ; 031C8 ×759
  B1CB  AA        TAX                           ; 031CB ×759
  B1CC  BD 9E B1  LDA $B19E,X                   ; 031CC ×759
  B1CF  25 0C     AND $0C                       ; 031CF ×759
  B1D1  59 84 04  EOR $0484,Y                   ; 031D1 ×759
  B1D4  99 84 04  STA $0484,Y                   ; 031D4 ×759
  B1D7  BD 9E B1  LDA $B19E,X                   ; 031D7 ×759
  B1DA  49 01     EOR #$01                      ; 031DA ×759
  B1DC  25 0C     AND $0C                       ; 031DC ×759
  B1DE  59 93 04  EOR $0493,Y                   ; 031DE ×759
  B1E1  99 93 04  STA $0493,Y                   ; 031E1 ×759
  B1E4  BD 92 B1  LDA $B192,X                   ; 031E4 ×759
  B1E7  99 B5 03  STA $03B5,Y                   ; 031E7 ×759
  B1EA  B9 A2 04  LDA $04A2,Y                   ; 031EA ×759
  B1ED  29 BF     AND #$BF                      ; 031ED ×759
  B1EF  1D 9A B1  ORA $B19A,X                   ; 031EF ×759
  B1F2  99 A2 04  STA $04A2,Y                   ; 031F2 ×759
  B1F5  B9 92 05  LDA $0592,Y                   ; 031F5 ×759
  B1F8  D0 0E     BNE loc_B0_B208               ; 031F8 ×759
  B1FA  A5 0B     LDA $0B                       ; 031FA ×541
  B1FC  E9 64     SBC #$64                      ; 031FC ×541
  B1FE  20 DC E2  JSR sub_B0_E2DC               ; 031FE ×541
  B201  BD DF 03  LDA $03DF,X                   ; 03201 ×541
  B204  2A        ROL A                         ; 03204 ×541
  B205  4C 13 B2  JMP loc_B0_B213               ; 03205 ×541

loc_B0_B208:                    ; from 031f8
  B208  B9 65 05  LDA $0565,Y                   ; 03208 ×218
  B20B  C9 F0     CMP #$F0                      ; 0320B ×218
  B20D  A5 0C     LDA $0C                       ; 0320D ×218
  B20F  B0 01     BCS loc_B0_B212               ; 0320F ×218
  B211  6A        ROR A                         ; 03211 ×141

loc_B0_B212:                    ; from 0320f
  B212  6A        ROR A                         ; 03212 ×218

loc_B0_B213:                    ; from 03205 031a5
  B213  A6 15     LDX $15                       ; 03213 ×1143
  B215  BD 9A B1  LDA $B19A,X                   ; 03215 ×1143
  B218  85 15     STA $15                       ; 03218 ×1143
  B21A  BD 96 B1  LDA $B196,X                   ; 0321A ×1143
  B21D  69 00     ADC #$00                      ; 0321D ×1143
  B21F  A6 82     LDX $82                       ; 0321F ×1143
  B221  9D D0 03  STA $03D0,X                   ; 03221 ×1143
  B224  A5 15     LDA $15                       ; 03224 ×1143
  B226  9D A2 04  STA $04A2,X                   ; 03226 ×1143
  B229  60        RTS                           ; 03229 ×1143

loc_B0_B22A:                    ; from 03261
  B22A  20 30 B2  JSR sub_B0_B230               ; 0322A ×1143
  B22D  4C A2 B1  JMP loc_B0_B1A2               ; 0322D ×1143

sub_B0_B230:                    ; from 0322a 03269
  B230  A5 0B     LDA $0B                       ; 03230 ×1568
  B232  29 0F     AND #$0F                      ; 03232 ×1568
  B234  D0 0B     BNE loc_B0_B241               ; 03234 ×1568
  B236  A9 00     LDA #$00                      ; 03236 ×97
  B238  20 CF BC  JSR sub_B0_BCCF               ; 03238 ×97
  B23B  A4 15     LDY $15                       ; 0323B ×97
  B23D  A6 82     LDX $82                       ; 0323D ×97
  B23F  E6 D0     INC $D0                       ; 0323F ×97

loc_B0_B241:                    ; from 03234
  B241  60        RTS                           ; 03241 ×1568

loc_B0_B242:                    ; from 032e3
  B242  20 EF 88  JSR sub_B0_88EF               ; 03242 ×1568
  B245  C9 2C     CMP #$2C                      ; 03245 ×1568
  B247  D0 12     BNE loc_B0_B25B               ; 03247 ×1568
  B249  A9 02     LDA #$02                      ; 03249 inferred, not run
  B24B  25 0C     AND $0C                       ; 0324B inferred, not run
  B24D  A4 E3     LDY $E3                       ; 0324D inferred, not run
  B24F  D0 01     BNE $B252                     ; 0324F inferred, not run
  B251  4A        LSR A                         ; 03251 inferred, not run
  B252  A4 15     LDY $15                       ; 03252 inferred, not run
  B254  18        CLC                           ; 03254 inferred, not run
  B255  79 75 04  ADC $0475,Y                   ; 03255 inferred, not run
  B258  99 75 04  STA $0475,Y                   ; 03258 inferred, not run

loc_B0_B25B:                    ; from 03247
  B25B  A4 15     LDY $15                       ; 0325B ×1568
  B25D  A5 10     LDA $10                       ; 0325D ×1568
  B25F  C9 0A     CMP #$0A                      ; 0325F ×1568
  B261  F0 C7     BEQ loc_B0_B22A               ; 03261 ×1568
  B263  A5 D5     LDA $D5                       ; 03263 ×425
  B265  05 D4     ORA $D4                       ; 03265 ×425
  B267  F0 05     BEQ $B26E                     ; 03267 ×425
  B269  20 30 B2  JSR sub_B0_B230               ; 03269 ×425
  B26C  A9 01     LDA #$01                      ; 0326C ×425
  B26E  05 E4     ORA $E4                       ; 0326E ×425
  B270  D0 13     BNE loc_B0_B285               ; 03270 ×425
  B272  BD FD 03  LDA $03FD,X                   ; 03272 inferred, not run
  B275  38        SEC                           ; 03275 inferred, not run
  B276  E5 87     SBC $87                       ; 03276 inferred, not run
  B278  C9 60     CMP #$60                      ; 03278 inferred, not run
  B27A  B0 09     BCS loc_B0_B285               ; 0327A inferred, not run
  B27C  A6 15     LDX $15                       ; 0327C inferred, not run
  B27E  A9 60     LDA #$60                      ; 0327E inferred, not run
  B280  20 FC 92  JSR $92FC                     ; 03280 inferred, not run
  B283  A6 82     LDX $82                       ; 03283 inferred, not run

loc_B0_B285:                    ; from 03270
  B285  A5 10     LDA $10                       ; 03285 ×425
  B287  C9 0C     CMP #$0C                      ; 03287 ×425
  B289  D0 3E     BNE $B2C9                     ; 03289 ×425
  B28B  99 EC 00  STA $00EC,Y                   ; 0328B ×425
  B28E  B9 74 05  LDA $0574,Y                   ; 0328E ×425
  B291  D0 33     BNE loc_B0_B2C6               ; 03291 ×425
  B293  BD EE 03  LDA $03EE,X                   ; 03293 ×425
  B296  C9 24     CMP #$24                      ; 03296 ×425
  B298  D0 16     BNE loc_B0_B2B0               ; 03298 ×425
  B29A  BD 39 04  LDA $0439,X                   ; 0329A inferred, not run
  B29D  C9 50     CMP #$50                      ; 0329D inferred, not run
  B29F  B0 25     BCS loc_B0_B2C6               ; 0329F inferred, not run
  B2A1  A9 00     LDA #$00                      ; 032A1 inferred, not run
  B2A3  99 56 05  STA $0556,Y                   ; 032A3 inferred, not run
  B2A6  99 A2 04  STA $04A2,Y                   ; 032A6 inferred, not run
  B2A9  A9 03     LDA #$03                      ; 032A9 inferred, not run
  B2AB  99 C0 04  STA $04C0,Y                   ; 032AB inferred, not run
  B2AE  D0 16     BNE loc_B0_B2C6               ; 032AE inferred, not run

loc_B0_B2B0:                    ; from 03298
  B2B0  C9 20     CMP #$20                      ; 032B0 ×425
  B2B2  D0 12     BNE loc_B0_B2C6               ; 032B2 ×425
  B2B4  A9 60     LDA #$60                      ; 032B4 inferred, not run
  B2B6  D9 FD 03  CMP $03FD,Y                   ; 032B6 inferred, not run
  B2B9  B0 0B     BCS loc_B0_B2C6               ; 032B9 inferred, not run
  B2BB  99 FD 03  STA $03FD,Y                   ; 032BB inferred, not run
  B2BE  B9 84 04  LDA $0484,Y                   ; 032BE inferred, not run
  B2C1  30 03     BMI loc_B0_B2C6               ; 032C1 inferred, not run
  B2C3  20 CA B2  JSR $B2CA                     ; 032C3 inferred, not run

loc_B0_B2C6:                    ; from 032b2
  B2C6  4C 31 B3  JMP loc_B0_B331               ; 032C6 ×425
  B2C9  60        RTS                           ; 032C9 inferred, not run
  B2CA  A9 00     LDA #$00                      ; 032CA inferred, not run
  B2CC  99 38 05  STA $0538,Y                   ; 032CC inferred, not run
  B2CF  99 56 05  STA $0556,Y                   ; 032CF inferred, not run
  B2D2  99 A2 04  STA $04A2,Y                   ; 032D2 inferred, not run
  B2D5  A9 E0     LDA #$E0                      ; 032D5 inferred, not run
  B2D7  99 65 05  STA $0565,Y                   ; 032D7 inferred, not run
  B2DA  9D 47 05  STA $0547,X                   ; 032DA inferred, not run
  B2DD  A9 05     LDA #$05                      ; 032DD inferred, not run
  B2DF  99 C0 04  STA $04C0,Y                   ; 032DF inferred, not run
  B2E2  60        RTS                           ; 032E2 inferred, not run

loc_B0_B2E3:                    ; from 03302
  B2E3  4C 42 B2  JMP loc_B0_B242               ; 032E3 ×1568

jt_B0_B2E6:                    ; from 008ec
  B2E6  BD 47 05  LDA $0547,X                   ; 032E6 ×4355
  B2E9  F0 12     BEQ loc_B0_B2FD               ; 032E9 ×4355
  B2EB  BD A2 04  LDA $04A2,X                   ; 032EB inferred, not run
  B2EE  30 32     BMI $B322                     ; 032EE inferred, not run
  B2F0  A5 10     LDA $10                       ; 032F0 inferred, not run
  B2F2  C9 0A     CMP #$0A                      ; 032F2 inferred, not run
  B2F4  D0 3B     BNE loc_B0_B331               ; 032F4 inferred, not run
  B2F6  A9 04     LDA #$04                      ; 032F6 inferred, not run
  B2F8  20 20 B9  JSR sub_B0_B920               ; 032F8 inferred, not run
  B2FB  D0 34     BNE loc_B0_B331               ; 032FB inferred, not run

loc_B0_B2FD:                    ; from 032e9
  B2FD  BD 29 05  LDA $0529,X                   ; 032FD ×4355
  B300  C9 40     CMP #$40                      ; 03300 ×4355
  B302  B0 DF     BCS loc_B0_B2E3               ; 03302 ×4355
  B304  A9 5E     LDA #$5E                      ; 03304 ×2787
  B306  9D FC 04  STA $04FC,X                   ; 03306 ×2787
  B309  A9 01     LDA #$01                      ; 03309 ×2787
  B30B  20 59 8A  JSR sub_B0_8A59               ; 0330B ×2787
  B30E  A9 00     LDA #$00                      ; 0330E ×2787
  B310  9D FC 04  STA $04FC,X                   ; 03310 ×2787
  B313  A5 10     LDA $10                       ; 03313 ×2787
  B315  C9 0A     CMP #$0A                      ; 03315 ×2787
  B317  F0 18     BEQ loc_B0_B331               ; 03317 ×2787
  B319  C9 0C     CMP #$0C                      ; 03319 ×833
  B31B  D0 08     BNE loc_B0_B325               ; 0331B ×833
  B31D  BD A2 04  LDA $04A2,X                   ; 0331D ×833
  B320  10 03     BPL loc_B0_B325               ; 03320 ×833
  B322  4C 80 D0  JMP sub_B0_D080               ; 03322 ×1

loc_B0_B325:                    ; from 03320
  B325  BD FD 03  LDA $03FD,X                   ; 03325 ×832
  B328  38        SEC                           ; 03328 ×832
  B329  E5 87     SBC $87                       ; 03329 ×832
  B32B  30 04     BMI loc_B0_B331               ; 0332B ×832
  B32D  A9 1E     LDA #$1E                      ; 0332D ×447
  B32F  85 B2     STA $B2                       ; 0332F ×447

loc_B0_B331:                    ; from 03317 032c6 0332b
  B331  A9 2A     LDA #$2A                      ; 03331 ×3211
  B333  A4 10     LDY $10                       ; 03333 ×3211
  B335  C0 03     CPY #$03                      ; 03335 ×3211
  B337  F0 0E     BEQ loc_B0_B347               ; 03337 ×3211
  B339  A9 D2     LDA #$D2                      ; 03339 ×3211
  B33B  C0 0C     CPY #$0C                      ; 0333B ×3211
  B33D  F0 08     BEQ loc_B0_B347               ; 0333D ×3211
  B33F  A9 74     LDA #$74                      ; 0333F ×1954
  B341  C0 0A     CPY #$0A                      ; 03341 ×1954
  B343  F0 02     BEQ loc_B0_B347               ; 03343 ×1954
  B345  A9 8B     LDA #$8B                      ; 03345 inferred, not run

loc_B0_B347:                    ; from 03343 0333d
  B347  9D D0 03  STA $03D0,X                   ; 03347 ×3211

loc_B0_B34A:                    ; from 0335d
  B34A  60        RTS                           ; 0334A ×3492
  B34B  .byte 0F 00 00 10 10 20 20 30 30                        ; 0334B data, read by 033ba 033c9
  B354  .byte 20                                                ; 03354
  B355  .byte 20 30 10 20 00 10                                 ; 03355 data, read by 033ba 033c9

jt_B0_B35B:                    ; from 008ec
  B35B  A5 C9     LDA $C9                       ; 0335B ×2137
  B35D  D0 EB     BNE loc_B0_B34A               ; 0335D ×2137
  B35F  BD 39 04  LDA $0439,X                   ; 0335F ×1856
  B362  F0 04     BEQ loc_B0_B368               ; 03362 ×1856
  B364  DE 39 04  DEC $0439,X                   ; 03364 ×1628
  B367  60        RTS                           ; 03367 ×1628

loc_B0_B368:                    ; from 03362
  B368  A5 95     LDA $95                       ; 03368 ×228
  B36A  C9 80     CMP #$80                      ; 0336A ×228
  B36C  D0 F9     BNE $B367                     ; 0336C ×228
  B36E  20 E1 B3  JSR sub_B0_B3E1               ; 0336E ×228
  B371  BD 83 05  LDA $0583,X                   ; 03371 ×228
  B374  85 DD     STA $DD                       ; 03374 ×228
  B376  84 15     STY $15                       ; 03376 ×228
  B378  A9 08     LDA #$08                      ; 03378 ×228
  B37A  9D 39 04  STA $0439,X                   ; 0337A ×228
  B37D  A5 10     LDA $10                       ; 0337D ×228
  B37F  C9 0C     CMP #$0C                      ; 0337F ×228
  B381  D0 15     BNE loc_B0_B398               ; 03381 ×228
  B383  26 DD     ROL $DD                       ; 03383 ×41
  B385  90 4B     BCC loc_B0_B3D2               ; 03385 ×41
  B387  BD FD 03  LDA $03FD,X                   ; 03387 ×39
  B38A  48        PHA                           ; 0338A ×39
  B38B  BD 0C 04  LDA $040C,X                   ; 0338B ×39
  B38E  9D FD 03  STA $03FD,X                   ; 0338E ×39
  B391  68        PLA                           ; 03391 ×39
  B392  9D 0C 04  STA $040C,X                   ; 03392 ×39
  B395  4C D5 B3  JMP loc_B0_B3D5               ; 03395 ×39

loc_B0_B398:                    ; from 03381
  B398  C9 0A     CMP #$0A                      ; 03398 ×187
  B39A  D0 36     BNE loc_B0_B3D2               ; 0339A ×187
  B39C  FE DE 04  INC $04DE,X                   ; 0339C ×167
  B39F  BD DE 04  LDA $04DE,X                   ; 0339F ×167
  B3A2  29 0E     AND #$0E                      ; 033A2 ×167
  B3A4  A8        TAY                           ; 033A4 ×167
  B3A5  D0 10     BNE loc_B0_B3B7               ; 033A5 ×167
  B3A7  BD ED 04  LDA $04ED,X                   ; 033A7 ×22
  B3AA  18        CLC                           ; 033AA ×22
  B3AB  69 01     ADC #$01                      ; 033AB ×22
  B3AD  9D ED 04  STA $04ED,X                   ; 033AD ×22
  B3B0  BD ED 04  LDA $04ED,X                   ; 033B0 ×22
  B3B3  49 0D     EOR #$0D                      ; 033B3 ×22
  B3B5  F0 F6     BEQ $B3AD                     ; 033B5 ×22

loc_B0_B3B7:                    ; from 033a5
  B3B7  BD ED 04  LDA $04ED,X                   ; 033B7 ×167
  B3BA  19 4B B3  ORA $B34B,Y                   ; 033BA ×167
  B3BD  9D FD 03  STA $03FD,X                   ; 033BD ×167
  B3C0  A9 20     LDA #$20                      ; 033C0 ×167
  B3C2  C0 08     CPY #$08                      ; 033C2 ×167
  B3C4  F0 06     BEQ loc_B0_B3CC               ; 033C4 ×167
  B3C6  BD ED 04  LDA $04ED,X                   ; 033C6 ×146
  B3C9  19 4C B3  ORA $B34C,Y                   ; 033C9 ×146

loc_B0_B3CC:                    ; from 033c4
  B3CC  9D 0C 04  STA $040C,X                   ; 033CC ×167
  B3CF  4C D5 B3  JMP loc_B0_B3D5               ; 033CF ×167

loc_B0_B3D2:                    ; from 0339a 03385
  B3D2  20 80 D0  JSR sub_B0_D080               ; 033D2 ×22

loc_B0_B3D5:                    ; from 033cf 03395
  B3D5  A4 15     LDY $15                       ; 033D5 ×228
  B3D7  98        TYA                           ; 033D7 ×228
  B3D8  29 10     AND #$10                      ; 033D8 ×228
  B3DA  85 CB     STA $CB                       ; 033DA ×228
  B3DC  A9 84     LDA #$84                      ; 033DC ×228
  B3DE  85 95     STA $95                       ; 033DE ×228
  B3E0  60        RTS                           ; 033E0 ×228

sub_B0_B3E1:                    ; from 0336e
  B3E1  BC 2A 04  LDY $042A,X                   ; 033E1 ×228
  B3E4  BD EE 03  LDA $03EE,X                   ; 033E4 ×228
  B3E7  99 56 00  STA $0056,Y                   ; 033E7 ×228
  B3EA  BD FD 03  LDA $03FD,X                   ; 033EA ×228
  B3ED  99 57 00  STA $0057,Y                   ; 033ED ×228
  B3F0  BD 0C 04  LDA $040C,X                   ; 033F0 ×228
  B3F3  99 58 00  STA $0058,Y                   ; 033F3 ×228
  B3F6  60        RTS                           ; 033F6 ×228
  B3F7  .byte FE DE 04 BD DE 04 4A BC 1A 05 30 01 4A AA A0 1F   ; 033F7
  B407  .byte B9 50 06 C9 0F D0 06 E0 0B B0 02 A9 00 18 7D 48   ; 03407
  B417  .byte B4 B0 3B C9 40 90 04 A9 30 D0 00 99 55 00 C0 11   ; 03417
  B427  .byte 90 0D B9 50 06 FD 48 B4 B0 02 A9 0F 99 55 00 88   ; 03427
  B437  .byte 10 CE A6 82 BD DE 04 29 01 0A 0A 0A 0A A8 4C D7   ; 03437
  B447  .byte B3 40 00 40 00 40 30 30 20 20 10 10 00 FF 4C 80   ; 03447
  B457  .byte D0 A2 1E A0 02 20 CB FF BD C1 03 F0 F1 60 A5 0B   ; 03457
  B467  .byte 29 03 05 C9 D0 28 A5 10 C9 06 D0 0F A5 95 49 80   ; 03467
  B477  .byte D0 09 20 DA B3 A5 56 49 10 85 56 BC DE 04 F0 03   ; 03477
  B487  .byte DE DE 04 A5 25 29 1F D0 05 A9 09 9D DE 04 BD 39   ; 03487
  B497  .byte 04 1D 66 04 1D DF 03 D0 15 FE DF 03 A9 00 9D C0   ; 03497
  B4A7  .byte 04 9D CF 04 A9 04 9D ED 04 49 FF 9D 0B 05 BD 39   ; 034A7
  B4B7  .byte 04 C9 30 BD ED 04 90 08 A9 00 9D DF 03 BD 0B 05   ; 034B7
  B4C7  .byte 20 7A 8E A4 D7 C8 C0 4C 90 02 A0 00 84 D7 BD 39   ; 034C7
  B4D7  .byte 04 99 00 07 60 4C 80 D0 BD DE 04 D0 0C A2 18 A0   ; 034D7
  B4E7  .byte 07 20 CB FF BD DE 04 F0 EC 20 4C 8F DE DE 04 BD   ; 034E7
  B4F7  .byte ED 04 18 7D 56 05 9D 56 05 20 66 CF BD FC 04 20   ; 034F7
  B507  .byte 7A 8E BD 1A 05 30 03 20 AD E4 A5 0C 29 02 4A 69   ; 03507
  B517  .byte 0D 9D D0 03 60 15 14                              ; 03517
  B51E  .byte 20 28                                             ; 0351E data, read by 0352d
  B520  60        RTS                           ; 03520 inferred, not run

loc_B0_B521:                    ; from 0360d 035e2
  B521  A5 95     LDA $95                       ; 03521 ×22
  B523  C9 80     CMP #$80                      ; 03523 ×22
  B525  D0 F9     BNE $B520                     ; 03525 ×22
  B527  BD 1B 04  LDA $041B,X                   ; 03527 ×22
  B52A  29 07     AND #$07                      ; 0352A ×22
  B52C  A8        TAY                           ; 0352C ×22
  B52D  B9 1C B5  LDA $B51C,Y                   ; 0352D ×22
  B530  85 15     STA $15                       ; 03530 ×22
  B532  A2 0C     LDX #$0C                      ; 03532 ×22
  B534  A0 05     LDY #$05                      ; 03534 ×22
  B536  20 CB FF  JSR sub_B0_FFCB               ; 03536 ×22
  B539  A6 82     LDX $82                       ; 03539 ×22
  B53B  A0 04     LDY #$04                      ; 0353B ×22
  B53D  A9 30     LDA #$30                      ; 0353D ×22
  B53F  20 71 B5  JSR sub_B0_B571               ; 0353F ×22
  B542  A9 00     LDA #$00                      ; 03542 ×22
  B544  9D 83 05  STA $0583,X                   ; 03544 ×22
  B547  A9 30     LDA #$30                      ; 03547 ×22
  B549  9D A1 05  STA $05A1,X                   ; 03549 ×22
  B54C  BD C1 03  LDA $03C1,X                   ; 0354C ×22
  B54F  C9 08     CMP #$08                      ; 0354F ×22
  B551  D0 0F     BNE loc_B0_B562               ; 03551 ×22
  B553  A9 04     LDA #$04                      ; 03553 ×2
  B555  9D C1 03  STA $03C1,X                   ; 03555 ×2
  B558  A9 03     LDA #$03                      ; 03558 ×2
  B55A  9D ED 04  STA $04ED,X                   ; 0355A ×2
  B55D  A9 0E     LDA #$0E                      ; 0355D ×2
  B55F  9D DE 04  STA $04DE,X                   ; 0355F ×2

loc_B0_B562:                    ; from 035f2 03551
  B562  60        RTS                           ; 03562 ×1512

loc_B0_B563:                    ; from 00030
  B563  A0 06     LDY #$06                      ; 03563 ×213
  B565  A9 1A     LDA #$1A                      ; 03565 ×213
  B567  A6 82     LDX $82                       ; 03567 ×213
  B569  20 71 B5  JSR sub_B0_B571               ; 03569 ×213
  B56C  A9 03     LDA #$03                      ; 0356C ×213
  B56E  85 2D     STA $2D                       ; 0356E ×213
  B570  60        RTS                           ; 03570 ×213

sub_B0_B571:                    ; from 03569 0353f
  B571  84 B3     STY $B3                       ; 03571 ×235
  B573  85 B4     STA $B4                       ; 03573 ×235
  B575  BD FD 03  LDA $03FD,X                   ; 03575 ×235
  B578  C0 06     CPY #$06                      ; 03578 ×235
  B57A  F0 02     BEQ loc_B0_B57E               ; 0357A ×235
  B57C  29 E0     AND #$E0                      ; 0357C ×22

loc_B0_B57E:                    ; from 0357a
  B57E  38        SEC                           ; 0357E ×235
  B57F  E9 08     SBC #$08                      ; 0357F ×235
  B581  85 19     STA $19                       ; 03581 ×235
  B583  BD 1B 04  LDA $041B,X                   ; 03583 ×235
  B586  38        SEC                           ; 03586 ×235
  B587  FD 39 04  SBC $0439,X                   ; 03587 ×235
  B58A  38        SEC                           ; 0358A ×235
  B58B  E5 89     SBC $89                       ; 0358B ×235
  B58D  A2 F0     LDX #$F0                      ; 0358D ×235
  B58F  20 5E 87  JSR sub_B0_875E               ; 0358F ×235
  B592  A0 03     LDY #$03                      ; 03592 ×235

loc_B0_B594:                    ; from 035c8
  B594  A5 9A     LDA $9A                       ; 03594 ×940
  B596  99 78 01  STA $0178,Y                   ; 03596 ×940
  B599  A5 15     LDA $15                       ; 03599 ×940
  B59B  99 7C 01  STA $017C,Y                   ; 0359B ×940
  B59E  C0 01     CPY #$01                      ; 0359E ×940
  B5A0  D0 08     BNE loc_B0_B5AA               ; 035A0 ×940
  B5A2  A4 B3     LDY $B3                       ; 035A2 ×235
  B5A4  C0 06     CPY #$06                      ; 035A4 ×235
  B5A6  A0 01     LDY #$01                      ; 035A6 ×235
  B5A8  B0 1D     BCS loc_B0_B5C7               ; 035A8 ×235

loc_B0_B5AA:                    ; from 035a0
  B5AA  18        CLC                           ; 035AA ×727
  B5AB  69 20     ADC #$20                      ; 035AB ×727
  B5AD  85 15     STA $15                       ; 035AD ×727
  B5AF  A5 9A     LDA $9A                       ; 035AF ×727
  B5B1  69 00     ADC #$00                      ; 035B1 ×727
  B5B3  85 9A     STA $9A                       ; 035B3 ×727
  B5B5  C9 23     CMP #$23                      ; 035B5 ×727
  B5B7  D0 0E     BNE loc_B0_B5C7               ; 035B7 ×727
  B5B9  A5 15     LDA $15                       ; 035B9 ×8
  B5BB  C9 C0     CMP #$C0                      ; 035BB ×8
  B5BD  90 08     BCC loc_B0_B5C7               ; 035BD ×8
  B5BF  29 1F     AND #$1F                      ; 035BF inferred, not run
  B5C1  85 15     STA $15                       ; 035C1 inferred, not run
  B5C3  A9 20     LDA #$20                      ; 035C3 inferred, not run
  B5C5  85 9A     STA $9A                       ; 035C5 inferred, not run

loc_B0_B5C7:                    ; from 035b7 035a8 035bd
  B5C7  88        DEY                           ; 035C7 ×940
  B5C8  10 CA     BPL loc_B0_B594               ; 035C8 ×940
  B5CA  A9 85     LDA #$85                      ; 035CA ×235
  B5CC  85 95     STA $95                       ; 035CC ×235
  B5CE  A6 82     LDX $82                       ; 035CE ×235
  B5D0  60        RTS                           ; 035D0 ×235

jt_B0_B5D1:                    ; from 008ec
  B5D1  BD A1 05  LDA $05A1,X                   ; 035D1 ×2
  B5D4  D0 05     BNE $B5DB                     ; 035D4 ×2
  B5D6  A9 0A     LDA #$0A                      ; 035D6 ×2
  B5D8  20 48 91  JSR sub_B0_9148               ; 035D8 ×2
  B5DB  BD 83 05  LDA $0583,X                   ; 035DB ×2
  B5DE  C9 01     CMP #$01                      ; 035DE ×2
  B5E0  D0 03     BNE loc_B0_B5E5               ; 035E0 ×2
  B5E2  4C 21 B5  JMP loc_B0_B521               ; 035E2 ×2

loc_B0_B5E5:                    ; from 03604
  B5E5  A9 00     LDA #$00                      ; 035E5 ×2990
  B5E7  9D D0 03  STA $03D0,X                   ; 035E7 ×2990
  B5EA  9D 75 04  STA $0475,X                   ; 035EA ×2990
  B5ED  A5 0B     LDA $0B                       ; 035ED ×2990
  B5EF  6A        ROR A                         ; 035EF ×2990
  B5F0  90 03     BCC loc_B0_B5F5               ; 035F0 ×2990
  B5F2  4C 62 B5  JMP loc_B0_B562               ; 035F2 ×1490

loc_B0_B5F5:                    ; from 035f0
  B5F5  DE 83 05  DEC $0583,X                   ; 035F5 ×1500
  B5F8  60        RTS                           ; 035F8 ×1500

jt_B0_B5F9:                    ; from 008ec
  B5F9  A9 1E     LDA #$1E                      ; 035F9 ×3887
  B5FB  85 B2     STA $B2                       ; 035FB ×3887
  B5FD  BD 83 05  LDA $0583,X                   ; 035FD ×3887
  B600  F0 0E     BEQ loc_B0_B610               ; 03600 ×3887
  B602  C9 01     CMP #$01                      ; 03602 ×3010
  B604  D0 DF     BNE loc_B0_B5E5               ; 03604 ×3010
  B606  A9 10     LDA #$10                      ; 03606 ×20
  B608  A2 0C     LDX #$0C                      ; 03608 ×20
  B60A  20 4A 91  JSR sub_B0_914A               ; 0360A ×20
  B60D  4C 21 B5  JMP loc_B0_B521               ; 0360D ×20

loc_B0_B610:                    ; from 03600
  B610  A5 0B     LDA $0B                       ; 03610 ×877
  B612  29 03     AND #$03                      ; 03612 ×877
  B614  D0 03     BNE loc_B0_B619               ; 03614 ×877
  B616  FE DE 04  INC $04DE,X                   ; 03616 ×224

loc_B0_B619:                    ; from 03614
  B619  BC DE 04  LDY $04DE,X                   ; 03619 ×877
  B61C  B9 2D B6  LDA $B62D,Y                   ; 0361C ×877
  B61F  F0 04     BEQ loc_B0_B625               ; 0361F ×877
  B621  9D D0 03  STA $03D0,X                   ; 03621 ×860
  B624  60        RTS                           ; 03624 ×860

loc_B0_B625:                    ; from 0361f
  B625  A9 0B     LDA #$0B                      ; 03625 ×17
  B627  9D C1 03  STA $03C1,X                   ; 03627 ×17
  B62A  4C E9 E2  JMP sub_B0_E2E9               ; 0362A ×17
  B62D  .byte 44 45 46 47 48 49 49 48 47 46 45 44 00            ; 0362D data, read by 0361c
  B63A  .byte BD A2 04 1D 74 05 30 56 A4 10 C0 06 F0 0D 20 E1   ; 0363A
  B64A  .byte 8E BD 56 05 29 80 A8 F0 02 A0 02 B9 91 B6 18 7D   ; 0364A
  B65A  .byte FD 03 9D FD 03 B9 90 B6 7D EE 03 9D EE 03 A5 10   ; 0365A
  B66A  .byte C9 06 F0 11 20 AD E4 A5 D9 30 05 BD 75 04 D0 05   ; 0366A
  B67A  .byte C6 DB 4C 87 DD A5 10 C9 0C F0 05 20 04 FB A6 82   ; 0367A
  B68A  .byte A9 3F 9D D0 03 60 00 05 FF FB 00 00 00 10 C6 DB   ; 0368A
  B69A  .byte 4C 80 D0 A0 60 BD 75 04 F0 61 20 1D B9 20 52 8E   ; 0369A
  B6AA  .byte 20 AD E4 BD 75 04 D0 07 A9 83 A2 0C 20 4A 91 4C   ; 036AA
  B6BA  .byte 4B B7                                             ; 036BA

jt_B0_B6BC:                    ; from 008ec
  B6BC  BC 65 05  LDY $0565,X                   ; 036BC ×5
  B6BF  F0 44     BEQ loc_B0_B705               ; 036BF ×5
  B6C1  20 4C 8F  JSR sub_B0_8F4C               ; 036C1 ×3
  B6C4  20 52 8E  JSR sub_B0_8E52               ; 036C4 ×3
  B6C7  BD A2 04  LDA $04A2,X                   ; 036C7 ×3
  B6CA  10 03     BPL loc_B0_B6CF               ; 036CA ×3
  B6CC  4C 80 D0  JMP sub_B0_D080               ; 036CC ×1

loc_B0_B6CF:                    ; from 036ca
  B6CF  60        RTS                           ; 036CF ×2
  B6D0  .byte E6 E7 E6 E8 BD DE 04 DD 83 05 B0 14 FE DE 04 29   ; 036D0
  B6E0  .byte 08 49 08 9D 75 04 F0 75 A9 EC 20 FC 92 4C 27 B7   ; 036E0
  B6F0  .byte BC 39 04 BD DE 04 30 0D A9 8B 20 48 91 A9 FF 9D   ; 036F0
  B700  .byte DE 04 20 FC 92                                    ; 03700

loc_B0_B705:                    ; from 036bf
  B705  C0 3F     CPY #$3F                      ; 03705 ×2
  B707  D0 16     BNE loc_B0_B71F               ; 03707 ×2
  B709  BD 1A 05  LDA $051A,X                   ; 03709 inferred, not run
  B70C  29 F0     AND #$F0                      ; 0370C inferred, not run
  B70E  4A        LSR A                         ; 0370E inferred, not run
  B70F  4A        LSR A                         ; 0370F inferred, not run
  B710  4A        LSR A                         ; 03710 inferred, not run
  B711  4A        LSR A                         ; 03711 inferred, not run
  B712  65 D5     ADC $D5                       ; 03712 inferred, not run
  B714  7D FD 03  ADC $03FD,X                   ; 03714 inferred, not run
  B717  9D FD 03  STA $03FD,X                   ; 03717 inferred, not run
  B71A  90 03     BCC loc_B0_B71F               ; 0371A inferred, not run
  B71C  FE EE 03  INC $03EE,X                   ; 0371C inferred, not run

loc_B0_B71F:                    ; from 03707
  B71F  BD A2 04  LDA $04A2,X                   ; 0371F ×2
  B722  30 42     BMI $B766                     ; 03722 ×2
  B724  20 78 B7  JSR sub_B0_B778               ; 03724 ×2
  B727  A5 10     LDA $10                       ; 03727 ×2
  B729  49 0C     EOR #$0C                      ; 03729 ×2
  B72B  D0 0E     BNE $B73B                     ; 0372B ×2
  B72D  9D 75 04  STA $0475,X                   ; 0372D ×2
  B730  A9 8E     LDA #$8E                      ; 03730 ×2
  B732  BC C1 03  LDY $03C1,X                   ; 03732 ×2
  B735  C0 26     CPY #$26                      ; 03735 ×2
  B737  69 00     ADC #$00                      ; 03737 ×2
  B739  D0 22     BNE loc_B0_B75D               ; 03739 ×2
  B73B  BD C1 03  LDA $03C1,X                   ; 0373B inferred, not run
  B73E  49 2A     EOR #$2A                      ; 0373E inferred, not run
  B740  F0 06     BEQ $B748                     ; 03740 inferred, not run
  B742  BD 39 04  LDA $0439,X                   ; 03742 inferred, not run
  B745  38        SEC                           ; 03745 inferred, not run
  B746  E9 40     SBC #$40                      ; 03746 inferred, not run
  B748  9D 75 04  STA $0475,X                   ; 03748 inferred, not run
  B74B  BC C1 03  LDY $03C1,X                   ; 0374B inferred, not run
  B74E  B9 46 B7  LDA $B746,Y                   ; 0374E inferred, not run
  B751  A4 10     LDY $10                       ; 03751 inferred, not run
  B753  C9 4E     CMP #$4E                      ; 03753 inferred, not run
  B755  D0 06     BNE loc_B0_B75D               ; 03755 inferred, not run
  B757  C0 06     CPY #$06                      ; 03757 inferred, not run
  B759  D0 02     BNE loc_B0_B75D               ; 03759 inferred, not run
  B75B  A9 CF     LDA #$CF                      ; 0375B inferred, not run

loc_B0_B75D:                    ; from 03739
  B75D  9D D0 03  STA $03D0,X                   ; 0375D ×2
  B760  60        RTS                           ; 03760 ×2
  B761  .byte BD A2 04 10 E5                                    ; 03761
  B766  4C 80 D0  JMP sub_B0_D080               ; 03766 inferred, not run
  B769  .byte 4A 4B 4C 4E 4D 00 56 57 58                        ; 03769

loc_B0_B772:                    ; from 0377b
  B772  4C 8E B8  JMP loc_B0_B88E               ; 03772 ×1
  B775  4C 29 B8  JMP $B829                     ; 03775 inferred, not run

sub_B0_B778:                    ; from 03724
  B778  20 ED C9  JSR sub_B0_C9ED               ; 03778 ×2
  B77B  F0 F5     BEQ loc_B0_B772               ; 0377B ×2
  B77D  A5 E4     LDA $E4                       ; 0377D ×1
  B77F  D0 F1     BNE loc_B0_B772               ; 0377F ×1
  B781  B9 74 05  LDA $0574,Y                   ; 03781 ×1
  B784  30 EC     BMI loc_B0_B772               ; 03784 ×1
  B786  BD C1 03  LDA $03C1,X                   ; 03786 ×1
  B789  C9 24     CMP #$24                      ; 03789 ×1
  B78B  F0 E8     BEQ $B775                     ; 0378B ×1
  B78D  84 15     STY $15                       ; 0378D ×1
  B78F  A8        TAY                           ; 0378F ×1
  B790  B9 C1 B8  LDA $B8C1,Y                   ; 03790 ×1
  B793  85 1F     STA $1F                       ; 03793 ×1
  B795  B9 CA B8  LDA $B8CA,Y                   ; 03795 ×1
  B798  85 20     STA $20                       ; 03798 ×1
  B79A  B9 D3 B8  LDA $B8D3,Y                   ; 0379A ×1
  B79D  85 21     STA $21                       ; 0379D ×1
  B79F  A4 15     LDY $15                       ; 0379F ×1
  B7A1  A5 E4     LDA $E4                       ; 037A1 ×1
  B7A3  D0 CD     BNE loc_B0_B772               ; 037A3 ×1
  B7A5  A5 21     LDA $21                       ; 037A5 ×1
  B7A7  20 01 8D  JSR sub_B0_8D01               ; 037A7 ×1
  B7AA  D0 C6     BNE loc_B0_B772               ; 037AA ×1
  B7AC  A5 20     LDA $20                       ; 037AC ×1
  B7AE  20 39 8D  JSR sub_B0_8D39               ; 037AE ×1
  B7B1  D0 BF     BNE loc_B0_B772               ; 037B1 ×1
  B7B3  B9 39 04  LDA $0439,Y                   ; 037B3 ×1
  B7B6  38        SEC                           ; 037B6 ×1
  B7B7  FD 39 04  SBC $0439,X                   ; 037B7 ×1
  B7BA  C5 1F     CMP $1F                       ; 037BA ×1
  B7BC  B0 B4     BCS loc_B0_B772               ; 037BC ×1
  B7BE  BD C1 03  LDA $03C1,X                   ; 037BE ×1
  B7C1  C9 26     CMP #$26                      ; 037C1 ×1
  B7C3  D0 3D     BNE $B802                     ; 037C3 ×1
  B7C5  B9 38 05  LDA $0538,Y                   ; 037C5 ×1
  B7C8  29 40     AND #$40                      ; 037C8 ×1
  B7CA  F0 A6     BEQ loc_B0_B772               ; 037CA ×1
  B7CC  A9 FE     LDA #$FE                      ; 037CC ×1
  B7CE  9D 65 05  STA $0565,X                   ; 037CE ×1
  B7D1  A9 04     LDA #$04                      ; 037D1 ×1
  B7D3  9D C0 04  STA $04C0,X                   ; 037D3 ×1
  B7D6  A5 D5     LDA $D5                       ; 037D6 ×1
  B7D8  C9 04     CMP #$04                      ; 037D8 ×1
  B7DA  90 04     BCC loc_B0_B7E0               ; 037DA ×1
  B7DC  A9 02     LDA #$02                      ; 037DC inferred, not run
  B7DE  85 D5     STA $D5                       ; 037DE inferred, not run

loc_B0_B7E0:                    ; from 037da
  B7E0  A5 B7     LDA $B7                       ; 037E0 ×1
  B7E2  38        SEC                           ; 037E2 ×1
  B7E3  E9 0B     SBC #$0B                      ; 037E3 ×1
  B7E5  85 E5     STA $E5                       ; 037E5 ×1
  B7E7  A5 B8     LDA $B8                       ; 037E7 ×1
  B7E9  E9 00     SBC #$00                      ; 037E9 ×1
  B7EB  85 E6     STA $E6                       ; 037EB ×1
  B7ED  A9 06     LDA #$06                      ; 037ED ×1
  B7EF  A4 15     LDY $15                       ; 037EF ×1
  B7F1  20 57 BC  JSR sub_B0_BC57               ; 037F1 ×1
  B7F4  A9 56     LDA #$56                      ; 037F4 ×1

sub_B0_B7F6:                    ; from 03c0c 055de 0202a 02e22 02714
  B7F6  48        PHA                           ; 037F6 ×128
  B7F7  A2 0C     LDX #$0C                      ; 037F7 ×128
  B7F9  20 E1 84  JSR sub_B0_84E1               ; 037F9 ×128
  B7FC  68        PLA                           ; 037FC ×128

sub_B0_B7FD:                    ; from 06f60
  B7FD  A2 0F     LDX #$0F                      ; 037FD ×174
  B7FF  4C 4A 91  JMP sub_B0_914A               ; 037FF ×174
  B802  B9 FD 03  LDA $03FD,Y                   ; 03802 inferred, not run
  B805  69 13     ADC #$13                      ; 03805 inferred, not run
  B807  9D FD 03  STA $03FD,X                   ; 03807 inferred, not run
  B80A  B9 EE 03  LDA $03EE,Y                   ; 0380A inferred, not run
  B80D  69 00     ADC #$00                      ; 0380D inferred, not run
  B80F  9D EE 03  STA $03EE,X                   ; 0380F inferred, not run
  B812  BD C1 03  LDA $03C1,X                   ; 03812 inferred, not run
  B815  AA        TAX                           ; 03815 inferred, not run
  B816  20 D9 B8  JSR $B8D9                     ; 03816 inferred, not run
  B819  A9 00     LDA #$00                      ; 03819 inferred, not run
  B81B  85 D4     STA $D4                       ; 0381B inferred, not run
  B81D  85 D5     STA $D5                       ; 0381D inferred, not run
  B81F  BD C1 03  LDA $03C1,X                   ; 0381F inferred, not run
  B822  C9 2B     CMP #$2B                      ; 03822 inferred, not run
  B824  D0 68     BNE loc_B0_B88E               ; 03824 inferred, not run
  B826  4C 53 B5  JMP $B553                     ; 03826 inferred, not run
  B829  98        TYA                           ; 03829 inferred, not run
  B82A  18        CLC                           ; 0382A inferred, not run
  B82B  69 01     ADC #$01                      ; 0382B inferred, not run
  B82D  3D A1 05  AND $05A1,X                   ; 0382D inferred, not run
  B830  D0 5C     BNE loc_B0_B88E               ; 03830 inferred, not run
  B832  A9 18     LDA #$18                      ; 03832 inferred, not run
  B834  20 01 8D  JSR sub_B0_8D01               ; 03834 inferred, not run
  B837  D0 55     BNE loc_B0_B88E               ; 03837 inferred, not run
  B839  A9 0E     LDA #$0E                      ; 03839 inferred, not run
  B83B  20 39 8D  JSR sub_B0_8D39               ; 0383B inferred, not run
  B83E  D0 4E     BNE loc_B0_B88E               ; 0383E inferred, not run
  B840  A9 14     LDA #$14                      ; 03840 inferred, not run
  B842  20 4D 8D  JSR sub_B0_8D4D               ; 03842 inferred, not run
  B845  D0 47     BNE loc_B0_B88E               ; 03845 inferred, not run
  B847  BD 39 04  LDA $0439,X                   ; 03847 inferred, not run
  B84A  69 08     ADC #$08                      ; 0384A inferred, not run
  B84C  99 39 04  STA $0439,Y                   ; 0384C inferred, not run
  B84F  98        TYA                           ; 0384F inferred, not run
  B850  18        CLC                           ; 03850 inferred, not run
  B851  69 01     ADC #$01                      ; 03851 inferred, not run
  B853  1D A1 05  ORA $05A1,X                   ; 03853 inferred, not run
  B856  9D A1 05  STA $05A1,X                   ; 03856 inferred, not run
  B859  BD 1A 05  LDA $051A,X                   ; 03859 inferred, not run
  B85C  4A        LSR A                         ; 0385C inferred, not run
  B85D  4A        LSR A                         ; 0385D inferred, not run
  B85E  4A        LSR A                         ; 0385E inferred, not run
  B85F  29 1E     AND #$1E                      ; 0385F inferred, not run
  B861  85 15     STA $15                       ; 03861 inferred, not run
  B863  4A        LSR A                         ; 03863 inferred, not run
  B864  65 15     ADC $15                       ; 03864 inferred, not run
  B866  AA        TAX                           ; 03866 inferred, not run
  B867  BD 8F B8  LDA $B88F,X                   ; 03867 inferred, not run
  B86A  99 C0 04  STA $04C0,Y                   ; 0386A inferred, not run
  B86D  BD 90 B8  LDA $B890,X                   ; 0386D inferred, not run
  B870  99 CF 04  STA $04CF,Y                   ; 03870 inferred, not run
  B873  A9 30     LDA #$30                      ; 03873 inferred, not run
  B875  99 BD 03  STA $03BD,Y                   ; 03875 inferred, not run
  B878  BD 91 B8  LDA $B891,X                   ; 03878 inferred, not run
  B87B  99 BB 03  STA $03BB,Y                   ; 0387B inferred, not run
  B87E  B9 75 04  LDA $0475,Y                   ; 0387E inferred, not run
  B881  18        CLC                           ; 03881 inferred, not run
  B882  69 01     ADC #$01                      ; 03882 inferred, not run
  B884  99 75 04  STA $0475,Y                   ; 03884 inferred, not run
  B887  A9 5A     LDA #$5A                      ; 03887 inferred, not run
  B889  A2 0C     LDX #$0C                      ; 03889 inferred, not run
  B88B  20 4A 91  JSR sub_B0_914A               ; 0388B inferred, not run

loc_B0_B88E:                    ; from 03772
  B88E  60        RTS                           ; 0388E ×1
  B88F  .byte 02 80 00 03 E0 00 01 80 C0 01 C0 C0 02 20 C0 02   ; 0388F
  B89F  .byte 80 C0 05 80 00 06 80 00 07 80 00 08 80 00         ; 0389F

sub_B0_B8AD:                    ; from 04a83
  B8AD  BD DC B8  LDA $B8DC,X                   ; 038AD ×3
  B8B0  99 47 05  STA $0547,Y                   ; 038B0 ×3
  B8B3  99 BF 03  STA $03BF,Y                   ; 038B3 ×3
  B8B6  BD E5 B8  LDA $B8E5,X                   ; 038B6 ×3
  B8B9  99 65 05  STA $0565,Y                   ; 038B9 ×3
  B8BC  BD EE B8  LDA $B8EE,X                   ; 038BC ×3
  B8BF  99 C0 04  STA $04C0,Y                   ; 038BF ×3
  B8C2  A9 00     LDA #$00                      ; 038C2 ×3
  B8C4  99 56 05  STA $0556,Y                   ; 038C4 ×3
  B8C7  99 1A 05  STA $051A,Y                   ; 038C7 ×3
  B8CA  E6 D0     INC $D0                       ; 038CA ×3
  B8CC  A9 C1     LDA #$C1                      ; 038CC ×3
  B8CE  99 74 05  STA $0574,Y                   ; 038CE ×3
  B8D1  20 28 A0  JSR sub_B0_A028               ; 038D1 ×3
  B8D4  A9 80     LDA #$80                      ; 038D4 ×3
  B8D6  85 E4     STA $E4                       ; 038D6 ×3
  B8D8  60        RTS                           ; 038D8 ×3
  B8D9  20 AD B8  JSR sub_B0_B8AD               ; 038D9 inferred, not run
  B8DC  A9 0A     LDA #$0A                      ; 038DC inferred, not run
  B8DE  20 48 91  JSR sub_B0_9148               ; 038DE inferred, not run
  B8E1  A4 15     LDY $15                       ; 038E1 inferred, not run
  B8E3  60        RTS                           ; 038E3 inferred, not run
  B8E4  .byte 23 FF 16                                          ; 038E4
  B8E7  .byte FF                                                ; 038E7 data, read by 03790
  B8E8  .byte 23 14 14 24 14 0C FF 16                           ; 038E8
  B8F0  .byte 40                                                ; 038F0 data, read by 03795
  B8F1  .byte 0C 0A 0C 16 0A 0D 10 10                           ; 038F1
  B8F9  .byte 18                                                ; 038F9 data, read by 0379a
  B8FA  .byte 10 20 10 10 10 E0 00                              ; 038FA
  B901  .byte C0                                                ; 03901 data, read by 038ad
  B902  .byte 00 00 C1 C0 D0 E0 00 00                           ; 03902
  B90A  .byte FF                                                ; 0390A data, read by 038b6
  B90B  .byte 00 00 FF FF 00 00 01 00                           ; 0390B
  B913  .byte 04                                                ; 03913 data, read by 038bc
  B914  .byte 00 00 03 06 00 00 4C 80 D0 BD 83 05               ; 03914

sub_B0_B920:                    ; from 039b0 00926 049fb
  B920  18        CLC                           ; 03920 ×2266
  B921  7D FD 03  ADC $03FD,X                   ; 03921 ×2266
  B924  9D FD 03  STA $03FD,X                   ; 03924 ×2266
  B927  90 03     BCC loc_B0_B92C               ; 03927 ×2266
  B929  FE EE 03  INC $03EE,X                   ; 03929 ×10

loc_B0_B92C:                    ; from 03927
  B92C  60        RTS                           ; 0392C ×2266
  B92D  .byte BD A2 04 30 E8 20 1D B9 BD D0 03 D0 05 A9 6E 20   ; 0392D
  B93D  .byte 48 91 A9 55 9D D0 03 BD DE 04 D0 27 BD FD 03 38   ; 0393D
  B94D  .byte E5 87 C9 E0 90 1D 20 27 FA 20 58 FE A4 82 20 6D   ; 0394D
  B95D  .byte B1 A9 29 9D C1 03 A9 08 9D 83 05 B9 75 04 9D 75   ; 0395D
  B96D  .byte 04 A6 82 20 76 B9 4C AD E4                        ; 0396D

sub_B0_B976:                    ; from 04894
  B976  A0 E3     LDY #$E3                      ; 03976 ×4580

sub_B0_B978:                    ; from 06f4c 04a00
  B978  BD A1 05  LDA $05A1,X                   ; 03978 ×11618
  B97B  FE A1 05  INC $05A1,X                   ; 0397B ×11618
  B97E  18        CLC                           ; 0397E ×11618
  B97F  69 08     ADC #$08                      ; 0397F ×11618
  B981  29 10     AND #$10                      ; 03981 ×11618
  B983  C9 10     CMP #$10                      ; 03983 ×11618
  B985  4C F8 AA  JMP loc_B0_AAF8               ; 03985 ×11618
  B988  .byte 20 1D B9 BD ED 04 38 7D 1B 04 9D 1B 04 C9 C0 F0   ; 03988
  B998  .byte 04 C9 E6 D0 08 BD ED 04 49 FE 9D ED 04 20 F1 AA   ; 03998
  B9A8  .byte 4C 05 B7                                          ; 039A8

loc_B0_B9AB:                    ; from 039be
  B9AB  4C 80 D0  JMP sub_B0_D080               ; 039AB ×36

jt_B0_B9AE:                    ; from 008ec
  B9AE  A5 D5     LDA $D5                       ; 039AE ×1764
  B9B0  20 20 B9  JSR sub_B0_B920               ; 039B0 ×1764
  B9B3  20 4C 8F  JSR sub_B0_8F4C               ; 039B3 ×1764
  B9B6  A9 D0     LDA #$D0                      ; 039B6 ×1764
  B9B8  20 7A 8E  JSR sub_B0_8E7A               ; 039B8 ×1764
  B9BB  DE DE 04  DEC $04DE,X                   ; 039BB ×1764
  B9BE  F0 EB     BEQ loc_B0_B9AB               ; 039BE ×1764
  B9C0  60        RTS                           ; 039C0 ×1728
  B9C1  .byte BD DE 04 D0 14 BD FD 03 9D DE 04 BD 39 04 9D ED   ; 039C1
  B9D1  .byte 04 20 E9 96 A9 E8 20 EE 8E BD ED 04 49 FF 38 E5   ; 039D1
  B9E1  .byte 89 9D 93 04 C9 40 B0 09 BD 74 05 D0 04 A9 1E 85   ; 039E1
  B9F1  .byte B2 A9 5D 9D D0 03 BD 74 05 F0 48 BD A2 04 30 AA   ; 039F1
  BA01  .byte BD DE 04 FD FD 03 85 15 69 32 C9 64 B0 0F DE DE   ; 03A01
  BA11  .byte 04 06 15 90 16 FE DE 04 FE DE 04 B0 0E A9 30 06   ; 03A11
  BA21  .byte 15 90 02 A9 CF 7D FD 03 9D DE 04 BD 83 05 18 7D   ; 03A21
  BA31  .byte 39 04 9D ED 04 A9 FC 20 6A D0 20 4C 8F 20 52 8E   ; 03A31
  BA41  .byte 4C 31 96 BD 47 05 F0 32 BD ED 04 38 FD 39 04 30   ; 03A41
  BA51  .byte 09 C9 40 90 05 A9 01 9D C0 04 A9 1E 85 B2 FE D0   ; 03A51
  BA61  .byte 03 DE 47 05 BD DE 04 38 FD FD 03 29 80 9D 56 05   ; 03A61
  BA71  .byte BD 47 05 C9 24 90 BE 4C 41 BA A0 01 84 16 B9 11   ; 03A71
  BA81  .byte 00 30 43 A9 14 20 4D 8D F0 13 20 43 87 29 0F 1D   ; 03A81
  BA91  .byte FC 04 D0 32 A5 26 29 02 09 54 A8 D0 07 BD FC 04   ; 03A91
  BAA1  .byte D0 24 A0 4C BD A2 04 29 03 D0 0C A5 B2 C9 14 90   ; 03AA1
  BAB1  .byte 15 C0 4C D0 02 A0 42 98 20 DD DA BD A2 04 29 BF   ; 03AB1
  BAC1  .byte 9D A2 04 20 E9 96 A4 16 88 10 B1 A5 1B E9 10 A5   ; 03AC1
  BAD1  .byte 8D E9 00 10 0A BD 39 04 FD ED 04 A0 01 D0 09 A0   ; 03AD1
  BAE1  .byte FF BD ED 04 38 FD 39 04 C9 70 B0 04 C9 1C B0 05   ; 03AE1
  BAF1  .byte 98 18 20 EE 8E BD FC 04 F0 1C A9 01 20 F6 DA BD   ; 03AF1
  BB01  .byte FC 04 D0 0A BD 38 05 F0 05 A9 44 20 DD DA A9 FF   ; 03B01
  BB11  .byte 20 6A D0 20 4C 8F BD ED 04 FD 39 04 9D 83 05 60   ; 03B11
  BB21  .byte 4C 80 D0 BD A2 04 30 F8 A9 98 20 FD B7 A9 5A 9D   ; 03B21
  BB31  .byte D0 03 9D ED 04 A9 00 9D A2 04 BD 1B 04 29 07 D0   ; 03B31
  BB41  .byte 0C BD 83 05 C9 E0 F0 0F FE 83 05 D0 0A BD FD 03   ; 03B41
  BB51  .byte C9 28 F0 03 DE FD 03 BD A1 05 6A BD 1A 05 90 13   ; 03B51
  BB61  .byte E9 0C 9D 1A 05 E9 0C DD FD 03 B0 19 BD FD 03 69   ; 03B61
  BB71  .byte 0C D0 0C 69 0C DD 83 05 90 08 BD 83 05 E9 08 FE   ; 03B71
  BB81  .byte A1 05 9D 1A 05 A0 01 B9 11 00 30 23 B9 74 05 D0   ; 03B81
  BB91  .byte 1E B9 47 05 C9 10 B0 17 A9 10 20 4D 8D D0 10 B9   ; 03B91
  BBA1  .byte FD 03 DD FD 03 90 08 DD 83 05 B0 03 20 B4 BB 88   ; 03BA1
  BBB1  .byte 10 D5 60                                          ; 03BB1

loc_B0_BBB4:                    ; from 06eb3
  BBB4  A9 38     LDA #$38                      ; 03BB4 ×53
  BBB6  99 47 05  STA $0547,Y                   ; 03BB6 ×53
  BBB9  99 C3 05  STA $05C3,Y                   ; 03BB9 ×53
  BBBC  E6 D0     INC $D0                       ; 03BBC ×53
  BBBE  B9 1A 05  LDA $051A,Y                   ; 03BBE ×53
  BBC1  38        SEC                           ; 03BC1 ×53
  BBC2  E9 18     SBC #$18                      ; 03BC2 ×53
  BBC4  B0 19     BCS loc_B0_BBDF               ; 03BC4 ×53
  BBC6  A9 81     LDA #$81                      ; 03BC6 inferred, not run
  BBC8  99 74 05  STA $0574,Y                   ; 03BC8 inferred, not run
  BBCB  B9 B1 04  LDA $04B1,Y                   ; 03BCB inferred, not run
  BBCE  29 20     AND #$20                      ; 03BCE inferred, not run
  BBD0  F0 0D     BEQ loc_B0_BBDF               ; 03BD0 inferred, not run
  BBD2  B9 B1 04  LDA $04B1,Y                   ; 03BD2 inferred, not run
  BBD5  29 DF     AND #$DF                      ; 03BD5 inferred, not run
  BBD7  99 B1 04  STA $04B1,Y                   ; 03BD7 inferred, not run
  BBDA  20 D0 95  JSR $95D0                     ; 03BDA inferred, not run
  BBDD  A9 00     LDA #$00                      ; 03BDD inferred, not run

loc_B0_BBDF:                    ; from 03bc4
  BBDF  99 1A 05  STA $051A,Y                   ; 03BDF ×53
  BBE2  A9 00     LDA #$00                      ; 03BE2 ×53
  BBE4  99 FC 04  STA $04FC,Y                   ; 03BE4 ×53
  BBE7  99 0B 05  STA $050B,Y                   ; 03BE7 ×53
  BBEA  E6 D0     INC $D0                       ; 03BEA ×53
  BBEC  B9 74 05  LDA $0574,Y                   ; 03BEC ×53
  BBEF  10 19     BPL loc_B0_BC0A               ; 03BEF ×53
  BBF1  A5 10     LDA $10                       ; 03BF1 inferred, not run
  BBF3  C9 09     CMP #$09                      ; 03BF3 inferred, not run
  BBF5  F0 0C     BEQ $BC03                     ; 03BF5 inferred, not run
  BBF7  C9 0A     CMP #$0A                      ; 03BF7 inferred, not run
  BBF9  F0 08     BEQ $BC03                     ; 03BF9 inferred, not run
  BBFB  C9 0B     CMP #$0B                      ; 03BFB inferred, not run
  BBFD  F0 04     BEQ $BC03                     ; 03BFD inferred, not run
  BBFF  C9 07     CMP #$07                      ; 03BFF inferred, not run
  BC01  D0 07     BNE loc_B0_BC0A               ; 03C01 inferred, not run
  BC03  98        TYA                           ; 03C03 inferred, not run
  BC04  AA        TAX                           ; 03C04 inferred, not run
  BC05  A9 4B     LDA #$4B                      ; 03C05 inferred, not run
  BC07  20 F9 FB  JSR sub_B0_FBF9               ; 03C07 inferred, not run

loc_B0_BC0A:                    ; from 03bef
  BC0A  A9 16     LDA #$16                      ; 03C0A ×53
  BC0C  4C F6 B7  JMP sub_B0_B7F6               ; 03C0C ×53
  BC0F  .byte 4C 80 D0 BD 65 05 D0 2B A0 01 84 DE AD B2 04 29   ; 03C0F
  BC1F  .byte 20 F0 01 88 A9 03 18 20 FB 8A 30 12 B9 B1 04 29   ; 03C1F
  BC2F  .byte 20 D0 0B A9 20 19 B1 04 99 B1 04                  ; 03C2F

loc_B0_BC3A:                    ; from 03c90
  BC3A  4C 80 D0  JMP sub_B0_D080               ; 03C3A ×52
  BC3D  .byte BD A2 04 30 CD A9 F0 20 7A 8E A9 FC 20 6A D0 A9   ; 03C3D
  BC4D  .byte 5F 9D D0 03 20 4C 8F 4C AD E4                     ; 03C4D

sub_B0_BC57:                    ; from 05d19 037f1
  BC57  84 91     STY $91                       ; 03C57 ×52
  BC59  86 15     STX $15                       ; 03C59 ×52
  BC5B  48        PHA                           ; 03C5B ×52
  BC5C  20 58 FE  JSR sub_B0_FE58               ; 03C5C ×52
  BC5F  D0 19     BNE $BC7A                     ; 03C5F ×52
  BC61  A4 15     LDY $15                       ; 03C61 ×52
  BC63  20 6D B1  JSR sub_B0_B16D               ; 03C63 ×52
  BC66  A9 30     LDA #$30                      ; 03C66 ×52
  BC68  9D C1 03  STA $03C1,X                   ; 03C68 ×52
  BC6B  A9 40     LDA #$40                      ; 03C6B ×52
  BC6D  9D DE 04  STA $04DE,X                   ; 03C6D ×52
  BC70  A9 00     LDA #$00                      ; 03C70 ×52
  BC72  9D A2 04  STA $04A2,X                   ; 03C72 ×52
  BC75  68        PLA                           ; 03C75 ×52
  BC76  9D D0 03  STA $03D0,X                   ; 03C76 ×52
  BC79  48        PHA                           ; 03C79 ×52
  BC7A  A4 91     LDY $91                       ; 03C7A ×52
  BC7C  68        PLA                           ; 03C7C ×52
  BC7D  20 CF BC  JSR sub_B0_BCCF               ; 03C7D ×52
  BC80  A4 15     LDY $15                       ; 03C80 ×52
  BC82  A6 82     LDX $82                       ; 03C82 ×52
  BC84  60        RTS                           ; 03C84 ×52

loc_B0_BC85:                    ; from 03c9b
  BC85  FE 39 04  INC $0439,X                   ; 03C85 ×3328
  BC88  D0 03     BNE loc_B0_BC8D               ; 03C88 ×3328
  BC8A  FE 2A 04  INC $042A,X                   ; 03C8A ×0

loc_B0_BC8D:                    ; from 03c88
  BC8D  DE DE 04  DEC $04DE,X                   ; 03C8D ×3328
  BC90  F0 A8     BEQ loc_B0_BC3A               ; 03C90 ×3328
  BC92  60        RTS                           ; 03C92 ×3276

jt_B0_BC93:                    ; from 008ec
  BC93  BD A2 04  LDA $04A2,X                   ; 03C93 ×3328
  BC96  30 A2     BMI loc_B0_BC3A               ; 03C96 ×3328
  BC98  BD 83 05  LDA $0583,X                   ; 03C98 ×3328
  BC9B  F0 E8     BEQ loc_B0_BC85               ; 03C9B ×3328
  BC9D  9D D0 03  STA $03D0,X                   ; 03C9D inferred, not run
  BCA0  20 AD E4  JSR sub_B0_E4AD               ; 03CA0 inferred, not run
  BCA3  A9 5E     LDA #$5E                      ; 03CA3 inferred, not run
  BCA5  9D FC 04  STA $04FC,X                   ; 03CA5 inferred, not run
  BCA8  20 39 F7  JSR sub_B0_F739               ; 03CA8 inferred, not run
  BCAB  30 1F     BMI $BCCC                     ; 03CAB inferred, not run
  BCAD  A9 00     LDA #$00                      ; 03CAD inferred, not run
  BCAF  9D 83 05  STA $0583,X                   ; 03CAF inferred, not run
  BCB2  9D 75 04  STA $0475,X                   ; 03CB2 inferred, not run
  BCB5  A9 50     LDA #$50                      ; 03CB5 inferred, not run
  BCB7  9D DE 04  STA $04DE,X                   ; 03CB7 inferred, not run
  BCBA  86 18     STX $18                       ; 03CBA inferred, not run
  BCBC  BD D0 03  LDA $03D0,X                   ; 03CBC inferred, not run
  BCBF  4C C3 BC  JMP $BCC3                     ; 03CBF inferred, not run
  BCC2  60        RTS                           ; 03CC2 inferred, not run
  BCC3  84 82     STY $82                       ; 03CC3 inferred, not run
  BCC5  20 CD BC  JSR $BCCD                     ; 03CC5 inferred, not run
  BCC8  A6 18     LDX $18                       ; 03CC8 inferred, not run
  BCCA  86 82     STX $82                       ; 03CCA inferred, not run
  BCCC  60        RTS                           ; 03CCC inferred, not run
  BCCD  A4 82     LDY $82                       ; 03CCD inferred, not run

sub_B0_BCCF:                    ; from 03238 03c7d
  BCCF  84 92     STY $92                       ; 03CCF ×149
  BCD1  E6 D0     INC $D0                       ; 03CD1 ×149
  BCD3  C9 09     CMP #$09                      ; 03CD3 ×149
  BCD5  90 11     BCC loc_B0_BCE8               ; 03CD5 ×149
  BCD7  A4 92     LDY $92                       ; 03CD7 inferred, not run
  BCD9  B9 11 00  LDA $0011,Y                   ; 03CD9 inferred, not run
  BCDC  69 00     ADC #$00                      ; 03CDC inferred, not run
  BCDE  30 E2     BMI $BCC2                     ; 03CDE inferred, not run
  BCE0  99 11 00  STA $0011,Y                   ; 03CE0 inferred, not run
  BCE3  A9 7B     LDA #$7B                      ; 03CE3 inferred, not run
  BCE5  4C F6 B7  JMP sub_B0_B7F6               ; 03CE5 inferred, not run

loc_B0_BCE8:                    ; from 03cd5
  BCE8  0A        ASL A                         ; 03CE8 ×149
  BCE9  85 91     STA $91                       ; 03CE9 ×149
  BCEB  0A        ASL A                         ; 03CEB ×149
  BCEC  65 91     ADC $91                       ; 03CEC ×149
  BCEE  69 05     ADC #$05                      ; 03CEE ×149
  BCF0  AA        TAX                           ; 03CF0 ×149
  BCF1  A9 06     LDA #$06                      ; 03CF1 ×149
  BCF3  85 91     STA $91                       ; 03CF3 ×149
  BCF5  C0 01     CPY #$01                      ; 03CF5 ×149
  BCF7  A0 05     LDY #$05                      ; 03CF7 ×149
  BCF9  90 03     BCC loc_B0_BCFE               ; 03CF9 ×149
  BCFB  18        CLC                           ; 03CFB inferred, not run
  BCFC  A0 0B     LDY #$0B                      ; 03CFC inferred, not run

loc_B0_BCFE:                    ; from 03cf9
  BCFE  B9 EF 05  LDA $05EF,Y                   ; 03CFE ×149
  BD01  85 90     STA $90                       ; 03D01 ×149

loc_B0_BD03:                    ; from 03d16
  BD03  BD 36 BD  LDA $BD36,X                   ; 03D03 ×894
  BD06  79 F4 05  ADC $05F4,Y                   ; 03D06 ×894
  BD09  C9 0A     CMP #$0A                      ; 03D09 ×894
  BD0B  90 02     BCC loc_B0_BD0F               ; 03D0B ×894
  BD0D  E9 0A     SBC #$0A                      ; 03D0D ×19

loc_B0_BD0F:                    ; from 03d0b
  BD0F  99 F4 05  STA $05F4,Y                   ; 03D0F ×894
  BD12  CA        DEX                           ; 03D12 ×894
  BD13  88        DEY                           ; 03D13 ×894
  BD14  C6 91     DEC $91                       ; 03D14 ×894
  BD16  D0 EB     BNE loc_B0_BD03               ; 03D16 ×894
  BD18  C5 90     CMP $90                       ; 03D18 ×149
  BD1A  F0 19     BEQ loc_B0_BD35               ; 03D1A ×149
  BD1C  C9 01     CMP #$01                      ; 03D1C inferred, not run
  BD1E  B0 B7     BCS $BCD7                     ; 03D1E inferred, not run
  BD20  C8        INY                           ; 03D20 inferred, not run
  BD21  A9 09     LDA #$09                      ; 03D21 inferred, not run
  BD23  99 F4 05  STA $05F4,Y                   ; 03D23 inferred, not run
  BD26  99 F5 05  STA $05F5,Y                   ; 03D26 inferred, not run
  BD29  99 F6 05  STA $05F6,Y                   ; 03D29 inferred, not run
  BD2C  99 F7 05  STA $05F7,Y                   ; 03D2C inferred, not run
  BD2F  99 F8 05  STA $05F8,Y                   ; 03D2F inferred, not run
  BD32  99 F9 05  STA $05F9,Y                   ; 03D32 inferred, not run

loc_B0_BD35:                    ; from 03d1a
  BD35  60        RTS                           ; 03D35 ×149
  BD36  .byte 00 00 00 01 00 00                                 ; 03D36 data, read by 03d03
  BD3C  .byte 00 00 00 02 00 00                                 ; 03D3C
  BD42  .byte 00 00 00 05 00 00                                 ; 03D42 data, read by 03d03
  BD48  .byte 00 00 00 07 05 00 00 00 01 00 00 00               ; 03D48
  BD54  .byte 00 00 02 00 00 00 00 00 05 00 00 00               ; 03D54 data, read by 03d03
  BD60  .byte 00 00 07 05 00 00 00 01 00 00 00 00 02 FE 03 FD   ; 03D60
  BD70  .byte A9 FE 20 6A D0 20 4C 8F A9 E8 20 7A 8E 20 AD E4   ; 03D70
  BD80  .byte BD 74 05 F0 0A BD A2 04 10 23 68 68 4C 80 D0 20   ; 03D80
  BD90  .byte 59 9E BD 47 05 D0 16 9D 65 05 BC C1 03 C0 33 F0   ; 03D90
  BDA0  .byte 0C 9D 83 05 9D A1 05 9D C0 04 9D CF 04 60 A9 1E   ; 03DA0
  BDB0  .byte 85 B2 BD 47 05 F0 0F 20 70 BD A9 60 BC 65 05 D0   ; 03DB0
  BDC0  .byte 02 A9 61 4C 5E BE BD 83 05 D0 40 20 E9 E2 FE 83   ; 03DC0
  BDD0  .byte 05 A9 04 20 01 8D A5 8F 49 80 29 80 9D 56 05 A9   ; 03DD0
  BDE0  .byte 01 20 4D 8D A0 00 A5 8D 2A B0 01 C8 BD 1A 05 C9   ; 03DE0
  BDF0  .byte 30 90 02 C8 C8 B9 6C BD 9D DE 04 A9 80 C0 02 90   ; 03DF0
  BE00  .byte 02 A9 C0 9D 65 05 A9 00 9D A2 04 BD FC 04 F0 11   ; 03E00
  BE10  .byte 20 76 B9 A9 03 20 F6 DA BD FC 04 D0 44 DE 83 05   ; 03E10
  BE20  .byte 60 BD 65 05 D0 03 20 76 B9 BC 92 05 B9 74 05 30   ; 03E20
  BE30  .byte EC 20 4C 8F 20 AD E4 BD DE 04 18 20 EE 8E BC 92   ; 03E30
  BE40  .byte 05 A9 02 20 01 8D A5 8F 29 80 4A 49 40 9D A2 04   ; 03E40
  BE50  .byte A9 04 20 4D 8D D0 05 A9 4A 20 DD DA A9 61 9D D0   ; 03E50
  BE60  .byte 03 60                                             ; 03E60

sub_B0_BE62:                    ; from 03f43 03f89
  BE62  BC 92 05  LDY $0592,X                   ; 03E62 ×12
  BE65  20 01 8D  JSR sub_B0_8D01               ; 03E65 ×12
  BE68  A5 8F     LDA $8F                       ; 03E68 ×12
  BE6A  6A        ROR A                         ; 03E6A ×12
  BE6B  6A        ROR A                         ; 03E6B ×12
  BE6C  29 80     AND #$80                      ; 03E6C ×12
  BE6E  49 80     EOR #$80                      ; 03E6E ×12
  BE70  9D 56 05  STA $0556,X                   ; 03E70 ×12
  BE73  60        RTS                           ; 03E73 ×12

loc_B0_BE74:                    ; from 03ee6
  BE74  20 4C 8F  JSR sub_B0_8F4C               ; 03E74 ×524
  BE77  20 A7 E1  JSR sub_B0_E1A7               ; 03E77 ×524
  BE7A  BD 74 05  LDA $0574,X                   ; 03E7A ×524
  BE7D  F0 08     BEQ loc_B0_BE87               ; 03E7D ×524
  BE7F  BD A2 04  LDA $04A2,X                   ; 03E7F ×88
  BE82  30 42     BMI loc_B0_BEC6               ; 03E82 ×88
  BE84  FE 47 05  INC $0547,X                   ; 03E84 ×87

loc_B0_BE87:                    ; from 03e7d
  BE87  A0 04     LDY #$04                      ; 03E87 ×523
  BE89  BD 47 05  LDA $0547,X                   ; 03E89 ×523
  BE8C  F0 27     BEQ loc_B0_BEB5               ; 03E8C ×523
  BE8E  BC D0 03  LDY $03D0,X                   ; 03E8E ×523
  BE91  BD B1 04  LDA $04B1,X                   ; 03E91 ×523
  BE94  29 40     AND #$40                      ; 03E94 ×523
  BE96  F0 1D     BEQ loc_B0_BEB5               ; 03E96 ×523
  BE98  BD 47 05  LDA $0547,X                   ; 03E98 ×217
  BE9B  C9 38     CMP #$38                      ; 03E9B ×217
  BE9D  B0 16     BCS loc_B0_BEB5               ; 03E9D ×217
  BE9F  A0 04     LDY #$04                      ; 03E9F ×2
  BEA1  C9 40     CMP #$40                      ; 03EA1 ×2
  BEA3  B0 10     BCS loc_B0_BEB5               ; 03EA3 ×2
  BEA5  A9 FE     LDA #$FE                      ; 03EA5 ×2
  BEA7  9D C0 04  STA $04C0,X                   ; 03EA7 ×2
  BEAA  A9 01     LDA #$01                      ; 03EAA ×2
  BEAC  9D 47 05  STA $0547,X                   ; 03EAC ×2
  BEAF  20 59 9E  JSR sub_B0_9E59               ; 03EAF ×2
  BEB2  4C 75 BF  JMP loc_B0_BF75               ; 03EB2 ×2

loc_B0_BEB5:                    ; from 03e96 03e9d
  BEB5  A5 0C     LDA $0C                       ; 03EB5 ×521
  BEB7  29 02     AND #$02                      ; 03EB7 ×521
  BEB9  4A        LSR A                         ; 03EB9 ×521
  BEBA  69 B7     ADC #$B7                      ; 03EBA ×521
  BEBC  C0 04     CPY #$04                      ; 03EBC ×521
  BEBE  F0 02     BEQ loc_B0_BEC2               ; 03EBE ×521
  BEC0  A9 BB     LDA #$BB                      ; 03EC0 ×305

loc_B0_BEC2:                    ; from 03ebe
  BEC2  9D D0 03  STA $03D0,X                   ; 03EC2 ×521
  BEC5  60        RTS                           ; 03EC5 ×521

loc_B0_BEC6:                    ; from 03e82
  BEC6  4C 80 D0  JMP sub_B0_D080               ; 03EC6 ×1
  BEC9  20 19 F3  JSR $F319                     ; 03EC9 inferred, not run
  BECC  A6 82     LDX $82                       ; 03ECC inferred, not run
  BECE  A9 D8     LDA #$D8                      ; 03ECE inferred, not run
  BED0  9D 1B 04  STA $041B,X                   ; 03ED0 inferred, not run
  BED3  FE D0 03  INC $03D0,X                   ; 03ED3 inferred, not run
  BED6  A9 00     LDA #$00                      ; 03ED6 inferred, not run
  BED8  9D 65 05  STA $0565,X                   ; 03ED8 inferred, not run
  BEDB  20 DD DA  JSR sub_B0_DADD               ; 03EDB inferred, not run
  BEDE  A9 C0     LDA #$C0                      ; 03EDE inferred, not run
  BEE0  9D DE 04  STA $04DE,X                   ; 03EE0 inferred, not run

loc_B0_BEE3:                    ; from 03ef6 03efd
  BEE3  4C E3 BF  JMP loc_B0_BFE3               ; 03EE3 ×165

loc_B0_BEE6:                    ; from 03f25
  BEE6  4C 74 BE  JMP loc_B0_BE74               ; 03EE6 ×524

loc_B0_BEE9:                    ; from 03f49 03f9d
  BEE9  20 66 CF  JSR sub_B0_CF66               ; 03EE9 ×165
  BEEC  A9 03     LDA #$03                      ; 03EEC ×165
  BEEE  20 F6 DA  JSR sub_B0_DAF6               ; 03EEE ×165
  BEF1  BD 0B 05  LDA $050B,X                   ; 03EF1 ×165
  BEF4  C9 08     CMP #$08                      ; 03EF4 ×165
  BEF6  90 EB     BCC loc_B0_BEE3               ; 03EF6 ×165
  BEF8  BD D0 03  LDA $03D0,X                   ; 03EF8 ×77
  BEFB  49 B9     EOR #$B9                      ; 03EFB ×77
  BEFD  D0 E4     BNE loc_B0_BEE3               ; 03EFD ×77
  BEFF  85 DE     STA $DE                       ; 03EFF inferred, not run
  BF01  A0 01     LDY #$01                      ; 03F01 inferred, not run
  BF03  A9 03     LDA #$03                      ; 03F03 inferred, not run
  BF05  18        CLC                           ; 03F05 inferred, not run
  BF06  20 FB 8A  JSR sub_B0_8AFB               ; 03F06 inferred, not run
  BF09  10 BE     BPL $BEC9                     ; 03F09 inferred, not run
  BF0B  4C E3 BF  JMP loc_B0_BFE3               ; 03F0B inferred, not run

jt_B0_BF0E:                    ; from 008ec
  BF0E  A9 05     LDA #$05                      ; 03F0E ×841
  BF10  85 B2     STA $B2                       ; 03F10 ×841
  BF12  BD 1B 04  LDA $041B,X                   ; 03F12 ×841
  BF15  C9 D7     CMP #$D7                      ; 03F15 ×841
  BF17  D0 09     BNE loc_B0_BF22               ; 03F17 ×841
  BF19  FE 1B 04  INC $041B,X                   ; 03F19 inferred, not run
  BF1C  20 E9 E2  JSR sub_B0_E2E9               ; 03F1C inferred, not run
  BF1F  4C 75 BF  JMP loc_B0_BF75               ; 03F1F inferred, not run

loc_B0_BF22:                    ; from 03f17
  BF22  BD 47 05  LDA $0547,X                   ; 03F22 ×841
  BF25  D0 BF     BNE loc_B0_BEE6               ; 03F25 ×841
  BF27  BD D0 03  LDA $03D0,X                   ; 03F27 ×317
  BF2A  F0 05     BEQ loc_B0_BF31               ; 03F2A ×317
  BF2C  8A        TXA                           ; 03F2C ×315
  BF2D  45 25     EOR $25                       ; 03F2D ×315
  BF2F  D0 03     BNE loc_B0_BF34               ; 03F2F ×315

loc_B0_BF31:                    ; from 03f2a
  BF31  20 E9 E2  JSR sub_B0_E2E9               ; 03F31 ×6

loc_B0_BF34:                    ; from 03f2f
  BF34  8A        TXA                           ; 03F34 ×317
  BF35  45 0B     EOR $0B                       ; 03F35 ×317
  BF37  29 07     AND #$07                      ; 03F37 ×317
  BF39  1D FC 04  ORA $04FC,X                   ; 03F39 ×317
  BF3C  D0 08     BNE loc_B0_BF46               ; 03F3C ×317
  BF3E  BD 65 05  LDA $0565,X                   ; 03F3E ×20
  BF41  30 03     BMI loc_B0_BF46               ; 03F41 ×20
  BF43  20 62 BE  JSR sub_B0_BE62               ; 03F43 ×7

loc_B0_BF46:                    ; from 03f3c 03f41
  BF46  BD FC 04  LDA $04FC,X                   ; 03F46 ×317
  BF49  D0 9E     BNE loc_B0_BEE9               ; 03F49 ×317
  BF4B  BD 1B 04  LDA $041B,X                   ; 03F4B ×157
  BF4E  C9 D6     CMP #$D6                      ; 03F4E ×157
  BF50  F0 23     BEQ loc_B0_BF75               ; 03F50 ×157
  BF52  BD DE 04  LDA $04DE,X                   ; 03F52 ×157
  BF55  D0 74     BNE loc_B0_BFCB               ; 03F55 ×157
  BF57  BD A2 04  LDA $04A2,X                   ; 03F57 ×17
  BF5A  29 03     AND #$03                      ; 03F5A ×17
  BF5C  C9 03     CMP #$03                      ; 03F5C ×17
  BF5E  F0 0C     BEQ $BF6C                     ; 03F5E ×17
  BF60  BC 92 05  LDY $0592,X                   ; 03F60 ×17
  BF63  A9 30     LDA #$30                      ; 03F63 ×17
  BF65  20 01 8D  JSR sub_B0_8D01               ; 03F65 ×17
  BF68  D0 36     BNE loc_B0_BFA0               ; 03F68 ×17
  BF6A  F0 09     BEQ loc_B0_BF75               ; 03F6A ×3
  BF6C  A5 25     LDA $25                       ; 03F6C inferred, not run
  BF6E  7D FD 03  ADC $03FD,X                   ; 03F6E inferred, not run
  BF71  29 07     AND #$07                      ; 03F71 inferred, not run
  BF73  D0 2B     BNE loc_B0_BFA0               ; 03F73 inferred, not run

loc_B0_BF75:                    ; from 03f6a 03eb2
  BF75  BC 92 05  LDY $0592,X                   ; 03F75 ×5
  BF78  B9 B1 04  LDA $04B1,Y                   ; 03F78 ×5
  BF7B  29 40     AND #$40                      ; 03F7B ×5
  BF7D  F0 0A     BEQ loc_B0_BF89               ; 03F7D ×5
  BF7F  20 E9 E2  JSR sub_B0_E2E9               ; 03F7F ×0
  BF82  A9 12     LDA #$12                      ; 03F82 ×0
  BF84  9D 83 05  STA $0583,X                   ; 03F84 ×0
  BF87  D0 17     BNE loc_B0_BFA0               ; 03F87 ×0

loc_B0_BF89:                    ; from 03f7d
  BF89  20 62 BE  JSR sub_B0_BE62               ; 03F89 ×5
  BF8C  A0 6A     LDY #$6A                      ; 03F8C ×5
  BF8E  BD A2 04  LDA $04A2,X                   ; 03F8E ×5
  BF91  29 03     AND #$03                      ; 03F91 ×5
  BF93  C9 03     CMP #$03                      ; 03F93 ×5
  BF95  F0 02     BEQ $BF99                     ; 03F95 ×5
  BF97  A0 6C     LDY #$6C                      ; 03F97 ×5
  BF99  98        TYA                           ; 03F99 ×5
  BF9A  20 DD DA  JSR sub_B0_DADD               ; 03F9A ×5
  BF9D  4C E9 BE  JMP loc_B0_BEE9               ; 03F9D ×5

loc_B0_BFA0:                    ; from 03f68
  BFA0  BC 83 05  LDY $0583,X                   ; 03FA0 ×14
  BFA3  B9 F1 BF  LDA $BFF1,Y                   ; 03FA3 ×14
  BFA6  D0 07     BNE loc_B0_BFAF               ; 03FA6 ×14
  BFA8  B9 F2 BF  LDA $BFF2,Y                   ; 03FA8 ×2
  BFAB  A8        TAY                           ; 03FAB ×2
  BFAC  B9 F1 BF  LDA $BFF1,Y                   ; 03FAC ×2

loc_B0_BFAF:                    ; from 03fa6
  BFAF  9D D0 03  STA $03D0,X                   ; 03FAF ×14
  BFB2  B9 F2 BF  LDA $BFF2,Y                   ; 03FB2 ×14
  BFB5  9D DE 04  STA $04DE,X                   ; 03FB5 ×14
  BFB8  B9 F3 BF  LDA $BFF3,Y                   ; 03FB8 ×14
  BFBB  9D C0 04  STA $04C0,X                   ; 03FBB ×14
  BFBE  B9 F4 BF  LDA $BFF4,Y                   ; 03FBE ×14
  BFC1  9D 65 05  STA $0565,X                   ; 03FC1 ×14
  BFC4  98        TYA                           ; 03FC4 ×14
  BFC5  18        CLC                           ; 03FC5 ×14
  BFC6  69 04     ADC #$04                      ; 03FC6 ×14
  BFC8  9D 83 05  STA $0583,X                   ; 03FC8 ×14

loc_B0_BFCB:                    ; from 03f55
  BFCB  DE DE 04  DEC $04DE,X                   ; 03FCB ×154
  BFCE  BD 65 05  LDA $0565,X                   ; 03FCE ×154
  BFD1  C9 01     CMP #$01                      ; 03FD1 ×154
  BFD3  D0 0E     BNE loc_B0_BFE3               ; 03FD3 ×154
  BFD5  BD DE 04  LDA $04DE,X                   ; 03FD5 inferred, not run
  BFD8  C9 30     CMP #$30                      ; 03FD8 inferred, not run
  BFDA  D0 07     BNE loc_B0_BFE3               ; 03FDA inferred, not run
  BFDC  A5 25     LDA $25                       ; 03FDC inferred, not run
  BFDE  29 80     AND #$80                      ; 03FDE inferred, not run
  BFE0  9D 56 05  STA $0556,X                   ; 03FE0 inferred, not run

loc_B0_BFE3:                    ; from 03ee3 03fd3
  BFE3  20 4C 8F  JSR sub_B0_8F4C               ; 03FE3 ×319
  BFE6  A9 C0     LDA #$C0                      ; 03FE6 ×319
  BFE8  20 7A 8E  JSR sub_B0_8E7A               ; 03FE8 ×319
  BFEB  20 AD E4  JSR sub_B0_E4AD               ; 03FEB ×319
  BFEE  4C 66 CF  JMP sub_B0_CF66               ; 03FEE ×319
  BFF1  .byte B7 06 00 40 B8 10 02 C0 B7 06 00 40 B6 10 02 C0   ; 03FF1 data, read by 03fa3 03fac 03fb2 03fb8 (+1)
  C001  .byte 00 00                                             ; 04001 data, read by 03fa3 03fa8
  C003  .byte B7 06 00 00 00 00 BD A1 05 D0 07 A9 6A A2 0C 20   ; 04003
  C013  .byte 4A 91 A9 EC 20 FC 92 FE A1 05 A0 40 A5 88 C9 DA   ; 04013
  C023  .byte 90 02 A0 30 84 15 BD A1 05 C5 15 B0 09 29 08 F0   ; 04023
  C033  .byte 0F A9 00 4C FC 92 A9 FF 20 FC 92 A9 CC 9D 1B 04   ; 04033
  C043  .byte 60 BD 92 05 C9 01 D0 05 A9 8B 20 48 91 BD A2 04   ; 04043
  C053  .byte 30 6F BD 1B 04 C9 CC F0 3B C9 CA F0 A9 C9 CB D0   ; 04053
  C063  .byte 0B BD 84 04 C9 C0 A9 FE 90 04 B0 28 A9 02 A4 D5   ; 04063
  C073  .byte C0 08 90 01 0A 85 15 BD 83 05 F0 18 38 E5 15 9D   ; 04073
  C083  .byte 83 05 A5 15 C9 80 6A 7D 39 04 9D 39 04 A9 98 A2   ; 04083
  C093  .byte 0F 20 4A 91 FE 92 05 20 ED C9 F0 24 A5 E4 D0 20   ; 04093
  C0A3  .byte B9 74 05 30 1B A9 10 20 01 8D D0 14 B9 39 04 FD   ; 040A3
  C0B3  .byte 39 04 69 10 B0 05 DD 83 05 90 05 A2 23 20 D9 B8   ; 040B3
  C0C3  .byte 60 4C 80 D0 A5 10 C9 0C F0 0A A5 88 C9 48 F0 F1   ; 040C3
  C0D3  .byte C9 80 F0 ED DE 83 05 D0 E7 BD EE 03 9D 83 05 FE   ; 040D3
  C0E3  .byte A1 05 A5 10 C9 0C D0 26 A5 88 C9 58 B0 7D C9 2A   ; 040E3
  C0F3  .byte F0 79 C9 2C F0 75 C9 2B F0 71 C9 3A F0 6D C9 39   ; 040F3
  C103  .byte F0 69 C9 3E F0 65 C9 4E F0 61 C9 4D F0 5D 20 58   ; 04103
  C113  .byte FE A4 82 A9 69 9D C1 03 A9 00 9D 0C 04 9D 2A 04   ; 04113
  C123  .byte 9D A2 04 A9 CC 9D 1B 04 A5 87 18 69 FB 9D FD 03   ; 04123
  C133  .byte A5 88 69 00 9D EE 03 B9 0C 04 D0 0E 86 18 A9 92   ; 04133
  C143  .byte A2 0C 20 E1 84 A6 18 4C 9C C1 C9 02 D0 1E 20 43   ; 04143
  C153  .byte 87 29 3F 69 A8 9D 1B 04 A9 50 9D 39 04 A9 78 9D   ; 04153
  C163  .byte C1 03 A5 26 29 7F 69 30 9D 65 05 60 20 43 87 29   ; 04163
  C173  .byte 1F 18 69 01 9D 83 05 B9 A1 05 29 08 C9 04 A9 30   ; 04173
  C183  .byte 90 02 A9 D0 9D DE 04 FE C1 03 B9 A1 05 29 08 C9   ; 04183
  C193  .byte 04 A9 14 90 17 A9 B8 D0 13 A9 01 9D 83 05 20 43   ; 04193
  C1A3  .byte 87 29 7F 85 15 20 43 87 29 3F 65 15 9D 39 04 60   ; 041A3
  C1B3  .byte 4C 80 D0 A5 E4 F0 05 A9 08 9D 83 05 BD A2 04 30   ; 041B3
  C1C3  .byte EF BD FD 03 38 FD 83 05 9D FD 03 B0 03 DE EE 03   ; 041C3
  C1D3  .byte A5 0C 29 01 85 15 0A 05 15 69 CB 9D D0 03 A5 E4   ; 041D3
  C1E3  .byte D0 31 20 ED C9 F0 2C A5 E4 D0 28 B9 74 05 30 23   ; 041E3
  C1F3  .byte BD FD 03 F9 FD 03 69 10 C9 20 B0 17 B9 39 04 69   ; 041F3
  C203  .byte 06 FD 39 04 69 0D C9 1A B0 09 A9 00 85 D4 85 D5   ; 04203
  C213  .byte 4C BE C0 60 4C 80 D0 BD A2 04 30 F8 BD DE 04 2A   ; 04213
  C223  .byte A9 CC 69 00 9D D0 03 BD 83 05 F0 17 DE 83 05 D0   ; 04223
  C233  .byte 0C BD DE 04 10 08 A2 0F A9 97 4C 4A 91 60 A9 95   ; 04233
  C243  .byte 4C 48 91 BD DE 04 20 7A 8E A5 D5 20 20 B9 4C E5   ; 04243
  C253  .byte C1 4C 80 D0 BD 47 05 F0 06 20 95 EC 4C DE C2 A9   ; 04253
  C263  .byte 1E 85 B2 A9 3A A2 0C 20 4A 91 BD 83 05 F0 0A DE   ; 04263
  C273  .byte 83 05 D0 6C A9 68 20 48 91 BD A2 04 30 D3 BD D0   ; 04273
  C283  .byte 03 D0 10 9D 1A 05 20 E9 E2 BD 1B 04 6A 6A 29 80   ; 04283
  C293  .byte 9D 56 05 BC 92 05 20 85 B1 B9 39 04 69 08 FD 39   ; 04293
  C2A3  .byte 04 A9 E0 90 02 A9 20 20 7A 8E BD 65 05 18 69 03   ; 042A3
  C2B3  .byte C9 C0 90 02 A9 C0 9D 65 05 20 4C 8F BD 65 05 C9   ; 042B3
  C2C3  .byte 80 90 12 BC 92 05 A9 10 20 01 8D D0 08 A9 6E 20   ; 042C3
  C2D3  .byte DD DA 20 FD DA 20 66 CF 20 AD E4 A9 55 9D D0 03   ; 042D3
  C2E3  .byte 60 20 6D B1 B9 D0 03 9D D0 03 A9 40 9D A2 04 4C   ; 042E3
  C2F3  .byte F0 C3 E6 B7 D0 02 E6 B8 A9 3F 20 66 FE D0 05 98   ; 042F3
  C303  .byte AA 20 94 FA A4 82 A9 6B 20 6D FE 98 AA A9 10 20   ; 04303
  C313  .byte EE 8E 20 94 FA A6 82 4C 94 FA BC 92 05 D0 C2 BD   ; 04313
  C323  .byte D0 03 D0 0F 20 5A FE A9 6B 9D C1 03 A5 82 9D 92   ; 04323
  C333  .byte 05 A6 82 BD DE 04 D0 4D BD A1 05 D0 37 20 ED C9   ; 04333
  C343  .byte A5 0B F0 74 A9 70 20 4D 8D D0 6D A5 1B 69 40 C9   ; 04343
  C353  .byte 80 90 65 46 8D A9 54 20 01 8D D0 5C A5 1B 69 10   ; 04353
  C363  .byte C9 20 90 54 A5 8F 29 80 05 8D 5D 1A 05 29 C0 D0   ; 04363
  C373  .byte 47 FE A1 05 A2 2D A0 03 20 CB FF BD 56 05 C9 FF   ; 04373
  C383  .byte D0 03 4C F5 C2 DE DE 04 BD 56 05 29 40 F0 21 DE   ; 04383
  C393  .byte DE 04 BD 56 05 2A A9 FC B0 02 A9 04 BC 83 05 C0   ; 04393
  C3A3  .byte 72 90 07 FE DE 04 C9 80 6A 18 20 EE 8E 4C BB C3   ; 043A3
  C3B3  .byte A9 80 9D 65 05 20 4C 8F 20 F0 C3 A9 1C 20 DC C3   ; 043B3
  C3C3  .byte D0 0A A9 24 20 4D 8D D0 03 20 FB FC BD DE 04 4A   ; 043C3
  C3D3  .byte 4A 29 01 09 D0 9D D0 03                           ; 043D3

loc_B0_C3DB:                    ; from 04451
  C3DB  60        RTS                           ; 043DB ×98

sub_B0_C3DC:                    ; from 05769
  C3DC  85 15     STA $15                       ; 043DC ×629
  C3DE  20 ED C9  JSR sub_B0_C9ED               ; 043DE ×629
  C3E1  F0 0A     BEQ loc_B0_C3ED               ; 043E1 ×629
  C3E3  B9 74 05  LDA $0574,Y                   ; 043E3 ×327
  C3E6  D0 05     BNE loc_B0_C3ED               ; 043E6 ×327
  C3E8  A5 15     LDA $15                       ; 043E8 ×113
  C3EA  4C 01 8D  JMP sub_B0_8D01               ; 043EA ×113

loc_B0_C3ED:                    ; from 043e1 043e6
  C3ED  A9 01     LDA #$01                      ; 043ED ×516
  C3EF  60        RTS                           ; 043EF ×516
  C3F0  .byte A9 40 20 FA C3 20 AD E4 A9 00 5D A2 04 29 40 A8   ; 043F0
  C400  .byte A9 0C C0 00 F0 04 A0 FF A9 F4 18 7D FD 03 9D FD   ; 04400
  C410  .byte 03 98 7D EE 03 9D EE 03 60                        ; 04410

jt_B0_C419:                    ; from 008ec
  C419  BD D0 03  LDA $03D0,X                   ; 04419 ×107
  C41C  D0 1C     BNE loc_B0_C43A               ; 0441C ×107
  C41E  9D A2 04  STA $04A2,X                   ; 0441E ×9
  C421  BC 92 05  LDY $0592,X                   ; 04421 ×9
  C424  20 6D B1  JSR sub_B0_B16D               ; 04424 ×9
  C427  A9 02     LDA #$02                      ; 04427 ×9
  C429  9D C0 04  STA $04C0,X                   ; 04429 ×9
  C42C  A5 10     LDA $10                       ; 0442C ×9
  C42E  49 0C     EOR #$0C                      ; 0442E ×9
  C430  D0 08     BNE loc_B0_C43A               ; 04430 ×9
  C432  9D 2A 04  STA $042A,X                   ; 04432 ×9
  C435  A9 1C     LDA #$1C                      ; 04435 ×9
  C437  9D DE 04  STA $04DE,X                   ; 04437 ×9

loc_B0_C43A:                    ; from 0441c
  C43A  BD A2 04  LDA $04A2,X                   ; 0443A ×107
  C43D  30 14     BMI loc_B0_C453               ; 0443D ×107
  C43F  20 52 8E  JSR sub_B0_8E52               ; 0443F ×106
  C442  FE DE 04  INC $04DE,X                   ; 04442 ×106
  C445  BD DE 04  LDA $04DE,X                   ; 04445 ×106
  C448  4A        LSR A                         ; 04448 ×106
  C449  4A        LSR A                         ; 04449 ×106
  C44A  A8        TAY                           ; 0444A ×106
  C44B  B9 56 C4  LDA $C456,Y                   ; 0444B ×106
  C44E  9D D0 03  STA $03D0,X                   ; 0444E ×106
  C451  D0 88     BNE loc_B0_C3DB               ; 04451 ×106

loc_B0_C453:                    ; from 0443d
  C453  4C 80 D0  JMP sub_B0_D080               ; 04453 ×9
  C456  .byte D3 D4 D5 D5 D4 D3 00                              ; 04456
  C45D  .byte 8D 8D 8D 00                                       ; 0445D data, read by 0444b

loc_B0_C461:                    ; from 044af
  C461  4C 80 D0  JMP sub_B0_D080               ; 04461 ×3

loc_B0_C464:                    ; from 044d7
  C464  BD 74 05  LDA $0574,X                   ; 04464 ×876
  C467  D0 43     BNE loc_B0_C4AC               ; 04467 ×876
  C469  DE DF 03  DEC $03DF,X                   ; 04469 ×827
  C46C  BD DF 03  LDA $03DF,X                   ; 0446C ×827
  C46F  38        SEC                           ; 0446F ×827
  C470  E9 04     SBC #$04                      ; 04470 ×827
  C472  C9 F4     CMP #$F4                      ; 04472 ×827
  C474  90 05     BCC loc_B0_C47B               ; 04474 ×827
  C476  A9 D8     LDA #$D8                      ; 04476 ×240
  C478  9D D0 03  STA $03D0,X                   ; 04478 ×240

loc_B0_C47B:                    ; from 04474
  C47B  BD DF 03  LDA $03DF,X                   ; 0447B ×827
  C47E  30 22     BMI loc_B0_C4A2               ; 0447E ×827
  C480  D0 0F     BNE loc_B0_C491               ; 04480 ×320
  C482  BD 1A 05  LDA $051A,X                   ; 04482 ×20
  C485  38        SEC                           ; 04485 ×20
  C486  E9 04     SBC #$04                      ; 04486 ×20
  C488  9D 1A 05  STA $051A,X                   ; 04488 ×20
  C48B  A9 14     LDA #$14                      ; 0448B ×20
  C48D  85 DC     STA $DC                       ; 0448D ×20
  C48F  A9 01     LDA #$01                      ; 0448F ×20

loc_B0_C491:                    ; from 04480
  C491  C9 07     CMP #$07                      ; 04491 ×320
  C493  B0 0D     BCS loc_B0_C4A2               ; 04493 ×320
  C495  A9 04     LDA #$04                      ; 04495 ×140
  C497  20 EE 8E  JSR sub_B0_8EEE               ; 04497 ×140
  C49A  A9 01     LDA #$01                      ; 0449A ×140
  C49C  9D C0 04  STA $04C0,X                   ; 0449C ×140
  C49F  9D CF 04  STA $04CF,X                   ; 0449F ×140

loc_B0_C4A2:                    ; from 0447e 04493
  C4A2  20 52 8E  JSR sub_B0_8E52               ; 044A2 ×827
  C4A5  20 AD E4  JSR sub_B0_E4AD               ; 044A5 ×827
  C4A8  20 59 9E  JSR sub_B0_9E59               ; 044A8 ×827
  C4AB  60        RTS                           ; 044AB ×827

loc_B0_C4AC:                    ; from 04467
  C4AC  BD A2 04  LDA $04A2,X                   ; 044AC ×49
  C4AF  30 B0     BMI loc_B0_C461               ; 044AF ×49
  C4B1  BD A2 04  LDA $04A2,X                   ; 044B1 ×46
  C4B4  29 DF     AND #$DF                      ; 044B4 ×46
  C4B6  9D A2 04  STA $04A2,X                   ; 044B6 ×46
  C4B9  A9 FF     LDA #$FF                      ; 044B9 ×46
  C4BB  20 6A D0  JSR sub_B0_D06A               ; 044BB ×46
  C4BE  20 4C 8F  JSR sub_B0_8F4C               ; 044BE ×46
  C4C1  4C 52 8E  JMP sub_B0_8E52               ; 044C1 ×46

sub_B0_C4C4:                    ; from 008ec 06f4f
  C4C4  BD D0 03  LDA $03D0,X                   ; 044C4 ×13974
  C4C7  D0 03     BNE loc_B0_C4CC               ; 044C7 ×13974
  C4C9  20 E9 E2  JSR sub_B0_E2E9               ; 044C9 ×15

loc_B0_C4CC:                    ; from 044c7
  C4CC  A9 D6     LDA #$D6                      ; 044CC ×13974
  C4CE  9D D0 03  STA $03D0,X                   ; 044CE ×13974
  C4D1  BD 47 05  LDA $0547,X                   ; 044D1 ×13974
  C4D4  1D 74 05  ORA $0574,X                   ; 044D4 ×13974
  C4D7  D0 8B     BNE loc_B0_C464               ; 044D7 ×13974
  C4D9  FE DE 04  INC $04DE,X                   ; 044D9 ×13098
  C4DC  D0 0B     BNE loc_B0_C4E9               ; 044DC ×13098
  C4DE  BD 56 05  LDA $0556,X                   ; 044DE ×93
  C4E1  49 80     EOR #$80                      ; 044E1 ×93
  C4E3  9D 56 05  STA $0556,X                   ; 044E3 ×93
  C4E6  20 E9 E2  JSR sub_B0_E2E9               ; 044E6 ×93

loc_B0_C4E9:                    ; from 044dc
  C4E9  BD DE 04  LDA $04DE,X                   ; 044E9 ×13098
  C4EC  10 3B     BPL loc_B0_C529               ; 044EC ×13098
  C4EE  C9 E0     CMP #$E0                      ; 044EE ×5961
  C4F0  D0 35     BNE loc_B0_C527               ; 044F0 ×5961
  C4F2  A9 06     LDA #$06                      ; 044F2 ×94
  C4F4  85 1B     STA $1B                       ; 044F4 ×94
  C4F6  BD C1 03  LDA $03C1,X                   ; 044F6 ×94
  C4F9  C9 72     CMP #$72                      ; 044F9 ×94
  C4FB  F0 36     BEQ loc_B0_C533               ; 044FB ×94
  C4FD  A9 28     LDA #$28                      ; 044FD ×94
  C4FF  A2 0F     LDX #$0F                      ; 044FF ×94
  C501  20 4A 91  JSR sub_B0_914A               ; 04501 ×94
  C504  BD C1 03  LDA $03C1,X                   ; 04504 ×94
  C507  C9 50     CMP #$50                      ; 04507 ×94
  C509  D0 17     BNE loc_B0_C522               ; 04509 ×94
  C50B  A9 04     LDA #$04                      ; 0450B ×46
  C50D  85 1B     STA $1B                       ; 0450D ×46
  C50F  A9 40     LDA #$40                      ; 0450F ×46
  C511  9D A2 04  STA $04A2,X                   ; 04511 ×46
  C514  A9 12     LDA #$12                      ; 04514 ×46
  C516  20 83 DF  JSR sub_B0_DF83               ; 04516 ×46
  C519  A9 00     LDA #$00                      ; 04519 ×46
  C51B  9D A2 04  STA $04A2,X                   ; 0451B ×46
  C51E  A9 12     LDA #$12                      ; 0451E ×46
  C520  D0 02     BNE loc_B0_C524               ; 04520 ×46

loc_B0_C522:                    ; from 04509
  C522  A9 0E     LDA #$0E                      ; 04522 ×48

loc_B0_C524:                    ; from 04520
  C524  20 83 DF  JSR sub_B0_DF83               ; 04524 ×94

loc_B0_C527:                    ; from 044f0
  C527  D0 1B     BNE loc_B0_C544               ; 04527 ×5961

loc_B0_C529:                    ; from 044ec
  C529  DD 83 05  CMP $0583,X                   ; 04529 ×7137
  C52C  D0 05     BNE loc_B0_C533               ; 0452C ×7137
  C52E  A9 C0     LDA #$C0                      ; 0452E ×94
  C530  9D DE 04  STA $04DE,X                   ; 04530 ×94

loc_B0_C533:                    ; from 0452c
  C533  A9 20     LDA #$20                      ; 04533 ×7137
  C535  BC C1 03  LDY $03C1,X                   ; 04535 ×7137
  C538  C0 72     CPY #$72                      ; 04538 ×7137
  C53A  F0 02     BEQ $C53E                     ; 0453A ×7137
  C53C  A9 40     LDA #$40                      ; 0453C ×7137
  C53E  9D 65 05  STA $0565,X                   ; 0453E ×7137
  C541  20 4C 8F  JSR sub_B0_8F4C               ; 04541 ×7137

loc_B0_C544:                    ; from 04527
  C544  BD C1 03  LDA $03C1,X                   ; 04544 ×13098
  C547  C9 50     CMP #$50                      ; 04547 ×13098
  C549  F0 1E     BEQ loc_B0_C569               ; 04549 ×13098
  C54B  20 6A C5  JSR sub_B0_C56A               ; 0454B ×6317
  C54E  BC 92 05  LDY $0592,X                   ; 0454E ×6317
  C551  A9 18     LDA #$18                      ; 04551 ×6317
  C553  20 01 8D  JSR sub_B0_8D01               ; 04553 ×6317
  C556  BD A2 04  LDA $04A2,X                   ; 04556 ×6317
  C559  29 23     AND #$23                      ; 04559 ×6317
  C55B  85 15     STA $15                       ; 0455B ×6317
  C55D  A5 8F     LDA $8F                       ; 0455D ×6317
  C55F  4A        LSR A                         ; 0455F ×6317
  C560  29 40     AND #$40                      ; 04560 ×6317
  C562  49 40     EOR #$40                      ; 04562 ×6317
  C564  05 15     ORA $15                       ; 04564 ×6317
  C566  9D A2 04  STA $04A2,X                   ; 04566 ×6317

loc_B0_C569:                    ; from 04549
  C569  60        RTS                           ; 04569 ×13098

sub_B0_C56A:                    ; from 0454b
  C56A  20 AD E4  JSR sub_B0_E4AD               ; 0456A ×6317
  C56D  20 ED C9  JSR sub_B0_C9ED               ; 0456D ×6317
  C570  F0 3E     BEQ loc_B0_C5B0               ; 04570 ×6317
  C572  B9 74 05  LDA $0574,Y                   ; 04572 ×3158
  C575  05 E4     ORA $E4                       ; 04575 ×3158
  C577  D0 37     BNE loc_B0_C5B0               ; 04577 ×3158
  C579  A9 0A     LDA #$0A                      ; 04579 ×3158
  C57B  20 39 8D  JSR sub_B0_8D39               ; 0457B ×3158
  C57E  D0 30     BNE loc_B0_C5B0               ; 0457E ×3158
  C580  A9 0C     LDA #$0C                      ; 04580 ×3158
  C582  20 01 8D  JSR sub_B0_8D01               ; 04582 ×3158
  C585  D0 29     BNE loc_B0_C5B0               ; 04585 ×3158
  C587  A9 18     LDA #$18                      ; 04587 ×1
  C589  20 4D 8D  JSR sub_B0_8D4D               ; 04589 ×1
  C58C  D0 22     BNE loc_B0_C5B0               ; 0458C ×1
  C58E  A5 10     LDA $10                       ; 0458E ×1
  C590  C9 0C     CMP #$0C                      ; 04590 ×1
  C592  D0 08     BNE loc_B0_C59C               ; 04592 ×1
  C594  20 6A CA  JSR $CA6A                     ; 04594 inferred, not run
  C597  A9 0A     LDA #$0A                      ; 04597 inferred, not run
  C599  4C 48 91  JMP sub_B0_9148               ; 04599 inferred, not run

loc_B0_C59C:                    ; from 04592
  C59C  98        TYA                           ; 0459C ×1
  C59D  AA        TAX                           ; 0459D ×1
  C59E  A9 19     LDA #$19                      ; 0459E ×1
  C5A0  20 F9 FB  JSR sub_B0_FBF9               ; 045A0 ×1
  C5A3  A9 0A     LDA #$0A                      ; 045A3 ×1
  C5A5  20 48 91  JSR sub_B0_9148               ; 045A5 ×1
  C5A8  A9 18     LDA #$18                      ; 045A8 ×1
  C5AA  20 EE 8E  JSR sub_B0_8EEE               ; 045AA ×1
  C5AD  4C 94 FA  JMP sub_B0_FA94               ; 045AD ×1

loc_B0_C5B0:                    ; from 04570 04585
  C5B0  60        RTS                           ; 045B0 ×6316
  C5B1  .byte 4C 80 D0 BD 92 05 C9 30 B0 0C 29 04 F0 08 BD A2   ; 045B1
  C5C1  .byte 04 49 40 9D A2 04 A5 0B 29 01 D0 0B DE 92 05 D0   ; 045C1
  C5D1  .byte 06 9D 74 05 20 99 9E BD A2 04 30 D4 A9 10 9D 65   ; 045D1
  C5E1  .byte 05 A9 E9 9D D0 03 60 BD D0 03 D0 03 20 45 F7 BD   ; 045E1
  C5F1  .byte 47 05 F0 1E BD 74 05 9D 92 05 A9 00 9D 47 05 9D   ; 045F1
  C601  .byte A1 05 9D C0 04 9D CF 04 BD 39 04 29 E0 09 18 9D   ; 04601
  C611  .byte 39 04 A0 EE 20 78 B9 BD 56 05 29 80 9D 56 05 20   ; 04611
  C621  .byte 4C 8F 20 66 CF 20 AD E4 A9 00 9D 75 04 BD 74 05   ; 04621
  C631  .byte D0 81 BD FC 04 D0 1B 8A 45 0B 6A B0 0A 20 39 F7   ; 04631
  C641  .byte 30 05 A9 80 20 DD DA A9 20 9D 65 05 A9 E7 9D D0   ; 04641
  C651  .byte 03 60 4C AC C7 BD 65 05 D0 19 A9 C0 9D 65 05 A5   ; 04651
  C661  .byte 25 9D 56 05 BD A2 04 29 03 D0 08 20 B6 C7 A9 80   ; 04661
  C671  .byte 9D 65 05 A9 FC 20 6A D0 20 B5 F4 20 66 CF BD 74   ; 04671
  C681  .byte 05 D0 0E 20 AD E4 BD 47 05 F0 20 20 4E 9E 4C 0C   ; 04681
  C691  .byte C7 20 9A C6 10 F5 4C 80 D0 A9 00 9D 75 04 FE 47   ; 04691
  C6A1  .byte 05 A9 FD 18 20 EE 8E BD A2 04 60 BD 74 05 F0 0B   ; 046A1
  C6B1  .byte 20 52 8E BD A2 04 10 53 4C 80 D0 20 ED C9 F0 47   ; 046B1
  C6C1  .byte B9 FC 04 19 74 05 19 47 05 D0 3C A9 40 20 01 8D   ; 046C1
  C6D1  .byte D0 35 A9 40 20 4D 8D D0 2E A5 0C 4A 29 01 09 E4   ; 046D1
  C6E1  .byte 9D D0 03 84 18 A9 98 20 FD B7 A4 18 A5 1B 69 10   ; 046E1
  C6F1  .byte C9 20 B0 11 B9 FD 03 FD FD 03 69 10 C9 20 B0 05   ; 046F1
  C701  .byte 20 A0 EE A6 82 A0 01 C0 01 F0 09 20 D5 E2 B9 16   ; 04701
  C711  .byte C7 9D D0 03 60 E2 E3 E2 E3 BD A1 05 D0 35 20 8B   ; 04711
  C721  .byte C7 BD FC 04 F0 0E A5 8F 29 80 49 80 9D 56 05 A9   ; 04721
  C731  .byte 7E 20 DD DA A5 25 29 3F 69 20 A9 20 9D A1 05 A5   ; 04731
  C741  .byte 26 29 01 D0 02 A9 FF 9D DE 04 A5 27 29 3F 69 20   ; 04741
  C751  .byte 9D 65 05 20 AB F4 BD 74 05 D0 11 20 AD E4 20 66   ; 04751
  C761  .byte CF BD 47 05 F0 0E 20 4E 9E 4C 7D C7 20 9A C6 10   ; 04761
  C771  .byte F5 4C 80 D0 BD FC 04 D0 32 DE A1 05 20 D5 E2 B9   ; 04771
  C781  .byte 87 C7 9D D0 03 60 D9 DA DB DA 20 E9 E2 A9 20 20   ; 04781
  C791  .byte 4D 8D A9 50 20 01 8D D0 11 BD 39 04 F9 39 04 69   ; 04791
  C7A1  .byte 1C C9 34 B0 05 A9 7C 4C DD DA 60 A9 00 9D 75 04   ; 047A1
  C7B1  A9 01     LDA #$01                      ; 047B1 ×0
  C7B3  4C 19 C8  JMP $C819                     ; 047B3 ×0
  C7B6  .byte 20 8B C7 A5 8F 29 80 49 98 9D 56 05 45 8D 30 08   ; 047B6
  C7C6  .byte BD 56 05 E9 30 9D 56 05 60 BD A1 05 D0 0D A9 20   ; 047C6
  C7D6  .byte 9D A1 05 A9 80 9D 65 05 20 B6 C7 20 B5 F4 20 66   ; 047D6
  C7E6  .byte CF BD 74 05 D0 0E 20 AD E4 BD 47 05 F0 0E 20 4E   ; 047E6
  C7F6  .byte 9E 4C 0A C8 20 9A C6 10 F5 4C 80 D0 BD FC 04 D0   ; 047F6
  C806  .byte A5 DE A1 05 BD 65 05 4A 4A 20 D8 E2 B9 25 C8 9D   ; 04806
  C816  .byte D0 03 60                                          ; 04816
  C819  20 F6 DA  JSR sub_B0_DAF6               ; 04819 ×0
  C81C  BD D0 03  LDA $03D0,X                   ; 0481C ×0
  C81F  09 80     ORA #$80                      ; 0481F ×0
  C821  9D D0 03  STA $03D0,X                   ; 04821 ×0
  C824  60        RTS                           ; 04824 ×0
  C825  .byte DE DF E0 DF                                       ; 04825

loc_B0_C829:                    ; from 04892
  C829  29 1F     AND #$1F                      ; 04829 ×57
  C82B  A8        TAY                           ; 0482B ×57
  C82C  88        DEY                           ; 0482C ×57
  C82D  B9 38 05  LDA $0538,Y                   ; 0482D ×57
  C830  D0 0D     BNE loc_B0_C83F               ; 04830 ×57
  C832  A9 20     LDA #$20                      ; 04832 inferred, not run
  C834  20 7A 8E  JSR sub_B0_8E7A               ; 04834 inferred, not run
  C837  BD A2 04  LDA $04A2,X                   ; 04837 inferred, not run
  C83A  10 46     BPL $C882                     ; 0483A inferred, not run
  C83C  4C 80 D0  JMP sub_B0_D080               ; 0483C inferred, not run

loc_B0_C83F:                    ; from 04830
  C83F  20 F3 88  JSR sub_B0_88F3               ; 0483F ×57
  C842  BD DE 04  LDA $04DE,X                   ; 04842 ×57
  C845  30 27     BMI $C86E                     ; 04845 ×57
  C847  A4 15     LDY $15                       ; 04847 ×57
  C849  A9 00     LDA #$00                      ; 04849 ×57
  C84B  99 92 05  STA $0592,Y                   ; 0484B ×57
  C84E  98        TYA                           ; 0484E ×57
  C84F  49 01     EOR #$01                      ; 0484F ×57
  C851  A8        TAY                           ; 04851 ×57
  C852  B9 C1 03  LDA $03C1,Y                   ; 04852 ×57
  C855  F0 14     BEQ loc_B0_C86B               ; 04855 ×57
  C857  B9 38 05  LDA $0538,Y                   ; 04857 ×1
  C85A  C9 40     CMP #$40                      ; 0485A ×1
  C85C  90 1E     BCC $C87C                     ; 0485C ×1
  C85E  BD 83 05  LDA $0583,X                   ; 0485E ×1
  C861  10 08     BPL loc_B0_C86B               ; 04861 ×1
  C863  AD 75 04  LDA $0475                     ; 04863 inferred, not run
  C866  2D 76 04  AND $0476                     ; 04866 inferred, not run
  C869  F0 11     BEQ $C87C                     ; 04869 inferred, not run

loc_B0_C86B:                    ; from 04855 04861
  C86B  FE DE 04  INC $04DE,X                   ; 0486B ×57
  C86E  BD 83 05  LDA $0583,X                   ; 0486E ×57
  C871  8D 92 05  STA $0592                     ; 04871 ×57
  C874  8D 93 05  STA $0593                     ; 04874 ×57
  C877  A9 8C     LDA #$8C                      ; 04877 ×57
  C879  20 48 91  JSR sub_B0_9148               ; 04879 ×57
  C87C  A9 2C     LDA #$2C                      ; 0487C ×57
  C87E  18        CLC                           ; 0487E ×57
  C87F  20 EE 8E  JSR sub_B0_8EEE               ; 0487F ×57
  C882  20 AD E4  JSR sub_B0_E4AD               ; 04882 ×57
  C885  A9 00     LDA #$00                      ; 04885 ×57
  C887  9D 75 04  STA $0475,X                   ; 04887 ×57
  C88A  4C AE C8  JMP loc_B0_C8AE               ; 0488A ×57

jt_B0_C88D:                    ; from 008ec
  C88D  BD 29 05  LDA $0529,X                   ; 0488D ×4637
  C890  C9 40     CMP #$40                      ; 04890 ×4637
  C892  B0 95     BCS loc_B0_C829               ; 04892 ×4637
  C894  20 76 B9  JSR sub_B0_B976               ; 04894 ×4580
  C897  A9 E8     LDA #$E8                      ; 04897 ×4580
  C899  18        CLC                           ; 04899 ×4580
  C89A  20 EE 8E  JSR sub_B0_8EEE               ; 0489A ×4580
  C89D  A9 04     LDA #$04                      ; 0489D ×4580
  C89F  20 59 8A  JSR sub_B0_8A59               ; 0489F ×4580
  C8A2  A9 18     LDA #$18                      ; 048A2 ×4580
  C8A4  18        CLC                           ; 048A4 ×4580
  C8A5  20 EE 8E  JSR sub_B0_8EEE               ; 048A5 ×4580
  C8A8  A9 03     LDA #$03                      ; 048A8 ×4580
  C8AA  25 0B     AND $0B                       ; 048AA ×4580
  C8AC  D0 03     BNE loc_B0_C8B1               ; 048AC ×4580

loc_B0_C8AE:                    ; from 0488a
  C8AE  FE DF 03  INC $03DF,X                   ; 048AE ×1196

loc_B0_C8B1:                    ; from 048ac
  C8B1  BD DF 03  LDA $03DF,X                   ; 048B1 ×4637

loc_B0_C8B4:                    ; from 048ba
  C8B4  9D DF 03  STA $03DF,X                   ; 048B4 ×5033
  C8B7  A8        TAY                           ; 048B7 ×5033
  C8B8  49 03     EOR #$03                      ; 048B8 ×5033
  C8BA  F0 F8     BEQ loc_B0_C8B4               ; 048BA ×5033
  C8BC  B9 CE C8  LDA $C8CE,Y                   ; 048BC ×4637
  C8BF  9D D0 03  STA $03D0,X                   ; 048BF ×4637
  C8C2  BD A2 04  LDA $04A2,X                   ; 048C2 ×4637
  C8C5  29 BF     AND #$BF                      ; 048C5 ×4637
  C8C7  19 D1 C8  ORA $C8D1,Y                   ; 048C7 ×4637
  C8CA  9D A2 04  STA $04A2,X                   ; 048CA ×4637
  C8CD  60        RTS                           ; 048CD ×4637
  C8CE  .byte EA EB EB 00 00 40                                 ; 048CE data, read by 048bc 048c7
  C8D4  .byte BD DE 04 D0 0B BD 0C 04 9D DE 04 A9 1F 9D 0C 04   ; 048D4
  C8E4  .byte A5 10 C9 04 D0 3B BD DE 04 C9 38 D0 27 20 66 FE   ; 048E4
  C8F4  .byte D0 19 B9 2A 04 C9 1E B0 07 B9 EE 03 C9 02 90 10   ; 048F4
  C904  .byte 86 15 84 82 20 80 D0 A6 15 86 82 A9 38 9D C1 03   ; 04904
  C914  .byte 60 4C 80 D0 DE ED 04 10 46 BD 83 05 9D ED 04 D0   ; 04914
  C924  .byte 24 A9 FB 9D D0 03 A5 25 5D FD 03 29 7F D0 30 85   ; 04924
  C934  .byte 15 A0 02 B9 C1 03 F0 02 E6 15 C8 C0 0F D0 F4 A5   ; 04934
  C944  .byte 15 C9 07 B0 1A 20 58 FE A4 82 20 67 B1 B9 DE 04   ; 04944
  C954  .byte 9D C1 03 B9 1A 05 9D 1A 05 B9 A2 04 9D A2 04 60   ; 04954
  C964  .byte A5 D4 18 7D 48 04 9D 48 04 A5 D5 4C 20 B9 A9 03   ; 04964
  C974  .byte 20 20 B9 BD A2 04 30 7A BD D0 03 D0 0A BD 83 05   ; 04974
  C984  .byte 29 80 09 40 9D 56 05 A9 9C A2 12 20 4A 91 20 D5   ; 04984
  C994  .byte C9 F0 38 B9 74 05 05 E4 D0 31 A9 10 20 01 8D D0   ; 04994
  C9A4  .byte 2A A9 0C 20 39 8D D0 23 98 AA A4 82 20 67 B1 BD   ; 049A4
  C9B4  .byte 1A 05 85 15 38 E9 01 90 13 F0 11 9D 1A 05 45 15   ; 049B4
  C9C4  .byte 29 F8 F0 02 E6 D0 A9 13 9D B5 03 60 8A A8 4C 6A   ; 049C4
  C9D4  .byte CA BD 83 05 18 7D 56 05                           ; 049D4

sub_B0_C9DC:                    ; from 04a24 04a1e
  C9DC  9D 56 05  STA $0556,X                   ; 049DC ×250
  C9DF  BD 1A 05  LDA $051A,X                   ; 049DF ×250
  C9E2  9D 65 05  STA $0565,X                   ; 049E2 ×250
  C9E5  20 4C 8F  JSR sub_B0_8F4C               ; 049E5 ×250
  C9E8  A9 ED     LDA #$ED                      ; 049E8 ×250
  C9EA  9D D0 03  STA $03D0,X                   ; 049EA ×250

sub_B0_C9ED:                    ; from 06ee3 0456d 07a36 06e44 05128 043de (+2)
  C9ED  A5 0B     LDA $0B                       ; 049ED ×20145
  C9EF  29 01     AND #$01                      ; 049EF ×20145
  C9F1  A8        TAY                           ; 049F1 ×20145
  C9F2  B9 C1 03  LDA $03C1,Y                   ; 049F2 ×20145
  C9F5  60        RTS                           ; 049F5 ×20145
  C9F6  4C 80 D0  JMP sub_B0_D080               ; 049F6 ×0

jt_B0_C9F9:                    ; from 008ec
  C9F9  A9 03     LDA #$03                      ; 049F9 ×250
  C9FB  20 20 B9  JSR sub_B0_B920               ; 049FB ×250
  C9FE  A0 F2     LDY #$F2                      ; 049FE ×250
  CA00  20 78 B9  JSR sub_B0_B978               ; 04A00 ×250
  CA03  BD A2 04  LDA $04A2,X                   ; 04A03 ×250
  CA06  30 EE     BMI $C9F6                     ; 04A06 ×250
  CA08  BD 1B 04  LDA $041B,X                   ; 04A08 ×250
  CA0B  C9 B3     CMP #$B3                      ; 04A0B ×250
  CA0D  90 04     BCC $CA13                     ; 04A0D ×250
  CA0F  C9 D5     CMP #$D5                      ; 04A0F ×250
  CA11  90 0E     BCC loc_B0_CA21               ; 04A11 ×250
  CA13  BD 83 05  LDA $0583,X                   ; 04A13 ×0
  CA16  18        CLC                           ; 04A16 ×0
  CA17  69 01     ADC #$01                      ; 04A17 ×0
  CA19  49 FF     EOR #$FF                      ; 04A19 ×0
  CA1B  9D 83 05  STA $0583,X                   ; 04A1B ×0
  CA1E  20 DC C9  JSR sub_B0_C9DC               ; 04A1E ×0

loc_B0_CA21:                    ; from 04a11
  CA21  BD 83 05  LDA $0583,X                   ; 04A21 ×250
  CA24  20 DC C9  JSR sub_B0_C9DC               ; 04A24 ×250
  CA27  F0 50     BEQ loc_B0_CA79               ; 04A27 ×250
  CA29  B9 74 05  LDA $0574,Y                   ; 04A29 ×124
  CA2C  05 E4     ORA $E4                       ; 04A2C ×124
  CA2E  D0 49     BNE loc_B0_CA79               ; 04A2E ×124
  CA30  A9 0C     LDA #$0C                      ; 04A30 ×124
  CA32  20 01 8D  JSR sub_B0_8D01               ; 04A32 ×124
  CA35  D0 42     BNE loc_B0_CA79               ; 04A35 ×124
  CA37  A9 12     LDA #$12                      ; 04A37 ×4
  CA39  20 39 8D  JSR sub_B0_8D39               ; 04A39 ×4
  CA3C  D0 3B     BNE loc_B0_CA79               ; 04A3C ×4
  CA3E  B9 39 04  LDA $0439,Y                   ; 04A3E ×1
  CA41  FD 39 04  SBC $0439,X                   ; 04A41 ×1
  CA44  C9 0C     CMP #$0C                      ; 04A44 ×1
  CA46  B0 31     BCS loc_B0_CA79               ; 04A46 ×1
  CA48  A9 08     LDA #$08                      ; 04A48 ×1
  CA4A  85 DC     STA $DC                       ; 04A4A ×1
  CA4C  E6 D0     INC $D0                       ; 04A4C ×1
  CA4E  A9 80     LDA #$80                      ; 04A4E ×1
  CA50  99 56 05  STA $0556,Y                   ; 04A50 ×1
  CA53  A9 60     LDA #$60                      ; 04A53 ×1
  CA55  99 65 05  STA $0565,Y                   ; 04A55 ×1
  CA58  A9 02     LDA #$02                      ; 04A58 ×1
  CA5A  99 C0 04  STA $04C0,Y                   ; 04A5A ×1
  CA5D  B9 1A 05  LDA $051A,Y                   ; 04A5D ×1
  CA60  38        SEC                           ; 04A60 ×1
  CA61  E9 18     SBC #$18                      ; 04A61 ×1
  CA63  90 05     BCC $CA6A                     ; 04A63 ×1
  CA65  99 1A 05  STA $051A,Y                   ; 04A65 ×1
  CA68  B0 0C     BCS loc_B0_CA76               ; 04A68 ×1
  CA6A  20 7F CA  JSR sub_B0_CA7F               ; 04A6A inferred, not run
  CA6D  A6 82     LDX $82                       ; 04A6D inferred, not run
  CA6F  BD C1 03  LDA $03C1,X                   ; 04A6F inferred, not run
  CA72  C9 76     CMP #$76                      ; 04A72 inferred, not run
  CA74  F0 08     BEQ $CA7E                     ; 04A74 inferred, not run

loc_B0_CA76:                    ; from 04a68
  CA76  4C 94 FA  JMP sub_B0_FA94               ; 04A76 ×1

loc_B0_CA79:                    ; from 04a27 04a35 04a3c
  CA79  A9 EC     LDA #$EC                      ; 04A79 ×249
  CA7B  9D D0 03  STA $03D0,X                   ; 04A7B ×249
  CA7E  60        RTS                           ; 04A7E ×249

sub_B0_CA7F:                    ; from 0577d
  CA7F  84 18     STY $18                       ; 04A7F ×3
  CA81  A2 25     LDX #$25                      ; 04A81 ×3
  CA83  20 AD B8  JSR sub_B0_B8AD               ; 04A83 ×3
  CA86  A4 18     LDY $18                       ; 04A86 ×3
  CA88  A9 04     LDA #$04                      ; 04A88 ×3
  CA8A  99 C0 04  STA $04C0,Y                   ; 04A8A ×3
  CA8D  A9 00     LDA #$00                      ; 04A8D ×3
  CA8F  99 CF 04  STA $04CF,Y                   ; 04A8F ×3
  CA92  85 D4     STA $D4                       ; 04A92 ×3
  CA94  85 D5     STA $D5                       ; 04A94 ×3
  CA96  A9 80     LDA #$80                      ; 04A96 ×3
  CA98  99 65 05  STA $0565,Y                   ; 04A98 ×3
  CA9B  A9 D0     LDA #$D0                      ; 04A9B ×3
  CA9D  99 BF 03  STA $03BF,Y                   ; 04A9D ×3
  CAA0  60        RTS                           ; 04AA0 ×3
  CAA1  .byte 4C 80 D0 BD D0 03 D0 0F 20 AD E4 BD A2 04 29 08   ; 04AA1
  CAB1  .byte 05 E4 D0 EC 9D 75 04 A5 D5 F0 0F 38 E9 04 90 04   ; 04AB1
  CAC1  .byte 4A 20 20 B9 20 4C 8F 20 6D C5 20 76 B9 BD A2 04   ; 04AC1
  CAD1  .byte 30 CE A9 EE 9D D0 03 60 4C 80 D0 BC 92 05 B9 1B   ; 04AD1
  CAE1  .byte 04 FD 1B 04 85 8D A9 50 20 01 8D A5 10 C9 0A F0   ; 04AE1
  CAF1  .byte 08 A5 8D 69 06 C9 0C B0 0A A5 8F 29 80 49 80 9D   ; 04AF1
  CB01  .byte 56 05 60 4C B9 C7 BD 74 05 F0 1A BD A2 04 10 15   ; 04B01
  CB11  .byte A5 10 C9 09 F0 04 C9 0A D0 86 DE 74 05 30 4E A9   ; 04B11
  CB21  .byte 80 85 EB D0 B3 20 A6 9E 20 59 9E 20 59 9E A9 FB   ; 04B21
  CB31  .byte 20 6A D0 20 5E CB BD 75 04 D0 18 A5 AF F0 14 20   ; 04B31
  CB41  .byte 99 9E A9 00 9D FC 04 20 42 91 A9 0F 9D A1 05 A9   ; 04B41
  CB51  .byte 14 85 DC A5 0C 29 02 4A 69 EF 4C D8 CC            ; 04B51

sub_B0_CB5E:                    ; from 053c4
  CB5E  A9 C0     LDA #$C0                      ; 04B5E ×888
  CB60  20 7A 8E  JSR sub_B0_8E7A               ; 04B60 ×888
  CB63  20 4C 8F  JSR sub_B0_8F4C               ; 04B63 ×888
  CB66  BD 74 05  LDA $0574,X                   ; 04B66 ×888
  CB69  D0 03     BNE $CB6E                     ; 04B69 ×888
  CB6B  4C AD E4  JMP sub_B0_E4AD               ; 04B6B ×888
  CB6E  A9 00     LDA #$00                      ; 04B6E inferred, not run
  CB70  9D 75 04  STA $0475,X                   ; 04B70 inferred, not run
  CB73  60        RTS                           ; 04B73 inferred, not run
  CB74  .byte BD 1A 05 30 0B 20 03 CC A6 82 20 E9 D6 4C 9F D6   ; 04B74
  CB84  .byte BD 47 05 F0 06 20 07 CB 4C D5 CB BD 29 05 10 06   ; 04B84
  CB94  .byte 20 DE CB 4C 7C CB BD 56 05 48 A5 0B 0A 0A 0A 9D   ; 04B94
  CBA4  .byte 56 05 A9 C0 9D 65 05 20 B5 F4 68 9D 56 05 A9 80   ; 04BA4
  CBB4  .byte 9D 65 05 A9 01 20 DE D6 A5 0B 29 03 1D 2A 04 D0   ; 04BB4
  CBC4  .byte 03 DE 39 04 A9 20 9D A1 05 A9 FF 9D C0 04 20 E7   ; 04BC4
  CBD4  .byte CC 20 12 9E 20 AD E4 4C 9F D6 20 83 E1 4C 54 CB   ; 04BD4
  CBE4  .byte BD D0 03 D0 05 A9 80 9D DF 03 BD DF 03 F0 10 DE   ; 04BE4
  CBF4  .byte DF 03 A9 80 9D 56 05 20 72 CF 20 8F 91 A6 82 20   ; 04BF4
  CC04  .byte 12 9E A5 10 49 0A F0 02 A9 1E 85 B2 BD 29 05 30   ; 04C04
  CC14  .byte C9 BD FC 04 1D 74 05 D0 13 85 D4 85 D5 BD C0 04   ; 04C14
  CC24  .byte C9 F8 D0 05 A9 5E 9D FC 04 20 E7 CC BD 47 05 1D   ; 04C24
  CC34  .byte 74 05 F0 03 4C 07 CB BD A1 05 F0 60 C9 30 90 14   ; 04C34
  CC44  .byte A5 10 C9 0A D0 0A A9 01 9D A1 05 20 0A BC D0 04   ; 04C44
  CC54  .byte A9 08 85 DC DE A1 05 D0 70 20 E9 E2 20 DC CA 20   ; 04C54
  CC64  .byte 72 CF A5 10 C9 0A F0 05 BD DF 03 D0 21 A9 60 9D   ; 04C64
  CC74  .byte 65 05 BC 1A 05 C0 C0 B0 15 C0 80 A9 07 B0 02 A9   ; 04C74
  CC84  .byte 03 25 26 D0 09 A9 40 9D ED 04 A9 0C D0 0B A9 00   ; 04C84
  CC94  .byte 9D ED 04 A5 25 29 04 69 02 9D C0 04 BD ED 04 F0   ; 04C94
  CCA4  .byte 13 DE ED 04 D0 0E 9D 65 05 A9 F8 9D C0 04 BC 92   ; 04CA4
  CCB4  .byte 05 20 79 B1 20 5E CB BD 75 04 D0 0D 20 42 91 A9   ; 04CB4
  CCC4  .byte FE 9D C0 04 A9 30 9D A1 05 BD 75 04 C9 01 A9 F1   ; 04CC4
  CCD4  .byte B0 02 A9 EF 9D D0 03 BD FC 04 F0 06 20 72 CF 4C   ; 04CD4
  CCE4  .byte B1 C7 60 BD 56 05 85 92 BC 47 05 D0 09 BD A2 04   ; 04CE4
  CCF4  .byte 29 40 0A 9D 56 05 20 39 F7 08 A5 92 9D 56 05 A9   ; 04CF4
  CD04  .byte 00 9D FC 04 28 30 60 BD FD 03 F9 FD 03 69 10 C9   ; 04D04
  CD14  .byte 20 B0 25 A5 10 C9 0A D0 05 BD 1A 05 30 1A BD C0   ; 04D14
  CD24  .byte 04 10 15 C9 FE B0 11 BD 39 04 38 F9 39 04 E9 04   ; 04D24
  CD34  .byte 30 06 20 FB FC A6 82 60 A5 10 C9 07 F0 29 C9 0A   ; 04D34
  CD44  .byte D0 1A B9 C3 05 19 FC 04 D0 1D BD C0 04 10 18 A9   ; 04D44
  CD54  .byte 80 99 65 05 A9 04 99 C0 04 4C B4 BB C9 0C A9 84   ; 04D54
  CD64  .byte B0 02 A9 86 4C DD DA 60 F2 F2 F6 F6 BD A1 05 F0   ; 04D64
  CD74  .byte 07 85 DC A9 00 9D A1 05 60                        ; 04D74

sub_B0_CD7D:                    ; from 053b9
  CD7D  BD 74 05  LDA $0574,X                   ; 04D7D ×3481
  CD80  F0 31     BEQ loc_B0_CDB3               ; 04D80 ×3481
  CD82  BD 83 05  LDA $0583,X                   ; 04D82 ×6
  CD85  C9 F0     CMP #$F0                      ; 04D85 ×6
  CD87  90 1C     BCC loc_B0_CDA5               ; 04D87 ×6
  CD89  A9 80     LDA #$80                      ; 04D89 inferred, not run
  CD8B  9D 65 05  STA $0565,X                   ; 04D8B inferred, not run
  CD8E  A9 0C     LDA #$0C                      ; 04D8E inferred, not run
  CD90  85 DC     STA $DC                       ; 04D90 inferred, not run
  CD92  A9 07     LDA #$07                      ; 04D92 inferred, not run
  CD94  A4 82     LDY $82                       ; 04D94 inferred, not run
  CD96  20 30 F5  JSR $F530                     ; 04D96 inferred, not run
  CD99  A9 46     LDA #$46                      ; 04D99 inferred, not run
  CD9B  9D C1 03  STA $03C1,X                   ; 04D9B inferred, not run
  CD9E  68        PLA                           ; 04D9E inferred, not run
  CD9F  68        PLA                           ; 04D9F inferred, not run
  CDA0  A9 46     LDA #$46                      ; 04DA0 inferred, not run
  CDA2  4C FD B7  JMP sub_B0_B7FD               ; 04DA2 inferred, not run

loc_B0_CDA5:                    ; from 04d87
  CDA5  A9 00     LDA #$00                      ; 04DA5 ×6
  CDA7  9D 74 05  STA $0574,X                   ; 04DA7 ×6
  CDAA  BD 83 05  LDA $0583,X                   ; 04DAA ×6
  CDAD  18        CLC                           ; 04DAD ×6
  CDAE  69 0C     ADC #$0C                      ; 04DAE ×6
  CDB0  9D 83 05  STA $0583,X                   ; 04DB0 ×6

loc_B0_CDB3:                    ; from 04d80
  CDB3  4C 99 9E  JMP sub_B0_9E99               ; 04DB3 ×3481
  CDB6  .byte BD D0 03 D0 07 A0 0E 20 80 83 A6 82 20 D5 E2 B9   ; 04DB6
  CDC6  .byte 6C CD 9D D0 03 20 70 CD BD DE 04 C9 B5 90 45 20   ; 04DC6
  CDD6  .byte 7D CD BD 29 05 10 09 20 83 E1 A9 F5 9D D0 03 60   ; 04DD6
  CDE6  .byte BD FC 04 D0 03 20 E7 CC BD ED 04 F0 05 DE ED 04   ; 04DE6
  CDF6  .byte D0 3C BD 83 05 9D 65 05 20 4C 8F BD FC 04 F0 2E   ; 04DF6
  CE06  .byte 20 B1 C7 4C 34 CE A9 80 9D 56 05 FE DE 04 20 8F   ; 04E06
  CE16  .byte 91 A6 82 60 20 0C CE BD DE 04 C9 20 B0 06 A9 0C   ; 04E16
  CE26  .byte 85 B1 D0 46 BD 75 04 D0 05 A9 06 9D C0 04 A9 C0   ; 04E26
  CE36  .byte 20 7A 8E BD 56 05 48 20 AD E4 68 5D 56 05 F0 19   ; 04E36
  CE46  .byte BD ED 04 D0 0F A9 20 9D ED 04 BD 75 04 D0 05 A9   ; 04E46
  CE56  .byte 04 9D C0 04 A9 00 9D FC 04 BD 75 04 D0 0C A5 AF   ; 04E56
  CE66  .byte F0 08 20 42 91 A9 08 9D A1 05 20 66 CF 60 BD D0   ; 04E66
  CE76  .byte 03 D0 4E A4 89 C0 10 C0 50 90 21 A0 01 B9 2A 04   ; 04E76
  CE86  .byte C9 1F F0 14 B9 75 04 D0 0F A9 18 99 CE 05 A9 07   ; 04E86
  CE96  .byte 99 C0 04 A9 1C 99 74 05 88 10 E2 60 8D 01 20 8D   ; 04E96
  CEA6  .byte 00 20 FE D0 03 A9 0C 85 B1 A9 40 9D ED 04 A9 20   ; 04EA6
  CEB6  .byte 85 15 A0 04 A2 03 20 CB FF A0 0E 20 80 83 4C 10   ; 04EB6
  CEC6  .byte 87 BD DE 04 30 03 20 0C CE 20 59 CF 20 7D CD 20   ; 04EC6
  CED6  .byte 70 CD 20 5E CB 20 5F CE BD FC 04 D0 05 20 E7 CC   ; 04ED6
  CEE6  .byte A6 82 BC 92 05 B9 FD 03 FD FD 03 6A 6A 29 40 49   ; 04EE6
  CEF6  .byte 48 9D A2 04 A9 F7 BC 75 04 D0 45 98 9D 65 05 BD   ; 04EF6
  CF06  .byte A1 05 F0 0A BD DE 04 10 05 A9 88 20 DD DA BD FC   ; 04F06
  CF16  .byte 04 F0 08 A9 70 20 48 91 20 B1 C7 20 4A CF B0 1E   ; 04F16
  CF26  .byte A9 00 9D DF 03 A5 26 29 02 09 05 9D C0 04 A5 27   ; 04F26
  CF36  .byte 29 80 9D 56 05 BD 83 05 9D 65 05 20 E9 E2 A9 F8   ; 04F36
  CF46  .byte 9D D0 03 60                                       ; 04F46

sub_B0_CF4A:                    ; from 053ea 053a6
  CF4A  FE DF 03  INC $03DF,X                   ; 04F4A ×894
  CF4D  BD 83 05  LDA $0583,X                   ; 04F4D ×894
  CF50  49 F0     EOR #$F0                      ; 04F50 ×894
  CF52  4A        LSR A                         ; 04F52 ×894
  CF53  69 10     ADC #$10                      ; 04F53 ×894
  CF55  DD DF 03  CMP $03DF,X                   ; 04F55 ×894
  CF58  60        RTS                           ; 04F58 ×894

sub_B0_CF59:                    ; from 053c1
  CF59  BD 65 05  LDA $0565,X                   ; 04F59 ×888
  CF5C  29 FE     AND #$FE                      ; 04F5C ×888
  CF5E  9D 65 05  STA $0565,X                   ; 04F5E ×888
  CF61  A9 FC     LDA #$FC                      ; 04F61 ×888
  CF63  4C 6A D0  JMP sub_B0_D06A               ; 04F63 ×888

sub_B0_CF66:                    ; from 02b2c 0625c 053c7 03fee 06cf1 03ee9
  CF66  BD 56 05  LDA $0556,X                   ; 04F66 ×54257
  CF69  29 7F     AND #$7F                      ; 04F69 ×54257
  CF6B  38        SEC                           ; 04F6B ×54257
  CF6C  E9 31     SBC #$31                      ; 04F6C ×54257
  CF6E  C9 20     CMP #$20                      ; 04F6E ×54257
  CF70  90 1D     BCC loc_B0_CF8F               ; 04F70 ×54257
  CF72  BD A2 04  LDA $04A2,X                   ; 04F72 ×53713
  CF75  29 BF     AND #$BF                      ; 04F75 ×53713
  CF77  9D A2 04  STA $04A2,X                   ; 04F77 ×53713
  CF7A  BD FC 04  LDA $04FC,X                   ; 04F7A ×53713
  CF7D  C9 2C     CMP #$2C                      ; 04F7D ×53713
  CF7F  F0 0E     BEQ loc_B0_CF8F               ; 04F7F ×53713

loc_B0_CF81:                    ; from 016f1
  CF81  BD 56 05  LDA $0556,X                   ; 04F81 ×53968
  CF84  69 2F     ADC #$2F                      ; 04F84 ×53968
  CF86  4A        LSR A                         ; 04F86 ×53968
  CF87  29 40     AND #$40                      ; 04F87 ×53968
  CF89  1D A2 04  ORA $04A2,X                   ; 04F89 ×53968
  CF8C  9D A2 04  STA $04A2,X                   ; 04F8C ×53968

loc_B0_CF8F:                    ; from 04f70
  CF8F  60        RTS                           ; 04F8F ×54512
  CF90  .byte 04 05 04 08 06 07 06 03                           ; 04F90 data, read by 02d85
  CF98  .byte 05 05 08 08 07 07 03 03 11                        ; 04F98
  CFA1  .byte 12 11 10 01 09 01 0A                              ; 04FA1 data, read by 02d93 02d5b
  CFA8  .byte BD 29 05 AA A4 82 B9 65 05 C9 F8 D0 11 BD 1A 05   ; 04FA8
  CFB8  .byte 18 69 08 C9 2F 90 02 A9 2F 9D 1A 05 E6 D0 A9 00   ; 04FB8
  CFC8  .byte 20 DD DA A6 82 4C 80 D0 BC 29 05 20 6D B1 B9 47   ; 04FC8
  CFD8  .byte 05 D0 F2 BD 47 05 F0 05 DE 47 05 D0 AA B9 A2 04   ; 04FD8
  CFE8  .byte 29 40 C9 40 A9 08 90 02 A9 F8 9D ED 04 BC 56 05   ; 04FE8
  CFF8  .byte B9 93 04 F9 75 04 9D 1A 05 A0 02 B9 C1 03 C9 0A   ; 04FF8
  D008  .byte F0 07 C8 C0 0F D0 F4 F0 3C B9 93 04 F9 75 04 FD   ; 05008
  D018  .byte 93 04 69 1A C9 16 B0 EA BD 0B 05 30 E5 B9 84 04   ; 05018
  D028  .byte FD 84 04 69 07 C9 14 B0 D9 98 AA A9 00 85 8B 20   ; 05028
  D038  .byte 6D DD A9 0C A2 0C 20 4A 91 A9 0C 9D 47 05 A9 F8   ; 05038
  D048  .byte 9D 65 05 D0 11 BD FC 04 18 7D 0B 05 30 11 9D FC   ; 05048
  D058  .byte 04 DD 38 05 90 08 A9 00 FD 0B 05 9D 0B 05 60 4C   ; 05058
  D068  .byte A8 CF                                             ; 05068

sub_B0_D06A:                    ; from 020b5 06254 061a9 02fc4 014c3 04f63 (+9)
  D06A  85 15     STA $15                       ; 0506A ×87842
  D06C  BD 65 05  LDA $0565,X                   ; 0506C ×87842
  D06F  C9 FF     CMP #$FF                      ; 0506F ×87842
  D071  F0 0A     BEQ loc_B0_D07D               ; 05071 ×87842
  D073  65 15     ADC $15                       ; 05073 ×86954
  D075  B0 02     BCS loc_B0_D079               ; 05075 ×86954
  D077  A9 00     LDA #$00                      ; 05077 ×38682

loc_B0_D079:                    ; from 05075
  D079  9D 65 05  STA $0565,X                   ; 05079 ×86954
  D07C  60        RTS                           ; 0507C ×86954

loc_B0_D07D:                    ; from 05071
  D07D  4C 4C 8F  JMP sub_B0_8F4C               ; 0507D ×888

sub_B0_D080:                    ; from 0000f 0113f 07aaa 0786c 03c3a 066ce (+17)
  D080  A9 C1     LDA #$C1                      ; 05080 ×2002
  D082  85 19     STA $19                       ; 05082 ×2002
  D084  A9 03     LDA #$03                      ; 05084 ×2002
  D086  85 1A     STA $1A                       ; 05086 ×2002
  D088  A5 82     LDA $82                       ; 05088 ×2002
  D08A  A2 21     LDX #$21                      ; 0508A ×2002

loc_B0_D08C:                    ; from 05098 0509c
  D08C  A8        TAY                           ; 0508C ×66066
  D08D  A9 00     LDA #$00                      ; 0508D ×66066
  D08F  91 19     STA ($19),Y                   ; 0508F ×66066
  D091  CA        DEX                           ; 05091 ×66066
  D092  F0 0A     BEQ loc_B0_D09E               ; 05092 ×66066
  D094  98        TYA                           ; 05094 ×64064
  D095  18        CLC                           ; 05095 ×64064
  D096  69 0F     ADC #$0F                      ; 05096 ×64064
  D098  90 F2     BCC loc_B0_D08C               ; 05098 ×64064
  D09A  E6 1A     INC $1A                       ; 0509A ×2002
  D09C  D0 EE     BNE loc_B0_D08C               ; 0509C ×2002

loc_B0_D09E:                    ; from 05092
  D09E  60        RTS                           ; 0509E ×2002
  D09F  .byte 4C 80 D0 20 66 CF BD 1B 04 C9 D7 F0 4D BD 93 04   ; 0509F
  D0AF  .byte C9 B0 B0 05 BD D0 03 D0 0D A9 01 9D 65 05 A9 00   ; 050AF
  D0BF  .byte 9D 92 05 9D 83 05 20 BE 96 A9 00 9D 75 04 EC C7   ; 050BF
  D0CF  .byte 05 F0 05 EC C8 05 D0 0C A5 0C 29 04 4A 4A 69 BC   ; 050CF
  D0DF  .byte 9D D0 03 60 A9 BD 9D D0 03 BD 65 05 C9 30 90 1F   ; 050DF
  D0EF  .byte BD 83 05 F0 1A DE D0 03 D0 15 A0 E8 20 78 B9 A5   ; 050EF
  D0FF  .byte 0C 18 69 09 29 10 4A 4A 4A 4A 69 BC 9D D0 03 BD   ; 050FF
  D10F  .byte D0 03 C9 BC D0 05 A9 0F 20 0E F1 60               ; 0510F
  D11B  4C 80 D0  JMP sub_B0_D080               ; 0511B ×0

jt_B0_D11E:                    ; from 008ec
  D11E  20 1E EE  JSR sub_B0_EE1E               ; 0511E ×1288
  D121  B0 F8     BCS $D11B                     ; 05121 ×1288
  D123  BD DF 03  LDA $03DF,X                   ; 05123 ×1288
  D126  D0 F3     BNE $D11B                     ; 05126 ×1288
  D128  20 ED C9  JSR sub_B0_C9ED               ; 05128 ×1288
  D12B  F0 49     BEQ loc_B0_D176               ; 0512B ×1288
  D12D  B9 74 05  LDA $0574,Y                   ; 0512D ×643
  D130  29 80     AND #$80                      ; 05130 ×643
  D132  1D 38 05  ORA $0538,X                   ; 05132 ×643
  D135  19 29 05  ORA $0529,Y                   ; 05135 ×643
  D138  19 38 05  ORA $0538,Y                   ; 05138 ×643
  D13B  D0 39     BNE loc_B0_D176               ; 0513B ×643
  D13D  BD A1 05  LDA $05A1,X                   ; 0513D ×643
  D140  F0 05     BEQ loc_B0_D147               ; 05140 ×643
  D142  DE A1 05  DEC $05A1,X                   ; 05142 inferred, not run
  D145  D0 2F     BNE loc_B0_D176               ; 05145 inferred, not run

loc_B0_D147:                    ; from 05140
  D147  A9 08     LDA #$08                      ; 05147 ×643
  D149  20 01 8D  JSR sub_B0_8D01               ; 05149 ×643
  D14C  D0 28     BNE loc_B0_D176               ; 0514C ×643
  D14E  A9 08     LDA #$08                      ; 0514E ×141
  D150  20 4D 8D  JSR sub_B0_8D4D               ; 05150 ×141
  D153  D0 21     BNE loc_B0_D176               ; 05153 ×141
  D155  A9 18     LDA #$18                      ; 05155 ×0
  D157  9D A1 05  STA $05A1,X                   ; 05157 ×0
  D15A  98        TYA                           ; 0515A ×0
  D15B  18        CLC                           ; 0515B ×0
  D15C  69 81     ADC #$81                      ; 0515C ×0
  D15E  9D 38 05  STA $0538,X                   ; 0515E ×0
  D161  8A        TXA                           ; 05161 ×0
  D162  69 81     ADC #$81                      ; 05162 ×0
  D164  99 29 05  STA $0529,Y                   ; 05164 ×0
  D167  B9 B1 04  LDA $04B1,Y                   ; 05167 ×0
  D16A  29 DF     AND #$DF                      ; 0516A ×0
  D16C  99 B1 04  STA $04B1,Y                   ; 0516C ×0
  D16F  98        TYA                           ; 0516F ×0
  D170  AA        TAX                           ; 05170 ×0
  D171  20 99 9E  JSR sub_B0_9E99               ; 05171 ×0
  D174  A6 82     LDX $82                       ; 05174 ×0

loc_B0_D176:                    ; from 0512b 0514c 05153
  D176  BD FD 03  LDA $03FD,X                   ; 05176 ×1288
  D179  38        SEC                           ; 05179 ×1288
  D17A  E5 BC     SBC $BC                       ; 0517A ×1288
  D17C  A8        TAY                           ; 0517C ×1288
  D17D  BD EE 03  LDA $03EE,X                   ; 0517D ×1288
  D180  E5 BD     SBC $BD                       ; 05180 ×1288
  D182  6A        ROR A                         ; 05182 ×1288
  D183  6A        ROR A                         ; 05183 ×1288
  D184  6A        ROR A                         ; 05184 ×1288
  D185  49 40     EOR #$40                      ; 05185 ×1288
  D187  29 40     AND #$40                      ; 05187 ×1288
  D189  9D A2 04  STA $04A2,X                   ; 05189 ×1288
  D18C  F0 04     BEQ loc_B0_D192               ; 0518C ×1288
  D18E  98        TYA                           ; 0518E ×988
  D18F  49 FF     EOR #$FF                      ; 0518F ×988
  D191  A8        TAY                           ; 05191 ×988

loc_B0_D192:                    ; from 0518c
  D192  98        TYA                           ; 05192 ×1288
  D193  10 02     BPL loc_B0_D197               ; 05193 ×1288
  D195  49 FF     EOR #$FF                      ; 05195 ×60

loc_B0_D197:                    ; from 05193
  D197  4A        LSR A                         ; 05197 ×1288
  D198  4A        LSR A                         ; 05198 ×1288
  D199  4A        LSR A                         ; 05199 ×1288
  D19A  9D DE 04  STA $04DE,X                   ; 0519A ×1288
  D19D  A9 BF     LDA #$BF                      ; 0519D ×1288
  D19F  9D D0 03  STA $03D0,X                   ; 0519F ×1288
  D1A2  60        RTS                           ; 051A2 ×1288
  D1A3  .byte 4C 80 D0 20 1E EE C9 10 90 F6 A9 0A 85 B2 20 E9   ; 051A3
  D1B3  .byte 96 BD 83 05 F0 10 DE 83 05 D0 00 A9 01 20 EE 8E   ; 051B3
  D1C3  .byte A9 C4 9D D0 03 60 A9 07 20 0E F1 FE DE 04 D0 F0   ; 051C3
  D1D3  .byte DE 83 05 60 4C 80 D0 BD 1B 04 C9 D8 90 04 A9 05   ; 051D3
  D1E3  .byte 85 B2 BD 47 05 F0 52 A9 00 9D DE 04 9D 83 05 A9   ; 051E3
  D1F3  .byte FC 20 6A D0 20 4C 8F 20 59 9E BD B1 04 29 40 D0   ; 051F3
  D203  .byte 0B 9D C0 04 A9 40 20 E4 8E 4C 0A D3 A9 BD 9D D0   ; 05203
  D213  .byte 03 20 52 8E BD 74 05 F0 13 BD C0 04 C9 FE D0 03   ; 05213
  D223  .byte DE C0 04 FE 47 05 BD A2 04 30 A9 60 BD 47 05 C9   ; 05223
  D233  .byte A0 B0 05 A9 01 9D 47 05 60 BD 83 05 F0 03 20 0B   ; 05233
  D243  .byte E9 BD 1B 04 C9 D8 B0 23 20 1E EE C9 D8 B0 85 FE   ; 05243
  D253  .byte DF 03 BD DF 03 29 3F C9 20 A9 BC 69 00 9D D0 03   ; 05253
  D263  .byte 20 32 F0 BD DF 03 29 3F 4C 51 F0 A9 80 9D 65 05   ; 05263
  D273  .byte BD DE 04 D0 55 A5 0B 29 1F D0 08 BD 83 05 F0 03   ; 05273
  D283  .byte DE 83 05 A5 0B 29 04 D0 03 FE D0 03 A0 D0 BD A2   ; 05283
  D293  .byte 04 30 09 20 1E EE C9 4C 90 09 A0 30 98 20 7A 8E   ; 05293
  D2A3  .byte 4C FF D2 A5 25 7D FD 03 29 7F D0 50 A9 01 9D 83   ; 052A3
  D2B3  .byte 05 20 E9 E2 20 62 BE A9 02 9D C0 04 A9 06 9D A1   ; 052B3
  D2C3  .byte 05 A5 25 29 03 D0 03 5E A1 05 FE DE 04 D0 00 BC   ; 052C3
  D2D3  .byte 92 05 A9 0C 20 4D 8D F0 0B A9 E8 26 8F 90 02 A9   ; 052D3
  D2E3  .byte 18 20 7A 8E BD DE 04 C9 2C 90 11 A5 0B 29 0F D0   ; 052E3
  D2F3  .byte 0B BD 83 05 DD A1 05 F0 03 FE 83 05 20 33 F8 20   ; 052F3
  D303  .byte 66 CF A9 00 9D 75 04 A9 10 BC DE 04 F0 03 4A A9   ; 05303
  D313  .byte 00 25 0B C9 01 A9 BC 69 00 9D D0 03 60 BD DE 04   ; 05313
  D323  .byte D0 11 A9 0C 8D C0 04 8D C1 04 20 26 FE 20 60 F5   ; 05323
  D333  .byte 20 12 A7 FE DE 04 30 01 60 4C AA 87 BD 1A 05 F0   ; 05333
  D343  .byte 04 DE 1A 05 60 20 5E CB BD 83 05 9D D0 03 60      ; 05343
  D352  BD 83 05  LDA $0583,X                   ; 05352 inferred, not run
  D355  F0 04     BEQ $D35B                     ; 05355 inferred, not run
  D357  DE 83 05  DEC $0583,X                   ; 05357 inferred, not run
  D35A  60        RTS                           ; 0535A inferred, not run
  D35B  BD A1 05  LDA $05A1,X                   ; 0535B inferred, not run
  D35E  C9 56     CMP #$56                      ; 0535E inferred, not run
  D360  B0 09     BCS $D36B                     ; 05360 inferred, not run
  D362  A9 01     LDA #$01                      ; 05362 inferred, not run
  D364  18        CLC                           ; 05364 inferred, not run
  D365  20 EE 8E  JSR sub_B0_8EEE               ; 05365 inferred, not run
  D368  4C 0F D4  JMP loc_B0_D40F               ; 05368 inferred, not run
  D36B  FE A1 05  INC $05A1,X                   ; 0536B inferred, not run
  D36E  BD A1 05  LDA $05A1,X                   ; 0536E inferred, not run
  D371  C9 D0     CMP #$D0                      ; 05371 inferred, not run
  D373  F0 06     BEQ $D37B                     ; 05373 inferred, not run
  D375  A9 81     LDA #$81                      ; 05375 inferred, not run
  D377  9D D0 03  STA $03D0,X                   ; 05377 inferred, not run
  D37A  60        RTS                           ; 0537A inferred, not run
  D37B  A5 F4     LDA $F4                       ; 0537B inferred, not run
  D37D  F0 12     BEQ $D391                     ; 0537D inferred, not run
  D37F  DE A1 05  DEC $05A1,X                   ; 0537F inferred, not run
  D382  DE ED 04  DEC $04ED,X                   ; 05382 inferred, not run
  D385  D0 F3     BNE $D37A                     ; 05385 inferred, not run
  D387  A9 00     LDA #$00                      ; 05387 inferred, not run
  D389  8D 01 20  STA $2001                     ; 05389 inferred, not run
  D38C  A9 18     LDA #$18                      ; 0538C inferred, not run
  D38E  4C 15 D5  JMP loc_B0_D515               ; 0538E inferred, not run
  D391  E6 B7     INC $B7                       ; 05391 inferred, not run
  D393  D0 02     BNE $D397                     ; 05393 inferred, not run
  D395  E6 B8     INC $B8                       ; 05395 inferred, not run
  D397  E6 F4     INC $F4                       ; 05397 inferred, not run
  D399  4C 24 DA  JMP $DA24                     ; 05399 inferred, not run

jt_B0_D39C:                    ; from 008ec
  D39C  BD 92 05  LDA $0592,X                   ; 0539C ×3481
  D39F  30 B1     BMI $D352                     ; 0539F ×3481
  D3A1  BD 74 05  LDA $0574,X                   ; 053A1 ×3481
  D3A4  F0 13     BEQ loc_B0_D3B9               ; 053A4 ×3481
  D3A6  20 4A CF  JSR sub_B0_CF4A               ; 053A6 ×6
  D3A9  4A        LSR A                         ; 053A9 ×6
  D3AA  69 10     ADC #$10                      ; 053AA ×6
  D3AC  9D DF 03  STA $03DF,X                   ; 053AC ×6
  D3AF  A9 00     LDA #$00                      ; 053AF ×6
  D3B1  9D A1 05  STA $05A1,X                   ; 053B1 ×6
  D3B4  A9 05     LDA #$05                      ; 053B4 ×6
  D3B6  9D C0 04  STA $04C0,X                   ; 053B6 ×6

loc_B0_D3B9:                    ; from 053a4
  D3B9  20 7D CD  JSR sub_B0_CD7D               ; 053B9 ×3481
  D3BC  BD A1 05  LDA $05A1,X                   ; 053BC ×3481
  D3BF  D0 4E     BNE loc_B0_D40F               ; 053BF ×3481
  D3C1  20 59 CF  JSR sub_B0_CF59               ; 053C1 ×888
  D3C4  20 5E CB  JSR sub_B0_CB5E               ; 053C4 ×888
  D3C7  20 66 CF  JSR sub_B0_CF66               ; 053C7 ×888
  D3CA  BD FC 04  LDA $04FC,X                   ; 053CA ×888
  D3CD  D0 0C     BNE $D3DB                     ; 053CD ×888
  D3CF  A9 0E     LDA #$0E                      ; 053CF ×888
  D3D1  20 39 F7  JSR sub_B0_F739               ; 053D1 ×888
  D3D4  30 08     BMI loc_B0_D3DE               ; 053D4 ×888
  D3D6  A9 8A     LDA #$8A                      ; 053D6 ×0
  D3D8  20 DD DA  JSR sub_B0_DADD               ; 053D8 ×0
  D3DB  4C B1 C7  JMP $C7B1                     ; 053DB ×0

loc_B0_D3DE:                    ; from 053d4
  D3DE  BD 75 04  LDA $0475,X                   ; 053DE ×888
  D3E1  C9 01     CMP #$01                      ; 053E1 ×888
  D3E3  A9 81     LDA #$81                      ; 053E3 ×888
  D3E5  69 00     ADC #$00                      ; 053E5 ×888
  D3E7  9D D0 03  STA $03D0,X                   ; 053E7 ×888
  D3EA  20 4A CF  JSR sub_B0_CF4A               ; 053EA ×888
  D3ED  4A        LSR A                         ; 053ED ×888
  D3EE  69 30     ADC #$30                      ; 053EE ×888
  D3F0  DD DF 03  CMP $03DF,X                   ; 053F0 ×888
  D3F3  B0 10     BCS loc_B0_D405               ; 053F3 ×888
  D3F5  FE A1 05  INC $05A1,X                   ; 053F5 ×12
  D3F8  A9 01     LDA #$01                      ; 053F8 ×12
  D3FA  9D 65 05  STA $0565,X                   ; 053FA ×12
  D3FD  A5 27     LDA $27                       ; 053FD ×12
  D3FF  9D 56 05  STA $0556,X                   ; 053FF ×12
  D402  20 DA D4  JSR sub_B0_D4DA               ; 05402 ×12

loc_B0_D405:                    ; from 053f3
  D405  60        RTS                           ; 05405 ×888

sub_B0_D406:                    ; from 0540f
  D406  A5 0B     LDA $0B                       ; 05406 ×2593
  D408  6A        ROR A                         ; 05408 ×2593
  D409  90 03     BCC loc_B0_D40E               ; 05409 ×2593
  D40B  FE A1 05  INC $05A1,X                   ; 0540B ×1299

loc_B0_D40E:                    ; from 05409
  D40E  60        RTS                           ; 0540E ×2593

loc_B0_D40F:                    ; from 053bf
  D40F  20 06 D4  JSR sub_B0_D406               ; 0540F ×2593
  D412  BD A1 05  LDA $05A1,X                   ; 05412 ×2593
  D415  2A        ROL A                         ; 05415 ×2593
  D416  A9 01     LDA #$01                      ; 05416 ×2593
  D418  90 2B     BCC loc_B0_D445               ; 05418 ×2593
  D41A  BD 65 05  LDA $0565,X                   ; 0541A ×672
  D41D  C9 20     CMP #$20                      ; 0541D ×672
  D41F  A9 FE     LDA #$FE                      ; 0541F ×672
  D421  B0 22     BCS loc_B0_D445               ; 05421 ×672
  D423  A9 00     LDA #$00                      ; 05423 ×3
  D425  9D A1 05  STA $05A1,X                   ; 05425 ×3
  D428  9D DF 03  STA $03DF,X                   ; 05428 ×3
  D42B  9D 65 05  STA $0565,X                   ; 0542B ×3
  D42E  9D C0 04  STA $04C0,X                   ; 0542E ×3
  D431  20 E9 E2  JSR sub_B0_E2E9               ; 05431 ×3
  D434  BC 92 05  LDY $0592,X                   ; 05434 ×3
  D437  B9 FD 03  LDA $03FD,Y                   ; 05437 ×3
  D43A  BD FD 03  LDA $03FD,X                   ; 0543A ×3
  D43D  29 80     AND #$80                      ; 0543D ×3
  D43F  9D 56 05  STA $0556,X                   ; 0543F ×3
  D442  4C AD E4  JMP sub_B0_E4AD               ; 05442 ×3

loc_B0_D445:                    ; from 05418 05421
  D445  7D 65 05  ADC $0565,X                   ; 05445 ×2590
  D448  9D 65 05  STA $0565,X                   ; 05448 ×2590
  D44B  BD 56 05  LDA $0556,X                   ; 0544B ×2590
  D44E  18        CLC                           ; 0544E ×2590
  D44F  7D DE 04  ADC $04DE,X                   ; 0544F ×2590
  D452  9D 56 05  STA $0556,X                   ; 05452 ×2590
  D455  DE ED 04  DEC $04ED,X                   ; 05455 ×2590
  D458  D0 03     BNE loc_B0_D45D               ; 05458 ×2590
  D45A  20 DA D4  JSR sub_B0_D4DA               ; 0545A ×31

loc_B0_D45D:                    ; from 05458
  D45D  BD 92 05  LDA $0592,X                   ; 0545D ×2590
  D460  30 1D     BMI $D47F                     ; 05460 ×2590
  D462  BD 83 05  LDA $0583,X                   ; 05462 ×2590
  D465  38        SEC                           ; 05465 ×2590
  D466  6A        ROR A                         ; 05466 ×2590
  D467  DD 65 05  CMP $0565,X                   ; 05467 ×2590
  D46A  90 03     BCC loc_B0_D46F               ; 0546A ×2590
  D46C  BD 65 05  LDA $0565,X                   ; 0546C ×1647

loc_B0_D46F:                    ; from 0546a
  D46F  20 4F 8F  JSR sub_B0_8F4F               ; 0546F ×2590
  D472  A9 90     LDA #$90                      ; 05472 ×2590
  D474  20 BA F4  JSR sub_B0_F4BA               ; 05474 ×2590
  D477  A9 90     LDA #$90                      ; 05477 ×2590
  D479  9D 1B 04  STA $041B,X                   ; 05479 ×2590
  D47C  20 AD E4  JSR sub_B0_E4AD               ; 0547C ×2590
  D47F  BD 65 05  LDA $0565,X                   ; 0547F ×2590
  D482  C9 40     CMP #$40                      ; 05482 ×2590
  D484  90 02     BCC loc_B0_D488               ; 05484 ×2590
  D486  A9 40     LDA #$40                      ; 05486 ×1810

loc_B0_D488:                    ; from 05484
  D488  20 DC E2  JSR sub_B0_E2DC               ; 05488 ×2590
  D48B  BD 65 05  LDA $0565,X                   ; 0548B ×2590
  D48E  C9 70     CMP #$70                      ; 0548E ×2590
  D490  90 07     BCC loc_B0_D499               ; 05490 ×2590
  D492  C9 90     CMP #$90                      ; 05492 ×1244
  D494  B0 03     BCS loc_B0_D499               ; 05494 ×1244
  D496  A5 0B     LDA $0B                       ; 05496 ×349
  D498  6A        ROR A                         ; 05498 ×349

loc_B0_D499:                    ; from 05490 05494
  D499  A9 82     LDA #$82                      ; 05499 ×2590
  D49B  69 00     ADC #$00                      ; 0549B ×2590
  D49D  9D D0 03  STA $03D0,X                   ; 0549D ×2590
  D4A0  B9 D6 D4  LDA $D4D6,Y                   ; 054A0 ×2590
  D4A3  9D A2 04  STA $04A2,X                   ; 054A3 ×2590
  D4A6  BD 65 05  LDA $0565,X                   ; 054A6 ×2590
  D4A9  C9 26     CMP #$26                      ; 054A9 ×2590
  D4AB  90 28     BCC loc_B0_D4D5               ; 054AB ×2590
  D4AD  A9 0E     LDA #$0E                      ; 054AD ×2122
  D4AF  20 3B F7  JSR sub_B0_F73B               ; 054AF ×2122
  D4B2  30 21     BMI loc_B0_D4D5               ; 054B2 ×2122
  D4B4  B9 FD 03  LDA $03FD,Y                   ; 054B4 ×0
  D4B7  FD FD 03  SBC $03FD,X                   ; 054B7 ×0
  D4BA  29 80     AND #$80                      ; 054BA ×0
  D4BC  9D 56 05  STA $0556,X                   ; 054BC ×0
  D4BF  4A        LSR A                         ; 054BF ×0
  D4C0  09 0A     ORA #$0A                      ; 054C0 ×0
  D4C2  9D A2 04  STA $04A2,X                   ; 054C2 ×0
  D4C5  A9 82     LDA #$82                      ; 054C5 ×0
  D4C7  9D D0 03  STA $03D0,X                   ; 054C7 ×0
  D4CA  98        TYA                           ; 054CA ×0
  D4CB  AA        TAX                           ; 054CB ×0
  D4CC  A9 0A     LDA #$0A                      ; 054CC ×0
  D4CE  20 F9 FB  JSR sub_B0_FBF9               ; 054CE ×0
  D4D1  A9 0C     LDA #$0C                      ; 054D1 ×0
  D4D3  85 DC     STA $DC                       ; 054D3 ×0

loc_B0_D4D5:                    ; from 054b2 054ab
  D4D5  60        RTS                           ; 054D5 ×2590
  D4D6  .byte 0A 0A 4A 4A                                       ; 054D6 data, read by 054a0

sub_B0_D4DA:                    ; from 0545a 05402
  D4DA  A5 25     LDA $25                       ; 054DA ×43
  D4DC  29 07     AND #$07                      ; 054DC ×43
  D4DE  E9 03     SBC #$03                      ; 054DE ×43
  D4E0  9D DE 04  STA $04DE,X                   ; 054E0 ×43
  D4E3  A5 26     LDA $26                       ; 054E3 ×43
  D4E5  29 3F     AND #$3F                      ; 054E5 ×43
  D4E7  69 20     ADC #$20                      ; 054E7 ×43
  D4E9  9D ED 04  STA $04ED,X                   ; 054E9 ×43
  D4EC  BD 39 04  LDA $0439,X                   ; 054EC ×43
  D4EF  29 80     AND #$80                      ; 054EF ×43
  D4F1  1D 2A 04  ORA $042A,X                   ; 054F1 ×43
  D4F4  F0 15     BEQ loc_B0_D50B               ; 054F4 ×43
  D4F6  A0 02     LDY #$02                      ; 054F6 ×12
  D4F8  A9 C0     LDA #$C0                      ; 054F8 ×12
  D4FA  FD 56 05  SBC $0556,X                   ; 054FA ×12
  D4FD  10 04     BPL loc_B0_D503               ; 054FD ×12
  D4FF  A0 FE     LDY #$FE                      ; 054FF ×9
  D501  49 FF     EOR #$FF                      ; 05501 ×9

loc_B0_D503:                    ; from 054fd
  D503  4A        LSR A                         ; 05503 ×12
  D504  9D ED 04  STA $04ED,X                   ; 05504 ×12
  D507  98        TYA                           ; 05507 ×12
  D508  9D DE 04  STA $04DE,X                   ; 05508 ×12

loc_B0_D50B:                    ; from 054f4
  D50B  60        RTS                           ; 0550B ×43

loc_B0_D50C:                    ; from 00323
  D50C  A5 0D     LDA $0D                       ; 0550C ×46
  D50E  D0 02     BNE $D512                     ; 0550E ×46
  D510  A9 01     LDA #$01                      ; 05510 ×46
  D512  0A        ASL A                         ; 05512 ×46
  D513  E9 00     SBC #$00                      ; 05513 ×46

loc_B0_D515:                    ; from 0678b
  D515  85 BD     STA $BD                       ; 05515 ×49
  D517  A5 25     LDA $25                       ; 05517 ×49
  D519  29 03     AND #$03                      ; 05519 ×49
  D51B  85 CE     STA $CE                       ; 0551B ×49
  D51D  A9 00     LDA #$00                      ; 0551D ×49
  D51F  8D 01 20  STA $2001                     ; 0551F ×49
  D522  8D 00 20  STA $2000                     ; 05522 ×49
  D525  85 09     STA $09                       ; 05525 ×49
  D527  AA        TAX                           ; 05527 ×49

loc_B0_D528:                    ; from 0552a
  D528  48        PHA                           ; 05528 ×12544
  D529  CA        DEX                           ; 05529 ×12544
  D52A  D0 FC     BNE loc_B0_D528               ; 0552A ×12544
  D52C  CA        DEX                           ; 0552C ×49
  D52D  9A        TXS                           ; 0552D ×49
  D52E  AD 02 20  LDA $2002                     ; 0552E ×49
  D531  A9 FF     LDA #$FF                      ; 05531 ×49
  D533  85 10     STA $10                       ; 05533 ×49
  D535  A9 F8     LDA #$F8                      ; 05535 ×49
  D537  85 87     STA $87                       ; 05537 ×49
  D539  A2 33     LDX #$33                      ; 05539 ×49
  D53B  A0 06     LDY #$06                      ; 0553B ×49
  D53D  20 CB FF  JSR sub_B0_FFCB               ; 0553D ×49
  D540  A2 4E     LDX #$4E                      ; 05540 ×49
  D542  A0 D5     LDY #$D5                      ; 05542 ×49
  D544  4C EE 86  JMP loc_B0_86EE               ; 05544 ×49

sub_B0_D547:                    ; from 0554e
  D547  A2 12     LDX #$12                      ; 05547 ×5113
  D549  A0 01     LDY #$01                      ; 05549 ×5113
  D54B  4C CB FF  JMP sub_B0_FFCB               ; 0554B ×5113

jt_B0_D54E:                    ; from 07e90
  D54E  20 47 D5  JSR sub_B0_D547               ; 0554E ×5113
  D551  A2 FF     LDX #$FF                      ; 05551 ×5113
  D553  9A        TXS                           ; 05553 ×5113
  D554  A9 F8     LDA #$F8                      ; 05554 ×5113
  D556  85 87     STA $87                       ; 05556 ×5113
  D558  8D 05 20  STA $2005                     ; 05558 ×5113
  D55B  A9 00     LDA #$00                      ; 0555B ×5113
  D55D  20 4D E5  JSR sub_B0_E54D               ; 0555D ×5113
  D560  A5 81     LDA $81                       ; 05560 ×5113
  D562  F0 04     BEQ loc_B0_D568               ; 05562 ×5113
  D564  C6 81     DEC $81                       ; 05564 inferred, not run
  D566  F0 61     BEQ loc_B0_D5C9               ; 05566 inferred, not run

loc_B0_D568:                    ; from 05562
  D568  A5 F4     LDA $F4                       ; 05568 ×5113
  D56A  D0 1A     BNE loc_B0_D586               ; 0556A ×5113
  D56C  20 78 8D  JSR sub_B0_8D78               ; 0556C ×5113
  D56F  A5 2B     LDA $2B                       ; 0556F ×5113
  D571  05 2C     ORA $2C                       ; 05571 ×5113
  D573  F0 11     BEQ loc_B0_D586               ; 05573 ×5113
  D575  A4 BD     LDY $BD                       ; 05575 ×49
  D577  F0 2A     BEQ $D5A3                     ; 05577 ×49
  D579  A2 01     LDX #$01                      ; 05579 ×49

loc_B0_D57B:                    ; from 05584
  D57B  B5 11     LDA $11,X                     ; 0557B ×98
  D57D  30 04     BMI loc_B0_D583               ; 0557D ×98
  D57F  B5 2B     LDA $2B,X                     ; 0557F ×49
  D581  D0 46     BNE loc_B0_D5C9               ; 05581 ×49

loc_B0_D583:                    ; from 0557d
  D583  CA        DEX                           ; 05583 ×49
  D584  10 F5     BPL loc_B0_D57B               ; 05584 ×49

loc_B0_D586:                    ; from 05573
  D586  A2 36     LDX #$36                      ; 05586 ×5064
  D588  A0 06     LDY #$06                      ; 05588 ×5064
  D58A  20 CB FF  JSR sub_B0_FFCB               ; 0558A ×5064
  D58D  A2 11     LDX #$11                      ; 0558D ×5064

loc_B0_D58F:                    ; from 05597
  D58F  BD 00 01  LDA $0100,X                   ; 0558F ×886200
  D592  CA        DEX                           ; 05592 ×886200
  D593  E8        INX                           ; 05593 ×886200
  D594  E8        INX                           ; 05594 ×886200
  D595  E0 C0     CPX #$C0                      ; 05595 ×886200
  D597  D0 F6     BNE loc_B0_D58F               ; 05597 ×886200
  D599  A5 0D     LDA $0D                       ; 05599 ×5064
  D59B  D0 03     BNE loc_B0_D5A0               ; 0559B ×5064
  D59D  20 E7 E5  JSR sub_B0_E5E7               ; 0559D ×5060

loc_B0_D5A0:                    ; from 0559b
  D5A0  4C 71 E5  JMP loc_B0_E571               ; 055A0 ×5064
  D5A3  4C 8F E5  JMP loc_B0_E58F               ; 055A3 inferred, not run
  D5A6  .byte 00 00                                             ; 055A6 data, read by 055ed
  D5A8  .byte 00 00 01 03 02 02 01 03 03 02 01 03               ; 055A8
  D5B4  4C C4 D8  JMP $D8C4                     ; 055B4 inferred, not run
  D5B7  .byte 00 01                                             ; 055B7 data, read by 055e3
  D5B9  .byte 02 03 04 0C 08 06 07 0B 09 0A 05 0D 01            ; 055B9
  D5C6  4C C3 E6  JMP loc_B0_E6C3               ; 055C6 inferred, not run

loc_B0_D5C9:                    ; from 05581
  D5C9  A5 F4     LDA $F4                       ; 055C9 ×49
  D5CB  D0 F9     BNE $D5C6                     ; 055CB ×49
  D5CD  A5 0D     LDA $0D                       ; 055CD ×49
  D5CF  30 E3     BMI $D5B4                     ; 055CF ×49
  D5D1  A5 FE     LDA $FE                       ; 055D1 ×49
  D5D3  49 80     EOR #$80                      ; 055D3 ×49
  D5D5  D0 02     BNE loc_B0_D5D9               ; 055D5 ×49
  D5D7  85 FE     STA $FE                       ; 055D7 inferred, not run

loc_B0_D5D9:                    ; from 055d5
  D5D9  20 2A E6  JSR sub_B0_E62A               ; 055D9 ×49
  D5DC  A9 58     LDA #$58                      ; 055DC ×49
  D5DE  20 F6 B7  JSR sub_B0_B7F6               ; 055DE ×49
  D5E1  A4 0D     LDY $0D                       ; 055E1 ×49
  D5E3  B9 B7 D5  LDA $D5B7,Y                   ; 055E3 ×49
  D5E6  85 10     STA $10                       ; 055E6 ×49
  D5E8  AD 02 20  LDA $2002                     ; 055E8 ×49
  D5EB  A4 10     LDY $10                       ; 055EB ×49
  D5ED  B9 A6 D5  LDA $D5A6,Y                   ; 055ED ×49
  D5F0  85 8D     STA $8D                       ; 055F0 ×49
  D5F2  20 F2 91  JSR sub_B0_91F2               ; 055F2 ×49
  D5F5  A2 39     LDX #$39                      ; 055F5 ×49
  D5F7  A0 06     LDY #$06                      ; 055F7 ×49
  D5F9  20 CB FF  JSR sub_B0_FFCB               ; 055F9 ×49
  D5FC  A2 11     LDX #$11                      ; 055FC ×49
  D5FE  A0 D6     LDY #$D6                      ; 055FE ×49
  D600  4C EE 86  JMP loc_B0_86EE               ; 05600 ×49
  D603  .byte FC FC                                             ; 05603 data, read by 05631
  D605  .byte E4 E8 F0 DC F0 00 FC E4 DC F4 F4 E4               ; 05605

jt_B0_D611:                    ; from 07e90
  D611  20 43 E5  JSR sub_B0_E543               ; 05611 ×4975
  D614  20 78 8D  JSR sub_B0_8D78               ; 05614 ×4975
  D617  A9 10     LDA #$10                      ; 05617 ×4975
  D619  8D 00 20  STA $2000                     ; 05619 ×4975
  D61C  A2 15     LDX #$15                      ; 0561C ×4975
  D61E  A0 01     LDY #$01                      ; 0561E ×4975
  D620  20 CB FF  JSR sub_B0_FFCB               ; 05620 ×4975
  D623  A2 A0     LDX #$A0                      ; 05623 ×4975
  D625  A0 13     LDY #$13                      ; 05625 ×4975
  D627  20 EB FF  JSR sub_B0_FFEB               ; 05627 ×4975
  D62A  86 09     STX $09                       ; 0562A ×4975
  D62C  8E 00 20  STX $2000                     ; 0562C ×4975
  D62F  A4 0D     LDY $0D                       ; 0562F ×4975
  D631  B9 03 D6  LDA $D603,Y                   ; 05631 ×4975
  D634  8D 05 20  STA $2005                     ; 05634 ×4975
  D637  A2 01     LDX #$01                      ; 05637 ×4975

loc_B0_D639:                    ; from 05642
  D639  B5 11     LDA $11,X                     ; 05639 ×9950
  D63B  30 04     BMI loc_B0_D641               ; 0563B ×9950
  D63D  B5 2B     LDA $2B,X                     ; 0563D ×4975
  D63F  D0 0F     BNE loc_B0_D650               ; 0563F ×4975

loc_B0_D641:                    ; from 0563b
  D641  CA        DEX                           ; 05641 ×9901
  D642  10 F5     BPL loc_B0_D639               ; 05642 ×9901
  D644  20 E7 E5  JSR sub_B0_E5E7               ; 05644 ×4926
  D647  A5 0B     LDA $0B                       ; 05647 ×4926
  D649  C9 D7     CMP #$D7                      ; 05649 ×4926
  D64B  F0 03     BEQ loc_B0_D650               ; 0564B ×4926
  D64D  4C 76 E5  JMP loc_B0_E576               ; 0564D ×4926

loc_B0_D650:                    ; from 0563f
  D650  AD 02 20  LDA $2002                     ; 05650 ×49
  D653  A5 10     LDA $10                       ; 05653 ×49
  D655  D0 08     BNE loc_B0_D65F               ; 05655 ×49
  D657  E6 10     INC $10                       ; 05657 ×46
  D659  20 2A E6  JSR sub_B0_E62A               ; 05659 ×46
  D65C  4C C3 E6  JMP loc_B0_E6C3               ; 0565C ×46

loc_B0_D65F:                    ; from 05655
  D65F  4C 36 83  JMP loc_B0_8336               ; 0565F ×3

sub_B0_D662:                    ; from 056bf 0569c
  D662  B9 38 05  LDA $0538,Y                   ; 05662 ×3072
  D665  29 40     AND #$40                      ; 05665 ×3072
  D667  F0 30     BEQ loc_B0_D699               ; 05667 ×3072

sub_B0_D669:                    ; from 05723
  D669  B9 0C 04  LDA $040C,Y                   ; 05669 ×2683
  D66C  C9 05     CMP #$05                      ; 0566C ×2683
  D66E  D0 29     BNE loc_B0_D699               ; 0566E ×2683
  D670  B9 1B 04  LDA $041B,Y                   ; 05670 inferred, not run
  D673  C9 E0     CMP #$E0                      ; 05673 inferred, not run
  D675  90 22     BCC loc_B0_D699               ; 05675 inferred, not run
  D677  B9 EE 03  LDA $03EE,Y                   ; 05677 inferred, not run
  D67A  C9 06     CMP #$06                      ; 0567A inferred, not run
  D67C  D0 1B     BNE loc_B0_D699               ; 0567C inferred, not run
  D67E  B9 FD 03  LDA $03FD,Y                   ; 0567E inferred, not run
  D681  C9 70     CMP #$70                      ; 05681 inferred, not run
  D683  90 14     BCC loc_B0_D699               ; 05683 inferred, not run
  D685  C0 02     CPY #$02                      ; 05685 inferred, not run
  D687  90 06     BCC $D68F                     ; 05687 inferred, not run
  D689  A9 00     LDA #$00                      ; 05689 inferred, not run
  D68B  99 83 05  STA $0583,Y                   ; 0568B inferred, not run
  D68E  60        RTS                           ; 0568E inferred, not run
  D68F  B9 38 05  LDA $0538,Y                   ; 0568F inferred, not run
  D692  29 1F     AND #$1F                      ; 05692 inferred, not run
  D694  AA        TAX                           ; 05694 inferred, not run
  D695  CA        DEX                           ; 05695 inferred, not run
  D696  20 CA B2  JSR $B2CA                     ; 05696 inferred, not run

loc_B0_D699:                    ; from 0566e 05667
  D699  C8        INY                           ; 05699 ×4608
  D69A  C0 02     CPY #$02                      ; 0569A ×4608
  D69C  90 C4     BCC sub_B0_D662               ; 0569C ×4608
  D69E  60        RTS                           ; 0569E ×3072

sub_B0_D69F:                    ; from 056c4
  D69F  A5 0B     LDA $0B                       ; 0569F ×1536
  D6A1  85 15     STA $15                       ; 056A1 ×1536
  D6A3  29 7F     AND #$7F                      ; 056A3 ×1536
  D6A5  C9 40     CMP #$40                      ; 056A5 ×1536
  D6A7  90 02     BCC loc_B0_D6AB               ; 056A7 ×1536
  D6A9  49 7F     EOR #$7F                      ; 056A9 ×686

loc_B0_D6AB:                    ; from 056a7
  D6AB  69 08     ADC #$08                      ; 056AB ×1536
  D6AD  26 15     ROL $15                       ; 056AD ×1536
  D6AF  90 02     BCC loc_B0_D6B3               ; 056AF ×1536
  D6B1  49 FF     EOR #$FF                      ; 056B1 ×699

loc_B0_D6B3:                    ; from 056af
  D6B3  20 DC E2  JSR sub_B0_E2DC               ; 056B3 ×1536
  D6B6  18        CLC                           ; 056B6 ×1536
  D6B7  69 7C     ADC #$7C                      ; 056B7 ×1536
  D6B9  9D D0 03  STA $03D0,X                   ; 056B9 ×1536
  D6BC  60        RTS                           ; 056BC ×1536

jt_B0_D6BD:                    ; from 008ec
  D6BD  A0 00     LDY #$00                      ; 056BD ×1536
  D6BF  20 62 D6  JSR sub_B0_D662               ; 056BF ×1536
  D6C2  A6 82     LDX $82                       ; 056C2 ×1536
  D6C4  20 9F D6  JSR sub_B0_D69F               ; 056C4 ×1536
  D6C7  BD 83 05  LDA $0583,X                   ; 056C7 ×1536
  D6CA  D0 51     BNE loc_B0_D71D               ; 056CA ×1536
  D6CC  A9 18     LDA #$18                      ; 056CC inferred, not run
  D6CE  85 B1     STA $B1                       ; 056CE inferred, not run
  D6D0  BD 65 05  LDA $0565,X                   ; 056D0 inferred, not run
  D6D3  F0 1A     BEQ $D6EF                     ; 056D3 inferred, not run
  D6D5  C9 90     CMP #$90                      ; 056D5 inferred, not run
  D6D7  90 03     BCC $D6DC                     ; 056D7 inferred, not run
  D6D9  FE FD 03  INC $03FD,X                   ; 056D9 inferred, not run
  D6DC  A9 02     LDA #$02                      ; 056DC inferred, not run
  D6DE  20 AE F4  JSR $F4AE                     ; 056DE inferred, not run
  D6E1  A9 E6     LDA #$E6                      ; 056E1 inferred, not run
  D6E3  20 BA F4  JSR sub_B0_F4BA               ; 056E3 inferred, not run
  D6E6  DE 65 05  DEC $0565,X                   ; 056E6 inferred, not run
  D6E9  A9 E6     LDA #$E6                      ; 056E9 inferred, not run
  D6EB  9D 1B 04  STA $041B,X                   ; 056EB inferred, not run
  D6EE  60        RTS                           ; 056EE inferred, not run
  D6EF  FE ED 04  INC $04ED,X                   ; 056EF inferred, not run
  D6F2  30 12     BMI $D706                     ; 056F2 inferred, not run
  D6F4  A5 0B     LDA $0B                       ; 056F4 inferred, not run
  D6F6  29 04     AND #$04                      ; 056F6 inferred, not run
  D6F8  D0 09     BNE $D703                     ; 056F8 inferred, not run
  D6FA  9D C0 04  STA $04C0,X                   ; 056FA inferred, not run
  D6FD  9D D0 03  STA $03D0,X                   ; 056FD inferred, not run
  D700  20 0A BC  JSR loc_B0_BC0A               ; 05700 inferred, not run
  D703  4C 8F 91  JMP $918F                     ; 05703 inferred, not run
  D706  A9 7B     LDA #$7B                      ; 05706 inferred, not run
  D708  9D C1 03  STA $03C1,X                   ; 05708 inferred, not run
  D70B  A9 EE     LDA #$EE                      ; 0570B inferred, not run
  D70D  8D 1B 04  STA $041B                     ; 0570D inferred, not run
  D710  8D 1C 04  STA $041C                     ; 05710 inferred, not run
  D713  A9 50     LDA #$50                      ; 05713 inferred, not run
  D715  9D 56 05  STA $0556,X                   ; 05715 inferred, not run
  D718  A0 0E     LDY #$0E                      ; 05718 inferred, not run
  D71A  4C 80 83  JMP $8380                     ; 0571A inferred, not run

loc_B0_D71D:                    ; from 056ca
  D71D  A5 89     LDA $89                       ; 0571D ×1536
  D71F  85 B1     STA $B1                       ; 0571F ×1536
  D721  A4 82     LDY $82                       ; 05721 ×1536
  D723  20 69 D6  JSR sub_B0_D669               ; 05723 ×1536
  D726  BD 65 05  LDA $0565,X                   ; 05726 ×1536
  D729  D0 0D     BNE loc_B0_D738               ; 05729 ×1536
  D72B  AD 92 05  LDA $0592                     ; 0572B ×937
  D72E  0D 93 05  ORA $0593                     ; 0572E ×937
  D731  F0 4E     BEQ loc_B0_D781               ; 05731 ×937
  D733  A9 A4     LDA #$A4                      ; 05733 ×3
  D735  9D 65 05  STA $0565,X                   ; 05735 ×3

loc_B0_D738:                    ; from 05729
  D738  C9 F0     CMP #$F0                      ; 05738 ×602
  D73A  D0 11     BNE loc_B0_D74D               ; 0573A ×602
  D73C  A5 0B     LDA $0B                       ; 0573C ×229
  D73E  29 07     AND #$07                      ; 0573E ×229
  D740  D0 0E     BNE loc_B0_D750               ; 05740 ×229
  D742  A9 40     LDA #$40                      ; 05742 ×27
  D744  20 4F 8F  JSR sub_B0_8F4F               ; 05744 ×27
  D747  20 53 D7  JSR sub_B0_D753               ; 05747 ×27
  D74A  4C 50 D7  JMP loc_B0_D750               ; 0574A ×27

loc_B0_D74D:                    ; from 0573a
  D74D  FE 65 05  INC $0565,X                   ; 0574D ×373

loc_B0_D750:                    ; from 05740 0574a
  D750  20 4C 8F  JSR sub_B0_8F4C               ; 05750 ×602

sub_B0_D753:                    ; from 05747
  D753  BD 56 05  LDA $0556,X                   ; 05753 ×629
  D756  48        PHA                           ; 05756 ×629
  D757  20 AD E4  JSR sub_B0_E4AD               ; 05757 ×629
  D75A  68        PLA                           ; 0575A ×629
  D75B  5D 56 05  EOR $0556,X                   ; 0575B ×629
  D75E  F0 07     BEQ loc_B0_D767               ; 0575E ×629
  D760  A9 D5     LDA #$D5                      ; 05760 ×6
  D762  9D 65 05  STA $0565,X                   ; 05762 ×6
  D765  E6 33     INC $33                       ; 05765 ×6

loc_B0_D767:                    ; from 0575e
  D767  A9 0E     LDA #$0E                      ; 05767 ×629
  D769  20 DC C3  JSR sub_B0_C3DC               ; 05769 ×629
  D76C  D0 12     BNE loc_B0_D780               ; 0576C ×629
  D76E  A9 0E     LDA #$0E                      ; 0576E ×4
  D770  20 39 8D  JSR sub_B0_8D39               ; 05770 ×4
  D773  D0 0B     BNE loc_B0_D780               ; 05773 ×4
  D775  BD 56 05  LDA $0556,X                   ; 05775 ×4
  D778  59 56 05  EOR $0556,Y                   ; 05778 ×4
  D77B  D0 03     BNE loc_B0_D780               ; 0577B ×4
  D77D  20 7F CA  JSR sub_B0_CA7F               ; 0577D ×3

loc_B0_D780:                    ; from 0576c 05786 0577b
  D780  60        RTS                           ; 05780 ×734

loc_B0_D781:                    ; from 05731
  D781  BD 39 04  LDA $0439,X                   ; 05781 ×934
  D784  C9 2C     CMP #$2C                      ; 05784 ×934
  D786  90 F8     BCC loc_B0_D780               ; 05786 ×934
  D788  DE 39 04  DEC $0439,X                   ; 05788 ×829
  D78B  60        RTS                           ; 0578B ×829
  D78C  .byte A2 3C A0 06 20 CB FF A2 9D A0 D7 4C EE 86 4C 8F   ; 0578C
  D79C  .byte E5 A2 27 A0 06 20 CB FF 20 78 8D A5 29 05 2A D0   ; 0579C
  D7AC  .byte ED A5 0B 6A 90 21 A5 0C C9 60 B0 0A A9 3A A2 0C   ; 057AC
  D7BC  .byte 20 E1 84 4C D3 D7 D0 0F A9 3C A2 0C 20 E1 84 A9   ; 057BC
  D7CC  .byte 3E 20 48 91 4C D3 D7 A9 00 20 84 FF A9 00 85 40   ; 057CC
  D7DC  .byte AD 85 05 30 03 4C 76 E5 4C 60 D8                  ; 057DC

loc_B0_D7E7:                    ; from 00319
  D7E7  A2 3F     LDX #$3F                      ; 057E7 ×46
  D7E9  A0 06     LDY #$06                      ; 057E9 ×46
  D7EB  20 CB FF  JSR sub_B0_FFCB               ; 057EB ×46
  D7EE  A2 F8     LDX #$F8                      ; 057EE ×46
  D7F0  A0 D7     LDY #$D7                      ; 057F0 ×46
  D7F2  4C EE 86  JMP loc_B0_86EE               ; 057F2 ×46

loc_B0_D7F5:                    ; from 05811
  D7F5  4C 8F E5  JMP loc_B0_E58F               ; 057F5 ×46

jt_B0_D7F8:                    ; from 07e90
  D7F8  A2 27     LDX #$27                      ; 057F8 ×4370
  D7FA  A0 06     LDY #$06                      ; 057FA ×4370
  D7FC  20 CB FF  JSR sub_B0_FFCB               ; 057FC ×4370
  D7FF  A5 0C     LDA $0C                       ; 057FF ×4370
  D801  C9 10     CMP #$10                      ; 05801 ×4370
  D803  D0 05     BNE loc_B0_D80A               ; 05803 ×4370
  D805  AD 3B 04  LDA $043B                     ; 05805 ×92
  D808  30 15     BMI $D81F                     ; 05808 ×92

loc_B0_D80A:                    ; from 05803
  D80A  20 78 8D  JSR sub_B0_8D78               ; 0580A ×4370
  D80D  A5 29     LDA $29                       ; 0580D ×4370
  D80F  05 2A     ORA $2A                       ; 0580F ×4370
  D811  D0 E2     BNE loc_B0_D7F5               ; 05811 ×4370
  D813  A9 00     LDA #$00                      ; 05813 ×4324
  D815  20 84 FF  JSR sub_B0_FF84               ; 05815 ×4324
  D818  A9 00     LDA #$00                      ; 05818 ×4324
  D81A  85 40     STA $40                       ; 0581A ×4324
  D81C  4C 71 E5  JMP loc_B0_E571               ; 0581C ×4324
  D81F  A2 42     LDX #$42                      ; 0581F inferred, not run
  D821  A0 06     LDY #$06                      ; 05821 inferred, not run
  D823  20 CB FF  JSR sub_B0_FFCB               ; 05823 inferred, not run
  D826  A9 40     LDA #$40                      ; 05826 inferred, not run
  D828  20 48 91  JSR sub_B0_9148               ; 05828 inferred, not run
  D82B  A2 32     LDX #$32                      ; 0582B inferred, not run
  D82D  A0 D8     LDY #$D8                      ; 0582D inferred, not run
  D82F  4C EE 86  JMP loc_B0_86EE               ; 0582F inferred, not run
  D832  .byte AD 02 20 A9 F0 8D 05 20 85 87 A9 00 20 4D E5 20   ; 05832
  D842  .byte 78 8D A5 29 05 2A D0 0C A5 0B C9 64 90 03 4C 8C   ; 05842
  D852  .byte D7 4C 71 E5 4C 8F E5                              ; 05852
  D859  A2 45     LDX #$45                      ; 05859 inferred, not run
  D85B  A0 06     LDY #$06                      ; 0585B inferred, not run
  D85D  4C CB FF  JMP sub_B0_FFCB               ; 0585D inferred, not run
  D860  .byte 20 59 D8                                          ; 05860
  D863  A2 00     LDX #$00                      ; 05863 inferred, not run
  D865  8A        TXA                           ; 05865 inferred, not run
  D866  48        PHA                           ; 05866 inferred, not run
  D867  CA        DEX                           ; 05867 inferred, not run
  D868  D0 FC     BNE $D866                     ; 05868 inferred, not run
  D86A  CA        DEX                           ; 0586A inferred, not run
  D86B  9A        TXS                           ; 0586B inferred, not run
  D86C  A9 01     LDA #$01                      ; 0586C inferred, not run
  D86E  8D A1 05  STA $05A1                     ; 0586E inferred, not run
  D871  A9 18     LDA #$18                      ; 05871 inferred, not run
  D873  20 48 91  JSR sub_B0_9148               ; 05873 inferred, not run
  D876  A2 7D     LDX #$7D                      ; 05876 inferred, not run
  D878  A0 D8     LDY #$D8                      ; 05878 inferred, not run
  D87A  4C EE 86  JMP loc_B0_86EE               ; 0587A inferred, not run
  D87D  .byte A5 F4 F0 07 AD 65 05 C9 68 B0 2A A2 0F A0 06 20   ; 0587D
  D88D  .byte CB FF A5 F4 D0 11 20 78 8D A5 29 05 2A D0 BA A9   ; 0588D
  D89D  .byte 00 85 40 A5 24 F0 03 4C 10 87 A9 FF 85 0D A9 00   ; 0589D
  D8AD  .byte 85 BD 4C 1B D5 20 43 E5 20 78 8D A5 2B 05 2C D0   ; 058AD
  D8BD  .byte 03 4C 13 87 4C A0 DA                              ; 058BD
  D8C4  A9 00     LDA #$00                      ; 058C4 inferred, not run
  D8C6  8D 00 20  STA $2000                     ; 058C6 inferred, not run
  D8C9  85 09     STA $09                       ; 058C9 inferred, not run
  D8CB  8D 01 20  STA $2001                     ; 058CB inferred, not run
  D8CE  AA        TAX                           ; 058CE inferred, not run
  D8CF  48        PHA                           ; 058CF inferred, not run
  D8D0  CA        DEX                           ; 058D0 inferred, not run
  D8D1  D0 FC     BNE $D8CF                     ; 058D1 inferred, not run
  D8D3  CA        DEX                           ; 058D3 inferred, not run
  D8D4  9A        TXS                           ; 058D4 inferred, not run
  D8D5  A2 4B     LDX #$4B                      ; 058D5 inferred, not run
  D8D7  A0 06     LDY #$06                      ; 058D7 inferred, not run
  D8D9  20 CB FF  JSR sub_B0_FFCB               ; 058D9 inferred, not run
  D8DC  A2 E6     LDX #$E6                      ; 058DC inferred, not run
  D8DE  A0 D8     LDY #$D8                      ; 058DE inferred, not run
  D8E0  4C EE 86  JMP loc_B0_86EE               ; 058E0 inferred, not run
  D8E3  .byte 4C 8F E5 20 47 D5 A9 F0 8D 05 20 85 87 A9 00 20   ; 058E3
  D8F3  .byte 4D E5 20 78 8D A5 29 05 2A D0 E5 A2 4E A5 0C C9   ; 058F3
  D903  .byte C0 F0 08 A0 06 20 CB FF 4C 71 E5 4C 11 D9 A9 00   ; 05903
  D913  .byte 8D 86 04 8D 00 20 85 09 8D 01 20 AA 48 CA D0 FC   ; 05913
  D923  .byte CA 9A A2 51 A0 06 20 CB FF A9 54 20 48 91 A9 40   ; 05923
  D933  .byte 85 C9 A2 46 A0 D9 4C EE 86 00 00 01 02 04 02 02   ; 05933
  D943  .byte 08 09 08 AD 86 04 F0 03 4C D1 D9 A9 18 85 09 A5   ; 05943
  D953  .byte 0B C9 90 90 03 8D 86 04 4A 4A 4A 4A A8 B9 3C D9   ; 05953
  D963  .byte 25 0B D0 6A 85 CB 20 B2 E7 A9 1F 8D 06 20 A9 D0   ; 05963
  D973  .byte 8D 06 20 A2 30 BD 00 06 8D 07 20 CA D0 F7 A9 18   ; 05973
  D983  .byte 8D 01 20 8E 05 20 8E 05 20 86 87 A9 10 20 84 FF   ; 05983
  D993  .byte A2 30 20 43 87 9D 00 06 CA D0 F7 20 78 8D A5 29   ; 05993
  D9A3  .byte 05 2A D0 27 A5 0B 29 03 D0 09 A5 C9 38 E9 10 90   ; 059A3
  D9B3  .byte 02 85 C9 A5 C9 D0 0D A9 52 A2 15 85 39 A9 10 A0   ; 059B3
  D9C3  .byte 13 20 CD FF A9 00 85 40 4C 76 E5 4C 8F E5 20 47   ; 059C3
  D9D3  .byte D5 A9 F0 8D 05 20 85 87 A9 00 8D 05 20 A9 08 8D   ; 059D3
  D9E3  .byte 00 20 A9 18 8D 01 20 20 78 8D A5 29 05 2A D0 DB   ; 059E3
  D9F3  .byte A2 54 A0 06 20 CB FF A2 5C A0 0D 20 EB FF A9 18   ; 059F3
  DA03  .byte 8D 00 20 A2 4E A0 06 20 CB FF A5 81 F0 04 C6 81   ; 05A03
  DA13  .byte F0 0C A9 00 20 84 FF A9 00 85 40 4C 76 E5 4C 24   ; 05A13
  DA23  .byte DA                                                ; 05A23
  DA24  A9 00     LDA #$00                      ; 05A24 inferred, not run
  DA26  8D 00 20  STA $2000                     ; 05A26 inferred, not run
  DA29  85 09     STA $09                       ; 05A29 inferred, not run
  DA2B  8D 01 20  STA $2001                     ; 05A2B inferred, not run
  DA2E  AA        TAX                           ; 05A2E inferred, not run
  DA2F  48        PHA                           ; 05A2F inferred, not run
  DA30  CA        DEX                           ; 05A30 inferred, not run
  DA31  D0 FC     BNE $DA2F                     ; 05A31 inferred, not run
  DA33  CA        DEX                           ; 05A33 inferred, not run
  DA34  9A        TXS                           ; 05A34 inferred, not run
  DA35  A5 F4     LDA $F4                       ; 05A35 inferred, not run
  DA37  D0 0B     BNE $DA44                     ; 05A37 inferred, not run
  DA39  A5 0D     LDA $0D                       ; 05A39 inferred, not run
  DA3B  C9 0D     CMP #$0D                      ; 05A3B inferred, not run
  DA3D  D0 05     BNE $DA44                     ; 05A3D inferred, not run
  DA3F  85 10     STA $10                       ; 05A3F inferred, not run
  DA41  4C 36 83  JMP loc_B0_8336               ; 05A41 inferred, not run
  DA44  A2 57     LDX #$57                      ; 05A44 inferred, not run
  DA46  A0 06     LDY #$06                      ; 05A46 inferred, not run
  DA48  20 CB FF  JSR sub_B0_FFCB               ; 05A48 inferred, not run
  DA4B  A2 55     LDX #$55                      ; 05A4B inferred, not run
  DA4D  A0 DA     LDY #$DA                      ; 05A4D inferred, not run
  DA4F  4C EE 86  JMP loc_B0_86EE               ; 05A4F inferred, not run
  DA52  .byte 4C 8F E5 20 47 D5 A9 F0 8D 05 20 85 87 A9 00 20   ; 05A52
  DA62  .byte 4D E5 A2 5A A0 06 20 CB FF 20 78 8D A5 BD C9 1B   ; 05A62
  DA72  .byte F0 1C A5 0D F0 12 30 10 A5 2B 05 2C D0 2A A5 81   ; 05A72
  DA82  .byte F0 12 C6 81 F0 22 D0 0C A5 29 05 2A D0 C2 A5 0C   ; 05A82
  DA92  .byte C9 F0 F0 0A A2 4E A0 06 20 CB FF 4C 71 E5 A9 00   ; 05A92
  DAA2  .byte 8D 01 20                                          ; 05AA2
  DAA5  A9 01     LDA #$01                      ; 05AA5 inferred, not run
  DAA7  4C AB 82  JMP $82AB                     ; 05AA7 inferred, not run
  DAAA  .byte A9 00 8D 01 20 A4 F4 F0 0A 8D 00 20 A9 0D 85 10   ; 05AAA
  DABA  .byte 4C 39 83 4C 0C D5 A2 00 A9 F8 9D 00 02 E8 D0 FA   ; 05ABA
  DACA  .byte 60 20 C0 DA 8E 03 20 A9 02 8D 14 40 60            ; 05ACA

sub_B0_DAD7:                    ; from 05ada 011f7
  DAD7  AD 02 20  LDA $2002                     ; 05AD7 ×190454
  DADA  10 FB     BPL sub_B0_DAD7               ; 05ADA ×190454
  DADC  60        RTS                           ; 05ADC ×52

sub_B0_DADD:                    ; from 02690 05b0b 06438 0153f 06d78 03f9a (+2)
  DADD  9D FC 04  STA $04FC,X                   ; 05ADD ×3638
  DAE0  A9 00     LDA #$00                      ; 05AE0 ×3638
  DAE2  9D 0B 05  STA $050B,X                   ; 05AE2 ×3638
  DAE5  BD B1 04  LDA $04B1,X                   ; 05AE5 ×3638
  DAE8  29 7F     AND #$7F                      ; 05AE8 ×3638
  DAEA  9D B1 04  STA $04B1,X                   ; 05AEA ×3638
  DAED  BD A2 04  LDA $04A2,X                   ; 05AED ×3638
  DAF0  29 EB     AND #$EB                      ; 05AF0 ×3638
  DAF2  9D A2 04  STA $04A2,X                   ; 05AF2 ×3638
  DAF5  60        RTS                           ; 05AF5 ×3638

sub_B0_DAF6:                    ; from 026b6 06261 014cd 06d46 03eee 04819
  DAF6  25 0B     AND $0B                       ; 05AF6 ×49160
  DAF8  D0 03     BNE loc_B0_DAFD               ; 05AF8 ×49160
  DAFA  FE 0B 05  INC $050B,X                   ; 05AFA ×23919

loc_B0_DAFD:                    ; from 05af8
  DAFD  BC FC 04  LDY $04FC,X                   ; 05AFD ×49160
  DB00  84 15     STY $15                       ; 05B00 ×49160
  DB02  A0 FF     LDY #$FF                      ; 05B02 ×49160

loc_B0_DB04:                    ; from 05c42 05b8c 05c07 05ed4 05f80 05f21 (+2)
  DB04  A9 03     LDA #$03                      ; 05B04 ×61196
  DB06  20 6E FF  JSR sub_B0_FF6E               ; 05B06 ×61196
  DB09  A5 78     LDA $78                       ; 05B09 ×61196
  DB0B  F0 D0     BEQ sub_B0_DADD               ; 05B0B ×61196
  DB0D  C9 E0     CMP #$E0                      ; 05B0D ×60717
  DB0F  90 18     BCC loc_B0_DB29               ; 05B0F ×60717
  DB11  29 1F     AND #$1F                      ; 05B11 ×12033
  DB13  86 15     STX $15                       ; 05B13 ×12033
  DB15  0A        ASL A                         ; 05B15 ×12033
  DB16  AA        TAX                           ; 05B16 ×12033
  DB17  BD 3A DB  LDA $DB3A,X                   ; 05B17 ×12033
  DB1A  85 1B     STA $1B                       ; 05B1A ×12033
  DB1C  BD 3B DB  LDA $DB3B,X                   ; 05B1C ×12033
  DB1F  85 1C     STA $1C                       ; 05B1F ×12033
  DB21  A6 15     LDX $15                       ; 05B21 ×12033
  DB23  C8        INY                           ; 05B23 ×12033
  DB24  84 22     STY $22                       ; 05B24 ×12033
  DB26  6C 1B 00  JMP ($001B)                   ; 05B26 ×12033

loc_B0_DB29:                    ; from 05b0f
  DB29  E0 02     CPX #$02                      ; 05B29 ×48684
  DB2B  B0 05     BCS loc_B0_DB32               ; 05B2B ×48684
  DB2D  9D B5 03  STA $03B5,X                   ; 05B2D ×42842
  DB30  90 03     BCC loc_B0_DB35               ; 05B30 ×42842

loc_B0_DB32:                    ; from 05b2b
  DB32  9D D0 03  STA $03D0,X                   ; 05B32 ×5842

loc_B0_DB35:                    ; from 05b30
  DB35  98        TYA                           ; 05B35 ×48684
  DB36  9D 0B 05  STA $050B,X                   ; 05B36 ×48684
  DB39  60        RTS                           ; 05B39 ×48684
  DB3A  .byte 68 DB EF DB 20 DC AD DD FB DD 3D DE CC DE         ; 05B3A data, read by 05b17 05b1c
  DB48  .byte A4 DB                                             ; 05B48
  DB4A  .byte B0 DB                                             ; 05B4A data, read by 05b17 05b1c
  DB4C  .byte B8 DB 8F DB 0A DC                                 ; 05B4C
  DB52  .byte 94 DB DE DE                                       ; 05B52 data, read by 05b17 05b1c
  DB56  .byte D7 DE 02 DF 0A DF                                 ; 05B56
  DB5C  .byte 12 DF                                             ; 05B5C data, read by 05b17 05b1c
  DB5E  .byte 24 DF 6D DF                                       ; 05B5E
  DB62  .byte EF DF                                             ; 05B62 data, read by 05b17 05b1c
  DB64  .byte E6 DF 9C DB                                       ; 05B64

jt_B0_DB68:                    ; from 05b26
  DB68  A5 10     LDA $10                       ; 05B68 ×2942
  DB6A  C9 02     CMP #$02                      ; 05B6A ×2942
  DB6C  F0 0F     BEQ loc_B0_DB7D               ; 05B6C ×2942
  DB6E  C9 05     CMP #$05                      ; 05B6E ×2829
  DB70  D0 04     BNE loc_B0_DB76               ; 05B70 ×2829
  DB72  E0 02     CPX #$02                      ; 05B72 ×94
  DB74  B0 07     BCS loc_B0_DB7D               ; 05B74 ×94

loc_B0_DB76:                    ; from 05b70
  DB76  BD 75 04  LDA $0475,X                   ; 05B76 ×2819
  DB79  C9 08     CMP #$08                      ; 05B79 ×2819
  DB7B  B0 05     BCS loc_B0_DB82               ; 05B7B ×2819

loc_B0_DB7D:                    ; from 05b6c 05b74
  DB7D  A5 79     LDA $79                       ; 05B7D ×2709
  DB7F  9D 65 05  STA $0565,X                   ; 05B7F ×2709

loc_B0_DB82:                    ; from 05b7b
  DB82  C8        INY                           ; 05B82 ×2942
  DB83  BD A2 04  LDA $04A2,X                   ; 05B83 ×2942
  DB86  0A        ASL A                         ; 05B86 ×2942
  DB87  29 80     AND #$80                      ; 05B87 ×2942

loc_B0_DB89:                    ; from 05b99 05bb5
  DB89  9D 56 05  STA $0556,X                   ; 05B89 ×2981
  DB8C  4C 04 DB  JMP loc_B0_DB04               ; 05B8C ×2981
  DB8F  .byte A5 79 C8 D0 F5                                    ; 05B8F

jt_B0_DB94:                    ; from 05b26
  DB94  BD 56 05  LDA $0556,X                   ; 05B94 ×38
  DB97  49 80     EOR #$80                      ; 05B97 ×38
  DB99  4C 89 DB  JMP loc_B0_DB89               ; 05B99 ×38
  DB9C  .byte BD FD 03 29 80 4C 89 DB A5 79 18 7D 65 05 90 D3   ; 05B9C
  DBAC  .byte A9 F0 D0 CF                                       ; 05BAC

jt_B0_DBB0:                    ; from 05b26
  DBB0  BD 56 05  LDA $0556,X                   ; 05BB0 ×1
  DBB3  49 80     EOR #$80                      ; 05BB3 ×1
  DBB5  4C 89 DB  JMP loc_B0_DB89               ; 05BB5 ×1
  DBB8  .byte BD B9 03 48 20 58 FE 68 9D 56 05 A5 15 9D 29 05   ; 05BB8
  DBC8  .byte A9 40 9D 38 05 A9 00 9D 47 05 9D FC 04 9D 75 04   ; 05BC8
  DBD8  .byte A9 06 9D 0B 05 A9 09 9D C1 03 9D 93 04 A9 FF 9D   ; 05BD8
  DBE8  .byte 65 05 A6 15 4C 04 DB                              ; 05BE8

jt_B0_DBEF:                    ; from 05b26
  DBEF  A5 10     LDA $10                       ; 05BEF ×2870
  DBF1  C9 02     CMP #$02                      ; 05BF1 ×2870
  DBF3  F0 07     BEQ $DBFC                     ; 05BF3 ×2870
  DBF5  BD 75 04  LDA $0475,X                   ; 05BF5 ×2870
  DBF8  C9 08     CMP #$08                      ; 05BF8 ×2870
  DBFA  B0 0A     BCS loc_B0_DC06               ; 05BFA ×2870
  DBFC  A5 79     LDA $79                       ; 05BFC ×2623
  DBFE  9D C0 04  STA $04C0,X                   ; 05BFE ×2623
  DC01  A9 00     LDA #$00                      ; 05C01 ×2623
  DC03  9D CF 04  STA $04CF,X                   ; 05C03 ×2623

loc_B0_DC06:                    ; from 05bfa
  DC06  C8        INY                           ; 05C06 ×2870
  DC07  4C 04 DB  JMP loc_B0_DB04               ; 05C07 ×2870
  DC0A  .byte BD 84 04 10 04 C9 88 90 0A 29 80 9D 56 05 A9 30   ; 05C0A
  DC1A  .byte 9D 65 05 4C 04 DB                                 ; 05C1A

jt_B0_DC20:                    ; from 05b26
  DC20  E6 22     INC $22                       ; 05C20 ×3077
  DC22  BD B1 04  LDA $04B1,X                   ; 05C22 ×3077
  DC25  30 18     BMI $DC3F                     ; 05C25 ×3077
  DC27  A5 79     LDA $79                       ; 05C27 ×3077
  DC29  2A        ROL A                         ; 05C29 ×3077
  DC2A  2A        ROL A                         ; 05C2A ×3077
  DC2B  2A        ROL A                         ; 05C2B ×3077
  DC2C  29 03     AND #$03                      ; 05C2C ×3077
  DC2E  85 DE     STA $DE                       ; 05C2E ×3077
  DC30  A5 79     LDA $79                       ; 05C30 ×3077
  DC32  29 3F     AND #$3F                      ; 05C32 ×3077
  DC34  85 8C     STA $8C                       ; 05C34 ×3077
  DC36  0A        ASL A                         ; 05C36 ×3077
  DC37  0A        ASL A                         ; 05C37 ×3077
  DC38  65 8C     ADC $8C                       ; 05C38 ×3077
  DC3A  85 8C     STA $8C                       ; 05C3A ×3077
  DC3C  20 45 DC  JSR sub_B0_DC45               ; 05C3C ×3077
  DC3F  A4 22     LDY $22                       ; 05C3F ×3077
  DC41  C8        INY                           ; 05C41 ×3077
  DC42  4C 04 DB  JMP loc_B0_DB04               ; 05C42 ×3077

sub_B0_DC45:                    ; from 05c3c
  DC45  BD B1 04  LDA $04B1,X                   ; 05C45 ×3077
  DC48  29 20     AND #$20                      ; 05C48 ×3077
  DC4A  0A        ASL A                         ; 05C4A ×3077
  DC4B  09 03     ORA #$03                      ; 05C4B ×3077
  DC4D  20 F7 8A  JSR sub_B0_8AF7               ; 05C4D ×3077
  DC50  10 01     BPL loc_B0_DC53               ; 05C50 ×3077
  DC52  60        RTS                           ; 05C52 ×2696

loc_B0_DC53:                    ; from 05c50
  DC53  A5 10     LDA $10                       ; 05C53 ×381
  DC55  C9 02     CMP #$02                      ; 05C55 ×381
  DC57  F0 08     BEQ $DC61                     ; 05C57 ×381
  DC59  BD B1 04  LDA $04B1,X                   ; 05C59 ×381
  DC5C  09 80     ORA #$80                      ; 05C5C ×381
  DC5E  9D B1 04  STA $04B1,X                   ; 05C5E ×381
  DC61  A9 00     LDA #$00                      ; 05C61 ×381
  DC63  99 FC 04  STA $04FC,Y                   ; 05C63 ×381
  DC66  99 0B 05  STA $050B,Y                   ; 05C66 ×381
  DC69  B9 1A 05  LDA $051A,Y                   ; 05C69 ×381
  DC6C  C9 10     CMP #$10                      ; 05C6C ×381
  DC6E  B0 13     BCS loc_B0_DC83               ; 05C6E ×381
  DC70  BD FC 04  LDA $04FC,X                   ; 05C70 ×165
  DC73  C9 16     CMP #$16                      ; 05C73 ×165
  DC75  D0 0C     BNE loc_B0_DC83               ; 05C75 ×165
  DC77  A9 0F     LDA #$0F                      ; 05C77 inferred, not run
  DC79  85 8C     STA $8C                       ; 05C79 inferred, not run
  DC7B  A9 36     LDA #$36                      ; 05C7B inferred, not run
  DC7D  85 7A     STA $7A                       ; 05C7D inferred, not run
  DC7F  A9 36     LDA #$36                      ; 05C7F inferred, not run
  DC81  85 22     STA $22                       ; 05C81 inferred, not run

loc_B0_DC83:                    ; from 05c6e 05c75
  DC83  A5 8C     LDA $8C                       ; 05C83 ×381
  DC85  A4 21     LDY $21                       ; 05C85 ×381
  DC87  C0 02     CPY #$02                      ; 05C87 ×381
  DC89  B0 02     BCS loc_B0_DC8D               ; 05C89 ×381
  DC8B  69 5A     ADC #$5A                      ; 05C8B ×159

loc_B0_DC8D:                    ; from 05c89
  DC8D  20 FF DF  JSR sub_B0_DFFF               ; 05C8D ×381
  DC90  C9 40     CMP #$40                      ; 05C90 ×381
  DC92  90 1A     BCC loc_B0_DCAE               ; 05C92 ×381
  DC94  C9 AF     CMP #$AF                      ; 05C94 ×74
  DC96  F0 16     BEQ loc_B0_DCAE               ; 05C96 ×74
  DC98  A9 40     LDA #$40                      ; 05C98 ×74
  DC9A  19 B1 04  ORA $04B1,Y                   ; 05C9A ×74
  DC9D  99 B1 04  STA $04B1,Y                   ; 05C9D ×74
  DCA0  B9 29 05  LDA $0529,Y                   ; 05CA0 ×74
  DCA3  10 09     BPL loc_B0_DCAE               ; 05CA3 ×74
  DCA5  29 1F     AND #$1F                      ; 05CA5 inferred, not run
  DCA7  AA        TAX                           ; 05CA7 inferred, not run
  DCA8  CA        DEX                           ; 05CA8 inferred, not run
  DCA9  20 C3 DE  JSR sub_B0_DEC3               ; 05CA9 inferred, not run
  DCAC  A6 82     LDX $82                       ; 05CAC inferred, not run

loc_B0_DCAE:                    ; from 05c92 05ca3
  DCAE  A5 8B     LDA $8B                       ; 05CAE ×381
  DCB0  F0 03     BEQ loc_B0_DCB5               ; 05CB0 ×381
  DCB2  20 22 DD  JSR sub_B0_DD22               ; 05CB2 ×62

loc_B0_DCB5:                    ; from 05cb0
  DCB5  A5 8C     LDA $8C                       ; 05CB5 ×381
  DCB7  C9 37     CMP #$37                      ; 05CB7 ×381
  DCB9  F0 61     BEQ loc_B0_DD1C               ; 05CB9 ×381
  DCBB  A9 08     LDA #$08                      ; 05CBB ×381
  DCBD  85 DC     STA $DC                       ; 05CBD ×381
  DCBF  A4 22     LDY $22                       ; 05CBF ×381
  DCC1  A5 7A     LDA $7A                       ; 05CC1 ×381
  DCC3  29 F0     AND #$F0                      ; 05CC3 ×381
  DCC5  4A        LSR A                         ; 05CC5 ×381
  DCC6  4A        LSR A                         ; 05CC6 ×381
  DCC7  85 DC     STA $DC                       ; 05CC7 ×381
  DCC9  A4 21     LDY $21                       ; 05CC9 ×381
  DCCB  B9 C1 03  LDA $03C1,Y                   ; 05CCB ×381
  DCCE  C9 38     CMP #$38                      ; 05CCE ×381
  DCD0  F0 4A     BEQ loc_B0_DD1C               ; 05CD0 ×381
  DCD2  D9 74 05  CMP $0574,Y                   ; 05CD2 ×381
  DCD5  B0 1A     BCS loc_B0_DCF1               ; 05CD5 ×381
  DCD7  C9 79     CMP #$79                      ; 05CD7 ×45
  DCD9  90 16     BCC loc_B0_DCF1               ; 05CD9 ×45
  DCDB  F0 0B     BEQ $DCE8                     ; 05CDB ×6
  DCDD  C9 7B     CMP #$7B                      ; 05CDD ×6
  DCDF  F0 07     BEQ $DCE8                     ; 05CDF ×6
  DCE1  B9 83 05  LDA $0583,Y                   ; 05CE1 ×6
  DCE4  C9 F0     CMP #$F0                      ; 05CE4 ×6
  DCE6  90 24     BCC loc_B0_DD0C               ; 05CE6 ×6
  DCE8  A9 46     LDA #$46                      ; 05CE8 inferred, not run
  DCEA  20 F6 B7  JSR sub_B0_B7F6               ; 05CEA inferred, not run
  DCED  A9 09     LDA #$09                      ; 05CED inferred, not run
  DCEF  D0 21     BNE $DD12                     ; 05CEF inferred, not run

loc_B0_DCF1:                    ; from 05cd5 05cd9
  DCF1  C9 14     CMP #$14                      ; 05CF1 ×375
  DCF3  D0 17     BNE loc_B0_DD0C               ; 05CF3 ×375
  DCF5  E0 02     CPX #$02                      ; 05CF5 ×0
  DCF7  B0 13     BCS loc_B0_DD0C               ; 05CF7 ×0
  DCF9  B9 A1 05  LDA $05A1,Y                   ; 05CF9 ×0
  DCFC  69 01     ADC #$01                      ; 05CFC ×0
  DCFE  85 7A     STA $7A                       ; 05CFE ×0
  DD00  99 A1 05  STA $05A1,Y                   ; 05D00 ×0
  DD03  C9 0A     CMP #$0A                      ; 05D03 ×0
  DD05  90 05     BCC loc_B0_DD0C               ; 05D05 ×0
  DD07  A9 C0     LDA #$C0                      ; 05D07 inferred, not run
  DD09  99 74 05  STA $0574,Y                   ; 05D09 inferred, not run

loc_B0_DD0C:                    ; from 05cf3 05ce6
  DD0C  A5 7A     LDA $7A                       ; 05D0C ×381
  DD0E  29 0F     AND #$0F                      ; 05D0E ×381
  DD10  F0 0A     BEQ loc_B0_DD1C               ; 05D10 ×381
  DD12  A4 82     LDY $82                       ; 05D12 ×51
  DD14  A6 21     LDX $21                       ; 05D14 ×51
  DD16  38        SEC                           ; 05D16 ×51
  DD17  E9 01     SBC #$01                      ; 05D17 ×51
  DD19  20 57 BC  JSR sub_B0_BC57               ; 05D19 ×51

loc_B0_DD1C:                    ; from 05d10
  DD1C  60        RTS                           ; 05D1C ×381
  DD1D  A6 82     LDX $82                       ; 05D1D inferred, not run
  DD1F  A9 FF     LDA #$FF                      ; 05D1F inferred, not run
  DD21  60        RTS                           ; 05D21 inferred, not run

sub_B0_DD22:                    ; from 05cb2
  DD22  A5 8B     LDA $8B                       ; 05D22 ×62
  DD24  29 07     AND #$07                      ; 05D24 ×62
  DD26  0A        ASL A                         ; 05D26 ×62

sub_B0_DD27:                    ; from 05f83
  DD27  85 1E     STA $1E                       ; 05D27 ×202
  DD29  20 58 FE  JSR sub_B0_FE58               ; 05D29 ×202
  DD2C  D0 EF     BNE $DD1D                     ; 05D2C ×202
  DD2E  A4 82     LDY $82                       ; 05D2E ×202
  DD30  20 67 B1  JSR sub_B0_B167               ; 05D30 ×202
  DD33  86 1D     STX $1D                       ; 05D33 ×202
  DD35  B9 A2 04  LDA $04A2,Y                   ; 05D35 ×202
  DD38  29 40     AND #$40                      ; 05D38 ×202
  DD3A  A4 1E     LDY $1E                       ; 05D3A ×202
  DD3C  C0 08     CPY #$08                      ; 05D3C ×202
  DD3E  D0 02     BNE loc_B0_DD42               ; 05D3E ×202
  DD40  49 40     EOR #$40                      ; 05D40 ×0

loc_B0_DD42:                    ; from 05d3e
  DD42  0A        ASL A                         ; 05D42 ×202
  DD43  9D 56 05  STA $0556,X                   ; 05D43 ×202
  DD46  F0 0D     BEQ loc_B0_DD55               ; 05D46 ×202
  DD48  BD FD 03  LDA $03FD,X                   ; 05D48 ×101
  DD4B  F9 99 DD  SBC $DD99,Y                   ; 05D4B ×101
  DD4E  9D FD 03  STA $03FD,X                   ; 05D4E ×101
  DD51  A9 FF     LDA #$FF                      ; 05D51 ×101
  DD53  D0 0B     BNE loc_B0_DD60               ; 05D53 ×101

loc_B0_DD55:                    ; from 05d46
  DD55  BD FD 03  LDA $03FD,X                   ; 05D55 ×101
  DD58  79 99 DD  ADC $DD99,Y                   ; 05D58 ×101
  DD5B  9D FD 03  STA $03FD,X                   ; 05D5B ×101
  DD5E  A9 00     LDA #$00                      ; 05D5E ×101

loc_B0_DD60:                    ; from 05d53
  DD60  7D EE 03  ADC $03EE,X                   ; 05D60 ×202
  DD63  9D EE 03  STA $03EE,X                   ; 05D63 ×202
  DD66  B9 9A DD  LDA $DD9A,Y                   ; 05D66 ×202
  DD69  18        CLC                           ; 05D69 ×202
  DD6A  20 EE 8E  JSR sub_B0_8EEE               ; 05D6A ×202
  DD6D  A9 08     LDA #$08                      ; 05D6D ×202
  DD6F  9D A2 04  STA $04A2,X                   ; 05D6F ×202
  DD72  25 8B     AND $8B                       ; 05D72 ×202
  DD74  F0 11     BEQ loc_B0_DD87               ; 05D74 ×202
  DD76  A9 08     LDA #$08                      ; 05D76 ×79
  DD78  9D ED 04  STA $04ED,X                   ; 05D78 ×79
  DD7B  A9 04     LDA #$04                      ; 05D7B ×79
  DD7D  9D C1 03  STA $03C1,X                   ; 05D7D ×79
  DD80  A9 0F     LDA #$0F                      ; 05D80 ×79
  DD82  9D 0B 05  STA $050B,X                   ; 05D82 ×79
  DD85  D0 0F     BNE loc_B0_DD96               ; 05D85 ×79

loc_B0_DD87:                    ; from 05d74
  DD87  A9 0C     LDA #$0C                      ; 05D87 ×123
  DD89  9D C1 03  STA $03C1,X                   ; 05D89 ×123
  DD8C  A9 04     LDA #$04                      ; 05D8C ×123
  DD8E  9D DE 04  STA $04DE,X                   ; 05D8E ×123
  DD91  A9 0F     LDA #$0F                      ; 05D91 ×123
  DD93  9D D0 03  STA $03D0,X                   ; 05D93 ×123

loc_B0_DD96:                    ; from 05d85
  DD96  A6 82     LDX $82                       ; 05D96 ×202
  DD98  60        RTS                           ; 05D98 ×202
  DD99  .byte 00 00                                             ; 05D99
  DD9B  .byte 18 20 18 10                                       ; 05D9B data, read by 05d58 05d4b 05d66
  DD9F  .byte 00 F0 18 14 18 00 10 02                           ; 05D9F
  DDA7  .byte 12 17                                             ; 05DA7 data, read by 05d4b 05d58 05d66
  DDA9  .byte 12 04                                             ; 05DA9
  DDAB  .byte 14 0C                                             ; 05DAB data, read by 05d4b 05d58 05d66

jt_B0_DDAD:                    ; from 05b26
  DDAD  A9 01     LDA #$01                      ; 05DAD ×5
  DDAF  85 DE     STA $DE                       ; 05DAF ×5
  DDB1  A9 24     LDA #$24                      ; 05DB1 ×5
  DDB3  20 F7 8A  JSR sub_B0_8AF7               ; 05DB3 ×5
  DDB6  30 3E     BMI loc_B0_DDF6               ; 05DB6 ×5
  DDB8  A5 20     LDA $20                       ; 05DB8 ×5
  DDBA  29 20     AND #$20                      ; 05DBA ×5
  DDBC  F0 0D     BEQ loc_B0_DDCB               ; 05DBC ×5
  DDBE  1D B1 04  ORA $04B1,X                   ; 05DBE ×2
  DDC1  9D B1 04  STA $04B1,X                   ; 05DC1 ×2
  DDC4  A9 00     LDA #$00                      ; 05DC4 ×2
  DDC6  99 C1 03  STA $03C1,Y                   ; 05DC6 ×2
  DDC9  F0 2B     BEQ loc_B0_DDF6               ; 05DC9 ×2

loc_B0_DDCB:                    ; from 05dbc
  DDCB  A9 00     LDA #$00                      ; 05DCB ×3
  DDCD  99 CF 04  STA $04CF,Y                   ; 05DCD ×3
  DDD0  A9 05     LDA #$05                      ; 05DD0 ×3

loc_B0_DDD2:                    ; from 05e3a
  DDD2  99 C0 04  STA $04C0,Y                   ; 05DD2 ×11
  DDD5  98        TYA                           ; 05DD5 ×11
  DDD6  18        CLC                           ; 05DD6 ×11
  DDD7  69 81     ADC #$81                      ; 05DD7 ×11
  DDD9  9D 38 05  STA $0538,X                   ; 05DD9 ×11
  DDDC  8A        TXA                           ; 05DDC ×11
  DDDD  69 81     ADC #$81                      ; 05DDD ×11
  DDDF  99 29 05  STA $0529,Y                   ; 05DDF ×11
  DDE2  A5 1B     LDA $1B                       ; 05DE2 ×11
  DDE4  29 80     AND #$80                      ; 05DE4 ×11
  DDE6  99 56 05  STA $0556,Y                   ; 05DE6 ×11
  DDE9  F0 02     BEQ loc_B0_DDED               ; 05DE9 ×11
  DDEB  A9 FF     LDA #$FF                      ; 05DEB ×5

loc_B0_DDED:                    ; from 05de9
  DDED  45 1B     EOR $1B                       ; 05DED ×11
  DDEF  0A        ASL A                         ; 05DEF ×11
  DDF0  0A        ASL A                         ; 05DF0 ×11
  DDF1  69 18     ADC #$18                      ; 05DF1 ×11
  DDF3  99 65 05  STA $0565,Y                   ; 05DF3 ×11

loc_B0_DDF6:                    ; from 05e44 05ec0 05e02 05dc9
  DDF6  A4 22     LDY $22                       ; 05DF6 ×28
  DDF8  4C 04 DB  JMP loc_B0_DB04               ; 05DF8 ×28

jt_B0_DDFB:                    ; from 05b26
  DDFB  A9 02     LDA #$02                      ; 05DFB ×10
  DDFD  85 DE     STA $DE                       ; 05DFD ×10
  DDFF  20 F7 8A  JSR sub_B0_8AF7               ; 05DFF ×10
  DE02  30 F2     BMI loc_B0_DDF6               ; 05E02 ×10
  DE04  A9 00     LDA #$00                      ; 05E04 ×8
  DE06  99 FC 04  STA $04FC,Y                   ; 05E06 ×8
  DE09  BD C1 03  LDA $03C1,X                   ; 05E09 ×8
  DE0C  49 17     EOR #$17                      ; 05E0C ×8
  DE0E  D0 09     BNE loc_B0_DE19               ; 05E0E ×8
  DE10  9D 83 05  STA $0583,X                   ; 05E10 inferred, not run
  DE13  9D FC 04  STA $04FC,X                   ; 05E13 inferred, not run
  DE16  4C D5 DD  JMP $DDD5                     ; 05E16 inferred, not run

loc_B0_DE19:                    ; from 05e0e
  DE19  A5 10     LDA $10                       ; 05E19 ×8
  DE1B  49 02     EOR #$02                      ; 05E1B ×8
  DE1D  D0 03     BNE loc_B0_DE22               ; 05E1D ×8
  DE1F  4C D5 DD  JMP $DDD5                     ; 05E1F inferred, not run

loc_B0_DE22:                    ; from 05e1d
  DE22  B9 39 04  LDA $0439,Y                   ; 05E22 ×8
  DE25  18        CLC                           ; 05E25 ×8
  DE26  69 08     ADC #$08                      ; 05E26 ×8
  DE28  99 39 04  STA $0439,Y                   ; 05E28 ×8
  DE2B  B9 2A 04  LDA $042A,Y                   ; 05E2B ×8
  DE2E  69 00     ADC #$00                      ; 05E2E ×8
  DE30  99 2A 04  STA $042A,Y                   ; 05E30 ×8
  DE33  A9 20     LDA #$20                      ; 05E33 ×8
  DE35  99 CF 04  STA $04CF,Y                   ; 05E35 ×8
  DE38  A9 04     LDA #$04                      ; 05E38 ×8
  DE3A  4C D2 DD  JMP loc_B0_DDD2               ; 05E3A ×8

jt_B0_DE3D:                    ; from 05b26
  DE3D  20 47 DE  JSR sub_B0_DE47               ; 05E3D ×10
  DE40  A9 00     LDA #$00                      ; 05E40 ×10
  DE42  85 DC     STA $DC                       ; 05E42 ×10
  DE44  4C F6 DD  JMP loc_B0_DDF6               ; 05E44 ×10

sub_B0_DE47:                    ; from 05e3d 01e67
  DE47  BD 38 05  LDA $0538,X                   ; 05E47 ×11
  DE4A  29 1F     AND #$1F                      ; 05E4A ×11
  DE4C  A8        TAY                           ; 05E4C ×11
  DE4D  88        DEY                           ; 05E4D ×11
  DE4E  A5 10     LDA $10                       ; 05E4E ×11
  DE50  C9 02     CMP #$02                      ; 05E50 ×11
  DE52  D0 08     BNE loc_B0_DE5C               ; 05E52 ×11
  DE54  A9 7D     LDA #$7D                      ; 05E54 inferred, not run
  DE56  20 FF DF  JSR sub_B0_DFFF               ; 05E56 inferred, not run
  DE59  4C C3 DE  JMP sub_B0_DEC3               ; 05E59 inferred, not run

loc_B0_DE5C:                    ; from 05e52
  DE5C  B9 C1 03  LDA $03C1,Y                   ; 05E5C ×11
  DE5F  C9 05     CMP #$05                      ; 05E5F ×11
  DE61  F0 47     BEQ loc_B0_DEAA               ; 05E61 ×11
  DE63  C9 64     CMP #$64                      ; 05E63 ×11
  DE65  D0 2A     BNE loc_B0_DE91               ; 05E65 ×11
  DE67  BD 93 04  LDA $0493,X                   ; 05E67 inferred, not run
  DE6A  49 FF     EOR #$FF                      ; 05E6A inferred, not run
  DE6C  4A        LSR A                         ; 05E6C inferred, not run
  DE6D  99 83 05  STA $0583,Y                   ; 05E6D inferred, not run
  DE70  A9 C0     LDA #$C0                      ; 05E70 inferred, not run
  DE72  99 56 05  STA $0556,Y                   ; 05E72 inferred, not run
  DE75  B5 29     LDA $29,X                     ; 05E75 inferred, not run
  DE77  29 03     AND #$03                      ; 05E77 inferred, not run
  DE79  F0 0A     BEQ $DE85                     ; 05E79 inferred, not run
  DE7B  6A        ROR A                         ; 05E7B inferred, not run
  DE7C  A9 D8     LDA #$D8                      ; 05E7C inferred, not run
  DE7E  B0 02     BCS $DE82                     ; 05E7E inferred, not run
  DE80  A9 A8     LDA #$A8                      ; 05E80 inferred, not run
  DE82  99 56 05  STA $0556,Y                   ; 05E82 inferred, not run
  DE85  A5 25     LDA $25                       ; 05E85 inferred, not run
  DE87  29 1F     AND #$1F                      ; 05E87 inferred, not run
  DE89  E9 10     SBC #$10                      ; 05E89 inferred, not run
  DE8B  79 56 05  ADC $0556,Y                   ; 05E8B inferred, not run
  DE8E  4C B0 DE  JMP $DEB0                     ; 05E8E inferred, not run

loc_B0_DE91:                    ; from 05e65
  DE91  C9 1B     CMP #$1B                      ; 05E91 ×11
  DE93  F0 15     BEQ loc_B0_DEAA               ; 05E93 ×11
  DE95  C9 03     CMP #$03                      ; 05E95 ×8
  DE97  A9 AF     LDA #$AF                      ; 05E97 ×8
  DE99  90 02     BCC $DE9D                     ; 05E99 ×8
  DE9B  A9 55     LDA #$55                      ; 05E9B ×8
  DE9D  20 FF DF  JSR sub_B0_DFFF               ; 05E9D ×8
  DEA0  A9 40     LDA #$40                      ; 05EA0 ×8
  DEA2  19 B1 04  ORA $04B1,Y                   ; 05EA2 ×8
  DEA5  99 B1 04  STA $04B1,Y                   ; 05EA5 ×8
  DEA8  D0 19     BNE sub_B0_DEC3               ; 05EA8 ×8

loc_B0_DEAA:                    ; from 05e93
  DEAA  BD A2 04  LDA $04A2,X                   ; 05EAA ×3
  DEAD  0A        ASL A                         ; 05EAD ×3
  DEAE  29 80     AND #$80                      ; 05EAE ×3
  DEB0  99 56 05  STA $0556,Y                   ; 05EB0 ×3
  DEB3  A9 F0     LDA #$F0                      ; 05EB3 ×3
  DEB5  99 65 05  STA $0565,Y                   ; 05EB5 ×3
  DEB8  A9 05     LDA #$05                      ; 05EB8 ×3
  DEBA  99 C0 04  STA $04C0,Y                   ; 05EBA ×3
  DEBD  20 C3 DE  JSR sub_B0_DEC3               ; 05EBD ×3
  DEC0  4C F6 DD  JMP loc_B0_DDF6               ; 05EC0 ×3

sub_B0_DEC3:                    ; from 05ea8 05ebd
  DEC3  A9 00     LDA #$00                      ; 05EC3 ×11
  DEC5  9D 38 05  STA $0538,X                   ; 05EC5 ×11
  DEC8  99 29 05  STA $0529,Y                   ; 05EC8 ×11
  DECB  60        RTS                           ; 05ECB ×11

jt_B0_DECC:                    ; from 05b26
  DECC  BD A2 04  LDA $04A2,X                   ; 05ECC ×2716
  DECF  09 04     ORA #$04                      ; 05ECF ×2716
  DED1  9D A2 04  STA $04A2,X                   ; 05ED1 ×2716
  DED4  4C 04 DB  JMP loc_B0_DB04               ; 05ED4 ×2716
  DED7  20 58 FE  JSR sub_B0_FE58               ; 05ED7 ×0
  DEDA  A9 38     LDA #$38                      ; 05EDA ×0
  DEDC  D0 05     BNE $DEE3                     ; 05EDC ×0

jt_B0_DEDE:                    ; from 05b26
  DEDE  20 58 FE  JSR sub_B0_FE58               ; 05EDE ×117
  DEE1  A9 37     LDA #$37                      ; 05EE1 ×117
  DEE3  9D D0 03  STA $03D0,X                   ; 05EE3 ×117
  DEE6  A4 82     LDY $82                       ; 05EE6 ×117
  DEE8  20 6D B1  JSR sub_B0_B16D               ; 05EE8 ×117
  DEEB  B9 A2 04  LDA $04A2,Y                   ; 05EEB ×117
  DEEE  9D A2 04  STA $04A2,X                   ; 05EEE ×117
  DEF1  A9 04     LDA #$04                      ; 05EF1 ×117
  DEF3  9D DE 04  STA $04DE,X                   ; 05EF3 ×117
  DEF6  A9 0C     LDA #$0C                      ; 05EF6 ×117
  DEF8  A4 22     LDY $22                       ; 05EF8 ×117
  DEFA  9D C1 03  STA $03C1,X                   ; 05EFA ×117
  DEFD  A6 82     LDX $82                       ; 05EFD ×117
  DEFF  4C 04 DB  JMP loc_B0_DB04               ; 05EFF ×117
  DF02  .byte 20 37 DF A6 82 4C 04 DB A5 79 85 DC C8 4C 04 DB   ; 05F02

jt_B0_DF12:                    ; from 05b26
  DF12  A5 79     LDA $79                       ; 05F12 ×117
  DF14  AA        TAX                           ; 05F14 ×117
  DF15  C8        INY                           ; 05F15 ×117
  DF16  A5 7A     LDA $7A                       ; 05F16 ×117
  DF18  20 E1 84  JSR sub_B0_84E1               ; 05F18 ×117
  DF1B  A4 22     LDY $22                       ; 05F1B ×117
  DF1D  C8        INY                           ; 05F1D ×117
  DF1E  C8        INY                           ; 05F1E ×117
  DF1F  A6 82     LDX $82                       ; 05F1F ×117
  DF21  4C 04 DB  JMP loc_B0_DB04               ; 05F21 ×117
  DF24  .byte BD 39 04 FD ED 04 2A A9 05 B0 02 A9 FB 20 EE 8E   ; 05F24
  DF34  .byte 4C 04 DB 20 58 FE A4 82 20 67 B1 B9 A2 04 0A 29   ; 05F34
  DF44  .byte 80 9D 56 05 2A A9 05 B0 02 A9 FB 79 FD 03 99 FD   ; 05F44
  DF54  .byte 03 A9 00 9D A2 04 A9 F6 20 EE 8E A4 22 A5 79 9D   ; 05F54
  DF64  .byte 65 05 C8 A9 32 9D C1 03 60 A5 79 85 1B 29 70 F0   ; 05F64
  DF74  .byte 04 A9 10 D0 02 A9 0E 20 83 DF                     ; 05F74

loc_B0_DF7E:                    ; from 05fec
  DF7E  A4 22     LDY $22                       ; 05F7E ×130
  DF80  4C 04 DB  JMP loc_B0_DB04               ; 05F80 ×130

sub_B0_DF83:                    ; from 04524 04516
  DF83  20 27 DD  JSR sub_B0_DD27               ; 05F83 ×140
  DF86  30 5D     BMI loc_B0_DFE5               ; 05F86 ×140
  DF88  A4 1D     LDY $1D                       ; 05F88 ×140
  DF8A  A9 3A     LDA #$3A                      ; 05F8A ×140
  DF8C  99 C1 03  STA $03C1,Y                   ; 05F8C ×140
  DF8F  E0 02     CPX #$02                      ; 05F8F ×140
  DF91  B0 10     BCS loc_B0_DFA3               ; 05F91 ×140
  DF93  B5 29     LDA $29,X                     ; 05F93 inferred, not run
  DF95  29 0C     AND #$0C                      ; 05F95 inferred, not run
  DF97  F0 0A     BEQ loc_B0_DFA3               ; 05F97 inferred, not run
  DF99  C9 06     CMP #$06                      ; 05F99 inferred, not run
  DF9B  A9 FF     LDA #$FF                      ; 05F9B inferred, not run
  DF9D  90 06     BCC $DFA5                     ; 05F9D inferred, not run
  DF9F  A9 03     LDA #$03                      ; 05F9F inferred, not run
  DFA1  D0 02     BNE $DFA5                     ; 05FA1 inferred, not run

loc_B0_DFA3:                    ; from 05f91
  DFA3  A9 01     LDA #$01                      ; 05FA3 ×140
  DFA5  99 C0 04  STA $04C0,Y                   ; 05FA5 ×140
  DFA8  A9 00     LDA #$00                      ; 05FA8 ×140
  DFAA  99 CF 04  STA $04CF,Y                   ; 05FAA ×140
  DFAD  A9 80     LDA #$80                      ; 05FAD ×140
  DFAF  99 A2 04  STA $04A2,Y                   ; 05FAF ×140
  DFB2  A5 1B     LDA $1B                       ; 05FB2 ×140
  DFB4  29 0F     AND #$0F                      ; 05FB4 ×140
  DFB6  99 65 05  STA $0565,Y                   ; 05FB6 ×140
  DFB9  8A        TXA                           ; 05FB9 ×140
  DFBA  99 92 05  STA $0592,Y                   ; 05FBA ×140
  DFBD  E6 22     INC $22                       ; 05FBD ×140
  DFBF  A5 1B     LDA $1B                       ; 05FBF ×140
  DFC1  10 22     BPL loc_B0_DFE5               ; 05FC1 ×140
  DFC3  A9 FF     LDA #$FF                      ; 05FC3 inferred, not run
  DFC5  99 C0 04  STA $04C0,Y                   ; 05FC5 inferred, not run
  DFC8  A9 3D     LDA #$3D                      ; 05FC8 inferred, not run
  DFCA  99 C1 03  STA $03C1,Y                   ; 05FCA inferred, not run
  DFCD  A9 B0     LDA #$B0                      ; 05FCD inferred, not run
  DFCF  99 65 05  STA $0565,Y                   ; 05FCF inferred, not run
  DFD2  BD A2 04  LDA $04A2,X                   ; 05FD2 inferred, not run
  DFD5  10 0E     BPL loc_B0_DFE5               ; 05FD5 inferred, not run
  DFD7  A9 18     LDA #$18                      ; 05FD7 inferred, not run
  DFD9  E5 89     SBC $89                       ; 05FD9 inferred, not run
  DFDB  99 39 04  STA $0439,Y                   ; 05FDB inferred, not run
  DFDE  A9 20     LDA #$20                      ; 05FDE inferred, not run
  DFE0  E5 8A     SBC $8A                       ; 05FE0 inferred, not run
  DFE2  99 2A 04  STA $042A,Y                   ; 05FE2 inferred, not run

loc_B0_DFE5:                    ; from 05fc1
  DFE5  60        RTS                           ; 05FE5 ×140
  DFE6  1E B1 04  ASL $04B1,X                   ; 05FE6 ×0
  DFE9  5E B1 04  LSR $04B1,X                   ; 05FE9 ×0

loc_B0_DFEC:                    ; from 05ff2 05ff6
  DFEC  4C 7E DF  JMP loc_B0_DF7E               ; 05FEC ×130

jt_B0_DFEF:                    ; from 05b26
  DFEF  BD 75 04  LDA $0475,X                   ; 05FEF ×130
  DFF2  D0 F8     BNE loc_B0_DFEC               ; 05FF2 ×130
  DFF4  B5 29     LDA $29,X                     ; 05FF4 ×10
  DFF6  10 F4     BPL loc_B0_DFEC               ; 05FF6 ×10
  DFF8  A9 04     LDA #$04                      ; 05FF8 ×0
  DFFA  9D C0 04  STA $04C0,X                   ; 05FFA ×0
  DFFD  D0 ED     BNE loc_B0_DFEC               ; 05FFD ×0

sub_B0_DFFF:                    ; from 05c8d 05e9d
  DFFF  84 21     STY $21                       ; 05FFF ×389

loc_B0_E001:                    ; from 07c14
  E001  A8        TAY                           ; 06001 ×390
  E002  B9 D1 E0  LDA $E0D1,Y                   ; 06002 ×390
  E005  29 0F     AND #$0F                      ; 06005 ×390
  E007  85 8B     STA $8B                       ; 06007 ×390
  E009  BD 65 05  LDA $0565,X                   ; 06009 ×390
  E00C  85 15     STA $15                       ; 0600C ×390
  E00E  B9 D1 E0  LDA $E0D1,Y                   ; 0600E ×390
  E011  29 F0     AND #$F0                      ; 06011 ×390
  E013  F0 03     BEQ loc_B0_E018               ; 06013 ×390
  E015  9D 65 05  STA $0565,X                   ; 06015 ×3

loc_B0_E018:                    ; from 06013
  E018  A5 10     LDA $10                       ; 06018 ×390
  E01A  C9 02     CMP #$02                      ; 0601A ×390
  E01C  D0 0E     BNE loc_B0_E02C               ; 0601C ×390
  E01E  BD 56 05  LDA $0556,X                   ; 0601E ×0
  E021  48        PHA                           ; 06021 ×0
  E022  8A        TXA                           ; 06022 ×0
  E023  A6 21     LDX $21                       ; 06023 ×0
  E025  9D 92 05  STA $0592,X                   ; 06025 ×0
  E028  68        PLA                           ; 06028 ×0
  E029  4C 41 E0  JMP $E041                     ; 06029 ×0

loc_B0_E02C:                    ; from 0601c
  E02C  BD 47 05  LDA $0547,X                   ; 0602C ×390
  E02F  F0 05     BEQ loc_B0_E036               ; 0602F ×390
  E031  A6 21     LDX $21                       ; 06031 ×1
  E033  4C 44 E0  JMP loc_B0_E044               ; 06033 ×1

loc_B0_E036:                    ; from 0602f
  E036  BD A2 04  LDA $04A2,X                   ; 06036 ×389
  E039  29 40     AND #$40                      ; 06039 ×389
  E03B  0A        ASL A                         ; 0603B ×389
  E03C  9D 56 05  STA $0556,X                   ; 0603C ×389
  E03F  A6 21     LDX $21                       ; 0603F ×389
  E041  9D 56 05  STA $0556,X                   ; 06041 ×389

loc_B0_E044:                    ; from 06033
  E044  B9 CF E0  LDA $E0CF,Y                   ; 06044 ×390
  E047  C9 02     CMP #$02                      ; 06047 ×390
  E049  F0 0B     BEQ $E056                     ; 06049 ×390
  E04B  C9 01     CMP #$01                      ; 0604B ×390
  E04D  D0 04     BNE loc_B0_E053               ; 0604D ×390
  E04F  65 15     ADC $15                       ; 0604F ×0
  E051  A5 15     LDA $15                       ; 06051 ×0

loc_B0_E053:                    ; from 0604d
  E053  9D 65 05  STA $0565,X                   ; 06053 ×390
  E056  B9 D0 E0  LDA $E0D0,Y                   ; 06056 ×390
  E059  9D C0 04  STA $04C0,X                   ; 06059 ×390
  E05C  A9 00     LDA #$00                      ; 0605C ×390
  E05E  9D CF 04  STA $04CF,X                   ; 0605E ×390
  E061  BD 1A 05  LDA $051A,X                   ; 06061 ×390
  E064  38        SEC                           ; 06064 ×390
  E065  F9 D2 E0  SBC $E0D2,Y                   ; 06065 ×390
  E068  85 15     STA $15                       ; 06068 ×390
  E06A  90 0F     BCC loc_B0_E07B               ; 0606A ×390
  E06C  5D 1A 05  EOR $051A,X                   ; 0606C ×344
  E06F  29 F0     AND #$F0                      ; 0606F ×344
  E071  F0 1E     BEQ loc_B0_E091               ; 06071 ×344
  E073  A5 15     LDA $15                       ; 06073 ×30
  E075  09 0F     ORA #$0F                      ; 06075 ×30
  E077  85 15     STA $15                       ; 06077 ×30
  E079  D0 16     BNE loc_B0_E091               ; 06079 ×30

loc_B0_E07B:                    ; from 0606a
  E07B  A9 C0     LDA #$C0                      ; 0607B ×46
  E07D  9D 74 05  STA $0574,X                   ; 0607D ×46
  E080  A5 10     LDA $10                       ; 06080 ×46
  E082  C9 02     CMP #$02                      ; 06082 ×46
  E084  D0 05     BNE loc_B0_E08B               ; 06084 ×46
  E086  A9 81     LDA #$81                      ; 06086 ×0
  E088  9D 74 05  STA $0574,X                   ; 06088 ×0

loc_B0_E08B:                    ; from 06084
  E08B  A9 00     LDA #$00                      ; 0608B ×46
  E08D  85 15     STA $15                       ; 0608D ×46
  E08F  F0 09     BEQ loc_B0_E09A               ; 0608F ×46

loc_B0_E091:                    ; from 06071 06079
  E091  A5 15     LDA $15                       ; 06091 ×344
  E093  5D 1A 05  EOR $051A,X                   ; 06093 ×344
  E096  29 38     AND #$38                      ; 06096 ×344
  E098  F0 06     BEQ loc_B0_E0A0               ; 06098 ×344

loc_B0_E09A:                    ; from 0608f
  E09A  E0 02     CPX #$02                      ; 0609A ×129
  E09C  B0 02     BCS loc_B0_E0A0               ; 0609C ×129
  E09E  E6 D0     INC $D0                       ; 0609E ×48

loc_B0_E0A0:                    ; from 06098 0609c
  E0A0  A5 15     LDA $15                       ; 060A0 ×390
  E0A2  9D 1A 05  STA $051A,X                   ; 060A2 ×390
  E0A5  BD 74 05  LDA $0574,X                   ; 060A5 ×390
  E0A8  F0 1A     BEQ loc_B0_E0C4               ; 060A8 ×390
  E0AA  B9 D3 E0  LDA $E0D3,Y                   ; 060AA ×46
  E0AD  C9 40     CMP #$40                      ; 060AD ×46
  E0AF  B0 0D     BCS loc_B0_E0BE               ; 060AF ×46
  E0B1  A9 78     LDA #$78                      ; 060B1 ×6
  E0B3  E0 02     CPX #$02                      ; 060B3 ×6
  E0B5  B0 07     BCS loc_B0_E0BE               ; 060B5 ×6
  E0B7  A9 03     LDA #$03                      ; 060B7 ×3
  E0B9  9D C0 04  STA $04C0,X                   ; 060B9 ×3
  E0BC  A9 D4     LDA #$D4                      ; 060BC ×3

loc_B0_E0BE:                    ; from 060af 060b5
  E0BE  9D 47 05  STA $0547,X                   ; 060BE ×46
  E0C1  4C CA E0  JMP loc_B0_E0CA               ; 060C1 ×46

loc_B0_E0C4:                    ; from 060a8
  E0C4  B9 D3 E0  LDA $E0D3,Y                   ; 060C4 ×344
  E0C7  9D 47 05  STA $0547,X                   ; 060C7 ×344

loc_B0_E0CA:                    ; from 060c1
  E0CA  A4 21     LDY $21                       ; 060CA ×390
  E0CC  A6 82     LDX $82                       ; 060CC ×390
  E0CE  60        RTS                           ; 060CE ×390
  E0CF  .byte 30 00 00 02 3F C0 04 00 08 78 F0 06 01 10 78 FF   ; 060CF data, read by 06044 06056 06002 0600e (+3)
  E0DF  .byte 07 09 FF 40                                       ; 060DF data, read by 06056 06002 0600e 06065 (+1)
  E0E3  .byte F0 04 11 10 58 F0 0A 09 FF 40                     ; 060E3
  E0ED  .byte FF 09 09 FF 40                                    ; 060ED data, read by 06044 06056 06002 0600e (+2)
  E0F2  .byte 01 02 00 08 40 01 00 04 7F 3F 30 06 00 10 78      ; 060F2
  E101  .byte 30 FB 02 08 70                                    ; 06101 data, read by 06044 06056 06002 0600e (+2)
  E106  .byte 70 05 E8 08 70 01 00 40 10 3F 01 FE 01 10 40 C0   ; 06106
  E116  .byte 02 20 08 40 04 04 00 10 50 04 FF 00 10 50         ; 06116
  E124  .byte F1 06 00 04 80 34 00 00 04 1C                     ; 06124 data, read by 06044 06056 06002 0600e (+3)
  E12E  .byte C0 05 00 08 D0                                    ; 0612E
  E133  .byte F0 06 01 10 D4                                    ; 06133 data, read by 06044 06056 06002 0600e (+3)
  E138  .byte FF 06 09 FF D4                                    ; 06138
  E13D  .byte F0 04 12 10 D4 FE 09 09 FF E0                     ; 0613D data, read by 06044 06056 06002 0600e (+3)
  E147  .byte FF 09 09 FF E0 01 00 41 08 3F 01 04 11 FF D4 A0   ; 06147
  E157  .byte 07 00 10 D5 30 FC 82 08 D4 70 05 C8 20 D4 01 00   ; 06157
  E167  .byte 45 10 20 01 FE 11 10 3F 40 02 20 08 D4 04 04 00   ; 06167
  E177  .byte 10 D4 04 FF 00 10 D4 F1 06 00 04 D4               ; 06177

loc_B0_E183:                    ; from 06223
  E183  20 8E 9F  JSR sub_B0_9F8E               ; 06183 ×183
  E186  A9 08     LDA #$08                      ; 06186 ×183
  E188  9D D0 03  STA $03D0,X                   ; 06188 ×183
  E18B  60        RTS                           ; 0618B ×183

sub_B0_E18C:                    ; from 06236 014bb
  E18C  20 52 8E  JSR sub_B0_8E52               ; 0618C ×16
  E18F  20 AD E4  JSR sub_B0_E4AD               ; 0618F ×16
  E192  A9 00     LDA #$00                      ; 06192 ×16
  E194  9D 65 05  STA $0565,X                   ; 06194 ×16
  E197  BD A2 04  LDA $04A2,X                   ; 06197 ×16
  E19A  30 05     BMI loc_B0_E1A1               ; 0619A ×16
  E19C  DE 74 05  DEC $0574,X                   ; 0619C inferred, not run
  E19F  30 E5     BMI $E186                     ; 0619F inferred, not run

loc_B0_E1A1:                    ; from 0619a
  E1A1  4C 80 D0  JMP sub_B0_D080               ; 061A1 ×16
  E1A4  .byte 4C 67 E2                                          ; 061A4

sub_B0_E1A7:                    ; from 0622e 01485 06cba 03e77
  E1A7  A9 FC     LDA #$FC                      ; 061A7 ×6395
  E1A9  20 6A D0  JSR sub_B0_D06A               ; 061A9 ×6395
  E1AC  A9 C8     LDA #$C8                      ; 061AC ×6395
  E1AE  20 7A 8E  JSR sub_B0_8E7A               ; 061AE ×6395
  E1B1  A5 10     LDA $10                       ; 061B1 ×6395
  E1B3  C9 06     CMP #$06                      ; 061B3 ×6395
  E1B5  F0 04     BEQ loc_B0_E1BB               ; 061B5 ×6395
  E1B7  C9 05     CMP #$05                      ; 061B7 ×6266
  E1B9  D0 12     BNE loc_B0_E1CD               ; 061B9 ×6266

loc_B0_E1BB:                    ; from 061b5
  E1BB  BD 74 05  LDA $0574,X                   ; 061BB ×653
  E1BE  F0 0D     BEQ loc_B0_E1CD               ; 061BE ×653
  E1C0  A9 08     LDA #$08                      ; 061C0 ×217
  E1C2  9D 75 04  STA $0475,X                   ; 061C2 ×217
  E1C5  1D A2 04  ORA $04A2,X                   ; 061C5 ×217
  E1C8  9D A2 04  STA $04A2,X                   ; 061C8 ×217
  E1CB  D0 03     BNE loc_B0_E1D0               ; 061CB ×217

loc_B0_E1CD:                    ; from 061b9 061be
  E1CD  20 AD E4  JSR sub_B0_E4AD               ; 061CD ×6178

loc_B0_E1D0:                    ; from 061cb
  E1D0  A9 08     LDA #$08                      ; 061D0 ×6395
  E1D2  9D D0 03  STA $03D0,X                   ; 061D2 ×6395
  E1D5  20 24 B0  JSR sub_B0_B024               ; 061D5 ×6395
  E1D8  D0 03     BNE loc_B0_E1DD               ; 061D8 ×6395
  E1DA  20 57 B0  JSR sub_B0_B057               ; 061DA ×46

loc_B0_E1DD:                    ; from 061d8
  E1DD  BD B1 04  LDA $04B1,X                   ; 061DD ×6395
  E1E0  29 40     AND #$40                      ; 061E0 ×6395
  E1E2  D0 13     BNE loc_B0_E1F7               ; 061E2 ×6395
  E1E4  A9 07     LDA #$07                      ; 061E4 ×3687
  E1E6  9D D0 03  STA $03D0,X                   ; 061E6 ×3687
  E1E9  BD 47 05  LDA $0547,X                   ; 061E9 ×3687
  E1EC  C9 3B     CMP #$3B                      ; 061EC ×3687
  E1EE  B0 13     BCS loc_B0_E203               ; 061EE ×3687
  E1F0  A9 04     LDA #$04                      ; 061F0 ×2872
  E1F2  9D D0 03  STA $03D0,X                   ; 061F2 ×2872
  E1F5  D0 0C     BNE loc_B0_E203               ; 061F5 ×2872

loc_B0_E1F7:                    ; from 061e2
  E1F7  BD 47 05  LDA $0547,X                   ; 061F7 ×2708
  E1FA  C9 60     CMP #$60                      ; 061FA ×2708
  E1FC  90 05     BCC loc_B0_E203               ; 061FC ×2708
  E1FE  A9 05     LDA #$05                      ; 061FE ×522
  E200  9D D0 03  STA $03D0,X                   ; 06200 ×522

loc_B0_E203:                    ; from 061f5 061fc 061ee
  E203  4C 59 9E  JMP sub_B0_9E59               ; 06203 ×6395

jt_B0_E206:                    ; from 008ec
  E206  BD 83 05  LDA $0583,X                   ; 06206 ×16933
  E209  F0 0A     BEQ loc_B0_E215               ; 06209 ×16933
  E20B  10 08     BPL loc_B0_E215               ; 0620B ×2
  E20D  A9 00     LDA #$00                      ; 0620D ×2
  E20F  9D 83 05  STA $0583,X                   ; 0620F ×2
  E212  20 E9 E2  JSR sub_B0_E2E9               ; 06212 ×2

loc_B0_E215:                    ; from 06209
  E215  BD 74 05  LDA $0574,X                   ; 06215 ×16933
  E218  D0 04     BNE loc_B0_E21E               ; 06218 ×16933
  E21A  A9 1E     LDA #$1E                      ; 0621A ×16168
  E21C  85 B2     STA $B2                       ; 0621C ×16168

loc_B0_E21E:                    ; from 06218
  E21E  BD 29 05  LDA $0529,X                   ; 0621E ×16933
  E221  F0 03     BEQ loc_B0_E226               ; 06221 ×16933
  E223  4C 83 E1  JMP loc_B0_E183               ; 06223 ×183

loc_B0_E226:                    ; from 06221
  E226  20 4C 8F  JSR sub_B0_8F4C               ; 06226 ×16750
  E229  BD 47 05  LDA $0547,X                   ; 06229 ×16750
  E22C  F0 03     BEQ loc_B0_E231               ; 0622C ×16750
  E22E  4C A7 E1  JMP sub_B0_E1A7               ; 0622E ×3701

loc_B0_E231:                    ; from 0622c
  E231  BD 74 05  LDA $0574,X                   ; 06231 ×13049
  E234  F0 03     BEQ loc_B0_E239               ; 06234 ×13049
  E236  4C 8C E1  JMP sub_B0_E18C               ; 06236 ×13

loc_B0_E239:                    ; from 06234
  E239  A9 D8     LDA #$D8                      ; 06239 ×13036
  E23B  20 7A 8E  JSR sub_B0_8E7A               ; 0623B ×13036
  E23E  20 AD E4  JSR sub_B0_E4AD               ; 0623E ×13036
  E241  20 71 E2  JSR sub_B0_E271               ; 06241 ×13036
  E244  BD A2 04  LDA $04A2,X                   ; 06244 ×13036
  E247  29 10     AND #$10                      ; 06247 ×13036
  E249  F0 07     BEQ loc_B0_E252               ; 06249 ×13036
  E24B  A9 A0     LDA #$A0                      ; 0624B inferred, not run
  E24D  9D 65 05  STA $0565,X                   ; 0624D inferred, not run
  E250  D0 05     BNE $E257                     ; 06250 inferred, not run

loc_B0_E252:                    ; from 06249
  E252  A9 FD     LDA #$FD                      ; 06252 ×13036
  E254  20 6A D0  JSR sub_B0_D06A               ; 06254 ×13036
  E257  BD FC 04  LDA $04FC,X                   ; 06257 ×13036
  E25A  F0 08     BEQ loc_B0_E264               ; 0625A ×13036
  E25C  20 66 CF  JSR sub_B0_CF66               ; 0625C ×4392
  E25F  A9 03     LDA #$03                      ; 0625F ×4392
  E261  4C F6 DA  JMP sub_B0_DAF6               ; 06261 ×4392

loc_B0_E264:                    ; from 0625a
  E264  20 17 E3  JSR sub_B0_E317               ; 06264 ×8644
  E267  20 D5 E2  JSR sub_B0_E2D5               ; 06267 ×8644
  E26A  B9 6D E4  LDA $E46D,Y                   ; 0626A ×8644
  E26D  9D D0 03  STA $03D0,X                   ; 0626D ×8644
  E270  60        RTS                           ; 06270 ×8644

sub_B0_E271:                    ; from 06241 015ab
  E271  A5 D9     LDA $D9                       ; 06271 ×15736
  E273  10 1E     BPL loc_B0_E293               ; 06273 ×15736
  E275  BD 75 04  LDA $0475,X                   ; 06275 ×12
  E278  D0 19     BNE loc_B0_E293               ; 06278 ×12
  E27A  A5 DA     LDA $DA                       ; 0627A ×1
  E27C  C9 F0     CMP #$F0                      ; 0627C ×1
  E27E  F0 13     BEQ loc_B0_E293               ; 0627E ×1
  E280  FD 39 04  SBC $0439,X                   ; 06280 ×1
  E283  4A        LSR A                         ; 06283 ×1
  E284  4A        LSR A                         ; 06284 ×1
  E285  4A        LSR A                         ; 06285 ×1
  E286  4A        LSR A                         ; 06286 ×1
  E287  A8        TAY                           ; 06287 ×1
  E288  B9 94 E2  LDA $E294,Y                   ; 06288 ×1
  E28B  9D C0 04  STA $04C0,X                   ; 0628B ×1
  E28E  A9 C0     LDA #$C0                      ; 0628E ×1
  E290  9D CF 04  STA $04CF,X                   ; 06290 ×1

loc_B0_E293:                    ; from 06273 06278
  E293  60        RTS                           ; 06293 ×15736
  E294  .byte 01 03 03                                          ; 06294
  E297  .byte 04                                                ; 06297 data, read by 06288
  E298  .byte 04 05 05 05 05 05 05 06 06 06 06 06 A9 1E 85 B2   ; 06298
  E2A8  .byte BD 39 04 6A 6A 29 80 9D 56 05 4A 09 20 9D A2 04   ; 062A8
  E2B8  .byte A9 40 9D 65 05 20 4C 8F DE 83 05 D0 A2 A9 0B 9D   ; 062B8
  E2C8  .byte C1 03 BD A2 04 29 DF 9D A2 04 4C E9 E2            ; 062C8

sub_B0_E2D5:                    ; from 06267 0192c
  E2D5  BD 65 05  LDA $0565,X                   ; 062D5 ×8644

sub_B0_E2D8:                    ; from 079fe
  E2D8  F0 05     BEQ loc_B0_E2DF               ; 062D8 ×8644

sub_B0_E2DA:                    ; from 01710
  E2DA  4A        LSR A                         ; 062DA ×4644
  E2DB  4A        LSR A                         ; 062DB ×4644

sub_B0_E2DC:                    ; from 05488 056b3 031fe
  E2DC  7D DF 03  ADC $03DF,X                   ; 062DC ×9311

loc_B0_E2DF:                    ; from 062d8
  E2DF  9D DF 03  STA $03DF,X                   ; 062DF ×13311
  E2E2  2A        ROL A                         ; 062E2 ×13311
  E2E3  2A        ROL A                         ; 062E3 ×13311
  E2E4  2A        ROL A                         ; 062E4 ×13311
  E2E5  29 03     AND #$03                      ; 062E5 ×13311
  E2E7  A8        TAY                           ; 062E7 ×13311

loc_B0_E2E8:                    ; from 06339 06312
  E2E8  60        RTS                           ; 062E8 ×22663

sub_B0_E2E9:                    ; from 0630a 044e6 01e7d 0362a 06d34 044c9 (+5)
  E2E9  A0 00     LDY #$00                      ; 062E9 ×3654
  E2EB  A5 12     LDA $12                       ; 062EB ×3654
  E2ED  30 16     BMI loc_B0_E305               ; 062ED ×3654
  E2EF  C8        INY                           ; 062EF inferred, not run
  E2F0  A5 11     LDA $11                       ; 062F0 inferred, not run
  E2F2  30 11     BMI loc_B0_E305               ; 062F2 inferred, not run
  E2F4  A5 25     LDA $25                       ; 062F4 inferred, not run
  E2F6  29 01     AND #$01                      ; 062F6 inferred, not run
  E2F8  A8        TAY                           ; 062F8 inferred, not run
  E2F9  B9 74 05  LDA $0574,Y                   ; 062F9 inferred, not run
  E2FC  19 11 00  ORA $0011,Y                   ; 062FC inferred, not run
  E2FF  10 04     BPL loc_B0_E305               ; 062FF inferred, not run
  E301  98        TYA                           ; 06301 inferred, not run
  E302  49 01     EOR #$01                      ; 06302 inferred, not run
  E304  A8        TAY                           ; 06304 inferred, not run

loc_B0_E305:                    ; from 062ed
  E305  98        TYA                           ; 06305 ×3654
  E306  9D 92 05  STA $0592,X                   ; 06306 ×3654
  E309  60        RTS                           ; 06309 ×3654

loc_B0_E30A:                    ; from 06330
  E30A  20 E9 E2  JSR sub_B0_E2E9               ; 0630A ×3458
  E30D  BD A2 04  LDA $04A2,X                   ; 0630D ×3458
  E310  29 10     AND #$10                      ; 06310 ×3458
  E312  F0 D4     BEQ loc_B0_E2E8               ; 06312 ×3458
  E314  4C BF 9E  JMP sub_B0_9EBF               ; 06314 inferred, not run

sub_B0_E317:                    ; from 06264 014ee 06d53
  E317  BC 92 05  LDY $0592,X                   ; 06317 ×10448
  E31A  B9 74 05  LDA $0574,Y                   ; 0631A ×10448
  E31D  19 11 00  ORA $0011,Y                   ; 0631D ×10448
  E320  29 80     AND #$80                      ; 06320 ×10448
  E322  85 1A     STA $1A                       ; 06322 ×10448
  E324  B9 B1 04  LDA $04B1,Y                   ; 06324 ×10448
  E327  29 40     AND #$40                      ; 06327 ×10448
  E329  19 29 05  ORA $0529,Y                   ; 06329 ×10448
  E32C  05 1A     ORA $1A                       ; 0632C ×10448
  E32E  85 1A     STA $1A                       ; 0632E ×10448
  E330  D0 D8     BNE loc_B0_E30A               ; 06330 ×10448

sub_B0_E332:                    ; from 018f6
  E332  8A        TXA                           ; 06332 ×6990
  E333  45 0B     EOR $0B                       ; 06333 ×6990
  E335  29 07     AND #$07                      ; 06335 ×6990
  E337  85 19     STA $19                       ; 06337 ×6990
  E339  D0 AD     BNE loc_B0_E2E8               ; 06339 ×6990

sub_B0_E33B:                    ; from 017c7
  E33B  B9 FD 03  LDA $03FD,Y                   ; 0633B ×1096
  E33E  FD FD 03  SBC $03FD,X                   ; 0633E ×1096
  E341  85 16     STA $16                       ; 06341 ×1096
  E343  B9 EE 03  LDA $03EE,Y                   ; 06343 ×1096
  E346  FD EE 03  SBC $03EE,X                   ; 06346 ×1096
  E349  85 15     STA $15                       ; 06349 ×1096
  E34B  29 80     AND #$80                      ; 0634B ×1096
  E34D  85 18     STA $18                       ; 0634D ×1096
  E34F  B9 1B 04  LDA $041B,Y                   ; 0634F ×1096
  E352  FD 1B 04  SBC $041B,X                   ; 06352 ×1096
  E355  85 17     STA $17                       ; 06355 ×1096
  E357  69 08     ADC #$08                      ; 06357 ×1096
  E359  C9 10     CMP #$10                      ; 06359 ×1096
  E35B  A9 00     LDA #$00                      ; 0635B ×1096
  E35D  90 1D     BCC loc_B0_E37C               ; 0635D ×1096
  E35F  A5 16     LDA $16                       ; 0635F ×241
  E361  69 40     ADC #$40                      ; 06361 ×241
  E363  30 0F     BMI loc_B0_E374               ; 06363 ×241
  E365  A5 15     LDA $15                       ; 06365 ×157
  E367  69 00     ADC #$00                      ; 06367 ×157
  E369  D0 09     BNE loc_B0_E374               ; 06369 ×157
  E36B  BD 56 05  LDA $0556,X                   ; 0636B ×157
  E36E  69 40     ADC #$40                      ; 0636E ×157
  E370  29 80     AND #$80                      ; 06370 ×157
  E372  85 18     STA $18                       ; 06372 ×157

loc_B0_E374:                    ; from 06363
  E374  A9 20     LDA #$20                      ; 06374 ×241
  E376  26 17     ROL $17                       ; 06376 ×241
  E378  90 02     BCC loc_B0_E37C               ; 06378 ×241
  E37A  A9 E0     LDA #$E0                      ; 0637A ×196

loc_B0_E37C:                    ; from 0635d 06378
  E37C  85 17     STA $17                       ; 0637C ×1096
  E37E  BD C1 03  LDA $03C1,X                   ; 0637E ×1096
  E381  C9 11     CMP #$11                      ; 06381 ×1096
  E383  F0 11     BEQ loc_B0_E396               ; 06383 ×1096
  E385  C9 12     CMP #$12                      ; 06385 ×1096
  E387  F0 0D     BEQ loc_B0_E396               ; 06387 ×1096
  E389  C9 17     CMP #$17                      ; 06389 ×890
  E38B  D0 12     BNE loc_B0_E39F               ; 0638B ×890
  E38D  BD 56 05  LDA $0556,X                   ; 0638D inferred, not run
  E390  69 40     ADC #$40                      ; 06390 inferred, not run
  E392  29 80     AND #$80                      ; 06392 inferred, not run
  E394  85 18     STA $18                       ; 06394 inferred, not run

loc_B0_E396:                    ; from 06387
  E396  A5 17     LDA $17                       ; 06396 ×206
  E398  C9 80     CMP #$80                      ; 06398 ×206
  E39A  6A        ROR A                         ; 0639A ×206
  E39B  85 17     STA $17                       ; 0639B ×206
  E39D  A9 0B     LDA #$0B                      ; 0639D ×206

loc_B0_E39F:                    ; from 0638b
  E39F  C9 47     CMP #$47                      ; 0639F ×1096
  E3A1  F0 0C     BEQ loc_B0_E3AF               ; 063A1 ×1096
  E3A3  C9 11     CMP #$11                      ; 063A3 ×948
  E3A5  F0 08     BEQ loc_B0_E3AF               ; 063A5 ×948
  E3A7  C9 12     CMP #$12                      ; 063A7 ×948
  E3A9  F0 04     BEQ loc_B0_E3AF               ; 063A9 ×948
  E3AB  C9 0B     CMP #$0B                      ; 063AB ×948
  E3AD  D0 11     BNE $E3C0                     ; 063AD ×948

loc_B0_E3AF:                    ; from 063a1
  E3AF  A5 18     LDA $18                       ; 063AF ×1096
  E3B1  2A        ROL A                         ; 063B1 ×1096
  E3B2  A5 17     LDA $17                       ; 063B2 ×1096
  E3B4  B0 04     BCS loc_B0_E3BA               ; 063B4 ×1096
  E3B6  E9 00     SBC #$00                      ; 063B6 ×667
  E3B8  49 FF     EOR #$FF                      ; 063B8 ×667

loc_B0_E3BA:                    ; from 063b4
  E3BA  18        CLC                           ; 063BA ×1096
  E3BB  65 18     ADC $18                       ; 063BB ×1096
  E3BD  9D 56 05  STA $0556,X                   ; 063BD ×1096
  E3C0  BD A2 04  LDA $04A2,X                   ; 063C0 ×1096
  E3C3  29 BF     AND #$BF                      ; 063C3 ×1096
  E3C5  9D A2 04  STA $04A2,X                   ; 063C5 ×1096
  E3C8  A5 10     LDA $10                       ; 063C8 ×1096
  E3CA  C9 05     CMP #$05                      ; 063CA ×1096
  E3CC  D0 04     BNE loc_B0_E3D2               ; 063CC ×1096
  E3CE  66 15     ROR $15                       ; 063CE inferred, not run
  E3D0  66 15     ROR $15                       ; 063D0 inferred, not run

loc_B0_E3D2:                    ; from 063cc
  E3D2  A5 15     LDA $15                       ; 063D2 ×1096
  E3D4  4A        LSR A                         ; 063D4 ×1096
  E3D5  29 40     AND #$40                      ; 063D5 ×1096
  E3D7  1D A2 04  ORA $04A2,X                   ; 063D7 ×1096
  E3DA  9D A2 04  STA $04A2,X                   ; 063DA ×1096
  E3DD  BD C1 03  LDA $03C1,X                   ; 063DD ×1096
  E3E0  C9 0B     CMP #$0B                      ; 063E0 ×1096
  E3E2  D0 6A     BNE loc_B0_E44E               ; 063E2 ×1096
  E3E4  A5 17     LDA $17                       ; 063E4 ×742
  E3E6  F0 0A     BEQ loc_B0_E3F2               ; 063E6 ×742
  E3E8  BD A2 04  LDA $04A2,X                   ; 063E8 ×137
  E3EB  29 10     AND #$10                      ; 063EB ×137
  E3ED  F0 4C     BEQ loc_B0_E43B               ; 063ED ×137
  E3EF  4C BF 9E  JMP sub_B0_9EBF               ; 063EF inferred, not run

loc_B0_E3F2:                    ; from 063e6
  E3F2  A5 16     LDA $16                       ; 063F2 ×605
  E3F4  69 40     ADC #$40                      ; 063F4 ×605
  E3F6  85 16     STA $16                       ; 063F6 ×605
  E3F8  A5 15     LDA $15                       ; 063F8 ×605
  E3FA  69 00     ADC #$00                      ; 063FA ×605
  E3FC  D0 54     BNE loc_B0_E452               ; 063FC ×605
  E3FE  A5 16     LDA $16                       ; 063FE ×534
  E400  E9 20     SBC #$20                      ; 06400 ×534
  E402  C9 40     CMP #$40                      ; 06402 ×534
  E404  B0 4C     BCS loc_B0_E452               ; 06404 ×534
  E406  BD A2 04  LDA $04A2,X                   ; 06406 ×289
  E409  29 10     AND #$10                      ; 06409 ×289
  E40B  F0 04     BEQ loc_B0_E411               ; 0640B ×289
  E40D  A9 40     LDA #$40                      ; 0640D inferred, not run
  E40F  D0 27     BNE loc_B0_E438               ; 0640F inferred, not run

loc_B0_E411:                    ; from 0640b
  E411  A5 16     LDA $16                       ; 06411 ×289
  E413  38        SEC                           ; 06413 ×289
  E414  E9 2C     SBC #$2C                      ; 06414 ×289
  E416  C9 28     CMP #$28                      ; 06416 ×289
  E418  B0 0C     BCS loc_B0_E426               ; 06418 ×289
  E41A  A5 15     LDA $15                       ; 0641A ×108
  E41C  49 80     EOR #$80                      ; 0641C ×108
  E41E  29 80     AND #$80                      ; 0641E ×108
  E420  9D 56 05  STA $0556,X                   ; 06420 ×108
  E423  4C 3B E4  JMP loc_B0_E43B               ; 06423 ×108

loc_B0_E426:                    ; from 06418
  E426  A9 2C     LDA #$2C                      ; 06426 ×181
  E428  9D 65 05  STA $0565,X                   ; 06428 ×181
  E42B  B9 1A 05  LDA $051A,Y                   ; 0642B ×181
  E42E  29 0F     AND #$0F                      ; 0642E ×181
  E430  C9 04     CMP #$04                      ; 06430 ×181
  E432  A9 28     LDA #$28                      ; 06432 ×181
  E434  B0 02     BCS loc_B0_E438               ; 06434 ×181
  E436  A9 2A     LDA #$2A                      ; 06436 ×26

loc_B0_E438:                    ; from 06434
  E438  4C DD DA  JMP sub_B0_DADD               ; 06438 ×181

loc_B0_E43B:                    ; from 06459 063ed 06423
  E43B  84 8D     STY $8D                       ; 0643B ×561
  E43D  BD A2 04  LDA $04A2,X                   ; 0643D ×561
  E440  29 03     AND #$03                      ; 06440 ×561
  E442  18        CLC                           ; 06442 ×561
  E443  65 DD     ADC $DD                       ; 06443 ×561
  E445  A8        TAY                           ; 06445 ×561
  E446  B9 4F E4  LDA $E44F,Y                   ; 06446 ×561
  E449  A4 8D     LDY $8D                       ; 06449 ×561
  E44B  9D 65 05  STA $0565,X                   ; 0644B ×561

loc_B0_E44E:                    ; from 063e2
  E44E  60        RTS                           ; 0644E ×915
  E44F  .byte 30                                                ; 0644F data, read by 06446
  E450  .byte 40 80                                             ; 06450

loc_B0_E452:                    ; from 06404 063fc
  E452  BD A2 04  LDA $04A2,X                   ; 06452 ×316
  E455  29 03     AND #$03                      ; 06455 ×316
  E457  05 DD     ORA $DD                       ; 06457 ×316
  E459  F0 E0     BEQ loc_B0_E43B               ; 06459 ×316
  E45B  BD FD 03  LDA $03FD,X                   ; 0645B inferred, not run
  E45E  45 25     EOR $25                       ; 0645E inferred, not run
  E460  29 1F     AND #$1F                      ; 06460 inferred, not run
  E462  D0 D7     BNE loc_B0_E43B               ; 06462 inferred, not run
  E464  BD A2 04  LDA $04A2,X                   ; 06464 inferred, not run
  E467  09 10     ORA #$10                      ; 06467 inferred, not run
  E469  9D A2 04  STA $04A2,X                   ; 06469 inferred, not run
  E46C  60        RTS                           ; 0646C inferred, not run
  E46D  .byte 03 04 03 02                                       ; 0646D data, read by 0626a

sub_B0_E471:                    ; from 02b23 021a6 02a25
  E471  A5 10     LDA $10                       ; 06471 ×55540
  E473  C9 01     CMP #$01                      ; 06473 ×55540
  E475  D0 36     BNE sub_B0_E4AD               ; 06475 ×55540
  E477  A5 EB     LDA $EB                       ; 06477 ×23650
  E479  D0 32     BNE sub_B0_E4AD               ; 06479 ×23650
  E47B  20 AD E4  JSR sub_B0_E4AD               ; 0647B ×23650
  E47E  BD A2 04  LDA $04A2,X                   ; 0647E ×23650
  E481  29 08     AND #$08                      ; 06481 ×23650
  E483  D0 27     BNE loc_B0_E4AC               ; 06483 ×23650
  E485  BD 1B 04  LDA $041B,X                   ; 06485 ×23650
  E488  38        SEC                           ; 06488 ×23650
  E489  FD 39 04  SBC $0439,X                   ; 06489 ×23650
  E48C  18        CLC                           ; 0648C ×23650
  E48D  7D 75 04  ADC $0475,X                   ; 0648D ×23650
  E490  38        SEC                           ; 06490 ×23650
  E491  E5 89     SBC $89                       ; 06491 ×23650
  E493  38        SEC                           ; 06493 ×23650
  E494  E9 D0     SBC #$D0                      ; 06494 ×23650
  E496  90 14     BCC loc_B0_E4AC               ; 06496 ×23650
  E498  85 15     STA $15                       ; 06498 inferred, not run
  E49A  C9 05     CMP #$05                      ; 0649A inferred, not run
  E49C  B0 0E     BCS loc_B0_E4AC               ; 0649C inferred, not run
  E49E  38        SEC                           ; 0649E inferred, not run
  E49F  BD 1B 04  LDA $041B,X                   ; 0649F inferred, not run
  E4A2  E5 15     SBC $15                       ; 064A2 inferred, not run
  E4A4  9D 1B 04  STA $041B,X                   ; 064A4 inferred, not run
  E4A7  B0 03     BCS loc_B0_E4AC               ; 064A7 inferred, not run
  E4A9  DE 0C 04  DEC $040C,X                   ; 064A9 inferred, not run

loc_B0_E4AC:                    ; from 06496
  E4AC  60        RTS                           ; 064AC ×23650

sub_B0_E4AD:                    ; from 06475 0647b 0623e 0456a 061cd 02fd8 (+18)
  E4AD  A2 12     LDX #$12                      ; 064AD ×98812
  E4AF  A0 05     LDY #$05                      ; 064AF ×98812
  E4B1  4C CB FF  JMP sub_B0_FFCB               ; 064B1 ×98812

loc_B0_E4B4:                    ; from 00310
  E4B4  A2 0C     LDX #$0C                      ; 064B4 ×46
  E4B6  A0 06     LDY #$06                      ; 064B6 ×46
  E4B8  20 CB FF  JSR sub_B0_FFCB               ; 064B8 ×46
  E4BB  A2 C6     LDX #$C6                      ; 064BB ×46
  E4BD  A0 E4     LDY #$E4                      ; 064BD ×46
  E4BF  4C EE 86  JMP loc_B0_86EE               ; 064BF ×46

jt_B0_E4C2:                    ; from 07e90
  E4C2  A2 12     LDX #$12                      ; 064C2 ×966
  E4C4  D0 02     BNE loc_B0_E4C8               ; 064C4 ×966

jt_B0_E4C6:                    ; from 07e90
  E4C6  A2 0F     LDX #$0F                      ; 064C6 ×47794

loc_B0_E4C8:                    ; from 064c4
  E4C8  A0 06     LDY #$06                      ; 064C8 ×48760
  E4CA  20 CB FF  JSR sub_B0_FFCB               ; 064CA ×48760
  E4CD  A5 24     LDA $24                       ; 064CD ×48714
  E4CF  F0 23     BEQ loc_B0_E4F4               ; 064CF ×48714
  E4D1  A5 09     LDA $09                       ; 064D1 ×48668
  E4D3  09 80     ORA #$80                      ; 064D3 ×48668
  E4D5  8D 00 20  STA $2000                     ; 064D5 ×48668
  E4D8  85 09     STA $09                       ; 064D8 ×48668
  E4DA  A5 FF     LDA $FF                       ; 064DA ×48668
  E4DC  F0 10     BEQ loc_B0_E4EE               ; 064DC ×48668
  E4DE  20 78 8D  JSR sub_B0_8D78               ; 064DE inferred, not run
  E4E1  A5 29     LDA $29                       ; 064E1 inferred, not run
  E4E3  05 2A     ORA $2A                       ; 064E3 inferred, not run
  E4E5  F0 07     BEQ loc_B0_E4EE               ; 064E5 inferred, not run
  E4E7  A5 F4     LDA $F4                       ; 064E7 inferred, not run
  E4E9  D0 06     BNE $E4F1                     ; 064E9 inferred, not run
  E4EB  4C 13 83  JMP loc_B0_8313               ; 064EB inferred, not run

loc_B0_E4EE:                    ; from 064dc
  E4EE  4C 10 87  JMP loc_B0_8710               ; 064EE ×48668
  E4F1  4C A5 DA  JMP $DAA5                     ; 064F1 inferred, not run

loc_B0_E4F4:                    ; from 064cf
  E4F4  A2 C2     LDX #$C2                      ; 064F4 ×46
  E4F6  A0 E4     LDY #$E4                      ; 064F6 ×46
  E4F8  4C EE 86  JMP loc_B0_86EE               ; 064F8 ×46

loc_B0_E4FB:                    ; from 00313
  E4FB  A9 28     LDA #$28                      ; 064FB ×46
  E4FD  85 FD     STA $FD                       ; 064FD ×46
  E4FF  A2 15     LDX #$15                      ; 064FF ×46
  E501  A0 06     LDY #$06                      ; 06501 ×46
  E503  20 CB FF  JSR sub_B0_FFCB               ; 06503 ×46
  E506  A2 0D     LDX #$0D                      ; 06506 ×46
  E508  A0 E5     LDY #$E5                      ; 06508 ×46
  E50A  4C EE 86  JMP loc_B0_86EE               ; 0650A ×46

jt_B0_E50D:                    ; from 07e90
  E50D  A2 18     LDX #$18                      ; 0650D ×3358
  E50F  A0 06     LDY #$06                      ; 0650F ×3358
  E511  20 CB FF  JSR sub_B0_FFCB               ; 06511 ×3358
  E514  A5 0D     LDA $0D                       ; 06514 ×3358
  E516  D0 1D     BNE $E535                     ; 06516 ×3358
  E518  A5 0B     LDA $0B                       ; 06518 ×3358
  E51A  C9 48     CMP #$48                      ; 0651A ×3358
  E51C  D0 14     BNE loc_B0_E532               ; 0651C ×3358
  E51E  A9 10     LDA #$10                      ; 0651E ×46
  E520  20 83 83  JSR sub_B0_8383               ; 06520 ×46
  E523  20 8C 83  JSR sub_B0_838C               ; 06523 ×46
  E526  A9 FF     LDA #$FF                      ; 06526 ×46
  E528  85 10     STA $10                       ; 06528 ×46
  E52A  A9 5A     LDA #$5A                      ; 0652A ×46
  E52C  85 23     STA $23                       ; 0652C ×46
  E52E  A9 E5     LDA #$E5                      ; 0652E ×46
  E530  85 24     STA $24                       ; 06530 ×46

loc_B0_E532:                    ; from 0651c
  E532  4C 10 87  JMP loc_B0_8710               ; 06532 ×3358
  E535  20 AA 86  JSR $86AA                     ; 06535 inferred, not run
  E538  A5 0B     LDA $0B                       ; 06538 inferred, not run
  E53A  C9 98     CMP #$98                      ; 0653A inferred, not run
  E53C  D0 F4     BNE loc_B0_E532               ; 0653C inferred, not run
  E53E  E6 0D     INC $0D                       ; 0653E inferred, not run
  E540  4C AA 87  JMP $87AA                     ; 06540 inferred, not run

sub_B0_E543:                    ; from 065c4 0655a 05611 0676e
  E543  AD 02 20  LDA $2002                     ; 06543 ×33430
  E546  A9 00     LDA #$00                      ; 06546 ×33430
  E548  8D 05 20  STA $2005                     ; 06548 ×33430
  E54B  85 87     STA $87                       ; 0654B ×33430

sub_B0_E54D:                    ; from 07ec1 0555d
  E54D  8D 05 20  STA $2005                     ; 0654D ×52069
  E550  A9 18     LDA #$18                      ; 06550 ×52069
  E552  8D 01 20  STA $2001                     ; 06552 ×52069

sub_B0_E555:                    ; from 07ed0
  E555  A9 00     LDA #$00                      ; 06555 ×54423
  E557  4C 84 FF  JMP sub_B0_FF84               ; 06557 ×54423

jt_B0_E55A:                    ; from 07e90
  E55A  20 43 E5  JSR sub_B0_E543               ; 0655A ×10764
  E55D  20 78 8D  JSR sub_B0_8D78               ; 0655D ×10764
  E560  A5 0C     LDA $0C                       ; 06560 ×10764
  E562  C9 99     CMP #$99                      ; 06562 ×10764
  E564  F0 29     BEQ loc_B0_E58F               ; 06564 ×10764
  E566  AD 01 03  LDA $0301                     ; 06566 ×10718
  E569  F0 24     BEQ loc_B0_E58F               ; 06569 ×10718
  E56B  A5 29     LDA $29                       ; 0656B ×10718
  E56D  05 2A     ORA $2A                       ; 0656D ×10718
  E56F  D0 1E     BNE loc_B0_E58F               ; 0656F ×10718

loc_B0_E571:                    ; from 065d8 055a0 0581c 067af
  E571  A0 04     LDY #$04                      ; 06571 ×37702
  E573  20 EB FF  JSR sub_B0_FFEB               ; 06573 ×37702

loc_B0_E576:                    ; from 0564d
  E576  A5 40     LDA $40                       ; 06576 ×42628
  E578  10 12     BPL loc_B0_E58C               ; 06578 ×42628

loc_B0_E57A:                    ; from 07eca
  E57A  A5 09     LDA $09                       ; 0657A ×2806
  E57C  09 80     ORA #$80                      ; 0657C ×2806
  E57E  8D 00 20  STA $2000                     ; 0657E ×2806
  E581  29 7F     AND #$7F                      ; 06581 ×2806
  E583  85 09     STA $09                       ; 06583 ×2806
  E585  A2 1B     LDX #$1B                      ; 06585 ×2806
  E587  A0 03     LDY #$03                      ; 06587 ×2806
  E589  20 CB FF  JSR sub_B0_FFCB               ; 06589 ×2806

loc_B0_E58C:                    ; from 06578
  E58C  4C 10 87  JMP loc_B0_8710               ; 0658C ×42628

loc_B0_E58F:                    ; from 06564 057f5
  E58F  A9 FE     LDA #$FE                      ; 0658F ×92
  E591  85 10     STA $10                       ; 06591 ×92
  E593  A9 00     LDA #$00                      ; 06593 ×92
  E595  8D 01 20  STA $2001                     ; 06595 ×92
  E598  A5 09     LDA $09                       ; 06598 ×92
  E59A  09 80     ORA #$80                      ; 0659A ×92
  E59C  8D 00 20  STA $2000                     ; 0659C ×92
  E59F  29 7F     AND #$7F                      ; 0659F ×92
  E5A1  85 09     STA $09                       ; 065A1 ×92
  E5A3  A9 FF     LDA #$FF                      ; 065A3 ×92
  E5A5  85 11     STA $11                       ; 065A5 ×92
  E5A7  85 12     STA $12                       ; 065A7 ×92
  E5A9  A2 2D     LDX #$2D                      ; 065A9 ×92
  E5AB  A0 06     LDY #$06                      ; 065AB ×92
  E5AD  20 CB FF  JSR sub_B0_FFCB               ; 065AD ×92
  E5B0  A9 C0     LDA #$C0                      ; 065B0 ×92
  E5B2  85 15     STA $15                       ; 065B2 ×92
  E5B4  A2 42     LDX #$42                      ; 065B4 ×92
  E5B6  A0 03     LDY #$03                      ; 065B6 ×92
  E5B8  20 CB FF  JSR sub_B0_FFCB               ; 065B8 ×92
  E5BB  E6 10     INC $10                       ; 065BB ×92
  E5BD  A2 C4     LDX #$C4                      ; 065BD ×92
  E5BF  A0 E5     LDY #$E5                      ; 065BF ×92
  E5C1  4C EE 86  JMP loc_B0_86EE               ; 065C1 ×92

jt_B0_E5C4:                    ; from 07e90
  E5C4  20 43 E5  JSR sub_B0_E543               ; 065C4 ×16974
  E5C7  20 78 8D  JSR sub_B0_8D78               ; 065C7 ×16974
  E5CA  A5 2B     LDA $2B                       ; 065CA ×16974
  E5CC  05 2C     ORA $2C                       ; 065CC ×16974
  E5CE  29 10     AND #$10                      ; 065CE ×16974
  E5D0  D0 0C     BNE loc_B0_E5DE               ; 065D0 ×16974
  E5D2  A5 0C     LDA $0C                       ; 065D2 ×16928
  E5D4  C9 90     CMP #$90                      ; 065D4 ×16928
  E5D6  F0 03     BEQ loc_B0_E5DB               ; 065D6 ×16928
  E5D8  4C 71 E5  JMP loc_B0_E571               ; 065D8 ×16882

loc_B0_E5DB:                    ; from 065d6
  E5DB  4C 16 83  JMP loc_B0_8316               ; 065DB ×46

loc_B0_E5DE:                    ; from 065d0
  E5DE  20 2A E6  JSR sub_B0_E62A               ; 065DE ×46
  E5E1  20 E7 E5  JSR sub_B0_E5E7               ; 065E1 ×46
  E5E4  4C 1F 83  JMP loc_B0_831F               ; 065E4 ×46

sub_B0_E5E7:                    ; from 0670a 0559d 05644 067ac 065e1
  E5E7  A2 01     LDX #$01                      ; 065E7 ×32541

loc_B0_E5E9:                    ; from 06623
  E5E9  86 8D     STX $8D                       ; 065E9 ×65082
  E5EB  B5 2B     LDA $2B,X                     ; 065EB ×65082
  E5ED  29 10     AND #$10                      ; 065ED ×65082
  E5EF  F0 31     BEQ loc_B0_E622               ; 065EF ×65082
  E5F1  B5 0E     LDA $0E,X                     ; 065F1 ×106
  E5F3  30 2D     BMI loc_B0_E622               ; 065F3 ×106
  E5F5  B5 11     LDA $11,X                     ; 065F5 ×106
  E5F7  10 29     BPL loc_B0_E622               ; 065F7 ×106
  E5F9  A9 03     LDA #$03                      ; 065F9 ×49
  E5FB  95 11     STA $11,X                     ; 065FB ×49
  E5FD  D6 0E     DEC $0E,X                     ; 065FD ×49
  E5FF  BD 26 E6  LDA $E626,X                   ; 065FF ×49
  E602  48        PHA                           ; 06602 ×49
  E603  BD 28 E6  LDA $E628,X                   ; 06603 ×49
  E606  AA        TAX                           ; 06606 ×49
  E607  68        PLA                           ; 06607 ×49
  E608  20 E1 84  JSR sub_B0_84E1               ; 06608 ×49
  E60B  A9 60     LDA #$60                      ; 0660B ×49
  E60D  85 81     STA $81                       ; 0660D ×49
  E60F  A6 8D     LDX $8D                       ; 0660F ×49
  E611  B5 29     LDA $29,X                     ; 06611 ×49
  E613  C9 D4     CMP #$D4                      ; 06613 ×49
  E615  D0 0B     BNE loc_B0_E622               ; 06615 ×49
  E617  A9 05     LDA #$05                      ; 06617 inferred, not run
  E619  95 11     STA $11,X                     ; 06619 inferred, not run
  E61B  A9 0B     LDA #$0B                      ; 0661B inferred, not run
  E61D  20 48 91  JSR sub_B0_9148               ; 0661D inferred, not run
  E620  A6 8D     LDX $8D                       ; 06620 inferred, not run

loc_B0_E622:                    ; from 065ef 065f7 06615
  E622  CA        DEX                           ; 06622 ×65082
  E623  10 C4     BPL loc_B0_E5E9               ; 06623 ×65082
  E625  60        RTS                           ; 06625 ×32541
  E626  .byte 30                                                ; 06626 data, read by 065ff
  E627  .byte 32                                                ; 06627
  E628  .byte 0C                                                ; 06628 data, read by 06603
  E629  .byte 0F                                                ; 06629

sub_B0_E62A:                    ; from 055d9 065de 05659 06730
  E62A  A0 00     LDY #$00                      ; 0662A ×144
  E62C  8C 15 40  STY $4015                     ; 0662C ×144

loc_B0_E62F:                    ; from 0663f
  E62F  A9 10     LDA #$10                      ; 0662F ×2304
  E631  99 00 40  STA $4000,Y                   ; 06631 ×2304
  E634  99 21 03  STA $0321,Y                   ; 06634 ×2304
  E637  A9 00     LDA #$00                      ; 06637 ×2304
  E639  99 01 03  STA $0301,Y                   ; 06639 ×2304
  E63C  C8        INY                           ; 0663C ×2304
  E63D  C0 10     CPY #$10                      ; 0663D ×2304
  E63F  D0 EE     BNE loc_B0_E62F               ; 0663F ×2304
  E641  88        DEY                           ; 06641 ×144
  E642  8C 15 40  STY $4015                     ; 06642 ×144
  E645  60        RTS                           ; 06645 ×144

loc_B0_E646:                    ; from 00316
  E646  A9 FF     LDA #$FF                      ; 06646 ×46
  E648  85 82     STA $82                       ; 06648 ×46
  E64A  A2 1B     LDX #$1B                      ; 0664A ×46
  E64C  A0 06     LDY #$06                      ; 0664C ×46
  E64E  20 CB FF  JSR sub_B0_FFCB               ; 0664E ×46
  E651  A2 72     LDX #$72                      ; 06651 ×46
  E653  A0 E6     LDY #$E6                      ; 06653 ×46
  E655  4C EE 86  JMP loc_B0_86EE               ; 06655 ×46

jt_B0_E658:                    ; from 07e90
  E658  4C 5C E7  JMP loc_B0_E75C               ; 06658 ×717

jt_B0_E65B:                    ; from 07e90
  E65B  A2 21     LDX #$21                      ; 0665B ×12113
  E65D  A0 06     LDY #$06                      ; 0665D ×12113
  E65F  20 CB FF  JSR sub_B0_FFCB               ; 0665F ×12113
  E662  20 78 8D  JSR sub_B0_8D78               ; 06662 ×12067
  E665  A5 0D     LDA $0D                       ; 06665 ×12067
  E667  D0 1F     BNE loc_B0_E688               ; 06667 ×12067
  E669  A5 29     LDA $29                       ; 06669 ×11776
  E66B  05 2A     ORA $2A                       ; 0666B ×11776
  E66D  D0 16     BNE $E685                     ; 0666D ×11776
  E66F  4C 88 E6  JMP loc_B0_E688               ; 0666F ×11776

jt_B0_E672:                    ; from 07e90
  E672  A2 1E     LDX #$1E                      ; 06672 ×2990
  E674  A0 06     LDY #$06                      ; 06674 ×2990
  E676  20 CB FF  JSR sub_B0_FFCB               ; 06676 ×2990
  E679  20 78 8D  JSR sub_B0_8D78               ; 06679 ×2944
  E67C  A5 29     LDA $29                       ; 0667C ×2944
  E67E  05 2A     ORA $2A                       ; 0667E ×2944
  E680  D0 03     BNE $E685                     ; 06680 ×2944
  E682  4C B0 E6  JMP loc_B0_E6B0               ; 06682 ×2944
  E685  4C 8F E5  JMP loc_B0_E58F               ; 06685 inferred, not run

loc_B0_E688:                    ; from 0666f 06667
  E688  A5 0B     LDA $0B                       ; 06688 ×12067
  E68A  C9 3E     CMP #$3E                      ; 0668A ×12067
  E68C  F0 08     BEQ loc_B0_E696               ; 0668C ×12067
  E68E  C9 5E     CMP #$5E                      ; 0668E ×12018
  E690  F0 04     BEQ loc_B0_E696               ; 06690 ×12018
  E692  C9 1E     CMP #$1E                      ; 06692 ×11969
  E694  D0 07     BNE loc_B0_E69D               ; 06694 ×11969

loc_B0_E696:                    ; from 0668c 06690
  E696  A9 34     LDA #$34                      ; 06696 ×147
  E698  A2 0C     LDX #$0C                      ; 06698 ×147
  E69A  20 E1 84  JSR sub_B0_84E1               ; 0669A ×147

loc_B0_E69D:                    ; from 06694
  E69D  A5 0B     LDA $0B                       ; 0669D ×12067
  E69F  C9 A0     CMP #$A0                      ; 0669F ×12067
  E6A1  F0 08     BEQ loc_B0_E6AB               ; 066A1 ×12067
  E6A3  C9 C0     CMP #$C0                      ; 066A3 ×12021
  E6A5  F0 04     BEQ loc_B0_E6AB               ; 066A5 ×12021
  E6A7  C9 E0     CMP #$E0                      ; 066A7 ×11975
  E6A9  D0 05     BNE loc_B0_E6B0               ; 066A9 ×11975

loc_B0_E6AB:                    ; from 066a1 066a5
  E6AB  A9 36     LDA #$36                      ; 066AB ×138
  E6AD  20 48 91  JSR sub_B0_9148               ; 066AD ×138

loc_B0_E6B0:                    ; from 066a9 06682
  E6B0  A9 00     LDA #$00                      ; 066B0 ×15011
  E6B2  20 84 FF  JSR sub_B0_FF84               ; 066B2 ×15011
  E6B5  A9 00     LDA #$00                      ; 066B5 ×15011
  E6B7  85 40     STA $40                       ; 066B7 ×15011
  E6B9  4C 10 87  JMP loc_B0_8710               ; 066B9 ×15011

loc_B0_E6BC:                    ; from 0001b
  E6BC  A2 5B     LDX #$5B                      ; 066BC ×49
  E6BE  A0 E6     LDY #$E6                      ; 066BE ×49
  E6C0  4C EE 86  JMP loc_B0_86EE               ; 066C0 ×49

loc_B0_E6C3:                    ; from 0565c
  E6C3  A9 00     LDA #$00                      ; 066C3 ×46
  E6C5  8D 00 20  STA $2000                     ; 066C5 ×46
  E6C8  E6 0D     INC $0D                       ; 066C8 ×46
  E6CA  A2 02     LDX #$02                      ; 066CA ×46
  E6CC  86 82     STX $82                       ; 066CC ×46
  E6CE  20 80 D0  JSR sub_B0_D080               ; 066CE ×46
  E6D1  A2 24     LDX #$24                      ; 066D1 ×46
  E6D3  A0 06     LDY #$06                      ; 066D3 ×46
  E6D5  20 CB FF  JSR sub_B0_FFCB               ; 066D5 ×46

loc_B0_E6D8:                    ; from 0001e
  E6D8  A9 38     LDA #$38                      ; 066D8 ×46
  E6DA  20 48 91  JSR sub_B0_9148               ; 066DA ×46
  E6DD  A2 E4     LDX #$E4                      ; 066DD ×46
  E6DF  A0 E6     LDY #$E6                      ; 066DF ×46
  E6E1  4C EE 86  JMP loc_B0_86EE               ; 066E1 ×46

jt_B0_E6E4:                    ; from 07e90
  E6E4  A2 27     LDX #$27                      ; 066E4 ×22126
  E6E6  A0 06     LDY #$06                      ; 066E6 ×22126
  E6E8  20 CB FF  JSR sub_B0_FFCB               ; 066E8 ×22126
  E6EB  A5 F4     LDA $F4                       ; 066EB ×22080
  E6ED  D0 1E     BNE $E70D                     ; 066ED ×22080
  E6EF  A5 0B     LDA $0B                       ; 066EF ×22080
  E6F1  6A        ROR A                         ; 066F1 ×22080
  E6F2  90 13     BCC loc_B0_E707               ; 066F2 ×22080
  E6F4  A5 0C     LDA $0C                       ; 066F4 ×11040
  E6F6  C9 90     CMP #$90                      ; 066F6 ×11040
  E6F8  D0 0D     BNE loc_B0_E707               ; 066F8 ×11040
  E6FA  A2 0C     LDX #$0C                      ; 066FA ×46
  E6FC  A5 11     LDA $11                       ; 066FC ×46
  E6FE  10 02     BPL loc_B0_E702               ; 066FE ×46
  E700  A2 0F     LDX #$0F                      ; 06700 inferred, not run

loc_B0_E702:                    ; from 066fe
  E702  A9 42     LDA #$42                      ; 06702 ×46
  E704  20 E1 84  JSR sub_B0_84E1               ; 06704 ×46

loc_B0_E707:                    ; from 066f2 066f8
  E707  20 78 8D  JSR sub_B0_8D78               ; 06707 ×22080
  E70A  20 E7 E5  JSR sub_B0_E5E7               ; 0670A ×22080
  E70D  AD 1D 03  LDA $031D                     ; 0670D ×22080
  E710  D0 05     BNE loc_B0_E717               ; 06710 ×22080
  E712  A9 38     LDA #$38                      ; 06712 inferred, not run
  E714  20 48 91  JSR sub_B0_9148               ; 06714 inferred, not run

loc_B0_E717:                    ; from 06710
  E717  A9 00     LDA #$00                      ; 06717 ×22080
  E719  20 84 FF  JSR sub_B0_FF84               ; 06719 ×22080
  E71C  4C 10 87  JMP loc_B0_8710               ; 0671C ×22080

loc_B0_E71F:                    ; from 023a9
  E71F  E6 FE     INC $FE                       ; 0671F ×3
  E721  A9 00     LDA #$00                      ; 06721 ×3
  E723  8D 01 20  STA $2001                     ; 06723 ×3
  E726  20 F2 91  JSR sub_B0_91F2               ; 06726 ×3
  E729  A9 00     LDA #$00                      ; 06729 ×3
  E72B  8D 00 20  STA $2000                     ; 0672B ×3
  E72E  85 09     STA $09                       ; 0672E ×3
  E730  20 2A E6  JSR sub_B0_E62A               ; 06730 ×3
  E733  A2 00     LDX #$00                      ; 06733 ×3

loc_B0_E735:                    ; from 06749
  E735  A9 00     LDA #$00                      ; 06735 ×768
  E737  9D 00 03  STA $0300,X                   ; 06737 ×768
  E73A  9D 00 04  STA $0400,X                   ; 0673A ×768
  E73D  E0 F4     CPX #$F4                      ; 0673D ×768
  E73F  B0 03     BCS loc_B0_E744               ; 0673F ×768
  E741  9D 00 05  STA $0500,X                   ; 06741 ×732

loc_B0_E744:                    ; from 0673f
  E744  9D 00 06  STA $0600,X                   ; 06744 ×768
  E747  48        PHA                           ; 06747 ×768
  E748  CA        DEX                           ; 06748 ×768
  E749  D0 EA     BNE loc_B0_E735               ; 06749 ×768
  E74B  CA        DEX                           ; 0674B ×3
  E74C  9A        TXS                           ; 0674C ×3
  E74D  A9 0A     LDA #$0A                      ; 0674D ×3
  E74F  20 83 83  JSR sub_B0_8383               ; 0674F ×3
  E752  A2 30     LDX #$30                      ; 06752 ×3
  E754  A0 06     LDY #$06                      ; 06754 ×3
  E756  20 CB FF  JSR sub_B0_FFCB               ; 06756 ×3
  E759  4C BC E6  JMP loc_B0_E6BC               ; 06759 inferred, not run

loc_B0_E75C:                    ; from 06658
  E75C  A9 23     LDA #$23                      ; 0675C ×717
  E75E  8D 06 20  STA $2006                     ; 0675E ×717
  E761  A9 50     LDA #$50                      ; 06761 ×717
  E763  8D 06 20  STA $2006                     ; 06763 ×717
  E766  A5 CE     LDA $CE                       ; 06766 ×717
  E768  18        CLC                           ; 06768 ×717
  E769  69 5E     ADC #$5E                      ; 06769 ×717
  E76B  8D 07 20  STA $2007                     ; 0676B ×717
  E76E  20 43 E5  JSR sub_B0_E543               ; 0676E ×717
  E771  A9 FF     LDA #$FF                      ; 06771 ×717
  E773  85 10     STA $10                       ; 06773 ×717
  E775  A5 81     LDA $81                       ; 06775 ×717
  E777  F0 15     BEQ loc_B0_E78E               ; 06777 ×717
  E779  C6 81     DEC $81                       ; 06779 ×288
  E77B  D0 32     BNE loc_B0_E7AF               ; 0677B ×288
  E77D  F0 1B     BEQ loc_B0_E79A               ; 0677D ×3

loc_B0_E77F:                    ; from 0679c
  E77F  A5 0D     LDA $0D                       ; 0677F ×3
  E781  85 10     STA $10                       ; 06781 ×3
  E783  A9 19     LDA #$19                      ; 06783 ×3
  E785  A4 FE     LDY $FE                       ; 06785 ×3
  E787  C0 02     CPY #$02                      ; 06787 ×3
  E789  69 00     ADC #$00                      ; 06789 ×3
  E78B  4C 15 D5  JMP loc_B0_D515               ; 0678B ×3

loc_B0_E78E:                    ; from 06777
  E78E  C6 CF     DEC $CF                       ; 0678E ×429
  E790  D0 17     BNE loc_B0_E7A9               ; 06790 ×429
  E792  A9 3C     LDA #$3C                      ; 06792 ×3
  E794  85 CF     STA $CF                       ; 06794 ×3
  E796  C6 CE     DEC $CE                       ; 06796 ×3
  E798  10 0F     BPL loc_B0_E7A9               ; 06798 ×3

loc_B0_E79A:                    ; from 0677d
  E79A  A5 11     LDA $11                       ; 0679A ×3
  E79C  10 E1     BPL loc_B0_E77F               ; 0679C ×3
  E79E  A5 12     LDA $12                       ; 0679E inferred, not run
  E7A0  10 DD     BPL loc_B0_E77F               ; 067A0 inferred, not run
  E7A2  A9 01     LDA #$01                      ; 067A2 inferred, not run
  E7A4  85 0D     STA $0D                       ; 067A4 inferred, not run
  E7A6  4C 24 DA  JMP $DA24                     ; 067A6 inferred, not run

loc_B0_E7A9:                    ; from 06790 06798
  E7A9  20 78 8D  JSR sub_B0_8D78               ; 067A9 ×429
  E7AC  20 E7 E5  JSR sub_B0_E5E7               ; 067AC ×429

loc_B0_E7AF:                    ; from 0677b
  E7AF  4C 71 E5  JMP loc_B0_E571               ; 067AF ×714

loc_B0_E7B2:                    ; from 00003
  E7B2  BA        TSX                           ; 067B2 ×2209
  E7B3  86 2F     STX $2F                       ; 067B3 ×2209
  E7B5  4C E4 81  JMP loc_B0_81E4               ; 067B5 ×2209
  E7B8  .byte 00 00 00 01 FD FD FD FE FE FF FF FF 00 00 01 01   ; 067B8
  E7C8  .byte 01 02 02 02 03 03 02 02 01 01 00 00 FF FF FF FF   ; 067C8
  E7D8  .byte 00 80 4C 9F E8 20 60 E8 20 26 E9 A5 10 C9 07 D0   ; 067D8
  E7E8  .byte 14 20 FD E7 A6 82 BD C1 03 F0 09 BD D0 03 18 69   ; 067E8
  E7F8  .byte 33 9D D0 03 60 A9 68 BC A1 05 F0 D6 9D D0 03 C0   ; 067F8
  E808  .byte 0E D0 07 A9 A9 20 FD B7 A0 0E B9 AC E7 C9 80 D0   ; 06808
  E818  .byte 19 20 20 E8 A9 68 D0 7F                           ; 06818
  E820  BD DE 04  LDA $04DE,X                   ; 06820 inferred, not run
  E823  9D 39 04  STA $0439,X                   ; 06823 inferred, not run
  E826  BD ED 04  LDA $04ED,X                   ; 06826 inferred, not run
  E829  9D 2A 04  STA $042A,X                   ; 06829 inferred, not run
  E82C  A9 00     LDA #$00                      ; 0682C inferred, not run
  E82E  9D A1 05  STA $05A1,X                   ; 0682E inferred, not run
  E831  60        RTS                           ; 06831 inferred, not run
  E832  .byte 9D C0 04 FE A1 05 BD 0B 05 10 03 1E C0 04 C0 22   ; 06832
  E842  .byte B0 08 20 88 E9 FE D0 03 D0 04 98 20 8F E9 BD C0   ; 06842
  E852  .byte 04 10 05 A9 69 9D D0 03 BD D0 03 4C E1 8E BD DE   ; 06852
  E862  .byte 04 D0 0C BD 39 04 9D DE 04 BD 2A 04 9D ED 04 60   ; 06862
  E872  .byte 20 60 E8 BD A1 05 D0 23 BD 39 04 DD DE 04 D0 08   ; 06872
  E882  .byte BD 2A 04 5D ED 04 F0 0A FE 39 04 D0 03 FE 2A 04   ; 06882
  E892  .byte A9 01 9D C0 04 9D CF 04 9D 66 04 A9 67 BC A1 05   ; 06892
  E8A2  .byte F0 0A DE A1 05 A9 E0 20 7A 8E A9 67 A4 10 C0 04   ; 068A2
  E8B2  .byte D0 0B 20 AD E4 A9 80 9D D0 03 4C 8D E9 4C 85 E9   ; 068B2
  E8C2  .byte BD D0 03 D0 0B BD 1B 04 6A 90 05 A9 80 9D 56 05   ; 068C2
  E8D2  .byte A9 80 A4 10 C0 06 D0 10 A5 0B 29 0F D0 08 BD 1B   ; 068D2
  E8E2  .byte 04 49 02 9D 1B 04 A9 CA 9D D0 03 BD ED 04 D0 0E   ; 068E2
  E8F2  .byte BD 83 05 9D ED 04 BD 56 05 49 80 9D 56 05 DE ED   ; 068F2
  E902  .byte 04 20 09 E9 4C 8D E9 A9 01 BC 56 05               ; 06902
  E90E  F0 07     BEQ $E917                     ; 0690E inferred, not run
  E910  A0 FF     LDY #$FF                      ; 06910 inferred, not run
  E912  49 FF     EOR #$FF                      ; 06912 inferred, not run
  E914  18        CLC                           ; 06914 inferred, not run
  E915  69 01     ADC #$01                      ; 06915 inferred, not run
  E917  18        CLC                           ; 06917 inferred, not run
  E918  7D FD 03  ADC $03FD,X                   ; 06918 inferred, not run
  E91B  9D FD 03  STA $03FD,X                   ; 0691B inferred, not run
  E91E  98        TYA                           ; 0691E inferred, not run
  E91F  7D EE 03  ADC $03EE,X                   ; 0691F inferred, not run
  E922  9D EE 03  STA $03EE,X                   ; 06922 inferred, not run
  E925  60        RTS                           ; 06925 inferred, not run

sub_B0_E926:                    ; from 0694f
  E926  BD A2 04  LDA $04A2,X                   ; 06926 ×3852
  E929  29 03     AND #$03                      ; 06929 ×3852
  E92B  C9 03     CMP #$03                      ; 0692B ×3852
  E92D  D0 1F     BNE loc_B0_E94E               ; 0692D ×3852
  E92F  BD 1B 04  LDA $041B,X                   ; 0692F inferred, not run
  E932  6A        ROR A                         ; 06932 inferred, not run
  E933  BD FD 03  LDA $03FD,X                   ; 06933 inferred, not run
  E936  90 09     BCC $E941                     ; 06936 inferred, not run
  E938  69 01     ADC #$01                      ; 06938 inferred, not run
  E93A  9D FD 03  STA $03FD,X                   ; 0693A inferred, not run
  E93D  A9 00     LDA #$00                      ; 0693D inferred, not run
  E93F  F0 07     BEQ $E948                     ; 0693F inferred, not run
  E941  E9 01     SBC #$01                      ; 06941 inferred, not run
  E943  9D FD 03  STA $03FD,X                   ; 06943 inferred, not run
  E946  A9 FF     LDA #$FF                      ; 06946 inferred, not run
  E948  7D EE 03  ADC $03EE,X                   ; 06948 inferred, not run
  E94B  9D EE 03  STA $03EE,X                   ; 0694B inferred, not run

loc_B0_E94E:                    ; from 0692d
  E94E  60        RTS                           ; 0694E ×3852

jt_B0_E94F:                    ; from 008ec
  E94F  20 26 E9  JSR sub_B0_E926               ; 0694F ×3852
  E952  A9 65     LDA #$65                      ; 06952 ×3852
  E954  9D D0 03  STA $03D0,X                   ; 06954 ×3852
  E957  BD 83 05  LDA $0583,X                   ; 06957 ×3852
  E95A  F0 2C     BEQ loc_B0_E988               ; 0695A ×3852
  E95C  18        CLC                           ; 0695C inferred, not run
  E95D  65 0B     ADC $0B                       ; 0695D inferred, not run
  E95F  C9 28     CMP #$28                      ; 0695F inferred, not run
  E961  90 1A     BCC $E97D                     ; 06961 inferred, not run
  E963  C9 80     CMP #$80                      ; 06963 inferred, not run
  E965  B0 06     BCS $E96D                     ; 06965 inferred, not run
  E967  A9 00     LDA #$00                      ; 06967 inferred, not run
  E969  9D D0 03  STA $03D0,X                   ; 06969 inferred, not run
  E96C  60        RTS                           ; 0696C inferred, not run
  E96D  C9 88     CMP #$88                      ; 0696D inferred, not run
  E96F  B0 17     BCS loc_B0_E988               ; 0696F inferred, not run
  E971  A9 66     LDA #$66                      ; 06971 inferred, not run
  E973  9D D0 03  STA $03D0,X                   ; 06973 inferred, not run
  E976  60        RTS                           ; 06976 inferred, not run
  E977  4C 80 D0  JMP sub_B0_D080               ; 06977 inferred, not run

loc_B0_E97A:                    ; from 06999 069b3
  E97A  4C F3 EA  JMP loc_B0_EAF3               ; 0697A ×7704
  E97D  C9 25     CMP #$25                      ; 0697D inferred, not run
  E97F  B0 F0     BCS $E971                     ; 0697F inferred, not run
  E981  29 02     AND #$02                      ; 06981 inferred, not run
  E983  D0 03     BNE loc_B0_E988               ; 06983 inferred, not run
  E985  9D D0 03  STA $03D0,X                   ; 06985 inferred, not run

loc_B0_E988:                    ; from 0695a
  E988  BD A2 04  LDA $04A2,X                   ; 06988 ×3852
  E98B  30 EA     BMI $E977                     ; 0698B ×3852
  E98D  A9 00     LDA #$00                      ; 0698D ×3852
  E98F  85 22     STA $22                       ; 0698F ×3852
  E991  A0 01     LDY #$01                      ; 06991 ×3852

loc_B0_E993:                    ; from 06af6
  E993  B9 11 00  LDA $0011,Y                   ; 06993 ×7704
  E996  19 74 05  ORA $0574,Y                   ; 06996 ×7704
  E999  30 DF     BMI loc_B0_E97A               ; 06999 ×7704
  E99B  A5 22     LDA $22                       ; 0699B ×3852
  E99D  F0 05     BEQ loc_B0_E9A4               ; 0699D ×3852
  E99F  B9 C0 04  LDA $04C0,Y                   ; 0699F inferred, not run
  E9A2  10 D6     BPL loc_B0_E97A               ; 069A2 inferred, not run

loc_B0_E9A4:                    ; from 0699d
  E9A4  B9 39 04  LDA $0439,Y                   ; 069A4 ×3852
  E9A7  38        SEC                           ; 069A7 ×3852
  E9A8  FD 39 04  SBC $0439,X                   ; 069A8 ×3852
  E9AB  85 15     STA $15                       ; 069AB ×3852
  E9AD  B9 2A 04  LDA $042A,Y                   ; 069AD ×3852
  E9B0  FD 2A 04  SBC $042A,X                   ; 069B0 ×3852
  E9B3  D0 C5     BNE loc_B0_E97A               ; 069B3 ×3852
  E9B5  A5 15     LDA $15                       ; 069B5 ×0
  E9B7  C9 06     CMP #$06                      ; 069B7 ×0
  E9B9  B0 BF     BCS loc_B0_E97A               ; 069B9 ×0
  E9BB  A5 10     LDA $10                       ; 069BB ×0
  E9BD  C9 04     CMP #$04                      ; 069BD ×0
  E9BF  D0 04     BNE $E9C5                     ; 069BF ×0
  E9C1  A9 16     LDA #$16                      ; 069C1 inferred, not run
  E9C3  D0 02     BNE $E9C7                     ; 069C3 inferred, not run
  E9C5  A9 0E     LDA #$0E                      ; 069C5 ×0
  E9C7  20 01 8D  JSR sub_B0_8D01               ; 069C7 ×0
  E9CA  D0 AE     BNE loc_B0_E97A               ; 069CA ×0
  E9CC  BD 39 04  LDA $0439,X                   ; 069CC ×0
  E9CF  18        CLC                           ; 069CF ×0
  E9D0  69 05     ADC #$05                      ; 069D0 ×0
  E9D2  99 39 04  STA $0439,Y                   ; 069D2 ×0
  E9D5  BD 2A 04  LDA $042A,X                   ; 069D5 ×0
  E9D8  69 00     ADC #$00                      ; 069D8 ×0
  E9DA  99 2A 04  STA $042A,Y                   ; 069DA ×0
  E9DD  A9 00     LDA #$00                      ; 069DD ×0
  E9DF  99 BB 03  STA $03BB,Y                   ; 069DF ×0
  E9E2  BD A2 04  LDA $04A2,X                   ; 069E2 ×0
  E9E5  29 03     AND #$03                      ; 069E5 ×0
  E9E7  C9 03     CMP #$03                      ; 069E7 ×0
  E9E9  D0 48     BNE $EA33                     ; 069E9 ×0
  E9EB  84 8D     STY $8D                       ; 069EB inferred, not run
  E9ED  BD C1 03  LDA $03C1,X                   ; 069ED inferred, not run
  E9F0  C9 34     CMP #$34                      ; 069F0 inferred, not run
  E9F2  F0 0E     BEQ $EA02                     ; 069F2 inferred, not run
  E9F4  49 36     EOR #$36                      ; 069F4 inferred, not run
  E9F6  D0 3B     BNE $EA33                     ; 069F6 inferred, not run
  E9F8  BD 0B 05  LDA $050B,X                   ; 069F8 inferred, not run
  E9FB  29 80     AND #$80                      ; 069FB inferred, not run
  E9FD  D0 19     BNE $EA18                     ; 069FD inferred, not run
  E9FF  20 20 E8  JSR $E820                     ; 069FF inferred, not run
  EA02  20 1E EE  JSR sub_B0_EE1E               ; 06A02 inferred, not run
  EA05  C9 B0     CMP #$B0                      ; 06A05 inferred, not run
  EA07  B0 0F     BCS $EA18                     ; 06A07 inferred, not run
  EA09  A5 B2     LDA $B2                       ; 06A09 inferred, not run
  EA0B  D0 0B     BNE $EA18                     ; 06A0B inferred, not run
  EA0D  A2 15     LDX #$15                      ; 06A0D inferred, not run
  EA0F  A0 02     LDY #$02                      ; 06A0F inferred, not run
  EA11  20 CB FF  JSR sub_B0_FFCB               ; 06A11 inferred, not run
  EA14  A6 82     LDX $82                       ; 06A14 inferred, not run
  EA16  A4 8D     LDY $8D                       ; 06A16 inferred, not run
  EA18  BD FD 03  LDA $03FD,X                   ; 06A18 inferred, not run
  EA1B  38        SEC                           ; 06A1B inferred, not run
  EA1C  F9 FD 03  SBC $03FD,Y                   ; 06A1C inferred, not run
  EA1F  18        CLC                           ; 06A1F inferred, not run
  EA20  69 0C     ADC #$0C                      ; 06A20 inferred, not run
  EA22  C9 18     CMP #$18                      ; 06A22 inferred, not run
  EA24  B0 0D     BCS $EA33                     ; 06A24 inferred, not run
  EA26  BD 1B 04  LDA $041B,X                   ; 06A26 inferred, not run
  EA29  6A        ROR A                         ; 06A29 inferred, not run
  EA2A  98        TYA                           ; 06A2A inferred, not run
  EA2B  AA        TAX                           ; 06A2B inferred, not run
  EA2C  20 33 E9  JSR $E933                     ; 06A2C inferred, not run
  EA2F  A4 8D     LDY $8D                       ; 06A2F inferred, not run
  EA31  A6 82     LDX $82                       ; 06A31 inferred, not run
  EA33  BD C1 03  LDA $03C1,X                   ; 06A33 ×0
  EA36  C9 36     CMP #$36                      ; 06A36 ×0
  EA38  D0 3D     BNE $EA77                     ; 06A38 ×0
  EA3A  A9 80     LDA #$80                      ; 06A3A inferred, not run
  EA3C  99 BB 03  STA $03BB,Y                   ; 06A3C inferred, not run
  EA3F  A9 30     LDA #$30                      ; 06A3F inferred, not run
  EA41  99 BD 03  STA $03BD,Y                   ; 06A41 inferred, not run
  EA44  A9 03     LDA #$03                      ; 06A44 inferred, not run
  EA46  99 EC 00  STA $00EC,Y                   ; 06A46 inferred, not run
  EA49  B9 A2 04  LDA $04A2,Y                   ; 06A49 inferred, not run
  EA4C  29 EF     AND #$EF                      ; 06A4C inferred, not run
  EA4E  99 A2 04  STA $04A2,Y                   ; 06A4E inferred, not run
  EA51  A9 20     LDA #$20                      ; 06A51 inferred, not run
  EA53  D9 65 05  CMP $0565,Y                   ; 06A53 inferred, not run
  EA56  B0 03     BCS $EA5B                     ; 06A56 inferred, not run
  EA58  99 65 05  STA $0565,Y                   ; 06A58 inferred, not run
  EA5B  BD A1 05  LDA $05A1,X                   ; 06A5B inferred, not run
  EA5E  D0 03     BNE $EA63                     ; 06A5E inferred, not run
  EA60  9D 0B 05  STA $050B,X                   ; 06A60 inferred, not run
  EA63  C9 2A     CMP #$2A                      ; 06A63 inferred, not run
  EA65  B0 27     BCS $EA8E                     ; 06A65 inferred, not run
  EA67  B9 2B 00  LDA $002B,Y                   ; 06A67 inferred, not run
  EA6A  1D 0B 05  ORA $050B,X                   ; 06A6A inferred, not run
  EA6D  9D 0B 05  STA $050B,X                   ; 06A6D inferred, not run
  EA70  BD A1 05  LDA $05A1,X                   ; 06A70 inferred, not run
  EA73  D0 19     BNE $EA8E                     ; 06A73 inferred, not run
  EA75  F0 12     BEQ $EA89                     ; 06A75 inferred, not run
  EA77  49 3E     EOR #$3E                      ; 06A77 ×0
  EA79  D0 0E     BNE $EA89                     ; 06A79 ×0
  EA7B  99 BD 05  STA $05BD,Y                   ; 06A7B inferred, not run
  EA7E  B9 65 05  LDA $0565,Y                   ; 06A7E inferred, not run
  EA81  38        SEC                           ; 06A81 inferred, not run
  EA82  E9 02     SBC #$02                      ; 06A82 inferred, not run
  EA84  90 03     BCC $EA89                     ; 06A84 inferred, not run
  EA86  99 65 05  STA $0565,Y                   ; 06A86 inferred, not run
  EA89  A9 0C     LDA #$0C                      ; 06A89 ×0
  EA8B  9D A1 05  STA $05A1,X                   ; 06A8B ×0
  EA8E  BD CF 04  LDA $04CF,X                   ; 06A8E ×0
  EA91  99 CF 04  STA $04CF,Y                   ; 06A91 ×0
  EA94  BD C0 04  LDA $04C0,X                   ; 06A94 ×0
  EA97  99 C0 04  STA $04C0,Y                   ; 06A97 ×0
  EA9A  BD 66 04  LDA $0466,X                   ; 06A9A ×0
  EA9D  99 66 04  STA $0466,Y                   ; 06A9D ×0
  EAA0  BD C1 03  LDA $03C1,X                   ; 06AA0 ×0
  EAA3  C9 36     CMP #$36                      ; 06AA3 ×0
  EAA5  D0 2B     BNE $EAD2                     ; 06AA5 ×0
  EAA7  BD C0 04  LDA $04C0,X                   ; 06AA7 inferred, not run
  EAAA  30 26     BMI $EAD2                     ; 06AAA inferred, not run
  EAAC  C9 05     CMP #$05                      ; 06AAC inferred, not run
  EAAE  90 22     BCC $EAD2                     ; 06AAE inferred, not run
  EAB0  BD A2 04  LDA $04A2,X                   ; 06AB0 inferred, not run
  EAB3  29 03     AND #$03                      ; 06AB3 inferred, not run
  EAB5  C9 03     CMP #$03                      ; 06AB5 inferred, not run
  EAB7  A9 60     LDA #$60                      ; 06AB7 inferred, not run
  EAB9  90 02     BCC $EABD                     ; 06AB9 inferred, not run
  EABB  A9 C0     LDA #$C0                      ; 06ABB inferred, not run
  EABD  99 CF 04  STA $04CF,Y                   ; 06ABD inferred, not run
  EAC0  BD A2 04  LDA $04A2,X                   ; 06AC0 inferred, not run
  EAC3  29 03     AND #$03                      ; 06AC3 inferred, not run
  EAC5  C9 01     CMP #$01                      ; 06AC5 inferred, not run
  EAC7  D0 04     BNE $EACD                     ; 06AC7 inferred, not run
  EAC9  A9 07     LDA #$07                      ; 06AC9 inferred, not run
  EACB  D0 02     BNE $EACF                     ; 06ACB inferred, not run
  EACD  A9 05     LDA #$05                      ; 06ACD inferred, not run
  EACF  99 C0 04  STA $04C0,Y                   ; 06ACF inferred, not run
  EAD2  B9 B1 04  LDA $04B1,Y                   ; 06AD2 ×0
  EAD5  09 10     ORA #$10                      ; 06AD5 ×0
  EAD7  99 B1 04  STA $04B1,Y                   ; 06AD7 ×0
  EADA  BD C1 03  LDA $03C1,X                   ; 06ADA ×0
  EADD  C9 3E     CMP #$3E                      ; 06ADD ×0
  EADF  D0 12     BNE loc_B0_EAF3               ; 06ADF ×0
  EAE1  84 8D     STY $8D                       ; 06AE1 inferred, not run
  EAE3  A9 01     LDA #$01                      ; 06AE3 inferred, not run
  EAE5  BC 56 05  LDY $0556,X                   ; 06AE5 inferred, not run
  EAE8  A6 8D     LDX $8D                       ; 06AE8 inferred, not run
  EAEA  C0 00     CPY #$00                      ; 06AEA inferred, not run
  EAEC  20 0E E9  JSR $E90E                     ; 06AEC inferred, not run
  EAEF  A4 8D     LDY $8D                       ; 06AEF inferred, not run
  EAF1  A6 82     LDX $82                       ; 06AF1 inferred, not run

loc_B0_EAF3:                    ; from 0697a
  EAF3  88        DEY                           ; 06AF3 ×7704
  EAF4  30 03     BMI loc_B0_EAF9               ; 06AF4 ×7704
  EAF6  4C 93 E9  JMP loc_B0_E993               ; 06AF6 ×3852

loc_B0_EAF9:                    ; from 06af4
  EAF9  60        RTS                           ; 06AF9 ×3852
  EAFA  .byte 4C 80 D0 BD A2 04 30 F8 20 B7 FA BD 84 04 C9 70   ; 06AFA
  EB0A  .byte 90 10 C9 90 B0 0C 5D 92 05 10 07 A9 A7 A2 0C 20   ; 06B0A
  EB1A  .byte 4A 91 BD 84 04 9D 92 05 BD 83 05 29 40 F0 17 A9   ; 06B1A
  EB2A  .byte C0 20 7A 8E 20 AD E4 BD 75 04 D0 0A A9 05 9D C0   ; 06B2A
  EB3A  .byte 04 A9 83 20 FD B7 20 33 F8 A9 6A 9D D0 03         ; 06B3A
  EB48  60        RTS                           ; 06B48 inferred, not run
  EB49  C9 F0     CMP #$F0                      ; 06B49 inferred, not run
  EB4B  90 FB     BCC $EB48                     ; 06B4B inferred, not run
  EB4D  48        PHA                           ; 06B4D inferred, not run
  EB4E  A9 00     LDA #$00                      ; 06B4E inferred, not run
  EB50  9D 75 04  STA $0475,X                   ; 06B50 inferred, not run
  EB53  A5 10     LDA $10                       ; 06B53 inferred, not run
  EB55  C9 0D     CMP #$0D                      ; 06B55 inferred, not run
  EB57  A9 84     LDA #$84                      ; 06B57 inferred, not run
  EB59  B0 13     BCS $EB6E                     ; 06B59 inferred, not run
  EB5B  BD 74 05  LDA $0574,X                   ; 06B5B inferred, not run
  EB5E  C9 01     CMP #$01                      ; 06B5E inferred, not run
  EB60  A9 B4     LDA #$B4                      ; 06B60 inferred, not run
  EB62  90 0A     BCC $EB6E                     ; 06B62 inferred, not run
  EB64  A5 8A     LDA $8A                       ; 06B64 inferred, not run
  EB66  C9 01     CMP #$01                      ; 06B66 inferred, not run
  EB68  A9 F7     LDA #$F7                      ; 06B68 inferred, not run
  EB6A  90 02     BCC $EB6E                     ; 06B6A inferred, not run
  EB6C  A9 F5     LDA #$F5                      ; 06B6C inferred, not run
  EB6E  9D D0 03  STA $03D0,X                   ; 06B6E inferred, not run
  EB71  20 52 8E  JSR sub_B0_8E52               ; 06B71 inferred, not run
  EB74  BD 92 05  LDA $0592,X                   ; 06B74 inferred, not run
  EB77  C9 F1     CMP #$F1                      ; 06B77 inferred, not run
  EB79  B0 57     BCS $EBD2                     ; 06B79 inferred, not run
  EB7B  BD A2 04  LDA $04A2,X                   ; 06B7B inferred, not run
  EB7E  30 4D     BMI $EBCD                     ; 06B7E inferred, not run
  EB80  BD 93 04  LDA $0493,X                   ; 06B80 inferred, not run
  EB83  10 48     BPL $EBCD                     ; 06B83 inferred, not run
  EB85  A9 00     LDA #$00                      ; 06B85 inferred, not run
  EB87  9D 92 05  STA $0592,X                   ; 06B87 inferred, not run
  EB8A  20 AD E4  JSR sub_B0_E4AD               ; 06B8A inferred, not run
  EB8D  BD 75 04  LDA $0475,X                   ; 06B8D inferred, not run
  EB90  D0 3B     BNE $EBCD                     ; 06B90 inferred, not run
  EB92  A9 03     LDA #$03                      ; 06B92 inferred, not run
  EB94  9D C0 04  STA $04C0,X                   ; 06B94 inferred, not run
  EB97  20 58 FE  JSR sub_B0_FE58               ; 06B97 inferred, not run
  EB9A  A4 82     LDY $82                       ; 06B9A inferred, not run
  EB9C  20 6D B1  JSR sub_B0_B16D               ; 06B9C inferred, not run
  EB9F  20 94 FA  JSR sub_B0_FA94               ; 06B9F inferred, not run
  EBA2  A9 0A     LDA #$0A                      ; 06BA2 inferred, not run
  EBA4  20 48 91  JSR sub_B0_9148               ; 06BA4 inferred, not run
  EBA7  A9 24     LDA #$24                      ; 06BA7 inferred, not run
  EBA9  20 F6 B7  JSR sub_B0_B7F6               ; 06BA9 inferred, not run
  EBAC  20 7E 83  JSR sub_B0_837E               ; 06BAC inferred, not run
  EBAF  A6 82     LDX $82                       ; 06BAF inferred, not run
  EBB1  A9 05     LDA #$05                      ; 06BB1 inferred, not run
  EBB3  8D C0 04  STA $04C0                     ; 06BB3 inferred, not run
  EBB6  8D C1 04  STA $04C1                     ; 06BB6 inferred, not run
  EBB9  A5 8A     LDA $8A                       ; 06BB9 inferred, not run
  EBBB  F0 0C     BEQ $EBC9                     ; 06BBB inferred, not run
  EBBD  C9 34     CMP #$34                      ; 06BBD inferred, not run
  EBBF  B0 08     BCS $EBC9                     ; 06BBF inferred, not run
  EBC1  A9 40     LDA #$40                      ; 06BC1 inferred, not run
  EBC3  8D CE 05  STA $05CE                     ; 06BC3 inferred, not run
  EBC6  8D CF 05  STA $05CF                     ; 06BC6 inferred, not run
  EBC9  68        PLA                           ; 06BC9 inferred, not run
  EBCA  A9 F1     LDA #$F1                      ; 06BCA inferred, not run
  EBCC  48        PHA                           ; 06BCC inferred, not run
  EBCD  68        PLA                           ; 06BCD inferred, not run
  EBCE  9D 92 05  STA $0592,X                   ; 06BCE inferred, not run
  EBD1  60        RTS                           ; 06BD1 inferred, not run
  EBD2  A5 0B     LDA $0B                       ; 06BD2 inferred, not run
  EBD4  29 03     AND #$03                      ; 06BD4 inferred, not run
  EBD6  D0 06     BNE $EBDE                     ; 06BD6 inferred, not run
  EBD8  A5 87     LDA $87                       ; 06BD8 inferred, not run
  EBDA  49 04     EOR #$04                      ; 06BDA inferred, not run
  EBDC  85 87     STA $87                       ; 06BDC inferred, not run
  EBDE  BD A2 04  LDA $04A2,X                   ; 06BDE inferred, not run
  EBE1  10 EA     BPL $EBCD                     ; 06BE1 inferred, not run
  EBE3  68        PLA                           ; 06BE3 inferred, not run
  EBE4  BD 74 05  LDA $0574,X                   ; 06BE4 inferred, not run
  EBE7  F0 27     BEQ $EC10                     ; 06BE7 inferred, not run
  EBE9  A5 10     LDA $10                       ; 06BE9 inferred, not run
  EBEB  C9 0D     CMP #$0D                      ; 06BEB inferred, not run
  EBED  D0 1D     BNE $EC0C                     ; 06BED inferred, not run
  EBEF  A9 80     LDA #$80                      ; 06BEF inferred, not run
  EBF1  9D FD 03  STA $03FD,X                   ; 06BF1 inferred, not run
  EBF4  A9 00     LDA #$00                      ; 06BF4 inferred, not run
  EBF6  9D 65 05  STA $0565,X                   ; 06BF6 inferred, not run
  EBF9  9D A1 05  STA $05A1,X                   ; 06BF9 inferred, not run
  EBFC  9D 75 04  STA $0475,X                   ; 06BFC inferred, not run
  EBFF  85 87     STA $87                       ; 06BFF inferred, not run
  EC01  A9 CF     LDA #$CF                      ; 06C01 inferred, not run
  EC03  9D 83 05  STA $0583,X                   ; 06C03 inferred, not run
  EC06  A9 7E     LDA #$7E                      ; 06C06 inferred, not run
  EC08  9D C1 03  STA $03C1,X                   ; 06C08 inferred, not run
  EC0B  60        RTS                           ; 06C0B inferred, not run
  EC0C  A9 80     LDA #$80                      ; 06C0C inferred, not run
  EC0E  85 EB     STA $EB                       ; 06C0E inferred, not run
  EC10  4C 80 D0  JMP sub_B0_D080               ; 06C10 inferred, not run
  EC13  4C 49 EB  JMP $EB49                     ; 06C13 inferred, not run
  EC16  BD 92 05  LDA $0592,X                   ; 06C16 inferred, not run
  EC19  F0 05     BEQ $EC20                     ; 06C19 inferred, not run
  EC1B  30 F6     BMI $EC13                     ; 06C1B inferred, not run
  EC1D  DE 92 05  DEC $0592,X                   ; 06C1D inferred, not run
  EC20  86 F3     STX $F3                       ; 06C20 inferred, not run
  EC22  A9 00     LDA #$00                      ; 06C22 inferred, not run
  EC24  9D 74 05  STA $0574,X                   ; 06C24 inferred, not run
  EC27  9D 47 05  STA $0547,X                   ; 06C27 inferred, not run
  EC2A  9D B1 04  STA $04B1,X                   ; 06C2A inferred, not run
  EC2D  BD 1A 05  LDA $051A,X                   ; 06C2D inferred, not run
  EC30  09 F0     ORA #$F0                      ; 06C30 inferred, not run
  EC32  9D 1A 05  STA $051A,X                   ; 06C32 inferred, not run
  EC35  A5 0B     LDA $0B                       ; 06C35 inferred, not run
  EC37  29 0F     AND #$0F                      ; 06C37 inferred, not run
  EC39  D0 06     BNE $EC41                     ; 06C39 inferred, not run
  EC3B  E6 33     INC $33                       ; 06C3B inferred, not run
  EC3D  D0 02     BNE $EC41                     ; 06C3D inferred, not run
  EC3F  C6 33     DEC $33                       ; 06C3F inferred, not run
  EC41  BD 56 05  LDA $0556,X                   ; 06C41 inferred, not run
  EC44  4A        LSR A                         ; 06C44 inferred, not run
  EC45  9D A2 04  STA $04A2,X                   ; 06C45 inferred, not run
  EC48  A5 0B     LDA $0B                       ; 06C48 inferred, not run
  EC4A  29 C0     AND #$C0                      ; 06C4A inferred, not run
  EC4C  C9 C0     CMP #$C0                      ; 06C4C inferred, not run
  EC4E  F0 02     BEQ $EC52                     ; 06C4E inferred, not run
  EC50  A9 40     LDA #$40                      ; 06C50 inferred, not run
  EC52  BD 83 05  LDA $0583,X                   ; 06C52 inferred, not run
  EC55  C9 F5     CMP #$F5                      ; 06C55 inferred, not run
  EC57  90 0F     BCC $EC68                     ; 06C57 inferred, not run
  EC59  BC 75 04  LDY $0475,X                   ; 06C59 inferred, not run
  EC5C  D0 0A     BNE $EC68                     ; 06C5C inferred, not run
  EC5E  20 BD FA  JSR $FABD                     ; 06C5E inferred, not run
  EC61  A9 FF     LDA #$FF                      ; 06C61 inferred, not run
  EC63  9D 65 05  STA $0565,X                   ; 06C63 inferred, not run
  EC66  D0 06     BNE $EC6E                     ; 06C66 inferred, not run
  EC68  9D 65 05  STA $0565,X                   ; 06C68 inferred, not run
  EC6B  20 4C 8F  JSR sub_B0_8F4C               ; 06C6B inferred, not run
  EC6E  A9 C0     LDA #$C0                      ; 06C6E inferred, not run
  EC70  20 7A 8E  JSR sub_B0_8E7A               ; 06C70 inferred, not run
  EC73  20 AD E4  JSR sub_B0_E4AD               ; 06C73 inferred, not run
  EC76  BD 75 04  LDA $0475,X                   ; 06C76 inferred, not run
  EC79  D0 08     BNE $EC83                     ; 06C79 inferred, not run
  EC7B  9D CF 04  STA $04CF,X                   ; 06C7B inferred, not run
  EC7E  A9 FE     LDA #$FE                      ; 06C7E inferred, not run
  EC80  9D C0 04  STA $04C0,X                   ; 06C80 inferred, not run
  EC83  BD 65 05  LDA $0565,X                   ; 06C83 inferred, not run
  EC86  4A        LSR A                         ; 06C86 inferred, not run
  EC87  20 D8 E2  JSR sub_B0_E2D8               ; 06C87 inferred, not run
  EC8A  B9 91 EC  LDA $EC91,Y                   ; 06C8A inferred, not run
  EC8D  9D D0 03  STA $03D0,X                   ; 06C8D inferred, not run
  EC90  60        RTS                           ; 06C90 inferred, not run
  EC91  .byte 82 83 84 83                                       ; 06C91

jt_B0_EC95:                    ; from 008ec
  EC95  BD 74 05  LDA $0574,X                   ; 06C95 ×4771
  EC98  D0 04     BNE loc_B0_EC9E               ; 06C98 ×4771
  EC9A  A9 1E     LDA #$1E                      ; 06C9A ×4592
  EC9C  85 B2     STA $B2                       ; 06C9C ×4592

loc_B0_EC9E:                    ; from 06c98
  EC9E  BD 47 05  LDA $0547,X                   ; 06C9E ×4771
  ECA1  F0 75     BEQ loc_B0_ED18               ; 06CA1 ×4771
  ECA3  20 4C 8F  JSR sub_B0_8F4C               ; 06CA3 ×1583
  ECA6  BD 74 05  LDA $0574,X                   ; 06CA6 ×1583
  ECA9  F0 08     BEQ loc_B0_ECB3               ; 06CA9 ×1583
  ECAB  BD A2 04  LDA $04A2,X                   ; 06CAB ×179
  ECAE  10 0A     BPL loc_B0_ECBA               ; 06CAE ×179
  ECB0  4C 80 D0  JMP sub_B0_D080               ; 06CB0 ×14

loc_B0_ECB3:                    ; from 06ca9
  ECB3  BD B1 04  LDA $04B1,X                   ; 06CB3 ×1404
  ECB6  29 40     AND #$40                      ; 06CB6 ×1404
  ECB8  D0 06     BNE loc_B0_ECC0               ; 06CB8 ×1404

loc_B0_ECBA:                    ; from 06cae
  ECBA  20 A7 E1  JSR sub_B0_E1A7               ; 06CBA ×813
  ECBD  4C EC EC  JMP loc_B0_ECEC               ; 06CBD ×813

loc_B0_ECC0:                    ; from 06cb8
  ECC0  A9 FC     LDA #$FC                      ; 06CC0 ×756
  ECC2  9D C0 04  STA $04C0,X                   ; 06CC2 ×756
  ECC5  20 52 8E  JSR sub_B0_8E52               ; 06CC5 ×756
  ECC8  20 AD E4  JSR sub_B0_E4AD               ; 06CC8 ×756
  ECCB  5E 65 05  LSR $0565,X                   ; 06CCB ×756
  ECCE  BD 47 05  LDA $0547,X                   ; 06CCE ×756
  ECD1  C9 30     CMP #$30                      ; 06CD1 ×756
  ECD3  B0 03     BCS loc_B0_ECD8               ; 06CD3 ×756
  ECD5  20 E0 FC  JSR sub_B0_FCE0               ; 06CD5 ×126

loc_B0_ECD8:                    ; from 06cd3
  ECD8  20 59 9E  JSR sub_B0_9E59               ; 06CD8 ×756
  ECDB  BD 47 05  LDA $0547,X                   ; 06CDB ×756
  ECDE  D0 08     BNE loc_B0_ECE8               ; 06CDE ×756
  ECE0  A9 01     LDA #$01                      ; 06CE0 ×0
  ECE2  9D C0 04  STA $04C0,X                   ; 06CE2 ×0
  ECE5  4C 9F ED  JMP sub_B0_ED9F               ; 06CE5 ×0

loc_B0_ECE8:                    ; from 06cde 06db6 06d03
  ECE8  A9 88     LDA #$88                      ; 06CE8 ×918
  ECEA  D0 28     BNE loc_B0_ED14               ; 06CEA ×918

loc_B0_ECEC:                    ; from 06cbd
  ECEC  BD 74 05  LDA $0574,X                   ; 06CEC ×813
  ECEF  F0 18     BEQ loc_B0_ED09               ; 06CEF ×813
  ECF1  20 66 CF  JSR sub_B0_CF66               ; 06CF1 ×165
  ECF4  BD 65 05  LDA $0565,X                   ; 06CF4 ×165
  ECF7  C9 FF     CMP #$FF                      ; 06CF7 ×165
  ECF9  F0 0A     BEQ loc_B0_ED05               ; 06CF9 ×165
  ECFB  5E 65 05  LSR $0565,X                   ; 06CFB ×65
  ECFE  A9 FC     LDA #$FC                      ; 06CFE ×65
  ED00  9D C0 04  STA $04C0,X                   ; 06D00 ×65
  ED03  D0 E3     BNE loc_B0_ECE8               ; 06D03 ×65

loc_B0_ED05:                    ; from 06cf9
  ED05  A9 87     LDA #$87                      ; 06D05 ×100
  ED07  D0 0B     BNE loc_B0_ED14               ; 06D07 ×100

loc_B0_ED09:                    ; from 06cef
  ED09  BD 47 05  LDA $0547,X                   ; 06D09 ×648
  ED0C  C9 3B     CMP #$3B                      ; 06D0C ×648
  ED0E  A9 89     LDA #$89                      ; 06D0E ×648
  ED10  B0 02     BCS loc_B0_ED14               ; 06D10 ×648
  ED12  A9 85     LDA #$85                      ; 06D12 ×504

loc_B0_ED14:                    ; from 06cea 06d10 06d07
  ED14  9D D0 03  STA $03D0,X                   ; 06D14 ×1666
  ED17  60        RTS                           ; 06D17 ×1666

loc_B0_ED18:                    ; from 06ca1
  ED18  A5 10     LDA $10                       ; 06D18 ×3188
  ED1A  49 06     EOR #$06                      ; 06D1A ×3188
  ED1C  D0 05     BNE loc_B0_ED23               ; 06D1C ×3188
  ED1E  A9 00     LDA #$00                      ; 06D1E ×2318
  ED20  9D 1A 05  STA $051A,X                   ; 06D20 ×2318

loc_B0_ED23:                    ; from 06d1c
  ED23  BD 74 05  LDA $0574,X                   ; 06D23 ×3188
  ED26  F0 07     BEQ loc_B0_ED2F               ; 06D26 ×3188
  ED28  20 92 E1  JSR $E192                     ; 06D28 inferred, not run
  ED2B  A9 88     LDA #$88                      ; 06D2B inferred, not run
  ED2D  D0 E5     BNE loc_B0_ED14               ; 06D2D inferred, not run

loc_B0_ED2F:                    ; from 06d26
  ED2F  BD D0 03  LDA $03D0,X                   ; 06D2F ×3188
  ED32  D0 03     BNE loc_B0_ED37               ; 06D32 ×3188
  ED34  20 E9 E2  JSR sub_B0_E2E9               ; 06D34 ×16

loc_B0_ED37:                    ; from 06d32
  ED37  BD FC 04  LDA $04FC,X                   ; 06D37 ×3188
  ED3A  F0 0D     BEQ loc_B0_ED49               ; 06D3A ×3188
  ED3C  A9 FE     LDA #$FE                      ; 06D3C ×421
  ED3E  20 6A D0  JSR sub_B0_D06A               ; 06D3E ×421
  ED41  20 9F ED  JSR sub_B0_ED9F               ; 06D41 ×421
  ED44  A9 03     LDA #$03                      ; 06D44 ×421
  ED46  4C F6 DA  JMP sub_B0_DAF6               ; 06D46 ×421

loc_B0_ED49:                    ; from 06d3a
  ED49  8A        TXA                           ; 06D49 ×2767
  ED4A  45 0B     EOR $0B                       ; 06D4A ×2767
  ED4C  29 0F     AND #$0F                      ; 06D4C ×2767
  ED4E  1D 75 04  ORA $0475,X                   ; 06D4E ×2767
  ED51  D0 45     BNE loc_B0_ED98               ; 06D51 ×2767
  ED53  20 17 E3  JSR sub_B0_E317               ; 06D53 ×176
  ED56  A5 1A     LDA $1A                       ; 06D56 ×176
  ED58  F0 04     BEQ loc_B0_ED5E               ; 06D58 ×176
  ED5A  A9 01     LDA #$01                      ; 06D5A ×28
  ED5C  D0 2C     BNE loc_B0_ED8A               ; 06D5C ×28

loc_B0_ED5E:                    ; from 06d58
  ED5E  A9 0A     LDA #$0A                      ; 06D5E ×148
  ED60  20 39 8D  JSR sub_B0_8D39               ; 06D60 ×148
  ED63  D0 16     BNE loc_B0_ED7B               ; 06D63 ×148
  ED65  A9 30     LDA #$30                      ; 06D65 ×109
  ED67  20 01 8D  JSR sub_B0_8D01               ; 06D67 ×109
  ED6A  D0 0F     BNE loc_B0_ED7B               ; 06D6A ×109
  ED6C  A5 1B     LDA $1B                       ; 06D6C ×17
  ED6E  69 20     ADC #$20                      ; 06D6E ×17
  ED70  C9 40     CMP #$40                      ; 06D70 ×17
  ED72  A9 66     LDA #$66                      ; 06D72 ×17
  ED74  B0 02     BCS loc_B0_ED78               ; 06D74 ×17
  ED76  A9 68     LDA #$68                      ; 06D76 ×3

loc_B0_ED78:                    ; from 06d74
  ED78  20 DD DA  JSR sub_B0_DADD               ; 06D78 ×17

loc_B0_ED7B:                    ; from 06d6a 06d63
  ED7B  BD 83 05  LDA $0583,X                   ; 06D7B ×148
  ED7E  D0 0A     BNE loc_B0_ED8A               ; 06D7E ×148
  ED80  BC 39 04  LDY $0439,X                   ; 06D80 inferred, not run
  ED83  30 05     BMI loc_B0_ED8A               ; 06D83 inferred, not run
  ED85  A9 40     LDA #$40                      ; 06D85 inferred, not run
  ED87  9D 83 05  STA $0583,X                   ; 06D87 inferred, not run

loc_B0_ED8A:                    ; from 06d7e 06d5c
  ED8A  9D 65 05  STA $0565,X                   ; 06D8A ×176
  ED8D  A9 01     LDA #$01                      ; 06D8D ×176
  ED8F  9D C0 04  STA $04C0,X                   ; 06D8F ×176
  ED92  9D CF 04  STA $04CF,X                   ; 06D92 ×176
  ED95  9D 75 04  STA $0475,X                   ; 06D95 ×176

loc_B0_ED98:                    ; from 06d51
  ED98  A9 85     LDA #$85                      ; 06D98 ×2767
  ED9A  BC 75 04  LDY $0475,X                   ; 06D9A ×2767
  ED9D  F0 1A     BEQ loc_B0_EDB9               ; 06D9D ×2767

sub_B0_ED9F:                    ; from 06d41
  ED9F  A9 D0     LDA #$D0                      ; 06D9F ×1949
  EDA1  20 7A 8E  JSR sub_B0_8E7A               ; 06DA1 ×1949
  EDA4  20 4C 8F  JSR sub_B0_8F4C               ; 06DA4 ×1949
  EDA7  20 AD E4  JSR sub_B0_E4AD               ; 06DA7 ×1949
  EDAA  A9 86     LDA #$86                      ; 06DAA ×1949
  EDAC  BC 65 05  LDY $0565,X                   ; 06DAC ×1949
  EDAF  D0 08     BNE loc_B0_EDB9               ; 06DAF ×1949
  EDB1  BC C0 04  LDY $04C0,X                   ; 06DB1 ×290
  EDB4  30 03     BMI loc_B0_EDB9               ; 06DB4 ×290
  EDB6  4C E8 EC  JMP loc_B0_ECE8               ; 06DB6 ×97

loc_B0_EDB9:                    ; from 06daf 06d9d 06db4
  EDB9  9D D0 03  STA $03D0,X                   ; 06DB9 ×3091
  EDBC  60        RTS                           ; 06DBC ×3091
  EDBD  .byte BD ED 04 D0 05 A9 40 20 48 91 BD ED 04 C9 08 90   ; 06DBD
  EDCD  .byte 07 A2 0F A0 01 20 CB FF A9 1E 85 B2 A9 01 FE ED   ; 06DCD
  EDDD  .byte 04 F0 07 A9 01 85 EE 4C 8F 91 A9 00 8D FC 04 8D   ; 06DDD
  EDED  .byte FD 04 8D 56 05 8D 57 05 A9 A0 85 33 E6 EE 4C 80   ; 06DED
  EDFD  .byte D0 A5 0B 29 01 F0 05 DE 83 05 F0 12 BD 83 05 29   ; 06DFD
  EE0D  .byte 02 F0 07 A9 E8 20 FC 92 A9 8A 9D D0 03 60         ; 06E0D
  EE1B  4C 80 D0  JMP sub_B0_D080               ; 06E1B inferred, not run

sub_B0_EE1E:                    ; from 0202d 06e2b 0511e 02014
  EE1E  BD 1B 04  LDA $041B,X                   ; 06E1E ×26180
  EE21  38        SEC                           ; 06E21 ×26180
  EE22  FD 39 04  SBC $0439,X                   ; 06E22 ×26180
  EE25  38        SEC                           ; 06E25 ×26180
  EE26  E5 89     SBC $89                       ; 06E26 ×26180
  EE28  C9 E8     CMP #$E8                      ; 06E28 ×26180
  EE2A  60        RTS                           ; 06E2A ×26180

jt_B0_EE2B:                    ; from 008ec
  EE2B  20 1E EE  JSR sub_B0_EE1E               ; 06E2B ×1762
  EE2E  A4 10     LDY $10                       ; 06E2E ×1762
  EE30  C0 07     CPY #$07                      ; 06E30 ×1762
  EE32  F0 05     BEQ loc_B0_EE39               ; 06E32 ×1762
  EE34  C9 28     CMP #$28                      ; 06E34 inferred, not run
  EE36  90 E3     BCC $EE1B                     ; 06E36 inferred, not run
  EE38  8A        TXA                           ; 06E38 inferred, not run

loc_B0_EE39:                    ; from 06e32
  EE39  C9 E8     CMP #$E8                      ; 06E39 ×1762
  EE3B  B0 DE     BCS $EE1B                     ; 06E3B ×1762
  EE3D  A2 33     LDX #$33                      ; 06E3D ×1762
  EE3F  A0 03     LDY #$03                      ; 06E3F ×1762
  EE41  20 CB FF  JSR sub_B0_FFCB               ; 06E41 ×1762
  EE44  20 ED C9  JSR sub_B0_C9ED               ; 06E44 ×1762
  EE47  F0 03     BEQ loc_B0_EE4C               ; 06E47 ×1762
  EE49  20 61 EE  JSR sub_B0_EE61               ; 06E49 ×871

loc_B0_EE4C:                    ; from 06e47
  EE4C  A5 10     LDA $10                       ; 06E4C ×1762
  EE4E  C9 09     CMP #$09                      ; 06E4E ×1762
  EE50  D0 64     BNE loc_B0_EEB6               ; 06E50 ×1762
  EE52  A4 F3     LDY $F3                       ; 06E52 inferred, not run
  EE54  F0 60     BEQ loc_B0_EEB6               ; 06E54 inferred, not run
  EE56  BD 39 04  LDA $0439,X                   ; 06E56 inferred, not run
  EE59  F9 39 04  SBC $0439,Y                   ; 06E59 inferred, not run
  EE5C  C9 06     CMP #$06                      ; 06E5C inferred, not run
  EE5E  4C 6B EE  JMP $EE6B                     ; 06E5E inferred, not run

sub_B0_EE61:                    ; from 06e49
  EE61  BD 39 04  LDA $0439,X                   ; 06E61 ×871
  EE64  69 05     ADC #$05                      ; 06E64 ×871
  EE66  F9 39 04  SBC $0439,Y                   ; 06E66 ×871
  EE69  C9 2E     CMP #$2E                      ; 06E69 ×871
  EE6B  B0 49     BCS loc_B0_EEB6               ; 06E6B ×871
  EE6D  BD FD 03  LDA $03FD,X                   ; 06E6D inferred, not run
  EE70  18        CLC                           ; 06E70 inferred, not run
  EE71  69 23     ADC #$23                      ; 06E71 inferred, not run
  EE73  38        SEC                           ; 06E73 inferred, not run
  EE74  F9 FD 03  SBC $03FD,Y                   ; 06E74 inferred, not run
  EE77  C9 20     CMP #$20                      ; 06E77 inferred, not run
  EE79  B0 3B     BCS loc_B0_EEB6               ; 06E79 inferred, not run
  EE7B  C0 02     CPY #$02                      ; 06E7B inferred, not run
  EE7D  90 0B     BCC $EE8A                     ; 06E7D inferred, not run
  EE7F  B9 92 05  LDA $0592,Y                   ; 06E7F inferred, not run
  EE82  30 32     BMI loc_B0_EEB6               ; 06E82 inferred, not run
  EE84  A9 02     LDA #$02                      ; 06E84 inferred, not run
  EE86  99 92 05  STA $0592,Y                   ; 06E86 inferred, not run
  EE89  60        RTS                           ; 06E89 inferred, not run
  EE8A  A9 03     LDA #$03                      ; 06E8A inferred, not run
  EE8C  D9 CE 05  CMP $05CE,Y                   ; 06E8C inferred, not run
  EE8F  90 03     BCC $EE94                     ; 06E8F inferred, not run
  EE91  99 CE 05  STA $05CE,Y                   ; 06E91 inferred, not run
  EE94  B9 74 05  LDA $0574,Y                   ; 06E94 inferred, not run
  EE97  D0 1D     BNE loc_B0_EEB6               ; 06E97 inferred, not run
  EE99  BD D0 03  LDA $03D0,X                   ; 06E99 inferred, not run
  EE9C  C9 AC     CMP #$AC                      ; 06E9C inferred, not run
  EE9E  D0 16     BNE loc_B0_EEB6               ; 06E9E inferred, not run

sub_B0_EEA0:                    ; from 07867
  EEA0  B9 C3 05  LDA $05C3,Y                   ; 06EA0 ×53
  EEA3  D0 11     BNE loc_B0_EEB6               ; 06EA3 ×53
  EEA5  84 8D     STY $8D                       ; 06EA5 ×53
  EEA7  98        TYA                           ; 06EA7 ×53
  EEA8  AA        TAX                           ; 06EA8 ×53
  EEA9  20 FE 93  JSR sub_B0_93FE               ; 06EA9 ×53
  EEAC  A4 8D     LDY $8D                       ; 06EAC ×53
  EEAE  A9 01     LDA #$01                      ; 06EAE ×53
  EEB0  99 C0 04  STA $04C0,Y                   ; 06EB0 ×53
  EEB3  4C B4 BB  JMP loc_B0_BBB4               ; 06EB3 ×53

loc_B0_EEB6:                    ; from 06e50 06e6b
  EEB6  60        RTS                           ; 06EB6 ×2633

loc_B0_EEB7:                    ; from 00024
  EEB7  A6 82     LDX $82                       ; 06EB7 ×3
  EEB9  20 80 D0  JSR sub_B0_D080               ; 06EB9 ×3
  EEBC  A9 4E     LDA #$4E                      ; 06EBC ×3
  EEBE  20 66 FE  JSR sub_B0_FE66               ; 06EBE ×3
  EEC1  A9 00     LDA #$00                      ; 06EC1 ×3
  EEC3  99 2A 04  STA $042A,Y                   ; 06EC3 ×3
  EEC6  60        RTS                           ; 06EC6 ×3

jt_B0_EEC7:                    ; from 008ec
  EEC7  A2 09     LDX #$09                      ; 06EC7 ×2150
  EEC9  D0 02     BNE loc_B0_EECD               ; 06EC9 ×2150

jt_B0_EECB:                    ; from 008ec
  EECB  A2 0C     LDX #$0C                      ; 06ECB ×3036

loc_B0_EECD:                    ; from 06ec9 06ed9
  EECD  A0 02     LDY #$02                      ; 06ECD ×6078
  EECF  4C CB FF  JMP sub_B0_FFCB               ; 06ECF ×6078

jt_B0_EED2:                    ; from 008ec
  EED2  BD 2A 04  LDA $042A,X                   ; 06ED2 ×895
  EED5  F0 04     BEQ loc_B0_EEDB               ; 06ED5 ×895
  EED7  A2 0F     LDX #$0F                      ; 06ED7 ×892
  EED9  D0 F2     BNE loc_B0_EECD               ; 06ED9 ×892

loc_B0_EEDB:                    ; from 06ed5
  EEDB  4C 80 D0  JMP sub_B0_D080               ; 06EDB ×3

jt_B0_EEDE:                    ; from 008ec
  EEDE  A9 C0     LDA #$C0                      ; 06EDE ×3045
  EEE0  9D D0 03  STA $03D0,X                   ; 06EE0 ×3045

sub_B0_EEE3:                    ; from 02dfc
  EEE3  20 ED C9  JSR sub_B0_C9ED               ; 06EE3 ×6811
  EEE6  F0 49     BEQ loc_B0_EF31               ; 06EE6 ×6811
  EEE8  B9 B2 05  LDA $05B2,Y                   ; 06EE8 ×3408
  EEEB  19 29 05  ORA $0529,Y                   ; 06EEB ×3408
  EEEE  D0 41     BNE loc_B0_EF31               ; 06EEE ×3408
  EEF0  A9 10     LDA #$10                      ; 06EF0 ×3408
  EEF2  20 01 8D  JSR sub_B0_8D01               ; 06EF2 ×3408
  EEF5  D0 3A     BNE loc_B0_EF31               ; 06EF5 ×3408
  EEF7  A9 10     LDA #$10                      ; 06EF7 ×58
  EEF9  20 4D 8D  JSR sub_B0_8D4D               ; 06EF9 ×58
  EEFC  D0 33     BNE loc_B0_EF31               ; 06EFC ×58
  EEFE  A9 08     LDA #$08                      ; 06EFE inferred, not run
  EF00  20 39 8D  JSR sub_B0_8D39               ; 06F00 inferred, not run
  EF03  D0 2C     BNE loc_B0_EF31               ; 06F03 inferred, not run
  EF05  99 75 04  STA $0475,Y                   ; 06F05 inferred, not run
  EF08  BD C1 03  LDA $03C1,X                   ; 06F08 inferred, not run
  EF0B  C9 22     CMP #$22                      ; 06F0B inferred, not run
  EF0D  F0 23     BEQ $EF32                     ; 06F0D inferred, not run
  EF0F  B9 38 05  LDA $0538,Y                   ; 06F0F inferred, not run
  EF12  F0 10     BEQ $EF24                     ; 06F12 inferred, not run
  EF14  A9 00     LDA #$00                      ; 06F14 inferred, not run
  EF16  8D 75 04  STA $0475                     ; 06F16 inferred, not run
  EF19  8D 76 04  STA $0476                     ; 06F19 inferred, not run
  EF1C  A9 80     LDA #$80                      ; 06F1C inferred, not run
  EF1E  8D B2 05  STA $05B2                     ; 06F1E inferred, not run
  EF21  8D B3 05  STA $05B3                     ; 06F21 inferred, not run
  EF24  A9 80     LDA #$80                      ; 06F24 inferred, not run
  EF26  99 B2 05  STA $05B2,Y                   ; 06F26 inferred, not run
  EF29  A9 06     LDA #$06                      ; 06F29 inferred, not run
  EF2B  20 57 BC  JSR sub_B0_BC57               ; 06F2B inferred, not run
  EF2E  4C F4 B7  JMP $B7F4                     ; 06F2E inferred, not run

loc_B0_EF31:                    ; from 06ee6 06ef5 06efc
  EF31  60        RTS                           ; 06F31 ×6811
  EF32  20 2A E6  JSR sub_B0_E62A               ; 06F32 inferred, not run
  EF35  A9 A4     LDA #$A4                      ; 06F35 inferred, not run
  EF37  20 F6 B7  JSR sub_B0_B7F6               ; 06F37 inferred, not run
  EF3A  A9 40     LDA #$40                      ; 06F3A inferred, not run
  EF3C  20 48 91  JSR sub_B0_9148               ; 06F3C inferred, not run
  EF3F  4C FB E4  JMP loc_B0_E4FB               ; 06F3F inferred, not run

loc_B0_EF42:                    ; from 06f48
  EF42  4C 80 D0  JMP sub_B0_D080               ; 06F42 ×1

jt_B0_EF45:                    ; from 008ec
  EF45  BD A2 04  LDA $04A2,X                   ; 06F45 ×6789
  EF48  30 F8     BMI loc_B0_EF42               ; 06F48 ×6789
  EF4A  A0 E0     LDY #$E0                      ; 06F4A ×6788
  EF4C  20 78 B9  JSR sub_B0_B978               ; 06F4C ×6788
  EF4F  20 C4 C4  JSR sub_B0_C4C4               ; 06F4F ×6788
  EF52  A9 01     LDA #$01                      ; 06F52 ×6788
  EF54  9D A2 04  STA $04A2,X                   ; 06F54 ×6788
  EF57  BD DE 04  LDA $04DE,X                   ; 06F57 ×6788
  EF5A  C9 C0     CMP #$C0                      ; 06F5A ×6788
  EF5C  D0 06     BNE loc_B0_EF64               ; 06F5C ×6788
  EF5E  A9 A1     LDA #$A1                      ; 06F5E ×46
  EF60  20 FD B7  JSR sub_B0_B7FD               ; 06F60 ×46
  EF63  38        SEC                           ; 06F63 ×46

loc_B0_EF64:                    ; from 06f5c
  EF64  A5 0C     LDA $0C                       ; 06F64 ×6788
  EF66  90 07     BCC loc_B0_EF6F               ; 06F66 ×6788
  EF68  A9 00     LDA #$00                      ; 06F68 ×2990
  EF6A  9D A2 04  STA $04A2,X                   ; 06F6A ×2990
  EF6D  A5 0B     LDA $0B                       ; 06F6D ×2990

loc_B0_EF6F:                    ; from 06f66
  EF6F  29 02     AND #$02                      ; 06F6F ×6788
  EF71  4A        LSR A                         ; 06F71 ×6788
  EF72  69 9D     ADC #$9D                      ; 06F72 ×6788
  EF74  9D D0 03  STA $03D0,X                   ; 06F74 ×6788
  EF77  60        RTS                           ; 06F77 ×6788
  EF78  .byte 4C 80 D0 BD A2 04 30 F8 BD 29 05 F0 1D 20 52 8E   ; 06F78
  EF88  .byte BD 29 05 20 75 B0 B9 B1 04 29 40 19 74 05 F0 05   ; 06F88
  EF98  .byte A9 00 9D 29 05 A9 A1 4C 16 F0 BD DE 04 F0 40 20   ; 06F98
  EFA8  .byte E0 FC BD ED 04 C9 0A D0 13 A9 08 9D 65 05 1D A2   ; 06FA8
  EFB8  .byte 04 9D A2 04 DE DE 04 A9 A2 4C 16 F0 20 52 8E 20   ; 06FB8
  EFC8  .byte AD E4 A9 9F DE DE 04 D0 45 A5 25 29 80 9D 56 05   ; 06FC8
  EFD8  .byte A9 40 9D 65 05 A9 04 9D C0 04 A9 A0 9D CF 04 20   ; 06FD8
  EFE8  .byte 52 8E 20 4C 8F 20 AD E4 BD A1 05 10 08 A9 FC 20   ; 06FE8
  EFF8  .byte 6A D0 4C 14 F0 A5 D9 C9 01 F0 09 C9 0A D0 0D BC   ; 06FF8
  F008  .byte A1 05 30 08 9D ED 04 A9 10 9D DE 04 A9 A0 9D D0   ; 07008
  F018  .byte 03 BD A1 05 10 04 FE A1 05 60 4C 33 F8 A5 0C 29   ; 07018
  F028  .byte 01 18 69 A3 9D D0 03 FE 83 05 BD 39 04 6A 6A 29   ; 07028
  F038  .byte 80 9D 56 05 4C 66 CF 4C 80 D0 BD A2 04 30 F8 A9   ; 07038
  F048  .byte A5 20 2C F0 BD 83 05 29 7F D0 28 20 58 FE A4 82   ; 07048
  F058  .byte 20 67 B1 A9 53 9D C1 03 A9 00 9D A2 04 A9 60 9D   ; 07058
  F068  .byte 65 05 B9 A2 04 29 03 C9 01 D0 03 1E 65 05 A9 26   ; 07068
  F078  .byte 20 48 91 60 20 66 CF A5 10 C9 05 D0 26 BD 1B 04   ; 07078
  F088  .byte 6A B0 06 20 52 8E 4C 9D F0 A9 A0 BC 56 05 30 02   ; 07088
  F098  .byte A9 F0 20 4F 8F FE DF 03 BD DF 03 C9 30 B0 17 A9   ; 07098
  F0A8  .byte C5 D0 16 20 4C 8F A9 04 20 DA E2 BD DF 03 4A 4A   ; 070A8
  F0B8  .byte A8 B9 D9 F0 D0 03 4C 80 D0 9D D0 03 C9 A9 90 0E   ; 070B8
  F0C8  .byte A5 0B 29 04 F0 08 BD A2 04 49 40 9D A2 04 4C 33   ; 070C8
  F0D8  .byte F8 A6 A6 A7 A7 A8 A8 A9 A9 A9 A9 AA AA 00 4C 80   ; 070D8
  F0E8  .byte D0 20 25 F0 BD A2 04 30 F5 A5 0B A4 10 C0 07 F0   ; 070E8
  F0F8  .byte 03 BD 83 05 C9 80 90 0C 29 08 C9 04 A9 A3 69 00   ; 070F8
  F108  .byte 9D D0 03 60 A9 0F 25 0B F0 03 4C B8 F1 A9 A3 20   ; 07108
  F118  .byte 48 91 20 58 FE D0 7E A4 82 20 67 B1 B9 C1 03 9D   ; 07118
  F128  .byte 92 05 C9 60 A9 61 B0 02 A9 56 9D C1 03 A9 F0 9D   ; 07128
  F138  .byte 65 05 A9 FC 9D 83 05 A5 10 C9 06 A5 25 29 0F B0   ; 07138
  F148  .byte 03 4A 69 04 09 D0 9D 1B 04 B9 C1 03 C9 54 F0 40   ; 07148
  F158  .byte C9 60 F0 3C C9 5D F0 38 90 05 A9 E0 20 EE 8E A0   ; 07158
  F168  .byte FF BD 56 05 49 80 9D 56 05 2A A9 9C 90 03 C8 A9   ; 07168
  F178  .byte 64 7D FD 03 9D FD 03 98 7D EE 03 9D EE 03 A9 07   ; 07178
  F188  .byte A4 10 C0 05 F0 02 A9 04 9D 83 05 A9 60 9D 65 05   ; 07188
  F198  .byte BD C1 03 C9 61 D0 17 BD 83 05 C9 80 7E 83 05 A5   ; 07198
  F1A8  .byte 27 9D CF 04 A5 26 29 07 38 E9 03 9D C0 04 A6 82   ; 071A8
  F1B8  .byte A0 01 B9 C1 03 F0 69 B9 74 05 D0 64 A5 10 C9 05   ; 071B8
  F1C8  .byte F0 03 4C 60 F2 BD C1 03 49 60 F0 03 4C 57 F2 85   ; 071C8
  F1D8  .byte 16 BD DE 04 18 69 50 90 02 A9 FF 85 15 06 15 26   ; 071D8
  F1E8  .byte 16 06 15 26 16 06 15 26 16 B9 29 05 10 35 C9 83   ; 071E8
  F1F8  .byte 90 31 BD FD 03 29 80 49 80 99 56 05 4A 09 08 99   ; 071F8
  F208  .byte A2 04 A5 16 25 25 4A 4A 59 93 04 99 93 04 BD DE   ; 07208
  F218  .byte 04 C9 28 90 08 69 30 C9 A0 A9 5F 69 00 99 DF 03   ; 07218
  F228  .byte 4C 12 F3 A9 13 99 B5 03 BD DE 04 C9 60 90 19 BD   ; 07228
  F238  .byte 56 05 99 56 05 98 AA 20 CA F5 A9 FF 9D 65 05 A9   ; 07238
  F248  .byte 06 9D C0 04 8A A8 A6 82 18 4C DA F2 4C 12 F3 A9   ; 07248
  F258  .byte 68 20 01 8D D0 F6 F0 07 A9 18 20 4D 8D D0 ED B9   ; 07258
  F268  .byte FD 03 38 FD FD 03 85 15 5D 56 05 30 DF A9 00 85   ; 07268
  F278  .byte 16 A5 15 10 07 38 E9 01 49 FF 85 15 4A 65 15 85   ; 07278
  F288  .byte 15 85 17 C9 0C B0 12 A5 10 C9 05 F0 0C BD C1 03   ; 07288
  F298  .byte C9 54 F0 05 20 19 F3 A4 21 A9 C0 38 E5 15 0A 26   ; 07298
  F2A8  .byte 16 0A 26 16 85 15 BD C1 03 C9 58 90 23 84 18 86   ; 072A8
  F2B8  .byte 21 A6 18 A0 02 A5 17 4A 20 99 8A A6 82 A4 18 90   ; 072B8
  F2C8  .byte 49 BD C1 03 C9 5E 90 0A A5 17 C9 06 90 43 B0 02   ; 072C8
  F2D8  .byte C9 55 6A 5D 56 05 30 19 A5 15 18 79 48 04 99 48   ; 072D8
  F2E8  .byte 04 A5 16 79 FD 03 99 FD 03 B9 EE 03 69 00 4C 0F   ; 072E8
  F2F8  .byte F3 B9 48 04 38 E5 15 99 48 04 B9 FD 03 E5 16 99   ; 072F8
  F308  .byte FD 03 B9 EE 03 E9 00 99 EE 03 88 30 03 4C BA F1   ; 07308
  F318  .byte 60                                                ; 07318
  F319  A9 20     LDA #$20                      ; 07319 inferred, not run
  F31B  85 DC     STA $DC                       ; 0731B inferred, not run
  F31D  8A        TXA                           ; 0731D inferred, not run
  F31E  99 C7 05  STA $05C7,Y                   ; 0731E inferred, not run
  F321  A9 5C     LDA #$5C                      ; 07321 inferred, not run
  F323  99 D0 03  STA $03D0,Y                   ; 07323 inferred, not run
  F326  99 B5 03  STA $03B5,Y                   ; 07326 inferred, not run
  F329  B9 A2 04  LDA $04A2,Y                   ; 07329 inferred, not run
  F32C  09 80     ORA #$80                      ; 0732C inferred, not run
  F32E  99 A2 04  STA $04A2,Y                   ; 0732E inferred, not run
  F331  B9 29 05  LDA $0529,Y                   ; 07331 inferred, not run
  F334  10 0D     BPL $F343                     ; 07334 inferred, not run
  F336  84 15     STY $15                       ; 07336 inferred, not run
  F338  29 1F     AND #$1F                      ; 07338 inferred, not run
  F33A  A8        TAY                           ; 0733A inferred, not run
  F33B  88        DEY                           ; 0733B inferred, not run
  F33C  A9 00     LDA #$00                      ; 0733C inferred, not run
  F33E  99 38 05  STA $0538,Y                   ; 0733E inferred, not run
  F341  A4 15     LDY $15                       ; 07341 inferred, not run
  F343  98        TYA                           ; 07343 inferred, not run
  F344  AA        TAX                           ; 07344 inferred, not run
  F345  A9 28     LDA #$28                      ; 07345 inferred, not run
  F347  20 F9 FB  JSR sub_B0_FBF9               ; 07347 inferred, not run
  F34A  A9 81     LDA #$81                      ; 0734A inferred, not run
  F34C  99 74 05  STA $0574,Y                   ; 0734C inferred, not run
  F34F  60        RTS                           ; 0734F inferred, not run
  F350  .byte A9 C5 D0 02 A9 AB 9D D0 03 BD FD 03 85 8D 20 4C   ; 07350
  F360  .byte 8F BD FC 04 F0 31 BD 56 05 48 BD 65 05 48 BD 0B   ; 07360
  F370  .byte 05 9D 56 05 BD C1 03 C9 61 A9 FF B0 02 A9 C0 9D   ; 07370
  F380  .byte 65 05 20 4C 8F BD 0B 05 18 7D FC 04 9D 0B 05 68   ; 07380
  F390  .byte 9D 65 05 68 9D 56 05 8A 65 25 7D FD 03 BC C1 03   ; 07390
  F3A0  .byte C0 61 D0 02 29 1F 29 3F D0 0C A5 26 2A A9 10 90   ; 073A0
  F3B0  .byte 02 A9 F0 9D FC 04 A5 10 C9 05 D0 36 BD C1 03 C9   ; 073B0
  F3C0  .byte 61 F0 2C A9 BE 9D D0 03 A9 00 9D CF 04 BD FD 03   ; 073C0
  F3D0  .byte 38 E5 8D C9 80 90 04 E9 01 49 FF BC 92 05 C0 5E   ; 073D0
  F3E0  .byte F0 04 E9 00 49 FF C9 80 6A 9D C0 04 7E CF 04 20   ; 073E0
  F3F0  .byte E1 8E BD 65 05 18 7D 83 05 9D 65 05 F0 04 C9 60   ; 073F0
  F400  .byte B0 03 4C 80 D0 60 BD A2 04 30 F7 BD DE 04 F0 09   ; 07400
  F410  .byte DE DE 04 A9 B5 9D D0 03 60 20 58 FE A4 82 B9 1A   ; 07410
  F420  .byte 05 29 80 20 6A B1 A9 60 99 DE 04 A9 57 9D C1 03   ; 07420
  F430  .byte B9 83 05 9D 83 05 B9 A2 04 29 03 9D A2 04 60 4C   ; 07430
  F440  .byte 80 D0 BD A2 04 30 F8 BD 83 05 9D 65 05 A9 81 20   ; 07440
  F450  .byte 7A 8E 20 4C 8F 20 AD E4 20 66 CF A5 AF F0 0C BD   ; 07450
  F460  .byte 75 04 D0 07 FE DE 04 A9 AF D0 1F 20 33 F8 BC DE   ; 07460
  F470  .byte 04 C0 04 B0 0A A5 10 C9 09 F0 0C C0 03 90 08 A9   ; 07470
  F480  .byte 00 9D 83 05 FE DE 04 B9 93 F4 9D D0 03 D0 03 4C   ; 07480
  F490  .byte 80 D0 60 AE AE AE AE AF AF AF AF AF B0 B0 B0 B0   ; 07490
  F4A0  .byte B0 B1 B1 B1 B1 B1 00 00 4C 80 D0 BD DE 04         ; 074A0
  F4AE  18        CLC                           ; 074AE inferred, not run
  F4AF  7D 56 05  ADC $0556,X                   ; 074AF inferred, not run
  F4B2  9D 56 05  STA $0556,X                   ; 074B2 inferred, not run
  F4B5  20 4C 8F  JSR sub_B0_8F4C               ; 074B5 inferred, not run
  F4B8  A9 D8     LDA #$D8                      ; 074B8 inferred, not run

sub_B0_F4BA:                    ; from 05474
  F4BA  38        SEC                           ; 074BA ×2590
  F4BB  FD 1B 04  SBC $041B,X                   ; 074BB ×2590
  F4BE  18        CLC                           ; 074BE ×2590
  F4BF  9D C0 04  STA $04C0,X                   ; 074BF ×2590
  F4C2  20 EE 8E  JSR sub_B0_8EEE               ; 074C2 ×2590
  F4C5  A9 D8     LDA #$D8                      ; 074C5 ×2590
  F4C7  9D 1B 04  STA $041B,X                   ; 074C7 ×2590
  F4CA  60        RTS                           ; 074CA ×2590
  F4CB  .byte BD 65 05 10 0B 20 4C 8F 20 52 8E A5 81 30 63 60   ; 074CB
  F4DB  .byte A9 00 9D 47 05 9D 74 05 A5 0C 29 03 9D A2 04 BD   ; 074DB
  F4EB  .byte 47 05 D0 DC A5 81 30 0C BD D0 03 F0 07 A9 2C A2   ; 074EB
  F4FB  .byte 0C 20 4A 91 BD B1 04 09 40 9D B1 04 A9 01 9D 1A   ; 074FB
  F50B  .byte 05 A9 B3 9D D0 03 BD 92 05 D0 35 A4 F3 F0 13 BD   ; 0750B
  F51B  .byte FD 03 F9 FD 03 69 10 C9 20 B0 07 A9 10 20 4D 8D   ; 0751B
  F52B  .byte F0 25 60 A9 04                                    ; 0752B
  F530  99 C0 04  STA $04C0,Y                   ; 07530 inferred, not run
  F533  A9 F0     LDA #$F0                      ; 07533 inferred, not run
  F535  99 92 05  STA $0592,Y                   ; 07535 inferred, not run
  F538  A9 12     LDA #$12                      ; 07538 inferred, not run
  F53A  4C F6 B7  JMP sub_B0_B7F6               ; 0753A inferred, not run
  F53D  .byte A9 FC 85 EC 85 ED A9 46 20 66 FE 20 2E F5 A9 00   ; 0753D
  F54D  .byte 85 F3 4C 94 FA A9 C0 9D 92 05 A2 00 20 CA F5 E8   ; 0754D
  F55D  .byte 20 CA F5 A9 5B 20 66 FE F0 75 20 58 FE A9 5B 9D   ; 0755D
  F56D  .byte C1 03 A9 00 9D DE 04 9D 1A 05 A0 1F B9 55 00 99   ; 0756D
  F57D  .byte 50 06 A9 30 99 55 00 88 10 F2 A5 10 C9 01 F0 4F   ; 0757D
  F58D  .byte A0 00 20 58 FE D0 2F 20 94 FA A9 04 9D ED 04 A9   ; 0758D
  F59D  .byte 3F 9D 0C 04 A9 D8 9D 1B 04 B9 DD F5 9D FD 03 B9   ; 0759D
  F5AD  .byte DF F5 E5 89 9D 39 04 B9 DE F5 E5 8A 9D 2A 04 C8   ; 075AD
  F5BD  .byte C8 C8 C0 1B D0 CC A9 0A A2 15 4C E1 84 20 1B 8F   ; 075BD
  F5CD  .byte A9 D4 9D 47 05 A9 FF 9D CE 05 A9 03 9D C0 04 60   ; 075CD
  F5DD  .byte 30 3F C0 E0 3F D0 80 3F B0 F0 3F A8 50 3F 80 B0   ; 075DD
  F5ED  .byte 3F 60 1F 3F 40 A0 3F 10 FF 3F 20                  ; 075ED
  F5F8  A2 FF     LDX #$FF                      ; 075F8 inferred, not run
  F5FA  9A        TXS                           ; 075FA inferred, not run
  F5FB  20 59 D8  JSR $D859                     ; 075FB inferred, not run
  F5FE  A2 63     LDX #$63                      ; 075FE inferred, not run
  F600  A0 06     LDY #$06                      ; 07600 inferred, not run
  F602  20 CB FF  JSR sub_B0_FFCB               ; 07602 inferred, not run
  F605  4C 63 D8  JMP $D863                     ; 07605 inferred, not run
  F608  .byte 4C 80 D0 BD A2 04 30 F8 20 4C 8F A5 0B 29 03 F0   ; 07608
  F618  .byte 08 BD A2 04 49 40 9D A2 04 A9 5B 9D D0 03 A0 01   ; 07618
  F628  .byte 84 DE A9 03 18 20 FB 8A 30 06 20 B4 BB 4C 80 D0   ; 07628
  F638  .byte 60 BD C0 04 10 08 C9 FC B0 0E A9 FC D0 07 A9 02   ; 07638
  F648  .byte DD C0 04 B0 03 9D C0 04 60 BD 47 05 F0 75 BD 0C   ; 07648
  F658  .byte 04 C9 1F D0 06 DE 0C 04 DE 2A 04 20 39 F6 20 78   ; 07658
  F668  .byte BD BD 74 05 F0 19 BD 75 04 D0 28 9D 74 05 A9 DE   ; 07668
  F678  .byte 9D 1B 04 A9 3B 9D C1 03 FE 0C 04 FE 2A 04 60 BD   ; 07678
  F688  .byte 1A 05 29 F0 9D 1A 05 D0 0A A9 40 9D B1 04 A9 E0   ; 07688
  F698  .byte 9D 74 05 BD 47 05 C9 08 D0 13 A9 01 9D DE 04 BD   ; 07698
  F6A8  .byte DF 03 9D 83 05 A9 5E 20 DD DA 4C FD DA C9 2C B0   ; 076A8
  F6B8  .byte 0C 29 03 D0 08 BD FD 03 49 02 9D FD 03 A9 6B 9D   ; 076B8
  F6C8  .byte D0 03 60 BD 0C 04 C9 1E D0 06 FE 0C 04 FE 2A 04   ; 076C8
  F6D8  .byte 20 45 F7 20 52 8E 20 AD E4 BD DE 04 D0 14 BD 83   ; 076D8
  F6E8  .byte 05 9D DF 03 BD 1B 04 C9 D8 A9 10 90 02 A9 80 9D   ; 076E8
  F6F8  .byte DE 04 BD FC 04 D0 2F DE DE 04 D0 2F BC 83 05 B9   ; 076F8
  F708  .byte 72 F7 85 22 B9 5B F7 9D DE 04 D0 07 B9 5C F7 A8   ; 07708
  F718  .byte 4C 07 F7 C8 98 9D 83 05 20 39 F7 30 04 A9 5C D0   ; 07718
  F728  .byte 02 A5 22 20 DD DA A9 03 4C F6 DA A9 64 9D D0 03   ; 07728
  F738  .byte 60                                                ; 07738

sub_B0_F739:                    ; from 053d1
  F739  A9 02     LDA #$02                      ; 07739 ×888

sub_B0_F73B:                    ; from 054af
  F73B  85 DE     STA $DE                       ; 0773B ×3010
  F73D  A0 01     LDY #$01                      ; 0773D ×3010
  F73F  A9 03     LDA #$03                      ; 0773F ×3010
  F741  18        CLC                           ; 07741 ×3010
  F742  4C FB 8A  JMP sub_B0_8AFB               ; 07742 ×3010
  F745  .byte BD 1B 04 29 01 F0 0E A9 40 1D A2 04 9D A2 04 0A   ; 07745
  F755  .byte 29 80 9D 56 05                                    ; 07755
  F75A  60        RTS                           ; 0775A ×0
  F75B  .byte 01 08 48 00 00 60 00 05 28 01 48 00 08 40 40 00   ; 0775B
  F76B  .byte 0D 01 01 30 30 00 11 58 58 60 00 00 62 00 00 60   ; 0776B
  F77B  .byte 60 60 00 00 58 60 00 00 58 58 58 60 00 00         ; 0777B

sub_B0_F789:                    ; from 07830 07971
  F789  BD A2 04  LDA $04A2,X                   ; 07789 ×0
  F78C  29 3F     AND #$3F                      ; 0778C ×0
  F78E  9D A2 04  STA $04A2,X                   ; 0778E ×0
  F791  4C 81 CF  JMP loc_B0_CF81               ; 07791 ×0
  F794  20 9F F7  JSR sub_B0_F79F               ; 07794 ×0
  F797  BD 29 05  LDA $0529,X                   ; 07797 ×0
  F79A  F0 BE     BEQ $F75A                     ; 0779A ×0
  F79C  4C AD E4  JMP sub_B0_E4AD               ; 0779C ×0

sub_B0_F79F:                    ; from 07794
  F79F  BD EE 03  LDA $03EE,X                   ; 0779F ×0
  F7A2  D0 0F     BNE $F7B3                     ; 077A2 ×0
  F7A4  A9 18     LDA #$18                      ; 077A4 inferred, not run
  F7A6  DD FD 03  CMP $03FD,X                   ; 077A6 inferred, not run
  F7A9  90 08     BCC $F7B3                     ; 077A9 inferred, not run
  F7AB  9D FD 03  STA $03FD,X                   ; 077AB inferred, not run
  F7AE  A9 00     LDA #$00                      ; 077AE inferred, not run
  F7B0  9D 56 05  STA $0556,X                   ; 077B0 inferred, not run
  F7B3  BD 2A 04  LDA $042A,X                   ; 077B3 ×0
  F7B6  C9 20     CMP #$20                      ; 077B6 ×0
  F7B8  90 0A     BCC $F7C4                     ; 077B8 ×0
  F7BA  A9 00     LDA #$00                      ; 077BA inferred, not run
  F7BC  9D 65 05  STA $0565,X                   ; 077BC inferred, not run
  F7BF  A9 FE     LDA #$FE                      ; 077BF inferred, not run
  F7C1  9D C0 04  STA $04C0,X                   ; 077C1 inferred, not run
  F7C4  BD 1B 04  LDA $041B,X                   ; 077C4 ×0
  F7C7  C9 D7     CMP #$D7                      ; 077C7 ×0
  F7C9  D0 27     BNE $F7F2                     ; 077C9 ×0
  F7CB  BD A2 04  LDA $04A2,X                   ; 077CB inferred, not run
  F7CE  30 17     BMI $F7E7                     ; 077CE inferred, not run
  F7D0  DE 0B 05  DEC $050B,X                   ; 077D0 inferred, not run
  F7D3  F0 0D     BEQ $F7E2                     ; 077D3 inferred, not run
  F7D5  BD 0B 05  LDA $050B,X                   ; 077D5 inferred, not run
  F7D8  C9 20     CMP #$20                      ; 077D8 inferred, not run
  F7DA  B0 16     BCS $F7F2                     ; 077DA inferred, not run
  F7DC  20 E0 FC  JSR sub_B0_FCE0               ; 077DC inferred, not run
  F7DF  4C F2 F7  JMP $F7F2                     ; 077DF inferred, not run
  F7E2  A9 03     LDA #$03                      ; 077E2 inferred, not run
  F7E4  9D C0 04  STA $04C0,X                   ; 077E4 inferred, not run
  F7E7  BD 83 05  LDA $0583,X                   ; 077E7 inferred, not run
  F7EA  DD 65 05  CMP $0565,X                   ; 077EA inferred, not run
  F7ED  90 03     BCC $F7F2                     ; 077ED inferred, not run
  F7EF  9D 65 05  STA $0565,X                   ; 077EF inferred, not run
  F7F2  A9 00     LDA #$00                      ; 077F2 ×0
  F7F4  9D 74 05  STA $0574,X                   ; 077F4 ×0
  F7F7  5E 47 05  LSR $0547,X                   ; 077F7 ×0
  F7FA  A9 40     LDA #$40                      ; 077FA ×0
  F7FC  1D B1 04  ORA $04B1,X                   ; 077FC ×0
  F7FF  9D B1 04  STA $04B1,X                   ; 077FF ×0
  F802  BD 65 05  LDA $0565,X                   ; 07802 ×0
  F805  1D 29 05  ORA $0529,X                   ; 07805 ×0
  F808  1D 75 04  ORA $0475,X                   ; 07808 ×0
  F80B  D0 0B     BNE $F818                     ; 0780B ×0
  F80D  A9 B0     LDA #$B0                      ; 0780D ×0
  F80F  20 7A 8E  JSR sub_B0_8E7A               ; 0780F ×0
  F812  20 AD E4  JSR sub_B0_E4AD               ; 07812 ×0
  F815  4C BC F9  JMP $F9BC                     ; 07815 ×0
  F818  A9 C0     LDA #$C0                      ; 07818 ×0
  F81A  9D 0B 05  STA $050B,X                   ; 0781A ×0
  F81D  BD 1B 04  LDA $041B,X                   ; 0781D ×0
  F820  48        PHA                           ; 07820 ×0
  F821  20 70 AF  JSR sub_B0_AF70               ; 07821 ×0
  F824  68        PLA                           ; 07824 ×0
  F825  9D 1B 04  STA $041B,X                   ; 07825 ×0
  F828  BD 29 05  LDA $0529,X                   ; 07828 ×0
  F82B  1D 47 05  ORA $0547,X                   ; 0782B ×0
  F82E  D0 E5     BNE $F815                     ; 0782E ×0
  F830  20 89 F7  JSR sub_B0_F789               ; 07830 ×0
  F833  A9 0A     LDA #$0A                      ; 07833 ×0
  F835  85 DE     STA $DE                       ; 07835 ×0
  F837  BD C1 03  LDA $03C1,X                   ; 07837 ×0
  F83A  C9 38     CMP #$38                      ; 0783A ×0
  F83C  F0 6E     BEQ $F8AC                     ; 0783C ×0
  F83E  C9 45     CMP #$45                      ; 0783E inferred, not run
  F840  F0 6A     BEQ $F8AC                     ; 07840 inferred, not run
  F842  A0 01     LDY #$01                      ; 07842 inferred, not run
  F844  A9 40     LDA #$40                      ; 07844 inferred, not run
  F846  18        CLC                           ; 07846 inferred, not run
  F847  20 FB 8A  JSR sub_B0_8AFB               ; 07847 inferred, not run
  F84A  4C B1 F8  JMP $F8B1                     ; 0784A inferred, not run
  F84D  BD 56 05  LDA $0556,X                   ; 0784D inferred, not run
  F850  4A        LSR A                         ; 07850 inferred, not run
  F851  9D A2 04  STA $04A2,X                   ; 07851 inferred, not run
  F854  8A        TXA                           ; 07854 inferred, not run
  F855  99 C5 05  STA $05C5,Y                   ; 07855 inferred, not run
  F858  98        TYA                           ; 07858 inferred, not run
  F859  AA        TAX                           ; 07859 inferred, not run
  F85A  A9 28     LDA #$28                      ; 0785A inferred, not run
  F85C  20 F9 FB  JSR sub_B0_FBF9               ; 0785C inferred, not run
  F85F  A6 21     LDX $21                       ; 0785F inferred, not run
  F861  A9 00     LDA #$00                      ; 07861 inferred, not run
  F863  9D C0 04  STA $04C0,X                   ; 07863 inferred, not run
  F866  60        RTS                           ; 07866 inferred, not run

loc_B0_F867:                    ; from 07bf6
  F867  20 A0 EE  JSR sub_B0_EEA0               ; 07867 ×53
  F86A  A6 82     LDX $82                       ; 0786A ×53
  F86C  4C 80 D0  JMP sub_B0_D080               ; 0786C ×53
  F86F  B9 47 05  LDA $0547,Y                   ; 0786F inferred, not run
  F872  C9 04     CMP #$04                      ; 07872 inferred, not run
  F874  B0 F0     BCS $F866                     ; 07874 inferred, not run
  F876  B9 B1 04  LDA $04B1,Y                   ; 07876 inferred, not run
  F879  29 40     AND #$40                      ; 07879 inferred, not run
  F87B  19 74 05  ORA $0574,Y                   ; 0787B inferred, not run
  F87E  D0 E6     BNE $F866                     ; 0787E inferred, not run
  F880  9D DE 04  STA $04DE,X                   ; 07880 inferred, not run
  F883  A9 04     LDA #$04                      ; 07883 inferred, not run
  F885  9D A1 05  STA $05A1,X                   ; 07885 inferred, not run
  F888  A9 FE     LDA #$FE                      ; 07888 inferred, not run
  F88A  9D C0 04  STA $04C0,X                   ; 0788A inferred, not run
  F88D  8A        TXA                           ; 0788D inferred, not run
  F88E  99 C9 05  STA $05C9,Y                   ; 0788E inferred, not run
  F891  18        CLC                           ; 07891 inferred, not run
  F892  69 81     ADC #$81                      ; 07892 inferred, not run
  F894  99 38 05  STA $0538,Y                   ; 07894 inferred, not run
  F897  A9 00     LDA #$00                      ; 07897 inferred, not run
  F899  85 15     STA $15                       ; 07899 inferred, not run
  F89B  98        TYA                           ; 0789B inferred, not run
  F89C  69 81     ADC #$81                      ; 0789C inferred, not run
  F89E  9D 29 05  STA $0529,X                   ; 0789E inferred, not run
  F8A1  98        TYA                           ; 078A1 inferred, not run
  F8A2  AA        TAX                           ; 078A2 inferred, not run
  F8A3  4C 03 FC  JMP $FC03                     ; 078A3 inferred, not run
  F8A6  4C 6A F9  JMP $F96A                     ; 078A6 ×0
  F8A9  4C BC F9  JMP $F9BC                     ; 078A9 ×0
  F8AC  A9 40     LDA #$40                      ; 078AC ×0
  F8AE  20 F7 8A  JSR sub_B0_8AF7               ; 078AE ×0
  F8B1  30 F6     BMI $F8A9                     ; 078B1 ×0
  F8B3  C0 02     CPY #$02                      ; 078B3 ×0
  F8B5  B0 EF     BCS $F8A6                     ; 078B5 ×0
  F8B7  BD C1 03  LDA $03C1,X                   ; 078B7 ×0
  F8BA  C9 53     CMP #$53                      ; 078BA ×0
  F8BC  F0 8F     BEQ $F84D                     ; 078BC ×0
  F8BE  C9 58     CMP #$58                      ; 078BE ×0
  F8C0  F0 A5     BEQ loc_B0_F867               ; 078C0 ×0
  F8C2  C9 51     CMP #$51                      ; 078C2 ×0
  F8C4  F0 A9     BEQ $F86F                     ; 078C4 ×0
  F8C6  C9 62     CMP #$62                      ; 078C6 ×0
  F8C8  F0 1C     BEQ $F8E6                     ; 078C8 ×0
  F8CA  C9 3D     CMP #$3D                      ; 078CA ×0
  F8CC  F0 51     BEQ $F91F                     ; 078CC ×0
  F8CE  C9 40     CMP #$40                      ; 078CE ×0
  F8D0  F0 4D     BEQ $F91F                     ; 078D0 ×0
  F8D2  C9 45     CMP #$45                      ; 078D2 ×0
  F8D4  F0 49     BEQ $F91F                     ; 078D4 ×0
  F8D6  C9 57     CMP #$57                      ; 078D6 ×0
  F8D8  F0 45     BEQ $F91F                     ; 078D8 ×0
  F8DA  C9 37     CMP #$37                      ; 078DA ×0
  F8DC  D0 04     BNE $F8E2                     ; 078DC ×0
  F8DE  85 DF     STA $DF                       ; 078DE inferred, not run
  F8E0  F0 46     BEQ $F928                     ; 078E0 inferred, not run
  F8E2  C9 50     CMP #$50                      ; 078E2 ×0
  F8E4  D0 0B     BNE $F8F1                     ; 078E4 ×0
  F8E6  B9 FC 04  LDA $04FC,Y                   ; 078E6 inferred, not run
  F8E9  D0 05     BNE $F8F0                     ; 078E9 inferred, not run
  F8EB  85 DF     STA $DF                       ; 078EB inferred, not run
  F8ED  4C 28 F9  JMP $F928                     ; 078ED inferred, not run
  F8F0  60        RTS                           ; 078F0 inferred, not run
  F8F1  B9 FC 04  LDA $04FC,Y                   ; 078F1 ×0
  F8F4  F0 2B     BEQ $F921                     ; 078F4 ×0
  F8F6  B9 A2 04  LDA $04A2,Y                   ; 078F6 ×0
  F8F9  0A        ASL A                         ; 078F9 ×0
  F8FA  5D 56 05  EOR $0556,X                   ; 078FA ×0
  F8FD  10 22     BPL $F921                     ; 078FD ×0
  F8FF  BD 56 05  LDA $0556,X                   ; 078FF ×0
  F902  49 80     EOR #$80                      ; 07902 ×0
  F904  9D 56 05  STA $0556,X                   ; 07904 ×0
  F907  A9 80     LDA #$80                      ; 07907 ×0
  F909  9D 47 05  STA $0547,X                   ; 07909 ×0
  F90C  A9 00     LDA #$00                      ; 0790C ×0
  F90E  9D 65 05  STA $0565,X                   ; 0790E ×0
  F911  99 65 05  STA $0565,Y                   ; 07911 ×0
  F914  A9 03     LDA #$03                      ; 07914 ×0
  F916  9D C0 04  STA $04C0,X                   ; 07916 ×0
  F919  A9 04     LDA #$04                      ; 07919 ×0
  F91B  85 DC     STA $DC                       ; 0791B ×0
  F91D  D0 48     BNE $F967                     ; 0791D ×0
  F91F  85 DF     STA $DF                       ; 0791F inferred, not run
  F921  BD 65 05  LDA $0565,X                   ; 07921 ×0
  F924  C9 40     CMP #$40                      ; 07924 ×0
  F926  90 3F     BCC $F967                     ; 07926 ×0
  F928  B9 B1 04  LDA $04B1,Y                   ; 07928 ×0
  F92B  29 40     AND #$40                      ; 0792B ×0
  F92D  D0 38     BNE $F967                     ; 0792D ×0
  F92F  B9 47 05  LDA $0547,Y                   ; 0792F ×0
  F932  C9 C0     CMP #$C0                      ; 07932 ×0
  F934  B0 31     BCS $F967                     ; 07934 ×0
  F936  A5 DF     LDA $DF                       ; 07936 ×0
  F938  69 04     ADC #$04                      ; 07938 ×0
  F93A  10 0C     BPL $F948                     ; 0793A ×0
  F93C  A9 00     LDA #$00                      ; 0793C inferred, not run
  F93E  9D 65 05  STA $0565,X                   ; 0793E inferred, not run
  F941  A9 02     LDA #$02                      ; 07941 inferred, not run
  F943  99 C0 04  STA $04C0,Y                   ; 07943 inferred, not run
  F946  D0 74     BNE $F9BC                     ; 07946 inferred, not run
  F948  98        TYA                           ; 07948 ×0
  F949  AA        TAX                           ; 07949 ×0
  F94A  A9 4B     LDA #$4B                      ; 0794A ×0
  F94C  20 F9 FB  JSR sub_B0_FBF9               ; 0794C ×0
  F94F  A9 10     LDA #$10                      ; 0794F ×0
  F951  85 DC     STA $DC                       ; 07951 ×0
  F953  BD C1 03  LDA $03C1,X                   ; 07953 ×0
  F956  49 62     EOR #$62                      ; 07956 ×0
  F958  D0 0D     BNE $F967                     ; 07958 ×0
  F95A  9D C0 04  STA $04C0,X                   ; 0795A inferred, not run
  F95D  9D 83 05  STA $0583,X                   ; 0795D inferred, not run
  F960  9D DE 04  STA $04DE,X                   ; 07960 inferred, not run
  F963  A9 34     LDA #$34                      ; 07963 inferred, not run
  F965  85 DC     STA $DC                       ; 07965 inferred, not run
  F967  4C BC F9  JMP $F9BC                     ; 07967 ×0
  F96A  A5 8F     LDA $8F                       ; 0796A ×0
  F96C  29 80     AND #$80                      ; 0796C ×0
  F96E  9D 56 05  STA $0556,X                   ; 0796E ×0
  F971  20 89 F7  JSR sub_B0_F789               ; 07971 ×0
  F974  B9 C1 03  LDA $03C1,Y                   ; 07974 ×0
  F977  C9 3C     CMP #$3C                      ; 07977 ×0
  F979  D0 2E     BNE $F9A9                     ; 07979 ×0
  F97B  BD 47 05  LDA $0547,X                   ; 0797B ×0
  F97E  D0 3C     BNE $F9BC                     ; 0797E ×0
  F980  BD A2 04  LDA $04A2,X                   ; 07980 ×0
  F983  19 A2 04  ORA $04A2,Y                   ; 07983 ×0
  F986  30 34     BMI $F9BC                     ; 07986 ×0
  F988  A9 80     LDA #$80                      ; 07988 inferred, not run
  F98A  9D 47 05  STA $0547,X                   ; 0798A inferred, not run
  F98D  BD 83 05  LDA $0583,X                   ; 0798D inferred, not run
  F990  C9 C1     CMP #$C1                      ; 07990 inferred, not run
  F992  D0 09     BNE $F99D                     ; 07992 inferred, not run
  F994  BD 65 05  LDA $0565,X                   ; 07994 inferred, not run
  F997  69 10     ADC #$10                      ; 07997 inferred, not run
  F999  B0 AD     BCS $F948                     ; 07999 inferred, not run
  F99B  90 07     BCC $F9A4                     ; 0799B inferred, not run
  F99D  A9 02     LDA #$02                      ; 0799D inferred, not run
  F99F  9D C0 04  STA $04C0,X                   ; 0799F inferred, not run
  F9A2  A9 70     LDA #$70                      ; 079A2 inferred, not run
  F9A4  9D 65 05  STA $0565,X                   ; 079A4 inferred, not run
  F9A7  D0 9F     BNE $F948                     ; 079A7 inferred, not run
  F9A9  C9 3F     CMP #$3F                      ; 079A9 inferred, not run
  F9AB  D0 0F     BNE $F9BC                     ; 079AB inferred, not run
  F9AD  A9 03     LDA #$03                      ; 079AD inferred, not run
  F9AF  99 C0 04  STA $04C0,Y                   ; 079AF inferred, not run
  F9B2  99 CF 04  STA $04CF,Y                   ; 079B2 inferred, not run
  F9B5  A9 82     LDA #$82                      ; 079B5 inferred, not run
  F9B7  A2 0F     LDX #$0F                      ; 079B7 inferred, not run
  F9B9  20 4A 91  JSR sub_B0_914A               ; 079B9 inferred, not run
  F9BC  BD C1 03  LDA $03C1,X                   ; 079BC ×0
  F9BF  C9 40     CMP #$40                      ; 079BF ×0
  F9C1  F0 4B     BEQ $FA0E                     ; 079C1 ×0
  F9C3  C9 37     CMP #$37                      ; 079C3 ×0
  F9C5  F0 47     BEQ $FA0E                     ; 079C5 ×0
  F9C7  C9 45     CMP #$45                      ; 079C7 ×0
  F9C9  F0 43     BEQ $FA0E                     ; 079C9 ×0
  F9CB  C9 57     CMP #$57                      ; 079CB ×0
  F9CD  F0 3F     BEQ $FA0E                     ; 079CD ×0
  F9CF  C9 50     CMP #$50                      ; 079CF ×0
  F9D1  F0 3B     BEQ $FA0E                     ; 079D1 ×0
  F9D3  C9 53     CMP #$53                      ; 079D3 ×0
  F9D5  F0 37     BEQ $FA0E                     ; 079D5 ×0
  F9D7  C9 58     CMP #$58                      ; 079D7 ×0
  F9D9  F0 33     BEQ $FA0E                     ; 079D9 ×0
  F9DB  C9 51     CMP #$51                      ; 079DB ×0
  F9DD  F0 2F     BEQ $FA0E                     ; 079DD ×0
  F9DF  C9 61     CMP #$61                      ; 079DF ×0
  F9E1  F0 2B     BEQ $FA0E                     ; 079E1 ×0
  F9E3  C9 3D     CMP #$3D                      ; 079E3 ×0
  F9E5  D0 0B     BNE $F9F2                     ; 079E5 ×0
  F9E7  BD A1 05  LDA $05A1,X                   ; 079E7 inferred, not run
  F9EA  4A        LSR A                         ; 079EA inferred, not run
  F9EB  4A        LSR A                         ; 079EB inferred, not run
  F9EC  4A        LSR A                         ; 079EC inferred, not run
  F9ED  18        CLC                           ; 079ED inferred, not run
  F9EE  69 04     ADC #$04                      ; 079EE inferred, not run
  F9F0  D0 0F     BNE $FA01                     ; 079F0 inferred, not run
  F9F2  A0 00     LDY #$00                      ; 079F2 ×0
  F9F4  BD 29 05  LDA $0529,X                   ; 079F4 ×0
  F9F7  D0 09     BNE $FA02                     ; 079F7 ×0
  F9F9  BD 65 05  LDA $0565,X                   ; 079F9 ×0
  F9FC  4A        LSR A                         ; 079FC ×0
  F9FD  4A        LSR A                         ; 079FD ×0
  F9FE  20 D8 E2  JSR sub_B0_E2D8               ; 079FE ×0
  FA01  A8        TAY                           ; 07A01 ×0
  FA02  B9 0F FA  LDA $FA0F,Y                   ; 07A02 ×0
  FA05  9D D0 03  STA $03D0,X                   ; 07A05 ×0
  FA08  B9 1B FA  LDA $FA1B,Y                   ; 07A08 ×0
  FA0B  9D A2 04  STA $04A2,X                   ; 07A0B ×0
  FA0E  60        RTS                           ; 07A0E ×0
  FA0F  .byte 6F 70 71 70 78 79 7A 75 7B 7C 7D 7D 08 08 08 48   ; 07A0F
  FA1F  .byte 08 08 08 08 08 08 08 08                           ; 07A1F

sub_B0_FA27:                    ; from 07a42
  FA27  FE DE 04  INC $04DE,X                   ; 07A27 ×9
  FA2A  A9 87     LDA #$87                      ; 07A2A ×9
  FA2C  A2 0F     LDX #$0F                      ; 07A2C ×9
  FA2E  4C 4A 91  JMP sub_B0_914A               ; 07A2E ×9

jt_B0_FA31:                    ; from 008ec
  FA31  BD DE 04  LDA $04DE,X                   ; 07A31 ×3416
  FA34  D0 0F     BNE loc_B0_FA45               ; 07A34 ×3416
  FA36  20 ED C9  JSR sub_B0_C9ED               ; 07A36 ×3086
  FA39  F0 52     BEQ loc_B0_FA8D               ; 07A39 ×3086
  FA3B  A9 30     LDA #$30                      ; 07A3B ×1545
  FA3D  20 01 8D  JSR sub_B0_8D01               ; 07A3D ×1545
  FA40  D0 4B     BNE loc_B0_FA8D               ; 07A40 ×1545
  FA42  20 27 FA  JSR sub_B0_FA27               ; 07A42 ×9

loc_B0_FA45:                    ; from 07a34
  FA45  A9 E0     LDA #$E0                      ; 07A45 ×339
  FA47  20 7A 8E  JSR sub_B0_8E7A               ; 07A47 ×339
  FA4A  20 AD E4  JSR sub_B0_E4AD               ; 07A4A ×339
  FA4D  A5 0B     LDA $0B                       ; 07A4D ×339
  FA4F  29 01     AND #$01                      ; 07A4F ×339
  FA51  AA        TAX                           ; 07A51 ×339
  FA52  B5 11     LDA $11,X                     ; 07A52 ×339
  FA54  30 22     BMI loc_B0_FA78               ; 07A54 ×339
  FA56  BD 74 05  LDA $0574,X                   ; 07A56 ×174
  FA59  D0 1D     BNE loc_B0_FA78               ; 07A59 ×174
  FA5B  A4 82     LDY $82                       ; 07A5B ×174
  FA5D  84 21     STY $21                       ; 07A5D ×174
  FA5F  A9 0A     LDA #$0A                      ; 07A5F ×174
  FA61  20 01 8D  JSR sub_B0_8D01               ; 07A61 ×174
  FA64  D0 12     BNE loc_B0_FA78               ; 07A64 ×174
  FA66  A9 20     LDA #$20                      ; 07A66 inferred, not run
  FA68  20 4D 8D  JSR sub_B0_8D4D               ; 07A68 inferred, not run
  FA6B  D0 0B     BNE loc_B0_FA78               ; 07A6B inferred, not run
  FA6D  A9 4B     LDA #$4B                      ; 07A6D inferred, not run
  FA6F  20 F9 FB  JSR sub_B0_FBF9               ; 07A6F inferred, not run
  FA72  A6 82     LDX $82                       ; 07A72 inferred, not run
  FA74  A9 14     LDA #$14                      ; 07A74 inferred, not run
  FA76  D0 10     BNE $FA88                     ; 07A76 inferred, not run

loc_B0_FA78:                    ; from 07a64 07a54
  FA78  A6 82     LDX $82                       ; 07A78 ×339
  FA7A  BD 75 04  LDA $0475,X                   ; 07A7A ×339
  FA7D  D0 0E     BNE loc_B0_FA8D               ; 07A7D ×339
  FA7F  A9 85     LDA #$85                      ; 07A7F ×9
  FA81  A2 0F     LDX #$0F                      ; 07A81 ×9
  FA83  20 4A 91  JSR sub_B0_914A               ; 07A83 ×9
  FA86  A9 04     LDA #$04                      ; 07A86 ×9
  FA88  85 DC     STA $DC                       ; 07A88 ×9
  FA8A  20 94 FA  JSR sub_B0_FA94               ; 07A8A ×9

loc_B0_FA8D:                    ; from 07a39 07a40 07a7d
  FA8D  BD 83 05  LDA $0583,X                   ; 07A8D ×3416
  FA90  9D D0 03  STA $03D0,X                   ; 07A90 ×3416
  FA93  60        RTS                           ; 07A93 ×3416

sub_B0_FA94:                    ; from 07a8a 045ad 04a76
  FA94  A9 02     LDA #$02                      ; 07A94 ×11
  FA96  9D DE 04  STA $04DE,X                   ; 07A96 ×11
  FA99  9D ED 04  STA $04ED,X                   ; 07A99 ×11
  FA9C  A9 04     LDA #$04                      ; 07A9C ×11
  FA9E  9D C1 03  STA $03C1,X                   ; 07A9E ×11
  FAA1  A9 00     LDA #$00                      ; 07AA1 ×11
  FAA3  9D 0B 05  STA $050B,X                   ; 07AA3 ×11
  FAA6  9D 75 04  STA $0475,X                   ; 07AA6 ×11
  FAA9  60        RTS                           ; 07AA9 ×11

loc_B0_FAAA:                    ; from 07aff
  FAAA  4C 80 D0  JMP sub_B0_D080               ; 07AAA ×86

sub_B0_FAAD:                    ; from 07ae1
  FAAD  BD 65 05  LDA $0565,X                   ; 07AAD ×3960
  FAB0  D0 10     BNE loc_B0_FAC2               ; 07AB0 ×3960
  FAB2  A9 03     LDA #$03                      ; 07AB2 inferred, not run
  FAB4  9D 92 05  STA $0592,X                   ; 07AB4 inferred, not run
  FAB7  BD 83 05  LDA $0583,X                   ; 07AB7 inferred, not run
  FABA  9D 56 05  STA $0556,X                   ; 07ABA inferred, not run
  FABD  29 0F     AND #$0F                      ; 07ABD inferred, not run
  FABF  9D 65 05  STA $0565,X                   ; 07ABF inferred, not run

loc_B0_FAC2:                    ; from 07ab0
  FAC2  BD 56 05  LDA $0556,X                   ; 07AC2 ×3960
  FAC5  29 80     AND #$80                      ; 07AC5 ×3960
  FAC7  A8        TAY                           ; 07AC7 ×3960
  FAC8  BD 65 05  LDA $0565,X                   ; 07AC8 ×3960
  FACB  C0 01     CPY #$01                      ; 07ACB ×3960
  FACD  90 04     BCC loc_B0_FAD3               ; 07ACD ×3960
  FACF  A0 FF     LDY #$FF                      ; 07ACF ×2695
  FAD1  49 FF     EOR #$FF                      ; 07AD1 ×2695

loc_B0_FAD3:                    ; from 07acd
  FAD3  7D FD 03  ADC $03FD,X                   ; 07AD3 ×3960
  FAD6  9D FD 03  STA $03FD,X                   ; 07AD6 ×3960
  FAD9  98        TYA                           ; 07AD9 ×3960
  FADA  7D EE 03  ADC $03EE,X                   ; 07ADA ×3960
  FADD  9D EE 03  STA $03EE,X                   ; 07ADD ×3960
  FAE0  60        RTS                           ; 07AE0 ×3960

jt_B0_FAE1:                    ; from 008ec
  FAE1  20 AD FA  JSR sub_B0_FAAD               ; 07AE1 ×3960
  FAE4  BD 92 05  LDA $0592,X                   ; 07AE4 ×3960
  FAE7  C9 02     CMP #$02                      ; 07AE7 ×3960
  FAE9  B0 05     BCS loc_B0_FAF0               ; 07AE9 ×3960
  FAEB  A9 F0     LDA #$F0                      ; 07AEB inferred, not run
  FAED  20 7A 8E  JSR sub_B0_8E7A               ; 07AED inferred, not run

loc_B0_FAF0:                    ; from 07ae9
  FAF0  A9 20     LDA #$20                      ; 07AF0 ×3960
  FAF2  BC A2 04  LDY $04A2,X                   ; 07AF2 ×3960
  FAF5  10 0A     BPL loc_B0_FB01               ; 07AF5 ×3960
  FAF7  BD DE 04  LDA $04DE,X                   ; 07AF7 ×909
  FAFA  18        CLC                           ; 07AFA ×909
  FAFB  69 01     ADC #$01                      ; 07AFB ×909
  FAFD  C9 28     CMP #$28                      ; 07AFD ×909
  FAFF  B0 A9     BCS loc_B0_FAAA               ; 07AFF ×909

loc_B0_FB01:                    ; from 07af5
  FB01  9D DE 04  STA $04DE,X                   ; 07B01 ×3874
  FB04  20 D2 FB  JSR sub_B0_FBD2               ; 07B04 ×3874
  FB07  8A        TXA                           ; 07B07 ×3874
  FB08  45 0B     EOR $0B                       ; 07B08 ×3874
  FB0A  29 03     AND #$03                      ; 07B0A ×3874
  FB0C  F0 01     BEQ loc_B0_FB0F               ; 07B0C ×3874
  FB0E  60        RTS                           ; 07B0E ×2869

loc_B0_FB0F:                    ; from 07b0c
  FB0F  A4 82     LDY $82                       ; 07B0F ×1005
  FB11  84 21     STY $21                       ; 07B11 ×1005
  FB13  A2 0E     LDX #$0E                      ; 07B13 ×1005
  FB15  A5 10     LDA $10                       ; 07B15 ×1005
  FB17  C9 0B     CMP #$0B                      ; 07B17 ×1005
  FB19  D0 09     BNE loc_B0_FB24               ; 07B19 ×1005
  FB1B  B9 C1 03  LDA $03C1,Y                   ; 07B1B ×234
  FB1E  C9 3A     CMP #$3A                      ; 07B1E ×234
  FB20  D0 02     BNE loc_B0_FB24               ; 07B20 ×234
  FB22  A2 02     LDX #$02                      ; 07B22 ×234

loc_B0_FB24:                    ; from 07bce 07b19
  FB24  BD 74 05  LDA $0574,X                   ; 07B24 ×12267
  FB27  D0 0D     BNE loc_B0_FB36               ; 07B27 ×12267
  FB29  A5 10     LDA $10                       ; 07B29 ×12263
  FB2B  C9 07     CMP #$07                      ; 07B2B ×12263
  FB2D  F0 0A     BEQ loc_B0_FB39               ; 07B2D ×12263
  FB2F  BD B1 04  LDA $04B1,X                   ; 07B2F ×9113
  FB32  29 40     AND #$40                      ; 07B32 ×9113
  FB34  F0 03     BEQ loc_B0_FB39               ; 07B34 ×9113

loc_B0_FB36:                    ; from 07b40 07b27
  FB36  4C CB FB  JMP loc_B0_FBCB               ; 07B36 ×6910

loc_B0_FB39:                    ; from 07b34 07b2d
  FB39  A9 08     LDA #$08                      ; 07B39 ×12263
  FB3B  85 DE     STA $DE                       ; 07B3B ×12263
  FB3D  BD C1 03  LDA $03C1,X                   ; 07B3D ×12263
  FB40  F0 F4     BEQ loc_B0_FB36               ; 07B40 ×12263
  FB42  C9 03     CMP #$03                      ; 07B42 ×5357
  FB44  90 14     BCC loc_B0_FB5A               ; 07B44 ×5357
  FB46  C9 0B     CMP #$0B                      ; 07B46 ×4352
  FB48  F0 10     BEQ loc_B0_FB5A               ; 07B48 ×4352
  FB4A  C9 17     CMP #$17                      ; 07B4A ×4352
  FB4C  F0 0C     BEQ loc_B0_FB5A               ; 07B4C ×4352
  FB4E  C9 3C     CMP #$3C                      ; 07B4E ×4352
  FB50  F0 04     BEQ $FB56                     ; 07B50 ×4352
  FB52  C9 33     CMP #$33                      ; 07B52 ×4352
  FB54  D0 75     BNE loc_B0_FBCB               ; 07B54 ×4352
  FB56  A9 0C     LDA #$0C                      ; 07B56 inferred, not run
  FB58  85 DE     STA $DE                       ; 07B58 inferred, not run

loc_B0_FB5A:                    ; from 07b44
  FB5A  E4 21     CPX $21                       ; 07B5A ×1005
  FB5C  F0 6D     BEQ loc_B0_FBCB               ; 07B5C ×1005
  FB5E  A9 10     LDA #$10                      ; 07B5E ×1005
  FB60  20 01 8D  JSR sub_B0_8D01               ; 07B60 ×1005
  FB63  D0 66     BNE loc_B0_FBCB               ; 07B63 ×1005
  FB65  A5 10     LDA $10                       ; 07B65 ×115
  FB67  C9 02     CMP #$02                      ; 07B67 ×115
  FB69  B0 07     BCS loc_B0_FB72               ; 07B69 ×115
  FB6B  A9 10     LDA #$10                      ; 07B6B inferred, not run
  FB6D  20 39 8D  JSR sub_B0_8D39               ; 07B6D inferred, not run
  FB70  D0 59     BNE loc_B0_FBCB               ; 07B70 inferred, not run

loc_B0_FB72:                    ; from 07b69
  FB72  E0 02     CPX #$02                      ; 07B72 ×115
  FB74  B0 09     BCS loc_B0_FB7F               ; 07B74 ×115
  FB76  BD D0 03  LDA $03D0,X                   ; 07B76 ×115
  FB79  C9 4B     CMP #$4B                      ; 07B79 ×115
  FB7B  D0 02     BNE loc_B0_FB7F               ; 07B7B ×115
  FB7D  E6 DE     INC $DE                       ; 07B7D ×0

loc_B0_FB7F:                    ; from 07b7b
  FB7F  20 94 8A  JSR sub_B0_8A94               ; 07B7F ×115
  FB82  90 47     BCC loc_B0_FBCB               ; 07B82 ×115
  FB84  B9 56 05  LDA $0556,Y                   ; 07B84 ×53
  FB87  4A        LSR A                         ; 07B87 ×53
  FB88  99 A2 04  STA $04A2,Y                   ; 07B88 ×53
  FB8B  B9 D0 03  LDA $03D0,Y                   ; 07B8B ×53
  FB8E  C9 DC     CMP #$DC                      ; 07B8E ×53
  FB90  F0 60     BEQ loc_B0_FBF2               ; 07B90 ×53
  FB92  C9 B2     CMP #$B2                      ; 07B92 ×5
  FB94  F0 5C     BEQ loc_B0_FBF2               ; 07B94 ×5
  FB96  A9 1C     LDA #$1C                      ; 07B96 inferred, not run
  FB98  85 DC     STA $DC                       ; 07B98 inferred, not run
  FB9A  A5 10     LDA $10                       ; 07B9A inferred, not run
  FB9C  C9 07     CMP #$07                      ; 07B9C inferred, not run
  FB9E  D0 04     BNE $FBA4                     ; 07B9E inferred, not run
  FBA0  A9 4B     LDA #$4B                      ; 07BA0 inferred, not run
  FBA2  B0 0E     BCS $FBB2                     ; 07BA2 inferred, not run
  FBA4  C9 02     CMP #$02                      ; 07BA4 inferred, not run
  FBA6  A9 46     LDA #$46                      ; 07BA6 inferred, not run
  FBA8  B0 08     BCS $FBB2                     ; 07BA8 inferred, not run
  FBAA  C6 DB     DEC $DB                       ; 07BAA inferred, not run
  FBAC  A9 24     LDA #$24                      ; 07BAC inferred, not run
  FBAE  85 DC     STA $DC                       ; 07BAE inferred, not run
  FBB0  A9 14     LDA #$14                      ; 07BB0 inferred, not run
  FBB2  20 F9 FB  JSR sub_B0_FBF9               ; 07BB2 inferred, not run
  FBB5  A9 0C     LDA #$0C                      ; 07BB5 inferred, not run
  FBB7  9D C1 03  STA $03C1,X                   ; 07BB7 inferred, not run
  FBBA  A9 08     LDA #$08                      ; 07BBA inferred, not run
  FBBC  9D DE 04  STA $04DE,X                   ; 07BBC inferred, not run
  FBBF  A9 0F     LDA #$0F                      ; 07BBF inferred, not run
  FBC1  A4 10     LDY $10                       ; 07BC1 inferred, not run
  FBC3  C0 07     CPY #$07                      ; 07BC3 inferred, not run
  FBC5  F0 27     BEQ loc_B0_FBEE               ; 07BC5 inferred, not run
  FBC7  A9 76     LDA #$76                      ; 07BC7 inferred, not run
  FBC9  D0 23     BNE loc_B0_FBEE               ; 07BC9 inferred, not run

loc_B0_FBCB:                    ; from 07b36 07b54 07b63 07b82
  FBCB  CA        DEX                           ; 07BCB ×12214
  FBCC  30 03     BMI loc_B0_FBD1               ; 07BCC ×12214
  FBCE  4C 24 FB  JMP loc_B0_FB24               ; 07BCE ×11262

loc_B0_FBD1:                    ; from 07bcc
  FBD1  60        RTS                           ; 07BD1 ×952

sub_B0_FBD2:                    ; from 07b04
  FBD2  A9 B2     LDA #$B2                      ; 07BD2 ×3874
  FBD4  A4 10     LDY $10                       ; 07BD4 ×3874
  FBD6  C0 09     CPY #$09                      ; 07BD6 ×3874
  FBD8  F0 14     BEQ loc_B0_FBEE               ; 07BD8 ×3874
  FBDA  C0 07     CPY #$07                      ; 07BDA ×1723
  FBDC  D0 08     BNE loc_B0_FBE6               ; 07BDC ×1723
  FBDE  A4 8A     LDY $8A                       ; 07BDE ×859
  FBE0  D0 0C     BNE loc_B0_FBEE               ; 07BE0 ×859
  FBE2  A9 F9     LDA #$F9                      ; 07BE2 inferred, not run
  FBE4  D0 08     BNE loc_B0_FBEE               ; 07BE4 inferred, not run

loc_B0_FBE6:                    ; from 07bdc
  FBE6  A9 75     LDA #$75                      ; 07BE6 ×864
  FBE8  C0 0B     CPY #$0B                      ; 07BE8 ×864
  FBEA  D0 02     BNE loc_B0_FBEE               ; 07BEA ×864
  FBEC  A9 DC     LDA #$DC                      ; 07BEC ×864

loc_B0_FBEE:                    ; from 07bd8 07be0
  FBEE  9D D0 03  STA $03D0,X                   ; 07BEE ×3874
  FBF1  60        RTS                           ; 07BF1 ×3874

loc_B0_FBF2:                    ; from 07b90 07b94
  FBF2  8A        TXA                           ; 07BF2 ×53
  FBF3  A8        TAY                           ; 07BF3 ×53
  FBF4  A6 82     LDX $82                       ; 07BF4 ×53
  FBF6  4C 67 F8  JMP loc_B0_F867               ; 07BF6 ×53

sub_B0_FBF9:                    ; from 045a0 054ce 0794c
  FBF9  85 15     STA $15                       ; 07BF9 ×1
  FBFB  BD B1 04  LDA $04B1,X                   ; 07BFB ×1
  FBFE  09 40     ORA #$40                      ; 07BFE ×1
  FC00  9D B1 04  STA $04B1,X                   ; 07C00 ×1
  FC03  A9 00     LDA #$00                      ; 07C03 ×1
  FC05  9D FC 04  STA $04FC,X                   ; 07C05 ×1
  FC08  86 21     STX $21                       ; 07C08 ×1
  FC0A  A5 15     LDA $15                       ; 07C0A ×1
  FC0C  E0 02     CPX #$02                      ; 07C0C ×1
  FC0E  B0 02     BCS $FC12                     ; 07C0E ×1
  FC10  69 5A     ADC #$5A                      ; 07C10 ×1
  FC12  A6 82     LDX $82                       ; 07C12 ×1
  FC14  4C 01 E0  JMP loc_B0_E001               ; 07C14 ×1
  FC17  .byte A9 77 9D D0 03 60 A5 0B 29 01 85 8D A8 B9 29 00   ; 07C17
  FC27  .byte 29 04 D0 05 A9 06 20 6C FC A9 73 9D D0 03 60 BD   ; 07C27
  FC37  .byte 1A 05 2A A9 EA 90 02 A9 E2 20 7A 8E BD 83 05 38   ; 07C37
  FC47  .byte FD 39 04 30 0E BD 83 05 9D 39 04 A9 00 9D C0 04   ; 07C47
  FC57  .byte 9D CF 04                                          ; 07C57
  FC5A  20 ED C9  JSR sub_B0_C9ED               ; 07C5A ×0
  FC5D  F0 4B     BEQ $FCAA                     ; 07C5D ×0
  FC5F  A9 28     LDA #$28                      ; 07C5F ×0
  FC61  20 4D 8D  JSR sub_B0_8D4D               ; 07C61 ×0
  FC64  D0 44     BNE $FCAA                     ; 07C64 ×0
  FC66  A5 1B     LDA $1B                       ; 07C66 inferred, not run
  FC68  85 8D     STA $8D                       ; 07C68 inferred, not run
  FC6A  A9 0E     LDA #$0E                      ; 07C6A inferred, not run
  FC6C  20 01 8D  JSR sub_B0_8D01               ; 07C6C inferred, not run
  FC6F  D0 39     BNE $FCAA                     ; 07C6F inferred, not run
  FC71  99 65 05  STA $0565,Y                   ; 07C71 inferred, not run
  FC74  99 DF 03  STA $03DF,Y                   ; 07C74 inferred, not run
  FC77  BD C0 04  LDA $04C0,X                   ; 07C77 inferred, not run
  FC7A  10 09     BPL $FC85                     ; 07C7A inferred, not run
  FC7C  A5 8D     LDA $8D                       ; 07C7C inferred, not run
  FC7E  E9 20     SBC #$20                      ; 07C7E inferred, not run
  FC80  30 03     BMI $FC85                     ; 07C80 inferred, not run
  FC82  20 FB FC  JSR $FCFB                     ; 07C82 inferred, not run
  FC85  A9 20     LDA #$20                      ; 07C85 inferred, not run
  FC87  06 8F     ASL $8F                       ; 07C87 inferred, not run
  FC89  B0 02     BCS $FC8D                     ; 07C89 inferred, not run
  FC8B  A9 E0     LDA #$E0                      ; 07C8B inferred, not run
  FC8D  99 BD 05  STA $05BD,Y                   ; 07C8D inferred, not run
  FC90  B9 A2 04  LDA $04A2,Y                   ; 07C90 inferred, not run
  FC93  29 EF     AND #$EF                      ; 07C93 inferred, not run
  FC95  99 A2 04  STA $04A2,Y                   ; 07C95 inferred, not run
  FC98  98        TYA                           ; 07C98 inferred, not run
  FC99  AA        TAX                           ; 07C99 inferred, not run
  FC9A  BD BD 05  LDA $05BD,X                   ; 07C9A inferred, not run
  FC9D  29 80     AND #$80                      ; 07C9D inferred, not run
  FC9F  85 15     STA $15                       ; 07C9F inferred, not run
  FCA1  A9 02     LDA #$02                      ; 07CA1 inferred, not run
  FCA3  A4 15     LDY $15                       ; 07CA3 inferred, not run
  FCA5  20 0E E9  JSR $E90E                     ; 07CA5 inferred, not run
  FCA8  A6 82     LDX $82                       ; 07CA8 inferred, not run
  FCAA  BD 74 05  LDA $0574,X                   ; 07CAA ×0
  FCAD  F0 14     BEQ $FCC3                     ; 07CAD ×0
  FCAF  20 58 FE  JSR sub_B0_FE58               ; 07CAF inferred, not run
  FCB2  A4 82     LDY $82                       ; 07CB2 inferred, not run
  FCB4  20 6D B1  JSR sub_B0_B16D               ; 07CB4 inferred, not run
  FCB7  A9 41     LDA #$41                      ; 07CB7 inferred, not run
  FCB9  9D C1 03  STA $03C1,X                   ; 07CB9 inferred, not run
  FCBC  A6 82     LDX $82                       ; 07CBC inferred, not run
  FCBE  A9 04     LDA #$04                      ; 07CBE inferred, not run
  FCC0  20 78 DD  JSR $DD78                     ; 07CC0 inferred, not run
  FCC3  BD 47 05  LDA $0547,X                   ; 07CC3 ×0
  FCC6  F0 10     BEQ $FCD8                     ; 07CC6 ×0
  FCC8  20 59 9E  JSR sub_B0_9E59               ; 07CC8 inferred, not run
  FCCB  A9 00     LDA #$00                      ; 07CCB inferred, not run
  FCCD  9D 47 05  STA $0547,X                   ; 07CCD inferred, not run
  FCD0  20 8B 9E  JSR loc_B0_9E8B               ; 07CD0 inferred, not run
  FCD3  A9 20     LDA #$20                      ; 07CD3 inferred, not run
  FCD5  9D DE 04  STA $04DE,X                   ; 07CD5 inferred, not run
  FCD8  BD DE 04  LDA $04DE,X                   ; 07CD8 ×0
  FCDB  F0 10     BEQ loc_B0_FCED               ; 07CDB ×0
  FCDD  DE DE 04  DEC $04DE,X                   ; 07CDD inferred, not run

sub_B0_FCE0:                    ; from 06cd5
  FCE0  A0 02     LDY #$02                      ; 07CE0 ×126
  FCE2  29 03     AND #$03                      ; 07CE2 ×126
  FCE4  D0 07     BNE loc_B0_FCED               ; 07CE4 ×126
  FCE6  98        TYA                           ; 07CE6 ×27
  FCE7  5D FD 03  EOR $03FD,X                   ; 07CE7 ×27
  FCEA  9D FD 03  STA $03FD,X                   ; 07CEA ×27

loc_B0_FCED:                    ; from 07ce4
  FCED  A9 7E     LDA #$7E                      ; 07CED ×126
  FCEF  A4 10     LDY $10                       ; 07CEF ×126
  FCF1  C0 0B     CPY #$0B                      ; 07CF1 ×126
  FCF3  D0 02     BNE loc_B0_FCF7               ; 07CF3 ×126
  FCF5  A9 E6     LDA #$E6                      ; 07CF5 inferred, not run

loc_B0_FCF7:                    ; from 07cf3
  FCF7  9D D0 03  STA $03D0,X                   ; 07CF7 ×126
  FCFA  60        RTS                           ; 07CFA ×126
  FCFB  A9 56     LDA #$56                      ; 07CFB inferred, not run
  FCFD  99 C1 05  STA $05C1,Y                   ; 07CFD inferred, not run
  FD00  A9 FD     LDA #$FD                      ; 07D00 inferred, not run
  FD02  99 C0 04  STA $04C0,Y                   ; 07D02 inferred, not run
  FD05  BD CF 04  LDA $04CF,X                   ; 07D05 inferred, not run
  FD08  99 CF 04  STA $04CF,Y                   ; 07D08 inferred, not run
  FD0B  A9 00     LDA #$00                      ; 07D0B inferred, not run
  FD0D  99 FC 04  STA $04FC,Y                   ; 07D0D inferred, not run
  FD10  99 65 05  STA $0565,Y                   ; 07D10 inferred, not run
  FD13  99 1A 05  STA $051A,Y                   ; 07D13 inferred, not run
  FD16  E6 D0     INC $D0                       ; 07D16 inferred, not run
  FD18  A9 81     LDA #$81                      ; 07D18 inferred, not run
  FD1A  99 74 05  STA $0574,Y                   ; 07D1A inferred, not run
  FD1D  A9 C0     LDA #$C0                      ; 07D1D inferred, not run
  FD1F  99 47 05  STA $0547,Y                   ; 07D1F inferred, not run
  FD22  84 15     STY $15                       ; 07D22 inferred, not run
  FD24  A9 1E     LDA #$1E                      ; 07D24 inferred, not run
  FD26  20 F6 B7  JSR sub_B0_B7F6               ; 07D26 inferred, not run
  FD29  A4 15     LDY $15                       ; 07D29 inferred, not run
  FD2B  60        RTS                           ; 07D2B inferred, not run
  FD2C  .byte BD 83 05 F0 16 BD 47 05 D0 0E 20 AD E4 A5 0B 20   ; 07D2C
  FD3C  .byte E0 FC A9 78 9D D0 03 60 DE 83 05 BD A1 05 C9 38   ; 07D3C
  FD4C  .byte 90 08 BD A2 04 10 03 4C 80 D0 BD A2 04 30 21 BD   ; 07D4C
  FD5C  .byte D0 03 F0 1C BD 65 05 38 E9 02 B0 11 BD 75 04 D0   ; 07D5C
  FD6C  .byte 0A BD A1 05 E9 01 90 DF 9D A1 05 A9 00 9D 65 05   ; 07D6C
  FD7C  .byte 20 9F F7 BD 75 04 D0 0A BD A1 05 C9 38 B0 03 FE   ; 07D7C
  FD8C  .byte A1 05 60 20 9F F7 BD 83 05 9D 65 05 A9 81 9D D0   ; 07D8C
  FD9C  .byte 03 60 20 11 FE 4C 80 D0 20 42 FE B9 83 05 9D 83   ; 07D9C
  FDAC  .byte 05 A6 82 4C 80 D0 A5 10 C9 07 F0 EC C9 09 F0 E8   ; 07DAC
  FDBC  .byte C9 05 F0 E4 20 ED C9 F0 46 A9 08 20 01 8D D0 3F   ; 07DBC
  FDCC  .byte A9 30 20 4D 8D D0 38 84 91 A9 56 20 F6 B7 20 42   ; 07DCC
  FDDC  .byte FE A9 E6 20 EE 8E BD 83 05 0A 85 15 C9 36 F0 04   ; 07DDC
  FDEC  .byte C9 10 D0 04 A9 F8 85 EB A2 24 A0 03 20 CB FF 20   ; 07DEC
  FDFC  .byte 11 FE A9 06 20 59 BC                              ; 07DFC

jt_B0_FE03:                    ; from 008ec
  FE03  A9 C1     LDA #$C1                      ; 07E03 ×16601
  FE05  A4 10     LDY $10                       ; 07E05 ×16601
  FE07  C0 08     CPY #$08                      ; 07E07 ×16601
  FE09  F0 02     BEQ $FE0D                     ; 07E09 ×16601
  FE0B  A9 00     LDA #$00                      ; 07E0B ×16601
  FE0D  9D D0 03  STA $03D0,X                   ; 07E0D ×16601
  FE10  60        RTS                           ; 07E10 ×16601
  FE11  .byte A2 00 BD 38 05 29 1F C9 03 90 05 A9 00 9D 38 05   ; 07E11
  FE21  .byte E8 E0 02 D0 ED BD C1 03 F0 0F C9 04 F0 0B C9 42   ; 07E21
  FE31  .byte F0 07 C9 7F F0 03 20 94 FA E8 E0 0F D0 E7 A6 82   ; 07E31
  FE41  .byte 60 A9 42 20 66 FE 98 AA FE 83 05 A4 82 4C 6D B1   ; 07E41

sub_B0_FE51:                    ; from 0042e
  FE51  A2 1E     LDX #$1E                      ; 07E51 ×58783
  FE53  A0 03     LDY #$03                      ; 07E53 ×58783
  FE55  4C CB FF  JMP sub_B0_FFCB               ; 07E55 ×58783

sub_B0_FE58:                    ; from 05d29 05ede 03c5c 020e6 029fd 0142b (+1)
  FE58  A2 02     LDX #$02                      ; 07E58 ×422

loc_B0_FE5A:                    ; from 07e62
  FE5A  BD C1 03  LDA $03C1,X                   ; 07E5A ×1104
  FE5D  F0 06     BEQ loc_B0_FE65               ; 07E5D ×1104
  FE5F  E8        INX                           ; 07E5F ×682
  FE60  E0 0F     CPX #$0F                      ; 07E60 ×682
  FE62  D0 F6     BNE loc_B0_FE5A               ; 07E62 ×682
  FE64  CA        DEX                           ; 07E64 inferred, not run

loc_B0_FE65:                    ; from 07e5d 07e6b
  FE65  60        RTS                           ; 07E65 ×425

sub_B0_FE66:                    ; from 06ebe 023d1
  FE66  A0 02     LDY #$02                      ; 07E66 ×5

loc_B0_FE68:                    ; from 07e70
  FE68  D9 C1 03  CMP $03C1,Y                   ; 07E68 ×32
  FE6B  F0 F8     BEQ loc_B0_FE65               ; 07E6B ×32
  FE6D  C8        INY                           ; 07E6D ×29
  FE6E  C0 0F     CPY #$0F                      ; 07E6E ×29
  FE70  D0 F6     BNE loc_B0_FE68               ; 07E70 ×29
  FE72  C8        INY                           ; 07E72 ×2
  FE73  60        RTS                           ; 07E73 ×2
  FE74  .byte 40                                                ; 07E74

loc_B0_FE75:                    ; from 07fa3
  FE75  85 2E     STA $2E                       ; 07E75 ×437770
  FE77  8E 01 20  STX $2001                     ; 07E77 ×437770
  FE7A  8E 03 20  STX $2003                     ; 07E7A ×437770
  FE7D  A9 02     LDA #$02                      ; 07E7D ×437770
  FE7F  8D 14 40  STA $4014                     ; 07E7F ×437770
  FE82  A5 09     LDA $09                       ; 07E82 ×437770
  FE84  10 0D     BPL loc_B0_FE93               ; 07E84 ×437770
  FE86  29 7F     AND #$7F                      ; 07E86 ×315489
  FE88  8D 00 20  STA $2000                     ; 07E88 ×315489
  FE8B  AD 02 20  LDA $2002                     ; 07E8B ×315489
  FE8E  CA        DEX                           ; 07E8E ×315489
  FE8F  9A        TXS                           ; 07E8F ×315489
  FE90  6C 23 00  JMP ($0023)                   ; 07E90 ×315489

loc_B0_FE93:                    ; from 07e84
  FE93  84 77     STY $77                       ; 07E93 ×122281
  FE95  A4 10     LDY $10                       ; 07E95 ×122281
  FE97  30 1A     BMI loc_B0_FEB3               ; 07E97 ×122281
  FE99  29 7F     AND #$7F                      ; 07E99 ×106401
  FE9B  8D 00 20  STA $2000                     ; 07E9B ×106401
  FE9E  AD 02 20  LDA $2002                     ; 07E9E ×106401
  FEA1  A2 C5     LDX #$C5                      ; 07EA1 ×106401
  FEA3  20 65 FF  JSR sub_B0_FF65               ; 07EA3 ×106401
  FEA6  20 B5 85  JSR sub_B0_85B5               ; 07EA6 ×106401

loc_B0_FEA9:                    ; from 07ecd
  FEA9  A5 09     LDA $09                       ; 07EA9 ×119559
  FEAB  09 80     ORA #$80                      ; 07EAB ×119559
  FEAD  8D 00 20  STA $2000                     ; 07EAD ×119559
  FEB0  4C A6 FF  JMP loc_B0_FFA6               ; 07EB0 ×119559

loc_B0_FEB3:                    ; from 07e97
  FEB3  C0 FE     CPY #$FE                      ; 07EB3 ×15880
  FEB5  F0 19     BEQ loc_B0_FED0               ; 07EB5 ×15880
  FEB7  AD 02 20  LDA $2002                     ; 07EB7 ×13526
  FEBA  A5 87     LDA $87                       ; 07EBA ×13526
  FEBC  8D 05 20  STA $2005                     ; 07EBC ×13526
  FEBF  A9 00     LDA #$00                      ; 07EBF ×13526
  FEC1  20 4D E5  JSR sub_B0_E54D               ; 07EC1 ×13526
  FEC4  A5 40     LDA $40                       ; 07EC4 ×13526
  FEC6  10 05     BPL loc_B0_FECD               ; 07EC6 ×13526
  FEC8  68        PLA                           ; 07EC8 ×368
  FEC9  68        PLA                           ; 07EC9 ×368
  FECA  4C 7A E5  JMP loc_B0_E57A               ; 07ECA ×368

loc_B0_FECD:                    ; from 07ec6
  FECD  4C A9 FE  JMP loc_B0_FEA9               ; 07ECD ×13158

loc_B0_FED0:                    ; from 07eb5
  FED0  20 55 E5  JSR sub_B0_E555               ; 07ED0 ×2354
  FED3  A9 00     LDA #$00                      ; 07ED3 ×2354
  FED5  85 40     STA $40                       ; 07ED5 ×2354
  FED7  4C A6 FF  JMP loc_B0_FFA6               ; 07ED7 ×2354
  FEDA  A6 D7     LDX $D7                       ; 07EDA inferred, not run
  FEDC  A9 21     LDA #$21                      ; 07EDC inferred, not run
  FEDE  85 18     STA $18                       ; 07EDE inferred, not run
  FEE0  AD 02 20  LDA $2002                     ; 07EE0 inferred, not run
  FEE3  BD 00 07  LDA $0700,X                   ; 07EE3 inferred, not run
  FEE6  18        CLC                           ; 07EE6 inferred, not run
  FEE7  65 17     ADC $17                       ; 07EE7 inferred, not run
  FEE9  85 16     STA $16                       ; 07EE9 inferred, not run
  FEEB  29 F8     AND #$F8                      ; 07EEB inferred, not run
  FEED  05 15     ORA $15                       ; 07EED inferred, not run
  FEEF  8D 05 20  STA $2005                     ; 07EEF inferred, not run
  FEF2  A5 16     LDA $16                       ; 07EF2 inferred, not run
  FEF4  29 07     AND #$07                      ; 07EF4 inferred, not run
  FEF6  85 15     STA $15                       ; 07EF6 inferred, not run
  FEF8  A0 09     LDY #$09                      ; 07EF8 inferred, not run
  FEFA  88        DEY                           ; 07EFA inferred, not run
  FEFB  D0 FD     BNE $FEFA                     ; 07EFB inferred, not run
  FEFD  A5 90     LDA $90                       ; 07EFD inferred, not run
  FEFF  EA        NOP                           ; 07EFF inferred, not run
  FF00  E8        INX                           ; 07F00 inferred, not run
  FF01  E0 4C     CPX #$4C                      ; 07F01 inferred, not run
  FF03  D0 04     BNE $FF09                     ; 07F03 inferred, not run
  FF05  A2 00     LDX #$00                      ; 07F05 inferred, not run
  FF07  F0 02     BEQ $FF0B                     ; 07F07 inferred, not run
  FF09  EA        NOP                           ; 07F09 inferred, not run
  FF0A  EA        NOP                           ; 07F0A inferred, not run
  FF0B  A5 18     LDA $18                       ; 07F0B inferred, not run
  FF0D  29 07     AND #$07                      ; 07F0D inferred, not run
  FF0F  C9 05     CMP #$05                      ; 07F0F inferred, not run
  FF11  90 00     BCC $FF13                     ; 07F11 inferred, not run
  FF13  C6 18     DEC $18                       ; 07F13 inferred, not run
  FF15  D0 C9     BNE $FEE0                     ; 07F15 inferred, not run
  FF17  60        RTS                           ; 07F17 inferred, not run

sub_B0_FF18:                    ; from 005a6
  FF18  A9 1D     LDA #$1D                      ; 07F18 ×6767
  FF1A  8D 06 20  STA $2006                     ; 07F1A ×6767
  FF1D  A9 70     LDA #$70                      ; 07F1D ×6767
  FF1F  8D 06 20  STA $2006                     ; 07F1F ×6767
  FF22  A0 00     LDY #$00                      ; 07F22 ×6767
  FF24  A2 00     LDX #$00                      ; 07F24 ×6767
  FF26  18        CLC                           ; 07F26 ×6767

loc_B0_FF27:                    ; from 07f61
  FF27  B9 00 07  LDA $0700,Y                   ; 07F27 ×135340
  FF2A  8D 07 20  STA $2007                     ; 07F2A ×135340
  FF2D  8D 07 20  STA $2007                     ; 07F2D ×135340
  FF30  8D 07 20  STA $2007                     ; 07F30 ×135340
  FF33  8D 07 20  STA $2007                     ; 07F33 ×135340
  FF36  8D 07 20  STA $2007                     ; 07F36 ×135340
  FF39  8D 07 20  STA $2007                     ; 07F39 ×135340
  FF3C  8D 07 20  STA $2007                     ; 07F3C ×135340
  FF3F  8D 07 20  STA $2007                     ; 07F3F ×135340
  FF42  B9 01 07  LDA $0701,Y                   ; 07F42 ×135340
  FF45  8D 07 20  STA $2007                     ; 07F45 ×135340
  FF48  8D 07 20  STA $2007                     ; 07F48 ×135340
  FF4B  8D 07 20  STA $2007                     ; 07F4B ×135340
  FF4E  8D 07 20  STA $2007                     ; 07F4E ×135340
  FF51  8D 07 20  STA $2007                     ; 07F51 ×135340
  FF54  8D 07 20  STA $2007                     ; 07F54 ×135340
  FF57  8D 07 20  STA $2007                     ; 07F57 ×135340
  FF5A  8D 07 20  STA $2007                     ; 07F5A ×135340
  FF5D  C8        INY                           ; 07F5D ×135340
  FF5E  C8        INY                           ; 07F5E ×135340
  FF5F  C0 28     CPY #$28                      ; 07F5F ×135340
  FF61  D0 C4     BNE loc_B0_FF27               ; 07F61 ×135340
  FF63  A2 05     LDX #$05                      ; 07F63 ×6767

sub_B0_FF65:                    ; from 07ea3 005b0
  FF65  A9 10     LDA #$10                      ; 07F65 ×113421
  FF67  8D C3 FF  STA $FFC3                     ; 07F67 ×113421

loc_B0_FF6A:                    ; from 07f6b
  FF6A  CA        DEX                           ; 07F6A ×21021903
  FF6B  D0 FD     BNE loc_B0_FF6A               ; 07F6B ×21021903
  FF6D  60        RTS                           ; 07F6D ×113421

sub_B0_FF6E:                    ; from 05b06
  FF6E  8D B6 FF  STA $FFB6                     ; 07F6E ×61196
  FF71  .byte 20 6E FF 8D B3 FF                                 ; 07F71
  FF77  60        RTS                           ; 07F77 ×61196

sub_B0_FF78:                    ; from 0059d
  FF78  8D B6 FF  STA $FFB6                     ; 07F78 ×15318
  FF7B  .byte 20 78 FF A9 00 8D B3 FF                           ; 07F7B
  FF83  60        RTS                           ; 07F83 ×15318

sub_B0_FF84:                    ; from 06557 0061f 06719 066b2 006ac 05815 (+1)
  FF84  85 3E     STA $3E                       ; 07F84 ×158071
  FF86  29 10     AND #$10                      ; 07F86 ×158071
  FF88  09 03     ORA #$03                      ; 07F88 ×158071
  FF8A  A8        TAY                           ; 07F8A ×158071
  FF8B  99 B3 FF  STA $FFB3,Y                   ; 07F8B ×158071
  FF8E  .byte 20 06 00 A5 3E A8 99 B3 FF                        ; 07F8E
  FF97  60        RTS                           ; 07F97 ×158071
  FF98  86 76     STX $76                       ; 07F98 ×315489
  FF9A  85 75     STA $75                       ; 07F9A ×315489
  FF9C  A9 00     LDA #$00                      ; 07F9C ×315489
  FF9E  A2 00     LDX #$00                      ; 07F9E ×315489
  FFA0  8E B3 FF  STX $FFB3                     ; 07FA0 ×315489
  FFA3  4C 75 FE  JMP loc_B0_FE75               ; 07FA3 ×437770

loc_B0_FFA6:                    ; from 07eb0 07ed7
  FFA6  A6 76     LDX $76                       ; 07FA6 ×121913
  FFA8  A5 2E     LDA $2E                       ; 07FA8 ×121913
  FFAA  A8        TAY                           ; 07FAA ×121913
  FFAB  99 B3 FF  STA $FFB3,Y                   ; 07FAB ×121913
  FFAE  A4 77     LDY $77                       ; 07FAE ×0
  FFB0  A5 75     LDA $75                       ; 07FB0 ×0
  FFB2  40        RTI                           ; 07FB2 ×0
  FFB3  .byte 00                                                ; 07FB3
  FFB4  .byte 01 02 03                                          ; 07FB4 data, read by 07fd6 07fe4
  FFB7  .byte 04                                                ; 07FB7
  FFB8  .byte 05 06 07                                          ; 07FB8 data, read by 07fd6 07fe4
  FFBB  .byte 08 09 0A 0B 0C 0D 0E 0F 10 11 12 13 14 15         ; 07FBB
  FFC9  .byte 16                                                ; 07FC9 data, read by 07fd6
  FFCA  .byte 17                                                ; 07FCA

sub_B0_FFCB:                    ; from 003b7 064b1 0075b 007a7 07e55 00458 (+41)
  FFCB  A9 00     LDA #$00                      ; 07FCB ×798490
  FFCD  09 00     ORA #$00                      ; 07FCD ×798490
  FFCF  85 2D     STA $2D                       ; 07FCF ×798490
  FFD1  A5 13     LDA $13                       ; 07FD1 ×798490
  FFD3  48        PHA                           ; 07FD3 ×798490
  FFD4  86 13     STX $13                       ; 07FD4 ×798490
  FFD6  B9 B3 FF  LDA $FFB3,Y                   ; 07FD6 ×798490
  FFD9  99 B3 FF  STA $FFB3,Y                   ; 07FD9 ×798490
  FFDC  20 00 80  JSR sub_B0_8000               ; 07FDC ×28269
  FFDF  A4 2D     LDY $2D                       ; 07FDF ×28036
  FFE1  68        PLA                           ; 07FE1 ×28036
  FFE2  85 13     STA $13                       ; 07FE2 ×28036
  FFE4  B9 B3 FF  LDA $FFB3,Y                   ; 07FE4 ×28036
  FFE7  99 B3 FF  STA $FFB3,Y                   ; 07FE7 ×28036
  FFEA  60        RTS                           ; 07FEA ×797866

sub_B0_FFEB:                    ; from 07fec 00679 00647 07fef 006b3 06573 (+4)
  FFEB  CA        DEX                           ; 07FEB ×103668645
  FFEC  D0 FD     BNE sub_B0_FFEB               ; 07FEC ×103668645
  FFEE  88        DEY                           ; 07FEE ×977354
  FFEF  D0 FA     BNE sub_B0_FFEB               ; 07FEF ×977354
  FFF1  60        RTS                           ; 07FF1 ×744128
  FFF2  A9 00     LDA #$00                      ; 07FF2 ×46
  FFF4  8D B3 FF  STA $FFB3                     ; 07FF4 ×46
  FFF7  4C A9 82  JMP loc_B0_82A9               ; 07FF7 ×46
  FFFA  .byte 98 FF                                             ; 07FFA data, read by 0074b 00750 0072c 00756 (+24)
  FFFC  .byte F2 FF 74 FE                                       ; 07FFC
